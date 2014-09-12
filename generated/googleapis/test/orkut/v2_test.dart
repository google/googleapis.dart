library googleapis.orkut.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/orkut/v2.dart' as api;



core.int buildCounterAclItems = 0;
buildAclItems() {
  var o = new api.AclItems();
  buildCounterAclItems++;
  if (buildCounterAclItems < 3) {
    o.id = "foo";
    o.type = "foo";
  }
  buildCounterAclItems--;
  return o;
}

checkAclItems(api.AclItems o) {
  buildCounterAclItems++;
  if (buildCounterAclItems < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAclItems--;
}

buildUnnamed140() {
  var o = new core.List<api.AclItems>();
  o.add(buildAclItems());
  o.add(buildAclItems());
  return o;
}

checkUnnamed140(core.List<api.AclItems> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAclItems(o[0]);
  checkAclItems(o[1]);
}

core.int buildCounterAcl = 0;
buildAcl() {
  var o = new api.Acl();
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    o.description = "foo";
    o.items = buildUnnamed140();
    o.kind = "foo";
    o.totalParticipants = 42;
  }
  buildCounterAcl--;
  return o;
}

checkAcl(api.Acl o) {
  buildCounterAcl++;
  if (buildCounterAcl < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed140(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.totalParticipants, unittest.equals(42));
  }
  buildCounterAcl--;
}

