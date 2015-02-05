library googleapis.gmail.v1.test;

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

import 'package:googleapis/gmail/v1.dart' as api;



core.int buildCounterDraft = 0;
buildDraft() {
  var o = new api.Draft();
  buildCounterDraft++;
  if (buildCounterDraft < 3) {
    o.id = "foo";
    o.message = buildMessage();
  }
  buildCounterDraft--;
  return o;
}

checkDraft(api.Draft o) {
  buildCounterDraft++;
  if (buildCounterDraft < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkMessage(o.message);
  }
  buildCounterDraft--;
}

buildUnnamed1135() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed1135(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterHistory = 0;
buildHistory() {
  var o = new api.History();
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    o.id = "foo";
    o.messages = buildUnnamed1135();
  }
  buildCounterHistory--;
  return o;
}

checkHistory(api.History o) {
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1135(o.messages);
  }
  buildCounterHistory--;
}

core.int buildCounterLabel = 0;
buildLabel() {
  var o = new api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.id = "foo";
    o.labelListVisibility = "foo";
    o.messageListVisibility = "foo";
    o.messagesTotal = 42;
    o.messagesUnread = 42;
    o.name = "foo";
    o.threadsTotal = 42;
    o.threadsUnread = 42;
    o.type = "foo";
  }
  buildCounterLabel--;
  return o;
}

checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.labelListVisibility, unittest.equals('foo'));
    unittest.expect(o.messageListVisibility, unittest.equals('foo'));
    unittest.expect(o.messagesTotal, unittest.equals(42));
    unittest.expect(o.messagesUnread, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.threadsTotal, unittest.equals(42));
    unittest.expect(o.threadsUnread, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLabel--;
}

buildUnnamed1136() {
  var o = new core.List<api.Draft>();
  o.add(buildDraft());
  o.add(buildDraft());
  return o;
}

checkUnnamed1136(core.List<api.Draft> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDraft(o[0]);
  checkDraft(o[1]);
}

core.int buildCounterListDraftsResponse = 0;
buildListDraftsResponse() {
  var o = new api.ListDraftsResponse();
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    o.drafts = buildUnnamed1136();
    o.nextPageToken = "foo";
    o.resultSizeEstimate = 42;
  }
  buildCounterListDraftsResponse--;
  return o;
}

checkListDraftsResponse(api.ListDraftsResponse o) {
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    checkUnnamed1136(o.drafts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
  }
  buildCounterListDraftsResponse--;
}

buildUnnamed1137() {
  var o = new core.List<api.History>();
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

checkUnnamed1137(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoryResponse = 0;
buildListHistoryResponse() {
  var o = new api.ListHistoryResponse();
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    o.history = buildUnnamed1137();
    o.historyId = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterListHistoryResponse--;
  return o;
}

checkListHistoryResponse(api.ListHistoryResponse o) {
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    checkUnnamed1137(o.history);
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHistoryResponse--;
}

buildUnnamed1138() {
  var o = new core.List<api.Label>();
  o.add(buildLabel());
  o.add(buildLabel());
  return o;
}

checkUnnamed1138(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterListLabelsResponse = 0;
buildListLabelsResponse() {
  var o = new api.ListLabelsResponse();
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    o.labels = buildUnnamed1138();
  }
  buildCounterListLabelsResponse--;
  return o;
}

checkListLabelsResponse(api.ListLabelsResponse o) {
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    checkUnnamed1138(o.labels);
  }
  buildCounterListLabelsResponse--;
}

buildUnnamed1139() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed1139(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
buildListMessagesResponse() {
  var o = new api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.messages = buildUnnamed1139();
    o.nextPageToken = "foo";
    o.resultSizeEstimate = 42;
  }
  buildCounterListMessagesResponse--;
  return o;
}

checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed1139(o.messages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
  }
  buildCounterListMessagesResponse--;
}

buildUnnamed1140() {
  var o = new core.List<api.Thread>();
  o.add(buildThread());
  o.add(buildThread());
  return o;
}

checkUnnamed1140(core.List<api.Thread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThread(o[0]);
  checkThread(o[1]);
}

core.int buildCounterListThreadsResponse = 0;
buildListThreadsResponse() {
  var o = new api.ListThreadsResponse();
  buildCounterListThreadsResponse++;
  if (buildCounterListThreadsResponse < 3) {
    o.nextPageToken = "foo";
    o.resultSizeEstimate = 42;
    o.threads = buildUnnamed1140();
  }
  buildCounterListThreadsResponse--;
  return o;
}

checkListThreadsResponse(api.ListThreadsResponse o) {
  buildCounterListThreadsResponse++;
  if (buildCounterListThreadsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
    checkUnnamed1140(o.threads);
  }
  buildCounterListThreadsResponse--;
}

