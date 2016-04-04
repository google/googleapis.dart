library googleapis.gmail.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/gmail/v1.dart' as api;

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

buildUnnamed2589() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2589(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteMessagesRequest = 0;
buildBatchDeleteMessagesRequest() {
  var o = new api.BatchDeleteMessagesRequest();
  buildCounterBatchDeleteMessagesRequest++;
  if (buildCounterBatchDeleteMessagesRequest < 3) {
    o.ids = buildUnnamed2589();
  }
  buildCounterBatchDeleteMessagesRequest--;
  return o;
}

checkBatchDeleteMessagesRequest(api.BatchDeleteMessagesRequest o) {
  buildCounterBatchDeleteMessagesRequest++;
  if (buildCounterBatchDeleteMessagesRequest < 3) {
    checkUnnamed2589(o.ids);
  }
  buildCounterBatchDeleteMessagesRequest--;
}

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

buildUnnamed2590() {
  var o = new core.List<api.HistoryLabelAdded>();
  o.add(buildHistoryLabelAdded());
  o.add(buildHistoryLabelAdded());
  return o;
}

checkUnnamed2590(core.List<api.HistoryLabelAdded> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryLabelAdded(o[0]);
  checkHistoryLabelAdded(o[1]);
}

buildUnnamed2591() {
  var o = new core.List<api.HistoryLabelRemoved>();
  o.add(buildHistoryLabelRemoved());
  o.add(buildHistoryLabelRemoved());
  return o;
}

checkUnnamed2591(core.List<api.HistoryLabelRemoved> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryLabelRemoved(o[0]);
  checkHistoryLabelRemoved(o[1]);
}

buildUnnamed2592() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed2592(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

buildUnnamed2593() {
  var o = new core.List<api.HistoryMessageAdded>();
  o.add(buildHistoryMessageAdded());
  o.add(buildHistoryMessageAdded());
  return o;
}

checkUnnamed2593(core.List<api.HistoryMessageAdded> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryMessageAdded(o[0]);
  checkHistoryMessageAdded(o[1]);
}

buildUnnamed2594() {
  var o = new core.List<api.HistoryMessageDeleted>();
  o.add(buildHistoryMessageDeleted());
  o.add(buildHistoryMessageDeleted());
  return o;
}

checkUnnamed2594(core.List<api.HistoryMessageDeleted> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistoryMessageDeleted(o[0]);
  checkHistoryMessageDeleted(o[1]);
}

core.int buildCounterHistory = 0;
buildHistory() {
  var o = new api.History();
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    o.id = "foo";
    o.labelsAdded = buildUnnamed2590();
    o.labelsRemoved = buildUnnamed2591();
    o.messages = buildUnnamed2592();
    o.messagesAdded = buildUnnamed2593();
    o.messagesDeleted = buildUnnamed2594();
  }
  buildCounterHistory--;
  return o;
}

checkHistory(api.History o) {
  buildCounterHistory++;
  if (buildCounterHistory < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed2590(o.labelsAdded);
    checkUnnamed2591(o.labelsRemoved);
    checkUnnamed2592(o.messages);
    checkUnnamed2593(o.messagesAdded);
    checkUnnamed2594(o.messagesDeleted);
  }
  buildCounterHistory--;
}

buildUnnamed2595() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2595(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistoryLabelAdded = 0;
buildHistoryLabelAdded() {
  var o = new api.HistoryLabelAdded();
  buildCounterHistoryLabelAdded++;
  if (buildCounterHistoryLabelAdded < 3) {
    o.labelIds = buildUnnamed2595();
    o.message = buildMessage();
  }
  buildCounterHistoryLabelAdded--;
  return o;
}

checkHistoryLabelAdded(api.HistoryLabelAdded o) {
  buildCounterHistoryLabelAdded++;
  if (buildCounterHistoryLabelAdded < 3) {
    checkUnnamed2595(o.labelIds);
    checkMessage(o.message);
  }
  buildCounterHistoryLabelAdded--;
}

buildUnnamed2596() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2596(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistoryLabelRemoved = 0;
buildHistoryLabelRemoved() {
  var o = new api.HistoryLabelRemoved();
  buildCounterHistoryLabelRemoved++;
  if (buildCounterHistoryLabelRemoved < 3) {
    o.labelIds = buildUnnamed2596();
    o.message = buildMessage();
  }
  buildCounterHistoryLabelRemoved--;
  return o;
}

checkHistoryLabelRemoved(api.HistoryLabelRemoved o) {
  buildCounterHistoryLabelRemoved++;
  if (buildCounterHistoryLabelRemoved < 3) {
    checkUnnamed2596(o.labelIds);
    checkMessage(o.message);
  }
  buildCounterHistoryLabelRemoved--;
}

core.int buildCounterHistoryMessageAdded = 0;
buildHistoryMessageAdded() {
  var o = new api.HistoryMessageAdded();
  buildCounterHistoryMessageAdded++;
  if (buildCounterHistoryMessageAdded < 3) {
    o.message = buildMessage();
  }
  buildCounterHistoryMessageAdded--;
  return o;
}

checkHistoryMessageAdded(api.HistoryMessageAdded o) {
  buildCounterHistoryMessageAdded++;
  if (buildCounterHistoryMessageAdded < 3) {
    checkMessage(o.message);
  }
  buildCounterHistoryMessageAdded--;
}

core.int buildCounterHistoryMessageDeleted = 0;
buildHistoryMessageDeleted() {
  var o = new api.HistoryMessageDeleted();
  buildCounterHistoryMessageDeleted++;
  if (buildCounterHistoryMessageDeleted < 3) {
    o.message = buildMessage();
  }
  buildCounterHistoryMessageDeleted--;
  return o;
}

checkHistoryMessageDeleted(api.HistoryMessageDeleted o) {
  buildCounterHistoryMessageDeleted++;
  if (buildCounterHistoryMessageDeleted < 3) {
    checkMessage(o.message);
  }
  buildCounterHistoryMessageDeleted--;
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

buildUnnamed2597() {
  var o = new core.List<api.Draft>();
  o.add(buildDraft());
  o.add(buildDraft());
  return o;
}

checkUnnamed2597(core.List<api.Draft> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDraft(o[0]);
  checkDraft(o[1]);
}

core.int buildCounterListDraftsResponse = 0;
buildListDraftsResponse() {
  var o = new api.ListDraftsResponse();
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    o.drafts = buildUnnamed2597();
    o.nextPageToken = "foo";
    o.resultSizeEstimate = 42;
  }
  buildCounterListDraftsResponse--;
  return o;
}

checkListDraftsResponse(api.ListDraftsResponse o) {
  buildCounterListDraftsResponse++;
  if (buildCounterListDraftsResponse < 3) {
    checkUnnamed2597(o.drafts);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
  }
  buildCounterListDraftsResponse--;
}

buildUnnamed2598() {
  var o = new core.List<api.History>();
  o.add(buildHistory());
  o.add(buildHistory());
  return o;
}

checkUnnamed2598(core.List<api.History> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHistory(o[0]);
  checkHistory(o[1]);
}

core.int buildCounterListHistoryResponse = 0;
buildListHistoryResponse() {
  var o = new api.ListHistoryResponse();
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    o.history = buildUnnamed2598();
    o.historyId = "foo";
    o.nextPageToken = "foo";
  }
  buildCounterListHistoryResponse--;
  return o;
}

checkListHistoryResponse(api.ListHistoryResponse o) {
  buildCounterListHistoryResponse++;
  if (buildCounterListHistoryResponse < 3) {
    checkUnnamed2598(o.history);
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListHistoryResponse--;
}

buildUnnamed2599() {
  var o = new core.List<api.Label>();
  o.add(buildLabel());
  o.add(buildLabel());
  return o;
}

checkUnnamed2599(core.List<api.Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabel(o[0]);
  checkLabel(o[1]);
}

core.int buildCounterListLabelsResponse = 0;
buildListLabelsResponse() {
  var o = new api.ListLabelsResponse();
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    o.labels = buildUnnamed2599();
  }
  buildCounterListLabelsResponse--;
  return o;
}

checkListLabelsResponse(api.ListLabelsResponse o) {
  buildCounterListLabelsResponse++;
  if (buildCounterListLabelsResponse < 3) {
    checkUnnamed2599(o.labels);
  }
  buildCounterListLabelsResponse--;
}

buildUnnamed2600() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed2600(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.int buildCounterListMessagesResponse = 0;
buildListMessagesResponse() {
  var o = new api.ListMessagesResponse();
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    o.messages = buildUnnamed2600();
    o.nextPageToken = "foo";
    o.resultSizeEstimate = 42;
  }
  buildCounterListMessagesResponse--;
  return o;
}

checkListMessagesResponse(api.ListMessagesResponse o) {
  buildCounterListMessagesResponse++;
  if (buildCounterListMessagesResponse < 3) {
    checkUnnamed2600(o.messages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
  }
  buildCounterListMessagesResponse--;
}

buildUnnamed2601() {
  var o = new core.List<api.Thread>();
  o.add(buildThread());
  o.add(buildThread());
  return o;
}

checkUnnamed2601(core.List<api.Thread> o) {
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
    o.threads = buildUnnamed2601();
  }
  buildCounterListThreadsResponse--;
  return o;
}

checkListThreadsResponse(api.ListThreadsResponse o) {
  buildCounterListThreadsResponse++;
  if (buildCounterListThreadsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.resultSizeEstimate, unittest.equals(42));
    checkUnnamed2601(o.threads);
  }
  buildCounterListThreadsResponse--;
}

buildUnnamed2602() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2602(core.List<core.String> o) {
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
    o.internalDate = "foo";
    o.labelIds = buildUnnamed2602();
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
    unittest.expect(o.internalDate, unittest.equals('foo'));
    checkUnnamed2602(o.labelIds);
    checkMessagePart(o.payload);
    unittest.expect(o.raw, unittest.equals('foo'));
    unittest.expect(o.sizeEstimate, unittest.equals(42));
    unittest.expect(o.snippet, unittest.equals('foo'));
    unittest.expect(o.threadId, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

buildUnnamed2603() {
  var o = new core.List<api.MessagePartHeader>();
  o.add(buildMessagePartHeader());
  o.add(buildMessagePartHeader());
  return o;
}

checkUnnamed2603(core.List<api.MessagePartHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessagePartHeader(o[0]);
  checkMessagePartHeader(o[1]);
}

buildUnnamed2604() {
  var o = new core.List<api.MessagePart>();
  o.add(buildMessagePart());
  o.add(buildMessagePart());
  return o;
}

checkUnnamed2604(core.List<api.MessagePart> o) {
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
    o.headers = buildUnnamed2603();
    o.mimeType = "foo";
    o.partId = "foo";
    o.parts = buildUnnamed2604();
  }
  buildCounterMessagePart--;
  return o;
}

checkMessagePart(api.MessagePart o) {
  buildCounterMessagePart++;
  if (buildCounterMessagePart < 3) {
    checkMessagePartBody(o.body);
    unittest.expect(o.filename, unittest.equals('foo'));
    checkUnnamed2603(o.headers);
    unittest.expect(o.mimeType, unittest.equals('foo'));
    unittest.expect(o.partId, unittest.equals('foo'));
    checkUnnamed2604(o.parts);
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

buildUnnamed2605() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2605(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2606() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2606(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyMessageRequest = 0;
buildModifyMessageRequest() {
  var o = new api.ModifyMessageRequest();
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    o.addLabelIds = buildUnnamed2605();
    o.removeLabelIds = buildUnnamed2606();
  }
  buildCounterModifyMessageRequest--;
  return o;
}

checkModifyMessageRequest(api.ModifyMessageRequest o) {
  buildCounterModifyMessageRequest++;
  if (buildCounterModifyMessageRequest < 3) {
    checkUnnamed2605(o.addLabelIds);
    checkUnnamed2606(o.removeLabelIds);
  }
  buildCounterModifyMessageRequest--;
}

buildUnnamed2607() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2608() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2608(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyThreadRequest = 0;
buildModifyThreadRequest() {
  var o = new api.ModifyThreadRequest();
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    o.addLabelIds = buildUnnamed2607();
    o.removeLabelIds = buildUnnamed2608();
  }
  buildCounterModifyThreadRequest--;
  return o;
}

checkModifyThreadRequest(api.ModifyThreadRequest o) {
  buildCounterModifyThreadRequest++;
  if (buildCounterModifyThreadRequest < 3) {
    checkUnnamed2607(o.addLabelIds);
    checkUnnamed2608(o.removeLabelIds);
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

buildUnnamed2609() {
  var o = new core.List<api.Message>();
  o.add(buildMessage());
  o.add(buildMessage());
  return o;
}

checkUnnamed2609(core.List<api.Message> o) {
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
    o.messages = buildUnnamed2609();
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
    checkUnnamed2609(o.messages);
    unittest.expect(o.snippet, unittest.equals('foo'));
  }
  buildCounterThread--;
}

buildUnnamed2610() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2610(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWatchRequest = 0;
buildWatchRequest() {
  var o = new api.WatchRequest();
  buildCounterWatchRequest++;
  if (buildCounterWatchRequest < 3) {
    o.labelFilterAction = "foo";
    o.labelIds = buildUnnamed2610();
    o.topicName = "foo";
  }
  buildCounterWatchRequest--;
  return o;
}

checkWatchRequest(api.WatchRequest o) {
  buildCounterWatchRequest++;
  if (buildCounterWatchRequest < 3) {
    unittest.expect(o.labelFilterAction, unittest.equals('foo'));
    checkUnnamed2610(o.labelIds);
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterWatchRequest--;
}

core.int buildCounterWatchResponse = 0;
buildWatchResponse() {
  var o = new api.WatchResponse();
  buildCounterWatchResponse++;
  if (buildCounterWatchResponse < 3) {
    o.expiration = "foo";
    o.historyId = "foo";
  }
  buildCounterWatchResponse--;
  return o;
}

checkWatchResponse(api.WatchResponse o) {
  buildCounterWatchResponse++;
  if (buildCounterWatchResponse < 3) {
    unittest.expect(o.expiration, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
  }
  buildCounterWatchResponse--;
}

buildUnnamed2611() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2611(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2612() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2612(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2613() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2613(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2614() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2614(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
  unittest.group("obj-schema-BatchDeleteMessagesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeleteMessagesRequest();
      var od = new api.BatchDeleteMessagesRequest.fromJson(o.toJson());
      checkBatchDeleteMessagesRequest(od);
    });
  });


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


  unittest.group("obj-schema-HistoryLabelAdded", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistoryLabelAdded();
      var od = new api.HistoryLabelAdded.fromJson(o.toJson());
      checkHistoryLabelAdded(od);
    });
  });


  unittest.group("obj-schema-HistoryLabelRemoved", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistoryLabelRemoved();
      var od = new api.HistoryLabelRemoved.fromJson(o.toJson());
      checkHistoryLabelRemoved(od);
    });
  });


  unittest.group("obj-schema-HistoryMessageAdded", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistoryMessageAdded();
      var od = new api.HistoryMessageAdded.fromJson(o.toJson());
      checkHistoryMessageAdded(od);
    });
  });


  unittest.group("obj-schema-HistoryMessageDeleted", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistoryMessageDeleted();
      var od = new api.HistoryMessageDeleted.fromJson(o.toJson());
      checkHistoryMessageDeleted(od);
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


  unittest.group("obj-schema-WatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildWatchRequest();
      var od = new api.WatchRequest.fromJson(o.toJson());
      checkWatchRequest(od);
    });
  });


  unittest.group("obj-schema-WatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWatchResponse();
      var od = new api.WatchResponse.fromJson(o.toJson());
      checkWatchResponse(od);
    });
  });


  unittest.group("resource-UsersResourceApi", () {
    unittest.test("method--getProfile", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.getProfile(arg_userId).then(unittest.expectAsync(((api.Profile response) {
        checkProfile(response);
      })));
    });

    unittest.test("method--stop", () {

      var mock = new HttpServerMock();
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.stop(arg_userId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--watch", () {

      var mock = new HttpServerMock();
      api.UsersResourceApi res = new api.GmailApi(mock).users;
      var arg_request = buildWatchRequest();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.WatchRequest.fromJson(json);
        checkWatchRequest(obj);

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
        var resp = convert.JSON.encode(buildWatchResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.watch(arg_request, arg_userId).then(unittest.expectAsync(((api.WatchResponse response) {
        checkWatchResponse(response);
      })));
    });

  });


  unittest.group("resource-UsersDraftsResourceApi", () {
    unittest.test("method--create", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_userId).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UsersDraftsResourceApi res = new api.GmailApi(mock).users.drafts;
      var arg_userId = "foo";
      var arg_includeSpamTrash = true;
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
        unittest.expect(queryMap["includeSpamTrash"].first, unittest.equals("$arg_includeSpamTrash"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDraftsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, includeSpamTrash: arg_includeSpamTrash, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListDraftsResponse response) {
        checkListDraftsResponse(response);
      })));
    });

    unittest.test("method--send", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.send(arg_request, arg_userId).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--update", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Draft response) {
        checkDraft(response);
      })));
    });

  });


  unittest.group("resource-UsersHistoryResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, labelId: arg_labelId, maxResults: arg_maxResults, pageToken: arg_pageToken, startHistoryId: arg_startHistoryId).then(unittest.expectAsync(((api.ListHistoryResponse response) {
        checkListHistoryResponse(response);
      })));
    });

  });


  unittest.group("resource-UsersLabelsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_userId).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId).then(unittest.expectAsync(((api.ListLabelsResponse response) {
        checkListLabelsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Label response) {
        checkLabel(response);
      })));
    });

  });


  unittest.group("resource-UsersMessagesResourceApi", () {
    unittest.test("method--batchDelete", () {

      var mock = new HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildBatchDeleteMessagesRequest();
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BatchDeleteMessagesRequest.fromJson(json);
        checkBatchDeleteMessagesRequest(obj);

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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.batchDelete(arg_request, arg_userId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_id = "foo";
      var arg_format = "foo";
      var arg_metadataHeaders = buildUnnamed2611();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format, metadataHeaders: arg_metadataHeaders).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--import", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildMessage();
      var arg_userId = "foo";
      var arg_deleted = true;
      var arg_internalDateSource = "foo";
      var arg_neverMarkSpam = true;
      var arg_processForCalendar = true;
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
        unittest.expect(queryMap["deleted"].first, unittest.equals("$arg_deleted"));
        unittest.expect(queryMap["internalDateSource"].first, unittest.equals(arg_internalDateSource));
        unittest.expect(queryMap["neverMarkSpam"].first, unittest.equals("$arg_neverMarkSpam"));
        unittest.expect(queryMap["processForCalendar"].first, unittest.equals("$arg_processForCalendar"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.import(arg_request, arg_userId, deleted: arg_deleted, internalDateSource: arg_internalDateSource, neverMarkSpam: arg_neverMarkSpam, processForCalendar: arg_processForCalendar).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_request = buildMessage();
      var arg_userId = "foo";
      var arg_deleted = true;
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
        unittest.expect(queryMap["deleted"].first, unittest.equals("$arg_deleted"));
        unittest.expect(queryMap["internalDateSource"].first, unittest.equals(arg_internalDateSource));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_userId, deleted: arg_deleted, internalDateSource: arg_internalDateSource).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UsersMessagesResourceApi res = new api.GmailApi(mock).users.messages;
      var arg_userId = "foo";
      var arg_includeSpamTrash = true;
      var arg_labelIds = buildUnnamed2612();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, includeSpamTrash: arg_includeSpamTrash, labelIds: arg_labelIds, maxResults: arg_maxResults, pageToken: arg_pageToken, q: arg_q).then(unittest.expectAsync(((api.ListMessagesResponse response) {
        checkListMessagesResponse(response);
      })));
    });

    unittest.test("method--modify", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.modify(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--send", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.send(arg_request, arg_userId).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--trash", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.trash(arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--untrash", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.untrash(arg_userId, arg_id).then(unittest.expectAsync(((api.Message response) {
        checkMessage(response);
      })));
    });

  });


  unittest.group("resource-UsersMessagesAttachmentsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_messageId, arg_id).then(unittest.expectAsync(((api.MessagePartBody response) {
        checkMessagePartBody(response);
      })));
    });

  });


  unittest.group("resource-UsersThreadsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_userId, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_id = "foo";
      var arg_format = "foo";
      var arg_metadataHeaders = buildUnnamed2613();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId, arg_id, format: arg_format, metadataHeaders: arg_metadataHeaders).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.UsersThreadsResourceApi res = new api.GmailApi(mock).users.threads;
      var arg_userId = "foo";
      var arg_includeSpamTrash = true;
      var arg_labelIds = buildUnnamed2614();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_userId, includeSpamTrash: arg_includeSpamTrash, labelIds: arg_labelIds, maxResults: arg_maxResults, pageToken: arg_pageToken, q: arg_q).then(unittest.expectAsync(((api.ListThreadsResponse response) {
        checkListThreadsResponse(response);
      })));
    });

    unittest.test("method--modify", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.modify(arg_request, arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--trash", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.trash(arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

    unittest.test("method--untrash", () {

      var mock = new HttpServerMock();
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
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.untrash(arg_userId, arg_id).then(unittest.expectAsync(((api.Thread response) {
        checkThread(response);
      })));
    });

  });


}

