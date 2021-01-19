// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

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

core.List<core.String> buildUnnamed5719() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5719(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeletePhotosRequest = 0;
api.BatchDeletePhotosRequest buildBatchDeletePhotosRequest() {
  var o = api.BatchDeletePhotosRequest();
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    o.photoIds = buildUnnamed5719();
  }
  buildCounterBatchDeletePhotosRequest--;
  return o;
}

void checkBatchDeletePhotosRequest(api.BatchDeletePhotosRequest o) {
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    checkUnnamed5719(o.photoIds);
  }
  buildCounterBatchDeletePhotosRequest--;
}

core.List<api.Status> buildUnnamed5720() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed5720(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterBatchDeletePhotosResponse = 0;
api.BatchDeletePhotosResponse buildBatchDeletePhotosResponse() {
  var o = api.BatchDeletePhotosResponse();
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    o.status = buildUnnamed5720();
  }
  buildCounterBatchDeletePhotosResponse--;
  return o;
}

void checkBatchDeletePhotosResponse(api.BatchDeletePhotosResponse o) {
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    checkUnnamed5720(o.status);
  }
  buildCounterBatchDeletePhotosResponse--;
}

core.List<api.PhotoResponse> buildUnnamed5721() {
  var o = <api.PhotoResponse>[];
  o.add(buildPhotoResponse());
  o.add(buildPhotoResponse());
  return o;
}

void checkUnnamed5721(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchGetPhotosResponse = 0;
api.BatchGetPhotosResponse buildBatchGetPhotosResponse() {
  var o = api.BatchGetPhotosResponse();
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    o.results = buildUnnamed5721();
  }
  buildCounterBatchGetPhotosResponse--;
  return o;
}

void checkBatchGetPhotosResponse(api.BatchGetPhotosResponse o) {
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    checkUnnamed5721(o.results);
  }
  buildCounterBatchGetPhotosResponse--;
}

core.List<api.UpdatePhotoRequest> buildUnnamed5722() {
  var o = <api.UpdatePhotoRequest>[];
  o.add(buildUpdatePhotoRequest());
  o.add(buildUpdatePhotoRequest());
  return o;
}

void checkUnnamed5722(core.List<api.UpdatePhotoRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdatePhotoRequest(o[0]);
  checkUpdatePhotoRequest(o[1]);
}

core.int buildCounterBatchUpdatePhotosRequest = 0;
api.BatchUpdatePhotosRequest buildBatchUpdatePhotosRequest() {
  var o = api.BatchUpdatePhotosRequest();
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    o.updatePhotoRequests = buildUnnamed5722();
  }
  buildCounterBatchUpdatePhotosRequest--;
  return o;
}

void checkBatchUpdatePhotosRequest(api.BatchUpdatePhotosRequest o) {
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    checkUnnamed5722(o.updatePhotoRequests);
  }
  buildCounterBatchUpdatePhotosRequest--;
}

core.List<api.PhotoResponse> buildUnnamed5723() {
  var o = <api.PhotoResponse>[];
  o.add(buildPhotoResponse());
  o.add(buildPhotoResponse());
  return o;
}

void checkUnnamed5723(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchUpdatePhotosResponse = 0;
api.BatchUpdatePhotosResponse buildBatchUpdatePhotosResponse() {
  var o = api.BatchUpdatePhotosResponse();
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    o.results = buildUnnamed5723();
  }
  buildCounterBatchUpdatePhotosResponse--;
  return o;
}

void checkBatchUpdatePhotosResponse(api.BatchUpdatePhotosResponse o) {
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    checkUnnamed5723(o.results);
  }
  buildCounterBatchUpdatePhotosResponse--;
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  var o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.target = buildPhotoId();
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    checkPhotoId(o.target);
  }
  buildCounterConnection--;
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

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  var o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(o.latitude, unittest.equals(42.0));
    unittest.expect(o.longitude, unittest.equals(42.0));
  }
  buildCounterLatLng--;
}

core.int buildCounterLevel = 0;
api.Level buildLevel() {
  var o = api.Level();
  buildCounterLevel++;
  if (buildCounterLevel < 3) {
    o.name = 'foo';
    o.number = 42.0;
  }
  buildCounterLevel--;
  return o;
}

void checkLevel(api.Level o) {
  buildCounterLevel++;
  if (buildCounterLevel < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42.0));
  }
  buildCounterLevel--;
}

core.List<api.Photo> buildUnnamed5724() {
  var o = <api.Photo>[];
  o.add(buildPhoto());
  o.add(buildPhoto());
  return o;
}

void checkUnnamed5724(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.int buildCounterListPhotosResponse = 0;
api.ListPhotosResponse buildListPhotosResponse() {
  var o = api.ListPhotosResponse();
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    o.nextPageToken = 'foo';
    o.photos = buildUnnamed5724();
  }
  buildCounterListPhotosResponse--;
  return o;
}

void checkListPhotosResponse(api.ListPhotosResponse o) {
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed5724(o.photos);
  }
  buildCounterListPhotosResponse--;
}

