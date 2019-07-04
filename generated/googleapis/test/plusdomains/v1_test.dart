library googleapis.plusDomains.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/plusdomains/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3902() {
  var o = new core.List<api.PlusDomainsAclentryResource>();
  o.add(buildPlusDomainsAclentryResource());
  o.add(buildPlusDomainsAclentryResource());
  return o;
}

checkUnnamed3902(core.List<api.PlusDomainsAclentryResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlusDomainsAclentryResource(o[0]);
  checkPlusDomainsAclentryResource(o[1]);
}

core.int buildCounterAcl = 0;
buildAcl() {
  var o = new api.Acl();
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    o.description = "foo";
    o.domainRestricted = true;
    o.items = buildUnnamed3902();
    o.kind = "foo";
  }
  buildCounterAcl--;
  return o;
}

checkAcl(api.Acl o) {
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.domainRestricted, unittest.isTrue);
    checkUnnamed3902(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAcl--;
}

core.int buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo = 0;
buildActivityActorClientSpecificActorInfoYoutubeActorInfo() {
  var o = new api.ActivityActorClientSpecificActorInfoYoutubeActorInfo();
  buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo < 3) {
    o.channelId = "foo";
  }
  buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo--;
  return o;
}

checkActivityActorClientSpecificActorInfoYoutubeActorInfo(
    api.ActivityActorClientSpecificActorInfoYoutubeActorInfo o) {
  buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
  }
  buildCounterActivityActorClientSpecificActorInfoYoutubeActorInfo--;
}

core.int buildCounterActivityActorClientSpecificActorInfo = 0;
buildActivityActorClientSpecificActorInfo() {
  var o = new api.ActivityActorClientSpecificActorInfo();
  buildCounterActivityActorClientSpecificActorInfo++;
  if (buildCounterActivityActorClientSpecificActorInfo < 3) {
    o.youtubeActorInfo =
        buildActivityActorClientSpecificActorInfoYoutubeActorInfo();
  }
  buildCounterActivityActorClientSpecificActorInfo--;
  return o;
}

checkActivityActorClientSpecificActorInfo(
    api.ActivityActorClientSpecificActorInfo o) {
  buildCounterActivityActorClientSpecificActorInfo++;
  if (buildCounterActivityActorClientSpecificActorInfo < 3) {
    checkActivityActorClientSpecificActorInfoYoutubeActorInfo(
        o.youtubeActorInfo);
  }
  buildCounterActivityActorClientSpecificActorInfo--;
}

core.int buildCounterActivityActorImage = 0;
buildActivityActorImage() {
  var o = new api.ActivityActorImage();
  buildCounterActivityActorImage++;
  if (buildCounterActivityActorImage < 3) {
    o.url = "foo";
  }
  buildCounterActivityActorImage--;
  return o;
}

checkActivityActorImage(api.ActivityActorImage o) {
  buildCounterActivityActorImage++;
  if (buildCounterActivityActorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityActorImage--;
}

core.int buildCounterActivityActorName = 0;
buildActivityActorName() {
  var o = new api.ActivityActorName();
  buildCounterActivityActorName++;
  if (buildCounterActivityActorName < 3) {
    o.familyName = "foo";
    o.givenName = "foo";
  }
  buildCounterActivityActorName--;
  return o;
}

checkActivityActorName(api.ActivityActorName o) {
  buildCounterActivityActorName++;
  if (buildCounterActivityActorName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterActivityActorName--;
}

core.int buildCounterActivityActorVerification = 0;
buildActivityActorVerification() {
  var o = new api.ActivityActorVerification();
  buildCounterActivityActorVerification++;
  if (buildCounterActivityActorVerification < 3) {
    o.adHocVerified = "foo";
  }
  buildCounterActivityActorVerification--;
  return o;
}

checkActivityActorVerification(api.ActivityActorVerification o) {
  buildCounterActivityActorVerification++;
  if (buildCounterActivityActorVerification < 3) {
    unittest.expect(o.adHocVerified, unittest.equals('foo'));
  }
  buildCounterActivityActorVerification--;
}

core.int buildCounterActivityActor = 0;
buildActivityActor() {
  var o = new api.ActivityActor();
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    o.clientSpecificActorInfo = buildActivityActorClientSpecificActorInfo();
    o.displayName = "foo";
    o.id = "foo";
    o.image = buildActivityActorImage();
    o.name = buildActivityActorName();
    o.url = "foo";
    o.verification = buildActivityActorVerification();
  }
  buildCounterActivityActor--;
  return o;
}

checkActivityActor(api.ActivityActor o) {
  buildCounterActivityActor++;
  if (buildCounterActivityActor < 3) {
    checkActivityActorClientSpecificActorInfo(o.clientSpecificActorInfo);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkActivityActorImage(o.image);
    checkActivityActorName(o.name);
    unittest.expect(o.url, unittest.equals('foo'));
    checkActivityActorVerification(o.verification);
  }
  buildCounterActivityActor--;
}

core.int
    buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo = 0;
buildActivityObjectActorClientSpecificActorInfoYoutubeActorInfo() {
  var o = new api.ActivityObjectActorClientSpecificActorInfoYoutubeActorInfo();
  buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo <
      3) {
    o.channelId = "foo";
  }
  buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo--;
  return o;
}

checkActivityObjectActorClientSpecificActorInfoYoutubeActorInfo(
    api.ActivityObjectActorClientSpecificActorInfoYoutubeActorInfo o) {
  buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo <
      3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
  }
  buildCounterActivityObjectActorClientSpecificActorInfoYoutubeActorInfo--;
}

core.int buildCounterActivityObjectActorClientSpecificActorInfo = 0;
buildActivityObjectActorClientSpecificActorInfo() {
  var o = new api.ActivityObjectActorClientSpecificActorInfo();
  buildCounterActivityObjectActorClientSpecificActorInfo++;
  if (buildCounterActivityObjectActorClientSpecificActorInfo < 3) {
    o.youtubeActorInfo =
        buildActivityObjectActorClientSpecificActorInfoYoutubeActorInfo();
  }
  buildCounterActivityObjectActorClientSpecificActorInfo--;
  return o;
}

checkActivityObjectActorClientSpecificActorInfo(
    api.ActivityObjectActorClientSpecificActorInfo o) {
  buildCounterActivityObjectActorClientSpecificActorInfo++;
  if (buildCounterActivityObjectActorClientSpecificActorInfo < 3) {
    checkActivityObjectActorClientSpecificActorInfoYoutubeActorInfo(
        o.youtubeActorInfo);
  }
  buildCounterActivityObjectActorClientSpecificActorInfo--;
}

core.int buildCounterActivityObjectActorImage = 0;
buildActivityObjectActorImage() {
  var o = new api.ActivityObjectActorImage();
  buildCounterActivityObjectActorImage++;
  if (buildCounterActivityObjectActorImage < 3) {
    o.url = "foo";
  }
  buildCounterActivityObjectActorImage--;
  return o;
}

