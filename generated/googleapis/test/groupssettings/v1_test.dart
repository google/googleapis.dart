library googleapis.groupssettings.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/groupssettings/v1.dart' as api;

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

core.int buildCounterGroups = 0;
buildGroups() {
  var o = new api.Groups();
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    o.allowExternalMembers = "foo";
    o.allowGoogleCommunication = "foo";
    o.allowWebPosting = "foo";
    o.archiveOnly = "foo";
    o.customFooterText = "foo";
    o.customReplyTo = "foo";
    o.customRolesEnabledForSettingsToBeMerged = "foo";
    o.defaultMessageDenyNotificationText = "foo";
    o.description = "foo";
    o.email = "foo";
    o.enableCollaborativeInbox = "foo";
    o.favoriteRepliesOnTop = "foo";
    o.includeCustomFooter = "foo";
    o.includeInGlobalAddressList = "foo";
    o.isArchived = "foo";
    o.kind = "foo";
    o.maxMessageBytes = 42;
    o.membersCanPostAsTheGroup = "foo";
    o.messageDisplayFont = "foo";
    o.messageModerationLevel = "foo";
    o.name = "foo";
    o.primaryLanguage = "foo";
    o.replyTo = "foo";
    o.sendMessageDenyNotification = "foo";
    o.showInGroupDirectory = "foo";
    o.spamModerationLevel = "foo";
    o.whoCanAdd = "foo";
    o.whoCanAddReferences = "foo";
    o.whoCanApproveMembers = "foo";
    o.whoCanApproveMessages = "foo";
    o.whoCanAssignTopics = "foo";
    o.whoCanAssistContent = "foo";
    o.whoCanBanUsers = "foo";
    o.whoCanContactOwner = "foo";
    o.whoCanDeleteAnyPost = "foo";
    o.whoCanDeleteTopics = "foo";
    o.whoCanDiscoverGroup = "foo";
    o.whoCanEnterFreeFormTags = "foo";
    o.whoCanHideAbuse = "foo";
    o.whoCanInvite = "foo";
    o.whoCanJoin = "foo";
    o.whoCanLeaveGroup = "foo";
    o.whoCanLockTopics = "foo";
    o.whoCanMakeTopicsSticky = "foo";
    o.whoCanMarkDuplicate = "foo";
    o.whoCanMarkFavoriteReplyOnAnyTopic = "foo";
    o.whoCanMarkFavoriteReplyOnOwnTopic = "foo";
    o.whoCanMarkNoResponseNeeded = "foo";
    o.whoCanModerateContent = "foo";
    o.whoCanModerateMembers = "foo";
    o.whoCanModifyMembers = "foo";
    o.whoCanModifyTagsAndCategories = "foo";
    o.whoCanMoveTopicsIn = "foo";
    o.whoCanMoveTopicsOut = "foo";
    o.whoCanPostAnnouncements = "foo";
    o.whoCanPostMessage = "foo";
    o.whoCanTakeTopics = "foo";
    o.whoCanUnassignTopic = "foo";
    o.whoCanUnmarkFavoriteReplyOnAnyTopic = "foo";
    o.whoCanViewGroup = "foo";
    o.whoCanViewMembership = "foo";
  }
  buildCounterGroups--;
  return o;
}

