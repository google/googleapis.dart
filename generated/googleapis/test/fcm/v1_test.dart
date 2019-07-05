library googleapis.fcm.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/fcm/v1.dart' as api;

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

buildUnnamed40() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterAndroidConfig = 0;
buildAndroidConfig() {
  var o = new api.AndroidConfig();
  buildCounterAndroidConfig++;
  if (buildCounterAndroidConfig < 3) {
    o.collapseKey = "foo";
    o.data = buildUnnamed40();
    o.fcmOptions = buildAndroidFcmOptions();
    o.notification = buildAndroidNotification();
    o.priority = "foo";
    o.restrictedPackageName = "foo";
    o.ttl = "foo";
  }
  buildCounterAndroidConfig--;
  return o;
}

checkAndroidConfig(api.AndroidConfig o) {
  buildCounterAndroidConfig++;
  if (buildCounterAndroidConfig < 3) {
    unittest.expect(o.collapseKey, unittest.equals('foo'));
    checkUnnamed40(o.data);
    checkAndroidFcmOptions(o.fcmOptions);
    checkAndroidNotification(o.notification);
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.restrictedPackageName, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterAndroidConfig--;
}

core.int buildCounterAndroidFcmOptions = 0;
buildAndroidFcmOptions() {
  var o = new api.AndroidFcmOptions();
  buildCounterAndroidFcmOptions++;
  if (buildCounterAndroidFcmOptions < 3) {
    o.analyticsLabel = "foo";
  }
  buildCounterAndroidFcmOptions--;
  return o;
}

checkAndroidFcmOptions(api.AndroidFcmOptions o) {
  buildCounterAndroidFcmOptions++;
  if (buildCounterAndroidFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
  }
  buildCounterAndroidFcmOptions--;
}

buildUnnamed41() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed42() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidNotification = 0;
buildAndroidNotification() {
  var o = new api.AndroidNotification();
  buildCounterAndroidNotification++;
  if (buildCounterAndroidNotification < 3) {
    o.body = "foo";
    o.bodyLocArgs = buildUnnamed41();
    o.bodyLocKey = "foo";
    o.channelId = "foo";
    o.clickAction = "foo";
    o.color = "foo";
    o.icon = "foo";
    o.sound = "foo";
    o.tag = "foo";
    o.title = "foo";
    o.titleLocArgs = buildUnnamed42();
    o.titleLocKey = "foo";
  }
  buildCounterAndroidNotification--;
  return o;
}

checkAndroidNotification(api.AndroidNotification o) {
  buildCounterAndroidNotification++;
  if (buildCounterAndroidNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    checkUnnamed41(o.bodyLocArgs);
    unittest.expect(o.bodyLocKey, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.clickAction, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.icon, unittest.equals('foo'));
    unittest.expect(o.sound, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed42(o.titleLocArgs);
    unittest.expect(o.titleLocKey, unittest.equals('foo'));
  }
  buildCounterAndroidNotification--;
}

buildUnnamed43() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed43(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed44() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed44(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

core.int buildCounterApnsConfig = 0;
buildApnsConfig() {
  var o = new api.ApnsConfig();
  buildCounterApnsConfig++;
  if (buildCounterApnsConfig < 3) {
    o.fcmOptions = buildApnsFcmOptions();
    o.headers = buildUnnamed43();
    o.payload = buildUnnamed44();
  }
  buildCounterApnsConfig--;
  return o;
}

checkApnsConfig(api.ApnsConfig o) {
  buildCounterApnsConfig++;
  if (buildCounterApnsConfig < 3) {
    checkApnsFcmOptions(o.fcmOptions);
    checkUnnamed43(o.headers);
    checkUnnamed44(o.payload);
  }
  buildCounterApnsConfig--;
}

core.int buildCounterApnsFcmOptions = 0;
buildApnsFcmOptions() {
  var o = new api.ApnsFcmOptions();
  buildCounterApnsFcmOptions++;
  if (buildCounterApnsFcmOptions < 3) {
    o.analyticsLabel = "foo";
  }
  buildCounterApnsFcmOptions--;
  return o;
}

checkApnsFcmOptions(api.ApnsFcmOptions o) {
  buildCounterApnsFcmOptions++;
  if (buildCounterApnsFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
  }
  buildCounterApnsFcmOptions--;
}

core.int buildCounterFcmOptions = 0;
buildFcmOptions() {
  var o = new api.FcmOptions();
  buildCounterFcmOptions++;
  if (buildCounterFcmOptions < 3) {
    o.analyticsLabel = "foo";
  }
  buildCounterFcmOptions--;
  return o;
}

checkFcmOptions(api.FcmOptions o) {
  buildCounterFcmOptions++;
  if (buildCounterFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
  }
  buildCounterFcmOptions--;
}

buildUnnamed45() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed45(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMessage = 0;
buildMessage() {
  var o = new api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.android = buildAndroidConfig();
    o.apns = buildApnsConfig();
    o.condition = "foo";
    o.data = buildUnnamed45();
    o.fcmOptions = buildFcmOptions();
    o.name = "foo";
    o.notification = buildNotification();
    o.token = "foo";
    o.topic = "foo";
    o.webpush = buildWebpushConfig();
  }
  buildCounterMessage--;
  return o;
}

checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkAndroidConfig(o.android);
    checkApnsConfig(o.apns);
    unittest.expect(o.condition, unittest.equals('foo'));
    checkUnnamed45(o.data);
    checkFcmOptions(o.fcmOptions);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNotification(o.notification);
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
    checkWebpushConfig(o.webpush);
  }
  buildCounterMessage--;
}

core.int buildCounterNotification = 0;
buildNotification() {
  var o = new api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = "foo";
    o.title = "foo";
  }
  buildCounterNotification--;
  return o;
}

checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

core.int buildCounterSendMessageRequest = 0;
buildSendMessageRequest() {
  var o = new api.SendMessageRequest();
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    o.message = buildMessage();
    o.validateOnly = true;
  }
  buildCounterSendMessageRequest--;
  return o;
}