checkActivityObjectActorImage(api.ActivityObjectActorImage o) {
  buildCounterActivityObjectActorImage++;
  if (buildCounterActivityObjectActorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectActorImage--;
}

core.int buildCounterActivityObjectActorVerification = 0;
buildActivityObjectActorVerification() {
  var o = new api.ActivityObjectActorVerification();
  buildCounterActivityObjectActorVerification++;
  if (buildCounterActivityObjectActorVerification < 3) {
    o.adHocVerified = "foo";
  }
  buildCounterActivityObjectActorVerification--;
  return o;
}

checkActivityObjectActorVerification(api.ActivityObjectActorVerification o) {
  buildCounterActivityObjectActorVerification++;
  if (buildCounterActivityObjectActorVerification < 3) {
    unittest.expect(o.adHocVerified, unittest.equals('foo'));
  }
  buildCounterActivityObjectActorVerification--;
}

core.int buildCounterActivityObjectActor = 0;
buildActivityObjectActor() {
  var o = new api.ActivityObjectActor();
  buildCounterActivityObjectActor++;
  if (buildCounterActivityObjectActor < 3) {
    o.clientSpecificActorInfo =
        buildActivityObjectActorClientSpecificActorInfo();
    o.displayName = "foo";
    o.id = "foo";
    o.image = buildActivityObjectActorImage();
    o.url = "foo";
    o.verification = buildActivityObjectActorVerification();
  }
  buildCounterActivityObjectActor--;
  return o;
}

checkActivityObjectActor(api.ActivityObjectActor o) {
  buildCounterActivityObjectActor++;
  if (buildCounterActivityObjectActor < 3) {
    checkActivityObjectActorClientSpecificActorInfo(o.clientSpecificActorInfo);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkActivityObjectActorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
    checkActivityObjectActorVerification(o.verification);
  }
  buildCounterActivityObjectActor--;
}

core.int buildCounterActivityObjectAttachmentsEmbed = 0;
buildActivityObjectAttachmentsEmbed() {
  var o = new api.ActivityObjectAttachmentsEmbed();
  buildCounterActivityObjectAttachmentsEmbed++;
  if (buildCounterActivityObjectAttachmentsEmbed < 3) {
    o.type = "foo";
    o.url = "foo";
  }
  buildCounterActivityObjectAttachmentsEmbed--;
  return o;
}

checkActivityObjectAttachmentsEmbed(api.ActivityObjectAttachmentsEmbed o) {
  buildCounterActivityObjectAttachmentsEmbed++;
  if (buildCounterActivityObjectAttachmentsEmbed < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectAttachmentsEmbed--;
}

core.int buildCounterActivityObjectAttachmentsFullImage = 0;
buildActivityObjectAttachmentsFullImage() {
  var o = new api.ActivityObjectAttachmentsFullImage();
  buildCounterActivityObjectAttachmentsFullImage++;
  if (buildCounterActivityObjectAttachmentsFullImage < 3) {
    o.height = 42;
    o.type = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterActivityObjectAttachmentsFullImage--;
  return o;
}

checkActivityObjectAttachmentsFullImage(
    api.ActivityObjectAttachmentsFullImage o) {
  buildCounterActivityObjectAttachmentsFullImage++;
  if (buildCounterActivityObjectAttachmentsFullImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterActivityObjectAttachmentsFullImage--;
}

core.int buildCounterActivityObjectAttachmentsImage = 0;
buildActivityObjectAttachmentsImage() {
  var o = new api.ActivityObjectAttachmentsImage();
  buildCounterActivityObjectAttachmentsImage++;
  if (buildCounterActivityObjectAttachmentsImage < 3) {
    o.height = 42;
    o.type = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterActivityObjectAttachmentsImage--;
  return o;
}

checkActivityObjectAttachmentsImage(api.ActivityObjectAttachmentsImage o) {
  buildCounterActivityObjectAttachmentsImage++;
  if (buildCounterActivityObjectAttachmentsImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterActivityObjectAttachmentsImage--;
}

core.int buildCounterActivityObjectAttachmentsPreviewThumbnails = 0;
buildActivityObjectAttachmentsPreviewThumbnails() {
  var o = new api.ActivityObjectAttachmentsPreviewThumbnails();
  buildCounterActivityObjectAttachmentsPreviewThumbnails++;
  if (buildCounterActivityObjectAttachmentsPreviewThumbnails < 3) {
    o.url = "foo";
  }
  buildCounterActivityObjectAttachmentsPreviewThumbnails--;
  return o;
}

checkActivityObjectAttachmentsPreviewThumbnails(
    api.ActivityObjectAttachmentsPreviewThumbnails o) {
  buildCounterActivityObjectAttachmentsPreviewThumbnails++;
  if (buildCounterActivityObjectAttachmentsPreviewThumbnails < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectAttachmentsPreviewThumbnails--;
}

buildUnnamed3903() {
  var o = new core.List<api.ActivityObjectAttachmentsPreviewThumbnails>();
  o.add(buildActivityObjectAttachmentsPreviewThumbnails());
  o.add(buildActivityObjectAttachmentsPreviewThumbnails());
  return o;
}

checkUnnamed3903(core.List<api.ActivityObjectAttachmentsPreviewThumbnails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityObjectAttachmentsPreviewThumbnails(o[0]);
  checkActivityObjectAttachmentsPreviewThumbnails(o[1]);
}

core.int buildCounterActivityObjectAttachmentsThumbnailsImage = 0;
buildActivityObjectAttachmentsThumbnailsImage() {
  var o = new api.ActivityObjectAttachmentsThumbnailsImage();
  buildCounterActivityObjectAttachmentsThumbnailsImage++;
  if (buildCounterActivityObjectAttachmentsThumbnailsImage < 3) {
    o.height = 42;
    o.type = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterActivityObjectAttachmentsThumbnailsImage--;
  return o;
}

checkActivityObjectAttachmentsThumbnailsImage(
    api.ActivityObjectAttachmentsThumbnailsImage o) {
  buildCounterActivityObjectAttachmentsThumbnailsImage++;
  if (buildCounterActivityObjectAttachmentsThumbnailsImage < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterActivityObjectAttachmentsThumbnailsImage--;
}

core.int buildCounterActivityObjectAttachmentsThumbnails = 0;
buildActivityObjectAttachmentsThumbnails() {
  var o = new api.ActivityObjectAttachmentsThumbnails();
  buildCounterActivityObjectAttachmentsThumbnails++;
  if (buildCounterActivityObjectAttachmentsThumbnails < 3) {
    o.description = "foo";
    o.image = buildActivityObjectAttachmentsThumbnailsImage();
    o.url = "foo";
  }
  buildCounterActivityObjectAttachmentsThumbnails--;
  return o;
}

checkActivityObjectAttachmentsThumbnails(
    api.ActivityObjectAttachmentsThumbnails o) {
  buildCounterActivityObjectAttachmentsThumbnails++;
  if (buildCounterActivityObjectAttachmentsThumbnails < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkActivityObjectAttachmentsThumbnailsImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectAttachmentsThumbnails--;
}

buildUnnamed3904() {
  var o = new core.List<api.ActivityObjectAttachmentsThumbnails>();
  o.add(buildActivityObjectAttachmentsThumbnails());
  o.add(buildActivityObjectAttachmentsThumbnails());
  return o;
}

checkUnnamed3904(core.List<api.ActivityObjectAttachmentsThumbnails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityObjectAttachmentsThumbnails(o[0]);
  checkActivityObjectAttachmentsThumbnails(o[1]);
}

core.int buildCounterActivityObjectAttachments = 0;
buildActivityObjectAttachments() {
  var o = new api.ActivityObjectAttachments();
  buildCounterActivityObjectAttachments++;
  if (buildCounterActivityObjectAttachments < 3) {
    o.content = "foo";
    o.displayName = "foo";
    o.embed = buildActivityObjectAttachmentsEmbed();
    o.fullImage = buildActivityObjectAttachmentsFullImage();
    o.id = "foo";
    o.image = buildActivityObjectAttachmentsImage();
    o.objectType = "foo";
    o.previewThumbnails = buildUnnamed3903();
    o.thumbnails = buildUnnamed3904();
    o.url = "foo";
  }
  buildCounterActivityObjectAttachments--;
  return o;
}

checkActivityObjectAttachments(api.ActivityObjectAttachments o) {
  buildCounterActivityObjectAttachments++;
  if (buildCounterActivityObjectAttachments < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkActivityObjectAttachmentsEmbed(o.embed);
    checkActivityObjectAttachmentsFullImage(o.fullImage);
    unittest.expect(o.id, unittest.equals('foo'));
    checkActivityObjectAttachmentsImage(o.image);
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkUnnamed3903(o.previewThumbnails);
    checkUnnamed3904(o.thumbnails);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectAttachments--;
}

buildUnnamed3905() {
  var o = new core.List<api.ActivityObjectAttachments>();
  o.add(buildActivityObjectAttachments());
  o.add(buildActivityObjectAttachments());
  return o;
}

checkUnnamed3905(core.List<api.ActivityObjectAttachments> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivityObjectAttachments(o[0]);
  checkActivityObjectAttachments(o[1]);
}

core.int buildCounterActivityObjectPlusoners = 0;
buildActivityObjectPlusoners() {
  var o = new api.ActivityObjectPlusoners();
  buildCounterActivityObjectPlusoners++;
  if (buildCounterActivityObjectPlusoners < 3) {
    o.selfLink = "foo";
    o.totalItems = 42;
  }
  buildCounterActivityObjectPlusoners--;
  return o;
}

checkActivityObjectPlusoners(api.ActivityObjectPlusoners o) {
  buildCounterActivityObjectPlusoners++;
  if (buildCounterActivityObjectPlusoners < 3) {
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterActivityObjectPlusoners--;
}

core.int buildCounterActivityObjectReplies = 0;
buildActivityObjectReplies() {
  var o = new api.ActivityObjectReplies();
  buildCounterActivityObjectReplies++;
  if (buildCounterActivityObjectReplies < 3) {
    o.selfLink = "foo";
    o.totalItems = 42;
  }
  buildCounterActivityObjectReplies--;
  return o;
}

checkActivityObjectReplies(api.ActivityObjectReplies o) {
  buildCounterActivityObjectReplies++;
  if (buildCounterActivityObjectReplies < 3) {
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterActivityObjectReplies--;
}

core.int buildCounterActivityObjectResharers = 0;
buildActivityObjectResharers() {
  var o = new api.ActivityObjectResharers();
  buildCounterActivityObjectResharers++;
  if (buildCounterActivityObjectResharers < 3) {
    o.selfLink = "foo";
    o.totalItems = 42;
  }
  buildCounterActivityObjectResharers--;
  return o;
}

checkActivityObjectResharers(api.ActivityObjectResharers o) {
  buildCounterActivityObjectResharers++;
  if (buildCounterActivityObjectResharers < 3) {
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterActivityObjectResharers--;
}

core.int buildCounterActivityObjectStatusForViewer = 0;
buildActivityObjectStatusForViewer() {
  var o = new api.ActivityObjectStatusForViewer();
  buildCounterActivityObjectStatusForViewer++;
  if (buildCounterActivityObjectStatusForViewer < 3) {
    o.canComment = true;
    o.canPlusone = true;
    o.canUpdate = true;
    o.isPlusOned = true;
    o.resharingDisabled = true;
  }
  buildCounterActivityObjectStatusForViewer--;
  return o;
}

checkActivityObjectStatusForViewer(api.ActivityObjectStatusForViewer o) {
  buildCounterActivityObjectStatusForViewer++;
  if (buildCounterActivityObjectStatusForViewer < 3) {
    unittest.expect(o.canComment, unittest.isTrue);
    unittest.expect(o.canPlusone, unittest.isTrue);
    unittest.expect(o.canUpdate, unittest.isTrue);
    unittest.expect(o.isPlusOned, unittest.isTrue);
    unittest.expect(o.resharingDisabled, unittest.isTrue);
  }
  buildCounterActivityObjectStatusForViewer--;
}

core.int buildCounterActivityObject = 0;
buildActivityObject() {
  var o = new api.ActivityObject();
  buildCounterActivityObject++;
  if (buildCounterActivityObject < 3) {
    o.actor = buildActivityObjectActor();
    o.attachments = buildUnnamed3905();
    o.content = "foo";
    o.id = "foo";
    o.objectType = "foo";
    o.originalContent = "foo";
    o.plusoners = buildActivityObjectPlusoners();
    o.replies = buildActivityObjectReplies();
    o.resharers = buildActivityObjectResharers();
    o.statusForViewer = buildActivityObjectStatusForViewer();
    o.url = "foo";
  }
  buildCounterActivityObject--;
  return o;
}

checkActivityObject(api.ActivityObject o) {
  buildCounterActivityObject++;
  if (buildCounterActivityObject < 3) {
    checkActivityObjectActor(o.actor);
    checkUnnamed3905(o.attachments);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
    unittest.expect(o.originalContent, unittest.equals('foo'));
    checkActivityObjectPlusoners(o.plusoners);
    checkActivityObjectReplies(o.replies);
    checkActivityObjectResharers(o.resharers);
    checkActivityObjectStatusForViewer(o.statusForViewer);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObject--;
}

core.int buildCounterActivityProvider = 0;
buildActivityProvider() {
  var o = new api.ActivityProvider();
  buildCounterActivityProvider++;
  if (buildCounterActivityProvider < 3) {
    o.title = "foo";
  }
  buildCounterActivityProvider--;
  return o;
}

checkActivityProvider(api.ActivityProvider o) {
  buildCounterActivityProvider++;
  if (buildCounterActivityProvider < 3) {
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterActivityProvider--;
}

core.int buildCounterActivity = 0;
buildActivity() {
  var o = new api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.access = buildAcl();
    o.actor = buildActivityActor();
    o.address = "foo";
    o.annotation = "foo";
    o.crosspostSource = "foo";
    o.etag = "foo";
    o.geocode = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.location = buildPlace();
    o.object = buildActivityObject();
    o.placeId = "foo";
    o.placeName = "foo";
    o.provider = buildActivityProvider();
    o.published = core.DateTime.parse("2002-02-27T14:01:02");
    o.radius = "foo";
    o.title = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.url = "foo";
    o.verb = "foo";
  }
  buildCounterActivity--;
  return o;
}

checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkAcl(o.access);
    checkActivityActor(o.actor);
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.annotation, unittest.equals('foo'));
    unittest.expect(o.crosspostSource, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.geocode, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlace(o.location);
    checkActivityObject(o.object);
    unittest.expect(o.placeId, unittest.equals('foo'));
    unittest.expect(o.placeName, unittest.equals('foo'));
    checkActivityProvider(o.provider);
    unittest.expect(o.published,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.radius, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterActivity--;
}

buildUnnamed3906() {
  var o = new core.List<api.Activity>();
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

checkUnnamed3906(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivityFeed = 0;
buildActivityFeed() {
  var o = new api.ActivityFeed();
  buildCounterActivityFeed++;
  if (buildCounterActivityFeed < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.items = buildUnnamed3906();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
    o.title = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterActivityFeed--;
  return o;
}

checkActivityFeed(api.ActivityFeed o) {
  buildCounterActivityFeed++;
  if (buildCounterActivityFeed < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3906(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterActivityFeed--;
}

core.int buildCounterAudience = 0;
buildAudience() {
  var o = new api.Audience();
  buildCounterAudience++;
  if (buildCounterAudience < 3) {
    o.etag = "foo";
    o.item = buildPlusDomainsAclentryResource();
    o.kind = "foo";
    o.memberCount = 42;
    o.visibility = "foo";
  }
  buildCounterAudience--;
  return o;
}

checkAudience(api.Audience o) {
  buildCounterAudience++;
  if (buildCounterAudience < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkPlusDomainsAclentryResource(o.item);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.memberCount, unittest.equals(42));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterAudience--;
}

buildUnnamed3907() {
  var o = new core.List<api.Audience>();
  o.add(buildAudience());
  o.add(buildAudience());
  return o;
}

checkUnnamed3907(core.List<api.Audience> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudience(o[0]);
  checkAudience(o[1]);
}

core.int buildCounterAudiencesFeed = 0;
buildAudiencesFeed() {
  var o = new api.AudiencesFeed();
  buildCounterAudiencesFeed++;
  if (buildCounterAudiencesFeed < 3) {
    o.etag = "foo";
    o.items = buildUnnamed3907();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.totalItems = 42;
  }
  buildCounterAudiencesFeed--;
  return o;
}

checkAudiencesFeed(api.AudiencesFeed o) {
  buildCounterAudiencesFeed++;
  if (buildCounterAudiencesFeed < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3907(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterAudiencesFeed--;
}

core.int buildCounterCirclePeople = 0;
buildCirclePeople() {
  var o = new api.CirclePeople();
  buildCounterCirclePeople++;
  if (buildCounterCirclePeople < 3) {
    o.totalItems = 42;
  }
  buildCounterCirclePeople--;
  return o;
}

checkCirclePeople(api.CirclePeople o) {
  buildCounterCirclePeople++;
  if (buildCounterCirclePeople < 3) {
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterCirclePeople--;
}

core.int buildCounterCircle = 0;
buildCircle() {
  var o = new api.Circle();
  buildCounterCircle++;
  if (buildCounterCircle < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.people = buildCirclePeople();
    o.selfLink = "foo";
  }
  buildCounterCircle--;
  return o;
}

checkCircle(api.Circle o) {
  buildCounterCircle++;
  if (buildCounterCircle < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCirclePeople(o.people);
    unittest.expect(o.selfLink, unittest.equals('foo'));
  }
  buildCounterCircle--;
}

buildUnnamed3908() {
  var o = new core.List<api.Circle>();
  o.add(buildCircle());
  o.add(buildCircle());
  return o;
}

checkUnnamed3908(core.List<api.Circle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCircle(o[0]);
  checkCircle(o[1]);
}

core.int buildCounterCircleFeed = 0;
buildCircleFeed() {
  var o = new api.CircleFeed();
  buildCounterCircleFeed++;
  if (buildCounterCircleFeed < 3) {
    o.etag = "foo";
    o.items = buildUnnamed3908();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
    o.title = "foo";
    o.totalItems = 42;
  }
  buildCounterCircleFeed--;
  return o;
}

checkCircleFeed(api.CircleFeed o) {
  buildCounterCircleFeed++;
  if (buildCounterCircleFeed < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3908(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterCircleFeed--;
}

core.int buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo = 0;
buildCommentActorClientSpecificActorInfoYoutubeActorInfo() {
  var o = new api.CommentActorClientSpecificActorInfoYoutubeActorInfo();
  buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo < 3) {
    o.channelId = "foo";
  }
  buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo--;
  return o;
}

checkCommentActorClientSpecificActorInfoYoutubeActorInfo(
    api.CommentActorClientSpecificActorInfoYoutubeActorInfo o) {
  buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo++;
  if (buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo < 3) {
    unittest.expect(o.channelId, unittest.equals('foo'));
  }
  buildCounterCommentActorClientSpecificActorInfoYoutubeActorInfo--;
}

core.int buildCounterCommentActorClientSpecificActorInfo = 0;
buildCommentActorClientSpecificActorInfo() {
  var o = new api.CommentActorClientSpecificActorInfo();
  buildCounterCommentActorClientSpecificActorInfo++;
  if (buildCounterCommentActorClientSpecificActorInfo < 3) {
    o.youtubeActorInfo =
        buildCommentActorClientSpecificActorInfoYoutubeActorInfo();
  }
  buildCounterCommentActorClientSpecificActorInfo--;
  return o;
}

checkCommentActorClientSpecificActorInfo(
    api.CommentActorClientSpecificActorInfo o) {
  buildCounterCommentActorClientSpecificActorInfo++;
  if (buildCounterCommentActorClientSpecificActorInfo < 3) {
    checkCommentActorClientSpecificActorInfoYoutubeActorInfo(
        o.youtubeActorInfo);
  }
  buildCounterCommentActorClientSpecificActorInfo--;
}

core.int buildCounterCommentActorImage = 0;
buildCommentActorImage() {
  var o = new api.CommentActorImage();
  buildCounterCommentActorImage++;
  if (buildCounterCommentActorImage < 3) {
    o.url = "foo";
  }
  buildCounterCommentActorImage--;
  return o;
}

checkCommentActorImage(api.CommentActorImage o) {
  buildCounterCommentActorImage++;
  if (buildCounterCommentActorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCommentActorImage--;
}

core.int buildCounterCommentActorVerification = 0;
buildCommentActorVerification() {
  var o = new api.CommentActorVerification();
  buildCounterCommentActorVerification++;
  if (buildCounterCommentActorVerification < 3) {
    o.adHocVerified = "foo";
  }
  buildCounterCommentActorVerification--;
  return o;
}

checkCommentActorVerification(api.CommentActorVerification o) {
  buildCounterCommentActorVerification++;
  if (buildCounterCommentActorVerification < 3) {
    unittest.expect(o.adHocVerified, unittest.equals('foo'));
  }
  buildCounterCommentActorVerification--;
}

core.int buildCounterCommentActor = 0;
buildCommentActor() {
  var o = new api.CommentActor();
  buildCounterCommentActor++;
  if (buildCounterCommentActor < 3) {
    o.clientSpecificActorInfo = buildCommentActorClientSpecificActorInfo();
    o.displayName = "foo";
    o.id = "foo";
    o.image = buildCommentActorImage();
    o.url = "foo";
    o.verification = buildCommentActorVerification();
  }
  buildCounterCommentActor--;
  return o;
}

checkCommentActor(api.CommentActor o) {
  buildCounterCommentActor++;
  if (buildCounterCommentActor < 3) {
    checkCommentActorClientSpecificActorInfo(o.clientSpecificActorInfo);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkCommentActorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
    checkCommentActorVerification(o.verification);
  }
  buildCounterCommentActor--;
}

core.int buildCounterCommentInReplyTo = 0;
buildCommentInReplyTo() {
  var o = new api.CommentInReplyTo();
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    o.id = "foo";
    o.url = "foo";
  }
  buildCounterCommentInReplyTo--;
  return o;
}

checkCommentInReplyTo(api.CommentInReplyTo o) {
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCommentInReplyTo--;
}

buildUnnamed3909() {
  var o = new core.List<api.CommentInReplyTo>();
  o.add(buildCommentInReplyTo());
  o.add(buildCommentInReplyTo());
  return o;
}

checkUnnamed3909(core.List<api.CommentInReplyTo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentInReplyTo(o[0]);
  checkCommentInReplyTo(o[1]);
}

core.int buildCounterCommentObject = 0;
buildCommentObject() {
  var o = new api.CommentObject();
  buildCounterCommentObject++;
  if (buildCounterCommentObject < 3) {
    o.content = "foo";
    o.objectType = "foo";
    o.originalContent = "foo";
  }
  buildCounterCommentObject--;
  return o;
}

checkCommentObject(api.CommentObject o) {
  buildCounterCommentObject++;
  if (buildCounterCommentObject < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
    unittest.expect(o.originalContent, unittest.equals('foo'));
  }
  buildCounterCommentObject--;
}

core.int buildCounterCommentPlusoners = 0;
buildCommentPlusoners() {
  var o = new api.CommentPlusoners();
  buildCounterCommentPlusoners++;
  if (buildCounterCommentPlusoners < 3) {
    o.totalItems = 42;
  }
  buildCounterCommentPlusoners--;
  return o;
}

checkCommentPlusoners(api.CommentPlusoners o) {
  buildCounterCommentPlusoners++;
  if (buildCounterCommentPlusoners < 3) {
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterCommentPlusoners--;
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.actor = buildCommentActor();
    o.etag = "foo";
    o.id = "foo";
    o.inReplyTo = buildUnnamed3909();
    o.kind = "foo";
    o.object = buildCommentObject();
    o.plusoners = buildCommentPlusoners();
    o.published = core.DateTime.parse("2002-02-27T14:01:02");
    o.selfLink = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.verb = "foo";
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkCommentActor(o.actor);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3909(o.inReplyTo);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkCommentObject(o.object);
    checkCommentPlusoners(o.plusoners);
    unittest.expect(o.published,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterComment--;
}

buildUnnamed3910() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed3910(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentFeed = 0;
buildCommentFeed() {
  var o = new api.CommentFeed();
  buildCounterCommentFeed++;
  if (buildCounterCommentFeed < 3) {
    o.etag = "foo";
    o.id = "foo";
    o.items = buildUnnamed3910();
    o.kind = "foo";
    o.nextLink = "foo";
    o.nextPageToken = "foo";
    o.title = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterCommentFeed--;
  return o;
}

checkCommentFeed(api.CommentFeed o) {
  buildCounterCommentFeed++;
  if (buildCounterCommentFeed < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3910(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextLink, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterCommentFeed--;
}

core.int buildCounterMediaAuthorImage = 0;
buildMediaAuthorImage() {
  var o = new api.MediaAuthorImage();
  buildCounterMediaAuthorImage++;
  if (buildCounterMediaAuthorImage < 3) {
    o.url = "foo";
  }
  buildCounterMediaAuthorImage--;
  return o;
}

checkMediaAuthorImage(api.MediaAuthorImage o) {
  buildCounterMediaAuthorImage++;
  if (buildCounterMediaAuthorImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterMediaAuthorImage--;
}

core.int buildCounterMediaAuthor = 0;
buildMediaAuthor() {
  var o = new api.MediaAuthor();
  buildCounterMediaAuthor++;
  if (buildCounterMediaAuthor < 3) {
    o.displayName = "foo";
    o.id = "foo";
    o.image = buildMediaAuthorImage();
    o.url = "foo";
  }
  buildCounterMediaAuthor--;
  return o;
}

checkMediaAuthor(api.MediaAuthor o) {
  buildCounterMediaAuthor++;
  if (buildCounterMediaAuthor < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkMediaAuthorImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterMediaAuthor--;
}

core.int buildCounterMediaExif = 0;
buildMediaExif() {
  var o = new api.MediaExif();
  buildCounterMediaExif++;
  if (buildCounterMediaExif < 3) {
    o.time = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterMediaExif--;
  return o;
}

checkMediaExif(api.MediaExif o) {
  buildCounterMediaExif++;
  if (buildCounterMediaExif < 3) {
    unittest.expect(
        o.time, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterMediaExif--;
}

buildUnnamed3911() {
  var o = new core.List<api.Videostream>();
  o.add(buildVideostream());
  o.add(buildVideostream());
  return o;
}

checkUnnamed3911(core.List<api.Videostream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideostream(o[0]);
  checkVideostream(o[1]);
}

core.int buildCounterMedia = 0;
buildMedia() {
  var o = new api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.author = buildMediaAuthor();
    o.displayName = "foo";
    o.etag = "foo";
    o.exif = buildMediaExif();
    o.height = 42;
    o.id = "foo";
    o.kind = "foo";
    o.mediaCreatedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.mediaUrl = "foo";
    o.published = core.DateTime.parse("2002-02-27T14:01:02");
    o.sizeBytes = "foo";
    o.streams = buildUnnamed3911();
    o.summary = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.url = "foo";
    o.videoDuration = "foo";
    o.videoStatus = "foo";
    o.width = 42;
  }
  buildCounterMedia--;
  return o;
}

checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    checkMediaAuthor(o.author);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkMediaExif(o.exif);
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mediaCreatedTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.mediaUrl, unittest.equals('foo'));
    unittest.expect(o.published,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
    checkUnnamed3911(o.streams);
    unittest.expect(o.summary, unittest.equals('foo'));
    unittest.expect(
        o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.videoDuration, unittest.equals('foo'));
    unittest.expect(o.videoStatus, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterMedia--;
}

buildUnnamed3912() {
  var o = new core.List<api.Person>();
  o.add(buildPerson());
  o.add(buildPerson());
  return o;
}

checkUnnamed3912(core.List<api.Person> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerson(o[0]);
  checkPerson(o[1]);
}

core.int buildCounterPeopleFeed = 0;
buildPeopleFeed() {
  var o = new api.PeopleFeed();
  buildCounterPeopleFeed++;
  if (buildCounterPeopleFeed < 3) {
    o.etag = "foo";
    o.items = buildUnnamed3912();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.selfLink = "foo";
    o.title = "foo";
    o.totalItems = 42;
  }
  buildCounterPeopleFeed--;
  return o;
}

checkPeopleFeed(api.PeopleFeed o) {
  buildCounterPeopleFeed++;
  if (buildCounterPeopleFeed < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed3912(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.selfLink, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.totalItems, unittest.equals(42));
  }
  buildCounterPeopleFeed--;
}

core.int buildCounterPersonCoverCoverInfo = 0;
buildPersonCoverCoverInfo() {
  var o = new api.PersonCoverCoverInfo();
  buildCounterPersonCoverCoverInfo++;
  if (buildCounterPersonCoverCoverInfo < 3) {
    o.leftImageOffset = 42;
    o.topImageOffset = 42;
  }
  buildCounterPersonCoverCoverInfo--;
  return o;
}

checkPersonCoverCoverInfo(api.PersonCoverCoverInfo o) {
  buildCounterPersonCoverCoverInfo++;
  if (buildCounterPersonCoverCoverInfo < 3) {
    unittest.expect(o.leftImageOffset, unittest.equals(42));
    unittest.expect(o.topImageOffset, unittest.equals(42));
  }
  buildCounterPersonCoverCoverInfo--;
}

core.int buildCounterPersonCoverCoverPhoto = 0;
buildPersonCoverCoverPhoto() {
  var o = new api.PersonCoverCoverPhoto();
  buildCounterPersonCoverCoverPhoto++;
  if (buildCounterPersonCoverCoverPhoto < 3) {
    o.height = 42;
    o.url = "foo";
    o.width = 42;
  }
  buildCounterPersonCoverCoverPhoto--;
  return o;
}

checkPersonCoverCoverPhoto(api.PersonCoverCoverPhoto o) {
  buildCounterPersonCoverCoverPhoto++;
  if (buildCounterPersonCoverCoverPhoto < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterPersonCoverCoverPhoto--;
}

core.int buildCounterPersonCover = 0;
buildPersonCover() {
  var o = new api.PersonCover();
  buildCounterPersonCover++;
  if (buildCounterPersonCover < 3) {
    o.coverInfo = buildPersonCoverCoverInfo();
    o.coverPhoto = buildPersonCoverCoverPhoto();
    o.layout = "foo";
  }
  buildCounterPersonCover--;
  return o;
}

checkPersonCover(api.PersonCover o) {
  buildCounterPersonCover++;
  if (buildCounterPersonCover < 3) {
    checkPersonCoverCoverInfo(o.coverInfo);
    checkPersonCoverCoverPhoto(o.coverPhoto);
    unittest.expect(o.layout, unittest.equals('foo'));
  }
  buildCounterPersonCover--;
}

core.int buildCounterPersonEmails = 0;
buildPersonEmails() {
  var o = new api.PersonEmails();
  buildCounterPersonEmails++;
  if (buildCounterPersonEmails < 3) {
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterPersonEmails--;
  return o;
}

checkPersonEmails(api.PersonEmails o) {
  buildCounterPersonEmails++;
  if (buildCounterPersonEmails < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPersonEmails--;
}

buildUnnamed3913() {
  var o = new core.List<api.PersonEmails>();
  o.add(buildPersonEmails());
  o.add(buildPersonEmails());
  return o;
}

checkUnnamed3913(core.List<api.PersonEmails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonEmails(o[0]);
  checkPersonEmails(o[1]);
}

core.int buildCounterPersonImage = 0;
buildPersonImage() {
  var o = new api.PersonImage();
  buildCounterPersonImage++;
  if (buildCounterPersonImage < 3) {
    o.isDefault = true;
    o.url = "foo";
  }
  buildCounterPersonImage--;
  return o;
}

checkPersonImage(api.PersonImage o) {
  buildCounterPersonImage++;
  if (buildCounterPersonImage < 3) {
    unittest.expect(o.isDefault, unittest.isTrue);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterPersonImage--;
}

core.int buildCounterPersonName = 0;
buildPersonName() {
  var o = new api.PersonName();
  buildCounterPersonName++;
  if (buildCounterPersonName < 3) {
    o.familyName = "foo";
    o.formatted = "foo";
    o.givenName = "foo";
    o.honorificPrefix = "foo";
    o.honorificSuffix = "foo";
    o.middleName = "foo";
  }
  buildCounterPersonName--;
  return o;
}

checkPersonName(api.PersonName o) {
  buildCounterPersonName++;
  if (buildCounterPersonName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.formatted, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    unittest.expect(o.honorificPrefix, unittest.equals('foo'));
    unittest.expect(o.honorificSuffix, unittest.equals('foo'));
    unittest.expect(o.middleName, unittest.equals('foo'));
  }
  buildCounterPersonName--;
}

core.int buildCounterPersonOrganizations = 0;
buildPersonOrganizations() {
  var o = new api.PersonOrganizations();
  buildCounterPersonOrganizations++;
  if (buildCounterPersonOrganizations < 3) {
    o.department = "foo";
    o.description = "foo";
    o.endDate = "foo";
    o.location = "foo";
    o.name = "foo";
    o.primary = true;
    o.startDate = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterPersonOrganizations--;
  return o;
}

checkPersonOrganizations(api.PersonOrganizations o) {
  buildCounterPersonOrganizations++;
  if (buildCounterPersonOrganizations < 3) {
    unittest.expect(o.department, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endDate, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.startDate, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPersonOrganizations--;
}

buildUnnamed3914() {
  var o = new core.List<api.PersonOrganizations>();
  o.add(buildPersonOrganizations());
  o.add(buildPersonOrganizations());
  return o;
}

checkUnnamed3914(core.List<api.PersonOrganizations> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonOrganizations(o[0]);
  checkPersonOrganizations(o[1]);
}

core.int buildCounterPersonPlacesLived = 0;
buildPersonPlacesLived() {
  var o = new api.PersonPlacesLived();
  buildCounterPersonPlacesLived++;
  if (buildCounterPersonPlacesLived < 3) {
    o.primary = true;
    o.value = "foo";
  }
  buildCounterPersonPlacesLived--;
  return o;
}

checkPersonPlacesLived(api.PersonPlacesLived o) {
  buildCounterPersonPlacesLived++;
  if (buildCounterPersonPlacesLived < 3) {
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPersonPlacesLived--;
}

buildUnnamed3915() {
  var o = new core.List<api.PersonPlacesLived>();
  o.add(buildPersonPlacesLived());
  o.add(buildPersonPlacesLived());
  return o;
}

checkUnnamed3915(core.List<api.PersonPlacesLived> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonPlacesLived(o[0]);
  checkPersonPlacesLived(o[1]);
}

core.int buildCounterPersonUrls = 0;
buildPersonUrls() {
  var o = new api.PersonUrls();
  buildCounterPersonUrls++;
  if (buildCounterPersonUrls < 3) {
    o.label = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterPersonUrls--;
  return o;
}

checkPersonUrls(api.PersonUrls o) {
  buildCounterPersonUrls++;
  if (buildCounterPersonUrls < 3) {
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterPersonUrls--;
}

buildUnnamed3916() {
  var o = new core.List<api.PersonUrls>();
  o.add(buildPersonUrls());
  o.add(buildPersonUrls());
  return o;
}

checkUnnamed3916(core.List<api.PersonUrls> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonUrls(o[0]);
  checkPersonUrls(o[1]);
}

core.int buildCounterPerson = 0;
buildPerson() {
  var o = new api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.aboutMe = "foo";
    o.birthday = "foo";
    o.braggingRights = "foo";
    o.circledByCount = 42;
    o.cover = buildPersonCover();
    o.currentLocation = "foo";
    o.displayName = "foo";
    o.domain = "foo";
    o.emails = buildUnnamed3913();
    o.etag = "foo";
    o.gender = "foo";
    o.id = "foo";
    o.image = buildPersonImage();
    o.isPlusUser = true;
    o.kind = "foo";
    o.name = buildPersonName();
    o.nickname = "foo";
    o.objectType = "foo";
    o.occupation = "foo";
    o.organizations = buildUnnamed3914();
    o.placesLived = buildUnnamed3915();
    o.plusOneCount = 42;
    o.relationshipStatus = "foo";
    o.skills = "foo";
    o.tagline = "foo";
    o.url = "foo";
    o.urls = buildUnnamed3916();
    o.verified = true;
  }
  buildCounterPerson--;
  return o;
}

checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    unittest.expect(o.aboutMe, unittest.equals('foo'));
    unittest.expect(o.birthday, unittest.equals('foo'));
    unittest.expect(o.braggingRights, unittest.equals('foo'));
    unittest.expect(o.circledByCount, unittest.equals(42));
    checkPersonCover(o.cover);
    unittest.expect(o.currentLocation, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.domain, unittest.equals('foo'));
    checkUnnamed3913(o.emails);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkPersonImage(o.image);
    unittest.expect(o.isPlusUser, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPersonName(o.name);
    unittest.expect(o.nickname, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
    unittest.expect(o.occupation, unittest.equals('foo'));
    checkUnnamed3914(o.organizations);
    checkUnnamed3915(o.placesLived);
    unittest.expect(o.plusOneCount, unittest.equals(42));
    unittest.expect(o.relationshipStatus, unittest.equals('foo'));
    unittest.expect(o.skills, unittest.equals('foo'));
    unittest.expect(o.tagline, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    checkUnnamed3916(o.urls);
    unittest.expect(o.verified, unittest.isTrue);
  }
  buildCounterPerson--;
}

core.int buildCounterPlaceAddress = 0;
buildPlaceAddress() {
  var o = new api.PlaceAddress();
  buildCounterPlaceAddress++;
  if (buildCounterPlaceAddress < 3) {
    o.formatted = "foo";
  }
  buildCounterPlaceAddress--;
  return o;
}

checkPlaceAddress(api.PlaceAddress o) {
  buildCounterPlaceAddress++;
  if (buildCounterPlaceAddress < 3) {
    unittest.expect(o.formatted, unittest.equals('foo'));
  }
  buildCounterPlaceAddress--;
}

core.int buildCounterPlacePosition = 0;
buildPlacePosition() {
  var o = new api.PlacePosition();
  buildCounterPlacePosition++;
  if (buildCounterPlacePosition < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterPlacePosition--;
  return o;
}

checkPlacePosition(api.PlacePosition o) {
  buildCounterPlacePosition++;
  if (buildCounterPlacePosition < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterPlacePosition--;
}

core.int buildCounterPlace = 0;
buildPlace() {
  var o = new api.Place();
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    o.address = buildPlaceAddress();
    o.displayName = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.position = buildPlacePosition();
  }
  buildCounterPlace--;
  return o;
}

checkPlace(api.Place o) {
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    checkPlaceAddress(o.address);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPlacePosition(o.position);
  }
  buildCounterPlace--;
}

core.int buildCounterPlusDomainsAclentryResource = 0;
buildPlusDomainsAclentryResource() {
  var o = new api.PlusDomainsAclentryResource();
  buildCounterPlusDomainsAclentryResource++;
  if (buildCounterPlusDomainsAclentryResource < 3) {
    o.displayName = "foo";
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterPlusDomainsAclentryResource--;
  return o;
}

checkPlusDomainsAclentryResource(api.PlusDomainsAclentryResource o) {
  buildCounterPlusDomainsAclentryResource++;
  if (buildCounterPlusDomainsAclentryResource < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterPlusDomainsAclentryResource--;
}

core.int buildCounterVideostream = 0;
buildVideostream() {
  var o = new api.Videostream();
  buildCounterVideostream++;
  if (buildCounterVideostream < 3) {
    o.height = 42;
    o.type = "foo";
    o.url = "foo";
    o.width = 42;
  }
  buildCounterVideostream--;
  return o;
}

checkVideostream(api.Videostream o) {
  buildCounterVideostream++;
  if (buildCounterVideostream < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterVideostream--;
}

main() {
  unittest.group("obj-schema-Acl", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcl();
      var od = new api.Acl.fromJson(o.toJson());
      checkAcl(od);
    });
  });

  unittest.group(
      "obj-schema-ActivityActorClientSpecificActorInfoYoutubeActorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActorClientSpecificActorInfoYoutubeActorInfo();
      var od =
          new api.ActivityActorClientSpecificActorInfoYoutubeActorInfo.fromJson(
              o.toJson());
      checkActivityActorClientSpecificActorInfoYoutubeActorInfo(od);
    });
  });

  unittest.group("obj-schema-ActivityActorClientSpecificActorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActorClientSpecificActorInfo();
      var od =
          new api.ActivityActorClientSpecificActorInfo.fromJson(o.toJson());
      checkActivityActorClientSpecificActorInfo(od);
    });
  });

  unittest.group("obj-schema-ActivityActorImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActorImage();
      var od = new api.ActivityActorImage.fromJson(o.toJson());
      checkActivityActorImage(od);
    });
  });

  unittest.group("obj-schema-ActivityActorName", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActorName();
      var od = new api.ActivityActorName.fromJson(o.toJson());
      checkActivityActorName(od);
    });
  });

  unittest.group("obj-schema-ActivityActorVerification", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActorVerification();
      var od = new api.ActivityActorVerification.fromJson(o.toJson());
      checkActivityActorVerification(od);
    });
  });

  unittest.group("obj-schema-ActivityActor", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityActor();
      var od = new api.ActivityActor.fromJson(o.toJson());
      checkActivityActor(od);
    });
  });

  unittest.group(
      "obj-schema-ActivityObjectActorClientSpecificActorInfoYoutubeActorInfo",
      () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectActorClientSpecificActorInfoYoutubeActorInfo();
      var od = new api
              .ActivityObjectActorClientSpecificActorInfoYoutubeActorInfo.fromJson(
          o.toJson());
      checkActivityObjectActorClientSpecificActorInfoYoutubeActorInfo(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectActorClientSpecificActorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectActorClientSpecificActorInfo();
      var od = new api.ActivityObjectActorClientSpecificActorInfo.fromJson(
          o.toJson());
      checkActivityObjectActorClientSpecificActorInfo(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectActorImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectActorImage();
      var od = new api.ActivityObjectActorImage.fromJson(o.toJson());
      checkActivityObjectActorImage(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectActorVerification", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectActorVerification();
      var od = new api.ActivityObjectActorVerification.fromJson(o.toJson());
      checkActivityObjectActorVerification(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectActor", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectActor();
      var od = new api.ActivityObjectActor.fromJson(o.toJson());
      checkActivityObjectActor(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsEmbed", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsEmbed();
      var od = new api.ActivityObjectAttachmentsEmbed.fromJson(o.toJson());
      checkActivityObjectAttachmentsEmbed(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsFullImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsFullImage();
      var od = new api.ActivityObjectAttachmentsFullImage.fromJson(o.toJson());
      checkActivityObjectAttachmentsFullImage(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsImage();
      var od = new api.ActivityObjectAttachmentsImage.fromJson(o.toJson());
      checkActivityObjectAttachmentsImage(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsPreviewThumbnails", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsPreviewThumbnails();
      var od = new api.ActivityObjectAttachmentsPreviewThumbnails.fromJson(
          o.toJson());
      checkActivityObjectAttachmentsPreviewThumbnails(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsThumbnailsImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsThumbnailsImage();
      var od =
          new api.ActivityObjectAttachmentsThumbnailsImage.fromJson(o.toJson());
      checkActivityObjectAttachmentsThumbnailsImage(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachmentsThumbnails", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachmentsThumbnails();
      var od = new api.ActivityObjectAttachmentsThumbnails.fromJson(o.toJson());
      checkActivityObjectAttachmentsThumbnails(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectAttachments", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectAttachments();
      var od = new api.ActivityObjectAttachments.fromJson(o.toJson());
      checkActivityObjectAttachments(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectPlusoners", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectPlusoners();
      var od = new api.ActivityObjectPlusoners.fromJson(o.toJson());
      checkActivityObjectPlusoners(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectReplies();
      var od = new api.ActivityObjectReplies.fromJson(o.toJson());
      checkActivityObjectReplies(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectResharers", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectResharers();
      var od = new api.ActivityObjectResharers.fromJson(o.toJson());
      checkActivityObjectResharers(od);
    });
  });

  unittest.group("obj-schema-ActivityObjectStatusForViewer", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectStatusForViewer();
      var od = new api.ActivityObjectStatusForViewer.fromJson(o.toJson());
      checkActivityObjectStatusForViewer(od);
    });
  });

  unittest.group("obj-schema-ActivityObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObject();
      var od = new api.ActivityObject.fromJson(o.toJson());
      checkActivityObject(od);
    });
  });

  unittest.group("obj-schema-ActivityProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityProvider();
      var od = new api.ActivityProvider.fromJson(o.toJson());
      checkActivityProvider(od);
    });
  });

  unittest.group("obj-schema-Activity", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivity();
      var od = new api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });

  unittest.group("obj-schema-ActivityFeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityFeed();
      var od = new api.ActivityFeed.fromJson(o.toJson());
      checkActivityFeed(od);
    });
  });

  unittest.group("obj-schema-Audience", () {
    unittest.test("to-json--from-json", () {
      var o = buildAudience();
      var od = new api.Audience.fromJson(o.toJson());
      checkAudience(od);
    });
  });

  unittest.group("obj-schema-AudiencesFeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildAudiencesFeed();
      var od = new api.AudiencesFeed.fromJson(o.toJson());
      checkAudiencesFeed(od);
    });
  });

  unittest.group("obj-schema-CirclePeople", () {
    unittest.test("to-json--from-json", () {
      var o = buildCirclePeople();
      var od = new api.CirclePeople.fromJson(o.toJson());
      checkCirclePeople(od);
    });
  });

  unittest.group("obj-schema-Circle", () {
    unittest.test("to-json--from-json", () {
      var o = buildCircle();
      var od = new api.Circle.fromJson(o.toJson());
      checkCircle(od);
    });
  });

  unittest.group("obj-schema-CircleFeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildCircleFeed();
      var od = new api.CircleFeed.fromJson(o.toJson());
      checkCircleFeed(od);
    });
  });

  unittest.group(
      "obj-schema-CommentActorClientSpecificActorInfoYoutubeActorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentActorClientSpecificActorInfoYoutubeActorInfo();
      var od =
          new api.CommentActorClientSpecificActorInfoYoutubeActorInfo.fromJson(
              o.toJson());
      checkCommentActorClientSpecificActorInfoYoutubeActorInfo(od);
    });
  });

  unittest.group("obj-schema-CommentActorClientSpecificActorInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentActorClientSpecificActorInfo();
      var od = new api.CommentActorClientSpecificActorInfo.fromJson(o.toJson());
      checkCommentActorClientSpecificActorInfo(od);
    });
  });

  unittest.group("obj-schema-CommentActorImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentActorImage();
      var od = new api.CommentActorImage.fromJson(o.toJson());
      checkCommentActorImage(od);
    });
  });

  unittest.group("obj-schema-CommentActorVerification", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentActorVerification();
      var od = new api.CommentActorVerification.fromJson(o.toJson());
      checkCommentActorVerification(od);
    });
  });

  unittest.group("obj-schema-CommentActor", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentActor();
      var od = new api.CommentActor.fromJson(o.toJson());
      checkCommentActor(od);
    });
  });

  unittest.group("obj-schema-CommentInReplyTo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentInReplyTo();
      var od = new api.CommentInReplyTo.fromJson(o.toJson());
      checkCommentInReplyTo(od);
    });
  });

  unittest.group("obj-schema-CommentObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentObject();
      var od = new api.CommentObject.fromJson(o.toJson());
      checkCommentObject(od);
    });
  });

  unittest.group("obj-schema-CommentPlusoners", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentPlusoners();
      var od = new api.CommentPlusoners.fromJson(o.toJson());
      checkCommentPlusoners(od);
    });
  });

  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group("obj-schema-CommentFeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentFeed();
      var od = new api.CommentFeed.fromJson(o.toJson());
      checkCommentFeed(od);
    });
  });

  unittest.group("obj-schema-MediaAuthorImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediaAuthorImage();
      var od = new api.MediaAuthorImage.fromJson(o.toJson());
      checkMediaAuthorImage(od);
    });
  });

  unittest.group("obj-schema-MediaAuthor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediaAuthor();
      var od = new api.MediaAuthor.fromJson(o.toJson());
      checkMediaAuthor(od);
    });
  });

  unittest.group("obj-schema-MediaExif", () {
    unittest.test("to-json--from-json", () {
      var o = buildMediaExif();
      var od = new api.MediaExif.fromJson(o.toJson());
      checkMediaExif(od);
    });
  });

  unittest.group("obj-schema-Media", () {
    unittest.test("to-json--from-json", () {
      var o = buildMedia();
      var od = new api.Media.fromJson(o.toJson());
      checkMedia(od);
    });
  });

  unittest.group("obj-schema-PeopleFeed", () {
    unittest.test("to-json--from-json", () {
      var o = buildPeopleFeed();
      var od = new api.PeopleFeed.fromJson(o.toJson());
      checkPeopleFeed(od);
    });
  });

  unittest.group("obj-schema-PersonCoverCoverInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonCoverCoverInfo();
      var od = new api.PersonCoverCoverInfo.fromJson(o.toJson());
      checkPersonCoverCoverInfo(od);
    });
  });

  unittest.group("obj-schema-PersonCoverCoverPhoto", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonCoverCoverPhoto();
      var od = new api.PersonCoverCoverPhoto.fromJson(o.toJson());
      checkPersonCoverCoverPhoto(od);
    });
  });

  unittest.group("obj-schema-PersonCover", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonCover();
      var od = new api.PersonCover.fromJson(o.toJson());
      checkPersonCover(od);
    });
  });

  unittest.group("obj-schema-PersonEmails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonEmails();
      var od = new api.PersonEmails.fromJson(o.toJson());
      checkPersonEmails(od);
    });
  });

  unittest.group("obj-schema-PersonImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonImage();
      var od = new api.PersonImage.fromJson(o.toJson());
      checkPersonImage(od);
    });
  });

  unittest.group("obj-schema-PersonName", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonName();
      var od = new api.PersonName.fromJson(o.toJson());
      checkPersonName(od);
    });
  });

  unittest.group("obj-schema-PersonOrganizations", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonOrganizations();
      var od = new api.PersonOrganizations.fromJson(o.toJson());
      checkPersonOrganizations(od);
    });
  });

  unittest.group("obj-schema-PersonPlacesLived", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonPlacesLived();
      var od = new api.PersonPlacesLived.fromJson(o.toJson());
      checkPersonPlacesLived(od);
    });
  });

  unittest.group("obj-schema-PersonUrls", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersonUrls();
      var od = new api.PersonUrls.fromJson(o.toJson());
      checkPersonUrls(od);
    });
  });

  unittest.group("obj-schema-Person", () {
    unittest.test("to-json--from-json", () {
      var o = buildPerson();
      var od = new api.Person.fromJson(o.toJson());
      checkPerson(od);
    });
  });

  unittest.group("obj-schema-PlaceAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlaceAddress();
      var od = new api.PlaceAddress.fromJson(o.toJson());
      checkPlaceAddress(od);
    });
  });

  unittest.group("obj-schema-PlacePosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlacePosition();
      var od = new api.PlacePosition.fromJson(o.toJson());
      checkPlacePosition(od);
    });
  });

  unittest.group("obj-schema-Place", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlace();
      var od = new api.Place.fromJson(o.toJson());
      checkPlace(od);
    });
  });

  unittest.group("obj-schema-PlusDomainsAclentryResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlusDomainsAclentryResource();
      var od = new api.PlusDomainsAclentryResource.fromJson(o.toJson());
      checkPlusDomainsAclentryResource(od);
    });
  });

  unittest.group("obj-schema-Videostream", () {
    unittest.test("to-json--from-json", () {
      var o = buildVideostream();
      var od = new api.Videostream.fromJson(o.toJson());
      checkVideostream(od);
    });
  });

  unittest.group("resource-ActivitiesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ActivitiesResourceApi res = new api.PlusDomainsApi(mock).activities;
      var arg_activityId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("activities/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildActivity());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_activityId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkActivity(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ActivitiesResourceApi res = new api.PlusDomainsApi(mock).activities;
      var arg_userId = "foo";
      var arg_collection = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/activities/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/activities/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildActivityFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, arg_collection,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkActivityFeed(response);
      })));
    });
  });

  unittest.group("resource-AudiencesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AudiencesResourceApi res = new api.PlusDomainsApi(mock).audiences;
      var arg_userId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/audiences", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/audiences"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAudiencesFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAudiencesFeed(response);
      })));
    });
  });

  unittest.group("resource-CirclesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CirclesResourceApi res = new api.PlusDomainsApi(mock).circles;
      var arg_userId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/circles", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/circles"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCircleFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCircleFeed(response);
      })));
    });
  });

  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.PlusDomainsApi(mock).comments;
      var arg_commentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("comments/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildComment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_commentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkComment(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CommentsResourceApi res = new api.PlusDomainsApi(mock).comments;
      var arg_activityId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_sortOrder = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/comments"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCommentFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_activityId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCommentFeed(response);
      })));
    });
  });

  unittest.group("resource-MediaResourceApi", () {
    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.MediaResourceApi res = new api.PlusDomainsApi(mock).media;
      var arg_request = buildMedia();
      var arg_userId = "foo";
      var arg_collection = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Media.fromJson(json);
        checkMedia(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/media/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/media/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMedia());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_userId, arg_collection, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMedia(response);
      })));
    });
  });

  unittest.group("resource-PeopleResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PlusDomainsApi(mock).people;
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPerson());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPerson(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PlusDomainsApi(mock).people;
      var arg_userId = "foo";
      var arg_collection = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/people/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/people/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPeopleFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_userId, arg_collection,
              maxResults: arg_maxResults,
              orderBy: arg_orderBy,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPeopleFeed(response);
      })));
    });

    unittest.test("method--listByActivity", () {
      var mock = new HttpServerMock();
      api.PeopleResourceApi res = new api.PlusDomainsApi(mock).people;
      var arg_activityId = "foo";
      var arg_collection = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("plusDomains/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/people/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/people/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPeopleFeed());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listByActivity(arg_activityId, arg_collection,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPeopleFeed(response);
      })));
    });
  });
}
