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

import 'package:googleapis/eventarc/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed0() => [
  buildAuditLogConfig(),
  buildAuditLogConfig(),
];

void checkUnnamed0(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed0();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed0(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed1();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed1(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterChannel = 0;
api.Channel buildChannel() {
  final o = api.Channel();
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    o.activationToken = 'foo';
    o.createTime = 'foo';
    o.cryptoKeyName = 'foo';
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.provider = 'foo';
    o.pubsubTopic = 'foo';
    o.satisfiesPzs = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterChannel--;
  return o;
}

void checkChannel(api.Channel o) {
  buildCounterChannel++;
  if (buildCounterChannel < 3) {
    unittest.expect(o.activationToken!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cryptoKeyName!, unittest.equals('foo'));
    checkUnnamed3(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterChannel--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterChannelConnection = 0;
api.ChannelConnection buildChannelConnection() {
  final o = api.ChannelConnection();
  buildCounterChannelConnection++;
  if (buildCounterChannelConnection < 3) {
    o.activationToken = 'foo';
    o.channel = 'foo';
    o.createTime = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterChannelConnection--;
  return o;
}

void checkChannelConnection(api.ChannelConnection o) {
  buildCounterChannelConnection++;
  if (buildCounterChannelConnection < 3) {
    unittest.expect(o.activationToken!, unittest.equals('foo'));
    unittest.expect(o.channel!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterChannelConnection--;
}

core.int buildCounterCloudRun = 0;
api.CloudRun buildCloudRun() {
  final o = api.CloudRun();
  buildCounterCloudRun++;
  if (buildCounterCloudRun < 3) {
    o.path = 'foo';
    o.region = 'foo';
    o.service = 'foo';
  }
  buildCounterCloudRun--;
  return o;
}

void checkCloudRun(api.CloudRun o) {
  buildCounterCloudRun++;
  if (buildCounterCloudRun < 3) {
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterCloudRun--;
}

core.int buildCounterDestination = 0;
api.Destination buildDestination() {
  final o = api.Destination();
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    o.cloudFunction = 'foo';
    o.cloudRun = buildCloudRun();
    o.gke = buildGKE();
    o.httpEndpoint = buildHttpEndpoint();
    o.networkConfig = buildNetworkConfig();
    o.workflow = 'foo';
  }
  buildCounterDestination--;
  return o;
}

void checkDestination(api.Destination o) {
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    unittest.expect(o.cloudFunction!, unittest.equals('foo'));
    checkCloudRun(o.cloudRun!);
    checkGKE(o.gke!);
    checkHttpEndpoint(o.httpEndpoint!);
    checkNetworkConfig(o.networkConfig!);
    unittest.expect(o.workflow!, unittest.equals('foo'));
  }
  buildCounterDestination--;
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

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEnrollment = 0;
api.Enrollment buildEnrollment() {
  final o = api.Enrollment();
  buildCounterEnrollment++;
  if (buildCounterEnrollment < 3) {
    o.annotations = buildUnnamed5();
    o.celMatch = 'foo';
    o.createTime = 'foo';
    o.destination = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed6();
    o.messageBus = 'foo';
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterEnrollment--;
  return o;
}

void checkEnrollment(api.Enrollment o) {
  buildCounterEnrollment++;
  if (buildCounterEnrollment < 3) {
    checkUnnamed5(o.annotations!);
    unittest.expect(o.celMatch!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed6(o.labels!);
    unittest.expect(o.messageBus!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterEnrollment--;
}

core.int buildCounterEventFilter = 0;
api.EventFilter buildEventFilter() {
  final o = api.EventFilter();
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    o.attribute = 'foo';
    o.operator = 'foo';
    o.value = 'foo';
  }
  buildCounterEventFilter--;
  return o;
}

void checkEventFilter(api.EventFilter o) {
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.operator!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterEventFilter--;
}

core.List<api.FilteringAttribute> buildUnnamed7() => [
  buildFilteringAttribute(),
  buildFilteringAttribute(),
];

void checkUnnamed7(core.List<api.FilteringAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilteringAttribute(o[0]);
  checkFilteringAttribute(o[1]);
}

core.int buildCounterEventType = 0;
api.EventType buildEventType() {
  final o = api.EventType();
  buildCounterEventType++;
  if (buildCounterEventType < 3) {
    o.description = 'foo';
    o.eventSchemaUri = 'foo';
    o.filteringAttributes = buildUnnamed7();
    o.type = 'foo';
  }
  buildCounterEventType--;
  return o;
}

void checkEventType(api.EventType o) {
  buildCounterEventType++;
  if (buildCounterEventType < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.eventSchemaUri!, unittest.equals('foo'));
    checkUnnamed7(o.filteringAttributes!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterEventType--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.int buildCounterFilteringAttribute = 0;
api.FilteringAttribute buildFilteringAttribute() {
  final o = api.FilteringAttribute();
  buildCounterFilteringAttribute++;
  if (buildCounterFilteringAttribute < 3) {
    o.attribute = 'foo';
    o.description = 'foo';
    o.pathPatternSupported = true;
    o.required = true;
  }
  buildCounterFilteringAttribute--;
  return o;
}

void checkFilteringAttribute(api.FilteringAttribute o) {
  buildCounterFilteringAttribute++;
  if (buildCounterFilteringAttribute < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.pathPatternSupported!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterFilteringAttribute--;
}

core.int buildCounterGKE = 0;
api.GKE buildGKE() {
  final o = api.GKE();
  buildCounterGKE++;
  if (buildCounterGKE < 3) {
    o.cluster = 'foo';
    o.location = 'foo';
    o.namespace = 'foo';
    o.path = 'foo';
    o.service = 'foo';
  }
  buildCounterGKE--;
  return o;
}

void checkGKE(api.GKE o) {
  buildCounterGKE++;
  if (buildCounterGKE < 3) {
    unittest.expect(o.cluster!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.namespace!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterGKE--;
}

core.Map<core.String, core.String> buildUnnamed8() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleApiSource = 0;
api.GoogleApiSource buildGoogleApiSource() {
  final o = api.GoogleApiSource();
  buildCounterGoogleApiSource++;
  if (buildCounterGoogleApiSource < 3) {
    o.annotations = buildUnnamed8();
    o.createTime = 'foo';
    o.cryptoKeyName = 'foo';
    o.destination = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed9();
    o.loggingConfig = buildLoggingConfig();
    o.name = 'foo';
    o.organizationSubscription = buildOrganizationSubscription();
    o.projectSubscriptions = buildProjectSubscriptions();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleApiSource--;
  return o;
}

void checkGoogleApiSource(api.GoogleApiSource o) {
  buildCounterGoogleApiSource++;
  if (buildCounterGoogleApiSource < 3) {
    checkUnnamed8(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cryptoKeyName!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed9(o.labels!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkOrganizationSubscription(o.organizationSubscription!);
    checkProjectSubscriptions(o.projectSubscriptions!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleApiSource--;
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleChannelConfig = 0;
api.GoogleChannelConfig buildGoogleChannelConfig() {
  final o = api.GoogleChannelConfig();
  buildCounterGoogleChannelConfig++;
  if (buildCounterGoogleChannelConfig < 3) {
    o.cryptoKeyName = 'foo';
    o.labels = buildUnnamed10();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleChannelConfig--;
  return o;
}

void checkGoogleChannelConfig(api.GoogleChannelConfig o) {
  buildCounterGoogleChannelConfig++;
  if (buildCounterGoogleChannelConfig < 3) {
    unittest.expect(o.cryptoKeyName!, unittest.equals('foo'));
    checkUnnamed10(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleChannelConfig--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineDestination = 0;
api.GoogleCloudEventarcV1PipelineDestination
buildGoogleCloudEventarcV1PipelineDestination() {
  final o = api.GoogleCloudEventarcV1PipelineDestination();
  buildCounterGoogleCloudEventarcV1PipelineDestination++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestination < 3) {
    o.authenticationConfig =
        buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig();
    o.httpEndpoint =
        buildGoogleCloudEventarcV1PipelineDestinationHttpEndpoint();
    o.messageBus = 'foo';
    o.networkConfig =
        buildGoogleCloudEventarcV1PipelineDestinationNetworkConfig();
    o.outputPayloadFormat =
        buildGoogleCloudEventarcV1PipelineMessagePayloadFormat();
    o.topic = 'foo';
    o.workflow = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineDestination--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineDestination(
  api.GoogleCloudEventarcV1PipelineDestination o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestination++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestination < 3) {
    checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig(
      o.authenticationConfig!,
    );
    checkGoogleCloudEventarcV1PipelineDestinationHttpEndpoint(o.httpEndpoint!);
    unittest.expect(o.messageBus!, unittest.equals('foo'));
    checkGoogleCloudEventarcV1PipelineDestinationNetworkConfig(
      o.networkConfig!,
    );
    checkGoogleCloudEventarcV1PipelineMessagePayloadFormat(
      o.outputPayloadFormat!,
    );
    unittest.expect(o.topic!, unittest.equals('foo'));
    unittest.expect(o.workflow!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineDestination--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig = 0;
api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig
buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig() {
  final o = api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig();
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig <
      3) {
    o.googleOidc =
        buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken();
    o.oauthToken =
        buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken();
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig(
  api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig <
      3) {
    checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken(
      o.googleOidc!,
    );
    checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken(
      o.oauthToken!,
    );
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken =
    0;
api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken
buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken() {
  final o =
      api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken();
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken <
      3) {
    o.scope = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken--;
  return o;
}

void
checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken(
  api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken <
      3) {
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken =
    0;
api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken
buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken() {
  final o =
      api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken();
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken <
      3) {
    o.audience = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken(
  api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken <
      3) {
    unittest.expect(o.audience!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint = 0;
api.GoogleCloudEventarcV1PipelineDestinationHttpEndpoint
buildGoogleCloudEventarcV1PipelineDestinationHttpEndpoint() {
  final o = api.GoogleCloudEventarcV1PipelineDestinationHttpEndpoint();
  buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint < 3) {
    o.messageBindingTemplate = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineDestinationHttpEndpoint(
  api.GoogleCloudEventarcV1PipelineDestinationHttpEndpoint o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint < 3) {
    unittest.expect(o.messageBindingTemplate!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationHttpEndpoint--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig = 0;
api.GoogleCloudEventarcV1PipelineDestinationNetworkConfig
buildGoogleCloudEventarcV1PipelineDestinationNetworkConfig() {
  final o = api.GoogleCloudEventarcV1PipelineDestinationNetworkConfig();
  buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig < 3) {
    o.networkAttachment = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineDestinationNetworkConfig(
  api.GoogleCloudEventarcV1PipelineDestinationNetworkConfig o,
) {
  buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig++;
  if (buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig < 3) {
    unittest.expect(o.networkAttachment!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineDestinationNetworkConfig--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineMediation = 0;
api.GoogleCloudEventarcV1PipelineMediation
buildGoogleCloudEventarcV1PipelineMediation() {
  final o = api.GoogleCloudEventarcV1PipelineMediation();
  buildCounterGoogleCloudEventarcV1PipelineMediation++;
  if (buildCounterGoogleCloudEventarcV1PipelineMediation < 3) {
    o.transformation =
        buildGoogleCloudEventarcV1PipelineMediationTransformation();
  }
  buildCounterGoogleCloudEventarcV1PipelineMediation--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMediation(
  api.GoogleCloudEventarcV1PipelineMediation o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMediation++;
  if (buildCounterGoogleCloudEventarcV1PipelineMediation < 3) {
    checkGoogleCloudEventarcV1PipelineMediationTransformation(
      o.transformation!,
    );
  }
  buildCounterGoogleCloudEventarcV1PipelineMediation--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineMediationTransformation = 0;
api.GoogleCloudEventarcV1PipelineMediationTransformation
buildGoogleCloudEventarcV1PipelineMediationTransformation() {
  final o = api.GoogleCloudEventarcV1PipelineMediationTransformation();
  buildCounterGoogleCloudEventarcV1PipelineMediationTransformation++;
  if (buildCounterGoogleCloudEventarcV1PipelineMediationTransformation < 3) {
    o.transformationTemplate = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineMediationTransformation--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMediationTransformation(
  api.GoogleCloudEventarcV1PipelineMediationTransformation o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMediationTransformation++;
  if (buildCounterGoogleCloudEventarcV1PipelineMediationTransformation < 3) {
    unittest.expect(o.transformationTemplate!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineMediationTransformation--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat = 0;
api.GoogleCloudEventarcV1PipelineMessagePayloadFormat
buildGoogleCloudEventarcV1PipelineMessagePayloadFormat() {
  final o = api.GoogleCloudEventarcV1PipelineMessagePayloadFormat();
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat < 3) {
    o.avro = buildGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat();
    o.json = buildGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat();
    o.protobuf =
        buildGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat();
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMessagePayloadFormat(
  api.GoogleCloudEventarcV1PipelineMessagePayloadFormat o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat < 3) {
    checkGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat(o.avro!);
    checkGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat(o.json!);
    checkGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat(
      o.protobuf!,
    );
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormat--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat = 0;
api.GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat
buildGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat() {
  final o = api.GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat();
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat <
      3) {
    o.schemaDefinition = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat(
  api.GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat <
      3) {
    unittest.expect(o.schemaDefinition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat = 0;
api.GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
buildGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat() {
  final o = api.GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat();
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat <
      3) {}
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat(
  api.GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat <
      3) {}
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat--;
}

core.int
buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat = 0;
api.GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat
buildGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat() {
  final o =
      api.GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat();
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat <
      3) {
    o.schemaDefinition = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat(
  api.GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat o,
) {
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat++;
  if (buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat <
      3) {
    unittest.expect(o.schemaDefinition!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat--;
}

core.int buildCounterGoogleCloudEventarcV1PipelineRetryPolicy = 0;
api.GoogleCloudEventarcV1PipelineRetryPolicy
buildGoogleCloudEventarcV1PipelineRetryPolicy() {
  final o = api.GoogleCloudEventarcV1PipelineRetryPolicy();
  buildCounterGoogleCloudEventarcV1PipelineRetryPolicy++;
  if (buildCounterGoogleCloudEventarcV1PipelineRetryPolicy < 3) {
    o.maxAttempts = 42;
    o.maxRetryDelay = 'foo';
    o.minRetryDelay = 'foo';
  }
  buildCounterGoogleCloudEventarcV1PipelineRetryPolicy--;
  return o;
}

void checkGoogleCloudEventarcV1PipelineRetryPolicy(
  api.GoogleCloudEventarcV1PipelineRetryPolicy o,
) {
  buildCounterGoogleCloudEventarcV1PipelineRetryPolicy++;
  if (buildCounterGoogleCloudEventarcV1PipelineRetryPolicy < 3) {
    unittest.expect(o.maxAttempts!, unittest.equals(42));
    unittest.expect(o.maxRetryDelay!, unittest.equals('foo'));
    unittest.expect(o.minRetryDelay!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudEventarcV1PipelineRetryPolicy--;
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

core.List<api.GoogleLongrunningOperation> buildUnnamed11() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed11(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
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
    o.operations = buildUnnamed11();
    o.unreachable = buildUnnamed12();
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
    checkUnnamed11(o.operations!);
    checkUnnamed12(o.unreachable!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
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

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed13();
    o.name = 'foo';
    o.response = buildUnnamed14();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed13(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed14(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed16() => [
  buildUnnamed15(),
  buildUnnamed15(),
];

void checkUnnamed16(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed15(o[0]);
  checkUnnamed15(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed16();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed16(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterHttpEndpoint = 0;
api.HttpEndpoint buildHttpEndpoint() {
  final o = api.HttpEndpoint();
  buildCounterHttpEndpoint++;
  if (buildCounterHttpEndpoint < 3) {
    o.uri = 'foo';
  }
  buildCounterHttpEndpoint--;
  return o;
}

void checkHttpEndpoint(api.HttpEndpoint o) {
  buildCounterHttpEndpoint++;
  if (buildCounterHttpEndpoint < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterHttpEndpoint--;
}

core.List<api.ChannelConnection> buildUnnamed17() => [
  buildChannelConnection(),
  buildChannelConnection(),
];

void checkUnnamed17(core.List<api.ChannelConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelConnection(o[0]);
  checkChannelConnection(o[1]);
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListChannelConnectionsResponse = 0;
api.ListChannelConnectionsResponse buildListChannelConnectionsResponse() {
  final o = api.ListChannelConnectionsResponse();
  buildCounterListChannelConnectionsResponse++;
  if (buildCounterListChannelConnectionsResponse < 3) {
    o.channelConnections = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListChannelConnectionsResponse--;
  return o;
}

void checkListChannelConnectionsResponse(api.ListChannelConnectionsResponse o) {
  buildCounterListChannelConnectionsResponse++;
  if (buildCounterListChannelConnectionsResponse < 3) {
    checkUnnamed17(o.channelConnections!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListChannelConnectionsResponse--;
}

core.List<api.Channel> buildUnnamed19() => [buildChannel(), buildChannel()];

void checkUnnamed19(core.List<api.Channel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannel(o[0]);
  checkChannel(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListChannelsResponse = 0;
api.ListChannelsResponse buildListChannelsResponse() {
  final o = api.ListChannelsResponse();
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    o.channels = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListChannelsResponse--;
  return o;
}

void checkListChannelsResponse(api.ListChannelsResponse o) {
  buildCounterListChannelsResponse++;
  if (buildCounterListChannelsResponse < 3) {
    checkUnnamed19(o.channels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListChannelsResponse--;
}

core.List<api.Enrollment> buildUnnamed21() => [
  buildEnrollment(),
  buildEnrollment(),
];

void checkUnnamed21(core.List<api.Enrollment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnrollment(o[0]);
  checkEnrollment(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListEnrollmentsResponse = 0;
api.ListEnrollmentsResponse buildListEnrollmentsResponse() {
  final o = api.ListEnrollmentsResponse();
  buildCounterListEnrollmentsResponse++;
  if (buildCounterListEnrollmentsResponse < 3) {
    o.enrollments = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListEnrollmentsResponse--;
  return o;
}

void checkListEnrollmentsResponse(api.ListEnrollmentsResponse o) {
  buildCounterListEnrollmentsResponse++;
  if (buildCounterListEnrollmentsResponse < 3) {
    checkUnnamed21(o.enrollments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListEnrollmentsResponse--;
}

core.List<api.GoogleApiSource> buildUnnamed23() => [
  buildGoogleApiSource(),
  buildGoogleApiSource(),
];

void checkUnnamed23(core.List<api.GoogleApiSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleApiSource(o[0]);
  checkGoogleApiSource(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGoogleApiSourcesResponse = 0;
api.ListGoogleApiSourcesResponse buildListGoogleApiSourcesResponse() {
  final o = api.ListGoogleApiSourcesResponse();
  buildCounterListGoogleApiSourcesResponse++;
  if (buildCounterListGoogleApiSourcesResponse < 3) {
    o.googleApiSources = buildUnnamed23();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed24();
  }
  buildCounterListGoogleApiSourcesResponse--;
  return o;
}

void checkListGoogleApiSourcesResponse(api.ListGoogleApiSourcesResponse o) {
  buildCounterListGoogleApiSourcesResponse++;
  if (buildCounterListGoogleApiSourcesResponse < 3) {
    checkUnnamed23(o.googleApiSources!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListGoogleApiSourcesResponse--;
}

core.List<api.Location> buildUnnamed25() => [buildLocation(), buildLocation()];

void checkUnnamed25(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed25();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed25(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMessageBusEnrollmentsResponse = 0;
api.ListMessageBusEnrollmentsResponse buildListMessageBusEnrollmentsResponse() {
  final o = api.ListMessageBusEnrollmentsResponse();
  buildCounterListMessageBusEnrollmentsResponse++;
  if (buildCounterListMessageBusEnrollmentsResponse < 3) {
    o.enrollments = buildUnnamed26();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed27();
  }
  buildCounterListMessageBusEnrollmentsResponse--;
  return o;
}

void checkListMessageBusEnrollmentsResponse(
  api.ListMessageBusEnrollmentsResponse o,
) {
  buildCounterListMessageBusEnrollmentsResponse++;
  if (buildCounterListMessageBusEnrollmentsResponse < 3) {
    checkUnnamed26(o.enrollments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListMessageBusEnrollmentsResponse--;
}

core.List<api.MessageBus> buildUnnamed28() => [
  buildMessageBus(),
  buildMessageBus(),
];

void checkUnnamed28(core.List<api.MessageBus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessageBus(o[0]);
  checkMessageBus(o[1]);
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListMessageBusesResponse = 0;
api.ListMessageBusesResponse buildListMessageBusesResponse() {
  final o = api.ListMessageBusesResponse();
  buildCounterListMessageBusesResponse++;
  if (buildCounterListMessageBusesResponse < 3) {
    o.messageBuses = buildUnnamed28();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed29();
  }
  buildCounterListMessageBusesResponse--;
  return o;
}

void checkListMessageBusesResponse(api.ListMessageBusesResponse o) {
  buildCounterListMessageBusesResponse++;
  if (buildCounterListMessageBusesResponse < 3) {
    checkUnnamed28(o.messageBuses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed29(o.unreachable!);
  }
  buildCounterListMessageBusesResponse--;
}

core.List<api.Pipeline> buildUnnamed30() => [buildPipeline(), buildPipeline()];

void checkUnnamed30(core.List<api.Pipeline> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPipeline(o[0]);
  checkPipeline(o[1]);
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPipelinesResponse = 0;
api.ListPipelinesResponse buildListPipelinesResponse() {
  final o = api.ListPipelinesResponse();
  buildCounterListPipelinesResponse++;
  if (buildCounterListPipelinesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pipelines = buildUnnamed30();
    o.unreachable = buildUnnamed31();
  }
  buildCounterListPipelinesResponse--;
  return o;
}

void checkListPipelinesResponse(api.ListPipelinesResponse o) {
  buildCounterListPipelinesResponse++;
  if (buildCounterListPipelinesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed30(o.pipelines!);
    checkUnnamed31(o.unreachable!);
  }
  buildCounterListPipelinesResponse--;
}

core.List<api.Provider> buildUnnamed32() => [buildProvider(), buildProvider()];

void checkUnnamed32(core.List<api.Provider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProvider(o[0]);
  checkProvider(o[1]);
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListProvidersResponse = 0;
api.ListProvidersResponse buildListProvidersResponse() {
  final o = api.ListProvidersResponse();
  buildCounterListProvidersResponse++;
  if (buildCounterListProvidersResponse < 3) {
    o.nextPageToken = 'foo';
    o.providers = buildUnnamed32();
    o.unreachable = buildUnnamed33();
  }
  buildCounterListProvidersResponse--;
  return o;
}

void checkListProvidersResponse(api.ListProvidersResponse o) {
  buildCounterListProvidersResponse++;
  if (buildCounterListProvidersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed32(o.providers!);
    checkUnnamed33(o.unreachable!);
  }
  buildCounterListProvidersResponse--;
}

core.List<api.Trigger> buildUnnamed34() => [buildTrigger(), buildTrigger()];

void checkUnnamed34(core.List<api.Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrigger(o[0]);
  checkTrigger(o[1]);
}

core.List<core.String> buildUnnamed35() => ['foo', 'foo'];

void checkUnnamed35(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTriggersResponse = 0;
api.ListTriggersResponse buildListTriggersResponse() {
  final o = api.ListTriggersResponse();
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    o.nextPageToken = 'foo';
    o.triggers = buildUnnamed34();
    o.unreachable = buildUnnamed35();
  }
  buildCounterListTriggersResponse--;
  return o;
}

void checkListTriggersResponse(api.ListTriggersResponse o) {
  buildCounterListTriggersResponse++;
  if (buildCounterListTriggersResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed34(o.triggers!);
    checkUnnamed35(o.unreachable!);
  }
  buildCounterListTriggersResponse--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed37() => {
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

void checkUnnamed37(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed36();
    o.locationId = 'foo';
    o.metadata = buildUnnamed37();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed36(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed37(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.logSeverity = 'foo';
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    unittest.expect(o.logSeverity!, unittest.equals('foo'));
  }
  buildCounterLoggingConfig--;
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed39() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed39(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterMessageBus = 0;
api.MessageBus buildMessageBus() {
  final o = api.MessageBus();
  buildCounterMessageBus++;
  if (buildCounterMessageBus < 3) {
    o.annotations = buildUnnamed38();
    o.createTime = 'foo';
    o.cryptoKeyName = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed39();
    o.loggingConfig = buildLoggingConfig();
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMessageBus--;
  return o;
}

void checkMessageBus(api.MessageBus o) {
  buildCounterMessageBus++;
  if (buildCounterMessageBus < 3) {
    checkUnnamed38(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cryptoKeyName!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed39(o.labels!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMessageBus--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.networkAttachment = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(o.networkAttachment!, unittest.equals('foo'));
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterOrganizationSubscription = 0;
api.OrganizationSubscription buildOrganizationSubscription() {
  final o = api.OrganizationSubscription();
  buildCounterOrganizationSubscription++;
  if (buildCounterOrganizationSubscription < 3) {
    o.enabled = true;
  }
  buildCounterOrganizationSubscription--;
  return o;
}

void checkOrganizationSubscription(api.OrganizationSubscription o) {
  buildCounterOrganizationSubscription++;
  if (buildCounterOrganizationSubscription < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterOrganizationSubscription--;
}

core.Map<core.String, core.String> buildUnnamed40() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudEventarcV1PipelineDestination> buildUnnamed41() => [
  buildGoogleCloudEventarcV1PipelineDestination(),
  buildGoogleCloudEventarcV1PipelineDestination(),
];

void checkUnnamed41(core.List<api.GoogleCloudEventarcV1PipelineDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudEventarcV1PipelineDestination(o[0]);
  checkGoogleCloudEventarcV1PipelineDestination(o[1]);
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.GoogleCloudEventarcV1PipelineMediation> buildUnnamed43() => [
  buildGoogleCloudEventarcV1PipelineMediation(),
  buildGoogleCloudEventarcV1PipelineMediation(),
];

void checkUnnamed43(core.List<api.GoogleCloudEventarcV1PipelineMediation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudEventarcV1PipelineMediation(o[0]);
  checkGoogleCloudEventarcV1PipelineMediation(o[1]);
}

core.int buildCounterPipeline = 0;
api.Pipeline buildPipeline() {
  final o = api.Pipeline();
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    o.annotations = buildUnnamed40();
    o.createTime = 'foo';
    o.cryptoKeyName = 'foo';
    o.destinations = buildUnnamed41();
    o.displayName = 'foo';
    o.etag = 'foo';
    o.inputPayloadFormat =
        buildGoogleCloudEventarcV1PipelineMessagePayloadFormat();
    o.labels = buildUnnamed42();
    o.loggingConfig = buildLoggingConfig();
    o.mediations = buildUnnamed43();
    o.name = 'foo';
    o.retryPolicy = buildGoogleCloudEventarcV1PipelineRetryPolicy();
    o.satisfiesPzs = true;
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPipeline--;
  return o;
}

void checkPipeline(api.Pipeline o) {
  buildCounterPipeline++;
  if (buildCounterPipeline < 3) {
    checkUnnamed40(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.cryptoKeyName!, unittest.equals('foo'));
    checkUnnamed41(o.destinations!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkGoogleCloudEventarcV1PipelineMessagePayloadFormat(
      o.inputPayloadFormat!,
    );
    checkUnnamed42(o.labels!);
    checkLoggingConfig(o.loggingConfig!);
    checkUnnamed43(o.mediations!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudEventarcV1PipelineRetryPolicy(o.retryPolicy!);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPipeline--;
}

core.List<api.AuditConfig> buildUnnamed44() => [
  buildAuditConfig(),
  buildAuditConfig(),
];

void checkUnnamed44(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed45() => [buildBinding(), buildBinding()];

void checkUnnamed45(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed44();
    o.bindings = buildUnnamed45();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed44(o.auditConfigs!);
    checkUnnamed45(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProjectSubscriptions = 0;
api.ProjectSubscriptions buildProjectSubscriptions() {
  final o = api.ProjectSubscriptions();
  buildCounterProjectSubscriptions++;
  if (buildCounterProjectSubscriptions < 3) {
    o.list = buildUnnamed46();
  }
  buildCounterProjectSubscriptions--;
  return o;
}

void checkProjectSubscriptions(api.ProjectSubscriptions o) {
  buildCounterProjectSubscriptions++;
  if (buildCounterProjectSubscriptions < 3) {
    checkUnnamed46(o.list!);
  }
  buildCounterProjectSubscriptions--;
}

core.List<api.EventType> buildUnnamed47() => [
  buildEventType(),
  buildEventType(),
];

void checkUnnamed47(core.List<api.EventType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventType(o[0]);
  checkEventType(o[1]);
}

core.int buildCounterProvider = 0;
api.Provider buildProvider() {
  final o = api.Provider();
  buildCounterProvider++;
  if (buildCounterProvider < 3) {
    o.displayName = 'foo';
    o.eventTypes = buildUnnamed47();
    o.name = 'foo';
  }
  buildCounterProvider--;
  return o;
}

void checkProvider(api.Provider o) {
  buildCounterProvider++;
  if (buildCounterProvider < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed47(o.eventTypes!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterProvider--;
}

core.int buildCounterPubsub = 0;
api.Pubsub buildPubsub() {
  final o = api.Pubsub();
  buildCounterPubsub++;
  if (buildCounterPubsub < 3) {
    o.subscription = 'foo';
    o.topic = 'foo';
  }
  buildCounterPubsub--;
  return o;
}

void checkPubsub(api.Pubsub o) {
  buildCounterPubsub++;
  if (buildCounterPubsub < 3) {
    unittest.expect(o.subscription!, unittest.equals('foo'));
    unittest.expect(o.topic!, unittest.equals('foo'));
  }
  buildCounterPubsub--;
}

core.int buildCounterRetryPolicy = 0;
api.RetryPolicy buildRetryPolicy() {
  final o = api.RetryPolicy();
  buildCounterRetryPolicy++;
  if (buildCounterRetryPolicy < 3) {
    o.maxAttempts = 42;
  }
  buildCounterRetryPolicy--;
  return o;
}

void checkRetryPolicy(api.RetryPolicy o) {
  buildCounterRetryPolicy++;
  if (buildCounterRetryPolicy < 3) {
    unittest.expect(o.maxAttempts!, unittest.equals(42));
  }
  buildCounterRetryPolicy--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterStateCondition = 0;
api.StateCondition buildStateCondition() {
  final o = api.StateCondition();
  buildCounterStateCondition++;
  if (buildCounterStateCondition < 3) {
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterStateCondition--;
  return o;
}

void checkStateCondition(api.StateCondition o) {
  buildCounterStateCondition++;
  if (buildCounterStateCondition < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStateCondition--;
}

core.List<core.String> buildUnnamed48() => ['foo', 'foo'];

void checkUnnamed48(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed48();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed48(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed49();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed49(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTransport = 0;
api.Transport buildTransport() {
  final o = api.Transport();
  buildCounterTransport++;
  if (buildCounterTransport < 3) {
    o.pubsub = buildPubsub();
  }
  buildCounterTransport--;
  return o;
}

void checkTransport(api.Transport o) {
  buildCounterTransport++;
  if (buildCounterTransport < 3) {
    checkPubsub(o.pubsub!);
  }
  buildCounterTransport--;
}

core.Map<core.String, api.StateCondition> buildUnnamed50() => {
  'x': buildStateCondition(),
  'y': buildStateCondition(),
};

void checkUnnamed50(core.Map<core.String, api.StateCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateCondition(o['x']!);
  checkStateCondition(o['y']!);
}

core.List<api.EventFilter> buildUnnamed51() => [
  buildEventFilter(),
  buildEventFilter(),
];

void checkUnnamed51(core.List<api.EventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventFilter(o[0]);
  checkEventFilter(o[1]);
}

core.Map<core.String, core.String> buildUnnamed52() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed52(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTrigger = 0;
api.Trigger buildTrigger() {
  final o = api.Trigger();
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    o.channel = 'foo';
    o.conditions = buildUnnamed50();
    o.createTime = 'foo';
    o.destination = buildDestination();
    o.etag = 'foo';
    o.eventDataContentType = 'foo';
    o.eventFilters = buildUnnamed51();
    o.labels = buildUnnamed52();
    o.name = 'foo';
    o.retryPolicy = buildRetryPolicy();
    o.satisfiesPzs = true;
    o.serviceAccount = 'foo';
    o.transport = buildTransport();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTrigger--;
  return o;
}

void checkTrigger(api.Trigger o) {
  buildCounterTrigger++;
  if (buildCounterTrigger < 3) {
    unittest.expect(o.channel!, unittest.equals('foo'));
    checkUnnamed50(o.conditions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDestination(o.destination!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.eventDataContentType!, unittest.equals('foo'));
    checkUnnamed51(o.eventFilters!);
    checkUnnamed52(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRetryPolicy(o.retryPolicy!);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkTransport(o.transport!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTrigger--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-Channel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Channel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannel(od);
    });
  });

  unittest.group('obj-schema-ChannelConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChannelConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChannelConnection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChannelConnection(od);
    });
  });

  unittest.group('obj-schema-CloudRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudRun(od);
    });
  });

  unittest.group('obj-schema-Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Destination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestination(od);
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

  unittest.group('obj-schema-Enrollment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Enrollment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnrollment(od);
    });
  });

  unittest.group('obj-schema-EventFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventFilter(od);
    });
  });

  unittest.group('obj-schema-EventType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventType(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FilteringAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilteringAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FilteringAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFilteringAttribute(od);
    });
  });

  unittest.group('obj-schema-GKE', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGKE();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GKE.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGKE(od);
    });
  });

  unittest.group('obj-schema-GoogleApiSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleApiSource(od);
    });
  });

  unittest.group('obj-schema-GoogleChannelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleChannelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleChannelConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleChannelConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudEventarcV1PipelineDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudEventarcV1PipelineDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudEventarcV1PipelineDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudEventarcV1PipelineDestination(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfig(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineDestinationHttpEndpoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudEventarcV1PipelineDestinationHttpEndpoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineDestinationHttpEndpoint.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineDestinationHttpEndpoint(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineDestinationNetworkConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudEventarcV1PipelineDestinationNetworkConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineDestinationNetworkConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineDestinationNetworkConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudEventarcV1PipelineMediation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudEventarcV1PipelineMediation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudEventarcV1PipelineMediation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudEventarcV1PipelineMediation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineMediationTransformation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudEventarcV1PipelineMediationTransformation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineMediationTransformation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineMediationTransformation(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineMessagePayloadFormat',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudEventarcV1PipelineMessagePayloadFormat();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineMessagePayloadFormat.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineMessagePayloadFormat(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudEventarcV1PipelineRetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudEventarcV1PipelineRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudEventarcV1PipelineRetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudEventarcV1PipelineRetryPolicy(od);
    });
  });

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

  unittest.group('obj-schema-HttpEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpEndpoint(od);
    });
  });

  unittest.group('obj-schema-ListChannelConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChannelConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChannelConnectionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListChannelConnectionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChannelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChannelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChannelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListChannelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnrollmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnrollmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnrollmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEnrollmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGoogleApiSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGoogleApiSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGoogleApiSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGoogleApiSourcesResponse(od);
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

  unittest.group('obj-schema-ListMessageBusEnrollmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMessageBusEnrollmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMessageBusEnrollmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMessageBusEnrollmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMessageBusesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMessageBusesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMessageBusesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMessageBusesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPipelinesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPipelinesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPipelinesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPipelinesResponse(od);
    });
  });

  unittest.group('obj-schema-ListProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProvidersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTriggersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTriggersResponse(od);
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

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-MessageBus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessageBus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MessageBus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessageBus(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-OrganizationSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrganizationSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrganizationSubscription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrganizationSubscription(od);
    });
  });

  unittest.group('obj-schema-Pipeline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipeline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pipeline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPipeline(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-ProjectSubscriptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectSubscriptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectSubscriptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProjectSubscriptions(od);
    });
  });

  unittest.group('obj-schema-Provider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Provider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvider(od);
    });
  });

  unittest.group('obj-schema-Pubsub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pubsub.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPubsub(od);
    });
  });

  unittest.group('obj-schema-RetryPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetryPolicy(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-StateCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStateCondition(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Transport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Transport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransport(od);
    });
  });

  unittest.group('obj-schema-Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Trigger.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrigger(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getGoogleChannelConfig', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations;
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
          final resp = convert.json.encode(buildGoogleChannelConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getGoogleChannelConfig(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleChannelConfig(response as api.GoogleChannelConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed53();
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

    unittest.test('method--updateGoogleChannelConfig', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations;
      final arg_request = buildGoogleChannelConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleChannelConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleChannelConfig(obj);

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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleChannelConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateGoogleChannelConfig(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleChannelConfig(response as api.GoogleChannelConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsChannelConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
      final arg_request = buildChannelConnection();
      final arg_parent = 'foo';
      final arg_channelConnectionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ChannelConnection.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannelConnection(obj);

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
            queryMap['channelConnectionId']!.first,
            unittest.equals(arg_channelConnectionId),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        channelConnectionId: arg_channelConnectionId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
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
          final resp = convert.json.encode(buildChannelConnection());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkChannelConnection(response as api.ChannelConnection);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
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
            buildListChannelConnectionsResponse(),
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
      checkListChannelConnectionsResponse(
        response as api.ListChannelConnectionsResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channelConnections;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsChannelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_request = buildChannel();
      final arg_parent = 'foo';
      final arg_channelId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            queryMap['channelId']!.first,
            unittest.equals(arg_channelId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        channelId: arg_channelId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_name = 'foo';
      final arg_validateOnly = true;
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
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
          final resp = convert.json.encode(buildChannel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkChannel(response as api.Channel);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_parent = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListChannelsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListChannelsResponse(response as api.ListChannelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_request = buildChannel();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Channel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkChannel(obj);

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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.channels;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsEnrollmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_request = buildEnrollment();
      final arg_parent = 'foo';
      final arg_enrollmentId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Enrollment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollment(obj);

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
            queryMap['enrollmentId']!.first,
            unittest.equals(arg_enrollmentId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        enrollmentId: arg_enrollmentId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
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
          final resp = convert.json.encode(buildEnrollment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnrollment(response as api.Enrollment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListEnrollmentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListEnrollmentsResponse(response as api.ListEnrollmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_request = buildEnrollment();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Enrollment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollment(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.enrollments;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsGoogleApiSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_request = buildGoogleApiSource();
      final arg_parent = 'foo';
      final arg_googleApiSourceId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleApiSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleApiSource(obj);

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
            queryMap['googleApiSourceId']!.first,
            unittest.equals(arg_googleApiSourceId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        googleApiSourceId: arg_googleApiSourceId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
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
          final resp = convert.json.encode(buildGoogleApiSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleApiSource(response as api.GoogleApiSource);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListGoogleApiSourcesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListGoogleApiSourcesResponse(
        response as api.ListGoogleApiSourcesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_request = buildGoogleApiSource();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleApiSource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleApiSource(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.googleApiSources;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsMessageBusesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_request = buildMessageBus();
      final arg_parent = 'foo';
      final arg_messageBusId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MessageBus.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMessageBus(obj);

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
            queryMap['messageBusId']!.first,
            unittest.equals(arg_messageBusId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        messageBusId: arg_messageBusId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
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
          final resp = convert.json.encode(buildMessageBus());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMessageBus(response as api.MessageBus);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListMessageBusesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMessageBusesResponse(response as api.ListMessageBusesResponse);
    });

    unittest.test('method--listEnrollments', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
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
            buildListMessageBusEnrollmentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listEnrollments(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListMessageBusEnrollmentsResponse(
        response as api.ListMessageBusEnrollmentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_request = buildMessageBus();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MessageBus.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMessageBus(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.messageBuses;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.operations;
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
      final res = api.EventarcApi(mock).projects.locations.operations;
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
      final res = api.EventarcApi(mock).projects.locations.operations;
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
      final res = api.EventarcApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsPipelinesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_request = buildPipeline();
      final arg_parent = 'foo';
      final arg_pipelineId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPipeline(obj);

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
            queryMap['pipelineId']!.first,
            unittest.equals(arg_pipelineId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        pipelineId: arg_pipelineId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
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
          final resp = convert.json.encode(buildPipeline());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPipeline(response as api.Pipeline);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListPipelinesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPipelinesResponse(response as api.ListPipelinesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_request = buildPipeline();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Pipeline.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPipeline(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.pipelines;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsProvidersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.providers;
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
          final resp = convert.json.encode(buildProvider());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProvider(response as api.Provider);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.providers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListProvidersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListProvidersResponse(response as api.ListProvidersResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_request = buildTrigger();
      final arg_parent = 'foo';
      final arg_triggerId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Trigger.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTrigger(obj);

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
            queryMap['triggerId']!.first,
            unittest.equals(arg_triggerId),
          );
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.create(
        arg_request,
        arg_parent,
        triggerId: arg_triggerId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_etag = 'foo';
      final arg_validateOnly = true;
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        etag: arg_etag,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
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
          final resp = convert.json.encode(buildTrigger());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTrigger(response as api.Trigger);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
            core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
            unittest.equals(arg_options_requestedPolicyVersion),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_resource,
        options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListTriggersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListTriggersResponse(response as api.ListTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_request = buildTrigger();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Trigger.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTrigger(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.EventarcApi(mock).projects.locations.triggers;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });
}