core.Map<core.String, core.Object> buildUnnamed5725() {
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

void checkUnnamed5725(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5726() {
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

void checkUnnamed5726(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed5725();
    o.name = 'foo';
    o.response = buildUnnamed5726();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed5725(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5726(o.response);
  }
  buildCounterOperation--;
}

core.List<api.Connection> buildUnnamed5727() {
  var o = <api.Connection>[];
  o.add(buildConnection());
  o.add(buildConnection());
  return o;
}

void checkUnnamed5727(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<api.Place> buildUnnamed5728() {
  var o = <api.Place>[];
  o.add(buildPlace());
  o.add(buildPlace());
  return o;
}

void checkUnnamed5728(core.List<api.Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlace(o[0]);
  checkPlace(o[1]);
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  var o = api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.captureTime = 'foo';
    o.connections = buildUnnamed5727();
    o.downloadUrl = 'foo';
    o.mapsPublishStatus = 'foo';
    o.photoId = buildPhotoId();
    o.places = buildUnnamed5728();
    o.pose = buildPose();
    o.shareLink = 'foo';
    o.thumbnailUrl = 'foo';
    o.transferStatus = 'foo';
    o.uploadReference = buildUploadRef();
    o.viewCount = 'foo';
  }
  buildCounterPhoto--;
  return o;
}

void checkPhoto(api.Photo o) {
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    unittest.expect(o.captureTime, unittest.equals('foo'));
    checkUnnamed5727(o.connections);
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.mapsPublishStatus, unittest.equals('foo'));
    checkPhotoId(o.photoId);
    checkUnnamed5728(o.places);
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
api.PhotoId buildPhotoId() {
  var o = api.PhotoId();
  buildCounterPhotoId++;
  if (buildCounterPhotoId < 3) {
    o.id = 'foo';
  }
  buildCounterPhotoId--;
  return o;
}

void checkPhotoId(api.PhotoId o) {
  buildCounterPhotoId++;
  if (buildCounterPhotoId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterPhotoId--;
}

core.int buildCounterPhotoResponse = 0;
api.PhotoResponse buildPhotoResponse() {
  var o = api.PhotoResponse();
  buildCounterPhotoResponse++;
  if (buildCounterPhotoResponse < 3) {
    o.photo = buildPhoto();
    o.status = buildStatus();
  }
  buildCounterPhotoResponse--;
  return o;
}

void checkPhotoResponse(api.PhotoResponse o) {
  buildCounterPhotoResponse++;
  if (buildCounterPhotoResponse < 3) {
    checkPhoto(o.photo);
    checkStatus(o.status);
  }
  buildCounterPhotoResponse--;
}

core.int buildCounterPlace = 0;
api.Place buildPlace() {
  var o = api.Place();
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    o.languageCode = 'foo';
    o.name = 'foo';
    o.placeId = 'foo';
  }
  buildCounterPlace--;
  return o;
}

void checkPlace(api.Place o) {
  buildCounterPlace++;
  if (buildCounterPlace < 3) {
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.placeId, unittest.equals('foo'));
  }
  buildCounterPlace--;
}

core.int buildCounterPose = 0;
api.Pose buildPose() {
  var o = api.Pose();
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

void checkPose(api.Pose o) {
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

core.Map<core.String, core.Object> buildUnnamed5729() {
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

void checkUnnamed5729(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5730() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5729());
  o.add(buildUnnamed5729());
  return o;
}

void checkUnnamed5730(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5729(o[0]);
  checkUnnamed5729(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5730();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed5730(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterUpdatePhotoRequest = 0;
api.UpdatePhotoRequest buildUpdatePhotoRequest() {
  var o = api.UpdatePhotoRequest();
  buildCounterUpdatePhotoRequest++;
  if (buildCounterUpdatePhotoRequest < 3) {
    o.photo = buildPhoto();
    o.updateMask = 'foo';
  }
  buildCounterUpdatePhotoRequest--;
  return o;
}

void checkUpdatePhotoRequest(api.UpdatePhotoRequest o) {
  buildCounterUpdatePhotoRequest++;
  if (buildCounterUpdatePhotoRequest < 3) {
    checkPhoto(o.photo);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterUpdatePhotoRequest--;
}

core.int buildCounterUploadRef = 0;
api.UploadRef buildUploadRef() {
  var o = api.UploadRef();
  buildCounterUploadRef++;
  if (buildCounterUploadRef < 3) {
    o.uploadUrl = 'foo';
  }
  buildCounterUploadRef--;
  return o;
}

void checkUploadRef(api.UploadRef o) {
  buildCounterUploadRef++;
  if (buildCounterUploadRef < 3) {
    unittest.expect(o.uploadUrl, unittest.equals('foo'));
  }
  buildCounterUploadRef--;
}

core.List<core.String> buildUnnamed5731() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5731(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-BatchDeletePhotosRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeletePhotosRequest();
      var od = api.BatchDeletePhotosRequest.fromJson(o.toJson());
      checkBatchDeletePhotosRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeletePhotosResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchDeletePhotosResponse();
      var od = api.BatchDeletePhotosResponse.fromJson(o.toJson());
      checkBatchDeletePhotosResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetPhotosResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchGetPhotosResponse();
      var od = api.BatchGetPhotosResponse.fromJson(o.toJson());
      checkBatchGetPhotosResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePhotosRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdatePhotosRequest();
      var od = api.BatchUpdatePhotosRequest.fromJson(o.toJson());
      checkBatchUpdatePhotosRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePhotosResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdatePhotosResponse();
      var od = api.BatchUpdatePhotosResponse.fromJson(o.toJson());
      checkBatchUpdatePhotosResponse(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnection();
      var od = api.Connection.fromJson(o.toJson());
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () {
      var o = buildLatLng();
      var od = api.LatLng.fromJson(o.toJson());
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-Level', () {
    unittest.test('to-json--from-json', () {
      var o = buildLevel();
      var od = api.Level.fromJson(o.toJson());
      checkLevel(od);
    });
  });

  unittest.group('obj-schema-ListPhotosResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPhotosResponse();
      var od = api.ListPhotosResponse.fromJson(o.toJson());
      checkListPhotosResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhoto();
      var od = api.Photo.fromJson(o.toJson());
      checkPhoto(od);
    });
  });

  unittest.group('obj-schema-PhotoId', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhotoId();
      var od = api.PhotoId.fromJson(o.toJson());
      checkPhotoId(od);
    });
  });

  unittest.group('obj-schema-PhotoResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPhotoResponse();
      var od = api.PhotoResponse.fromJson(o.toJson());
      checkPhotoResponse(od);
    });
  });

  unittest.group('obj-schema-Place', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlace();
      var od = api.Place.fromJson(o.toJson());
      checkPlace(od);
    });
  });

  unittest.group('obj-schema-Pose', () {
    unittest.test('to-json--from-json', () {
      var o = buildPose();
      var od = api.Pose.fromJson(o.toJson());
      checkPose(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-UpdatePhotoRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdatePhotoRequest();
      var od = api.UpdatePhotoRequest.fromJson(o.toJson());
      checkUpdatePhotoRequest(od);
    });
  });

  unittest.group('obj-schema-UploadRef', () {
    unittest.test('to-json--from-json', () {
      var o = buildUploadRef();
      var od = api.UploadRef.fromJson(o.toJson());
      checkUploadRef(od);
    });
  });

  unittest.group('resource-PhotoResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.PhotoResourceApi res = api.StreetviewpublishApi(mock).photo;
      var arg_request = buildPhoto();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Photo.fromJson(json);
        checkPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/photo"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPhoto(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PhotoResourceApi res = api.StreetviewpublishApi(mock).photo;
      var arg_photoId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_photoId'));

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
          .delete(arg_photoId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PhotoResourceApi res = api.StreetviewpublishApi(mock).photo;
      var arg_photoId = 'foo';
      var arg_view = 'foo';
      var arg_languageCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_photoId'));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
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

    unittest.test('method--startUpload', () {
      var mock = HttpServerMock();
      api.PhotoResourceApi res = api.StreetviewpublishApi(mock).photo;
      var arg_request = buildEmpty();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Empty.fromJson(json);
        checkEmpty(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("v1/photo:startUpload"));
        pathOffset += 20;

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
        var resp = convert.json.encode(buildUploadRef());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startUpload(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUploadRef(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PhotoResourceApi res = api.StreetviewpublishApi(mock).photo;
      var arg_request = buildPhoto();
      var arg_id = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Photo.fromJson(json);
        checkPhoto(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photo/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPhoto(response);
      })));
    });
  });

  unittest.group('resource-PhotosResourceApi', () {
    unittest.test('method--batchDelete', () {
      var mock = HttpServerMock();
      api.PhotosResourceApi res = api.StreetviewpublishApi(mock).photos;
      var arg_request = buildBatchDeletePhotosRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchDeletePhotosRequest.fromJson(json);
        checkBatchDeletePhotosRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/photos:batchDelete"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildBatchDeletePhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchDelete(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchDeletePhotosResponse(response);
      })));
    });

    unittest.test('method--batchGet', () {
      var mock = HttpServerMock();
      api.PhotosResourceApi res = api.StreetviewpublishApi(mock).photos;
      var arg_view = 'foo';
      var arg_languageCode = 'foo';
      var arg_photoIds = buildUnnamed5731();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("v1/photos:batchGet"));
        pathOffset += 18;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["photoIds"], unittest.equals(arg_photoIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchGetPhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
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

    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      api.PhotosResourceApi res = api.StreetviewpublishApi(mock).photos;
      var arg_request = buildBatchUpdatePhotosRequest();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdatePhotosRequest.fromJson(json);
        checkBatchUpdatePhotosRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("v1/photos:batchUpdate"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildBatchUpdatePhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdatePhotosResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PhotosResourceApi res = api.StreetviewpublishApi(mock).photos;
      var arg_pageToken = 'foo';
      var arg_pageSize = 42;
      var arg_filter = 'foo';
      var arg_languageCode = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/photos"));
        pathOffset += 9;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              languageCode: arg_languageCode,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPhotosResponse(response);
      })));
    });
  });
}