checkGroups(api.Groups o) {
  buildCounterGroups++;
  if (buildCounterGroups < 3) {
    unittest.expect(o.allowExternalMembers, unittest.equals('foo'));
    unittest.expect(o.allowGoogleCommunication, unittest.equals('foo'));
    unittest.expect(o.allowWebPosting, unittest.equals('foo'));
    unittest.expect(o.archiveOnly, unittest.equals('foo'));
    unittest.expect(o.customFooterText, unittest.equals('foo'));
    unittest.expect(o.customReplyTo, unittest.equals('foo'));
    unittest.expect(
        o.customRolesEnabledForSettingsToBeMerged, unittest.equals('foo'));
    unittest.expect(
        o.defaultMessageDenyNotificationText, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.enableCollaborativeInbox, unittest.equals('foo'));
    unittest.expect(o.favoriteRepliesOnTop, unittest.equals('foo'));
    unittest.expect(o.includeCustomFooter, unittest.equals('foo'));
    unittest.expect(o.includeInGlobalAddressList, unittest.equals('foo'));
    unittest.expect(o.isArchived, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maxMessageBytes, unittest.equals(42));
    unittest.expect(o.membersCanPostAsTheGroup, unittest.equals('foo'));
    unittest.expect(o.messageDisplayFont, unittest.equals('foo'));
    unittest.expect(o.messageModerationLevel, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryLanguage, unittest.equals('foo'));
    unittest.expect(o.replyTo, unittest.equals('foo'));
    unittest.expect(o.sendMessageDenyNotification, unittest.equals('foo'));
    unittest.expect(o.showInGroupDirectory, unittest.equals('foo'));
    unittest.expect(o.spamModerationLevel, unittest.equals('foo'));
    unittest.expect(o.whoCanAdd, unittest.equals('foo'));
    unittest.expect(o.whoCanAddReferences, unittest.equals('foo'));
    unittest.expect(o.whoCanApproveMembers, unittest.equals('foo'));
    unittest.expect(o.whoCanApproveMessages, unittest.equals('foo'));
    unittest.expect(o.whoCanAssignTopics, unittest.equals('foo'));
    unittest.expect(o.whoCanAssistContent, unittest.equals('foo'));
    unittest.expect(o.whoCanBanUsers, unittest.equals('foo'));
    unittest.expect(o.whoCanContactOwner, unittest.equals('foo'));
    unittest.expect(o.whoCanDeleteAnyPost, unittest.equals('foo'));
    unittest.expect(o.whoCanDeleteTopics, unittest.equals('foo'));
    unittest.expect(o.whoCanDiscoverGroup, unittest.equals('foo'));
    unittest.expect(o.whoCanEnterFreeFormTags, unittest.equals('foo'));
    unittest.expect(o.whoCanHideAbuse, unittest.equals('foo'));
    unittest.expect(o.whoCanInvite, unittest.equals('foo'));
    unittest.expect(o.whoCanJoin, unittest.equals('foo'));
    unittest.expect(o.whoCanLeaveGroup, unittest.equals('foo'));
    unittest.expect(o.whoCanLockTopics, unittest.equals('foo'));
    unittest.expect(o.whoCanMakeTopicsSticky, unittest.equals('foo'));
    unittest.expect(o.whoCanMarkDuplicate, unittest.equals('foo'));
    unittest.expect(
        o.whoCanMarkFavoriteReplyOnAnyTopic, unittest.equals('foo'));
    unittest.expect(
        o.whoCanMarkFavoriteReplyOnOwnTopic, unittest.equals('foo'));
    unittest.expect(o.whoCanMarkNoResponseNeeded, unittest.equals('foo'));
    unittest.expect(o.whoCanModerateContent, unittest.equals('foo'));
    unittest.expect(o.whoCanModerateMembers, unittest.equals('foo'));
    unittest.expect(o.whoCanModifyMembers, unittest.equals('foo'));
    unittest.expect(o.whoCanModifyTagsAndCategories, unittest.equals('foo'));
    unittest.expect(o.whoCanMoveTopicsIn, unittest.equals('foo'));
    unittest.expect(o.whoCanMoveTopicsOut, unittest.equals('foo'));
    unittest.expect(o.whoCanPostAnnouncements, unittest.equals('foo'));
    unittest.expect(o.whoCanPostMessage, unittest.equals('foo'));
    unittest.expect(o.whoCanTakeTopics, unittest.equals('foo'));
    unittest.expect(o.whoCanUnassignTopic, unittest.equals('foo'));
    unittest.expect(
        o.whoCanUnmarkFavoriteReplyOnAnyTopic, unittest.equals('foo'));
    unittest.expect(o.whoCanViewGroup, unittest.equals('foo'));
    unittest.expect(o.whoCanViewMembership, unittest.equals('foo'));
  }
  buildCounterGroups--;
}

main() {
  unittest.group("obj-schema-Groups", () {
    unittest.test("to-json--from-json", () {
      var o = buildGroups();
      var od = new api.Groups.fromJson(o.toJson());
      checkGroups(od);
    });
  });

  unittest.group("resource-GroupsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.GroupssettingsApi(mock).groups;
      var arg_groupUniqueId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildGroups());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_groupUniqueId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroups(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.GroupssettingsApi(mock).groups;
      var arg_request = buildGroups();
      var arg_groupUniqueId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Groups.fromJson(json);
        checkGroups(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildGroups());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_groupUniqueId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroups(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.GroupsResourceApi res = new api.GroupssettingsApi(mock).groups;
      var arg_request = buildGroups();
      var arg_groupUniqueId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Groups.fromJson(json);
        checkGroups(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildGroups());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_groupUniqueId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGroups(response);
      })));
    });
  });
}
