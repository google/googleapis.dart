// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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

library googleapis.cloudscheduler.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/cloudscheduler/v1.dart' as api;

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

core.Map<core.String, core.String> buildUnnamed2749() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2749(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterAppEngineHttpTarget = 0;
api.AppEngineHttpTarget buildAppEngineHttpTarget() {
  var o = api.AppEngineHttpTarget();
  buildCounterAppEngineHttpTarget++;
  if (buildCounterAppEngineHttpTarget < 3) {
    o.appEngineRouting = buildAppEngineRouting();
    o.body = 'foo';
    o.headers = buildUnnamed2749();
    o.httpMethod = 'foo';
    o.relativeUri = 'foo';
  }
  buildCounterAppEngineHttpTarget--;
  return o;
}

void checkAppEngineHttpTarget(api.AppEngineHttpTarget o) {
  buildCounterAppEngineHttpTarget++;
  if (buildCounterAppEngineHttpTarget < 3) {
    checkAppEngineRouting(o.appEngineRouting);
    unittest.expect(o.body, unittest.equals('foo'));
    checkUnnamed2749(o.headers);
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    unittest.expect(o.relativeUri, unittest.equals('foo'));
  }
  buildCounterAppEngineHttpTarget--;
}

core.int buildCounterAppEngineRouting = 0;
api.AppEngineRouting buildAppEngineRouting() {
  var o = api.AppEngineRouting();
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    o.host = 'foo';
    o.instance = 'foo';
    o.service = 'foo';
    o.version = 'foo';
  }
  buildCounterAppEngineRouting--;
  return o;
}