buildUnnamed1141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1141(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMessage = 0;
buildMessage() {
  var o = new api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.historyId = "foo";
    o.id = "foo";
    o.labelIds = buildUnnamed1141();
    o.payload = buildMessagePart();
    o.raw = "foo";
    o.sizeEstimate = 42;
    o.snippet = "foo";
    o.threadId = "foo";
  }
  buildCounterMessage--;
  return o;
}

checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1141(o.labelIds);
    checkMessagePart(o.payload);
    unittest.expect(o.raw, unittest.equals('foo'));
    unittest.expect(o.sizeEstimate, unittest.equals(42));
    unittest.expect(o.snippet, unittest.equals('foo'));
    unittest.expect(o.threadId, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

buildUnnamed1142() {
  var o = new core.List<api.MessagePartHeader>();
  o.add(buildMessagePartHeader());
  o.add(buildMessagePartHeader());
  return o;
}

checkUnnamed1142(core.List<api.MessagePartHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessagePartHeader(o[0]);
  checkMessagePartHeader(o[1]);
}

buildUnnamed1143() {
  var o = new core.List<api.MessagePart>();
  o.add(buildMessagePart());
  o.add(buildMessagePart());
  return o;
}

checkUnnamed1143(core.List<api.MessagePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessagePart(o[0]);
  checkMessagePart(o[1]);
}

core.int buildCounterMessagePart = 0;
buildMessagePart() {
  var o = new api.MessagePart();
  buildCounterMessagePart++;
  if (buildCounterMessagePart < 3) {
    o.body = buildMessagePartBody();
    o.filename = "foo";
    o.headers = buildUnnamed1142();
    o.mimeType = "foo";
    o.partId = "foo";
    o.parts = buildUnnamed1143();
  }
  buildCounterMessagePart--;
  return o;
}

checkMessagePart(api.MessagePart o) {
  buildCounterMessagePart++;
  if (buildCounterMessagePart < 3) {
    checkMessagePartBody(o.body);
    unittest.expect(o.filename, unittest.equals('foo'));
    checkUnnamed1142(o.headers);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.partId, unittest.equals('foo'));
    checkUnnamed1143(o.parts);
  }
  buildCounterMessagePart--;
}

core.int buildCounterMessagePartBody = 0;
buildMessagePartBody() {
  var o = new api.MessagePartBody();
  buildCounterMessagePartBody++;
  if (buildCounterMessagePartBody < 3) {
    o.attachmentId = "foo";
    o.data = "foo";
    o.size = 42;
  }
  buildCounterMessagePartBody--;
  return o;
}

checkMessagePartBody(api.MessagePartBody o) {
  buildCounterMessagePartBody++;
  if (buildCounterMessagePartBody < 3) {
    unittest.expect(o.attachmentId, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals(42));
  }
  buildCounterMessagePartBody--;
}

core.int buildCounterMessagePartHeader = 0;
buildMessagePartHeader() {
  var o = new api.MessagePartHeader();
  buildCounterMessagePartHeader++;
  if (buildCounterMessagePartHeader < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterMessagePartHeader--;
  return o;
}

checkMessagePartHeader(api.MessagePartHeader o) {
  buildCounterMessagePartHeader++;
  if (buildCounterMessagePartHeader < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMessagePartHeader--;
}

buildUnnamed1144() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1145() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyMessageRequest = 0;
buildModifyMessageRequest() {
  var o = new api.ModifyMessageRequest();
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    o.addLabelIds = buildUnnamed1144();
    o.removeLabelIds = buildUnnamed1145();
  }
  buildCounterModifyMessageRequest--;
  return o;
}

checkModifyMessageRequest(api.ModifyMessageRequest o) {
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    checkUnnamed1144(o.addLabelIds);
    checkUnnamed1145(o.removeLabelIds);
  }
  buildCounterModifyMessageRequest--;
}

buildUnnamed1146() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1147() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1147(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyThreadRequest = 0;
buildModifyThreadRequest() {
  var o = new api.ModifyThreadRequest();
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    o.addLabelIds = buildUnnamed1146();
    o.removeLabelIds = buildUnnamed1147();
  }
  buildCounterModifyThreadRequest--;
  return o;
}

checkModifyThreadRequest(api.ModifyThreadRequest o) {
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    checkUnnamed1146(o.addLabelIds);
    checkUnnamed1147(o.removeLabelIds);
  }
  buildCounterModifyThreadRequest--;
}

core.int buildCounterProfile = 0;
buildProfile() {
  var o = new api.Profile();
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    o.emailAddress = "foo";
    o.historyId = "foo";
    o.messagesTotal = 42;
    o.threadsTotal = 42;
  }
  buildCounterProfile--;
  return o;
}

