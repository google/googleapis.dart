// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

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

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.Map<core.String, core.String> buildUnnamed1328() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1328(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterAndroidConfig = 0;
api.AndroidConfig buildAndroidConfig() {
  var o = api.AndroidConfig();
  buildCounterAndroidConfig++;
  if (buildCounterAndroidConfig < 3) {
    o.collapseKey = 'foo';
    o.data = buildUnnamed1328();
    o.directBootOk = true;
    o.fcmOptions = buildAndroidFcmOptions();
    o.notification = buildAndroidNotification();
    o.priority = 'foo';
    o.restrictedPackageName = 'foo';
    o.ttl = 'foo';
  }
  buildCounterAndroidConfig--;
  return o;
}

void checkAndroidConfig(api.AndroidConfig o) {
  buildCounterAndroidConfig++;
  if (buildCounterAndroidConfig < 3) {
    unittest.expect(o.collapseKey, unittest.equals('foo'));
    checkUnnamed1328(o.data);
    unittest.expect(o.directBootOk, unittest.isTrue);
    checkAndroidFcmOptions(o.fcmOptions);
    checkAndroidNotification(o.notification);
    unittest.expect(o.priority, unittest.equals('foo'));
    unittest.expect(o.restrictedPackageName, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterAndroidConfig--;
}

core.int buildCounterAndroidFcmOptions = 0;
api.AndroidFcmOptions buildAndroidFcmOptions() {
  var o = api.AndroidFcmOptions();
  buildCounterAndroidFcmOptions++;
  if (buildCounterAndroidFcmOptions < 3) {
    o.analyticsLabel = 'foo';
  }
  buildCounterAndroidFcmOptions--;
  return o;
}

void checkAndroidFcmOptions(api.AndroidFcmOptions o) {
  buildCounterAndroidFcmOptions++;
  if (buildCounterAndroidFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
  }
  buildCounterAndroidFcmOptions--;
}

core.List<core.String> buildUnnamed1329() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1329(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1330() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1330(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1331() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1331(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidNotification = 0;
api.AndroidNotification buildAndroidNotification() {
  var o = api.AndroidNotification();
  buildCounterAndroidNotification++;
  if (buildCounterAndroidNotification < 3) {
    o.body = 'foo';
    o.bodyLocArgs = buildUnnamed1329();
    o.bodyLocKey = 'foo';
    o.channelId = 'foo';
    o.clickAction = 'foo';
    o.color = 'foo';
    o.defaultLightSettings = true;
    o.defaultSound = true;
    o.defaultVibrateTimings = true;
    o.eventTime = 'foo';
    o.icon = 'foo';
    o.image = 'foo';
    o.lightSettings = buildLightSettings();
    o.localOnly = true;
    o.notificationCount = 42;
    o.notificationPriority = 'foo';
    o.sound = 'foo';
    o.sticky = true;
    o.tag = 'foo';
    o.ticker = 'foo';
    o.title = 'foo';
    o.titleLocArgs = buildUnnamed1330();
    o.titleLocKey = 'foo';
    o.vibrateTimings = buildUnnamed1331();
    o.visibility = 'foo';
  }
  buildCounterAndroidNotification--;
  return o;
}

void checkAndroidNotification(api.AndroidNotification o) {
  buildCounterAndroidNotification++;
  if (buildCounterAndroidNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    checkUnnamed1329(o.bodyLocArgs);
    unittest.expect(o.bodyLocKey, unittest.equals('foo'));
    unittest.expect(o.channelId, unittest.equals('foo'));
    unittest.expect(o.clickAction, unittest.equals('foo'));
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.defaultLightSettings, unittest.isTrue);
    unittest.expect(o.defaultSound, unittest.isTrue);
    unittest.expect(o.defaultVibrateTimings, unittest.isTrue);
    unittest.expect(o.eventTime, unittest.equals('foo'));
    unittest.expect(o.icon, unittest.equals('foo'));
    unittest.expect(o.image, unittest.equals('foo'));
    checkLightSettings(o.lightSettings);
    unittest.expect(o.localOnly, unittest.isTrue);
    unittest.expect(o.notificationCount, unittest.equals(42));
    unittest.expect(o.notificationPriority, unittest.equals('foo'));
    unittest.expect(o.sound, unittest.equals('foo'));
    unittest.expect(o.sticky, unittest.isTrue);
    unittest.expect(o.tag, unittest.equals('foo'));
    unittest.expect(o.ticker, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed1330(o.titleLocArgs);
    unittest.expect(o.titleLocKey, unittest.equals('foo'));
    checkUnnamed1331(o.vibrateTimings);
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterAndroidNotification--;
}

core.Map<core.String, core.String> buildUnnamed1332() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1332(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1333() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1333(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterApnsConfig = 0;
api.ApnsConfig buildApnsConfig() {
  var o = api.ApnsConfig();
  buildCounterApnsConfig++;
  if (buildCounterApnsConfig < 3) {
    o.fcmOptions = buildApnsFcmOptions();
    o.headers = buildUnnamed1332();
    o.payload = buildUnnamed1333();
  }
  buildCounterApnsConfig--;
  return o;
}

void checkApnsConfig(api.ApnsConfig o) {
  buildCounterApnsConfig++;
  if (buildCounterApnsConfig < 3) {
    checkApnsFcmOptions(o.fcmOptions);
    checkUnnamed1332(o.headers);
    checkUnnamed1333(o.payload);
  }
  buildCounterApnsConfig--;
}

core.int buildCounterApnsFcmOptions = 0;
api.ApnsFcmOptions buildApnsFcmOptions() {
  var o = api.ApnsFcmOptions();
  buildCounterApnsFcmOptions++;
  if (buildCounterApnsFcmOptions < 3) {
    o.analyticsLabel = 'foo';
    o.image = 'foo';
  }
  buildCounterApnsFcmOptions--;
  return o;
}

void checkApnsFcmOptions(api.ApnsFcmOptions o) {
  buildCounterApnsFcmOptions++;
  if (buildCounterApnsFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
    unittest.expect(o.image, unittest.equals('foo'));
  }
  buildCounterApnsFcmOptions--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  var o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(o.alpha, unittest.equals(42.0));
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.int buildCounterFcmOptions = 0;
api.FcmOptions buildFcmOptions() {
  var o = api.FcmOptions();
  buildCounterFcmOptions++;
  if (buildCounterFcmOptions < 3) {
    o.analyticsLabel = 'foo';
  }
  buildCounterFcmOptions--;
  return o;
}

void checkFcmOptions(api.FcmOptions o) {
  buildCounterFcmOptions++;
  if (buildCounterFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
  }
  buildCounterFcmOptions--;
}

core.int buildCounterLightSettings = 0;
api.LightSettings buildLightSettings() {
  var o = api.LightSettings();
  buildCounterLightSettings++;
  if (buildCounterLightSettings < 3) {
    o.color = buildColor();
    o.lightOffDuration = 'foo';
    o.lightOnDuration = 'foo';
  }
  buildCounterLightSettings--;
  return o;
}

void checkLightSettings(api.LightSettings o) {
  buildCounterLightSettings++;
  if (buildCounterLightSettings < 3) {
    checkColor(o.color);
    unittest.expect(o.lightOffDuration, unittest.equals('foo'));
    unittest.expect(o.lightOnDuration, unittest.equals('foo'));
  }
  buildCounterLightSettings--;
}

core.Map<core.String, core.String> buildUnnamed1334() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1334(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  var o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.android = buildAndroidConfig();
    o.apns = buildApnsConfig();
    o.condition = 'foo';
    o.data = buildUnnamed1334();
    o.fcmOptions = buildFcmOptions();
    o.name = 'foo';
    o.notification = buildNotification();
    o.token = 'foo';
    o.topic = 'foo';
    o.webpush = buildWebpushConfig();
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkAndroidConfig(o.android);
    checkApnsConfig(o.apns);
    unittest.expect(o.condition, unittest.equals('foo'));
    checkUnnamed1334(o.data);
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
api.Notification buildNotification() {
  var o = api.Notification();
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    o.body = 'foo';
    o.image = 'foo';
    o.title = 'foo';
  }
  buildCounterNotification--;
  return o;
}

void checkNotification(api.Notification o) {
  buildCounterNotification++;
  if (buildCounterNotification < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    unittest.expect(o.image, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterNotification--;
}

core.int buildCounterSendMessageRequest = 0;
api.SendMessageRequest buildSendMessageRequest() {
  var o = api.SendMessageRequest();
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    o.message = buildMessage();
    o.validateOnly = true;
  }
  buildCounterSendMessageRequest--;
  return o;
}

void checkSendMessageRequest(api.SendMessageRequest o) {
  buildCounterSendMessageRequest++;
  if (buildCounterSendMessageRequest < 3) {
    checkMessage(o.message);
    unittest.expect(o.validateOnly, unittest.isTrue);
  }
  buildCounterSendMessageRequest--;
}

core.Map<core.String, core.String> buildUnnamed1335() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1335(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1336() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed1336(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed1337() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed1337(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterWebpushConfig = 0;
api.WebpushConfig buildWebpushConfig() {
  var o = api.WebpushConfig();
  buildCounterWebpushConfig++;
  if (buildCounterWebpushConfig < 3) {
    o.data = buildUnnamed1335();
    o.fcmOptions = buildWebpushFcmOptions();
    o.headers = buildUnnamed1336();
    o.notification = buildUnnamed1337();
  }
  buildCounterWebpushConfig--;
  return o;
}

void checkWebpushConfig(api.WebpushConfig o) {
  buildCounterWebpushConfig++;
  if (buildCounterWebpushConfig < 3) {
    checkUnnamed1335(o.data);
    checkWebpushFcmOptions(o.fcmOptions);
    checkUnnamed1336(o.headers);
    checkUnnamed1337(o.notification);
  }
  buildCounterWebpushConfig--;
}

core.int buildCounterWebpushFcmOptions = 0;
api.WebpushFcmOptions buildWebpushFcmOptions() {
  var o = api.WebpushFcmOptions();
  buildCounterWebpushFcmOptions++;
  if (buildCounterWebpushFcmOptions < 3) {
    o.analyticsLabel = 'foo';
    o.link = 'foo';
  }
  buildCounterWebpushFcmOptions--;
  return o;
}

void checkWebpushFcmOptions(api.WebpushFcmOptions o) {
  buildCounterWebpushFcmOptions++;
  if (buildCounterWebpushFcmOptions < 3) {
    unittest.expect(o.analyticsLabel, unittest.equals('foo'));
    unittest.expect(o.link, unittest.equals('foo'));
  }
  buildCounterWebpushFcmOptions--;
}

void main() {
  unittest.group('obj-schema-AndroidConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidConfig();
      var od = api.AndroidConfig.fromJson(o.toJson());
      checkAndroidConfig(od);
    });
  });

  unittest.group('obj-schema-AndroidFcmOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidFcmOptions();
      var od = api.AndroidFcmOptions.fromJson(o.toJson());
      checkAndroidFcmOptions(od);
    });
  });

  unittest.group('obj-schema-AndroidNotification', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidNotification();
      var od = api.AndroidNotification.fromJson(o.toJson());
      checkAndroidNotification(od);
    });
  });

  unittest.group('obj-schema-ApnsConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildApnsConfig();
      var od = api.ApnsConfig.fromJson(o.toJson());
      checkApnsConfig(od);
    });
  });

  unittest.group('obj-schema-ApnsFcmOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildApnsFcmOptions();
      var od = api.ApnsFcmOptions.fromJson(o.toJson());
      checkApnsFcmOptions(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () {
      var o = buildColor();
      var od = api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });

  unittest.group('obj-schema-FcmOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildFcmOptions();
      var od = api.FcmOptions.fromJson(o.toJson());
      checkFcmOptions(od);
    });
  });

  unittest.group('obj-schema-LightSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildLightSettings();
      var od = api.LightSettings.fromJson(o.toJson());
      checkLightSettings(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () {
      var o = buildMessage();
      var od = api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-Notification', () {
    unittest.test('to-json--from-json', () {
      var o = buildNotification();
      var od = api.Notification.fromJson(o.toJson());
      checkNotification(od);
    });
  });

  unittest.group('obj-schema-SendMessageRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendMessageRequest();
      var od = api.SendMessageRequest.fromJson(o.toJson());
      checkSendMessageRequest(od);
    });
  });

  unittest.group('obj-schema-WebpushConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebpushConfig();
      var od = api.WebpushConfig.fromJson(o.toJson());
      checkWebpushConfig(od);
    });
  });

  unittest.group('obj-schema-WebpushFcmOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildWebpushFcmOptions();
      var od = api.WebpushFcmOptions.fromJson(o.toJson());
      checkWebpushFcmOptions(od);
    });
  });

  unittest.group('resource-ProjectsMessagesResourceApi', () {
    unittest.test('method--send', () {
      var mock = HttpServerMock();
      api.ProjectsMessagesResourceApi res = api.FcmApi(mock).projects.messages;
      var arg_request = buildSendMessageRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendMessageRequest.fromJson(json);
        checkSendMessageRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .send(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });
  });
}