buildUnnamed141() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed141(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

buildUnnamed142() {
  var o = new core.List<api.OrkutActivityobjectsResource>();
  o.add(buildOrkutActivityobjectsResource());
  o.add(buildOrkutActivityobjectsResource());
  return o;
}

checkUnnamed142(core.List<api.OrkutActivityobjectsResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutActivityobjectsResource(o[0]);
  checkOrkutActivityobjectsResource(o[1]);
}

buildUnnamed143() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed143(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterActivityObjectReplies = 0;
buildActivityObjectReplies() {
  var o = new api.ActivityObjectReplies();
  buildCounterActivityObjectReplies++;
  if (buildCounterActivityObjectReplies < 3) {
    o.items = buildUnnamed143();
    o.totalItems = "foo";
    o.url = "foo";
  }
  buildCounterActivityObjectReplies--;
  return o;
}

checkActivityObjectReplies(api.ActivityObjectReplies o) {
  buildCounterActivityObjectReplies++;
  if (buildCounterActivityObjectReplies < 3) {
    checkUnnamed143(o.items);
    unittest.expect(o.totalItems, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActivityObjectReplies--;
}

core.int buildCounterActivityObject = 0;
buildActivityObject() {
  var o = new api.ActivityObject();
  buildCounterActivityObject++;
  if (buildCounterActivityObject < 3) {
    o.content = "foo";
    o.items = buildUnnamed142();
    o.objectType = "foo";
    o.replies = buildActivityObjectReplies();
  }
  buildCounterActivityObject--;
  return o;
}

checkActivityObject(api.ActivityObject o) {
  buildCounterActivityObject++;
  if (buildCounterActivityObject < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed142(o.items);
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkActivityObjectReplies(o.replies);
  }
  buildCounterActivityObject--;
}

core.int buildCounterActivity = 0;
buildActivity() {
  var o = new api.Activity();
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    o.access = buildAcl();
    o.actor = buildOrkutAuthorResource();
    o.id = "foo";
    o.kind = "foo";
    o.links = buildUnnamed141();
    o.object = buildActivityObject();
    o.published = core.DateTime.parse("2002-02-27T14:01:02");
    o.title = "foo";
    o.updated = core.DateTime.parse("2002-02-27T14:01:02");
    o.verb = "foo";
  }
  buildCounterActivity--;
  return o;
}

checkActivity(api.Activity o) {
  buildCounterActivity++;
  if (buildCounterActivity < 3) {
    checkAcl(o.access);
    checkOrkutAuthorResource(o.actor);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed141(o.links);
    checkActivityObject(o.object);
    unittest.expect(o.published, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updated, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.verb, unittest.equals('foo'));
  }
  buildCounterActivity--;
}

buildUnnamed144() {
  var o = new core.List<api.Activity>();
  o.add(buildActivity());
  o.add(buildActivity());
  return o;
}

checkUnnamed144(core.List<api.Activity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActivity(o[0]);
  checkActivity(o[1]);
}

core.int buildCounterActivityList = 0;
buildActivityList() {
  var o = new api.ActivityList();
  buildCounterActivityList++;
  if (buildCounterActivityList < 3) {
    o.items = buildUnnamed144();
    o.kind = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterActivityList--;
  return o;
}

checkActivityList(api.ActivityList o) {
  buildCounterActivityList++;
  if (buildCounterActivityList < 3) {
    checkUnnamed144(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterActivityList--;
}

core.int buildCounterBadge = 0;
buildBadge() {
  var o = new api.Badge();
  buildCounterBadge++;
  if (buildCounterBadge < 3) {
    o.badgeLargeLogo = "foo";
    o.badgeSmallLogo = "foo";
    o.caption = "foo";
    o.description = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.sponsorLogo = "foo";
    o.sponsorName = "foo";
    o.sponsorUrl = "foo";
  }
  buildCounterBadge--;
  return o;
}

checkBadge(api.Badge o) {
  buildCounterBadge++;
  if (buildCounterBadge < 3) {
    unittest.expect(o.badgeLargeLogo, unittest.equals('foo'));
    unittest.expect(o.badgeSmallLogo, unittest.equals('foo'));
    unittest.expect(o.caption, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.sponsorLogo, unittest.equals('foo'));
    unittest.expect(o.sponsorName, unittest.equals('foo'));
    unittest.expect(o.sponsorUrl, unittest.equals('foo'));
  }
  buildCounterBadge--;
}

buildUnnamed145() {
  var o = new core.List<api.Badge>();
  o.add(buildBadge());
  o.add(buildBadge());
  return o;
}

checkUnnamed145(core.List<api.Badge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBadge(o[0]);
  checkBadge(o[1]);
}

core.int buildCounterBadgeList = 0;
buildBadgeList() {
  var o = new api.BadgeList();
  buildCounterBadgeList++;
  if (buildCounterBadgeList < 3) {
    o.items = buildUnnamed145();
    o.kind = "foo";
  }
  buildCounterBadgeList--;
  return o;
}

checkBadgeList(api.BadgeList o) {
  buildCounterBadgeList++;
  if (buildCounterBadgeList < 3) {
    checkUnnamed145(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBadgeList--;
}

core.int buildCounterCommentInReplyTo = 0;
buildCommentInReplyTo() {
  var o = new api.CommentInReplyTo();
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    o.href = "foo";
    o.ref = "foo";
    o.rel = "foo";
    o.type = "foo";
  }
  buildCounterCommentInReplyTo--;
  return o;
}

checkCommentInReplyTo(api.CommentInReplyTo o) {
  buildCounterCommentInReplyTo++;
  if (buildCounterCommentInReplyTo < 3) {
    unittest.expect(o.href, unittest.equals('foo'));
    unittest.expect(o.ref, unittest.equals('foo'));
    unittest.expect(o.rel, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCommentInReplyTo--;
}

buildUnnamed146() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed146(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.actor = buildOrkutAuthorResource();
    o.content = "foo";
    o.id = "foo";
    o.inReplyTo = buildCommentInReplyTo();
    o.kind = "foo";
    o.links = buildUnnamed146();
    o.published = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkOrkutAuthorResource(o.actor);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkCommentInReplyTo(o.inReplyTo);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed146(o.links);
    unittest.expect(o.published, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterComment--;
}

buildUnnamed147() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed147(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterCommentList = 0;
buildCommentList() {
  var o = new api.CommentList();
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    o.items = buildUnnamed147();
    o.kind = "foo";
    o.nextPageToken = "foo";
    o.previousPageToken = "foo";
  }
  buildCounterCommentList--;
  return o;
}

checkCommentList(api.CommentList o) {
  buildCounterCommentList++;
  if (buildCounterCommentList < 3) {
    checkUnnamed147(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterCommentList--;
}

buildUnnamed148() {
  var o = new core.List<api.OrkutAuthorResource>();
  o.add(buildOrkutAuthorResource());
  o.add(buildOrkutAuthorResource());
  return o;
}

checkUnnamed148(core.List<api.OrkutAuthorResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutAuthorResource(o[0]);
  checkOrkutAuthorResource(o[1]);
}

buildUnnamed149() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed149(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

buildUnnamed150() {
  var o = new core.List<api.OrkutAuthorResource>();
  o.add(buildOrkutAuthorResource());
  o.add(buildOrkutAuthorResource());
  return o;
}

checkUnnamed150(core.List<api.OrkutAuthorResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutAuthorResource(o[0]);
  checkOrkutAuthorResource(o[1]);
}

core.int buildCounterCommunity = 0;
buildCommunity() {
  var o = new api.Community();
  buildCounterCommunity++;
  if (buildCounterCommunity < 3) {
    o.category = "foo";
    o.coOwners = buildUnnamed148();
    o.creationDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.id = 42;
    o.kind = "foo";
    o.language = "foo";
    o.links = buildUnnamed149();
    o.location = "foo";
    o.memberCount = 42;
    o.moderators = buildUnnamed150();
    o.name = "foo";
    o.owner = buildOrkutAuthorResource();
    o.photoUrl = "foo";
  }
  buildCounterCommunity--;
  return o;
}

checkCommunity(api.Community o) {
  buildCounterCommunity++;
  if (buildCounterCommunity < 3) {
    unittest.expect(o.category, unittest.equals('foo'));
    checkUnnamed148(o.coOwners);
    unittest.expect(o.creationDate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    checkUnnamed149(o.links);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.memberCount, unittest.equals(42));
    checkUnnamed150(o.moderators);
    unittest.expect(o.name, unittest.equals('foo'));
    checkOrkutAuthorResource(o.owner);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
  }
  buildCounterCommunity--;
}

buildUnnamed151() {
  var o = new core.List<api.Community>();
  o.add(buildCommunity());
  o.add(buildCommunity());
  return o;
}

checkUnnamed151(core.List<api.Community> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunity(o[0]);
  checkCommunity(o[1]);
}

core.int buildCounterCommunityList = 0;
buildCommunityList() {
  var o = new api.CommunityList();
  buildCounterCommunityList++;
  if (buildCounterCommunityList < 3) {
    o.items = buildUnnamed151();
    o.kind = "foo";
  }
  buildCounterCommunityList--;
  return o;
}

checkCommunityList(api.CommunityList o) {
  buildCounterCommunityList++;
  if (buildCounterCommunityList < 3) {
    checkUnnamed151(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCommunityList--;
}

core.int buildCounterCommunityMembers = 0;
buildCommunityMembers() {
  var o = new api.CommunityMembers();
  buildCounterCommunityMembers++;
  if (buildCounterCommunityMembers < 3) {
    o.communityMembershipStatus = buildCommunityMembershipStatus();
    o.kind = "foo";
    o.person = buildOrkutActivitypersonResource();
  }
  buildCounterCommunityMembers--;
  return o;
}

checkCommunityMembers(api.CommunityMembers o) {
  buildCounterCommunityMembers++;
  if (buildCounterCommunityMembers < 3) {
    checkCommunityMembershipStatus(o.communityMembershipStatus);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkOrkutActivitypersonResource(o.person);
  }
  buildCounterCommunityMembers--;
}

buildUnnamed152() {
  var o = new core.List<api.CommunityMembers>();
  o.add(buildCommunityMembers());
  o.add(buildCommunityMembers());
  return o;
}

checkUnnamed152(core.List<api.CommunityMembers> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityMembers(o[0]);
  checkCommunityMembers(o[1]);
}

core.int buildCounterCommunityMembersList = 0;
buildCommunityMembersList() {
  var o = new api.CommunityMembersList();
  buildCounterCommunityMembersList++;
  if (buildCounterCommunityMembersList < 3) {
    o.firstPageToken = "foo";
    o.items = buildUnnamed152();
    o.kind = "foo";
    o.lastPageToken = "foo";
    o.nextPageToken = "foo";
    o.prevPageToken = "foo";
  }
  buildCounterCommunityMembersList--;
  return o;
}

checkCommunityMembersList(api.CommunityMembersList o) {
  buildCounterCommunityMembersList++;
  if (buildCounterCommunityMembersList < 3) {
    unittest.expect(o.firstPageToken, unittest.equals('foo'));
    checkUnnamed152(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommunityMembersList--;
}

core.int buildCounterCommunityMembershipStatus = 0;
buildCommunityMembershipStatus() {
  var o = new api.CommunityMembershipStatus();
  buildCounterCommunityMembershipStatus++;
  if (buildCounterCommunityMembershipStatus < 3) {
    o.canCreatePoll = true;
    o.canCreateTopic = true;
    o.canShout = true;
    o.isCoOwner = true;
    o.isFollowing = true;
    o.isModerator = true;
    o.isOwner = true;
    o.isRestoreAvailable = true;
    o.isTakebackAvailable = true;
    o.kind = "foo";
    o.status = "foo";
  }
  buildCounterCommunityMembershipStatus--;
  return o;
}

checkCommunityMembershipStatus(api.CommunityMembershipStatus o) {
  buildCounterCommunityMembershipStatus++;
  if (buildCounterCommunityMembershipStatus < 3) {
    unittest.expect(o.canCreatePoll, unittest.isTrue);
    unittest.expect(o.canCreateTopic, unittest.isTrue);
    unittest.expect(o.canShout, unittest.isTrue);
    unittest.expect(o.isCoOwner, unittest.isTrue);
    unittest.expect(o.isFollowing, unittest.isTrue);
    unittest.expect(o.isModerator, unittest.isTrue);
    unittest.expect(o.isOwner, unittest.isTrue);
    unittest.expect(o.isRestoreAvailable, unittest.isTrue);
    unittest.expect(o.isTakebackAvailable, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterCommunityMembershipStatus--;
}

buildUnnamed153() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed153(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

core.int buildCounterCommunityMessage = 0;
buildCommunityMessage() {
  var o = new api.CommunityMessage();
  buildCounterCommunityMessage++;
  if (buildCounterCommunityMessage < 3) {
    o.addedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.author = buildOrkutAuthorResource();
    o.body = "foo";
    o.id = "foo";
    o.isSpam = true;
    o.kind = "foo";
    o.links = buildUnnamed153();
    o.subject = "foo";
  }
  buildCounterCommunityMessage--;
  return o;
}

checkCommunityMessage(api.CommunityMessage o) {
  buildCounterCommunityMessage++;
  if (buildCounterCommunityMessage < 3) {
    unittest.expect(o.addedDate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkOrkutAuthorResource(o.author);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isSpam, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed153(o.links);
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterCommunityMessage--;
}

buildUnnamed154() {
  var o = new core.List<api.CommunityMessage>();
  o.add(buildCommunityMessage());
  o.add(buildCommunityMessage());
  return o;
}

checkUnnamed154(core.List<api.CommunityMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityMessage(o[0]);
  checkCommunityMessage(o[1]);
}

core.int buildCounterCommunityMessageList = 0;
buildCommunityMessageList() {
  var o = new api.CommunityMessageList();
  buildCounterCommunityMessageList++;
  if (buildCounterCommunityMessageList < 3) {
    o.firstPageToken = "foo";
    o.items = buildUnnamed154();
    o.kind = "foo";
    o.lastPageToken = "foo";
    o.nextPageToken = "foo";
    o.prevPageToken = "foo";
  }
  buildCounterCommunityMessageList--;
  return o;
}

checkCommunityMessageList(api.CommunityMessageList o) {
  buildCounterCommunityMessageList++;
  if (buildCounterCommunityMessageList < 3) {
    unittest.expect(o.firstPageToken, unittest.equals('foo'));
    checkUnnamed154(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommunityMessageList--;
}

core.int buildCounterCommunityPollImage = 0;
buildCommunityPollImage() {
  var o = new api.CommunityPollImage();
  buildCounterCommunityPollImage++;
  if (buildCounterCommunityPollImage < 3) {
    o.url = "foo";
  }
  buildCounterCommunityPollImage--;
  return o;
}

checkCommunityPollImage(api.CommunityPollImage o) {
  buildCounterCommunityPollImage++;
  if (buildCounterCommunityPollImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterCommunityPollImage--;
}

buildUnnamed155() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed155(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

buildUnnamed156() {
  var o = new core.List<api.OrkutCommunitypolloptionResource>();
  o.add(buildOrkutCommunitypolloptionResource());
  o.add(buildOrkutCommunitypolloptionResource());
  return o;
}

checkUnnamed156(core.List<api.OrkutCommunitypolloptionResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutCommunitypolloptionResource(o[0]);
  checkOrkutCommunitypolloptionResource(o[1]);
}

buildUnnamed157() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed157(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCommunityPoll = 0;
buildCommunityPoll() {
  var o = new api.CommunityPoll();
  buildCounterCommunityPoll++;
  if (buildCounterCommunityPoll < 3) {
    o.author = buildOrkutAuthorResource();
    o.communityId = 42;
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.endingTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.hasVoted = true;
    o.id = "foo";
    o.image = buildCommunityPollImage();
    o.isClosed = true;
    o.isMultipleAnswers = true;
    o.isOpenForVoting = true;
    o.isRestricted = true;
    o.isSpam = true;
    o.isUsersVotePublic = true;
    o.isVotingAllowedForNonMembers = true;
    o.kind = "foo";
    o.lastUpdate = core.DateTime.parse("2002-02-27T14:01:02");
    o.links = buildUnnamed155();
    o.options = buildUnnamed156();
    o.question = "foo";
    o.totalNumberOfVotes = 42;
    o.votedOptions = buildUnnamed157();
  }
  buildCounterCommunityPoll--;
  return o;
}

checkCommunityPoll(api.CommunityPoll o) {
  buildCounterCommunityPoll++;
  if (buildCounterCommunityPoll < 3) {
    checkOrkutAuthorResource(o.author);
    unittest.expect(o.communityId, unittest.equals(42));
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.endingTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.hasVoted, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkCommunityPollImage(o.image);
    unittest.expect(o.isClosed, unittest.isTrue);
    unittest.expect(o.isMultipleAnswers, unittest.isTrue);
    unittest.expect(o.isOpenForVoting, unittest.isTrue);
    unittest.expect(o.isRestricted, unittest.isTrue);
    unittest.expect(o.isSpam, unittest.isTrue);
    unittest.expect(o.isUsersVotePublic, unittest.isTrue);
    unittest.expect(o.isVotingAllowedForNonMembers, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed155(o.links);
    checkUnnamed156(o.options);
    unittest.expect(o.question, unittest.equals('foo'));
    unittest.expect(o.totalNumberOfVotes, unittest.equals(42));
    checkUnnamed157(o.votedOptions);
  }
  buildCounterCommunityPoll--;
}

core.int buildCounterCommunityPollComment = 0;
buildCommunityPollComment() {
  var o = new api.CommunityPollComment();
  buildCounterCommunityPollComment++;
  if (buildCounterCommunityPollComment < 3) {
    o.addedDate = core.DateTime.parse("2002-02-27T14:01:02");
    o.author = buildOrkutAuthorResource();
    o.body = "foo";
    o.id = 42;
    o.kind = "foo";
  }
  buildCounterCommunityPollComment--;
  return o;
}

checkCommunityPollComment(api.CommunityPollComment o) {
  buildCounterCommunityPollComment++;
  if (buildCounterCommunityPollComment < 3) {
    unittest.expect(o.addedDate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkOrkutAuthorResource(o.author);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCommunityPollComment--;
}

buildUnnamed158() {
  var o = new core.List<api.CommunityPollComment>();
  o.add(buildCommunityPollComment());
  o.add(buildCommunityPollComment());
  return o;
}

checkUnnamed158(core.List<api.CommunityPollComment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityPollComment(o[0]);
  checkCommunityPollComment(o[1]);
}

core.int buildCounterCommunityPollCommentList = 0;
buildCommunityPollCommentList() {
  var o = new api.CommunityPollCommentList();
  buildCounterCommunityPollCommentList++;
  if (buildCounterCommunityPollCommentList < 3) {
    o.firstPageToken = "foo";
    o.items = buildUnnamed158();
    o.kind = "foo";
    o.lastPageToken = "foo";
    o.nextPageToken = "foo";
    o.prevPageToken = "foo";
  }
  buildCounterCommunityPollCommentList--;
  return o;
}

checkCommunityPollCommentList(api.CommunityPollCommentList o) {
  buildCounterCommunityPollCommentList++;
  if (buildCounterCommunityPollCommentList < 3) {
    unittest.expect(o.firstPageToken, unittest.equals('foo'));
    checkUnnamed158(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommunityPollCommentList--;
}

buildUnnamed159() {
  var o = new core.List<api.CommunityPoll>();
  o.add(buildCommunityPoll());
  o.add(buildCommunityPoll());
  return o;
}

checkUnnamed159(core.List<api.CommunityPoll> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityPoll(o[0]);
  checkCommunityPoll(o[1]);
}

core.int buildCounterCommunityPollList = 0;
buildCommunityPollList() {
  var o = new api.CommunityPollList();
  buildCounterCommunityPollList++;
  if (buildCounterCommunityPollList < 3) {
    o.firstPageToken = "foo";
    o.items = buildUnnamed159();
    o.kind = "foo";
    o.lastPageToken = "foo";
    o.nextPageToken = "foo";
    o.prevPageToken = "foo";
  }
  buildCounterCommunityPollList--;
  return o;
}

checkCommunityPollList(api.CommunityPollList o) {
  buildCounterCommunityPollList++;
  if (buildCounterCommunityPollList < 3) {
    unittest.expect(o.firstPageToken, unittest.equals('foo'));
    checkUnnamed159(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommunityPollList--;
}

buildUnnamed160() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed160(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterCommunityPollVote = 0;
buildCommunityPollVote() {
  var o = new api.CommunityPollVote();
  buildCounterCommunityPollVote++;
  if (buildCounterCommunityPollVote < 3) {
    o.isVotevisible = true;
    o.kind = "foo";
    o.optionIds = buildUnnamed160();
  }
  buildCounterCommunityPollVote--;
  return o;
}

checkCommunityPollVote(api.CommunityPollVote o) {
  buildCounterCommunityPollVote++;
  if (buildCounterCommunityPollVote < 3) {
    unittest.expect(o.isVotevisible, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed160(o.optionIds);
  }
  buildCounterCommunityPollVote--;
}

buildUnnamed161() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed161(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

buildUnnamed162() {
  var o = new core.List<api.CommunityMessage>();
  o.add(buildCommunityMessage());
  o.add(buildCommunityMessage());
  return o;
}

checkUnnamed162(core.List<api.CommunityMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityMessage(o[0]);
  checkCommunityMessage(o[1]);
}

core.int buildCounterCommunityTopic = 0;
buildCommunityTopic() {
  var o = new api.CommunityTopic();
  buildCounterCommunityTopic++;
  if (buildCounterCommunityTopic < 3) {
    o.author = buildOrkutAuthorResource();
    o.body = "foo";
    o.id = "foo";
    o.isClosed = true;
    o.kind = "foo";
    o.lastUpdate = core.DateTime.parse("2002-02-27T14:01:02");
    o.latestMessageSnippet = "foo";
    o.links = buildUnnamed161();
    o.messages = buildUnnamed162();
    o.numberOfReplies = 42;
    o.title = "foo";
  }
  buildCounterCommunityTopic--;
  return o;
}

checkCommunityTopic(api.CommunityTopic o) {
  buildCounterCommunityTopic++;
  if (buildCounterCommunityTopic < 3) {
    checkOrkutAuthorResource(o.author);
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isClosed, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastUpdate, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.latestMessageSnippet, unittest.equals('foo'));
    checkUnnamed161(o.links);
    checkUnnamed162(o.messages);
    unittest.expect(o.numberOfReplies, unittest.equals(42));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCommunityTopic--;
}

buildUnnamed163() {
  var o = new core.List<api.CommunityTopic>();
  o.add(buildCommunityTopic());
  o.add(buildCommunityTopic());
  return o;
}

checkUnnamed163(core.List<api.CommunityTopic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommunityTopic(o[0]);
  checkCommunityTopic(o[1]);
}

core.int buildCounterCommunityTopicList = 0;
buildCommunityTopicList() {
  var o = new api.CommunityTopicList();
  buildCounterCommunityTopicList++;
  if (buildCounterCommunityTopicList < 3) {
    o.firstPageToken = "foo";
    o.items = buildUnnamed163();
    o.kind = "foo";
    o.lastPageToken = "foo";
    o.nextPageToken = "foo";
    o.prevPageToken = "foo";
  }
  buildCounterCommunityTopicList--;
  return o;
}

checkCommunityTopicList(api.CommunityTopicList o) {
  buildCounterCommunityTopicList++;
  if (buildCounterCommunityTopicList < 3) {
    unittest.expect(o.firstPageToken, unittest.equals('foo'));
    checkUnnamed163(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastPageToken, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.prevPageToken, unittest.equals('foo'));
  }
  buildCounterCommunityTopicList--;
}

buildUnnamed164() {
  var o = new core.List<api.OrkutCounterResource>();
  o.add(buildOrkutCounterResource());
  o.add(buildOrkutCounterResource());
  return o;
}

checkUnnamed164(core.List<api.OrkutCounterResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutCounterResource(o[0]);
  checkOrkutCounterResource(o[1]);
}

core.int buildCounterCounters = 0;
buildCounters() {
  var o = new api.Counters();
  buildCounterCounters++;
  if (buildCounterCounters < 3) {
    o.items = buildUnnamed164();
    o.kind = "foo";
  }
  buildCounterCounters--;
  return o;
}

checkCounters(api.Counters o) {
  buildCounterCounters++;
  if (buildCounterCounters < 3) {
    checkUnnamed164(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCounters--;
}

buildUnnamed165() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed165(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

core.int buildCounterOrkutActivityobjectsResource = 0;
buildOrkutActivityobjectsResource() {
  var o = new api.OrkutActivityobjectsResource();
  buildCounterOrkutActivityobjectsResource++;
  if (buildCounterOrkutActivityobjectsResource < 3) {
    o.community = buildCommunity();
    o.content = "foo";
    o.displayName = "foo";
    o.id = "foo";
    o.links = buildUnnamed165();
    o.objectType = "foo";
    o.person = buildOrkutActivitypersonResource();
  }
  buildCounterOrkutActivityobjectsResource--;
  return o;
}

checkOrkutActivityobjectsResource(api.OrkutActivityobjectsResource o) {
  buildCounterOrkutActivityobjectsResource++;
  if (buildCounterOrkutActivityobjectsResource < 3) {
    checkCommunity(o.community);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed165(o.links);
    unittest.expect(o.objectType, unittest.equals('foo'));
    checkOrkutActivitypersonResource(o.person);
  }
  buildCounterOrkutActivityobjectsResource--;
}

core.int buildCounterOrkutActivitypersonResourceImage = 0;
buildOrkutActivitypersonResourceImage() {
  var o = new api.OrkutActivitypersonResourceImage();
  buildCounterOrkutActivitypersonResourceImage++;
  if (buildCounterOrkutActivitypersonResourceImage < 3) {
    o.url = "foo";
  }
  buildCounterOrkutActivitypersonResourceImage--;
  return o;
}

checkOrkutActivitypersonResourceImage(api.OrkutActivitypersonResourceImage o) {
  buildCounterOrkutActivitypersonResourceImage++;
  if (buildCounterOrkutActivitypersonResourceImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOrkutActivitypersonResourceImage--;
}

core.int buildCounterOrkutActivitypersonResourceName = 0;
buildOrkutActivitypersonResourceName() {
  var o = new api.OrkutActivitypersonResourceName();
  buildCounterOrkutActivitypersonResourceName++;
  if (buildCounterOrkutActivitypersonResourceName < 3) {
    o.familyName = "foo";
    o.givenName = "foo";
  }
  buildCounterOrkutActivitypersonResourceName--;
  return o;
}

checkOrkutActivitypersonResourceName(api.OrkutActivitypersonResourceName o) {
  buildCounterOrkutActivitypersonResourceName++;
  if (buildCounterOrkutActivitypersonResourceName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterOrkutActivitypersonResourceName--;
}

core.int buildCounterOrkutActivitypersonResource = 0;
buildOrkutActivitypersonResource() {
  var o = new api.OrkutActivitypersonResource();
  buildCounterOrkutActivitypersonResource++;
  if (buildCounterOrkutActivitypersonResource < 3) {
    o.birthday = "foo";
    o.gender = "foo";
    o.id = "foo";
    o.image = buildOrkutActivitypersonResourceImage();
    o.name = buildOrkutActivitypersonResourceName();
    o.url = "foo";
  }
  buildCounterOrkutActivitypersonResource--;
  return o;
}

checkOrkutActivitypersonResource(api.OrkutActivitypersonResource o) {
  buildCounterOrkutActivitypersonResource++;
  if (buildCounterOrkutActivitypersonResource < 3) {
    unittest.expect(o.birthday, unittest.equals('foo'));
    unittest.expect(o.gender, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkOrkutActivitypersonResourceImage(o.image);
    checkOrkutActivitypersonResourceName(o.name);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOrkutActivitypersonResource--;
}

core.int buildCounterOrkutAuthorResourceImage = 0;
buildOrkutAuthorResourceImage() {
  var o = new api.OrkutAuthorResourceImage();
  buildCounterOrkutAuthorResourceImage++;
  if (buildCounterOrkutAuthorResourceImage < 3) {
    o.url = "foo";
  }
  buildCounterOrkutAuthorResourceImage--;
  return o;
}

checkOrkutAuthorResourceImage(api.OrkutAuthorResourceImage o) {
  buildCounterOrkutAuthorResourceImage++;
  if (buildCounterOrkutAuthorResourceImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOrkutAuthorResourceImage--;
}

core.int buildCounterOrkutAuthorResource = 0;
buildOrkutAuthorResource() {
  var o = new api.OrkutAuthorResource();
  buildCounterOrkutAuthorResource++;
  if (buildCounterOrkutAuthorResource < 3) {
    o.displayName = "foo";
    o.id = "foo";
    o.image = buildOrkutAuthorResourceImage();
    o.url = "foo";
  }
  buildCounterOrkutAuthorResource--;
  return o;
}

checkOrkutAuthorResource(api.OrkutAuthorResource o) {
  buildCounterOrkutAuthorResource++;
  if (buildCounterOrkutAuthorResource < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkOrkutAuthorResourceImage(o.image);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOrkutAuthorResource--;
}

core.int buildCounterOrkutCommunitypolloptionResourceImage = 0;
buildOrkutCommunitypolloptionResourceImage() {
  var o = new api.OrkutCommunitypolloptionResourceImage();
  buildCounterOrkutCommunitypolloptionResourceImage++;
  if (buildCounterOrkutCommunitypolloptionResourceImage < 3) {
    o.url = "foo";
  }
  buildCounterOrkutCommunitypolloptionResourceImage--;
  return o;
}

checkOrkutCommunitypolloptionResourceImage(api.OrkutCommunitypolloptionResourceImage o) {
  buildCounterOrkutCommunitypolloptionResourceImage++;
  if (buildCounterOrkutCommunitypolloptionResourceImage < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOrkutCommunitypolloptionResourceImage--;
}

core.int buildCounterOrkutCommunitypolloptionResource = 0;
buildOrkutCommunitypolloptionResource() {
  var o = new api.OrkutCommunitypolloptionResource();
  buildCounterOrkutCommunitypolloptionResource++;
  if (buildCounterOrkutCommunitypolloptionResource < 3) {
    o.description = "foo";
    o.image = buildOrkutCommunitypolloptionResourceImage();
    o.numberOfVotes = 42;
    o.optionId = 42;
  }
  buildCounterOrkutCommunitypolloptionResource--;
  return o;
}

checkOrkutCommunitypolloptionResource(api.OrkutCommunitypolloptionResource o) {
  buildCounterOrkutCommunitypolloptionResource++;
  if (buildCounterOrkutCommunitypolloptionResource < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkOrkutCommunitypolloptionResourceImage(o.image);
    unittest.expect(o.numberOfVotes, unittest.equals(42));
    unittest.expect(o.optionId, unittest.equals(42));
  }
  buildCounterOrkutCommunitypolloptionResource--;
}

core.int buildCounterOrkutCounterResource = 0;
buildOrkutCounterResource() {
  var o = new api.OrkutCounterResource();
  buildCounterOrkutCounterResource++;
  if (buildCounterOrkutCounterResource < 3) {
    o.link = buildOrkutLinkResource();
    o.name = "foo";
    o.total = 42;
  }
  buildCounterOrkutCounterResource--;
  return o;
}

checkOrkutCounterResource(api.OrkutCounterResource o) {
  buildCounterOrkutCounterResource++;
  if (buildCounterOrkutCounterResource < 3) {
    checkOrkutLinkResource(o.link);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.total, unittest.equals(42));
  }
  buildCounterOrkutCounterResource--;
}

core.int buildCounterOrkutLinkResource = 0;
buildOrkutLinkResource() {
  var o = new api.OrkutLinkResource();
  buildCounterOrkutLinkResource++;
  if (buildCounterOrkutLinkResource < 3) {
    o.href = "foo";
    o.rel = "foo";
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterOrkutLinkResource--;
  return o;
}

checkOrkutLinkResource(api.OrkutLinkResource o) {
  buildCounterOrkutLinkResource++;
  if (buildCounterOrkutLinkResource < 3) {
    unittest.expect(o.href, unittest.equals('foo'));
    unittest.expect(o.rel, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrkutLinkResource--;
}

buildUnnamed166() {
  var o = new core.List<api.OrkutLinkResource>();
  o.add(buildOrkutLinkResource());
  o.add(buildOrkutLinkResource());
  return o;
}

checkUnnamed166(core.List<api.OrkutLinkResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrkutLinkResource(o[0]);
  checkOrkutLinkResource(o[1]);
}

core.int buildCounterVisibility = 0;
buildVisibility() {
  var o = new api.Visibility();
  buildCounterVisibility++;
  if (buildCounterVisibility < 3) {
    o.kind = "foo";
    o.links = buildUnnamed166();
    o.visibility = "foo";
  }
  buildCounterVisibility--;
  return o;
}

checkVisibility(api.Visibility o) {
  buildCounterVisibility++;
  if (buildCounterVisibility < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed166(o.links);
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterVisibility--;
}


main() {
  unittest.group("obj-schema-AclItems", () {
    unittest.test("to-json--from-json", () {
      var o = buildAclItems();
      var od = new api.AclItems.fromJson(o.toJson());
      checkAclItems(od);
    });
  });


  unittest.group("obj-schema-Acl", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcl();
      var od = new api.Acl.fromJson(o.toJson());
      checkAcl(od);
    });
  });


  unittest.group("obj-schema-ActivityObjectReplies", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObjectReplies();
      var od = new api.ActivityObjectReplies.fromJson(o.toJson());
      checkActivityObjectReplies(od);
    });
  });


  unittest.group("obj-schema-ActivityObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityObject();
      var od = new api.ActivityObject.fromJson(o.toJson());
      checkActivityObject(od);
    });
  });


  unittest.group("obj-schema-Activity", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivity();
      var od = new api.Activity.fromJson(o.toJson());
      checkActivity(od);
    });
  });


  unittest.group("obj-schema-ActivityList", () {
    unittest.test("to-json--from-json", () {
      var o = buildActivityList();
      var od = new api.ActivityList.fromJson(o.toJson());
      checkActivityList(od);
    });
  });


  unittest.group("obj-schema-Badge", () {
    unittest.test("to-json--from-json", () {
      var o = buildBadge();
      var od = new api.Badge.fromJson(o.toJson());
      checkBadge(od);
    });
  });


  unittest.group("obj-schema-BadgeList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBadgeList();
      var od = new api.BadgeList.fromJson(o.toJson());
      checkBadgeList(od);
    });
  });


  unittest.group("obj-schema-CommentInReplyTo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentInReplyTo();
      var od = new api.CommentInReplyTo.fromJson(o.toJson());
      checkCommentInReplyTo(od);
    });
  });


  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });


  unittest.group("obj-schema-CommentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommentList();
      var od = new api.CommentList.fromJson(o.toJson());
      checkCommentList(od);
    });
  });


  unittest.group("obj-schema-Community", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunity();
      var od = new api.Community.fromJson(o.toJson());
      checkCommunity(od);
    });
  });


  unittest.group("obj-schema-CommunityList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityList();
      var od = new api.CommunityList.fromJson(o.toJson());
      checkCommunityList(od);
    });
  });


  unittest.group("obj-schema-CommunityMembers", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityMembers();
      var od = new api.CommunityMembers.fromJson(o.toJson());
      checkCommunityMembers(od);
    });
  });


  unittest.group("obj-schema-CommunityMembersList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityMembersList();
      var od = new api.CommunityMembersList.fromJson(o.toJson());
      checkCommunityMembersList(od);
    });
  });


  unittest.group("obj-schema-CommunityMembershipStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityMembershipStatus();
      var od = new api.CommunityMembershipStatus.fromJson(o.toJson());
      checkCommunityMembershipStatus(od);
    });
  });


  unittest.group("obj-schema-CommunityMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityMessage();
      var od = new api.CommunityMessage.fromJson(o.toJson());
      checkCommunityMessage(od);
    });
  });


  unittest.group("obj-schema-CommunityMessageList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityMessageList();
      var od = new api.CommunityMessageList.fromJson(o.toJson());
      checkCommunityMessageList(od);
    });
  });


  unittest.group("obj-schema-CommunityPollImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPollImage();
      var od = new api.CommunityPollImage.fromJson(o.toJson());
      checkCommunityPollImage(od);
    });
  });


  unittest.group("obj-schema-CommunityPoll", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPoll();
      var od = new api.CommunityPoll.fromJson(o.toJson());
      checkCommunityPoll(od);
    });
  });


  unittest.group("obj-schema-CommunityPollComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPollComment();
      var od = new api.CommunityPollComment.fromJson(o.toJson());
      checkCommunityPollComment(od);
    });
  });


  unittest.group("obj-schema-CommunityPollCommentList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPollCommentList();
      var od = new api.CommunityPollCommentList.fromJson(o.toJson());
      checkCommunityPollCommentList(od);
    });
  });


  unittest.group("obj-schema-CommunityPollList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPollList();
      var od = new api.CommunityPollList.fromJson(o.toJson());
      checkCommunityPollList(od);
    });
  });


  unittest.group("obj-schema-CommunityPollVote", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityPollVote();
      var od = new api.CommunityPollVote.fromJson(o.toJson());
      checkCommunityPollVote(od);
    });
  });


  unittest.group("obj-schema-CommunityTopic", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityTopic();
      var od = new api.CommunityTopic.fromJson(o.toJson());
      checkCommunityTopic(od);
    });
  });


  unittest.group("obj-schema-CommunityTopicList", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommunityTopicList();
      var od = new api.CommunityTopicList.fromJson(o.toJson());
      checkCommunityTopicList(od);
    });
  });


  unittest.group("obj-schema-Counters", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounters();
      var od = new api.Counters.fromJson(o.toJson());
      checkCounters(od);
    });
  });


  unittest.group("obj-schema-OrkutActivityobjectsResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutActivityobjectsResource();
      var od = new api.OrkutActivityobjectsResource.fromJson(o.toJson());
      checkOrkutActivityobjectsResource(od);
    });
  });


  unittest.group("obj-schema-OrkutActivitypersonResourceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutActivitypersonResourceImage();
      var od = new api.OrkutActivitypersonResourceImage.fromJson(o.toJson());
      checkOrkutActivitypersonResourceImage(od);
    });
  });


  unittest.group("obj-schema-OrkutActivitypersonResourceName", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutActivitypersonResourceName();
      var od = new api.OrkutActivitypersonResourceName.fromJson(o.toJson());
      checkOrkutActivitypersonResourceName(od);
    });
  });


  unittest.group("obj-schema-OrkutActivitypersonResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutActivitypersonResource();
      var od = new api.OrkutActivitypersonResource.fromJson(o.toJson());
      checkOrkutActivitypersonResource(od);
    });
  });


  unittest.group("obj-schema-OrkutAuthorResourceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutAuthorResourceImage();
      var od = new api.OrkutAuthorResourceImage.fromJson(o.toJson());
      checkOrkutAuthorResourceImage(od);
    });
  });


  unittest.group("obj-schema-OrkutAuthorResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutAuthorResource();
      var od = new api.OrkutAuthorResource.fromJson(o.toJson());
      checkOrkutAuthorResource(od);
    });
  });


  unittest.group("obj-schema-OrkutCommunitypolloptionResourceImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutCommunitypolloptionResourceImage();
      var od = new api.OrkutCommunitypolloptionResourceImage.fromJson(o.toJson());
      checkOrkutCommunitypolloptionResourceImage(od);
    });
  });


  unittest.group("obj-schema-OrkutCommunitypolloptionResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutCommunitypolloptionResource();
      var od = new api.OrkutCommunitypolloptionResource.fromJson(o.toJson());
      checkOrkutCommunitypolloptionResource(od);
    });
  });


  unittest.group("obj-schema-OrkutCounterResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutCounterResource();
      var od = new api.OrkutCounterResource.fromJson(o.toJson());
      checkOrkutCounterResource(od);
    });
  });


  unittest.group("obj-schema-OrkutLinkResource", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrkutLinkResource();
      var od = new api.OrkutLinkResource.fromJson(o.toJson());
      checkOrkutLinkResource(od);
    });
  });


  unittest.group("obj-schema-Visibility", () {
    unittest.test("to-json--from-json", () {
      var o = buildVisibility();
      var od = new api.Visibility.fromJson(o.toJson());
      checkVisibility(od);
    });
  });


  unittest.group("resource-AclResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.AclResourceApi res = new api.OrkutApi(mock).acl;
      var arg_activityId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/acl/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("/acl/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_activityId, arg_userId).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-ActivitiesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ActivitiesResourceApi res = new api.OrkutApi(mock).activities;
      var arg_activityId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_activityId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ActivitiesResourceApi res = new api.OrkutApi(mock).activities;
      var arg_userId = "foo";
      var arg_collection = "foo";
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/activities/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/activities/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_collection"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildActivityList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, arg_collection, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ActivityList response) {
        checkActivityList(response);
      })));
    });

  });


  unittest.group("resource-ActivityVisibilityResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ActivityVisibilityResourceApi res = new api.OrkutApi(mock).activityVisibility;
      var arg_activityId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/visibility", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/visibility"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVisibility());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_activityId).then(unittest.expectAsync(((api.Visibility response) {
        checkVisibility(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.ActivityVisibilityResourceApi res = new api.OrkutApi(mock).activityVisibility;
      var arg_request = buildVisibility();
      var arg_activityId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Visibility.fromJson(json);
        checkVisibility(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/visibility", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/visibility"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVisibility());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_activityId).then(unittest.expectAsync(((api.Visibility response) {
        checkVisibility(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.ActivityVisibilityResourceApi res = new api.OrkutApi(mock).activityVisibility;
      var arg_request = buildVisibility();
      var arg_activityId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Visibility.fromJson(json);
        checkVisibility(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/visibility", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/visibility"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVisibility());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_activityId).then(unittest.expectAsync(((api.Visibility response) {
        checkVisibility(response);
      })));
    });

  });


  unittest.group("resource-BadgesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.BadgesResourceApi res = new api.OrkutApi(mock).badges;
      var arg_userId = "foo";
      var arg_badgeId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/badges/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/badges/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_badgeId"));

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
        var resp = convert.JSON.encode(buildBadge());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_badgeId).then(unittest.expectAsync(((api.Badge response) {
        checkBadge(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.BadgesResourceApi res = new api.OrkutApi(mock).badges;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/badges", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/badges"));
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


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBadgeList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId).then(unittest.expectAsync(((api.BadgeList response) {
        checkBadgeList(response);
      })));
    });

  });


  unittest.group("resource-CommentsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CommentsResourceApi res = new api.OrkutApi(mock).comments;
      var arg_commentId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("comments/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_commentId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CommentsResourceApi res = new api.OrkutApi(mock).comments;
      var arg_commentId = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("comments/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_commentId"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_commentId, hl: arg_hl).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommentsResourceApi res = new api.OrkutApi(mock).comments;
      var arg_request = buildComment();
      var arg_activityId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Comment.fromJson(json);
        checkComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildComment());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_activityId).then(unittest.expectAsync(((api.Comment response) {
        checkComment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommentsResourceApi res = new api.OrkutApi(mock).comments;
      var arg_activityId = "foo";
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("activities/"));
        pathOffset += 11;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_activityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommentList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_activityId, hl: arg_hl, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommentList response) {
        checkCommentList(response);
      })));
    });

  });


  unittest.group("resource-CommunitiesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CommunitiesResourceApi res = new api.OrkutApi(mock).communities;
      var arg_communityId = 42;
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunity());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_communityId, hl: arg_hl).then(unittest.expectAsync(((api.Community response) {
        checkCommunity(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunitiesResourceApi res = new api.OrkutApi(mock).communities;
      var arg_userId = "foo";
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/communities", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/communities"));
        pathOffset += 12;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, hl: arg_hl, maxResults: arg_maxResults, orderBy: arg_orderBy).then(unittest.expectAsync(((api.CommunityList response) {
        checkCommunityList(response);
      })));
    });

  });


  unittest.group("resource-CommunityFollowResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityFollowResourceApi res = new api.OrkutApi(mock).communityFollow;
      var arg_communityId = 42;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/followers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/followers/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_communityId, arg_userId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityFollowResourceApi res = new api.OrkutApi(mock).communityFollow;
      var arg_communityId = 42;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/followers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/followers/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.JSON.encode(buildCommunityMembers());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_communityId, arg_userId).then(unittest.expectAsync(((api.CommunityMembers response) {
        checkCommunityMembers(response);
      })));
    });

  });


  unittest.group("resource-CommunityMembersResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMembersResourceApi res = new api.OrkutApi(mock).communityMembers;
      var arg_communityId = 42;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_communityId, arg_userId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMembersResourceApi res = new api.OrkutApi(mock).communityMembers;
      var arg_communityId = 42;
      var arg_userId = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityMembers());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_communityId, arg_userId, hl: arg_hl).then(unittest.expectAsync(((api.CommunityMembers response) {
        checkCommunityMembers(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMembersResourceApi res = new api.OrkutApi(mock).communityMembers;
      var arg_communityId = 42;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/members/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/members/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

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
        var resp = convert.JSON.encode(buildCommunityMembers());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_communityId, arg_userId).then(unittest.expectAsync(((api.CommunityMembers response) {
        checkCommunityMembers(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMembersResourceApi res = new api.OrkutApi(mock).communityMembers;
      var arg_communityId = 42;
      var arg_friendsOnly = true;
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/members", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/members"));
        pathOffset += 8;

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
        unittest.expect(queryMap["friendsOnly"].first, unittest.equals("$arg_friendsOnly"));
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityMembersList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, friendsOnly: arg_friendsOnly, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommunityMembersList response) {
        checkCommunityMembersList(response);
      })));
    });

  });


  unittest.group("resource-CommunityMessagesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMessagesResourceApi res = new api.OrkutApi(mock).communityMessages;
      var arg_communityId = 42;
      var arg_topicId = "foo";
      var arg_messageId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/topics/"));
        pathOffset += 8;
        index = path.indexOf("/messages/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_topicId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/messages/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_messageId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_communityId, arg_topicId, arg_messageId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMessagesResourceApi res = new api.OrkutApi(mock).communityMessages;
      var arg_request = buildCommunityMessage();
      var arg_communityId = 42;
      var arg_topicId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommunityMessage.fromJson(json);
        checkCommunityMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/topics/"));
        pathOffset += 8;
        index = path.indexOf("/messages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_topicId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/messages"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildCommunityMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_communityId, arg_topicId).then(unittest.expectAsync(((api.CommunityMessage response) {
        checkCommunityMessage(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityMessagesResourceApi res = new api.OrkutApi(mock).communityMessages;
      var arg_communityId = 42;
      var arg_topicId = "foo";
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/topics/"));
        pathOffset += 8;
        index = path.indexOf("/messages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_topicId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/messages"));
        pathOffset += 9;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityMessageList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, arg_topicId, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommunityMessageList response) {
        checkCommunityMessageList(response);
      })));
    });

  });


  unittest.group("resource-CommunityPollCommentsResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityPollCommentsResourceApi res = new api.OrkutApi(mock).communityPollComments;
      var arg_request = buildCommunityPollComment();
      var arg_communityId = 42;
      var arg_pollId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommunityPollComment.fromJson(json);
        checkCommunityPollComment(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/polls/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/polls/"));
        pathOffset += 7;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pollId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildCommunityPollComment());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_communityId, arg_pollId).then(unittest.expectAsync(((api.CommunityPollComment response) {
        checkCommunityPollComment(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityPollCommentsResourceApi res = new api.OrkutApi(mock).communityPollComments;
      var arg_communityId = 42;
      var arg_pollId = "foo";
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/polls/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/polls/"));
        pathOffset += 7;
        index = path.indexOf("/comments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pollId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/comments"));
        pathOffset += 9;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityPollCommentList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, arg_pollId, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommunityPollCommentList response) {
        checkCommunityPollCommentList(response);
      })));
    });

  });


  unittest.group("resource-CommunityPollVotesResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityPollVotesResourceApi res = new api.OrkutApi(mock).communityPollVotes;
      var arg_request = buildCommunityPollVote();
      var arg_communityId = 42;
      var arg_pollId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommunityPollVote.fromJson(json);
        checkCommunityPollVote(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/polls/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/polls/"));
        pathOffset += 7;
        index = path.indexOf("/votes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_pollId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/votes"));
        pathOffset += 6;

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
        var resp = convert.JSON.encode(buildCommunityPollVote());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_communityId, arg_pollId).then(unittest.expectAsync(((api.CommunityPollVote response) {
        checkCommunityPollVote(response);
      })));
    });

  });


  unittest.group("resource-CommunityPollsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityPollsResourceApi res = new api.OrkutApi(mock).communityPolls;
      var arg_communityId = 42;
      var arg_pollId = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/polls/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/polls/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_pollId"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityPoll());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_communityId, arg_pollId, hl: arg_hl).then(unittest.expectAsync(((api.CommunityPoll response) {
        checkCommunityPoll(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityPollsResourceApi res = new api.OrkutApi(mock).communityPolls;
      var arg_communityId = 42;
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/polls", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/polls"));
        pathOffset += 6;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityPollList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommunityPollList response) {
        checkCommunityPollList(response);
      })));
    });

  });


  unittest.group("resource-CommunityRelatedResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityRelatedResourceApi res = new api.OrkutApi(mock).communityRelated;
      var arg_communityId = 42;
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/related", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/related"));
        pathOffset += 8;

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, hl: arg_hl).then(unittest.expectAsync(((api.CommunityList response) {
        checkCommunityList(response);
      })));
    });

  });


  unittest.group("resource-CommunityTopicsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityTopicsResourceApi res = new api.OrkutApi(mock).communityTopics;
      var arg_communityId = 42;
      var arg_topicId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/topics/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_topicId"));

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
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_communityId, arg_topicId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityTopicsResourceApi res = new api.OrkutApi(mock).communityTopics;
      var arg_communityId = 42;
      var arg_topicId = "foo";
      var arg_hl = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/topics/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_topicId"));

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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityTopic());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_communityId, arg_topicId, hl: arg_hl).then(unittest.expectAsync(((api.CommunityTopic response) {
        checkCommunityTopic(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityTopicsResourceApi res = new api.OrkutApi(mock).communityTopics;
      var arg_request = buildCommunityTopic();
      var arg_communityId = 42;
      var arg_isShout = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CommunityTopic.fromJson(json);
        checkCommunityTopic(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/topics"));
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
        unittest.expect(queryMap["isShout"].first, unittest.equals("$arg_isShout"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityTopic());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_communityId, isShout: arg_isShout).then(unittest.expectAsync(((api.CommunityTopic response) {
        checkCommunityTopic(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CommunityTopicsResourceApi res = new api.OrkutApi(mock).communityTopics;
      var arg_communityId = 42;
      var arg_hl = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("communities/"));
        pathOffset += 12;
        index = path.indexOf("/topics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_communityId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/topics"));
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
        unittest.expect(queryMap["hl"].first, unittest.equals(arg_hl));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCommunityTopicList());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_communityId, hl: arg_hl, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.CommunityTopicList response) {
        checkCommunityTopicList(response);
      })));
    });

  });


  unittest.group("resource-CountersResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.CountersResourceApi res = new api.OrkutApi(mock).counters;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("people/"));
        pathOffset += 7;
        index = path.indexOf("/counters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_userId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/counters"));
        pathOffset += 9;

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
        var resp = convert.JSON.encode(buildCounters());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId).then(unittest.expectAsync(((api.Counters response) {
        checkCounters(response);
      })));
    });

  });


  unittest.group("resource-ScrapsResourceApi", () {
    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.ScrapsResourceApi res = new api.OrkutApi(mock).scraps;
      var arg_request = buildActivity();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Activity.fromJson(json);
        checkActivity(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/orkut/v2/"));
        pathOffset += 10;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("activities/scraps"));
        pathOffset += 17;

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
        var resp = convert.JSON.encode(buildActivity());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request).then(unittest.expectAsync(((api.Activity response) {
        checkActivity(response);
      })));
    });

  });


}

