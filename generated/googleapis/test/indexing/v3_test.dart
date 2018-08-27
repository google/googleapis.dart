library googleapis.indexing.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/indexing/v3.dart' as api;

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

core.int buildCounterPublishUrlNotificationResponse = 0;
buildPublishUrlNotificationResponse() {
  var o = new api.PublishUrlNotificationResponse();
  buildCounterPublishUrlNotificationResponse++;
  if (buildCounterPublishUrlNotificationResponse < 3) {
    o.urlNotificationMetadata = buildUrlNotificationMetadata();
  }
  buildCounterPublishUrlNotificationResponse--;
  return o;
}

checkPublishUrlNotificationResponse(api.PublishUrlNotificationResponse o) {
  buildCounterPublishUrlNotificationResponse++;
  if (buildCounterPublishUrlNotificationResponse < 3) {
    checkUrlNotificationMetadata(o.urlNotificationMetadata);
  }
  buildCounterPublishUrlNotificationResponse--;
}

core.int buildCounterUrlNotification = 0;
buildUrlNotification() {
  var o = new api.UrlNotification();
  buildCounterUrlNotification++;
  if (buildCounterUrlNotification < 3) {
    o.notifyTime = "foo";
    o.type = "foo";
    o.url = "foo";
  }
  buildCounterUrlNotification--;
  return o;
}

checkUrlNotification(api.UrlNotification o) {
  buildCounterUrlNotification++;
  if (buildCounterUrlNotification < 3) {
    unittest.expect(o.notifyTime, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUrlNotification--;
}

core.int buildCounterUrlNotificationMetadata = 0;
buildUrlNotificationMetadata() {
  var o = new api.UrlNotificationMetadata();
  buildCounterUrlNotificationMetadata++;
  if (buildCounterUrlNotificationMetadata < 3) {
    o.latestRemove = buildUrlNotification();
    o.latestUpdate = buildUrlNotification();
    o.url = "foo";
  }
  buildCounterUrlNotificationMetadata--;
  return o;
}

checkUrlNotificationMetadata(api.UrlNotificationMetadata o) {
  buildCounterUrlNotificationMetadata++;
  if (buildCounterUrlNotificationMetadata < 3) {
    checkUrlNotification(o.latestRemove);
    checkUrlNotification(o.latestUpdate);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterUrlNotificationMetadata--;
}

main() {
  unittest.group("obj-schema-PublishUrlNotificationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishUrlNotificationResponse();
      var od = new api.PublishUrlNotificationResponse.fromJson(o.toJson());
      checkPublishUrlNotificationResponse(od);
    });
  });

  unittest.group("obj-schema-UrlNotification", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlNotification();
      var od = new api.UrlNotification.fromJson(o.toJson());
      checkUrlNotification(od);
    });
  });

  unittest.group("obj-schema-UrlNotificationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUrlNotificationMetadata();
      var od = new api.UrlNotificationMetadata.fromJson(o.toJson());
      checkUrlNotificationMetadata(od);
    });
  });

  unittest.group("resource-UrlNotificationsResourceApi", () {
    unittest.test("method--getMetadata", () {
      var mock = new HttpServerMock();
      api.UrlNotificationsResourceApi res =
          new api.IndexingApi(mock).urlNotifications;
      var arg_url = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("v3/urlNotifications/metadata"));
        pathOffset += 28;

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
        unittest.expect(queryMap["url"].first, unittest.equals(arg_url));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildUrlNotificationMetadata());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetadata(url: arg_url, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUrlNotificationMetadata(response);
      })));
    });

    unittest.test("method--publish", () {
      var mock = new HttpServerMock();
      api.UrlNotificationsResourceApi res =
          new api.IndexingApi(mock).urlNotifications;
      var arg_request = buildUrlNotification();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UrlNotification.fromJson(json);
        checkUrlNotification(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("v3/urlNotifications:publish"));
        pathOffset += 27;

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
        var resp = convert.json.encode(buildPublishUrlNotificationResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .publish(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPublishUrlNotificationResponse(response);
      })));
    });
  });
}
