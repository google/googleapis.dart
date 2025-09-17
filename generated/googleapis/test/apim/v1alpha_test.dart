// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/apim/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApiObservation = 0;
api.ApiObservation buildApiObservation() {
  final o = api.ApiObservation();
  buildCounterApiObservation++;
  if (buildCounterApiObservation < 3) {
    o.apiOperationCount = 'foo';
    o.createTime = 'foo';
    o.hostname = 'foo';
    o.lastEventDetectedTime = 'foo';
    o.name = 'foo';
    o.serverIps = buildUnnamed0();
    o.sourceLocations = buildUnnamed1();
    o.style = 'foo';
    o.tags = buildUnnamed2();
    o.updateTime = 'foo';
  }
  buildCounterApiObservation--;
  return o;
}

void checkApiObservation(api.ApiObservation o) {
  buildCounterApiObservation++;
  if (buildCounterApiObservation < 3) {
    unittest.expect(o.apiOperationCount!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.lastEventDetectedTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed0(o.serverIps!);
    checkUnnamed1(o.sourceLocations!);
    unittest.expect(o.style!, unittest.equals('foo'));
    checkUnnamed2(o.tags!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterApiObservation--;
}

core.int buildCounterApiOperation = 0;
api.ApiOperation buildApiOperation() {
  final o = api.ApiOperation();
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    o.count = 'foo';
    o.firstSeenTime = 'foo';
    o.httpOperation = buildHttpOperation();
    o.lastSeenTime = 'foo';
    o.name = 'foo';
  }
  buildCounterApiOperation--;
  return o;
}

void checkApiOperation(api.ApiOperation o) {
  buildCounterApiOperation++;
  if (buildCounterApiOperation < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.firstSeenTime!, unittest.equals('foo'));
    checkHttpOperation(o.httpOperation!);
    unittest.expect(o.lastSeenTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterApiOperation--;
}

core.List<api.EditTagsApiObservationsRequest> buildUnnamed3() => [
  buildEditTagsApiObservationsRequest(),
  buildEditTagsApiObservationsRequest(),
];

void checkUnnamed3(core.List<api.EditTagsApiObservationsRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEditTagsApiObservationsRequest(o[0]);
  checkEditTagsApiObservationsRequest(o[1]);
}

core.int buildCounterBatchEditTagsApiObservationsRequest = 0;
api.BatchEditTagsApiObservationsRequest
buildBatchEditTagsApiObservationsRequest() {
  final o = api.BatchEditTagsApiObservationsRequest();
  buildCounterBatchEditTagsApiObservationsRequest++;
  if (buildCounterBatchEditTagsApiObservationsRequest < 3) {
    o.requests = buildUnnamed3();
  }
  buildCounterBatchEditTagsApiObservationsRequest--;
  return o;
}

void checkBatchEditTagsApiObservationsRequest(
  api.BatchEditTagsApiObservationsRequest o,
) {
  buildCounterBatchEditTagsApiObservationsRequest++;
  if (buildCounterBatchEditTagsApiObservationsRequest < 3) {
    checkUnnamed3(o.requests!);
  }
  buildCounterBatchEditTagsApiObservationsRequest--;
}

core.List<api.ApiObservation> buildUnnamed4() => [
  buildApiObservation(),
  buildApiObservation(),
];

void checkUnnamed4(core.List<api.ApiObservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiObservation(o[0]);
  checkApiObservation(o[1]);
}

core.int buildCounterBatchEditTagsApiObservationsResponse = 0;
api.BatchEditTagsApiObservationsResponse
buildBatchEditTagsApiObservationsResponse() {
  final o = api.BatchEditTagsApiObservationsResponse();
  buildCounterBatchEditTagsApiObservationsResponse++;
  if (buildCounterBatchEditTagsApiObservationsResponse < 3) {
    o.apiObservations = buildUnnamed4();
  }
  buildCounterBatchEditTagsApiObservationsResponse--;
  return o;
}

void checkBatchEditTagsApiObservationsResponse(
  api.BatchEditTagsApiObservationsResponse o,
) {
  buildCounterBatchEditTagsApiObservationsResponse++;
  if (buildCounterBatchEditTagsApiObservationsResponse < 3) {
    checkUnnamed4(o.apiObservations!);
  }
  buildCounterBatchEditTagsApiObservationsResponse--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterDisableObservationJobRequest = 0;
api.DisableObservationJobRequest buildDisableObservationJobRequest() {
  final o = api.DisableObservationJobRequest();
  buildCounterDisableObservationJobRequest++;
  if (buildCounterDisableObservationJobRequest < 3) {}
  buildCounterDisableObservationJobRequest--;
  return o;
}

void checkDisableObservationJobRequest(api.DisableObservationJobRequest o) {
  buildCounterDisableObservationJobRequest++;
  if (buildCounterDisableObservationJobRequest < 3) {}
  buildCounterDisableObservationJobRequest--;
}

core.List<api.TagAction> buildUnnamed5() => [
  buildTagAction(),
  buildTagAction(),
];

void checkUnnamed5(core.List<api.TagAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagAction(o[0]);
  checkTagAction(o[1]);
}

core.int buildCounterEditTagsApiObservationsRequest = 0;
api.EditTagsApiObservationsRequest buildEditTagsApiObservationsRequest() {
  final o = api.EditTagsApiObservationsRequest();
  buildCounterEditTagsApiObservationsRequest++;
  if (buildCounterEditTagsApiObservationsRequest < 3) {
    o.apiObservationId = 'foo';
    o.tagActions = buildUnnamed5();
  }
  buildCounterEditTagsApiObservationsRequest--;
  return o;
}

void checkEditTagsApiObservationsRequest(api.EditTagsApiObservationsRequest o) {
  buildCounterEditTagsApiObservationsRequest++;
  if (buildCounterEditTagsApiObservationsRequest < 3) {
    unittest.expect(o.apiObservationId!, unittest.equals('foo'));
    checkUnnamed5(o.tagActions!);
  }
  buildCounterEditTagsApiObservationsRequest--;
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

core.int buildCounterEnableObservationJobRequest = 0;
api.EnableObservationJobRequest buildEnableObservationJobRequest() {
  final o = api.EnableObservationJobRequest();
  buildCounterEnableObservationJobRequest++;
  if (buildCounterEnableObservationJobRequest < 3) {}
  buildCounterEnableObservationJobRequest--;
  return o;
}

void checkEnableObservationJobRequest(api.EnableObservationJobRequest o) {
  buildCounterEnableObservationJobRequest++;
  if (buildCounterEnableObservationJobRequest < 3) {}
  buildCounterEnableObservationJobRequest--;
}

core.List<api.GclbObservationSourcePscNetworkConfig> buildUnnamed6() => [
  buildGclbObservationSourcePscNetworkConfig(),
  buildGclbObservationSourcePscNetworkConfig(),
];

void checkUnnamed6(core.List<api.GclbObservationSourcePscNetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGclbObservationSourcePscNetworkConfig(o[0]);
  checkGclbObservationSourcePscNetworkConfig(o[1]);
}

core.int buildCounterGclbObservationSource = 0;
api.GclbObservationSource buildGclbObservationSource() {
  final o = api.GclbObservationSource();
  buildCounterGclbObservationSource++;
  if (buildCounterGclbObservationSource < 3) {
    o.pscNetworkConfigs = buildUnnamed6();
  }
  buildCounterGclbObservationSource--;
  return o;
}

void checkGclbObservationSource(api.GclbObservationSource o) {
  buildCounterGclbObservationSource++;
  if (buildCounterGclbObservationSource < 3) {
    checkUnnamed6(o.pscNetworkConfigs!);
  }
  buildCounterGclbObservationSource--;
}

core.int buildCounterGclbObservationSourcePscNetworkConfig = 0;
api.GclbObservationSourcePscNetworkConfig
buildGclbObservationSourcePscNetworkConfig() {
  final o = api.GclbObservationSourcePscNetworkConfig();
  buildCounterGclbObservationSourcePscNetworkConfig++;
  if (buildCounterGclbObservationSourcePscNetworkConfig < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterGclbObservationSourcePscNetworkConfig--;
  return o;
}

void checkGclbObservationSourcePscNetworkConfig(
  api.GclbObservationSourcePscNetworkConfig o,
) {
  buildCounterGclbObservationSourcePscNetworkConfig++;
  if (buildCounterGclbObservationSourcePscNetworkConfig < 3) {
    unittest.expect(o.network!, unittest.equals('foo'));
    unittest.expect(o.subnetwork!, unittest.equals('foo'));
  }
  buildCounterGclbObservationSourcePscNetworkConfig--;
}

core.List<api.HttpOperationPathParam> buildUnnamed7() => [
  buildHttpOperationPathParam(),
  buildHttpOperationPathParam(),
];

void checkUnnamed7(core.List<api.HttpOperationPathParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpOperationPathParam(o[0]);
  checkHttpOperationPathParam(o[1]);
}

core.Map<core.String, api.HttpOperationQueryParam> buildUnnamed8() => {
  'x': buildHttpOperationQueryParam(),
  'y': buildHttpOperationQueryParam(),
};

void checkUnnamed8(core.Map<core.String, api.HttpOperationQueryParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpOperationQueryParam(o['x']!);
  checkHttpOperationQueryParam(o['y']!);
}

core.int buildCounterHttpOperation = 0;
api.HttpOperation buildHttpOperation() {
  final o = api.HttpOperation();
  buildCounterHttpOperation++;
  if (buildCounterHttpOperation < 3) {
    o.method = 'foo';
    o.path = 'foo';
    o.pathParams = buildUnnamed7();
    o.queryParams = buildUnnamed8();
    o.request = buildHttpOperationHttpRequest();
    o.response = buildHttpOperationHttpResponse();
  }
  buildCounterHttpOperation--;
  return o;
}

void checkHttpOperation(api.HttpOperation o) {
  buildCounterHttpOperation++;
  if (buildCounterHttpOperation < 3) {
    unittest.expect(o.method!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    checkUnnamed7(o.pathParams!);
    checkUnnamed8(o.queryParams!);
    checkHttpOperationHttpRequest(o.request!);
    checkHttpOperationHttpResponse(o.response!);
  }
  buildCounterHttpOperation--;
}

core.int buildCounterHttpOperationHeader = 0;
api.HttpOperationHeader buildHttpOperationHeader() {
  final o = api.HttpOperationHeader();
  buildCounterHttpOperationHeader++;
  if (buildCounterHttpOperationHeader < 3) {
    o.count = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterHttpOperationHeader--;
  return o;
}

void checkHttpOperationHeader(api.HttpOperationHeader o) {
  buildCounterHttpOperationHeader++;
  if (buildCounterHttpOperationHeader < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterHttpOperationHeader--;
}

core.Map<core.String, api.HttpOperationHeader> buildUnnamed9() => {
  'x': buildHttpOperationHeader(),
  'y': buildHttpOperationHeader(),
};

void checkUnnamed9(core.Map<core.String, api.HttpOperationHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpOperationHeader(o['x']!);
  checkHttpOperationHeader(o['y']!);
}

core.int buildCounterHttpOperationHttpRequest = 0;
api.HttpOperationHttpRequest buildHttpOperationHttpRequest() {
  final o = api.HttpOperationHttpRequest();
  buildCounterHttpOperationHttpRequest++;
  if (buildCounterHttpOperationHttpRequest < 3) {
    o.headers = buildUnnamed9();
  }
  buildCounterHttpOperationHttpRequest--;
  return o;
}

void checkHttpOperationHttpRequest(api.HttpOperationHttpRequest o) {
  buildCounterHttpOperationHttpRequest++;
  if (buildCounterHttpOperationHttpRequest < 3) {
    checkUnnamed9(o.headers!);
  }
  buildCounterHttpOperationHttpRequest--;
}

core.Map<core.String, api.HttpOperationHeader> buildUnnamed10() => {
  'x': buildHttpOperationHeader(),
  'y': buildHttpOperationHeader(),
};

void checkUnnamed10(core.Map<core.String, api.HttpOperationHeader> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpOperationHeader(o['x']!);
  checkHttpOperationHeader(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed11() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed11(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHttpOperationHttpResponse = 0;
api.HttpOperationHttpResponse buildHttpOperationHttpResponse() {
  final o = api.HttpOperationHttpResponse();
  buildCounterHttpOperationHttpResponse++;
  if (buildCounterHttpOperationHttpResponse < 3) {
    o.headers = buildUnnamed10();
    o.responseCodes = buildUnnamed11();
  }
  buildCounterHttpOperationHttpResponse--;
  return o;
}

void checkHttpOperationHttpResponse(api.HttpOperationHttpResponse o) {
  buildCounterHttpOperationHttpResponse++;
  if (buildCounterHttpOperationHttpResponse < 3) {
    checkUnnamed10(o.headers!);
    checkUnnamed11(o.responseCodes!);
  }
  buildCounterHttpOperationHttpResponse--;
}

core.int buildCounterHttpOperationPathParam = 0;
api.HttpOperationPathParam buildHttpOperationPathParam() {
  final o = api.HttpOperationPathParam();
  buildCounterHttpOperationPathParam++;
  if (buildCounterHttpOperationPathParam < 3) {
    o.dataType = 'foo';
    o.position = 42;
  }
  buildCounterHttpOperationPathParam--;
  return o;
}

void checkHttpOperationPathParam(api.HttpOperationPathParam o) {
  buildCounterHttpOperationPathParam++;
  if (buildCounterHttpOperationPathParam < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals(42));
  }
  buildCounterHttpOperationPathParam--;
}

core.int buildCounterHttpOperationQueryParam = 0;
api.HttpOperationQueryParam buildHttpOperationQueryParam() {
  final o = api.HttpOperationQueryParam();
  buildCounterHttpOperationQueryParam++;
  if (buildCounterHttpOperationQueryParam < 3) {
    o.count = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterHttpOperationQueryParam--;
  return o;
}

void checkHttpOperationQueryParam(api.HttpOperationQueryParam o) {
  buildCounterHttpOperationQueryParam++;
  if (buildCounterHttpOperationQueryParam < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterHttpOperationQueryParam--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListApiObservationTagsResponse = 0;
api.ListApiObservationTagsResponse buildListApiObservationTagsResponse() {
  final o = api.ListApiObservationTagsResponse();
  buildCounterListApiObservationTagsResponse++;
  if (buildCounterListApiObservationTagsResponse < 3) {
    o.apiObservationTags = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListApiObservationTagsResponse--;
  return o;
}

void checkListApiObservationTagsResponse(api.ListApiObservationTagsResponse o) {
  buildCounterListApiObservationTagsResponse++;
  if (buildCounterListApiObservationTagsResponse < 3) {
    checkUnnamed12(o.apiObservationTags!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListApiObservationTagsResponse--;
}

core.List<api.ApiObservation> buildUnnamed13() => [
  buildApiObservation(),
  buildApiObservation(),
];

void checkUnnamed13(core.List<api.ApiObservation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiObservation(o[0]);
  checkApiObservation(o[1]);
}

core.int buildCounterListApiObservationsResponse = 0;
api.ListApiObservationsResponse buildListApiObservationsResponse() {
  final o = api.ListApiObservationsResponse();
  buildCounterListApiObservationsResponse++;
  if (buildCounterListApiObservationsResponse < 3) {
    o.apiObservations = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterListApiObservationsResponse--;
  return o;
}

void checkListApiObservationsResponse(api.ListApiObservationsResponse o) {
  buildCounterListApiObservationsResponse++;
  if (buildCounterListApiObservationsResponse < 3) {
    checkUnnamed13(o.apiObservations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListApiObservationsResponse--;
}

core.List<api.ApiOperation> buildUnnamed14() => [
  buildApiOperation(),
  buildApiOperation(),
];

void checkUnnamed14(core.List<api.ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApiOperation(o[0]);
  checkApiOperation(o[1]);
}

core.int buildCounterListApiOperationsResponse = 0;
api.ListApiOperationsResponse buildListApiOperationsResponse() {
  final o = api.ListApiOperationsResponse();
  buildCounterListApiOperationsResponse++;
  if (buildCounterListApiOperationsResponse < 3) {
    o.apiOperations = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListApiOperationsResponse--;
  return o;
}

void checkListApiOperationsResponse(api.ListApiOperationsResponse o) {
  buildCounterListApiOperationsResponse++;
  if (buildCounterListApiOperationsResponse < 3) {
    checkUnnamed14(o.apiOperations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListApiOperationsResponse--;
}

core.List<api.Location> buildUnnamed15() => [buildLocation(), buildLocation()];

void checkUnnamed15(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed15(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.ObservationJob> buildUnnamed16() => [
  buildObservationJob(),
  buildObservationJob(),
];

void checkUnnamed16(core.List<api.ObservationJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObservationJob(o[0]);
  checkObservationJob(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListObservationJobsResponse = 0;
api.ListObservationJobsResponse buildListObservationJobsResponse() {
  final o = api.ListObservationJobsResponse();
  buildCounterListObservationJobsResponse++;
  if (buildCounterListObservationJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.observationJobs = buildUnnamed16();
    o.unreachable = buildUnnamed17();
  }
  buildCounterListObservationJobsResponse--;
  return o;
}

void checkListObservationJobsResponse(api.ListObservationJobsResponse o) {
  buildCounterListObservationJobsResponse++;
  if (buildCounterListObservationJobsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed16(o.observationJobs!);
    checkUnnamed17(o.unreachable!);
  }
  buildCounterListObservationJobsResponse--;
}

core.List<api.ObservationSource> buildUnnamed18() => [
  buildObservationSource(),
  buildObservationSource(),
];

void checkUnnamed18(core.List<api.ObservationSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObservationSource(o[0]);
  checkObservationSource(o[1]);
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListObservationSourcesResponse = 0;
api.ListObservationSourcesResponse buildListObservationSourcesResponse() {
  final o = api.ListObservationSourcesResponse();
  buildCounterListObservationSourcesResponse++;
  if (buildCounterListObservationSourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.observationSources = buildUnnamed18();
    o.unreachable = buildUnnamed19();
  }
  buildCounterListObservationSourcesResponse--;
  return o;
}

void checkListObservationSourcesResponse(api.ListObservationSourcesResponse o) {
  buildCounterListObservationSourcesResponse++;
  if (buildCounterListObservationSourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.observationSources!);
    checkUnnamed19(o.unreachable!);
  }
  buildCounterListObservationSourcesResponse--;
}

core.List<api.Operation> buildUnnamed20() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed20(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed20();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed21() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed21(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed22() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed22(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed21();
    o.locationId = 'foo';
    o.metadata = buildUnnamed22();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed21(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed22(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObservationJob = 0;
api.ObservationJob buildObservationJob() {
  final o = api.ObservationJob();
  buildCounterObservationJob++;
  if (buildCounterObservationJob < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.sources = buildUnnamed23();
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterObservationJob--;
  return o;
}

void checkObservationJob(api.ObservationJob o) {
  buildCounterObservationJob++;
  if (buildCounterObservationJob < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed23(o.sources!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterObservationJob--;
}

core.int buildCounterObservationSource = 0;
api.ObservationSource buildObservationSource() {
  final o = api.ObservationSource();
  buildCounterObservationSource++;
  if (buildCounterObservationSource < 3) {
    o.createTime = 'foo';
    o.gclbObservationSource = buildGclbObservationSource();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterObservationSource--;
  return o;
}

void checkObservationSource(api.ObservationSource o) {
  buildCounterObservationSource++;
  if (buildCounterObservationSource < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGclbObservationSource(o.gclbObservationSource!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterObservationSource--;
}

core.Map<core.String, core.Object?> buildUnnamed24() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed25() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed25(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed24();
    o.name = 'foo';
    o.response = buildUnnamed25();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed24(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed25(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed26() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed26(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed27() => [
  buildUnnamed26(),
  buildUnnamed26(),
];

void checkUnnamed27(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed26(o[0]);
  checkUnnamed26(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed27();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed27(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTagAction = 0;
api.TagAction buildTagAction() {
  final o = api.TagAction();
  buildCounterTagAction++;
  if (buildCounterTagAction < 3) {
    o.action = 'foo';
    o.tag = 'foo';
  }
  buildCounterTagAction--;
  return o;
}

void checkTagAction(api.TagAction o) {
  buildCounterTagAction++;
  if (buildCounterTagAction < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    unittest.expect(o.tag!, unittest.equals('foo'));
  }
  buildCounterTagAction--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ApiObservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiObservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiObservation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiObservation(od);
    });
  });

  unittest.group('obj-schema-ApiOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiOperation(od);
    });
  });

  unittest.group('obj-schema-BatchEditTagsApiObservationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchEditTagsApiObservationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchEditTagsApiObservationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchEditTagsApiObservationsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchEditTagsApiObservationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchEditTagsApiObservationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchEditTagsApiObservationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchEditTagsApiObservationsResponse(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-DisableObservationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableObservationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableObservationJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisableObservationJobRequest(od);
    });
  });

  unittest.group('obj-schema-EditTagsApiObservationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEditTagsApiObservationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EditTagsApiObservationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEditTagsApiObservationsRequest(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnableObservationJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableObservationJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableObservationJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnableObservationJobRequest(od);
    });
  });

  unittest.group('obj-schema-GclbObservationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGclbObservationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GclbObservationSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGclbObservationSource(od);
    });
  });

  unittest.group('obj-schema-GclbObservationSourcePscNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGclbObservationSourcePscNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GclbObservationSourcePscNetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGclbObservationSourcePscNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-HttpOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperation(od);
    });
  });

  unittest.group('obj-schema-HttpOperationHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperationHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperationHeader.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperationHeader(od);
    });
  });

  unittest.group('obj-schema-HttpOperationHttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperationHttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperationHttpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperationHttpRequest(od);
    });
  });

  unittest.group('obj-schema-HttpOperationHttpResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperationHttpResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperationHttpResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperationHttpResponse(od);
    });
  });

  unittest.group('obj-schema-HttpOperationPathParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperationPathParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperationPathParam.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperationPathParam(od);
    });
  });

  unittest.group('obj-schema-HttpOperationQueryParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpOperationQueryParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpOperationQueryParam.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpOperationQueryParam(od);
    });
  });

  unittest.group('obj-schema-ListApiObservationTagsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListApiObservationTagsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListApiObservationTagsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListApiObservationTagsResponse(od);
    });
  });

  unittest.group('obj-schema-ListApiObservationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListApiObservationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListApiObservationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListApiObservationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListApiOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListApiOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListApiOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListApiOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListObservationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListObservationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListObservationJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListObservationJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListObservationSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListObservationSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListObservationSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListObservationSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-ObservationJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObservationJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObservationJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObservationJob(od);
    });
  });

  unittest.group('obj-schema-ObservationSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObservationSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObservationSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObservationSource(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TagAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTagAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TagAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTagAction(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed28();
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });

    unittest.test('method--listApiObservationTags', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListApiObservationTagsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listApiObservationTags(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListApiObservationTagsResponse(
        response as api.ListApiObservationTagsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsObservationJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_request = buildObservationJob();
      final arg_parent = 'foo';
      final arg_observationJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ObservationJob.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkObservationJob(obj);

          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['observationJobId']!.first,
            unittest.equals(arg_observationJobId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        observationJobId: arg_observationJobId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_request = buildDisableObservationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DisableObservationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDisableObservationJobRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_request = buildEnableObservationJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnableObservationJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnableObservationJobRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildObservationJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkObservationJob(response as api.ObservationJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.observationJobs;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListObservationJobsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListObservationJobsResponse(
        response as api.ListObservationJobsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsObservationJobsApiObservationsResource',
    () {
      unittest.test('method--batchEditTags', () async {
        final mock = HttpServerMock();
        final res =
            api.APIManagementApi(
              mock,
            ).projects.locations.observationJobs.apiObservations;
        final arg_request = buildBatchEditTagsApiObservationsRequest();
        final arg_parent = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final obj = api.BatchEditTagsApiObservationsRequest.fromJson(
              json as core.Map<core.String, core.dynamic>,
            );
            checkBatchEditTagsApiObservationsRequest(obj);

            final path = req.url.path;
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
              unittest.equals('v1alpha/'),
            );
            pathOffset += 8;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildBatchEditTagsApiObservationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.batchEditTags(
          arg_request,
          arg_parent,
          $fields: arg_$fields,
        );
        checkBatchEditTagsApiObservationsResponse(
          response as api.BatchEditTagsApiObservationsResponse,
        );
      });

      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.APIManagementApi(
              mock,
            ).projects.locations.observationJobs.apiObservations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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
              unittest.equals('v1alpha/'),
            );
            pathOffset += 8;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildApiObservation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkApiObservation(response as api.ApiObservation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.APIManagementApi(
              mock,
            ).projects.locations.observationJobs.apiObservations;
        final arg_parent = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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
              unittest.equals('v1alpha/'),
            );
            pathOffset += 8;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(
              buildListApiObservationsResponse(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListApiObservationsResponse(
          response as api.ListApiObservationsResponse,
        );
      });
    },
  );

  unittest.group(
    'resource-ProjectsLocationsObservationJobsApiObservationsApiOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.APIManagementApi(
              mock,
            ).projects.locations.observationJobs.apiObservations.apiOperations;
        final arg_name = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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
              unittest.equals('v1alpha/'),
            );
            pathOffset += 8;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildApiOperation());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkApiOperation(response as api.ApiOperation);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.APIManagementApi(
              mock,
            ).projects.locations.observationJobs.apiObservations.apiOperations;
        final arg_parent = 'foo';
        final arg_pageSize = 42;
        final arg_pageToken = 'foo';
        final arg_$fields = 'foo';
        mock.register(
          unittest.expectAsync2((http.BaseRequest req, json) {
            final path = req.url.path;
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
              unittest.equals('v1alpha/'),
            );
            pathOffset += 8;
            // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

            final query = req.url.query;
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

            final h = {'content-type': 'application/json; charset=utf-8'};
            final resp = convert.json.encode(buildListApiOperationsResponse());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.list(
          arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields,
        );
        checkListApiOperationsResponse(
          response as api.ListApiOperationsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsObservationSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.APIManagementApi(mock).projects.locations.observationSources;
      final arg_request = buildObservationSource();
      final arg_parent = 'foo';
      final arg_observationSourceId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ObservationSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkObservationSource(obj);

          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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
            queryMap['observationSourceId']!.first,
            unittest.equals(arg_observationSourceId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        observationSourceId: arg_observationSourceId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.APIManagementApi(mock).projects.locations.observationSources;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.APIManagementApi(mock).projects.locations.observationSources;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildObservationSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkObservationSource(response as api.ObservationSource);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.APIManagementApi(mock).projects.locations.observationSources;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListObservationSourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListObservationSourcesResponse(
        response as api.ListObservationSourcesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIManagementApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1alpha/'),
          );
          pathOffset += 8;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
