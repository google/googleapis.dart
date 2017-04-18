library googleapis.cloudfunctions.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis/cloudfunctions/v1.dart' as api;

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

buildUnnamed97() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed97(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

core.int buildCounterOperationMetadataV1Beta2 = 0;
buildOperationMetadataV1Beta2() {
  var o = new api.OperationMetadataV1Beta2();
  buildCounterOperationMetadataV1Beta2++;
  if (buildCounterOperationMetadataV1Beta2 < 3) {
    o.request = buildUnnamed97();
    o.target = "foo";
    o.type = "foo";
  }
  buildCounterOperationMetadataV1Beta2--;
  return o;
}

checkOperationMetadataV1Beta2(api.OperationMetadataV1Beta2 o) {
  buildCounterOperationMetadataV1Beta2++;
  if (buildCounterOperationMetadataV1Beta2 < 3) {
    checkUnnamed97(o.request);
    unittest.expect(o.target, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOperationMetadataV1Beta2--;
}


main() {
  unittest.group("obj-schema-OperationMetadataV1Beta2", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadataV1Beta2();
      var od = new api.OperationMetadataV1Beta2.fromJson(o.toJson());
      checkOperationMetadataV1Beta2(od);
    });
  });


}

