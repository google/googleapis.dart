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

import 'package:googleapis/datalineage/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config = 0;
api.GoogleCloudDatacatalogLineageConfigmanagementV1Config
buildGoogleCloudDatacatalogLineageConfigmanagementV1Config() {
  final o = api.GoogleCloudDatacatalogLineageConfigmanagementV1Config();
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config < 3) {
    o.etag = 'foo';
    o.ingestion =
        buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config--;
  return o;
}

void checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
  api.GoogleCloudDatacatalogLineageConfigmanagementV1Config o,
) {
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config < 3) {
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion(
      o.ingestion!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1Config--;
}

core.List<
  api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
>
buildUnnamed0() => [
  buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(),
  buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(),
];

void checkUnnamed0(
  core.List<
    api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(
    o[0],
  );
  checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(
    o[1],
  );
}

core.int
buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion = 0;
api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion
buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion() {
  final o =
      api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion();
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion <
      3) {
    o.rules = buildUnnamed0();
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion--;
  return o;
}

void checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion(
  api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion o,
) {
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion <
      3) {
    checkUnnamed0(o.rules!);
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion--;
}

core.int
buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule =
    0;
api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule() {
  final o =
      api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule();
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule <
      3) {
    o.integrationSelector =
        buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector();
    o.lineageEnablement =
        buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement();
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule--;
  return o;
}

void
checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(
  api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
  o,
) {
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule <
      3) {
    checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector(
      o.integrationSelector!,
    );
    checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement(
      o.lineageEnablement!,
    );
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule--;
}

core.int
buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector =
    0;
api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector
buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector() {
  final o =
      api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector();
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector <
      3) {
    o.integration = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector--;
  return o;
}

void
checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector(
  api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector
  o,
) {
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector <
      3) {
    unittest.expect(o.integration!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector--;
}

core.int
buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement =
    0;
api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement
buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement() {
  final o =
      api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement();
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement <
      3) {
    o.enabled = true;
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement--;
  return o;
}

void
checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement(
  api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement
  o,
) {
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement++;
  if (buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement <
      3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest = 0;
api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest
buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest() {
  final o =
      api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest();
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest++;
  if (buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest <
      3) {
    o.links = buildUnnamed1();
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest(
  api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest++;
  if (buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest <
      3) {
    checkUnnamed1(o.links!);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest--;
}

core.List<api.GoogleCloudDatacatalogLineageV1ProcessLinks> buildUnnamed2() => [
  buildGoogleCloudDatacatalogLineageV1ProcessLinks(),
  buildGoogleCloudDatacatalogLineageV1ProcessLinks(),
];

void checkUnnamed2(
  core.List<api.GoogleCloudDatacatalogLineageV1ProcessLinks> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1ProcessLinks(o[0]);
  checkGoogleCloudDatacatalogLineageV1ProcessLinks(o[1]);
}

core.int
buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse = 0;
api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse() {
  final o =
      api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse();
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.processLinks = buildUnnamed2();
  }
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse(
  api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed2(o.processLinks!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1EntityReference = 0;
api.GoogleCloudDatacatalogLineageV1EntityReference
buildGoogleCloudDatacatalogLineageV1EntityReference() {
  final o = api.GoogleCloudDatacatalogLineageV1EntityReference();
  buildCounterGoogleCloudDatacatalogLineageV1EntityReference++;
  if (buildCounterGoogleCloudDatacatalogLineageV1EntityReference < 3) {
    o.fullyQualifiedName = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1EntityReference--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1EntityReference(
  api.GoogleCloudDatacatalogLineageV1EntityReference o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1EntityReference++;
  if (buildCounterGoogleCloudDatacatalogLineageV1EntityReference < 3) {
    unittest.expect(o.fullyQualifiedName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1EntityReference--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1EventLink = 0;
api.GoogleCloudDatacatalogLineageV1EventLink
buildGoogleCloudDatacatalogLineageV1EventLink() {
  final o = api.GoogleCloudDatacatalogLineageV1EventLink();
  buildCounterGoogleCloudDatacatalogLineageV1EventLink++;
  if (buildCounterGoogleCloudDatacatalogLineageV1EventLink < 3) {
    o.source = buildGoogleCloudDatacatalogLineageV1EntityReference();
    o.target = buildGoogleCloudDatacatalogLineageV1EntityReference();
  }
  buildCounterGoogleCloudDatacatalogLineageV1EventLink--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1EventLink(
  api.GoogleCloudDatacatalogLineageV1EventLink o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1EventLink++;
  if (buildCounterGoogleCloudDatacatalogLineageV1EventLink < 3) {
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.source!);
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.target!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1EventLink--;
}

core.List<api.GoogleCloudDatacatalogLineageV1EventLink> buildUnnamed3() => [
  buildGoogleCloudDatacatalogLineageV1EventLink(),
  buildGoogleCloudDatacatalogLineageV1EventLink(),
];

void checkUnnamed3(core.List<api.GoogleCloudDatacatalogLineageV1EventLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1EventLink(o[0]);
  checkGoogleCloudDatacatalogLineageV1EventLink(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1LineageEvent = 0;
api.GoogleCloudDatacatalogLineageV1LineageEvent
buildGoogleCloudDatacatalogLineageV1LineageEvent() {
  final o = api.GoogleCloudDatacatalogLineageV1LineageEvent();
  buildCounterGoogleCloudDatacatalogLineageV1LineageEvent++;
  if (buildCounterGoogleCloudDatacatalogLineageV1LineageEvent < 3) {
    o.endTime = 'foo';
    o.links = buildUnnamed3();
    o.name = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1LineageEvent--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1LineageEvent(
  api.GoogleCloudDatacatalogLineageV1LineageEvent o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1LineageEvent++;
  if (buildCounterGoogleCloudDatacatalogLineageV1LineageEvent < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    checkUnnamed3(o.links!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1LineageEvent--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1Link = 0;
api.GoogleCloudDatacatalogLineageV1Link
buildGoogleCloudDatacatalogLineageV1Link() {
  final o = api.GoogleCloudDatacatalogLineageV1Link();
  buildCounterGoogleCloudDatacatalogLineageV1Link++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Link < 3) {
    o.endTime = 'foo';
    o.name = 'foo';
    o.source = buildGoogleCloudDatacatalogLineageV1EntityReference();
    o.startTime = 'foo';
    o.target = buildGoogleCloudDatacatalogLineageV1EntityReference();
  }
  buildCounterGoogleCloudDatacatalogLineageV1Link--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1Link(
  api.GoogleCloudDatacatalogLineageV1Link o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1Link++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Link < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.source!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.target!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1Link--;
}

core.List<api.GoogleCloudDatacatalogLineageV1LineageEvent> buildUnnamed4() => [
  buildGoogleCloudDatacatalogLineageV1LineageEvent(),
  buildGoogleCloudDatacatalogLineageV1LineageEvent(),
];

void checkUnnamed4(
  core.List<api.GoogleCloudDatacatalogLineageV1LineageEvent> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1LineageEvent(o[0]);
  checkGoogleCloudDatacatalogLineageV1LineageEvent(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse =
    0;
api.GoogleCloudDatacatalogLineageV1ListLineageEventsResponse
buildGoogleCloudDatacatalogLineageV1ListLineageEventsResponse() {
  final o = api.GoogleCloudDatacatalogLineageV1ListLineageEventsResponse();
  buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse <
      3) {
    o.lineageEvents = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ListLineageEventsResponse(
  api.GoogleCloudDatacatalogLineageV1ListLineageEventsResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse <
      3) {
    checkUnnamed4(o.lineageEvents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListLineageEventsResponse--;
}

core.List<api.GoogleCloudDatacatalogLineageV1Process> buildUnnamed5() => [
  buildGoogleCloudDatacatalogLineageV1Process(),
  buildGoogleCloudDatacatalogLineageV1Process(),
];

void checkUnnamed5(core.List<api.GoogleCloudDatacatalogLineageV1Process> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1Process(o[0]);
  checkGoogleCloudDatacatalogLineageV1Process(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse = 0;
api.GoogleCloudDatacatalogLineageV1ListProcessesResponse
buildGoogleCloudDatacatalogLineageV1ListProcessesResponse() {
  final o = api.GoogleCloudDatacatalogLineageV1ListProcessesResponse();
  buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse < 3) {
    o.nextPageToken = 'foo';
    o.processes = buildUnnamed5();
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ListProcessesResponse(
  api.GoogleCloudDatacatalogLineageV1ListProcessesResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.processes!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListProcessesResponse--;
}

core.List<api.GoogleCloudDatacatalogLineageV1Run> buildUnnamed6() => [
  buildGoogleCloudDatacatalogLineageV1Run(),
  buildGoogleCloudDatacatalogLineageV1Run(),
];

void checkUnnamed6(core.List<api.GoogleCloudDatacatalogLineageV1Run> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1Run(o[0]);
  checkGoogleCloudDatacatalogLineageV1Run(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse = 0;
api.GoogleCloudDatacatalogLineageV1ListRunsResponse
buildGoogleCloudDatacatalogLineageV1ListRunsResponse() {
  final o = api.GoogleCloudDatacatalogLineageV1ListRunsResponse();
  buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse < 3) {
    o.nextPageToken = 'foo';
    o.runs = buildUnnamed6();
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ListRunsResponse(
  api.GoogleCloudDatacatalogLineageV1ListRunsResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed6(o.runs!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1ListRunsResponse--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1Origin = 0;
api.GoogleCloudDatacatalogLineageV1Origin
buildGoogleCloudDatacatalogLineageV1Origin() {
  final o = api.GoogleCloudDatacatalogLineageV1Origin();
  buildCounterGoogleCloudDatacatalogLineageV1Origin++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Origin < 3) {
    o.name = 'foo';
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1Origin--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1Origin(
  api.GoogleCloudDatacatalogLineageV1Origin o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1Origin++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Origin < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1Origin--;
}

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDatacatalogLineageV1Process = 0;
api.GoogleCloudDatacatalogLineageV1Process
buildGoogleCloudDatacatalogLineageV1Process() {
  final o = api.GoogleCloudDatacatalogLineageV1Process();
  buildCounterGoogleCloudDatacatalogLineageV1Process++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Process < 3) {
    o.attributes = buildUnnamed7();
    o.displayName = 'foo';
    o.name = 'foo';
    o.origin = buildGoogleCloudDatacatalogLineageV1Origin();
  }
  buildCounterGoogleCloudDatacatalogLineageV1Process--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1Process(
  api.GoogleCloudDatacatalogLineageV1Process o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1Process++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Process < 3) {
    checkUnnamed7(o.attributes!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudDatacatalogLineageV1Origin(o.origin!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1Process--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo = 0;
api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo
buildGoogleCloudDatacatalogLineageV1ProcessLinkInfo() {
  final o = api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo();
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo < 3) {
    o.endTime = 'foo';
    o.link = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ProcessLinkInfo(
  api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.link!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinkInfo--;
}

core.List<api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo> buildUnnamed8() =>
    [
      buildGoogleCloudDatacatalogLineageV1ProcessLinkInfo(),
      buildGoogleCloudDatacatalogLineageV1ProcessLinkInfo(),
    ];

void checkUnnamed8(
  core.List<api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1ProcessLinkInfo(o[0]);
  checkGoogleCloudDatacatalogLineageV1ProcessLinkInfo(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks = 0;
api.GoogleCloudDatacatalogLineageV1ProcessLinks
buildGoogleCloudDatacatalogLineageV1ProcessLinks() {
  final o = api.GoogleCloudDatacatalogLineageV1ProcessLinks();
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks < 3) {
    o.links = buildUnnamed8();
    o.process = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ProcessLinks(
  api.GoogleCloudDatacatalogLineageV1ProcessLinks o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks < 3) {
    checkUnnamed8(o.links!);
    unittest.expect(o.process!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessLinks--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse =
    0;
api.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse
buildGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse() {
  final o =
      api.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse();
  buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse <
      3) {
    o.lineageEvents = buildUnnamed9();
    o.process = 'foo';
    o.run = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse(
  api.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse <
      3) {
    checkUnnamed9(o.lineageEvents!);
    unittest.expect(o.process!, unittest.equals('foo'));
    unittest.expect(o.run!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDatacatalogLineageV1Run = 0;
api.GoogleCloudDatacatalogLineageV1Run
buildGoogleCloudDatacatalogLineageV1Run() {
  final o = api.GoogleCloudDatacatalogLineageV1Run();
  buildCounterGoogleCloudDatacatalogLineageV1Run++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Run < 3) {
    o.attributes = buildUnnamed10();
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1Run--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1Run(
  api.GoogleCloudDatacatalogLineageV1Run o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1Run++;
  if (buildCounterGoogleCloudDatacatalogLineageV1Run < 3) {
    checkUnnamed10(o.attributes!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1Run--;
}

core.int buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest = 0;
api.GoogleCloudDatacatalogLineageV1SearchLinksRequest
buildGoogleCloudDatacatalogLineageV1SearchLinksRequest() {
  final o = api.GoogleCloudDatacatalogLineageV1SearchLinksRequest();
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest++;
  if (buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.source = buildGoogleCloudDatacatalogLineageV1EntityReference();
    o.target = buildGoogleCloudDatacatalogLineageV1EntityReference();
  }
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1SearchLinksRequest(
  api.GoogleCloudDatacatalogLineageV1SearchLinksRequest o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest++;
  if (buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest < 3) {
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.source!);
    checkGoogleCloudDatacatalogLineageV1EntityReference(o.target!);
  }
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksRequest--;
}

core.List<api.GoogleCloudDatacatalogLineageV1Link> buildUnnamed11() => [
  buildGoogleCloudDatacatalogLineageV1Link(),
  buildGoogleCloudDatacatalogLineageV1Link(),
];

void checkUnnamed11(core.List<api.GoogleCloudDatacatalogLineageV1Link> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDatacatalogLineageV1Link(o[0]);
  checkGoogleCloudDatacatalogLineageV1Link(o[1]);
}

core.int buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse = 0;
api.GoogleCloudDatacatalogLineageV1SearchLinksResponse
buildGoogleCloudDatacatalogLineageV1SearchLinksResponse() {
  final o = api.GoogleCloudDatacatalogLineageV1SearchLinksResponse();
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse < 3) {
    o.links = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse--;
  return o;
}

void checkGoogleCloudDatacatalogLineageV1SearchLinksResponse(
  api.GoogleCloudDatacatalogLineageV1SearchLinksResponse o,
) {
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse++;
  if (buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse < 3) {
    checkUnnamed11(o.links!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDatacatalogLineageV1SearchLinksResponse--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
  api.GoogleLongrunningCancelOperationRequest o,
) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed12() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed12(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed12();
    o.unreachable = buildUnnamed13();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
  api.GoogleLongrunningListOperationsResponse o,
) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.operations!);
    checkUnnamed13(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed14();
    o.name = 'foo';
    o.response = buildUnnamed15();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed14(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed15(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
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

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed17();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed17(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageConfigmanagementV1Config',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageConfigmanagementV1Config();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageConfigmanagementV1Config.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1EntityReference',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1EntityReference();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDatacatalogLineageV1EntityReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDatacatalogLineageV1EntityReference(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1EventLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1EventLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1EventLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1EventLink(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1LineageEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1LineageEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1LineageEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1Link();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1Link.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1Link(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1ListLineageEventsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageV1ListLineageEventsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1ListLineageEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1ListLineageEventsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1ListProcessesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1ListProcessesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1ListProcessesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1ListProcessesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1ListRunsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1ListRunsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDatacatalogLineageV1ListRunsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDatacatalogLineageV1ListRunsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1Origin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1Origin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1Origin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1Origin(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1Process', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1Process();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1Process.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1Process(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1ProcessLinkInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1ProcessLinkInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudDatacatalogLineageV1ProcessLinkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDatacatalogLineageV1ProcessLinkInfo(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1ProcessLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1ProcessLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1ProcessLinks.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1ProcessLinks(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudDatacatalogLineageV1Run', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDatacatalogLineageV1Run();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDatacatalogLineageV1Run.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudDatacatalogLineageV1Run(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1SearchLinksRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1SearchLinksRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1SearchLinksRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1SearchLinksRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudDatacatalogLineageV1SearchLinksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDatacatalogLineageV1SearchLinksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDatacatalogLineageV1SearchLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudDatacatalogLineageV1SearchLinksResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-FoldersLocationsConfigResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).folders.locations.config;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).folders.locations.config;
      final arg_request =
          buildGoogleCloudDatacatalogLineageConfigmanagementV1Config();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudDatacatalogLineageConfigmanagementV1Config.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsConfigResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).organizations.locations.config;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).organizations.locations.config;
      final arg_request =
          buildGoogleCloudDatacatalogLineageConfigmanagementV1Config();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudDatacatalogLineageConfigmanagementV1Config.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--batchSearchLinkProcesses', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchSearchLinkProcesses(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse(
        response
            as api.GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse,
      );
    });

    unittest.test('method--processOpenLineageRunEvent', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations;
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.processOpenLineageRunEvent(
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse(
        response
            as api.GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse,
      );
    });

    unittest.test('method--searchLinks', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations;
      final arg_request =
          buildGoogleCloudDatacatalogLineageV1SearchLinksRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudDatacatalogLineageV1SearchLinksRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudDatacatalogLineageV1SearchLinksRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1SearchLinksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchLinks(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1SearchLinksResponse(
        response as api.GoogleCloudDatacatalogLineageV1SearchLinksResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsConfigResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.config;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.config;
      final arg_request =
          buildGoogleCloudDatacatalogLineageConfigmanagementV1Config();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleCloudDatacatalogLineageConfigmanagementV1Config.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageConfigmanagementV1Config(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageConfigmanagementV1Config(
        response as api.GoogleCloudDatacatalogLineageConfigmanagementV1Config,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleLongrunningCancelOperationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleLongrunningListOperationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProcessesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes;
      final arg_request = buildGoogleCloudDatacatalogLineageV1Process();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDatacatalogLineageV1Process.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDatacatalogLineageV1Process(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1Process(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1Process(
        response as api.GoogleCloudDatacatalogLineageV1Process,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes;
      final arg_name = 'foo';
      final arg_allowMissing = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1Process(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageV1Process(
        response as api.GoogleCloudDatacatalogLineageV1Process,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1ListProcessesResponse(),
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
      checkGoogleCloudDatacatalogLineageV1ListProcessesResponse(
        response as api.GoogleCloudDatacatalogLineageV1ListProcessesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes;
      final arg_request = buildGoogleCloudDatacatalogLineageV1Process();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDatacatalogLineageV1Process.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDatacatalogLineageV1Process(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1Process(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1Process(
        response as api.GoogleCloudDatacatalogLineageV1Process,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProcessesRunsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes.runs;
      final arg_request = buildGoogleCloudDatacatalogLineageV1Run();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDatacatalogLineageV1Run.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDatacatalogLineageV1Run(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1Run(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1Run(
        response as api.GoogleCloudDatacatalogLineageV1Run,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes.runs;
      final arg_name = 'foo';
      final arg_allowMissing = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleLongrunningOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes.runs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1Run(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageV1Run(
        response as api.GoogleCloudDatacatalogLineageV1Run,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes.runs;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1ListRunsResponse(),
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
      checkGoogleCloudDatacatalogLineageV1ListRunsResponse(
        response as api.GoogleCloudDatacatalogLineageV1ListRunsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(mock).projects.locations.processes.runs;
      final arg_request = buildGoogleCloudDatacatalogLineageV1Run();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDatacatalogLineageV1Run.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDatacatalogLineageV1Run(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1Run(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1Run(
        response as api.GoogleCloudDatacatalogLineageV1Run,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProcessesRunsLineageEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(
        mock,
      ).projects.locations.processes.runs.lineageEvents;
      final arg_request = buildGoogleCloudDatacatalogLineageV1LineageEvent();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudDatacatalogLineageV1LineageEvent.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudDatacatalogLineageV1LineageEvent(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudDatacatalogLineageV1LineageEvent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkGoogleCloudDatacatalogLineageV1LineageEvent(
        response as api.GoogleCloudDatacatalogLineageV1LineageEvent,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(
        mock,
      ).projects.locations.processes.runs.lineageEvents;
      final arg_name = 'foo';
      final arg_allowMissing = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(
        mock,
      ).projects.locations.processes.runs.lineageEvents;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1LineageEvent(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDatacatalogLineageV1LineageEvent(
        response as api.GoogleCloudDatacatalogLineageV1LineageEvent,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DatalineageApi(
        mock,
      ).projects.locations.processes.runs.lineageEvents;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
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
            buildGoogleCloudDatacatalogLineageV1ListLineageEventsResponse(),
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
      checkGoogleCloudDatacatalogLineageV1ListLineageEventsResponse(
        response
            as api.GoogleCloudDatacatalogLineageV1ListLineageEventsResponse,
      );
    });
  });
}
