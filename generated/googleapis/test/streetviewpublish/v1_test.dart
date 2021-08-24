// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/streetviewpublish/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7770() => [
      'foo',
      'foo',
    ];

void checkUnnamed7770(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBatchDeletePhotosRequest = 0;
api.BatchDeletePhotosRequest buildBatchDeletePhotosRequest() {
  final o = api.BatchDeletePhotosRequest();
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    o.photoIds = buildUnnamed7770();
  }
  buildCounterBatchDeletePhotosRequest--;
  return o;
}

void checkBatchDeletePhotosRequest(api.BatchDeletePhotosRequest o) {
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    checkUnnamed7770(o.photoIds!);
  }
  buildCounterBatchDeletePhotosRequest--;
}

core.List<api.Status> buildUnnamed7771() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed7771(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterBatchDeletePhotosResponse = 0;
api.BatchDeletePhotosResponse buildBatchDeletePhotosResponse() {
  final o = api.BatchDeletePhotosResponse();
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    o.status = buildUnnamed7771();
  }
  buildCounterBatchDeletePhotosResponse--;
  return o;
}

void checkBatchDeletePhotosResponse(api.BatchDeletePhotosResponse o) {
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    checkUnnamed7771(o.status!);
  }
  buildCounterBatchDeletePhotosResponse--;
}

core.List<api.PhotoResponse> buildUnnamed7772() => [
      buildPhotoResponse(),
      buildPhotoResponse(),
    ];

void checkUnnamed7772(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchGetPhotosResponse = 0;
api.BatchGetPhotosResponse buildBatchGetPhotosResponse() {
  final o = api.BatchGetPhotosResponse();
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    o.results = buildUnnamed7772();
  }
  buildCounterBatchGetPhotosResponse--;
  return o;
}

void checkBatchGetPhotosResponse(api.BatchGetPhotosResponse o) {
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    checkUnnamed7772(o.results!);
  }
  buildCounterBatchGetPhotosResponse--;
}

core.List<api.UpdatePhotoRequest> buildUnnamed7773() => [
      buildUpdatePhotoRequest(),
      buildUpdatePhotoRequest(),
    ];

void checkUnnamed7773(core.List<api.UpdatePhotoRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdatePhotoRequest(o[0]);
  checkUpdatePhotoRequest(o[1]);
}

core.int buildCounterBatchUpdatePhotosRequest = 0;
api.BatchUpdatePhotosRequest buildBatchUpdatePhotosRequest() {
  final o = api.BatchUpdatePhotosRequest();
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    o.updatePhotoRequests = buildUnnamed7773();
  }
  buildCounterBatchUpdatePhotosRequest--;
  return o;
}

void checkBatchUpdatePhotosRequest(api.BatchUpdatePhotosRequest o) {
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    checkUnnamed7773(o.updatePhotoRequests!);
  }
  buildCounterBatchUpdatePhotosRequest--;
}

core.List<api.PhotoResponse> buildUnnamed7774() => [
      buildPhotoResponse(),
      buildPhotoResponse(),
    ];

void checkUnnamed7774(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchUpdatePhotosResponse = 0;
api.BatchUpdatePhotosResponse buildBatchUpdatePhotosResponse() {
  final o = api.BatchUpdatePhotosResponse();
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    o.results = buildUnnamed7774();
  }
  buildCounterBatchUpdatePhotosResponse--;
  return o;
}

void checkBatchUpdatePhotosResponse(api.BatchUpdatePhotosResponse o) {
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    checkUnnamed7774(o.results!);
  }
  buildCounterBatchUpdatePhotosResponse--;
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
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
    checkPhotoId(o.target!);
  }
  buildCounterConnection--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
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
  final o = api.LatLng();
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
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.int buildCounterLevel = 0;
api.Level buildLevel() {
  final o = api.Level();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42.0),
    );
  }
  buildCounterLevel--;
}

core.List<api.Photo> buildUnnamed7775() => [
      buildPhoto(),
      buildPhoto(),
    ];

void checkUnnamed7775(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.int buildCounterListPhotosResponse = 0;
api.ListPhotosResponse buildListPhotosResponse() {
  final o = api.ListPhotosResponse();
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    o.nextPageToken = 'foo';
    o.photos = buildUnnamed7775();
  }
  buildCounterListPhotosResponse--;
  return o;
}

