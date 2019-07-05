library googleapis.streetviewpublish.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/streetviewpublish/v1.dart' as api;

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

buildUnnamed764() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed764(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeletePhotosRequest = 0;
buildBatchDeletePhotosRequest() {
  var o = new api.BatchDeletePhotosRequest();
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    o.photoIds = buildUnnamed764();
  }
  buildCounterBatchDeletePhotosRequest--;
  return o;
}

checkBatchDeletePhotosRequest(api.BatchDeletePhotosRequest o) {
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    checkUnnamed764(o.photoIds);
  }
  buildCounterBatchDeletePhotosRequest--;
}

buildUnnamed765() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed765(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterBatchDeletePhotosResponse = 0;
buildBatchDeletePhotosResponse() {
  var o = new api.BatchDeletePhotosResponse();
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    o.status = buildUnnamed765();
  }
  buildCounterBatchDeletePhotosResponse--;
  return o;
}

checkBatchDeletePhotosResponse(api.BatchDeletePhotosResponse o) {
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    checkUnnamed765(o.status);
  }
  buildCounterBatchDeletePhotosResponse--;
}

buildUnnamed766() {
  var o = new core.List<api.PhotoResponse>();
  o.add(buildPhotoResponse());
  o.add(buildPhotoResponse());
  return o;
}

checkUnnamed766(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchGetPhotosResponse = 0;
buildBatchGetPhotosResponse() {
  var o = new api.BatchGetPhotosResponse();
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    o.results = buildUnnamed766();
  }
  buildCounterBatchGetPhotosResponse--;
  return o;
}

checkBatchGetPhotosResponse(api.BatchGetPhotosResponse o) {
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    checkUnnamed766(o.results);
  }
  buildCounterBatchGetPhotosResponse--;
}

buildUnnamed767() {
  var o = new core.List<api.UpdatePhotoRequest>();
  o.add(buildUpdatePhotoRequest());
  o.add(buildUpdatePhotoRequest());
  return o;
}

checkUnnamed767(core.List<api.UpdatePhotoRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdatePhotoRequest(o[0]);
  checkUpdatePhotoRequest(o[1]);
}

core.int buildCounterBatchUpdatePhotosRequest = 0;
buildBatchUpdatePhotosRequest() {
  var o = new api.BatchUpdatePhotosRequest();
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    o.updatePhotoRequests = buildUnnamed767();
  }
  buildCounterBatchUpdatePhotosRequest--;
  return o;
}

checkBatchUpdatePhotosRequest(api.BatchUpdatePhotosRequest o) {
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    checkUnnamed767(o.updatePhotoRequests);
  }
  buildCounterBatchUpdatePhotosRequest--;
}

buildUnnamed768() {
  var o = new core.List<api.PhotoResponse>();
  o.add(buildPhotoResponse());
  o.add(buildPhotoResponse());
  return o;
}

checkUnnamed768(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchUpdatePhotosResponse = 0;
buildBatchUpdatePhotosResponse() {
  var o = new api.BatchUpdatePhotosResponse();
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    o.results = buildUnnamed768();
  }
  buildCounterBatchUpdatePhotosResponse--;
  return o;
}

checkBatchUpdatePhotosResponse(api.BatchUpdatePhotosResponse o) {
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    checkUnnamed768(o.results);
  }
  buildCounterBatchUpdatePhotosResponse--;
}

core.int buildCounterConnection = 0;
buildConnection() {
  var o = new api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.target = buildPhotoId();
  }
  buildCounterConnection--;
  return o;
}

checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkPhotoId(o.target);
  }
  buildCounterConnection--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterLatLng = 0;
buildLatLng() {
  var o = new api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.int buildCounterLevel = 0;
buildLevel() {
  var o = new api.Level();
  buildCounterLevel++;
  if (buildCounterLevel < 3) {
    o.name = "foo";
    o.number = 42.0;
  }
  buildCounterLevel--;
  return o;
}

checkLevel(api.Level o) {
  buildCounterLevel++;
  if (buildCounterLevel < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42.0));
  }
  buildCounterLevel--;
}