checkProfile(api.Profile o) {
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.messagesTotal, unittest.equals(42));
    unittest.expect(o.threadsTotal, unittest.equals(42));
  }
  buildCounterProfile--;
}

buildUnnamed1148() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed1148(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterThread = 0;
buildThread() {
  var o = new api.Thread();
  buildCounterThread++;
  if (buildCounterThread < 3) {
    o.historyId = "foo";
    o.id = "foo";
    o.messages = buildUnnamed1148();
    o.snippet = "foo";
  }
  buildCounterThread--;
  return o;
}

checkThread(api.Thread o) {
  buildCounterThread++;
  if (buildCounterThread < 3) {
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1148(o.messages);
    unittest.expect(o.snippet, unittest.equals('foo'));
  }
  buildCounterThread--;
}

buildUnnamed1149() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1150() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1150(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1151() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1152() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1152(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-Draft", () {
    unittest.test("to-json--from-json", () {
      var o = buildDraft();
      var od = new api.Draft.fromJson(o.toJson());
      checkDraft(od);
    });
  });


  unittest.group("obj-schema-History", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistory();
      var od = new api.History.fromJson(o.toJson());
      checkHistory(od);
    });
  });


  unittest.group("obj-schema-Label", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabel();
      var od = new api.Label.fromJson(o.toJson());
      checkLabel(od);
    });
  });


  unittest.group("obj-schema-ListDraftsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDraftsResponse();
      var od = new api.ListDraftsResponse.fromJson(o.toJson());
      checkListDraftsResponse(od);
    });
  });


  unittest.group("obj-schema-ListHistoryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListHistoryResponse();
      var od = new api.ListHistoryResponse.fromJson(o.toJson());
      checkListHistoryResponse(od);
    });
  });


  unittest.group("obj-schema-ListLabelsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListLabelsResponse();
      var od = new api.ListLabelsResponse.fromJson(o.toJson());
      checkListLabelsResponse(od);
    });
  });


  unittest.group("obj-schema-ListMessagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMessagesResponse();
      var od = new api.ListMessagesResponse.fromJson(o.toJson());
      checkListMessagesResponse(od);
    });
  });


  unittest.group("obj-schema-ListThreadsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListThreadsResponse();
      var od = new api.ListThreadsResponse.fromJson(o.toJson());
      checkListThreadsResponse(od);
    });
  });


  unittest.group("obj-schema-Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessage();
      var od = new api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });


  unittest.group("obj-schema-MessagePart", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessagePart();
      var od = new api.MessagePart.fromJson(o.toJson());
      checkMessagePart(od);
    });
  });


  unittest.group("obj-schema-MessagePartBody", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessagePartBody();
      var od = new api.MessagePartBody.fromJson(o.toJson());
      checkMessagePartBody(od);
    });
  });


  unittest.group("obj-schema-MessagePartHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessagePartHeader();
      var od = new api.MessagePartHeader.fromJson(o.toJson());
      checkMessagePartHeader(od);
    });
  });


  unittest.group("obj-schema-ModifyMessageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyMessageRequest();
      var od = new api.ModifyMessageRequest.fromJson(o.toJson());
      checkModifyMessageRequest(od);
    });
  });


  unittest.group("obj-schema-ModifyThreadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyThreadRequest();
      var od = new api.ModifyThreadRequest.fromJson(o.toJson());
      checkModifyThreadRequest(od);
    });
  });


  unittest.group("obj-schema-Profile", () {
    unittest.test("to-json--from-json", () {
      var o = buildProfile();
      var od = new api.Profile.fromJson(o.toJson());
      checkProfile(od);
    });
  });


  unittest.group("obj-schema-Thread", () {
    unittest.test("to-json--from-json", () {
      var o = buildThread();
      var od = new api.Thread.fromJson(o.toJson());
      checkThread(od);
    });
  });


  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--getProfile", () {

      var mock = new common_test.HttpServerMock();
      api.UsersResourceApi res = new api.GmailApi(mock).users;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildProfile());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getProfile(arg_userId).then(unittest.expectAsync(((api.Profile response) {
        checkProfile(response);
      })));
    });

  });


  unittest.group("resource-UsersDraftsResourceApi", () {
    unittest.test("method--create", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_request = buildDraft();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Draft.fromJson(json);
        checkDraft(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildDraft());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_userId).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_userId = "foo";
      var arg_id = "foo";
      var arg_format = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDraft());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_userId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDraftsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListDraftsResponse response) {
        checkListDraftsResponse(response);
      })));
    });

    unittest.test("method--send", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_request = buildDraft();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Draft.fromJson(json);
        checkDraft(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.send(arg_request, arg_userId).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_request = buildDraft();
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Draft.fromJson(json);
        checkDraft(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildDraft());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

  });


  unittest.group("resource-UsersHistoryResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersHistoryResourceApi res = new api.GmailApi(mock).users.history;
      var arg_userId = "foo";
      var arg_labelId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_startHistoryId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["labelId"].first, unittest.equals(arg_labelId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startHistoryId"].first, unittest.equals(arg_startHistoryId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListHistoryResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, labelId: arg_labelId, maxResults: arg_maxResults, pageToken: arg_pageToken, startHistoryId: arg_startHistoryId).then(unittest.expectAsync(((api.ListHistoryResponse response) {
        checkListHistoryResponse(response);
      })));
    });

  });


  unittest.group("resource-UsersLabelsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_request = buildLabel();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Label.fromJson(json);
        checkLabel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildLabel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_userId).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildLabel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildListLabelsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId).then(unittest.expectAsync(((api.ListLabelsResponse response) {
        checkListLabelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_request = buildLabel();
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Label.fromJson(json);
        checkLabel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildLabel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.UsersLabelsResourceApi res = new api.GmailApi(mock).users.labels;
      var arg_request = buildLabel();
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Label.fromJson(json);
        checkLabel(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildLabel());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

  });


  unittest.group("resource-UsersMessagesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_id = "foo";
      var arg_format = "foo";
      var arg_metadataHeaders = buildUnnamed1149();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["metadataHeaders"], unittest.equals(arg_metadataHeaders));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format, metadataHeaders: arg_metadataHeaders).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--import", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildMessage();
      var arg_userId = "foo";
      var arg_internalDateSource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["internalDateSource"].first, unittest.equals(arg_internalDateSource));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.import(arg_request, arg_userId, internalDateSource: arg_internalDateSource).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildMessage();
      var arg_userId = "foo";
      var arg_internalDateSource = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["internalDateSource"].first, unittest.equals(arg_internalDateSource));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_userId, internalDateSource: arg_internalDateSource).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_includeSpamTrash = true;
      var arg_labelIds = buildUnnamed1150();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_q = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["includeSpamTrash"].first, unittest.equals("$arg_includeSpamTrash"));
        unittest.expect(queryMap["labelIds"], unittest.equals(arg_labelIds));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListMessagesResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, includeSpamTrash: arg_includeSpamTrash, labelIds: arg_labelIds, maxResults: arg_maxResults, pageToken: arg_pageToken, q: arg_q).then(unittest.expectAsync(((api.ListMessagesResponse response) {
        checkListMessagesResponse(response);
      })));
    });

    unittest.test("method--modify", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildModifyMessageRequest();
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ModifyMessageRequest.fromJson(json);
        checkModifyMessageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.modify(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--send", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildMessage();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.send(arg_request, arg_userId).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--trash", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.trash(arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--untrash", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.untrash(arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

  });


  unittest.group("resource-UsersMessagesAttachmentsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersMessagesAttachmentsResourceApi res = new api.GmailApi(mock).users.messages.attachments;
      var arg_userId = "foo";
      var arg_messageId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildMessagePartBody());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_messageId, arg_id).then(unittest.expectAsync(((api.MessagePartBody response) {
        checkMessagePartBody(response);
      })));
    });

  });


  unittest.group("resource-UsersThreadsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_id = "foo";
      var arg_format = "foo";
      var arg_metadataHeaders = buildUnnamed1151();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["format"].first, unittest.equals(arg_format));
        unittest.expect(queryMap["metadataHeaders"], unittest.equals(arg_metadataHeaders));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildThread());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format, metadataHeaders: arg_metadataHeaders).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_includeSpamTrash = true;
      var arg_labelIds = buildUnnamed1152();
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_q = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["includeSpamTrash"].first, unittest.equals("$arg_includeSpamTrash"));
        unittest.expect(queryMap["labelIds"], unittest.equals(arg_labelIds));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["q"].first, unittest.equals(arg_q));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListThreadsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, includeSpamTrash: arg_includeSpamTrash, labelIds: arg_labelIds, maxResults: arg_maxResults, pageToken: arg_pageToken, q: arg_q).then(unittest.expectAsync(((api.ListThreadsResponse response) {
        checkListThreadsResponse(response);
      })));
    });

    unittest.test("method--modify", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_request = buildModifyThreadRequest();
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ModifyThreadRequest.fromJson(json);
        checkModifyThreadRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildThread());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.modify(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--trash", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildThread());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.trash(arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--untrash", () {

      var mock = new common_test.HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildThread());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.untrash(arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

  });


}

