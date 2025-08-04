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

import 'package:googleapis/securityposture/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAssetDetails = 0;
api.AssetDetails buildAssetDetails() {
  final o = api.AssetDetails();
  buildCounterAssetDetails++;
  if (buildCounterAssetDetails < 3) {
    o.asset = 'foo';
    o.assetType = 'foo';
  }
  buildCounterAssetDetails--;
  return o;
}

void checkAssetDetails(api.AssetDetails o) {
  buildCounterAssetDetails++;
  if (buildCounterAssetDetails < 3) {
    unittest.expect(o.asset!, unittest.equals('foo'));
    unittest.expect(o.assetType!, unittest.equals('foo'));
  }
  buildCounterAssetDetails--;
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

core.int buildCounterComplianceStandard = 0;
api.ComplianceStandard buildComplianceStandard() {
  final o = api.ComplianceStandard();
  buildCounterComplianceStandard++;
  if (buildCounterComplianceStandard < 3) {
    o.control = 'foo';
    o.standard = 'foo';
  }
  buildCounterComplianceStandard--;
  return o;
}

void checkComplianceStandard(api.ComplianceStandard o) {
  buildCounterComplianceStandard++;
  if (buildCounterComplianceStandard < 3) {
    unittest.expect(o.control!, unittest.equals('foo'));
    unittest.expect(o.standard!, unittest.equals('foo'));
  }
  buildCounterComplianceStandard--;
}

core.int buildCounterConstraint = 0;
api.Constraint buildConstraint() {
  final o = api.Constraint();
  buildCounterConstraint++;
  if (buildCounterConstraint < 3) {
    o.orgPolicyConstraint = buildOrgPolicyConstraint();
    o.orgPolicyConstraintCustom = buildOrgPolicyConstraintCustom();
    o.securityHealthAnalyticsCustomModule =
        buildSecurityHealthAnalyticsCustomModule();
    o.securityHealthAnalyticsModule = buildSecurityHealthAnalyticsModule();
  }
  buildCounterConstraint--;
  return o;
}

void checkConstraint(api.Constraint o) {
  buildCounterConstraint++;
  if (buildCounterConstraint < 3) {
    checkOrgPolicyConstraint(o.orgPolicyConstraint!);
    checkOrgPolicyConstraintCustom(o.orgPolicyConstraintCustom!);
    checkSecurityHealthAnalyticsCustomModule(
      o.securityHealthAnalyticsCustomModule!,
    );
    checkSecurityHealthAnalyticsModule(o.securityHealthAnalyticsModule!);
  }
  buildCounterConstraint--;
}

core.int buildCounterCreateIaCValidationReportRequest = 0;
api.CreateIaCValidationReportRequest buildCreateIaCValidationReportRequest() {
  final o = api.CreateIaCValidationReportRequest();
  buildCounterCreateIaCValidationReportRequest++;
  if (buildCounterCreateIaCValidationReportRequest < 3) {
    o.iac = buildIaC();
  }
  buildCounterCreateIaCValidationReportRequest--;
  return o;
}

void checkCreateIaCValidationReportRequest(
  api.CreateIaCValidationReportRequest o,
) {
  buildCounterCreateIaCValidationReportRequest++;
  if (buildCounterCreateIaCValidationReportRequest < 3) {
    checkIaC(o.iac!);
  }
  buildCounterCreateIaCValidationReportRequest--;
}

core.int buildCounterCustomConfig = 0;
api.CustomConfig buildCustomConfig() {
  final o = api.CustomConfig();
  buildCounterCustomConfig++;
  if (buildCounterCustomConfig < 3) {
    o.customOutput = buildCustomOutputSpec();
    o.description = 'foo';
    o.predicate = buildExpr();
    o.recommendation = 'foo';
    o.resourceSelector = buildResourceSelector();
    o.severity = 'foo';
  }
  buildCounterCustomConfig--;
  return o;
}

void checkCustomConfig(api.CustomConfig o) {
  buildCounterCustomConfig++;
  if (buildCounterCustomConfig < 3) {
    checkCustomOutputSpec(o.customOutput!);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkExpr(o.predicate!);
    unittest.expect(o.recommendation!, unittest.equals('foo'));
    checkResourceSelector(o.resourceSelector!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterCustomConfig--;
}

core.List<api.Property> buildUnnamed0() => [buildProperty(), buildProperty()];

void checkUnnamed0(core.List<api.Property> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProperty(o[0]);
  checkProperty(o[1]);
}

core.int buildCounterCustomOutputSpec = 0;
api.CustomOutputSpec buildCustomOutputSpec() {
  final o = api.CustomOutputSpec();
  buildCounterCustomOutputSpec++;
  if (buildCounterCustomOutputSpec < 3) {
    o.properties = buildUnnamed0();
  }
  buildCounterCustomOutputSpec--;
  return o;
}

void checkCustomOutputSpec(api.CustomOutputSpec o) {
  buildCounterCustomOutputSpec++;
  if (buildCounterCustomOutputSpec < 3) {
    checkUnnamed0(o.properties!);
  }
  buildCounterCustomOutputSpec--;
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

core.int buildCounterExtractPostureRequest = 0;
api.ExtractPostureRequest buildExtractPostureRequest() {
  final o = api.ExtractPostureRequest();
  buildCounterExtractPostureRequest++;
  if (buildCounterExtractPostureRequest < 3) {
    o.postureId = 'foo';
    o.workload = 'foo';
  }
  buildCounterExtractPostureRequest--;
  return o;
}

void checkExtractPostureRequest(api.ExtractPostureRequest o) {
  buildCounterExtractPostureRequest++;
  if (buildCounterExtractPostureRequest < 3) {
    unittest.expect(o.postureId!, unittest.equals('foo'));
    unittest.expect(o.workload!, unittest.equals('foo'));
  }
  buildCounterExtractPostureRequest--;
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

core.int buildCounterGoogleCloudSecuritypostureV1CustomConstraint = 0;
api.GoogleCloudSecuritypostureV1CustomConstraint
buildGoogleCloudSecuritypostureV1CustomConstraint() {
  final o = api.GoogleCloudSecuritypostureV1CustomConstraint();
  buildCounterGoogleCloudSecuritypostureV1CustomConstraint++;
  if (buildCounterGoogleCloudSecuritypostureV1CustomConstraint < 3) {
    o.actionType = 'foo';
    o.condition = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.methodTypes = buildUnnamed1();
    o.name = 'foo';
    o.resourceTypes = buildUnnamed2();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudSecuritypostureV1CustomConstraint--;
  return o;
}

void checkGoogleCloudSecuritypostureV1CustomConstraint(
  api.GoogleCloudSecuritypostureV1CustomConstraint o,
) {
  buildCounterGoogleCloudSecuritypostureV1CustomConstraint++;
  if (buildCounterGoogleCloudSecuritypostureV1CustomConstraint < 3) {
    unittest.expect(o.actionType!, unittest.equals('foo'));
    unittest.expect(o.condition!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed1(o.methodTypes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed2(o.resourceTypes!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudSecuritypostureV1CustomConstraint--;
}

core.Map<core.String, core.Object?> buildUnnamed3() => {
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

void checkUnnamed3(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudSecuritypostureV1PolicyRule = 0;
api.GoogleCloudSecuritypostureV1PolicyRule
buildGoogleCloudSecuritypostureV1PolicyRule() {
  final o = api.GoogleCloudSecuritypostureV1PolicyRule();
  buildCounterGoogleCloudSecuritypostureV1PolicyRule++;
  if (buildCounterGoogleCloudSecuritypostureV1PolicyRule < 3) {
    o.allowAll = true;
    o.condition = buildExpr();
    o.denyAll = true;
    o.enforce = true;
    o.parameters = buildUnnamed3();
    o.resourceTypes = buildResourceTypes();
    o.values = buildGoogleCloudSecuritypostureV1PolicyRuleStringValues();
  }
  buildCounterGoogleCloudSecuritypostureV1PolicyRule--;
  return o;
}

void checkGoogleCloudSecuritypostureV1PolicyRule(
  api.GoogleCloudSecuritypostureV1PolicyRule o,
) {
  buildCounterGoogleCloudSecuritypostureV1PolicyRule++;
  if (buildCounterGoogleCloudSecuritypostureV1PolicyRule < 3) {
    unittest.expect(o.allowAll!, unittest.isTrue);
    checkExpr(o.condition!);
    unittest.expect(o.denyAll!, unittest.isTrue);
    unittest.expect(o.enforce!, unittest.isTrue);
    checkUnnamed3(o.parameters!);
    checkResourceTypes(o.resourceTypes!);
    checkGoogleCloudSecuritypostureV1PolicyRuleStringValues(o.values!);
  }
  buildCounterGoogleCloudSecuritypostureV1PolicyRule--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues = 0;
api.GoogleCloudSecuritypostureV1PolicyRuleStringValues
buildGoogleCloudSecuritypostureV1PolicyRuleStringValues() {
  final o = api.GoogleCloudSecuritypostureV1PolicyRuleStringValues();
  buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues++;
  if (buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues < 3) {
    o.allowedValues = buildUnnamed4();
    o.deniedValues = buildUnnamed5();
  }
  buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues--;
  return o;
}

void checkGoogleCloudSecuritypostureV1PolicyRuleStringValues(
  api.GoogleCloudSecuritypostureV1PolicyRuleStringValues o,
) {
  buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues++;
  if (buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues < 3) {
    checkUnnamed4(o.allowedValues!);
    checkUnnamed5(o.deniedValues!);
  }
  buildCounterGoogleCloudSecuritypostureV1PolicyRuleStringValues--;
}

core.int buildCounterIaC = 0;
api.IaC buildIaC() {
  final o = api.IaC();
  buildCounterIaC++;
  if (buildCounterIaC < 3) {
    o.tfPlan = 'foo';
  }
  buildCounterIaC--;
  return o;
}

void checkIaC(api.IaC o) {
  buildCounterIaC++;
  if (buildCounterIaC < 3) {
    unittest.expect(o.tfPlan!, unittest.equals('foo'));
  }
  buildCounterIaC--;
}

core.List<api.Violation> buildUnnamed6() => [
  buildViolation(),
  buildViolation(),
];

void checkUnnamed6(core.List<api.Violation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkViolation(o[0]);
  checkViolation(o[1]);
}

core.int buildCounterIaCValidationReport = 0;
api.IaCValidationReport buildIaCValidationReport() {
  final o = api.IaCValidationReport();
  buildCounterIaCValidationReport++;
  if (buildCounterIaCValidationReport < 3) {
    o.note = 'foo';
    o.violations = buildUnnamed6();
  }
  buildCounterIaCValidationReport--;
  return o;
}

void checkIaCValidationReport(api.IaCValidationReport o) {
  buildCounterIaCValidationReport++;
  if (buildCounterIaCValidationReport < 3) {
    unittest.expect(o.note!, unittest.equals('foo'));
    checkUnnamed6(o.violations!);
  }
  buildCounterIaCValidationReport--;
}

core.List<api.Location> buildUnnamed7() => [buildLocation(), buildLocation()];

void checkUnnamed7(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed7(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
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

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed8();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed8(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PostureDeployment> buildUnnamed9() => [
  buildPostureDeployment(),
  buildPostureDeployment(),
];

void checkUnnamed9(core.List<api.PostureDeployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostureDeployment(o[0]);
  checkPostureDeployment(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPostureDeploymentsResponse = 0;
api.ListPostureDeploymentsResponse buildListPostureDeploymentsResponse() {
  final o = api.ListPostureDeploymentsResponse();
  buildCounterListPostureDeploymentsResponse++;
  if (buildCounterListPostureDeploymentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.postureDeployments = buildUnnamed9();
    o.unreachable = buildUnnamed10();
  }
  buildCounterListPostureDeploymentsResponse--;
  return o;
}

void checkListPostureDeploymentsResponse(api.ListPostureDeploymentsResponse o) {
  buildCounterListPostureDeploymentsResponse++;
  if (buildCounterListPostureDeploymentsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.postureDeployments!);
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListPostureDeploymentsResponse--;
}

core.List<api.Posture> buildUnnamed11() => [buildPosture(), buildPosture()];

void checkUnnamed11(core.List<api.Posture> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosture(o[0]);
  checkPosture(o[1]);
}

core.int buildCounterListPostureRevisionsResponse = 0;
api.ListPostureRevisionsResponse buildListPostureRevisionsResponse() {
  final o = api.ListPostureRevisionsResponse();
  buildCounterListPostureRevisionsResponse++;
  if (buildCounterListPostureRevisionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.revisions = buildUnnamed11();
  }
  buildCounterListPostureRevisionsResponse--;
  return o;
}

void checkListPostureRevisionsResponse(api.ListPostureRevisionsResponse o) {
  buildCounterListPostureRevisionsResponse++;
  if (buildCounterListPostureRevisionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.revisions!);
  }
  buildCounterListPostureRevisionsResponse--;
}

core.List<api.PostureTemplate> buildUnnamed12() => [
  buildPostureTemplate(),
  buildPostureTemplate(),
];

void checkUnnamed12(core.List<api.PostureTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostureTemplate(o[0]);
  checkPostureTemplate(o[1]);
}

core.int buildCounterListPostureTemplatesResponse = 0;
api.ListPostureTemplatesResponse buildListPostureTemplatesResponse() {
  final o = api.ListPostureTemplatesResponse();
  buildCounterListPostureTemplatesResponse++;
  if (buildCounterListPostureTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.postureTemplates = buildUnnamed12();
  }
  buildCounterListPostureTemplatesResponse--;
  return o;
}

void checkListPostureTemplatesResponse(api.ListPostureTemplatesResponse o) {
  buildCounterListPostureTemplatesResponse++;
  if (buildCounterListPostureTemplatesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.postureTemplates!);
  }
  buildCounterListPostureTemplatesResponse--;
}

core.List<api.Posture> buildUnnamed13() => [buildPosture(), buildPosture()];

void checkUnnamed13(core.List<api.Posture> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosture(o[0]);
  checkPosture(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPosturesResponse = 0;
api.ListPosturesResponse buildListPosturesResponse() {
  final o = api.ListPosturesResponse();
  buildCounterListPosturesResponse++;
  if (buildCounterListPosturesResponse < 3) {
    o.nextPageToken = 'foo';
    o.postures = buildUnnamed13();
    o.unreachable = buildUnnamed14();
  }
  buildCounterListPosturesResponse--;
  return o;
}

void checkListPosturesResponse(api.ListPosturesResponse o) {
  buildCounterListPosturesResponse++;
  if (buildCounterListPosturesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.postures!);
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListPosturesResponse--;
}

core.List<api.Report> buildUnnamed15() => [buildReport(), buildReport()];

void checkUnnamed15(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed15();
    o.unreachable = buildUnnamed16();
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.reports!);
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListReportsResponse--;
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed17();
    o.locationId = 'foo';
    o.metadata = buildUnnamed18();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed17(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed18(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed19();
    o.name = 'foo';
    o.response = buildUnnamed20();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed19(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed20(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.GoogleCloudSecuritypostureV1PolicyRule> buildUnnamed21() => [
  buildGoogleCloudSecuritypostureV1PolicyRule(),
  buildGoogleCloudSecuritypostureV1PolicyRule(),
];

void checkUnnamed21(core.List<api.GoogleCloudSecuritypostureV1PolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritypostureV1PolicyRule(o[0]);
  checkGoogleCloudSecuritypostureV1PolicyRule(o[1]);
}

core.int buildCounterOrgPolicyConstraint = 0;
api.OrgPolicyConstraint buildOrgPolicyConstraint() {
  final o = api.OrgPolicyConstraint();
  buildCounterOrgPolicyConstraint++;
  if (buildCounterOrgPolicyConstraint < 3) {
    o.cannedConstraintId = 'foo';
    o.policyRules = buildUnnamed21();
  }
  buildCounterOrgPolicyConstraint--;
  return o;
}

void checkOrgPolicyConstraint(api.OrgPolicyConstraint o) {
  buildCounterOrgPolicyConstraint++;
  if (buildCounterOrgPolicyConstraint < 3) {
    unittest.expect(o.cannedConstraintId!, unittest.equals('foo'));
    checkUnnamed21(o.policyRules!);
  }
  buildCounterOrgPolicyConstraint--;
}

core.List<api.GoogleCloudSecuritypostureV1PolicyRule> buildUnnamed22() => [
  buildGoogleCloudSecuritypostureV1PolicyRule(),
  buildGoogleCloudSecuritypostureV1PolicyRule(),
];

void checkUnnamed22(core.List<api.GoogleCloudSecuritypostureV1PolicyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudSecuritypostureV1PolicyRule(o[0]);
  checkGoogleCloudSecuritypostureV1PolicyRule(o[1]);
}

core.int buildCounterOrgPolicyConstraintCustom = 0;
api.OrgPolicyConstraintCustom buildOrgPolicyConstraintCustom() {
  final o = api.OrgPolicyConstraintCustom();
  buildCounterOrgPolicyConstraintCustom++;
  if (buildCounterOrgPolicyConstraintCustom < 3) {
    o.customConstraint = buildGoogleCloudSecuritypostureV1CustomConstraint();
    o.policyRules = buildUnnamed22();
  }
  buildCounterOrgPolicyConstraintCustom--;
  return o;
}

void checkOrgPolicyConstraintCustom(api.OrgPolicyConstraintCustom o) {
  buildCounterOrgPolicyConstraintCustom++;
  if (buildCounterOrgPolicyConstraintCustom < 3) {
    checkGoogleCloudSecuritypostureV1CustomConstraint(o.customConstraint!);
    checkUnnamed22(o.policyRules!);
  }
  buildCounterOrgPolicyConstraintCustom--;
}

core.List<api.ComplianceStandard> buildUnnamed23() => [
  buildComplianceStandard(),
  buildComplianceStandard(),
];

void checkUnnamed23(core.List<api.ComplianceStandard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceStandard(o[0]);
  checkComplianceStandard(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.complianceStandards = buildUnnamed23();
    o.constraint = buildConstraint();
    o.description = 'foo';
    o.policyId = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed23(o.complianceStandards!);
    checkConstraint(o.constraint!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.policyId!, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicyDetails = 0;
api.PolicyDetails buildPolicyDetails() {
  final o = api.PolicyDetails();
  buildCounterPolicyDetails++;
  if (buildCounterPolicyDetails < 3) {
    o.complianceStandards = buildUnnamed24();
    o.constraint = 'foo';
    o.constraintType = 'foo';
    o.description = 'foo';
  }
  buildCounterPolicyDetails--;
  return o;
}

void checkPolicyDetails(api.PolicyDetails o) {
  buildCounterPolicyDetails++;
  if (buildCounterPolicyDetails < 3) {
    checkUnnamed24(o.complianceStandards!);
    unittest.expect(o.constraint!, unittest.equals('foo'));
    unittest.expect(o.constraintType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
  }
  buildCounterPolicyDetails--;
}

core.List<api.Policy> buildUnnamed25() => [buildPolicy(), buildPolicy()];

void checkUnnamed25(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterPolicySet = 0;
api.PolicySet buildPolicySet() {
  final o = api.PolicySet();
  buildCounterPolicySet++;
  if (buildCounterPolicySet < 3) {
    o.description = 'foo';
    o.policies = buildUnnamed25();
    o.policySetId = 'foo';
  }
  buildCounterPolicySet--;
  return o;
}

void checkPolicySet(api.PolicySet o) {
  buildCounterPolicySet++;
  if (buildCounterPolicySet < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed25(o.policies!);
    unittest.expect(o.policySetId!, unittest.equals('foo'));
  }
  buildCounterPolicySet--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PolicySet> buildUnnamed28() => [
  buildPolicySet(),
  buildPolicySet(),
];

void checkUnnamed28(core.List<api.PolicySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicySet(o[0]);
  checkPolicySet(o[1]);
}

core.int buildCounterPosture = 0;
api.Posture buildPosture() {
  final o = api.Posture();
  buildCounterPosture++;
  if (buildCounterPosture < 3) {
    o.annotations = buildUnnamed26();
    o.categories = buildUnnamed27();
    o.createTime = 'foo';
    o.description = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.policySets = buildUnnamed28();
    o.reconciling = true;
    o.revisionId = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPosture--;
  return o;
}

void checkPosture(api.Posture o) {
  buildCounterPosture++;
  if (buildCounterPosture < 3) {
    checkUnnamed26(o.annotations!);
    checkUnnamed27(o.categories!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed28(o.policySets!);
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPosture--;
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPostureDeployment = 0;
api.PostureDeployment buildPostureDeployment() {
  final o = api.PostureDeployment();
  buildCounterPostureDeployment++;
  if (buildCounterPostureDeployment < 3) {
    o.annotations = buildUnnamed29();
    o.categories = buildUnnamed30();
    o.createTime = 'foo';
    o.description = 'foo';
    o.desiredPostureId = 'foo';
    o.desiredPostureRevisionId = 'foo';
    o.etag = 'foo';
    o.failureMessage = 'foo';
    o.name = 'foo';
    o.postureId = 'foo';
    o.postureRevisionId = 'foo';
    o.reconciling = true;
    o.state = 'foo';
    o.targetResource = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPostureDeployment--;
  return o;
}

void checkPostureDeployment(api.PostureDeployment o) {
  buildCounterPostureDeployment++;
  if (buildCounterPostureDeployment < 3) {
    checkUnnamed29(o.annotations!);
    checkUnnamed30(o.categories!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.desiredPostureId!, unittest.equals('foo'));
    unittest.expect(o.desiredPostureRevisionId!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.failureMessage!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.postureId!, unittest.equals('foo'));
    unittest.expect(o.postureRevisionId!, unittest.equals('foo'));
    unittest.expect(o.reconciling!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.targetResource!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPostureDeployment--;
}

core.int buildCounterPostureDetails = 0;
api.PostureDetails buildPostureDetails() {
  final o = api.PostureDetails();
  buildCounterPostureDetails++;
  if (buildCounterPostureDetails < 3) {
    o.policySet = 'foo';
    o.posture = 'foo';
    o.postureDeployment = 'foo';
    o.postureDeploymentTargetResource = 'foo';
    o.postureRevisionId = 'foo';
  }
  buildCounterPostureDetails--;
  return o;
}

void checkPostureDetails(api.PostureDetails o) {
  buildCounterPostureDetails++;
  if (buildCounterPostureDetails < 3) {
    unittest.expect(o.policySet!, unittest.equals('foo'));
    unittest.expect(o.posture!, unittest.equals('foo'));
    unittest.expect(o.postureDeployment!, unittest.equals('foo'));
    unittest.expect(o.postureDeploymentTargetResource!, unittest.equals('foo'));
    unittest.expect(o.postureRevisionId!, unittest.equals('foo'));
  }
  buildCounterPostureDetails--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PolicySet> buildUnnamed32() => [
  buildPolicySet(),
  buildPolicySet(),
];

void checkUnnamed32(core.List<api.PolicySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicySet(o[0]);
  checkPolicySet(o[1]);
}

core.int buildCounterPostureTemplate = 0;
api.PostureTemplate buildPostureTemplate() {
  final o = api.PostureTemplate();
  buildCounterPostureTemplate++;
  if (buildCounterPostureTemplate < 3) {
    o.categories = buildUnnamed31();
    o.description = 'foo';
    o.name = 'foo';
    o.policySets = buildUnnamed32();
    o.revisionId = 'foo';
    o.state = 'foo';
  }
  buildCounterPostureTemplate--;
  return o;
}

void checkPostureTemplate(api.PostureTemplate o) {
  buildCounterPostureTemplate++;
  if (buildCounterPostureTemplate < 3) {
    checkUnnamed31(o.categories!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed32(o.policySets!);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterPostureTemplate--;
}

core.int buildCounterProperty = 0;
api.Property buildProperty() {
  final o = api.Property();
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    o.name = 'foo';
    o.valueExpression = buildExpr();
  }
  buildCounterProperty--;
  return o;
}

void checkProperty(api.Property o) {
  buildCounterProperty++;
  if (buildCounterProperty < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkExpr(o.valueExpression!);
  }
  buildCounterProperty--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.createTime = 'foo';
    o.iacValidationReport = buildIaCValidationReport();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkIaCValidationReport(o.iacValidationReport!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceSelector = 0;
api.ResourceSelector buildResourceSelector() {
  final o = api.ResourceSelector();
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    o.resourceTypes = buildUnnamed33();
  }
  buildCounterResourceSelector--;
  return o;
}

void checkResourceSelector(api.ResourceSelector o) {
  buildCounterResourceSelector++;
  if (buildCounterResourceSelector < 3) {
    checkUnnamed33(o.resourceTypes!);
  }
  buildCounterResourceSelector--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceTypes = 0;
api.ResourceTypes buildResourceTypes() {
  final o = api.ResourceTypes();
  buildCounterResourceTypes++;
  if (buildCounterResourceTypes < 3) {
    o.included = buildUnnamed34();
  }
  buildCounterResourceTypes--;
  return o;
}

void checkResourceTypes(api.ResourceTypes o) {
  buildCounterResourceTypes++;
  if (buildCounterResourceTypes < 3) {
    checkUnnamed34(o.included!);
  }
  buildCounterResourceTypes--;
}

core.int buildCounterSecurityHealthAnalyticsCustomModule = 0;
api.SecurityHealthAnalyticsCustomModule
buildSecurityHealthAnalyticsCustomModule() {
  final o = api.SecurityHealthAnalyticsCustomModule();
  buildCounterSecurityHealthAnalyticsCustomModule++;
  if (buildCounterSecurityHealthAnalyticsCustomModule < 3) {
    o.config = buildCustomConfig();
    o.displayName = 'foo';
    o.id = 'foo';
    o.moduleEnablementState = 'foo';
  }
  buildCounterSecurityHealthAnalyticsCustomModule--;
  return o;
}

void checkSecurityHealthAnalyticsCustomModule(
  api.SecurityHealthAnalyticsCustomModule o,
) {
  buildCounterSecurityHealthAnalyticsCustomModule++;
  if (buildCounterSecurityHealthAnalyticsCustomModule < 3) {
    checkCustomConfig(o.config!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.moduleEnablementState!, unittest.equals('foo'));
  }
  buildCounterSecurityHealthAnalyticsCustomModule--;
}

core.int buildCounterSecurityHealthAnalyticsModule = 0;
api.SecurityHealthAnalyticsModule buildSecurityHealthAnalyticsModule() {
  final o = api.SecurityHealthAnalyticsModule();
  buildCounterSecurityHealthAnalyticsModule++;
  if (buildCounterSecurityHealthAnalyticsModule < 3) {
    o.moduleEnablementState = 'foo';
    o.moduleName = 'foo';
  }
  buildCounterSecurityHealthAnalyticsModule--;
  return o;
}

void checkSecurityHealthAnalyticsModule(api.SecurityHealthAnalyticsModule o) {
  buildCounterSecurityHealthAnalyticsModule++;
  if (buildCounterSecurityHealthAnalyticsModule < 3) {
    unittest.expect(o.moduleEnablementState!, unittest.equals('foo'));
    unittest.expect(o.moduleName!, unittest.equals('foo'));
  }
  buildCounterSecurityHealthAnalyticsModule--;
}

core.Map<core.String, core.Object?> buildUnnamed35() => {
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

void checkUnnamed35(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed36() => [
  buildUnnamed35(),
  buildUnnamed35(),
];

void checkUnnamed36(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed35(o[0]);
  checkUnnamed35(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed36();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed36(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterViolation = 0;
api.Violation buildViolation() {
  final o = api.Violation();
  buildCounterViolation++;
  if (buildCounterViolation < 3) {
    o.assetId = 'foo';
    o.nextSteps = 'foo';
    o.policyId = 'foo';
    o.severity = 'foo';
    o.violatedAsset = buildAssetDetails();
    o.violatedPolicy = buildPolicyDetails();
    o.violatedPosture = buildPostureDetails();
  }
  buildCounterViolation--;
  return o;
}

void checkViolation(api.Violation o) {
  buildCounterViolation++;
  if (buildCounterViolation < 3) {
    unittest.expect(o.assetId!, unittest.equals('foo'));
    unittest.expect(o.nextSteps!, unittest.equals('foo'));
    unittest.expect(o.policyId!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
    checkAssetDetails(o.violatedAsset!);
    checkPolicyDetails(o.violatedPolicy!);
    checkPostureDetails(o.violatedPosture!);
  }
  buildCounterViolation--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AssetDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetDetails(od);
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

  unittest.group('obj-schema-ComplianceStandard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceStandard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceStandard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceStandard(od);
    });
  });

  unittest.group('obj-schema-Constraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Constraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConstraint(od);
    });
  });

  unittest.group('obj-schema-CreateIaCValidationReportRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateIaCValidationReportRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateIaCValidationReportRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateIaCValidationReportRequest(od);
    });
  });

  unittest.group('obj-schema-CustomConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomConfig(od);
    });
  });

  unittest.group('obj-schema-CustomOutputSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomOutputSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomOutputSpec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomOutputSpec(od);
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

  unittest.group('obj-schema-ExtractPostureRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtractPostureRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtractPostureRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtractPostureRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritypostureV1CustomConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritypostureV1CustomConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritypostureV1CustomConstraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritypostureV1CustomConstraint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudSecuritypostureV1PolicyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudSecuritypostureV1PolicyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudSecuritypostureV1PolicyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudSecuritypostureV1PolicyRule(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudSecuritypostureV1PolicyRuleStringValues',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudSecuritypostureV1PolicyRuleStringValues();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudSecuritypostureV1PolicyRuleStringValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudSecuritypostureV1PolicyRuleStringValues(od);
      });
    },
  );

  unittest.group('obj-schema-IaC', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIaC();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IaC.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIaC(od);
    });
  });

  unittest.group('obj-schema-IaCValidationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIaCValidationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IaCValidationReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIaCValidationReport(od);
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

  unittest.group('obj-schema-ListPostureDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPostureDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPostureDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPostureDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPostureRevisionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPostureRevisionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPostureRevisionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPostureRevisionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPostureTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPostureTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPostureTemplatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPostureTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListPosturesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPosturesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPosturesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPosturesResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReportsResponse(od);
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

  unittest.group('obj-schema-OrgPolicyConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgPolicyConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgPolicyConstraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrgPolicyConstraint(od);
    });
  });

  unittest.group('obj-schema-OrgPolicyConstraintCustom', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgPolicyConstraintCustom();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgPolicyConstraintCustom.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrgPolicyConstraintCustom(od);
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

  unittest.group('obj-schema-PolicyDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyDetails(od);
    });
  });

  unittest.group('obj-schema-PolicySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicySet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicySet(od);
    });
  });

  unittest.group('obj-schema-Posture', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosture();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Posture.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPosture(od);
    });
  });

  unittest.group('obj-schema-PostureDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostureDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostureDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostureDeployment(od);
    });
  });

  unittest.group('obj-schema-PostureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostureDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostureDetails(od);
    });
  });

  unittest.group('obj-schema-PostureTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostureTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostureTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostureTemplate(od);
    });
  });

  unittest.group('obj-schema-Property', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Property.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProperty(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Report.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ResourceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceSelector(od);
    });
  });

  unittest.group('obj-schema-ResourceTypes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceTypes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceTypes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceTypes(od);
    });
  });

  unittest.group('obj-schema-SecurityHealthAnalyticsCustomModule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityHealthAnalyticsCustomModule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityHealthAnalyticsCustomModule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityHealthAnalyticsCustomModule(od);
    });
  });

  unittest.group('obj-schema-SecurityHealthAnalyticsModule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityHealthAnalyticsModule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityHealthAnalyticsModule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityHealthAnalyticsModule(od);
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

  unittest.group('obj-schema-Violation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViolation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Violation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkViolation(od);
    });
  });

  unittest.group('resource-OrganizationsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(mock).organizations.locations.operations;
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
      final res =
          api.SecurityPostureApi(mock).organizations.locations.operations;
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
      final res =
          api.SecurityPostureApi(mock).organizations.locations.operations;
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
      final res =
          api.SecurityPostureApi(mock).organizations.locations.operations;
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

  unittest.group('resource-OrganizationsLocationsPostureDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(
            mock,
          ).organizations.locations.postureDeployments;
      final arg_request = buildPostureDeployment();
      final arg_parent = 'foo';
      final arg_postureDeploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PostureDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPostureDeployment(obj);

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
            queryMap['postureDeploymentId']!.first,
            unittest.equals(arg_postureDeploymentId),
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
        postureDeploymentId: arg_postureDeploymentId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(
            mock,
          ).organizations.locations.postureDeployments;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(
            mock,
          ).organizations.locations.postureDeployments;
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
          final resp = convert.json.encode(buildPostureDeployment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPostureDeployment(response as api.PostureDeployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(
            mock,
          ).organizations.locations.postureDeployments;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(
            buildListPostureDeploymentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPostureDeploymentsResponse(
        response as api.ListPostureDeploymentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(
            mock,
          ).organizations.locations.postureDeployments;
      final arg_request = buildPostureDeployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PostureDeployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPostureDeployment(obj);

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsPostureTemplatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(mock).organizations.locations.postureTemplates;
      final arg_name = 'foo';
      final arg_revisionId = 'foo';
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
            queryMap['revisionId']!.first,
            unittest.equals(arg_revisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPostureTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        revisionId: arg_revisionId,
        $fields: arg_$fields,
      );
      checkPostureTemplate(response as api.PostureTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SecurityPostureApi(mock).organizations.locations.postureTemplates;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListPostureTemplatesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPostureTemplatesResponse(
        response as api.ListPostureTemplatesResponse,
      );
    });
  });

  unittest.group('resource-OrganizationsLocationsPosturesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_request = buildPosture();
      final arg_parent = 'foo';
      final arg_postureId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Posture.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPosture(obj);

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
            queryMap['postureId']!.first,
            unittest.equals(arg_postureId),
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
        postureId: arg_postureId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--extract', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_request = buildExtractPostureRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ExtractPostureRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkExtractPostureRequest(obj);

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
      final response = await res.extract(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_name = 'foo';
      final arg_revisionId = 'foo';
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
            queryMap['revisionId']!.first,
            unittest.equals(arg_revisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPosture());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        revisionId: arg_revisionId,
        $fields: arg_$fields,
      );
      checkPosture(response as api.Posture);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListPosturesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPosturesResponse(response as api.ListPosturesResponse);
    });

    unittest.test('method--listRevisions', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_name = 'foo';
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
          final resp = convert.json.encode(buildListPostureRevisionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listRevisions(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPostureRevisionsResponse(
        response as api.ListPostureRevisionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.postures;
      final arg_request = buildPosture();
      final arg_name = 'foo';
      final arg_revisionId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Posture.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPosture(obj);

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
            queryMap['revisionId']!.first,
            unittest.equals(arg_revisionId),
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
        revisionId: arg_revisionId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsLocationsReportsResource', () {
    unittest.test('method--createIaCValidationReport', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.reports;
      final arg_request = buildCreateIaCValidationReportRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateIaCValidationReportRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateIaCValidationReportRequest(obj);

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
      final response = await res.createIaCValidationReport(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.reports;
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
          final resp = convert.json.encode(buildReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).organizations.locations.reports;
      final arg_parent = 'foo';
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
          final resp = convert.json.encode(buildListReportsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListReportsResponse(response as api.ListReportsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SecurityPostureApi(mock).projects.locations;
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
      final res = api.SecurityPostureApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed37();
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
}