checkSendMessageRequest(api.SendMessageRequest o) {
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    checkMessage(o.message);
    unittest.expect(o.validateOnly, unittest.isTrue);
  }
  buildCounterSendMessageRequest--;
}

buildUnnamed46() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed47() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed47(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed48() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed48(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterWebpushConfig = 0;
buildWebpushConfig() {
  var o = new api.WebpushConfig();
  buildCounterWebpushConfig++;
  if (buildCounterWebpushConfig < 3) {
    o.data = buildUnnamed46();
    o.fcmOptions = buildWebpushFcmOptions();
    o.headers = buildUnnamed47();
    o.notification = buildUnnamed48();
  }
  buildCounterWebpushConfig--;
  return o;
}

checkWebpushConfig(api.WebpushConfig o) {
  buildCounterWebpushConfig++;
  if (buildCounterWebpushConfig < 3) {
    checkUnnamed46(o.data);
    checkWebpushFcmOptions(o.fcmOptions);
    checkUnnamed47(o.headers);
    checkUnnamed48(o.notification);
  }
  buildCounterWebpushConfig--;
}

core.int buildCounterWebpushFcmOptions = 0;
buildWebpushFcmOptions() {
  var o = new api.WebpushFcmOptions();
  buildCounterWebpushFcmOptions++;
  if (buildCounterWebpushFcmOptions < 3) {
    o.link = "foo";
  }
  buildCounterWebpushFcmOptions--;
  return o;
}

checkWebpushFcmOptions(api.WebpushFcmOptions o) {
  buildCounterWebpushFcmOptions++;
  if (buildCounterWebpushFcmOptions < 3) {
    unittest.expect(o.link, unittest.equals('foo'));
  }
  buildCounterWebpushFcmOptions--;
}

main() {
  unittest.group("obj-schema-AndroidConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidConfig();
      var od = new api.AndroidConfig.fromJson(o.toJson());
      checkAndroidConfig(od);
    });
  });

  unittest.group("obj-schema-AndroidFcmOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidFcmOptions();
      var od = new api.AndroidFcmOptions.fromJson(o.toJson());
      checkAndroidFcmOptions(od);
    });
  });

  unittest.group("obj-schema-AndroidNotification", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidNotification();
      var od = new api.AndroidNotification.fromJson(o.toJson());
      checkAndroidNotification(od);
    });
  });

  unittest.group("obj-schema-ApnsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildApnsConfig();
      var od = new api.ApnsConfig.fromJson(o.toJson());
      checkApnsConfig(od);
    });
  });

  unittest.group("obj-schema-ApnsFcmOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildApnsFcmOptions();
      var od = new api.ApnsFcmOptions.fromJson(o.toJson());
      checkApnsFcmOptions(od);
    });
  });

  unittest.group("obj-schema-FcmOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildFcmOptions();
      var od = new api.FcmOptions.fromJson(o.toJson());
      checkFcmOptions(od);
    });
  });

  unittest.group("obj-schema-Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessage();
      var od = new api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group("obj-schema-Notification", () {
    unittest.test("to-json--from-json", () {
      var o = buildNotification();
      var od = new api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group("obj-schema-SendMessageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendMessageRequest();
      var od = new api.SendMessageRequest.fromJson(o.toJson());
      checkSendMessageRequest(od);
    });
  });

  unittest.group("obj-schema-WebpushConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebpushConfig();
      var od = new api.WebpushConfig.fromJson(o.toJson());
      checkWebpushConfig(od);
    });
  });

  unittest.group("obj-schema-WebpushFcmOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebpushFcmOptions();
      var od = new api.WebpushFcmOptions.fromJson(o.toJson());
      checkWebpushFcmOptions(od);
    });
  });

  unittest.group("resource-ProjectsMessagesResourceApi", () {
    unittest.test("method--send", () {
      var mock = new HttpServerMock();
      api.ProjectsMessagesResourceApi res =
          new api.FcmApi(mock).projects.messages;
      var arg_request = buildSendMessageRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendMessageRequest.fromJson(json);
        checkSendMessageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .send(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });
  });
}