buildUnnamed769() {
  var o = new core.List<api.Photo>();
  o.add(buildPhoto());
  o.add(buildPhoto());
  return o;
}

checkUnnamed769(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.int buildCounterListPhotosResponse = 0;
buildListPhotosResponse() {
  var o = new api.ListPhotosResponse();
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    o.nextPageToken = "foo";
    o.photos = buildUnnamed769();
  }
  buildCounterListPhotosResponse--;
  return o;
}

checkListPhotosResponse(api.ListPhotosResponse o) {
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed769(o.photos);
  }
  buildCounterListPhotosResponse--;
}

buildUnnamed770() {
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

checkUnnamed770(core.Map<core.String, core.Object> o) {
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

buildUnnamed771() {
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

checkUnnamed771(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed770();
    o.name = "foo";
    o.response = buildUnnamed771();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed770(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed771(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed772() {
  var o = new core.List<api.Connection>();
  o.add(buildConnection());
  o.add(buildConnection());
  return o;
}

checkUnnamed772(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

buildUnnamed773() {
  var o = new core.List<api.Place>();
  o.add(buildPlace());
  o.add(buildPlace());
  return o;
}

checkUnnamed773(core.List<api.Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlace(o[0]);
  checkPlace(o[1]);
}

core.int buildCounterPhoto = 0;
buildPhoto() {
  var o = new api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.captureTime = "foo";
    o.connections = buildUnnamed772();
    o.downloadUrl = "foo";
    o.mapsPublishStatus = "foo";
    o.photoId = buildPhotoId();
    o.places = buildUnnamed773();
    o.pose = buildPose();
    o.shareLink = "foo";
    o.thumbnailUrl = "foo";
    o.transferStatus = "foo";
    o.uploadReference = buildUploadRef();
    o.viewCount = "foo";
  }
  buildCounterPhoto--;
  return o;
}

checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(o.captureTime, unittest.equals('foo'));
    checkUnnamed772(o.connections);
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.mapsPublishStatus, unittest.equals('foo'));
    checkPhotoId(o.photoId);
    checkUnnamed773(o.places);
    checkPose(o.pose);
    unittest.expect(o.shareLink, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl, unittest.equals('foo'));
    unittest.expect(o.transferStatus, unittest.equals('foo'));
    checkUploadRef(o.uploadReference);
    unittest.expect(o.viewCount, unittest.equals('foo'));
  }
  buildCounterPhoto--;
}

core.int buildCounterPhotoId = 0;
buildPhotoId() {
  var o = new api.PhotoId();
  buildCounterPhotoId++;
  if (buildCounterPhotoId < 3) {
    o.id = "foo";
  }
  buildCounterPhotoId--;
  return o;
}

checkPhotoId(api.PhotoId o) {
  buildCounterPhotoId++;
  if (buildCounterPhotoId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterPhotoId--;
}

core.int buildCounterPhotoResponse = 0;
buildPhotoResponse() {
  var o = new api.PhotoResponse();
  buildCounterPhotoResponse++;
  if (buildCounterPhotoResponse < 3) {
    o.photo = buildPhoto();
    o.status = buildStatus();
  }
  buildCounterPhotoResponse--;
  return o;
}

checkPhotoResponse(api.PhotoResponse o) {
  buildCounterPhotoResponse++;
  if (buildCounterPhotoResponse < 3) {
    checkPhoto(o.photo);
    checkStatus(o.status);
  }
  buildCounterPhotoResponse--;
}

core.int buildCounterPlace = 0;
buildPlace() {
  var o = new api.Place();
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    o.languageCode = "foo";
    o.name = "foo";
    o.placeId = "foo";
  }
  buildCounterPlace--;
  return o;
}

checkPlace(api.Place o) {
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.placeId, unittest.equals('foo'));
  }
  buildCounterPlace--;
}

core.int buildCounterPose = 0;
buildPose() {
  var o = new api.Pose();
  buildCounterPose++;
  if (buildCounterPose < 3) {
    o.accuracyMeters = 42.0;
    o.altitude = 42.0;
    o.heading = 42.0;
    o.latLngPair = buildLatLng();
    o.level = buildLevel();
    o.pitch = 42.0;
    o.roll = 42.0;
  }
  buildCounterPose--;
  return o;
}

checkPose(api.Pose o) {
  buildCounterPose++;
  if (buildCounterPose < 3) {
    unittest.expect(o.accuracyMeters, unittest.equals(42.0));
    unittest.expect(o.altitude, unittest.equals(42.0));
    unittest.expect(o.heading, unittest.equals(42.0));
    checkLatLng(o.latLngPair);
    checkLevel(o.level);
    unittest.expect(o.pitch, unittest.equals(42.0));
    unittest.expect(o.roll, unittest.equals(42.0));
  }
  buildCounterPose--;
}

buildUnnamed774() {
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

checkUnnamed774(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed775() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed774());
  o.add(buildUnnamed774());
  return o;
}

checkUnnamed775(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed774(o[0]);
  checkUnnamed774(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed775();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed775(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterUpdatePhotoRequest = 0;
buildUpdatePhotoRequest() {
  var o = new api.UpdatePhotoRequest();
  buildCounterUpdatePhotoRequest++;
  if (buildCounterUpdatePhotoRequest < 3) {
    o.photo = buildPhoto();
    o.updateMask = "foo";
  }
  buildCounterUpdatePhotoRequest--;
  return o;
}

checkUpdatePhotoRequest(api.UpdatePhotoRequest o) {
  buildCounterUpdatePhotoRequest++;
  if (buildCounterUpdatePhotoRequest < 3) {
    checkPhoto(o.photo);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdatePhotoRequest--;
}

core.int buildCounterUploadRef = 0;
buildUploadRef() {
  var o = new api.UploadRef();
  buildCounterUploadRef++;
  if (buildCounterUploadRef < 3) {
    o.uploadUrl = "foo";
  }
  buildCounterUploadRef--;
  return o;
}

checkUploadRef(api.UploadRef o) {
  buildCounterUploadRef++;
  if (buildCounterUploadRef < 3) {
    unittest.expect(o.uploadUrl, unittest.equals('foo'));
  }
  buildCounterUploadRef--;
}

buildUnnamed776() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed776(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-BatchDeletePhotosRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeletePhotosRequest();
      var od = new api.BatchDeletePhotosRequest.fromJson(o.toJson());
      checkBatchDeletePhotosRequest(od);
    });
  });

  unittest.group("obj-schema-BatchDeletePhotosResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchDeletePhotosResponse();
      var od = new api.BatchDeletePhotosResponse.fromJson(o.toJson());
      checkBatchDeletePhotosResponse(od);
    });
  });

  unittest.group("obj-schema-BatchGetPhotosResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchGetPhotosResponse();
      var od = new api.BatchGetPhotosResponse.fromJson(o.toJson());
      checkBatchGetPhotosResponse(od);
    });
  });

  unittest.group("obj-schema-BatchUpdatePhotosRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdatePhotosRequest();
      var od = new api.BatchUpdatePhotosRequest.fromJson(o.toJson());
      checkBatchUpdatePhotosRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdatePhotosResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdatePhotosResponse();
      var od = new api.BatchUpdatePhotosResponse.fromJson(o.toJson());
      checkBatchUpdatePhotosResponse(od);
    });
  });

  unittest.group("obj-schema-Connection", () {
    unittest.test("to-json--from-json", () {
      var o = buildConnection();
      var od = new api.Connection.fromJson(o.toJson());
      checkConnection(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-LatLng", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLng();
      var od = new api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group("obj-schema-Level", () {
    unittest.test("to-json--from-json", () {
      var o = buildLevel();
      var od = new api.Level.fromJson(o.toJson());
      checkLevel(od);
    });
  });

  unittest.group("obj-schema-ListPhotosResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPhotosResponse();
      var od = new api.ListPhotosResponse.fromJson(o.toJson());
      checkListPhotosResponse(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Photo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoto();
      var od = new api.Photo.fromJson(o.toJson());
      checkPhoto(od);
    });
  });

  unittest.group("obj-schema-PhotoId", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhotoId();
      var od = new api.PhotoId.fromJson(o.toJson());
      checkPhotoId(od);
    });
  });

  unittest.group("obj-schema-PhotoResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhotoResponse();
      var od = new api.PhotoResponse.fromJson(o.toJson());
      checkPhotoResponse(od);
    });
  });

  unittest.group("obj-schema-Place", () {
    unittest.test("to-json--from-json", () {
      var o = buildPlace();
      var od = new api.Place.fromJson(o.toJson());
      checkPlace(od);
    });
  });

  unittest.group("obj-schema-Pose", () {
    unittest.test("to-json--from-json", () {
      var o = buildPose();
      var od = new api.Pose.fromJson(o.toJson());
      checkPose(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-UpdatePhotoRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdatePhotoRequest();
      var od = new api.UpdatePhotoRequest.fromJson(o.toJson());
      checkUpdatePhotoRequest(od);
    });
  });

  unittest.group("obj-schema-UploadRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildUploadRef();
      var od = new api.UploadRef.fromJson(o.toJson());
      checkUploadRef(od);
    });
  });

  unittest.group("resource-PhotoResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.PhotoResourceApi res = new api.StreetviewpublishApi(mock).photo;
      var arg_request = buildPhoto();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Photo.fromJson(json);
        checkPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/photo"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPhoto(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.PhotoResourceApi res = new api.StreetviewpublishApi(mock).photo;
      var arg_photoId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_photoId"));

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
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_photoId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PhotoResourceApi res = new api.StreetviewpublishApi(mock).photo;
      var arg_photoId = "foo";
      var arg_view = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_photoId"));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_photoId,
              view: arg_view,
              languageCode: arg_languageCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPhoto(response);
      })));
    });

    unittest.test("method--startUpload", () {
      var mock = new HttpServerMock();
      api.PhotoResourceApi res = new api.StreetviewpublishApi(mock).photo;
      var arg_request = buildEmpty();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Empty.fromJson(json);
        checkEmpty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/photo:startUpload"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildUploadRef());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startUpload(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUploadRef(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.PhotoResourceApi res = new api.StreetviewpublishApi(mock).photo;
      var arg_request = buildPhoto();
      var arg_id = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Photo.fromJson(json);
        checkPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

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
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPhoto());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPhoto(response);
      })));
    });
  });

  unittest.group("resource-PhotosResourceApi", () {
    unittest.test("method--batchDelete", () {
      var mock = new HttpServerMock();
      api.PhotosResourceApi res = new api.StreetviewpublishApi(mock).photos;
      var arg_request = buildBatchDeletePhotosRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchDeletePhotosRequest.fromJson(json);
        checkBatchDeletePhotosRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/photos:batchDelete"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildBatchDeletePhotosResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchDeletePhotosResponse(response);
      })));
    });

    unittest.test("method--batchGet", () {
      var mock = new HttpServerMock();
      api.PhotosResourceApi res = new api.StreetviewpublishApi(mock).photos;
      var arg_view = "foo";
      var arg_languageCode = "foo";
      var arg_photoIds = buildUnnamed776();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/photos:batchGet"));
        pathOffset += 18;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["photoIds"], unittest.equals(arg_photoIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchGetPhotosResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchGet(
              view: arg_view,
              languageCode: arg_languageCode,
              photoIds: arg_photoIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchGetPhotosResponse(response);
      })));
    });

    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.PhotosResourceApi res = new api.StreetviewpublishApi(mock).photos;
      var arg_request = buildBatchUpdatePhotosRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdatePhotosRequest.fromJson(json);
        checkBatchUpdatePhotosRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/photos:batchUpdate"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildBatchUpdatePhotosResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdatePhotosResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PhotosResourceApi res = new api.StreetviewpublishApi(mock).photos;
      var arg_view = "foo";
      var arg_filter = "foo";
      var arg_languageCode = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photos"));
        pathOffset += 9;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPhotosResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              view: arg_view,
              filter: arg_filter,
              languageCode: arg_languageCode,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPhotosResponse(response);
      })));
    });
  });
}
