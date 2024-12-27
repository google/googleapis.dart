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

import 'package:googleapis/config/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, api.TerraformOutput> buildUnnamed0() => {
      'x': buildTerraformOutput(),
      'y': buildTerraformOutput(),
    };

void checkUnnamed0(core.Map<core.String, api.TerraformOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformOutput(o['x']!);
  checkTerraformOutput(o['y']!);
}

core.int buildCounterApplyResults = 0;
api.ApplyResults buildApplyResults() {
  final o = api.ApplyResults();
  buildCounterApplyResults++;
  if (buildCounterApplyResults < 3) {
    o.artifacts = 'foo';
    o.content = 'foo';
    o.outputs = buildUnnamed0();
  }
  buildCounterApplyResults--;
  return o;
}

void checkApplyResults(api.ApplyResults o) {
  buildCounterApplyResults++;
  if (buildCounterApplyResults < 3) {
    unittest.expect(o.artifacts!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed0(o.outputs!);
  }
  buildCounterApplyResults--;
}

core.List<api.AuditLogConfig> buildUnnamed1() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed1(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1(o.auditLogConfigs!);
    unittest.expect(o.service!, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2(o.exemptedMembers!);
    unittest.expect(o.logType!, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
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
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
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

core.int buildCounterDeleteStatefileRequest = 0;
api.DeleteStatefileRequest buildDeleteStatefileRequest() {
  final o = api.DeleteStatefileRequest();
  buildCounterDeleteStatefileRequest++;
  if (buildCounterDeleteStatefileRequest < 3) {
    o.lockId = 'foo';
  }
  buildCounterDeleteStatefileRequest--;
  return o;
}

void checkDeleteStatefileRequest(api.DeleteStatefileRequest o) {
  buildCounterDeleteStatefileRequest++;
  if (buildCounterDeleteStatefileRequest < 3) {
    unittest.expect(o.lockId!, unittest.equals('foo'));
  }
  buildCounterDeleteStatefileRequest--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.TerraformError> buildUnnamed6() => [
      buildTerraformError(),
      buildTerraformError(),
    ];

void checkUnnamed6(core.List<api.TerraformError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformError(o[0]);
  checkTerraformError(o[1]);
}

core.int buildCounterDeployment = 0;
api.Deployment buildDeployment() {
  final o = api.Deployment();
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    o.annotations = buildUnnamed4();
    o.artifactsGcsBucket = 'foo';
    o.createTime = 'foo';
    o.deleteBuild = 'foo';
    o.deleteLogs = 'foo';
    o.deleteResults = buildApplyResults();
    o.errorCode = 'foo';
    o.errorLogs = 'foo';
    o.importExistingResources = true;
    o.labels = buildUnnamed5();
    o.latestRevision = 'foo';
    o.lockState = 'foo';
    o.name = 'foo';
    o.quotaValidation = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateDetail = 'foo';
    o.terraformBlueprint = buildTerraformBlueprint();
    o.tfErrors = buildUnnamed6();
    o.tfVersion = 'foo';
    o.tfVersionConstraint = 'foo';
    o.updateTime = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterDeployment--;
  return o;
}

void checkDeployment(api.Deployment o) {
  buildCounterDeployment++;
  if (buildCounterDeployment < 3) {
    checkUnnamed4(o.annotations!);
    unittest.expect(o.artifactsGcsBucket!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleteBuild!, unittest.equals('foo'));
    unittest.expect(o.deleteLogs!, unittest.equals('foo'));
    checkApplyResults(o.deleteResults!);
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorLogs!, unittest.equals('foo'));
    unittest.expect(o.importExistingResources!, unittest.isTrue);
    checkUnnamed5(o.labels!);
    unittest.expect(o.latestRevision!, unittest.equals('foo'));
    unittest.expect(o.lockState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.quotaValidation!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDetail!, unittest.equals('foo'));
    checkTerraformBlueprint(o.terraformBlueprint!);
    checkUnnamed6(o.tfErrors!);
    unittest.expect(o.tfVersion!, unittest.equals('foo'));
    unittest.expect(o.tfVersionConstraint!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterDeployment--;
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

core.int buildCounterExportDeploymentStatefileRequest = 0;
api.ExportDeploymentStatefileRequest buildExportDeploymentStatefileRequest() {
  final o = api.ExportDeploymentStatefileRequest();
  buildCounterExportDeploymentStatefileRequest++;
  if (buildCounterExportDeploymentStatefileRequest < 3) {
    o.draft = true;
  }
  buildCounterExportDeploymentStatefileRequest--;
  return o;
}

void checkExportDeploymentStatefileRequest(
  api.ExportDeploymentStatefileRequest o,
) {
  buildCounterExportDeploymentStatefileRequest++;
  if (buildCounterExportDeploymentStatefileRequest < 3) {
    unittest.expect(o.draft!, unittest.isTrue);
  }
  buildCounterExportDeploymentStatefileRequest--;
}

core.int buildCounterExportPreviewResultRequest = 0;
api.ExportPreviewResultRequest buildExportPreviewResultRequest() {
  final o = api.ExportPreviewResultRequest();
  buildCounterExportPreviewResultRequest++;
  if (buildCounterExportPreviewResultRequest < 3) {}
  buildCounterExportPreviewResultRequest--;
  return o;
}

void checkExportPreviewResultRequest(api.ExportPreviewResultRequest o) {
  buildCounterExportPreviewResultRequest++;
  if (buildCounterExportPreviewResultRequest < 3) {}
  buildCounterExportPreviewResultRequest--;
}

core.int buildCounterExportPreviewResultResponse = 0;
api.ExportPreviewResultResponse buildExportPreviewResultResponse() {
  final o = api.ExportPreviewResultResponse();
  buildCounterExportPreviewResultResponse++;
  if (buildCounterExportPreviewResultResponse < 3) {
    o.result = buildPreviewResult();
  }
  buildCounterExportPreviewResultResponse--;
  return o;
}

void checkExportPreviewResultResponse(api.ExportPreviewResultResponse o) {
  buildCounterExportPreviewResultResponse++;
  if (buildCounterExportPreviewResultResponse < 3) {
    checkPreviewResult(o.result!);
  }
  buildCounterExportPreviewResultResponse--;
}

core.int buildCounterExportRevisionStatefileRequest = 0;
api.ExportRevisionStatefileRequest buildExportRevisionStatefileRequest() {
  final o = api.ExportRevisionStatefileRequest();
  buildCounterExportRevisionStatefileRequest++;
  if (buildCounterExportRevisionStatefileRequest < 3) {}
  buildCounterExportRevisionStatefileRequest--;
  return o;
}

void checkExportRevisionStatefileRequest(api.ExportRevisionStatefileRequest o) {
  buildCounterExportRevisionStatefileRequest++;
  if (buildCounterExportRevisionStatefileRequest < 3) {}
  buildCounterExportRevisionStatefileRequest--;
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

core.int buildCounterGitSource = 0;
api.GitSource buildGitSource() {
  final o = api.GitSource();
  buildCounterGitSource++;
  if (buildCounterGitSource < 3) {
    o.directory = 'foo';
    o.ref = 'foo';
    o.repo = 'foo';
  }
  buildCounterGitSource--;
  return o;
}

void checkGitSource(api.GitSource o) {
  buildCounterGitSource++;
  if (buildCounterGitSource < 3) {
    unittest.expect(o.directory!, unittest.equals('foo'));
    unittest.expect(o.ref!, unittest.equals('foo'));
    unittest.expect(o.repo!, unittest.equals('foo'));
  }
  buildCounterGitSource--;
}

core.int buildCounterImportStatefileRequest = 0;
api.ImportStatefileRequest buildImportStatefileRequest() {
  final o = api.ImportStatefileRequest();
  buildCounterImportStatefileRequest++;
  if (buildCounterImportStatefileRequest < 3) {
    o.lockId = 'foo';
  }
  buildCounterImportStatefileRequest--;
  return o;
}

void checkImportStatefileRequest(api.ImportStatefileRequest o) {
  buildCounterImportStatefileRequest++;
  if (buildCounterImportStatefileRequest < 3) {
    unittest.expect(o.lockId!, unittest.equals('foo'));
  }
  buildCounterImportStatefileRequest--;
}

core.List<api.Deployment> buildUnnamed7() => [
      buildDeployment(),
      buildDeployment(),
    ];

void checkUnnamed7(core.List<api.Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeployment(o[0]);
  checkDeployment(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDeploymentsResponse = 0;
api.ListDeploymentsResponse buildListDeploymentsResponse() {
  final o = api.ListDeploymentsResponse();
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed7();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed8();
  }
  buildCounterListDeploymentsResponse--;
  return o;
}

void checkListDeploymentsResponse(api.ListDeploymentsResponse o) {
  buildCounterListDeploymentsResponse++;
  if (buildCounterListDeploymentsResponse < 3) {
    checkUnnamed7(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListDeploymentsResponse--;
}

core.List<api.Location> buildUnnamed9() => [buildLocation(), buildLocation()];

void checkUnnamed9(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed9(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed10() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed10(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed10();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Preview> buildUnnamed11() => [buildPreview(), buildPreview()];

void checkUnnamed11(core.List<api.Preview> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPreview(o[0]);
  checkPreview(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPreviewsResponse = 0;
api.ListPreviewsResponse buildListPreviewsResponse() {
  final o = api.ListPreviewsResponse();
  buildCounterListPreviewsResponse++;
  if (buildCounterListPreviewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.previews = buildUnnamed11();
    o.unreachable = buildUnnamed12();
  }
  buildCounterListPreviewsResponse--;
  return o;
}

void checkListPreviewsResponse(api.ListPreviewsResponse o) {
  buildCounterListPreviewsResponse++;
  if (buildCounterListPreviewsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.previews!);
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListPreviewsResponse--;
}

core.List<api.Resource> buildUnnamed13() => [buildResource(), buildResource()];

void checkUnnamed13(core.List<api.Resource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResource(o[0]);
  checkResource(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListResourcesResponse = 0;
api.ListResourcesResponse buildListResourcesResponse() {
  final o = api.ListResourcesResponse();
  buildCounterListResourcesResponse++;
  if (buildCounterListResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.resources = buildUnnamed13();
    o.unreachable = buildUnnamed14();
  }
  buildCounterListResourcesResponse--;
  return o;
}

void checkListResourcesResponse(api.ListResourcesResponse o) {
  buildCounterListResourcesResponse++;
  if (buildCounterListResourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.resources!);
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListResourcesResponse--;
}

core.List<api.Revision> buildUnnamed15() => [buildRevision(), buildRevision()];

void checkUnnamed15(core.List<api.Revision> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRevision(o[0]);
  checkRevision(o[1]);
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRevisionsResponse = 0;
api.ListRevisionsResponse buildListRevisionsResponse() {
  final o = api.ListRevisionsResponse();
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed15();
    o.unreachable = buildUnnamed16();
  }
  buildCounterListRevisionsResponse--;
  return o;
}

void checkListRevisionsResponse(api.ListRevisionsResponse o) {
  buildCounterListRevisionsResponse++;
  if (buildCounterListRevisionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.revisions!);
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListRevisionsResponse--;
}

core.List<api.TerraformVersion> buildUnnamed17() => [
      buildTerraformVersion(),
      buildTerraformVersion(),
    ];

void checkUnnamed17(core.List<api.TerraformVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformVersion(o[0]);
  checkTerraformVersion(o[1]);
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTerraformVersionsResponse = 0;
api.ListTerraformVersionsResponse buildListTerraformVersionsResponse() {
  final o = api.ListTerraformVersionsResponse();
  buildCounterListTerraformVersionsResponse++;
  if (buildCounterListTerraformVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.terraformVersions = buildUnnamed17();
    o.unreachable = buildUnnamed18();
  }
  buildCounterListTerraformVersionsResponse--;
  return o;
}

void checkListTerraformVersionsResponse(api.ListTerraformVersionsResponse o) {
  buildCounterListTerraformVersionsResponse++;
  if (buildCounterListTerraformVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.terraformVersions!);
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListTerraformVersionsResponse--;
}

core.Map<core.String, core.String> buildUnnamed19() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed19();
    o.locationId = 'foo';
    o.metadata = buildUnnamed20();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed19(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed20(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterLockDeploymentRequest = 0;
api.LockDeploymentRequest buildLockDeploymentRequest() {
  final o = api.LockDeploymentRequest();
  buildCounterLockDeploymentRequest++;
  if (buildCounterLockDeploymentRequest < 3) {}
  buildCounterLockDeploymentRequest--;
  return o;
}

void checkLockDeploymentRequest(api.LockDeploymentRequest o) {
  buildCounterLockDeploymentRequest++;
  if (buildCounterLockDeploymentRequest < 3) {}
  buildCounterLockDeploymentRequest--;
}

core.int buildCounterLockInfo = 0;
api.LockInfo buildLockInfo() {
  final o = api.LockInfo();
  buildCounterLockInfo++;
  if (buildCounterLockInfo < 3) {
    o.createTime = 'foo';
    o.info = 'foo';
    o.lockId = 'foo';
    o.operation = 'foo';
    o.version = 'foo';
    o.who = 'foo';
  }
  buildCounterLockInfo--;
  return o;
}

void checkLockInfo(api.LockInfo o) {
  buildCounterLockInfo++;
  if (buildCounterLockInfo < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.info!, unittest.equals('foo'));
    unittest.expect(o.lockId!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.who!, unittest.equals('foo'));
  }
  buildCounterLockInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed21() => {
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

void checkUnnamed21(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed21();
    o.name = 'foo';
    o.response = buildUnnamed22();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed21(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed22(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.AuditConfig> buildUnnamed23() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed23(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed24() => [buildBinding(), buildBinding()];

void checkUnnamed24(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed23();
    o.bindings = buildUnnamed24();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed23(o.auditConfigs!);
    checkUnnamed24(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.Map<core.String, core.String> buildUnnamed25() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.TerraformError> buildUnnamed27() => [
      buildTerraformError(),
      buildTerraformError(),
    ];

void checkUnnamed27(core.List<api.TerraformError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformError(o[0]);
  checkTerraformError(o[1]);
}

core.int buildCounterPreview = 0;
api.Preview buildPreview() {
  final o = api.Preview();
  buildCounterPreview++;
  if (buildCounterPreview < 3) {
    o.annotations = buildUnnamed25();
    o.artifactsGcsBucket = 'foo';
    o.build = 'foo';
    o.createTime = 'foo';
    o.deployment = 'foo';
    o.errorCode = 'foo';
    o.errorLogs = 'foo';
    o.errorStatus = buildStatus();
    o.labels = buildUnnamed26();
    o.logs = 'foo';
    o.name = 'foo';
    o.previewArtifacts = buildPreviewArtifacts();
    o.previewMode = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.terraformBlueprint = buildTerraformBlueprint();
    o.tfErrors = buildUnnamed27();
    o.tfVersion = 'foo';
    o.tfVersionConstraint = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterPreview--;
  return o;
}

void checkPreview(api.Preview o) {
  buildCounterPreview++;
  if (buildCounterPreview < 3) {
    checkUnnamed25(o.annotations!);
    unittest.expect(o.artifactsGcsBucket!, unittest.equals('foo'));
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deployment!, unittest.equals('foo'));
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorLogs!, unittest.equals('foo'));
    checkStatus(o.errorStatus!);
    checkUnnamed26(o.labels!);
    unittest.expect(o.logs!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPreviewArtifacts(o.previewArtifacts!);
    unittest.expect(o.previewMode!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTerraformBlueprint(o.terraformBlueprint!);
    checkUnnamed27(o.tfErrors!);
    unittest.expect(o.tfVersion!, unittest.equals('foo'));
    unittest.expect(o.tfVersionConstraint!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterPreview--;
}

core.int buildCounterPreviewArtifacts = 0;
api.PreviewArtifacts buildPreviewArtifacts() {
  final o = api.PreviewArtifacts();
  buildCounterPreviewArtifacts++;
  if (buildCounterPreviewArtifacts < 3) {
    o.artifacts = 'foo';
    o.content = 'foo';
  }
  buildCounterPreviewArtifacts--;
  return o;
}

void checkPreviewArtifacts(api.PreviewArtifacts o) {
  buildCounterPreviewArtifacts++;
  if (buildCounterPreviewArtifacts < 3) {
    unittest.expect(o.artifacts!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
  }
  buildCounterPreviewArtifacts--;
}

core.int buildCounterPreviewResult = 0;
api.PreviewResult buildPreviewResult() {
  final o = api.PreviewResult();
  buildCounterPreviewResult++;
  if (buildCounterPreviewResult < 3) {
    o.binarySignedUri = 'foo';
    o.jsonSignedUri = 'foo';
  }
  buildCounterPreviewResult--;
  return o;
}

void checkPreviewResult(api.PreviewResult o) {
  buildCounterPreviewResult++;
  if (buildCounterPreviewResult < 3) {
    unittest.expect(o.binarySignedUri!, unittest.equals('foo'));
    unittest.expect(o.jsonSignedUri!, unittest.equals('foo'));
  }
  buildCounterPreviewResult--;
}

core.Map<core.String, api.ResourceCAIInfo> buildUnnamed28() => {
      'x': buildResourceCAIInfo(),
      'y': buildResourceCAIInfo(),
    };

void checkUnnamed28(core.Map<core.String, api.ResourceCAIInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceCAIInfo(o['x']!);
  checkResourceCAIInfo(o['y']!);
}

core.int buildCounterResource = 0;
api.Resource buildResource() {
  final o = api.Resource();
  buildCounterResource++;
  if (buildCounterResource < 3) {
    o.caiAssets = buildUnnamed28();
    o.intent = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.terraformInfo = buildResourceTerraformInfo();
  }
  buildCounterResource--;
  return o;
}

void checkResource(api.Resource o) {
  buildCounterResource++;
  if (buildCounterResource < 3) {
    checkUnnamed28(o.caiAssets!);
    unittest.expect(o.intent!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkResourceTerraformInfo(o.terraformInfo!);
  }
  buildCounterResource--;
}

core.int buildCounterResourceCAIInfo = 0;
api.ResourceCAIInfo buildResourceCAIInfo() {
  final o = api.ResourceCAIInfo();
  buildCounterResourceCAIInfo++;
  if (buildCounterResourceCAIInfo < 3) {
    o.fullResourceName = 'foo';
  }
  buildCounterResourceCAIInfo--;
  return o;
}

void checkResourceCAIInfo(api.ResourceCAIInfo o) {
  buildCounterResourceCAIInfo++;
  if (buildCounterResourceCAIInfo < 3) {
    unittest.expect(o.fullResourceName!, unittest.equals('foo'));
  }
  buildCounterResourceCAIInfo--;
}

core.int buildCounterResourceTerraformInfo = 0;
api.ResourceTerraformInfo buildResourceTerraformInfo() {
  final o = api.ResourceTerraformInfo();
  buildCounterResourceTerraformInfo++;
  if (buildCounterResourceTerraformInfo < 3) {
    o.address = 'foo';
    o.id = 'foo';
    o.type = 'foo';
  }
  buildCounterResourceTerraformInfo--;
  return o;
}

void checkResourceTerraformInfo(api.ResourceTerraformInfo o) {
  buildCounterResourceTerraformInfo++;
  if (buildCounterResourceTerraformInfo < 3) {
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterResourceTerraformInfo--;
}

core.List<api.TerraformError> buildUnnamed29() => [
      buildTerraformError(),
      buildTerraformError(),
    ];

void checkUnnamed29(core.List<api.TerraformError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformError(o[0]);
  checkTerraformError(o[1]);
}

core.int buildCounterRevision = 0;
api.Revision buildRevision() {
  final o = api.Revision();
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    o.action = 'foo';
    o.applyResults = buildApplyResults();
    o.build = 'foo';
    o.createTime = 'foo';
    o.errorCode = 'foo';
    o.errorLogs = 'foo';
    o.importExistingResources = true;
    o.logs = 'foo';
    o.name = 'foo';
    o.quotaValidation = 'foo';
    o.quotaValidationResults = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.stateDetail = 'foo';
    o.terraformBlueprint = buildTerraformBlueprint();
    o.tfErrors = buildUnnamed29();
    o.tfVersion = 'foo';
    o.tfVersionConstraint = 'foo';
    o.updateTime = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterRevision--;
  return o;
}

void checkRevision(api.Revision o) {
  buildCounterRevision++;
  if (buildCounterRevision < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkApplyResults(o.applyResults!);
    unittest.expect(o.build!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorLogs!, unittest.equals('foo'));
    unittest.expect(o.importExistingResources!, unittest.isTrue);
    unittest.expect(o.logs!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.quotaValidation!, unittest.equals('foo'));
    unittest.expect(o.quotaValidationResults!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateDetail!, unittest.equals('foo'));
    checkTerraformBlueprint(o.terraformBlueprint!);
    checkUnnamed29(o.tfErrors!);
    unittest.expect(o.tfVersion!, unittest.equals('foo'));
    unittest.expect(o.tfVersionConstraint!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.workerPool!, unittest.equals('foo'));
  }
  buildCounterRevision--;
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

core.int buildCounterStatefile = 0;
api.Statefile buildStatefile() {
  final o = api.Statefile();
  buildCounterStatefile++;
  if (buildCounterStatefile < 3) {
    o.signedUri = 'foo';
  }
  buildCounterStatefile--;
  return o;
}

void checkStatefile(api.Statefile o) {
  buildCounterStatefile++;
  if (buildCounterStatefile < 3) {
    unittest.expect(o.signedUri!, unittest.equals('foo'));
  }
  buildCounterStatefile--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed31() => [
      buildUnnamed30(),
      buildUnnamed30(),
    ];

void checkUnnamed31(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed30(o[0]);
  checkUnnamed30(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed31();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed31(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, api.TerraformVariable> buildUnnamed32() => {
      'x': buildTerraformVariable(),
      'y': buildTerraformVariable(),
    };

void checkUnnamed32(core.Map<core.String, api.TerraformVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTerraformVariable(o['x']!);
  checkTerraformVariable(o['y']!);
}

core.int buildCounterTerraformBlueprint = 0;
api.TerraformBlueprint buildTerraformBlueprint() {
  final o = api.TerraformBlueprint();
  buildCounterTerraformBlueprint++;
  if (buildCounterTerraformBlueprint < 3) {
    o.gcsSource = 'foo';
    o.gitSource = buildGitSource();
    o.inputValues = buildUnnamed32();
  }
  buildCounterTerraformBlueprint--;
  return o;
}

void checkTerraformBlueprint(api.TerraformBlueprint o) {
  buildCounterTerraformBlueprint++;
  if (buildCounterTerraformBlueprint < 3) {
    unittest.expect(o.gcsSource!, unittest.equals('foo'));
    checkGitSource(o.gitSource!);
    checkUnnamed32(o.inputValues!);
  }
  buildCounterTerraformBlueprint--;
}

core.int buildCounterTerraformError = 0;
api.TerraformError buildTerraformError() {
  final o = api.TerraformError();
  buildCounterTerraformError++;
  if (buildCounterTerraformError < 3) {
    o.error = buildStatus();
    o.errorDescription = 'foo';
    o.httpResponseCode = 42;
    o.resourceAddress = 'foo';
  }
  buildCounterTerraformError--;
  return o;
}

void checkTerraformError(api.TerraformError o) {
  buildCounterTerraformError++;
  if (buildCounterTerraformError < 3) {
    checkStatus(o.error!);
    unittest.expect(o.errorDescription!, unittest.equals('foo'));
    unittest.expect(o.httpResponseCode!, unittest.equals(42));
    unittest.expect(o.resourceAddress!, unittest.equals('foo'));
  }
  buildCounterTerraformError--;
}

core.int buildCounterTerraformOutput = 0;
api.TerraformOutput buildTerraformOutput() {
  final o = api.TerraformOutput();
  buildCounterTerraformOutput++;
  if (buildCounterTerraformOutput < 3) {
    o.sensitive = true;
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterTerraformOutput--;
  return o;
}

void checkTerraformOutput(api.TerraformOutput o) {
  buildCounterTerraformOutput++;
  if (buildCounterTerraformOutput < 3) {
    unittest.expect(o.sensitive!, unittest.isTrue);
    var casted9 = (o.value!) as core.Map;
    unittest.expect(casted9, unittest.hasLength(3));
    unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted9['bool'], unittest.equals(true));
    unittest.expect(casted9['string'], unittest.equals('foo'));
  }
  buildCounterTerraformOutput--;
}

core.int buildCounterTerraformVariable = 0;
api.TerraformVariable buildTerraformVariable() {
  final o = api.TerraformVariable();
  buildCounterTerraformVariable++;
  if (buildCounterTerraformVariable < 3) {
    o.inputValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
  }
  buildCounterTerraformVariable--;
  return o;
}

void checkTerraformVariable(api.TerraformVariable o) {
  buildCounterTerraformVariable++;
  if (buildCounterTerraformVariable < 3) {
    var casted10 = (o.inputValue!) as core.Map;
    unittest.expect(casted10, unittest.hasLength(3));
    unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted10['bool'], unittest.equals(true));
    unittest.expect(casted10['string'], unittest.equals('foo'));
  }
  buildCounterTerraformVariable--;
}

core.int buildCounterTerraformVersion = 0;
api.TerraformVersion buildTerraformVersion() {
  final o = api.TerraformVersion();
  buildCounterTerraformVersion++;
  if (buildCounterTerraformVersion < 3) {
    o.deprecateTime = 'foo';
    o.name = 'foo';
    o.obsoleteTime = 'foo';
    o.state = 'foo';
    o.supportTime = 'foo';
  }
  buildCounterTerraformVersion--;
  return o;
}

void checkTerraformVersion(api.TerraformVersion o) {
  buildCounterTerraformVersion++;
  if (buildCounterTerraformVersion < 3) {
    unittest.expect(o.deprecateTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.obsoleteTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.supportTime!, unittest.equals('foo'));
  }
  buildCounterTerraformVersion--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed33();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed33(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed34();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed34(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUnlockDeploymentRequest = 0;
api.UnlockDeploymentRequest buildUnlockDeploymentRequest() {
  final o = api.UnlockDeploymentRequest();
  buildCounterUnlockDeploymentRequest++;
  if (buildCounterUnlockDeploymentRequest < 3) {
    o.lockId = 'foo';
  }
  buildCounterUnlockDeploymentRequest--;
  return o;
}

void checkUnlockDeploymentRequest(api.UnlockDeploymentRequest o) {
  buildCounterUnlockDeploymentRequest++;
  if (buildCounterUnlockDeploymentRequest < 3) {
    unittest.expect(o.lockId!, unittest.equals('foo'));
  }
  buildCounterUnlockDeploymentRequest--;
}

void main() {
  unittest.group('obj-schema-ApplyResults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplyResults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplyResults.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplyResults(od);
    });
  });

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

  unittest.group('obj-schema-DeleteStatefileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteStatefileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteStatefileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteStatefileRequest(od);
    });
  });

  unittest.group('obj-schema-Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeployment(od);
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

  unittest.group('obj-schema-ExportDeploymentStatefileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportDeploymentStatefileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportDeploymentStatefileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportDeploymentStatefileRequest(od);
    });
  });

  unittest.group('obj-schema-ExportPreviewResultRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportPreviewResultRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportPreviewResultRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportPreviewResultRequest(od);
    });
  });

  unittest.group('obj-schema-ExportPreviewResultResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportPreviewResultResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportPreviewResultResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportPreviewResultResponse(od);
    });
  });

  unittest.group('obj-schema-ExportRevisionStatefileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExportRevisionStatefileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExportRevisionStatefileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExportRevisionStatefileRequest(od);
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

  unittest.group('obj-schema-GitSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGitSource(od);
    });
  });

  unittest.group('obj-schema-ImportStatefileRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportStatefileRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportStatefileRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportStatefileRequest(od);
    });
  });

  unittest.group('obj-schema-ListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeploymentsResponse(od);
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

  unittest.group('obj-schema-ListPreviewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPreviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPreviewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPreviewsResponse(od);
    });
  });

  unittest.group('obj-schema-ListResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListResourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRevisionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTerraformVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTerraformVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTerraformVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTerraformVersionsResponse(od);
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

  unittest.group('obj-schema-LockDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLockDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LockDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLockDeploymentRequest(od);
    });
  });

  unittest.group('obj-schema-LockInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLockInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LockInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLockInfo(od);
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

  unittest.group('obj-schema-Preview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Preview.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreview(od);
    });
  });

  unittest.group('obj-schema-PreviewArtifacts', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewArtifacts();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewArtifacts.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreviewArtifacts(od);
    });
  });

  unittest.group('obj-schema-PreviewResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreviewResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreviewResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreviewResult(od);
    });
  });

  unittest.group('obj-schema-Resource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResource(od);
    });
  });

  unittest.group('obj-schema-ResourceCAIInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceCAIInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceCAIInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceCAIInfo(od);
    });
  });

  unittest.group('obj-schema-ResourceTerraformInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceTerraformInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceTerraformInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceTerraformInfo(od);
    });
  });

  unittest.group('obj-schema-Revision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Revision.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRevision(od);
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

  unittest.group('obj-schema-Statefile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatefile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Statefile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatefile(od);
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

  unittest.group('obj-schema-TerraformBlueprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformBlueprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformBlueprint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformBlueprint(od);
    });
  });

  unittest.group('obj-schema-TerraformError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformError(od);
    });
  });

  unittest.group('obj-schema-TerraformOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformOutput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformOutput(od);
    });
  });

  unittest.group('obj-schema-TerraformVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformVariable(od);
    });
  });

  unittest.group('obj-schema-TerraformVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerraformVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerraformVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerraformVersion(od);
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

  unittest.group('obj-schema-UnlockDeploymentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnlockDeploymentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnlockDeploymentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnlockDeploymentRequest(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations;
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
      final res = api.ConfigApi(mock).projects.locations;
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
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildDeployment();
      final arg_parent = 'foo';
      final arg_deploymentId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

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
            queryMap['deploymentId']!.first,
            unittest.equals(arg_deploymentId),
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
        deploymentId: arg_deploymentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_name = 'foo';
      final arg_deletePolicy = 'foo';
      final arg_force = true;
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
            queryMap['deletePolicy']!.first,
            unittest.equals(arg_deletePolicy),
          );
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
      final response = await res.delete(
        arg_name,
        deletePolicy: arg_deletePolicy,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteState', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildDeleteStatefileRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeleteStatefileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeleteStatefileRequest(obj);

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
      final response = await res.deleteState(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--exportLock', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
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
          final resp = convert.json.encode(buildLockInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportLock(arg_name, $fields: arg_$fields);
      checkLockInfo(response as api.LockInfo);
    });

    unittest.test('method--exportState', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildExportDeploymentStatefileRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportDeploymentStatefileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportDeploymentStatefileRequest(obj);

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
          final resp = convert.json.encode(buildStatefile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportState(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkStatefile(response as api.Statefile);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
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
          final resp = convert.json.encode(buildDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeployment(response as api.Deployment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
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

    unittest.test('method--importState', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildImportStatefileRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportStatefileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportStatefileRequest(obj);

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
          final resp = convert.json.encode(buildStatefile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.importState(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkStatefile(response as api.Statefile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
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
          final resp = convert.json.encode(buildListDeploymentsResponse());
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
      checkListDeploymentsResponse(response as api.ListDeploymentsResponse);
    });

    unittest.test('method--lock', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildLockDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LockDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLockDeploymentRequest(obj);

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
      final response = await res.lock(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildDeployment();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeployment(obj);

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
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
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
      final res = api.ConfigApi(mock).projects.locations.deployments;
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

    unittest.test('method--unlock', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments;
      final arg_request = buildUnlockDeploymentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnlockDeploymentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnlockDeploymentRequest(obj);

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
      final response = await res.unlock(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsDeploymentsRevisionsResource', () {
    unittest.test('method--exportState', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments.revisions;
      final arg_request = buildExportRevisionStatefileRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportRevisionStatefileRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportRevisionStatefileRequest(obj);

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
          final resp = convert.json.encode(buildStatefile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.exportState(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkStatefile(response as api.Statefile);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments.revisions;
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
          final resp = convert.json.encode(buildRevision());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRevision(response as api.Revision);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.deployments.revisions;
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
          final resp = convert.json.encode(buildListRevisionsResponse());
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
      checkListRevisionsResponse(response as api.ListRevisionsResponse);
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDeploymentsRevisionsResourcesResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res = api.ConfigApi(
          mock,
        ).projects.locations.deployments.revisions.resources;
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
            final resp = convert.json.encode(buildResource());
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkResource(response as api.Resource);
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.ConfigApi(
          mock,
        ).projects.locations.deployments.revisions.resources;
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
            final resp = convert.json.encode(buildListResourcesResponse());
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
        checkListResourcesResponse(response as api.ListResourcesResponse);
      });
    },
  );

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.operations;
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
      final res = api.ConfigApi(mock).projects.locations.operations;
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
      final res = api.ConfigApi(mock).projects.locations.operations;
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
      final res = api.ConfigApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsPreviewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.previews;
      final arg_request = buildPreview();
      final arg_parent = 'foo';
      final arg_previewId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Preview.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPreview(obj);

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
            queryMap['previewId']!.first,
            unittest.equals(arg_previewId),
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
        previewId: arg_previewId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.previews;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.previews;
      final arg_request = buildExportPreviewResultRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExportPreviewResultRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExportPreviewResultRequest(obj);

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
          final resp = convert.json.encode(buildExportPreviewResultResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.export(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkExportPreviewResultResponse(
        response as api.ExportPreviewResultResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.previews;
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
          final resp = convert.json.encode(buildPreview());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPreview(response as api.Preview);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.previews;
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
          final resp = convert.json.encode(buildListPreviewsResponse());
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
      checkListPreviewsResponse(response as api.ListPreviewsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTerraformVersionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.terraformVersions;
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
          final resp = convert.json.encode(buildTerraformVersion());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTerraformVersion(response as api.TerraformVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ConfigApi(mock).projects.locations.terraformVersions;
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
          final resp = convert.json.encode(
            buildListTerraformVersionsResponse(),
          );
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
      checkListTerraformVersionsResponse(
        response as api.ListTerraformVersionsResponse,
      );
    });
  });
}
