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

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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
    o.photoIds = buildUnnamed0();
  }
  buildCounterBatchDeletePhotosRequest--;
  return o;
}

void checkBatchDeletePhotosRequest(api.BatchDeletePhotosRequest o) {
  buildCounterBatchDeletePhotosRequest++;
  if (buildCounterBatchDeletePhotosRequest < 3) {
    checkUnnamed0(o.photoIds!);
  }
  buildCounterBatchDeletePhotosRequest--;
}

core.List<api.Status> buildUnnamed1() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed1(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterBatchDeletePhotosResponse = 0;
api.BatchDeletePhotosResponse buildBatchDeletePhotosResponse() {
  final o = api.BatchDeletePhotosResponse();
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    o.status = buildUnnamed1();
  }
  buildCounterBatchDeletePhotosResponse--;
  return o;
}

void checkBatchDeletePhotosResponse(api.BatchDeletePhotosResponse o) {
  buildCounterBatchDeletePhotosResponse++;
  if (buildCounterBatchDeletePhotosResponse < 3) {
    checkUnnamed1(o.status!);
  }
  buildCounterBatchDeletePhotosResponse--;
}

core.List<api.PhotoResponse> buildUnnamed2() => [
      buildPhotoResponse(),
      buildPhotoResponse(),
    ];

void checkUnnamed2(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchGetPhotosResponse = 0;
api.BatchGetPhotosResponse buildBatchGetPhotosResponse() {
  final o = api.BatchGetPhotosResponse();
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    o.results = buildUnnamed2();
  }
  buildCounterBatchGetPhotosResponse--;
  return o;
}

void checkBatchGetPhotosResponse(api.BatchGetPhotosResponse o) {
  buildCounterBatchGetPhotosResponse++;
  if (buildCounterBatchGetPhotosResponse < 3) {
    checkUnnamed2(o.results!);
  }
  buildCounterBatchGetPhotosResponse--;
}

core.List<api.UpdatePhotoRequest> buildUnnamed3() => [
      buildUpdatePhotoRequest(),
      buildUpdatePhotoRequest(),
    ];

void checkUnnamed3(core.List<api.UpdatePhotoRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdatePhotoRequest(o[0]);
  checkUpdatePhotoRequest(o[1]);
}

core.int buildCounterBatchUpdatePhotosRequest = 0;
api.BatchUpdatePhotosRequest buildBatchUpdatePhotosRequest() {
  final o = api.BatchUpdatePhotosRequest();
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    o.updatePhotoRequests = buildUnnamed3();
  }
  buildCounterBatchUpdatePhotosRequest--;
  return o;
}

void checkBatchUpdatePhotosRequest(api.BatchUpdatePhotosRequest o) {
  buildCounterBatchUpdatePhotosRequest++;
  if (buildCounterBatchUpdatePhotosRequest < 3) {
    checkUnnamed3(o.updatePhotoRequests!);
  }
  buildCounterBatchUpdatePhotosRequest--;
}

core.List<api.PhotoResponse> buildUnnamed4() => [
      buildPhotoResponse(),
      buildPhotoResponse(),
    ];

void checkUnnamed4(core.List<api.PhotoResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhotoResponse(o[0]);
  checkPhotoResponse(o[1]);
}

core.int buildCounterBatchUpdatePhotosResponse = 0;
api.BatchUpdatePhotosResponse buildBatchUpdatePhotosResponse() {
  final o = api.BatchUpdatePhotosResponse();
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    o.results = buildUnnamed4();
  }
  buildCounterBatchUpdatePhotosResponse--;
  return o;
}