void checkListPhotosResponse(api.ListPhotosResponse o) {
  buildCounterListPhotosResponse++;
  if (buildCounterListPhotosResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7775(o.photos!);
  }
  buildCounterListPhotosResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7776() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7776(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed7777() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7777(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed7776();
    o.name = 'foo';
    o.response = buildUnnamed7777();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed7776(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7777(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Connection> buildUnnamed7778() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed7778(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<api.Place> buildUnnamed7779() => [
      buildPlace(),
      buildPlace(),
    ];

void checkUnnamed7779(core.List<api.Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlace(o[0]);
  checkPlace(o[1]);
}

core.int buildCounterPhoto = 0;
api.Photo buildPhoto() {
  final o = api.Photo();
  buildCounterPhoto++;
  if (buildCounterPhoto < 3) {
    o.captureTime = 'foo';
    o.connections = buildUnnamed7778();
    o.downloadUrl = 'foo';
    o.mapsPublishStatus = 'foo';
    o.photoId = buildPhotoId();
    o.places = buildUnnamed7779();
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
    unittest.expect(
      o.captureTime!,
      unittest.equals('foo'),
    );
    checkUnnamed7778(o.connections!);
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mapsPublishStatus!,
      unittest.equals('foo'),
    );
    checkPhotoId(o.photoId!);
    checkUnnamed7779(o.places!);
    checkPose(o.pose!);
    unittest.expect(
      o.shareLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transferStatus!,
      unittest.equals('foo'),
    );
    checkUploadRef(o.uploadReference!);
    unittest.expect(
      o.viewCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoto--;
}

core.int buildCounterPhotoId = 0;
api.PhotoId buildPhotoId() {
  final o = api.PhotoId();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhotoId--;
}

core.int buildCounterPhotoResponse = 0;
api.PhotoResponse buildPhotoResponse() {
  final o = api.PhotoResponse();
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
    checkPhoto(o.photo!);
    checkStatus(o.status!);
  }
  buildCounterPhotoResponse--;
}

core.int buildCounterPlace = 0;
api.Place buildPlace() {
  final o = api.Place();
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
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlace--;
}

core.int buildCounterPose = 0;
api.Pose buildPose() {
  final o = api.Pose();
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
    unittest.expect(
      o.accuracyMeters!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.altitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.heading!,
      unittest.equals(42.0),
    );
    checkLatLng(o.latLngPair!);
    checkLevel(o.level!);
    unittest.expect(
      o.pitch!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.roll!,
      unittest.equals(42.0),
    );
  }
  buildCounterPose--;
}

core.Map<core.String, core.Object> buildUnnamed7780() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7780(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7781() => [
      buildUnnamed7780(),
      buildUnnamed7780(),
    ];

void checkUnnamed7781(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7780(o[0]);
  checkUnnamed7780(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7781();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed7781(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUpdatePhotoRequest = 0;
api.UpdatePhotoRequest buildUpdatePhotoRequest() {
  final o = api.UpdatePhotoRequest();
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
    checkPhoto(o.photo!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdatePhotoRequest--;
}

core.int buildCounterUploadRef = 0;
api.UploadRef buildUploadRef() {
  final o = api.UploadRef();
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
    unittest.expect(
      o.uploadUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadRef--;
}

core.List<core.String> buildUnnamed7782() => [
      'foo',
      'foo',
    ];

void checkUnnamed7782(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

void main() {
  unittest.group('obj-schema-BatchDeletePhotosRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeletePhotosRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeletePhotosRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePhotosRequest(od);
    });
  });

  unittest.group('obj-schema-BatchDeletePhotosResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeletePhotosResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeletePhotosResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeletePhotosResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetPhotosResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetPhotosResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetPhotosResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetPhotosResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePhotosRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdatePhotosRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdatePhotosRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdatePhotosRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePhotosResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdatePhotosResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdatePhotosResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdatePhotosResponse(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-Level', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Level.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLevel(od);
    });
  });

  unittest.group('obj-schema-ListPhotosResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPhotosResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPhotosResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPhotosResponse(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Photo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhoto(od);
    });
  });

  unittest.group('obj-schema-PhotoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhotoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PhotoId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPhotoId(od);
    });
  });

  unittest.group('obj-schema-PhotoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhotoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhotoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhotoResponse(od);
    });
  });

  unittest.group('obj-schema-Place', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Place.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlace(od);
    });
  });

  unittest.group('obj-schema-Pose', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPose();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pose.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPose(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-UpdatePhotoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePhotoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePhotoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePhotoRequest(od);
    });
  });

  unittest.group('obj-schema-UploadRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UploadRef.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUploadRef(od);
    });
  });

  unittest.group('resource-PhotoResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photo;
      final arg_request = buildPhoto();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Photo.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPhoto(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/photo'),
        );
        pathOffset += 8;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkPhoto(response as api.Photo);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photo;
      final arg_photoId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/photo/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_photoId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_photoId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photo;
      final arg_photoId = 'foo';
      final arg_languageCode = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/photo/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_photoId'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_photoId,
          languageCode: arg_languageCode, view: arg_view, $fields: arg_$fields);
      checkPhoto(response as api.Photo);
    });

    unittest.test('method--startUpload', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photo;
      final arg_request = buildEmpty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Empty.fromJson(json as core.Map<core.String, core.dynamic>);
        checkEmpty(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('v1/photo:startUpload'),
        );
        pathOffset += 20;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUploadRef());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startUpload(arg_request, $fields: arg_$fields);
      checkUploadRef(response as api.UploadRef);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photo;
      final arg_request = buildPhoto();
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Photo.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPhoto(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/photo/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPhoto());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPhoto(response as api.Photo);
    });
  });

  unittest.group('resource-PhotosResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photos;
      final arg_request = buildBatchDeletePhotosRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeletePhotosRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchDeletePhotosRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1/photos:batchDelete'),
        );
        pathOffset += 21;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchDeletePhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchDelete(arg_request, $fields: arg_$fields);
      checkBatchDeletePhotosResponse(response as api.BatchDeletePhotosResponse);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photos;
      final arg_languageCode = 'foo';
      final arg_photoIds = buildUnnamed7782();
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1/photos:batchGet'),
        );
        pathOffset += 18;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['photoIds']!,
          unittest.equals(arg_photoIds),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetPhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          languageCode: arg_languageCode,
          photoIds: arg_photoIds,
          view: arg_view,
          $fields: arg_$fields);
      checkBatchGetPhotosResponse(response as api.BatchGetPhotosResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photos;
      final arg_request = buildBatchUpdatePhotosRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdatePhotosRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdatePhotosRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('v1/photos:batchUpdate'),
        );
        pathOffset += 21;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchUpdatePhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, $fields: arg_$fields);
      checkBatchUpdatePhotosResponse(response as api.BatchUpdatePhotosResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photos;
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/photos'),
        );
        pathOffset += 9;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPhotosResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListPhotosResponse(response as api.ListPhotosResponse);
    });
  });
}