void checkAppEngineRouting(api.AppEngineRouting o) {
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.instance, unittest.equals('foo'));
    unittest.expect(o.service, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterAppEngineRouting--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.Map<core.String, core.String> buildUnnamed2750() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2750(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterHttpTarget = 0;
api.HttpTarget buildHttpTarget() {
  var o = api.HttpTarget();
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    o.body = 'foo';
    o.headers = buildUnnamed2750();
    o.httpMethod = 'foo';
    o.oauthToken = buildOAuthToken();
    o.oidcToken = buildOidcToken();
    o.uri = 'foo';
  }
  buildCounterHttpTarget--;
  return o;
}

void checkHttpTarget(api.HttpTarget o) {
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    unittest.expect(o.body, unittest.equals('foo'));
    checkUnnamed2750(o.headers);
    unittest.expect(o.httpMethod, unittest.equals('foo'));
    checkOAuthToken(o.oauthToken);
    checkOidcToken(o.oidcToken);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterHttpTarget--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.appEngineHttpTarget = buildAppEngineHttpTarget();
    o.attemptDeadline = 'foo';
    o.description = 'foo';
    o.httpTarget = buildHttpTarget();
    o.lastAttemptTime = 'foo';
    o.name = 'foo';
    o.pubsubTarget = buildPubsubTarget();
    o.retryConfig = buildRetryConfig();
    o.schedule = 'foo';
    o.scheduleTime = 'foo';
    o.state = 'foo';
    o.status = buildStatus();
    o.timeZone = 'foo';
    o.userUpdateTime = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    checkAppEngineHttpTarget(o.appEngineHttpTarget);
    unittest.expect(o.attemptDeadline, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkHttpTarget(o.httpTarget);
    unittest.expect(o.lastAttemptTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPubsubTarget(o.pubsubTarget);
    checkRetryConfig(o.retryConfig);
    unittest.expect(o.schedule, unittest.equals('foo'));
    unittest.expect(o.scheduleTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkStatus(o.status);
    unittest.expect(o.timeZone, unittest.equals('foo'));
    unittest.expect(o.userUpdateTime, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<api.Job> buildUnnamed2751() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed2751(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed2751();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed2751(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.List<api.Location> buildUnnamed2752() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed2752(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  var o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2752();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2752(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed2753() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2753(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed2754() {
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

void checkUnnamed2754(core.Map<core.String, core.Object> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed2753();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2754();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2753(o.labels);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkUnnamed2754(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterOAuthToken = 0;
api.OAuthToken buildOAuthToken() {
  var o = api.OAuthToken();
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    o.scope = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOAuthToken--;
  return o;
}

void checkOAuthToken(api.OAuthToken o) {
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    unittest.expect(o.scope, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
  }
  buildCounterOAuthToken--;
}

core.int buildCounterOidcToken = 0;
api.OidcToken buildOidcToken() {
  var o = api.OidcToken();
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    o.audience = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOidcToken--;
  return o;
}

void checkOidcToken(api.OidcToken o) {
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    unittest.expect(o.audience, unittest.equals('foo'));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
  }
  buildCounterOidcToken--;
}

core.int buildCounterPauseJobRequest = 0;
api.PauseJobRequest buildPauseJobRequest() {
  var o = api.PauseJobRequest();
  buildCounterPauseJobRequest++;
  if (buildCounterPauseJobRequest < 3) {}
  buildCounterPauseJobRequest--;
  return o;
}

void checkPauseJobRequest(api.PauseJobRequest o) {
  buildCounterPauseJobRequest++;
  if (buildCounterPauseJobRequest < 3) {}
  buildCounterPauseJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed2755() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2755(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPubsubMessage = 0;
api.PubsubMessage buildPubsubMessage() {
  var o = api.PubsubMessage();
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    o.attributes = buildUnnamed2755();
    o.data = 'foo';
    o.messageId = 'foo';
    o.orderingKey = 'foo';
    o.publishTime = 'foo';
  }
  buildCounterPubsubMessage--;
  return o;
}

void checkPubsubMessage(api.PubsubMessage o) {
  buildCounterPubsubMessage++;
  if (buildCounterPubsubMessage < 3) {
    checkUnnamed2755(o.attributes);
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.orderingKey, unittest.equals('foo'));
    unittest.expect(o.publishTime, unittest.equals('foo'));
  }
  buildCounterPubsubMessage--;
}

core.Map<core.String, core.String> buildUnnamed2756() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2756(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterPubsubTarget = 0;
api.PubsubTarget buildPubsubTarget() {
  var o = api.PubsubTarget();
  buildCounterPubsubTarget++;
  if (buildCounterPubsubTarget < 3) {
    o.attributes = buildUnnamed2756();
    o.data = 'foo';
    o.topicName = 'foo';
  }
  buildCounterPubsubTarget--;
  return o;
}

void checkPubsubTarget(api.PubsubTarget o) {
  buildCounterPubsubTarget++;
  if (buildCounterPubsubTarget < 3) {
    checkUnnamed2756(o.attributes);
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterPubsubTarget--;
}

core.int buildCounterResumeJobRequest = 0;
api.ResumeJobRequest buildResumeJobRequest() {
  var o = api.ResumeJobRequest();
  buildCounterResumeJobRequest++;
  if (buildCounterResumeJobRequest < 3) {}
  buildCounterResumeJobRequest--;
  return o;
}

void checkResumeJobRequest(api.ResumeJobRequest o) {
  buildCounterResumeJobRequest++;
  if (buildCounterResumeJobRequest < 3) {}
  buildCounterResumeJobRequest--;
}

core.int buildCounterRetryConfig = 0;
api.RetryConfig buildRetryConfig() {
  var o = api.RetryConfig();
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    o.maxBackoffDuration = 'foo';
    o.maxDoublings = 42;
    o.maxRetryDuration = 'foo';
    o.minBackoffDuration = 'foo';
    o.retryCount = 42;
  }
  buildCounterRetryConfig--;
  return o;
}

void checkRetryConfig(api.RetryConfig o) {
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    unittest.expect(o.maxBackoffDuration, unittest.equals('foo'));
    unittest.expect(o.maxDoublings, unittest.equals(42));
    unittest.expect(o.maxRetryDuration, unittest.equals('foo'));
    unittest.expect(o.minBackoffDuration, unittest.equals('foo'));
    unittest.expect(o.retryCount, unittest.equals(42));
  }
  buildCounterRetryConfig--;
}

core.int buildCounterRunJobRequest = 0;
api.RunJobRequest buildRunJobRequest() {
  var o = api.RunJobRequest();
  buildCounterRunJobRequest++;
  if (buildCounterRunJobRequest < 3) {}
  buildCounterRunJobRequest--;
  return o;
}

void checkRunJobRequest(api.RunJobRequest o) {
  buildCounterRunJobRequest++;
  if (buildCounterRunJobRequest < 3) {}
  buildCounterRunJobRequest--;
}

core.Map<core.String, core.Object> buildUnnamed2757() {
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

void checkUnnamed2757(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2758() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2757());
  o.add(buildUnnamed2757());
  return o;
}

void checkUnnamed2758(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2757(o[0]);
  checkUnnamed2757(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2758();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2758(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

void main() {
  unittest.group('obj-schema-AppEngineHttpTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppEngineHttpTarget();
      var od = api.AppEngineHttpTarget.fromJson(o.toJson());
      checkAppEngineHttpTarget(od);
    });
  });

  unittest.group('obj-schema-AppEngineRouting', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppEngineRouting();
      var od = api.AppEngineRouting.fromJson(o.toJson());
      checkAppEngineRouting(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-HttpTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpTarget();
      var od = api.HttpTarget.fromJson(o.toJson());
      checkHttpTarget(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildJob();
      var od = api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListLocationsResponse();
      var od = api.ListLocationsResponse.fromJson(o.toJson());
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-OAuthToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildOAuthToken();
      var od = api.OAuthToken.fromJson(o.toJson());
      checkOAuthToken(od);
    });
  });

  unittest.group('obj-schema-OidcToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildOidcToken();
      var od = api.OidcToken.fromJson(o.toJson());
      checkOidcToken(od);
    });
  });

  unittest.group('obj-schema-PauseJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildPauseJobRequest();
      var od = api.PauseJobRequest.fromJson(o.toJson());
      checkPauseJobRequest(od);
    });
  });

  unittest.group('obj-schema-PubsubMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubMessage();
      var od = api.PubsubMessage.fromJson(o.toJson());
      checkPubsubMessage(od);
    });
  });

  unittest.group('obj-schema-PubsubTarget', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubTarget();
      var od = api.PubsubTarget.fromJson(o.toJson());
      checkPubsubTarget(od);
    });
  });

  unittest.group('obj-schema-ResumeJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildResumeJobRequest();
      var od = api.ResumeJobRequest.fromJson(o.toJson());
      checkResumeJobRequest(od);
    });
  });

  unittest.group('obj-schema-RetryConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildRetryConfig();
      var od = api.RetryConfig.fromJson(o.toJson());
      checkRetryConfig(od);
    });
  });

  unittest.group('obj-schema-RunJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRunJobRequest();
      var od = api.RunJobRequest.fromJson(o.toJson());
      checkRunJobRequest(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLocation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListLocationsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--pause', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_request = buildPauseJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PauseJobRequest.fromJson(json);
        checkPauseJobRequest(obj);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .pause(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--resume', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_request = buildResumeJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ResumeJobRequest.fromJson(json);
        checkResumeJobRequest(obj);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .resume(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test('method--run', () {
      var mock = HttpServerMock();
      var res = api.CloudschedulerApi(mock).projects.locations.jobs;
      var arg_request = buildRunJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RunJobRequest.fromJson(json);
        checkRunJobRequest(obj);

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
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });
  });
}
