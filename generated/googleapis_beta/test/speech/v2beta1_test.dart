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

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/speech/v2beta1.dart' as api;

import '../test_shared.dart';

core.List<api.Operation> buildUnnamed6276() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed6276(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6276();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6276(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.int buildCounterLongRunningRecognizeMetadata = 0;
api.LongRunningRecognizeMetadata buildLongRunningRecognizeMetadata() {
  var o = api.LongRunningRecognizeMetadata();
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    o.lastUpdateTime = 'foo';
    o.progressPercent = 42;
    o.startTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterLongRunningRecognizeMetadata--;
  return o;
}

void checkLongRunningRecognizeMetadata(api.LongRunningRecognizeMetadata o) {
  buildCounterLongRunningRecognizeMetadata++;
  if (buildCounterLongRunningRecognizeMetadata < 3) {
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.progressPercent, unittest.equals(42));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterLongRunningRecognizeMetadata--;
}

core.List<api.SpeechRecognitionResult> buildUnnamed6277() {
  var o = <api.SpeechRecognitionResult>[];
  o.add(buildSpeechRecognitionResult());
  o.add(buildSpeechRecognitionResult());
  return o;
}

void checkUnnamed6277(core.List<api.SpeechRecognitionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionResult(o[0] as api.SpeechRecognitionResult);
  checkSpeechRecognitionResult(o[1] as api.SpeechRecognitionResult);
}

core.int buildCounterLongRunningRecognizeResponse = 0;
api.LongRunningRecognizeResponse buildLongRunningRecognizeResponse() {
  var o = api.LongRunningRecognizeResponse();
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    o.results = buildUnnamed6277();
  }
  buildCounterLongRunningRecognizeResponse--;
  return o;
}

void checkLongRunningRecognizeResponse(api.LongRunningRecognizeResponse o) {
  buildCounterLongRunningRecognizeResponse++;
  if (buildCounterLongRunningRecognizeResponse < 3) {
    checkUnnamed6277(o.results);
  }
  buildCounterLongRunningRecognizeResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6278() {
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

void checkUnnamed6278(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6279() {
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

void checkUnnamed6279(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6278();
    o.name = 'foo';
    o.response = buildUnnamed6279();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed6278(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6279(o.response);
  }
  buildCounterOperation--;
}

core.List<api.WordInfo> buildUnnamed6280() {
  var o = <api.WordInfo>[];
  o.add(buildWordInfo());
  o.add(buildWordInfo());
  return o;
}

void checkUnnamed6280(core.List<api.WordInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWordInfo(o[0] as api.WordInfo);
  checkWordInfo(o[1] as api.WordInfo);
}

core.int buildCounterSpeechRecognitionAlternative = 0;
api.SpeechRecognitionAlternative buildSpeechRecognitionAlternative() {
  var o = api.SpeechRecognitionAlternative();
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    o.confidence = 42.0;
    o.transcript = 'foo';
    o.words = buildUnnamed6280();
  }
  buildCounterSpeechRecognitionAlternative--;
  return o;
}

void checkSpeechRecognitionAlternative(api.SpeechRecognitionAlternative o) {
  buildCounterSpeechRecognitionAlternative++;
  if (buildCounterSpeechRecognitionAlternative < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.transcript, unittest.equals('foo'));
    checkUnnamed6280(o.words);
  }
  buildCounterSpeechRecognitionAlternative--;
}

core.List<api.SpeechRecognitionAlternative> buildUnnamed6281() {
  var o = <api.SpeechRecognitionAlternative>[];
  o.add(buildSpeechRecognitionAlternative());
  o.add(buildSpeechRecognitionAlternative());
  return o;
}

void checkUnnamed6281(core.List<api.SpeechRecognitionAlternative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpeechRecognitionAlternative(o[0] as api.SpeechRecognitionAlternative);
  checkSpeechRecognitionAlternative(o[1] as api.SpeechRecognitionAlternative);
}

core.int buildCounterSpeechRecognitionResult = 0;
api.SpeechRecognitionResult buildSpeechRecognitionResult() {
  var o = api.SpeechRecognitionResult();
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    o.alternatives = buildUnnamed6281();
    o.channelTag = 42;
    o.languageCode = 'foo';
  }
  buildCounterSpeechRecognitionResult--;
  return o;
}

void checkSpeechRecognitionResult(api.SpeechRecognitionResult o) {
  buildCounterSpeechRecognitionResult++;
  if (buildCounterSpeechRecognitionResult < 3) {
    checkUnnamed6281(o.alternatives);
    unittest.expect(o.channelTag, unittest.equals(42));
    unittest.expect(o.languageCode, unittest.equals('foo'));
  }
  buildCounterSpeechRecognitionResult--;
}

core.Map<core.String, core.Object> buildUnnamed6282() {
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

void checkUnnamed6282(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed6283() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6282());
  o.add(buildUnnamed6282());
  return o;
}

void checkUnnamed6283(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6282(o[0]);
  checkUnnamed6282(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6283();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6283(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterWordInfo = 0;
api.WordInfo buildWordInfo() {
  var o = api.WordInfo();
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    o.confidence = 42.0;
    o.endOffset = 'foo';
    o.speakerTag = 42;
    o.startOffset = 'foo';
    o.word = 'foo';
  }
  buildCounterWordInfo--;
  return o;
}

void checkWordInfo(api.WordInfo o) {
  buildCounterWordInfo++;
  if (buildCounterWordInfo < 3) {
    unittest.expect(o.confidence, unittest.equals(42.0));
    unittest.expect(o.endOffset, unittest.equals('foo'));
    unittest.expect(o.speakerTag, unittest.equals(42));
    unittest.expect(o.startOffset, unittest.equals('foo'));
    unittest.expect(o.word, unittest.equals('foo'));
  }
  buildCounterWordInfo--;
}

void main() {
  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-LongRunningRecognizeMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildLongRunningRecognizeMetadata();
      var od = api.LongRunningRecognizeMetadata.fromJson(o.toJson());
      checkLongRunningRecognizeMetadata(od as api.LongRunningRecognizeMetadata);
    });
  });

  unittest.group('obj-schema-LongRunningRecognizeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLongRunningRecognizeResponse();
      var od = api.LongRunningRecognizeResponse.fromJson(o.toJson());
      checkLongRunningRecognizeResponse(od as api.LongRunningRecognizeResponse);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-SpeechRecognitionAlternative', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpeechRecognitionAlternative();
      var od = api.SpeechRecognitionAlternative.fromJson(o.toJson());
      checkSpeechRecognitionAlternative(od as api.SpeechRecognitionAlternative);
    });
  });

  unittest.group('obj-schema-SpeechRecognitionResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpeechRecognitionResult();
      var od = api.SpeechRecognitionResult.fromJson(o.toJson());
      checkSpeechRecognitionResult(od as api.SpeechRecognitionResult);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-WordInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildWordInfo();
      var od = api.WordInfo.fromJson(o.toJson());
      checkWordInfo(od as api.WordInfo);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.SpeechApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.SpeechApi(mock).projects.locations.operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v2beta1/"));
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });
}
