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

import 'package:googleapis/firebaseapphosting/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterArchiveSource = 0;
api.ArchiveSource buildArchiveSource() {
  final o = api.ArchiveSource();
  buildCounterArchiveSource++;
  if (buildCounterArchiveSource < 3) {
    o.author = buildSourceUserMetadata();
    o.description = 'foo';
    o.externalSignedUri = 'foo';
    o.rootDirectory = 'foo';
    o.userStorageUri = 'foo';
  }
  buildCounterArchiveSource--;
  return o;
}

void checkArchiveSource(api.ArchiveSource o) {
  buildCounterArchiveSource++;
  if (buildCounterArchiveSource < 3) {
    checkSourceUserMetadata(o.author!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.externalSignedUri!, unittest.equals('foo'));
    unittest.expect(o.rootDirectory!, unittest.equals('foo'));
    unittest.expect(o.userStorageUri!, unittest.equals('foo'));
  }
  buildCounterArchiveSource--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ManagedResource> buildUnnamed2() => [
  buildManagedResource(),
  buildManagedResource(),
];

void checkUnnamed2(core.List<api.ManagedResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedResource(o[0]);
  checkManagedResource(o[1]);
}

core.int buildCounterBackend = 0;
api.Backend buildBackend() {
  final o = api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.annotations = buildUnnamed0();
    o.appId = 'foo';
    o.codebase = buildCodebase();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.environment = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed1();
    o.managedResources = buildUnnamed2();
    o.mode = 'foo';
    o.name = 'foo';
    o.reconciling = true;
    o.requestLogsDisabled = true;
    o.serviceAccount = 'foo';
    o.servingLocality = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
    o.uri = 'foo';
  }
  buildCounterBackend--;
  return o;
}

void checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed0(o.annotations!);
    unittest.expect(o.appId!, unittest.equals('foo'));
    checkCodebase(o.codebase!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed1(o.labels!);
    checkUnnamed2(o.managedResources!);
    unittest.expect(o.mode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.requestLogsDisabled!, unittest.isTrue);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.servingLocality!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterBackend--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Error> buildUnnamed4() => [buildError(), buildError()];

void checkUnnamed4(core.List<api.Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkError(o[0]);
  checkError(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterBuild = 0;
api.Build buildBuild() {
  final o = api.Build();
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    o.annotations = buildUnnamed3();
    o.buildLogsUri = 'foo';
    o.config = buildConfig();
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.environment = 'foo';
    o.errors = buildUnnamed4();
    o.etag = 'foo';
    o.image = 'foo';
    o.labels = buildUnnamed5();
    o.name = 'foo';
    o.reconciling = true;
    o.source = buildBuildSource();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterBuild--;
  return o;
}

void checkBuild(api.Build o) {
  buildCounterBuild++;
  if (buildCounterBuild < 3) {
    checkUnnamed3(o.annotations!);
    unittest.expect(o.buildLogsUri!, unittest.equals('foo'));
    checkConfig(o.config!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.environment!, unittest.equals('foo'));
    checkUnnamed4(o.errors!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.image!, unittest.equals('foo'));
    checkUnnamed5(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkBuildSource(o.source!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterBuild--;
}

core.int buildCounterBuildSource = 0;
api.BuildSource buildBuildSource() {
  final o = api.BuildSource();
  buildCounterBuildSource++;
  if (buildCounterBuildSource < 3) {
    o.archive = buildArchiveSource();
    o.codebase = buildCodebaseSource();
    o.container = buildContainerSource();
  }
  buildCounterBuildSource--;
  return o;
}

void checkBuildSource(api.BuildSource o) {
  buildCounterBuildSource++;
  if (buildCounterBuildSource < 3) {
    checkArchiveSource(o.archive!);
    checkCodebaseSource(o.codebase!);
    checkContainerSource(o.container!);
  }
  buildCounterBuildSource--;
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

core.int buildCounterCodebase = 0;
api.Codebase buildCodebase() {
  final o = api.Codebase();
  buildCounterCodebase++;
  if (buildCounterCodebase < 3) {
    o.repository = 'foo';
    o.rootDirectory = 'foo';
  }
  buildCounterCodebase--;
  return o;
}

void checkCodebase(api.Codebase o) {
  buildCounterCodebase++;
  if (buildCounterCodebase < 3) {
    unittest.expect(o.repository!, unittest.equals('foo'));
    unittest.expect(o.rootDirectory!, unittest.equals('foo'));
  }
  buildCounterCodebase--;
}

core.int buildCounterCodebaseSource = 0;
api.CodebaseSource buildCodebaseSource() {
  final o = api.CodebaseSource();
  buildCounterCodebaseSource++;
  if (buildCounterCodebaseSource < 3) {
    o.author = buildUserMetadata();
    o.branch = 'foo';
    o.commit = 'foo';
    o.commitMessage = 'foo';
    o.commitTime = 'foo';
    o.displayName = 'foo';
    o.hash = 'foo';
    o.uri = 'foo';
  }
  buildCounterCodebaseSource--;
  return o;
}

void checkCodebaseSource(api.CodebaseSource o) {
  buildCounterCodebaseSource++;
  if (buildCounterCodebaseSource < 3) {
    checkUserMetadata(o.author!);
    unittest.expect(o.branch!, unittest.equals('foo'));
    unittest.expect(o.commit!, unittest.equals('foo'));
    unittest.expect(o.commitMessage!, unittest.equals('foo'));
    unittest.expect(o.commitTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.hash!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterCodebaseSource--;
}

core.List<api.EnvironmentVariable> buildUnnamed6() => [
  buildEnvironmentVariable(),
  buildEnvironmentVariable(),
];

void checkUnnamed6(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

core.List<api.EnvironmentVariable> buildUnnamed7() => [
  buildEnvironmentVariable(),
  buildEnvironmentVariable(),
];

void checkUnnamed7(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

core.int buildCounterConfig = 0;
api.Config buildConfig() {
  final o = api.Config();
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    o.effectiveEnv = buildUnnamed6();
    o.env = buildUnnamed7();
    o.runConfig = buildRunConfig();
  }
  buildCounterConfig--;
  return o;
}

void checkConfig(api.Config o) {
  buildCounterConfig++;
  if (buildCounterConfig < 3) {
    checkUnnamed6(o.effectiveEnv!);
    checkUnnamed7(o.env!);
    checkRunConfig(o.runConfig!);
  }
  buildCounterConfig--;
}

core.int buildCounterContainerSource = 0;
api.ContainerSource buildContainerSource() {
  final o = api.ContainerSource();
  buildCounterContainerSource++;
  if (buildCounterContainerSource < 3) {
    o.image = 'foo';
  }
  buildCounterContainerSource--;
  return o;
}

void checkContainerSource(api.ContainerSource o) {
  buildCounterContainerSource++;
  if (buildCounterContainerSource < 3) {
    unittest.expect(o.image!, unittest.equals('foo'));
  }
  buildCounterContainerSource--;
}

core.List<api.Status> buildUnnamed8() => [buildStatus(), buildStatus()];

void checkUnnamed8(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.DnsUpdates> buildUnnamed9() => [
  buildDnsUpdates(),
  buildDnsUpdates(),
];

void checkUnnamed9(core.List<api.DnsUpdates> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsUpdates(o[0]);
  checkDnsUpdates(o[1]);
}

core.int buildCounterCustomDomainStatus = 0;
api.CustomDomainStatus buildCustomDomainStatus() {
  final o = api.CustomDomainStatus();
  buildCounterCustomDomainStatus++;
  if (buildCounterCustomDomainStatus < 3) {
    o.certState = 'foo';
    o.hostState = 'foo';
    o.issues = buildUnnamed8();
    o.ownershipState = 'foo';
    o.requiredDnsUpdates = buildUnnamed9();
  }
  buildCounterCustomDomainStatus--;
  return o;
}

void checkCustomDomainStatus(api.CustomDomainStatus o) {
  buildCounterCustomDomainStatus++;
  if (buildCounterCustomDomainStatus < 3) {
    unittest.expect(o.certState!, unittest.equals('foo'));
    unittest.expect(o.hostState!, unittest.equals('foo'));
    checkUnnamed8(o.issues!);
    unittest.expect(o.ownershipState!, unittest.equals('foo'));
    checkUnnamed9(o.requiredDnsUpdates!);
  }
  buildCounterCustomDomainStatus--;
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDnsRecord = 0;
api.DnsRecord buildDnsRecord() {
  final o = api.DnsRecord();
  buildCounterDnsRecord++;
  if (buildCounterDnsRecord < 3) {
    o.domainName = 'foo';
    o.rdata = 'foo';
    o.relevantState = buildUnnamed10();
    o.requiredAction = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsRecord--;
  return o;
}

void checkDnsRecord(api.DnsRecord o) {
  buildCounterDnsRecord++;
  if (buildCounterDnsRecord < 3) {
    unittest.expect(o.domainName!, unittest.equals('foo'));
    unittest.expect(o.rdata!, unittest.equals('foo'));
    checkUnnamed10(o.relevantState!);
    unittest.expect(o.requiredAction!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDnsRecord--;
}

core.List<api.DnsRecord> buildUnnamed11() => [
  buildDnsRecord(),
  buildDnsRecord(),
];

void checkUnnamed11(core.List<api.DnsRecord> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsRecord(o[0]);
  checkDnsRecord(o[1]);
}

core.int buildCounterDnsRecordSet = 0;
api.DnsRecordSet buildDnsRecordSet() {
  final o = api.DnsRecordSet();
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    o.checkError = buildStatus();
    o.domainName = 'foo';
    o.records = buildUnnamed11();
  }
  buildCounterDnsRecordSet--;
  return o;
}

void checkDnsRecordSet(api.DnsRecordSet o) {
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    checkStatus(o.checkError!);
    unittest.expect(o.domainName!, unittest.equals('foo'));
    checkUnnamed11(o.records!);
  }
  buildCounterDnsRecordSet--;
}

core.List<api.DnsRecordSet> buildUnnamed12() => [
  buildDnsRecordSet(),
  buildDnsRecordSet(),
];

void checkUnnamed12(core.List<api.DnsRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsRecordSet(o[0]);
  checkDnsRecordSet(o[1]);
}

core.List<api.DnsRecordSet> buildUnnamed13() => [
  buildDnsRecordSet(),
  buildDnsRecordSet(),
];

void checkUnnamed13(core.List<api.DnsRecordSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDnsRecordSet(o[0]);
  checkDnsRecordSet(o[1]);
}

core.int buildCounterDnsUpdates = 0;
api.DnsUpdates buildDnsUpdates() {
  final o = api.DnsUpdates();
  buildCounterDnsUpdates++;
  if (buildCounterDnsUpdates < 3) {
    o.checkTime = 'foo';
    o.desired = buildUnnamed12();
    o.discovered = buildUnnamed13();
    o.domainName = 'foo';
  }
  buildCounterDnsUpdates--;
  return o;
}

void checkDnsUpdates(api.DnsUpdates o) {
  buildCounterDnsUpdates++;
  if (buildCounterDnsUpdates < 3) {
    unittest.expect(o.checkTime!, unittest.equals('foo'));
    checkUnnamed12(o.desired!);
    checkUnnamed13(o.discovered!);
    unittest.expect(o.domainName!, unittest.equals('foo'));
  }
  buildCounterDnsUpdates--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed15() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDomain = 0;
api.Domain buildDomain() {
  final o = api.Domain();
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    o.annotations = buildUnnamed14();
    o.createTime = 'foo';
    o.customDomainStatus = buildCustomDomainStatus();
    o.deleteTime = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed15();
    o.name = 'foo';
    o.reconciling = true;
    o.serve = buildServingBehavior();
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterDomain--;
  return o;
}

void checkDomain(api.Domain o) {
  buildCounterDomain++;
  if (buildCounterDomain < 3) {
    checkUnnamed14(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkCustomDomainStatus(o.customDomainStatus!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed15(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkServingBehavior(o.serve!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterDomain--;
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

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEnvironmentVariable = 0;
api.EnvironmentVariable buildEnvironmentVariable() {
  final o = api.EnvironmentVariable();
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    o.availability = buildUnnamed16();
    o.origin = 'foo';
    o.originFileName = 'foo';
    o.secret = 'foo';
    o.value = 'foo';
    o.variable = 'foo';
  }
  buildCounterEnvironmentVariable--;
  return o;
}

void checkEnvironmentVariable(api.EnvironmentVariable o) {
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    checkUnnamed16(o.availability!);
    unittest.expect(o.origin!, unittest.equals('foo'));
    unittest.expect(o.originFileName!, unittest.equals('foo'));
    unittest.expect(o.secret!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterEnvironmentVariable--;
}

core.int buildCounterError = 0;
api.Error buildError() {
  final o = api.Error();
  buildCounterError++;
  if (buildCounterError < 3) {
    o.cloudResource = 'foo';
    o.error = buildStatus();
    o.errorSource = 'foo';
  }
  buildCounterError--;
  return o;
}

void checkError(api.Error o) {
  buildCounterError++;
  if (buildCounterError < 3) {
    unittest.expect(o.cloudResource!, unittest.equals('foo'));
    checkStatus(o.error!);
    unittest.expect(o.errorSource!, unittest.equals('foo'));
  }
  buildCounterError--;
}

core.List<api.Backend> buildUnnamed17() => [buildBackend(), buildBackend()];

void checkUnnamed17(core.List<api.Backend> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackend(o[0]);
  checkBackend(o[1]);
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBackendsResponse = 0;
api.ListBackendsResponse buildListBackendsResponse() {
  final o = api.ListBackendsResponse();
  buildCounterListBackendsResponse++;
  if (buildCounterListBackendsResponse < 3) {
    o.backends = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListBackendsResponse--;
  return o;
}

void checkListBackendsResponse(api.ListBackendsResponse o) {
  buildCounterListBackendsResponse++;
  if (buildCounterListBackendsResponse < 3) {
    checkUnnamed17(o.backends!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListBackendsResponse--;
}

core.List<api.Build> buildUnnamed19() => [buildBuild(), buildBuild()];

void checkUnnamed19(core.List<api.Build> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBuild(o[0]);
  checkBuild(o[1]);
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBuildsResponse = 0;
api.ListBuildsResponse buildListBuildsResponse() {
  final o = api.ListBuildsResponse();
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    o.builds = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListBuildsResponse--;
  return o;
}

void checkListBuildsResponse(api.ListBuildsResponse o) {
  buildCounterListBuildsResponse++;
  if (buildCounterListBuildsResponse < 3) {
    checkUnnamed19(o.builds!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListBuildsResponse--;
}

core.List<api.Domain> buildUnnamed21() => [buildDomain(), buildDomain()];

void checkUnnamed21(core.List<api.Domain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDomain(o[0]);
  checkDomain(o[1]);
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDomainsResponse = 0;
api.ListDomainsResponse buildListDomainsResponse() {
  final o = api.ListDomainsResponse();
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    o.domains = buildUnnamed21();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed22();
  }
  buildCounterListDomainsResponse--;
  return o;
}

void checkListDomainsResponse(api.ListDomainsResponse o) {
  buildCounterListDomainsResponse++;
  if (buildCounterListDomainsResponse < 3) {
    checkUnnamed21(o.domains!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.unreachable!);
  }
  buildCounterListDomainsResponse--;
}

core.List<api.Location> buildUnnamed23() => [buildLocation(), buildLocation()];

void checkUnnamed23(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed23(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed24() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed24(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed24();
    o.unreachable = buildUnnamed25();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.operations!);
    checkUnnamed25(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Rollout> buildUnnamed26() => [buildRollout(), buildRollout()];

void checkUnnamed26(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRolloutsResponse = 0;
api.ListRolloutsResponse buildListRolloutsResponse() {
  final o = api.ListRolloutsResponse();
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rollouts = buildUnnamed26();
    o.unreachable = buildUnnamed27();
  }
  buildCounterListRolloutsResponse--;
  return o;
}

void checkListRolloutsResponse(api.ListRolloutsResponse o) {
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.rollouts!);
    checkUnnamed27(o.unreachable!);
  }
  buildCounterListRolloutsResponse--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed28();
    o.locationId = 'foo';
    o.metadata = buildUnnamed29();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed28(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed29(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterManagedResource = 0;
api.ManagedResource buildManagedResource() {
  final o = api.ManagedResource();
  buildCounterManagedResource++;
  if (buildCounterManagedResource < 3) {
    o.runService = buildRunService();
  }
  buildCounterManagedResource--;
  return o;
}

void checkManagedResource(api.ManagedResource o) {
  buildCounterManagedResource++;
  if (buildCounterManagedResource < 3) {
    checkRunService(o.runService!);
  }
  buildCounterManagedResource--;
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed31(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPath = 0;
api.Path buildPath() {
  final o = api.Path();
  buildCounterPath++;
  if (buildCounterPath < 3) {
    o.pattern = 'foo';
    o.type = 'foo';
  }
  buildCounterPath--;
  return o;
}

void checkPath(api.Path o) {
  buildCounterPath++;
  if (buildCounterPath < 3) {
    unittest.expect(o.pattern!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPath--;
}

core.int buildCounterRedirect = 0;
api.Redirect buildRedirect() {
  final o = api.Redirect();
  buildCounterRedirect++;
  if (buildCounterRedirect < 3) {
    o.status = 'foo';
    o.uri = 'foo';
  }
  buildCounterRedirect--;
  return o;
}

void checkRedirect(api.Redirect o) {
  buildCounterRedirect++;
  if (buildCounterRedirect < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRedirect--;
}

core.Map<core.String, core.String> buildUnnamed32() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed33() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRollout = 0;
api.Rollout buildRollout() {
  final o = api.Rollout();
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    o.annotations = buildUnnamed32();
    o.build = 'foo';
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.error = buildStatus();
    o.etag = 'foo';
    o.labels = buildUnnamed33();
    o.name = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRollout--;
  return o;
}

void checkRollout(api.Rollout o) {
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    checkUnnamed32(o.annotations!);
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkStatus(o.error!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed33(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterRollout--;
}

core.List<api.Path> buildUnnamed34() => [buildPath(), buildPath()];

void checkUnnamed34(core.List<api.Path> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPath(o[0]);
  checkPath(o[1]);
}

core.List<api.Path> buildUnnamed35() => [buildPath(), buildPath()];

void checkUnnamed35(core.List<api.Path> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPath(o[0]);
  checkPath(o[1]);
}

core.int buildCounterRolloutPolicy = 0;
api.RolloutPolicy buildRolloutPolicy() {
  final o = api.RolloutPolicy();
  buildCounterRolloutPolicy++;
  if (buildCounterRolloutPolicy < 3) {
    o.codebaseBranch = 'foo';
    o.disabled = true;
    o.disabledTime = 'foo';
    o.ignoredPaths = buildUnnamed34();
    o.requiredPaths = buildUnnamed35();
  }
  buildCounterRolloutPolicy--;
  return o;
}

void checkRolloutPolicy(api.RolloutPolicy o) {
  buildCounterRolloutPolicy++;
  if (buildCounterRolloutPolicy < 3) {
    unittest.expect(o.codebaseBranch!, unittest.equals('foo'));
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.disabledTime!, unittest.equals('foo'));
    checkUnnamed34(o.ignoredPaths!);
    checkUnnamed35(o.requiredPaths!);
  }
  buildCounterRolloutPolicy--;
}

core.int buildCounterRunConfig = 0;
api.RunConfig buildRunConfig() {
  final o = api.RunConfig();
  buildCounterRunConfig++;
  if (buildCounterRunConfig < 3) {
    o.concurrency = 42;
    o.cpu = 42.0;
    o.maxInstances = 42;
    o.memoryMib = 42;
    o.minInstances = 42;
  }
  buildCounterRunConfig--;
  return o;
}

void checkRunConfig(api.RunConfig o) {
  buildCounterRunConfig++;
  if (buildCounterRunConfig < 3) {
    unittest.expect(o.concurrency!, unittest.equals(42));
    unittest.expect(o.cpu!, unittest.equals(42.0));
    unittest.expect(o.maxInstances!, unittest.equals(42));
    unittest.expect(o.memoryMib!, unittest.equals(42));
    unittest.expect(o.minInstances!, unittest.equals(42));
  }
  buildCounterRunConfig--;
}

core.int buildCounterRunService = 0;
api.RunService buildRunService() {
  final o = api.RunService();
  buildCounterRunService++;
  if (buildCounterRunService < 3) {
    o.service = 'foo';
  }
  buildCounterRunService--;
  return o;
}

void checkRunService(api.RunService o) {
  buildCounterRunService++;
  if (buildCounterRunService < 3) {
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterRunService--;
}

core.int buildCounterServingBehavior = 0;
api.ServingBehavior buildServingBehavior() {
  final o = api.ServingBehavior();
  buildCounterServingBehavior++;
  if (buildCounterServingBehavior < 3) {
    o.redirect = buildRedirect();
  }
  buildCounterServingBehavior--;
  return o;
}

void checkServingBehavior(api.ServingBehavior o) {
  buildCounterServingBehavior++;
  if (buildCounterServingBehavior < 3) {
    checkRedirect(o.redirect!);
  }
  buildCounterServingBehavior--;
}

core.int buildCounterSourceUserMetadata = 0;
api.SourceUserMetadata buildSourceUserMetadata() {
  final o = api.SourceUserMetadata();
  buildCounterSourceUserMetadata++;
  if (buildCounterSourceUserMetadata < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterSourceUserMetadata--;
  return o;
}

void checkSourceUserMetadata(api.SourceUserMetadata o) {
  buildCounterSourceUserMetadata++;
  if (buildCounterSourceUserMetadata < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
  }
  buildCounterSourceUserMetadata--;
}

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed37() => [
  buildUnnamed36(),
  buildUnnamed36(),
];

void checkUnnamed37(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed36(o[0]);
  checkUnnamed36(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed37();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed37(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
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

core.int buildCounterTraffic = 0;
api.Traffic buildTraffic() {
  final o = api.Traffic();
  buildCounterTraffic++;
  if (buildCounterTraffic < 3) {
    o.annotations = buildUnnamed38();
    o.createTime = 'foo';
    o.current = buildTrafficSet();
    o.etag = 'foo';
    o.labels = buildUnnamed39();
    o.name = 'foo';
    o.reconciling = true;
    o.rolloutPolicy = buildRolloutPolicy();
    o.target = buildTrafficSet();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTraffic--;
  return o;
}

void checkTraffic(api.Traffic o) {
  buildCounterTraffic++;
  if (buildCounterTraffic < 3) {
    checkUnnamed38(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkTrafficSet(o.current!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed39(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    checkRolloutPolicy(o.rolloutPolicy!);
    checkTrafficSet(o.target!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTraffic--;
}

core.List<api.TrafficSplit> buildUnnamed40() => [
  buildTrafficSplit(),
  buildTrafficSplit(),
];

void checkUnnamed40(core.List<api.TrafficSplit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrafficSplit(o[0]);
  checkTrafficSplit(o[1]);
}

core.int buildCounterTrafficSet = 0;
api.TrafficSet buildTrafficSet() {
  final o = api.TrafficSet();
  buildCounterTrafficSet++;
  if (buildCounterTrafficSet < 3) {
    o.splits = buildUnnamed40();
  }
  buildCounterTrafficSet--;
  return o;
}

void checkTrafficSet(api.TrafficSet o) {
  buildCounterTrafficSet++;
  if (buildCounterTrafficSet < 3) {
    checkUnnamed40(o.splits!);
  }
  buildCounterTrafficSet--;
}

core.int buildCounterTrafficSplit = 0;
api.TrafficSplit buildTrafficSplit() {
  final o = api.TrafficSplit();
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    o.build = 'foo';
    o.percent = 42;
  }
  buildCounterTrafficSplit--;
  return o;
}

void checkTrafficSplit(api.TrafficSplit o) {
  buildCounterTrafficSplit++;
  if (buildCounterTrafficSplit < 3) {
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.percent!, unittest.equals(42));
  }
  buildCounterTrafficSplit--;
}

core.int buildCounterUserMetadata = 0;
api.UserMetadata buildUserMetadata() {
  final o = api.UserMetadata();
  buildCounterUserMetadata++;
  if (buildCounterUserMetadata < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.imageUri = 'foo';
  }
  buildCounterUserMetadata--;
  return o;
}

void checkUserMetadata(api.UserMetadata o) {
  buildCounterUserMetadata++;
  if (buildCounterUserMetadata < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.imageUri!, unittest.equals('foo'));
  }
  buildCounterUserMetadata--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-ArchiveSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkArchiveSource(od);
    });
  });

  unittest.group('obj-schema-Backend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Backend.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackend(od);
    });
  });

  unittest.group('obj-schema-Build', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuild();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Build.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuild(od);
    });
  });

  unittest.group('obj-schema-BuildSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuildSource(od);
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

  unittest.group('obj-schema-Codebase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCodebase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Codebase.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCodebase(od);
    });
  });

  unittest.group('obj-schema-CodebaseSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCodebaseSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CodebaseSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCodebaseSource(od);
    });
  });

  unittest.group('obj-schema-Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfig(od);
    });
  });

  unittest.group('obj-schema-ContainerSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContainerSource(od);
    });
  });

  unittest.group('obj-schema-CustomDomainStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomDomainStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomDomainStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomDomainStatus(od);
    });
  });

  unittest.group('obj-schema-DnsRecord', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsRecord();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsRecord.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsRecord(od);
    });
  });

  unittest.group('obj-schema-DnsRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsRecordSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsRecordSet(od);
    });
  });

  unittest.group('obj-schema-DnsUpdates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsUpdates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsUpdates.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDnsUpdates(od);
    });
  });

  unittest.group('obj-schema-Domain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Domain.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDomain(od);
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

  unittest.group('obj-schema-EnvironmentVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentVariable(od);
    });
  });

  unittest.group('obj-schema-Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Error.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkError(od);
    });
  });

  unittest.group('obj-schema-ListBackendsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBackendsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBackendsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBackendsResponse(od);
    });
  });

  unittest.group('obj-schema-ListBuildsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBuildsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBuildsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBuildsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDomainsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDomainsResponse(od);
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

  unittest.group('obj-schema-ListRolloutsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRolloutsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRolloutsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRolloutsResponse(od);
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

  unittest.group('obj-schema-ManagedResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedResource(od);
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

  unittest.group('obj-schema-Path', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Path.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPath(od);
    });
  });

  unittest.group('obj-schema-Redirect', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRedirect();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Redirect.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRedirect(od);
    });
  });

  unittest.group('obj-schema-Rollout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Rollout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRollout(od);
    });
  });

  unittest.group('obj-schema-RolloutPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutPolicy(od);
    });
  });

  unittest.group('obj-schema-RunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunConfig(od);
    });
  });

  unittest.group('obj-schema-RunService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunService(od);
    });
  });

  unittest.group('obj-schema-ServingBehavior', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServingBehavior();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServingBehavior.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkServingBehavior(od);
    });
  });

  unittest.group('obj-schema-SourceUserMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceUserMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceUserMetadata(od);
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

  unittest.group('obj-schema-Traffic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTraffic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Traffic.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTraffic(od);
    });
  });

  unittest.group('obj-schema-TrafficSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrafficSet(od);
    });
  });

  unittest.group('obj-schema-TrafficSplit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficSplit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficSplit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrafficSplit(od);
    });
  });

  unittest.group('obj-schema-UserMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserMetadata(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed41();
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
  });

  unittest.group('resource-ProjectsLocationsBackendsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.backends;
      final arg_request = buildBackend();
      final arg_parent = 'foo';
      final arg_backendId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Backend.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackend(obj);

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
            queryMap['backendId']!.first,
            unittest.equals(arg_backendId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        backendId: arg_backendId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.backends;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        force: arg_force,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.backends;
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
          final resp = convert.json.encode(buildBackend());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBackend(response as api.Backend);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.backends;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            queryMap['showDeleted']!.first,
            unittest.equals('$arg_showDeleted'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListBackendsResponse());
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
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListBackendsResponse(response as api.ListBackendsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.backends;
      final arg_request = buildBackend();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Backend.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBackend(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackendsBuildsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.builds;
      final arg_request = buildBuild();
      final arg_parent = 'foo';
      final arg_buildId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Build.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBuild(obj);

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
            queryMap['buildId']!.first,
            unittest.equals(arg_buildId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        buildId: arg_buildId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.builds;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.builds;
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
          final resp = convert.json.encode(buildBuild());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBuild(response as api.Build);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.builds;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            queryMap['showDeleted']!.first,
            unittest.equals('$arg_showDeleted'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListBuildsResponse());
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
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListBuildsResponse(response as api.ListBuildsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBackendsDomainsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.domains;
      final arg_request = buildDomain();
      final arg_parent = 'foo';
      final arg_domainId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Domain.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDomain(obj);

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
            queryMap['domainId']!.first,
            unittest.equals(arg_domainId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        domainId: arg_domainId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.domains;
      final arg_name = 'foo';
      final arg_etag = 'foo';
      final arg_requestId = 'foo';
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
          unittest.expect(queryMap['etag']!.first, unittest.equals(arg_etag));
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        etag: arg_etag,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.domains;
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
          final resp = convert.json.encode(buildDomain());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDomain(response as api.Domain);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.domains;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            queryMap['showDeleted']!.first,
            unittest.equals('$arg_showDeleted'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDomainsResponse());
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
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListDomainsResponse(response as api.ListDomainsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.domains;
      final arg_request = buildDomain();
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Domain.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDomain(obj);

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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        allowMissing: arg_allowMissing,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsBackendsRolloutsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.rollouts;
      final arg_request = buildRollout();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_rolloutId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Rollout.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRollout(obj);

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
            queryMap['rolloutId']!.first,
            unittest.equals(arg_rolloutId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        rolloutId: arg_rolloutId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.rollouts;
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
          final resp = convert.json.encode(buildRollout());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRollout(response as api.Rollout);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.rollouts;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
            queryMap['showDeleted']!.first,
            unittest.equals('$arg_showDeleted'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListRolloutsResponse());
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
        showDeleted: arg_showDeleted,
        $fields: arg_$fields,
      );
      checkListRolloutsResponse(response as api.ListRolloutsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBackendsTrafficResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.traffic;
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
          final resp = convert.json.encode(buildTraffic());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTraffic(response as api.Traffic);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseAppHostingApi(mock).projects.locations.backends.traffic;
      final arg_request = buildTraffic();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Traffic.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTraffic(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppHostingApi(mock).projects.locations.operations;
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
      final res = api.FirebaseAppHostingApi(mock).projects.locations.operations;
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
      final res = api.FirebaseAppHostingApi(mock).projects.locations.operations;
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
      final res = api.FirebaseAppHostingApi(mock).projects.locations.operations;
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
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