void checkBatchUpdatePhotosResponse(api.BatchUpdatePhotosResponse o) {
  buildCounterBatchUpdatePhotosResponse++;
  if (buildCounterBatchUpdatePhotosResponse < 3) {
    checkUnnamed4(o.results!);
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

core.int buildCounterGpsDataGapFailureDetails = 0;
api.GpsDataGapFailureDetails buildGpsDataGapFailureDetails() {
  final o = api.GpsDataGapFailureDetails();
  buildCounterGpsDataGapFailureDetails++;
  if (buildCounterGpsDataGapFailureDetails < 3) {
    o.gapDuration = 'foo';
    o.gapStartTime = 'foo';
  }
  buildCounterGpsDataGapFailureDetails--;
  return o;
}

void checkGpsDataGapFailureDetails(api.GpsDataGapFailureDetails o) {
  buildCounterGpsDataGapFailureDetails++;
  if (buildCounterGpsDataGapFailureDetails < 3) {
    unittest.expect(
      o.gapDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gapStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGpsDataGapFailureDetails--;
}

core.List<api.Measurement3d> buildUnnamed5() => [
      buildMeasurement3d(),
      buildMeasurement3d(),
    ];

void checkUnnamed5(core.List<api.Measurement3d> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasurement3d(o[0]);
  checkMeasurement3d(o[1]);
}

core.List<api.Measurement3d> buildUnnamed6() => [
      buildMeasurement3d(),
      buildMeasurement3d(),
    ];

void checkUnnamed6(core.List<api.Measurement3d> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasurement3d(o[0]);
  checkMeasurement3d(o[1]);
}

core.List<api.Measurement3d> buildUnnamed7() => [
      buildMeasurement3d(),
      buildMeasurement3d(),
    ];

void checkUnnamed7(core.List<api.Measurement3d> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMeasurement3d(o[0]);
  checkMeasurement3d(o[1]);
}

core.int buildCounterImu = 0;
api.Imu buildImu() {
  final o = api.Imu();
  buildCounterImu++;
  if (buildCounterImu < 3) {
    o.accelMpsps = buildUnnamed5();
    o.gyroRps = buildUnnamed6();
    o.magUt = buildUnnamed7();
  }
  buildCounterImu--;
  return o;
}

void checkImu(api.Imu o) {
  buildCounterImu++;
  if (buildCounterImu < 3) {
    checkUnnamed5(o.accelMpsps!);
    checkUnnamed6(o.gyroRps!);
    checkUnnamed7(o.magUt!);
  }
  buildCounterImu--;
}

core.int buildCounterImuDataGapFailureDetails = 0;
api.ImuDataGapFailureDetails buildImuDataGapFailureDetails() {
  final o = api.ImuDataGapFailureDetails();
  buildCounterImuDataGapFailureDetails++;
  if (buildCounterImuDataGapFailureDetails < 3) {
    o.gapDuration = 'foo';
    o.gapStartTime = 'foo';
  }
  buildCounterImuDataGapFailureDetails--;
  return o;
}

void checkImuDataGapFailureDetails(api.ImuDataGapFailureDetails o) {
  buildCounterImuDataGapFailureDetails++;
  if (buildCounterImuDataGapFailureDetails < 3) {
    unittest.expect(
      o.gapDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gapStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterImuDataGapFailureDetails--;
}

core.int buildCounterInsufficientGpsFailureDetails = 0;
api.InsufficientGpsFailureDetails buildInsufficientGpsFailureDetails() {
  final o = api.InsufficientGpsFailureDetails();
  buildCounterInsufficientGpsFailureDetails++;
  if (buildCounterInsufficientGpsFailureDetails < 3) {
    o.gpsPointsFound = 42;
  }
  buildCounterInsufficientGpsFailureDetails--;
  return o;
}

void checkInsufficientGpsFailureDetails(api.InsufficientGpsFailureDetails o) {
  buildCounterInsufficientGpsFailureDetails++;
  if (buildCounterInsufficientGpsFailureDetails < 3) {
    unittest.expect(
      o.gpsPointsFound!,
      unittest.equals(42),
    );
  }
  buildCounterInsufficientGpsFailureDetails--;
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

core.int buildCounterLatLngBounds = 0;
api.LatLngBounds buildLatLngBounds() {
  final o = api.LatLngBounds();
  buildCounterLatLngBounds++;
  if (buildCounterLatLngBounds < 3) {
    o.northeast = buildLatLng();
    o.southwest = buildLatLng();
  }
  buildCounterLatLngBounds--;
  return o;
}

void checkLatLngBounds(api.LatLngBounds o) {
  buildCounterLatLngBounds++;
  if (buildCounterLatLngBounds < 3) {
    checkLatLng(o.northeast!);
    checkLatLng(o.southwest!);
  }
  buildCounterLatLngBounds--;
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

core.List<api.Operation> buildUnnamed8() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed8(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListPhotoSequencesResponse = 0;
api.ListPhotoSequencesResponse buildListPhotoSequencesResponse() {
  final o = api.ListPhotoSequencesResponse();
  buildCounterListPhotoSequencesResponse++;
  if (buildCounterListPhotoSequencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.photoSequences = buildUnnamed8();
  }
  buildCounterListPhotoSequencesResponse--;
  return o;
}

void checkListPhotoSequencesResponse(api.ListPhotoSequencesResponse o) {
  buildCounterListPhotoSequencesResponse++;
  if (buildCounterListPhotoSequencesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.photoSequences!);
  }
  buildCounterListPhotoSequencesResponse--;
}

core.List<api.Photo> buildUnnamed9() => [
      buildPhoto(),
      buildPhoto(),
    ];

void checkUnnamed9(core.List<api.Photo> o) {
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
    o.photos = buildUnnamed9();
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
    checkUnnamed9(o.photos!);
  }
  buildCounterListPhotosResponse--;
}

core.int buildCounterMeasurement3d = 0;
api.Measurement3d buildMeasurement3d() {
  final o = api.Measurement3d();
  buildCounterMeasurement3d++;
  if (buildCounterMeasurement3d < 3) {
    o.captureTime = 'foo';
    o.x = 42.0;
    o.y = 42.0;
    o.z = 42.0;
  }
  buildCounterMeasurement3d--;
  return o;
}

void checkMeasurement3d(api.Measurement3d o) {
  buildCounterMeasurement3d++;
  if (buildCounterMeasurement3d < 3) {
    unittest.expect(
      o.captureTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.x!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.z!,
      unittest.equals(42.0),
    );
  }
  buildCounterMeasurement3d--;
}

core.int buildCounterNotOutdoorsFailureDetails = 0;
api.NotOutdoorsFailureDetails buildNotOutdoorsFailureDetails() {
  final o = api.NotOutdoorsFailureDetails();
  buildCounterNotOutdoorsFailureDetails++;
  if (buildCounterNotOutdoorsFailureDetails < 3) {
    o.startTime = 'foo';
  }
  buildCounterNotOutdoorsFailureDetails--;
  return o;
}

void checkNotOutdoorsFailureDetails(api.NotOutdoorsFailureDetails o) {
  buildCounterNotOutdoorsFailureDetails++;
  if (buildCounterNotOutdoorsFailureDetails < 3) {
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotOutdoorsFailureDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed10();
    o.name = 'foo';
    o.response = buildUnnamed11();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Connection> buildUnnamed12() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed12(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.List<api.Place> buildUnnamed13() => [
      buildPlace(),
      buildPlace(),
    ];

void checkUnnamed13(core.List<api.Place> o) {
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
    o.connections = buildUnnamed12();
    o.downloadUrl = 'foo';
    o.mapsPublishStatus = 'foo';
    o.photoId = buildPhotoId();
    o.places = buildUnnamed13();
    o.pose = buildPose();
    o.shareLink = 'foo';
    o.thumbnailUrl = 'foo';
    o.transferStatus = 'foo';
    o.uploadReference = buildUploadRef();
    o.uploadTime = 'foo';
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
    checkUnnamed12(o.connections!);
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mapsPublishStatus!,
      unittest.equals('foo'),
    );
    checkPhotoId(o.photoId!);
    checkUnnamed13(o.places!);
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
      o.uploadTime!,
      unittest.equals('foo'),
    );
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

core.List<api.Photo> buildUnnamed14() => [
      buildPhoto(),
      buildPhoto(),
    ];

void checkUnnamed14(core.List<api.Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoto(o[0]);
  checkPhoto(o[1]);
}

core.List<api.Pose> buildUnnamed15() => [
      buildPose(),
      buildPose(),
    ];

void checkUnnamed15(core.List<api.Pose> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPose(o[0]);
  checkPose(o[1]);
}

core.int buildCounterPhotoSequence = 0;
api.PhotoSequence buildPhotoSequence() {
  final o = api.PhotoSequence();
  buildCounterPhotoSequence++;
  if (buildCounterPhotoSequence < 3) {
    o.captureTimeOverride = 'foo';
    o.distanceMeters = 42.0;
    o.failureDetails = buildProcessingFailureDetails();
    o.failureReason = 'foo';
    o.filename = 'foo';
    o.gpsSource = 'foo';
    o.id = 'foo';
    o.imu = buildImu();
    o.photos = buildUnnamed14();
    o.processingState = 'foo';
    o.rawGpsTimeline = buildUnnamed15();
    o.sequenceBounds = buildLatLngBounds();
    o.uploadReference = buildUploadRef();
    o.uploadTime = 'foo';
    o.viewCount = 'foo';
  }
  buildCounterPhotoSequence--;
  return o;
}

void checkPhotoSequence(api.PhotoSequence o) {
  buildCounterPhotoSequence++;
  if (buildCounterPhotoSequence < 3) {
    unittest.expect(
      o.captureTimeOverride!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distanceMeters!,
      unittest.equals(42.0),
    );
    checkProcessingFailureDetails(o.failureDetails!);
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gpsSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkImu(o.imu!);
    checkUnnamed14(o.photos!);
    unittest.expect(
      o.processingState!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.rawGpsTimeline!);
    checkLatLngBounds(o.sequenceBounds!);
    checkUploadRef(o.uploadReference!);
    unittest.expect(
      o.uploadTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.viewCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhotoSequence--;
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
    o.gpsRecordTimestampUnixEpoch = 'foo';
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
      o.gpsRecordTimestampUnixEpoch!,
      unittest.equals('foo'),
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

core.int buildCounterProcessingFailureDetails = 0;
api.ProcessingFailureDetails buildProcessingFailureDetails() {
  final o = api.ProcessingFailureDetails();
  buildCounterProcessingFailureDetails++;
  if (buildCounterProcessingFailureDetails < 3) {
    o.gpsDataGapDetails = buildGpsDataGapFailureDetails();
    o.imuDataGapDetails = buildImuDataGapFailureDetails();
    o.insufficientGpsDetails = buildInsufficientGpsFailureDetails();
    o.notOutdoorsDetails = buildNotOutdoorsFailureDetails();
  }
  buildCounterProcessingFailureDetails--;
  return o;
}

void checkProcessingFailureDetails(api.ProcessingFailureDetails o) {
  buildCounterProcessingFailureDetails++;
  if (buildCounterProcessingFailureDetails < 3) {
    checkGpsDataGapFailureDetails(o.gpsDataGapDetails!);
    checkImuDataGapFailureDetails(o.imuDataGapDetails!);
    checkInsufficientGpsFailureDetails(o.insufficientGpsDetails!);
    checkNotOutdoorsFailureDetails(o.notOutdoorsDetails!);
  }
  buildCounterProcessingFailureDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed17() => [
      buildUnnamed16(),
      buildUnnamed16(),
    ];

void checkUnnamed17(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed16(o[0]);
  checkUnnamed16(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed17();
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
    checkUnnamed17(o.details!);
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

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

  unittest.group('obj-schema-GpsDataGapFailureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGpsDataGapFailureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GpsDataGapFailureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGpsDataGapFailureDetails(od);
    });
  });

  unittest.group('obj-schema-Imu', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImu();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Imu.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImu(od);
    });
  });

  unittest.group('obj-schema-ImuDataGapFailureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImuDataGapFailureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImuDataGapFailureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImuDataGapFailureDetails(od);
    });
  });

  unittest.group('obj-schema-InsufficientGpsFailureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsufficientGpsFailureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsufficientGpsFailureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsufficientGpsFailureDetails(od);
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

  unittest.group('obj-schema-LatLngBounds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLngBounds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLngBounds.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLatLngBounds(od);
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

  unittest.group('obj-schema-ListPhotoSequencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPhotoSequencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPhotoSequencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPhotoSequencesResponse(od);
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

  unittest.group('obj-schema-Measurement3d', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeasurement3d();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Measurement3d.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurement3d(od);
    });
  });

  unittest.group('obj-schema-NotOutdoorsFailureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotOutdoorsFailureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotOutdoorsFailureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotOutdoorsFailureDetails(od);
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

  unittest.group('obj-schema-PhotoSequence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhotoSequence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhotoSequence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhotoSequence(od);
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

  unittest.group('obj-schema-ProcessingFailureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessingFailureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessingFailureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProcessingFailureDetails(od);
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

  unittest.group('resource-PhotoSequenceResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photoSequence;
      final arg_request = buildPhotoSequence();
      final arg_inputType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PhotoSequence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPhotoSequence(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/photoSequence'),
        );
        pathOffset += 16;

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
          queryMap['inputType']!.first,
          unittest.equals(arg_inputType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          inputType: arg_inputType, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photoSequence;
      final arg_sequenceId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/photoSequence/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sequenceId'),
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
      final response = await res.delete(arg_sequenceId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photoSequence;
      final arg_sequenceId = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/photoSequence/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sequenceId'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_sequenceId,
          filter: arg_filter, view: arg_view, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startUpload', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photoSequence;
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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1/photoSequence:startUpload'),
        );
        pathOffset += 28;

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
  });

  unittest.group('resource-PhotoSequencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.StreetViewPublishApi(mock).photoSequences;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/photoSequences'),
        );
        pathOffset += 17;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListPhotoSequencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPhotoSequencesResponse(
          response as api.ListPhotoSequencesResponse);
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
      final arg_photoIds = buildUnnamed18();
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
