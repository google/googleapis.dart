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

import 'package:googleapis/saasservicemgmt/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAggregate = 0;
api.Aggregate buildAggregate() {
  final o = api.Aggregate();
  buildCounterAggregate++;
  if (buildCounterAggregate < 3) {
    o.count = 42;
    o.group = 'foo';
  }
  buildCounterAggregate--;
  return o;
}

void checkAggregate(api.Aggregate o) {
  buildCounterAggregate++;
  if (buildCounterAggregate < 3) {
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.group!, unittest.equals('foo'));
  }
  buildCounterAggregate--;
}

core.int buildCounterBlueprint = 0;
api.Blueprint buildBlueprint() {
  final o = api.Blueprint();
  buildCounterBlueprint++;
  if (buildCounterBlueprint < 3) {
    o.engine = 'foo';
    o.package = 'foo';
    o.version = 'foo';
  }
  buildCounterBlueprint--;
  return o;
}

void checkBlueprint(api.Blueprint o) {
  buildCounterBlueprint++;
  if (buildCounterBlueprint < 3) {
    unittest.expect(o.engine!, unittest.equals('foo'));
    unittest.expect(o.package!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterBlueprint--;
}

core.int buildCounterDependency = 0;
api.Dependency buildDependency() {
  final o = api.Dependency();
  buildCounterDependency++;
  if (buildCounterDependency < 3) {
    o.alias = 'foo';
    o.unitKind = 'foo';
  }
  buildCounterDependency--;
  return o;
}

void checkDependency(api.Dependency o) {
  buildCounterDependency++;
  if (buildCounterDependency < 3) {
    unittest.expect(o.alias!, unittest.equals('foo'));
    unittest.expect(o.unitKind!, unittest.equals('foo'));
  }
  buildCounterDependency--;
}

core.int buildCounterDeprovision = 0;
api.Deprovision buildDeprovision() {
  final o = api.Deprovision();
  buildCounterDeprovision++;
  if (buildCounterDeprovision < 3) {}
  buildCounterDeprovision--;
  return o;
}

void checkDeprovision(api.Deprovision o) {
  buildCounterDeprovision++;
  if (buildCounterDeprovision < 3) {}
  buildCounterDeprovision--;
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

core.int buildCounterErrorBudget = 0;
api.ErrorBudget buildErrorBudget() {
  final o = api.ErrorBudget();
  buildCounterErrorBudget++;
  if (buildCounterErrorBudget < 3) {
    o.allowedCount = 42;
    o.allowedPercentage = 42;
  }
  buildCounterErrorBudget--;
  return o;
}

void checkErrorBudget(api.ErrorBudget o) {
  buildCounterErrorBudget++;
  if (buildCounterErrorBudget < 3) {
    unittest.expect(o.allowedCount!, unittest.equals(42));
    unittest.expect(o.allowedPercentage!, unittest.equals(42));
  }
  buildCounterErrorBudget--;
}

core.int buildCounterFromMapping = 0;
api.FromMapping buildFromMapping() {
  final o = api.FromMapping();
  buildCounterFromMapping++;
  if (buildCounterFromMapping < 3) {
    o.dependency = 'foo';
    o.outputVariable = 'foo';
  }
  buildCounterFromMapping--;
  return o;
}

void checkFromMapping(api.FromMapping o) {
  buildCounterFromMapping++;
  if (buildCounterFromMapping < 3) {
    unittest.expect(o.dependency!, unittest.equals('foo'));
    unittest.expect(o.outputVariable!, unittest.equals('foo'));
  }
  buildCounterFromMapping--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
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

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed0();
    o.locationId = 'foo';
    o.metadata = buildUnnamed1();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed0(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed1(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed2() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed2(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Release> buildUnnamed3() => [buildRelease(), buildRelease()];

void checkUnnamed3(core.List<api.Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelease(o[0]);
  checkRelease(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReleasesResponse = 0;
api.ListReleasesResponse buildListReleasesResponse() {
  final o = api.ListReleasesResponse();
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed3();
    o.unreachable = buildUnnamed4();
  }
  buildCounterListReleasesResponse--;
  return o;
}

void checkListReleasesResponse(api.ListReleasesResponse o) {
  buildCounterListReleasesResponse++;
  if (buildCounterListReleasesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed3(o.releases!);
    checkUnnamed4(o.unreachable!);
  }
  buildCounterListReleasesResponse--;
}

core.List<api.RolloutKind> buildUnnamed5() => [
  buildRolloutKind(),
  buildRolloutKind(),
];

void checkUnnamed5(core.List<api.RolloutKind> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRolloutKind(o[0]);
  checkRolloutKind(o[1]);
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListRolloutKindsResponse = 0;
api.ListRolloutKindsResponse buildListRolloutKindsResponse() {
  final o = api.ListRolloutKindsResponse();
  buildCounterListRolloutKindsResponse++;
  if (buildCounterListRolloutKindsResponse < 3) {
    o.nextPageToken = 'foo';
    o.rolloutKinds = buildUnnamed5();
    o.unreachable = buildUnnamed6();
  }
  buildCounterListRolloutKindsResponse--;
  return o;
}

void checkListRolloutKindsResponse(api.ListRolloutKindsResponse o) {
  buildCounterListRolloutKindsResponse++;
  if (buildCounterListRolloutKindsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.rolloutKinds!);
    checkUnnamed6(o.unreachable!);
  }
  buildCounterListRolloutKindsResponse--;
}

core.List<api.Rollout> buildUnnamed7() => [buildRollout(), buildRollout()];

void checkUnnamed7(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
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
    o.rollouts = buildUnnamed7();
    o.unreachable = buildUnnamed8();
  }
  buildCounterListRolloutsResponse--;
  return o;
}

void checkListRolloutsResponse(api.ListRolloutsResponse o) {
  buildCounterListRolloutsResponse++;
  if (buildCounterListRolloutsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed7(o.rollouts!);
    checkUnnamed8(o.unreachable!);
  }
  buildCounterListRolloutsResponse--;
}

core.List<api.Saas> buildUnnamed9() => [buildSaas(), buildSaas()];

void checkUnnamed9(core.List<api.Saas> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSaas(o[0]);
  checkSaas(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSaasResponse = 0;
api.ListSaasResponse buildListSaasResponse() {
  final o = api.ListSaasResponse();
  buildCounterListSaasResponse++;
  if (buildCounterListSaasResponse < 3) {
    o.nextPageToken = 'foo';
    o.saas = buildUnnamed9();
    o.unreachable = buildUnnamed10();
  }
  buildCounterListSaasResponse--;
  return o;
}

void checkListSaasResponse(api.ListSaasResponse o) {
  buildCounterListSaasResponse++;
  if (buildCounterListSaasResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed9(o.saas!);
    checkUnnamed10(o.unreachable!);
  }
  buildCounterListSaasResponse--;
}

core.List<api.Tenant> buildUnnamed11() => [buildTenant(), buildTenant()];

void checkUnnamed11(core.List<api.Tenant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTenant(o[0]);
  checkTenant(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListTenantsResponse = 0;
api.ListTenantsResponse buildListTenantsResponse() {
  final o = api.ListTenantsResponse();
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    o.nextPageToken = 'foo';
    o.tenants = buildUnnamed11();
    o.unreachable = buildUnnamed12();
  }
  buildCounterListTenantsResponse--;
  return o;
}

void checkListTenantsResponse(api.ListTenantsResponse o) {
  buildCounterListTenantsResponse++;
  if (buildCounterListTenantsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed11(o.tenants!);
    checkUnnamed12(o.unreachable!);
  }
  buildCounterListTenantsResponse--;
}

core.List<api.UnitKind> buildUnnamed13() => [buildUnitKind(), buildUnitKind()];

void checkUnnamed13(core.List<api.UnitKind> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitKind(o[0]);
  checkUnitKind(o[1]);
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListUnitKindsResponse = 0;
api.ListUnitKindsResponse buildListUnitKindsResponse() {
  final o = api.ListUnitKindsResponse();
  buildCounterListUnitKindsResponse++;
  if (buildCounterListUnitKindsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unitKinds = buildUnnamed13();
    o.unreachable = buildUnnamed14();
  }
  buildCounterListUnitKindsResponse--;
  return o;
}

void checkListUnitKindsResponse(api.ListUnitKindsResponse o) {
  buildCounterListUnitKindsResponse++;
  if (buildCounterListUnitKindsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed13(o.unitKinds!);
    checkUnnamed14(o.unreachable!);
  }
  buildCounterListUnitKindsResponse--;
}

core.List<api.UnitOperation> buildUnnamed15() => [
  buildUnitOperation(),
  buildUnitOperation(),
];

void checkUnnamed15(core.List<api.UnitOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitOperation(o[0]);
  checkUnitOperation(o[1]);
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListUnitOperationsResponse = 0;
api.ListUnitOperationsResponse buildListUnitOperationsResponse() {
  final o = api.ListUnitOperationsResponse();
  buildCounterListUnitOperationsResponse++;
  if (buildCounterListUnitOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.unitOperations = buildUnnamed15();
    o.unreachable = buildUnnamed16();
  }
  buildCounterListUnitOperationsResponse--;
  return o;
}

void checkListUnitOperationsResponse(api.ListUnitOperationsResponse o) {
  buildCounterListUnitOperationsResponse++;
  if (buildCounterListUnitOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed15(o.unitOperations!);
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListUnitOperationsResponse--;
}

core.List<api.Unit> buildUnnamed17() => [buildUnit(), buildUnit()];

void checkUnnamed17(core.List<api.Unit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnit(o[0]);
  checkUnit(o[1]);
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListUnitsResponse = 0;
api.ListUnitsResponse buildListUnitsResponse() {
  final o = api.ListUnitsResponse();
  buildCounterListUnitsResponse++;
  if (buildCounterListUnitsResponse < 3) {
    o.nextPageToken = 'foo';
    o.units = buildUnnamed17();
    o.unreachable = buildUnnamed18();
  }
  buildCounterListUnitsResponse--;
  return o;
}

void checkListUnitsResponse(api.ListUnitsResponse o) {
  buildCounterListUnitsResponse++;
  if (buildCounterListUnitsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed17(o.units!);
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListUnitsResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMaintenanceSettings = 0;
api.MaintenanceSettings buildMaintenanceSettings() {
  final o = api.MaintenanceSettings();
  buildCounterMaintenanceSettings++;
  if (buildCounterMaintenanceSettings < 3) {
    o.pinnedUntilTime = 'foo';
  }
  buildCounterMaintenanceSettings--;
  return o;
}

void checkMaintenanceSettings(api.MaintenanceSettings o) {
  buildCounterMaintenanceSettings++;
  if (buildCounterMaintenanceSettings < 3) {
    unittest.expect(o.pinnedUntilTime!, unittest.equals('foo'));
  }
  buildCounterMaintenanceSettings--;
}

core.List<api.UnitVariable> buildUnnamed19() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed19(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.int buildCounterProvision = 0;
api.Provision buildProvision() {
  final o = api.Provision();
  buildCounterProvision++;
  if (buildCounterProvision < 3) {
    o.inputVariables = buildUnnamed19();
    o.release = 'foo';
  }
  buildCounterProvision--;
  return o;
}

void checkProvision(api.Provision o) {
  buildCounterProvision++;
  if (buildCounterProvision < 3) {
    checkUnnamed19(o.inputVariables!);
    unittest.expect(o.release!, unittest.equals('foo'));
  }
  buildCounterProvision--;
}

core.Map<core.String, core.String> buildUnnamed20() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed20(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.UnitVariable> buildUnnamed21() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed21(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.List<api.UnitVariable> buildUnnamed22() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed22(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.Map<core.String, core.String> buildUnnamed23() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed23(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.UnitVariable> buildUnnamed24() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed24(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.int buildCounterRelease = 0;
api.Release buildRelease() {
  final o = api.Release();
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    o.annotations = buildUnnamed20();
    o.blueprint = buildBlueprint();
    o.createTime = 'foo';
    o.etag = 'foo';
    o.inputVariableDefaults = buildUnnamed21();
    o.inputVariables = buildUnnamed22();
    o.labels = buildUnnamed23();
    o.name = 'foo';
    o.outputVariables = buildUnnamed24();
    o.releaseRequirements = buildReleaseRequirements();
    o.uid = 'foo';
    o.unitKind = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRelease--;
  return o;
}

void checkRelease(api.Release o) {
  buildCounterRelease++;
  if (buildCounterRelease < 3) {
    checkUnnamed20(o.annotations!);
    checkBlueprint(o.blueprint!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed21(o.inputVariableDefaults!);
    checkUnnamed22(o.inputVariables!);
    checkUnnamed23(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed24(o.outputVariables!);
    checkReleaseRequirements(o.releaseRequirements!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.unitKind!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterRelease--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReleaseRequirements = 0;
api.ReleaseRequirements buildReleaseRequirements() {
  final o = api.ReleaseRequirements();
  buildCounterReleaseRequirements++;
  if (buildCounterReleaseRequirements < 3) {
    o.upgradeableFromReleases = buildUnnamed25();
  }
  buildCounterReleaseRequirements--;
  return o;
}

void checkReleaseRequirements(api.ReleaseRequirements o) {
  buildCounterReleaseRequirements++;
  if (buildCounterReleaseRequirements < 3) {
    checkUnnamed25(o.upgradeableFromReleases!);
  }
  buildCounterReleaseRequirements--;
}

core.Map<core.String, core.String> buildUnnamed26() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed26(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed27() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed27(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRollout = 0;
api.Rollout buildRollout() {
  final o = api.Rollout();
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    o.annotations = buildUnnamed26();
    o.control = buildRolloutControl();
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed27();
    o.name = 'foo';
    o.parentRollout = 'foo';
    o.release = 'foo';
    o.rolloutKind = 'foo';
    o.rolloutOrchestrationStrategy = 'foo';
    o.rootRollout = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateTransitionTime = 'foo';
    o.stats = buildRolloutStats();
    o.uid = 'foo';
    o.unitFilter = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterRollout--;
  return o;
}

void checkRollout(api.Rollout o) {
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    checkUnnamed26(o.annotations!);
    checkRolloutControl(o.control!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed27(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentRollout!, unittest.equals('foo'));
    unittest.expect(o.release!, unittest.equals('foo'));
    unittest.expect(o.rolloutKind!, unittest.equals('foo'));
    unittest.expect(o.rolloutOrchestrationStrategy!, unittest.equals('foo'));
    unittest.expect(o.rootRollout!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.stateTransitionTime!, unittest.equals('foo'));
    checkRolloutStats(o.stats!);
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.unitFilter!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterRollout--;
}

core.int buildCounterRolloutControl = 0;
api.RolloutControl buildRolloutControl() {
  final o = api.RolloutControl();
  buildCounterRolloutControl++;
  if (buildCounterRolloutControl < 3) {
    o.action = 'foo';
    o.runParams = buildRunRolloutActionParams();
  }
  buildCounterRolloutControl--;
  return o;
}

void checkRolloutControl(api.RolloutControl o) {
  buildCounterRolloutControl++;
  if (buildCounterRolloutControl < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkRunRolloutActionParams(o.runParams!);
  }
  buildCounterRolloutControl--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed29() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRolloutKind = 0;
api.RolloutKind buildRolloutKind() {
  final o = api.RolloutKind();
  buildCounterRolloutKind++;
  if (buildCounterRolloutKind < 3) {
    o.annotations = buildUnnamed28();
    o.createTime = 'foo';
    o.errorBudget = buildErrorBudget();
    o.etag = 'foo';
    o.labels = buildUnnamed29();
    o.name = 'foo';
    o.rolloutOrchestrationStrategy = 'foo';
    o.uid = 'foo';
    o.unitFilter = 'foo';
    o.unitKind = 'foo';
    o.updateTime = 'foo';
    o.updateUnitKindStrategy = 'foo';
  }
  buildCounterRolloutKind--;
  return o;
}

void checkRolloutKind(api.RolloutKind o) {
  buildCounterRolloutKind++;
  if (buildCounterRolloutKind < 3) {
    checkUnnamed28(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkErrorBudget(o.errorBudget!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed29(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rolloutOrchestrationStrategy!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.unitFilter!, unittest.equals('foo'));
    unittest.expect(o.unitKind!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.updateUnitKindStrategy!, unittest.equals('foo'));
  }
  buildCounterRolloutKind--;
}

core.List<api.Aggregate> buildUnnamed30() => [
  buildAggregate(),
  buildAggregate(),
];

void checkUnnamed30(core.List<api.Aggregate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregate(o[0]);
  checkAggregate(o[1]);
}

core.int buildCounterRolloutStats = 0;
api.RolloutStats buildRolloutStats() {
  final o = api.RolloutStats();
  buildCounterRolloutStats++;
  if (buildCounterRolloutStats < 3) {
    o.operationsByState = buildUnnamed30();
  }
  buildCounterRolloutStats--;
  return o;
}

void checkRolloutStats(api.RolloutStats o) {
  buildCounterRolloutStats++;
  if (buildCounterRolloutStats < 3) {
    checkUnnamed30(o.operationsByState!);
  }
  buildCounterRolloutStats--;
}

core.int buildCounterRunRolloutActionParams = 0;
api.RunRolloutActionParams buildRunRolloutActionParams() {
  final o = api.RunRolloutActionParams();
  buildCounterRunRolloutActionParams++;
  if (buildCounterRunRolloutActionParams < 3) {
    o.retryFailedOperations = true;
  }
  buildCounterRunRolloutActionParams--;
  return o;
}

void checkRunRolloutActionParams(api.RunRolloutActionParams o) {
  buildCounterRunRolloutActionParams++;
  if (buildCounterRunRolloutActionParams < 3) {
    unittest.expect(o.retryFailedOperations!, unittest.isTrue);
  }
  buildCounterRunRolloutActionParams--;
}

core.Map<core.String, core.String> buildUnnamed31() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed31(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed32() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Location> buildUnnamed33() => [buildLocation(), buildLocation()];

void checkUnnamed33(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterSaas = 0;
api.Saas buildSaas() {
  final o = api.Saas();
  buildCounterSaas++;
  if (buildCounterSaas < 3) {
    o.annotations = buildUnnamed31();
    o.createTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed32();
    o.locations = buildUnnamed33();
    o.name = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSaas--;
  return o;
}

void checkSaas(api.Saas o) {
  buildCounterSaas++;
  if (buildCounterSaas < 3) {
    checkUnnamed31(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed32(o.labels!);
    checkUnnamed33(o.locations!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSaas--;
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.startTime = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterSchedule--;
}

core.Map<core.String, core.String> buildUnnamed34() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed34(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed35() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed35(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTenant = 0;
api.Tenant buildTenant() {
  final o = api.Tenant();
  buildCounterTenant++;
  if (buildCounterTenant < 3) {
    o.annotations = buildUnnamed34();
    o.consumerResource = 'foo';
    o.createTime = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed35();
    o.name = 'foo';
    o.saas = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTenant--;
  return o;
}

void checkTenant(api.Tenant o) {
  buildCounterTenant++;
  if (buildCounterTenant < 3) {
    checkUnnamed34(o.annotations!);
    unittest.expect(o.consumerResource!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed35(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.saas!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterTenant--;
}

core.int buildCounterToMapping = 0;
api.ToMapping buildToMapping() {
  final o = api.ToMapping();
  buildCounterToMapping++;
  if (buildCounterToMapping < 3) {
    o.dependency = 'foo';
    o.ignoreForLookup = true;
    o.inputVariable = 'foo';
  }
  buildCounterToMapping--;
  return o;
}

void checkToMapping(api.ToMapping o) {
  buildCounterToMapping++;
  if (buildCounterToMapping < 3) {
    unittest.expect(o.dependency!, unittest.equals('foo'));
    unittest.expect(o.ignoreForLookup!, unittest.isTrue);
    unittest.expect(o.inputVariable!, unittest.equals('foo'));
  }
  buildCounterToMapping--;
}

core.Map<core.String, core.String> buildUnnamed36() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed36(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.UnitCondition> buildUnnamed37() => [
  buildUnitCondition(),
  buildUnitCondition(),
];

void checkUnnamed37(core.List<api.UnitCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitCondition(o[0]);
  checkUnitCondition(o[1]);
}

core.List<api.UnitDependency> buildUnnamed38() => [
  buildUnitDependency(),
  buildUnitDependency(),
];

void checkUnnamed38(core.List<api.UnitDependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitDependency(o[0]);
  checkUnitDependency(o[1]);
}

core.List<api.UnitDependency> buildUnnamed39() => [
  buildUnitDependency(),
  buildUnitDependency(),
];

void checkUnnamed39(core.List<api.UnitDependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitDependency(o[0]);
  checkUnitDependency(o[1]);
}

core.List<api.UnitVariable> buildUnnamed40() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed40(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.Map<core.String, core.String> buildUnnamed41() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed41(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UnitVariable> buildUnnamed43() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed43(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.List<core.String> buildUnnamed44() => ['foo', 'foo'];

void checkUnnamed44(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUnit = 0;
api.Unit buildUnit() {
  final o = api.Unit();
  buildCounterUnit++;
  if (buildCounterUnit < 3) {
    o.annotations = buildUnnamed36();
    o.conditions = buildUnnamed37();
    o.createTime = 'foo';
    o.dependencies = buildUnnamed38();
    o.dependents = buildUnnamed39();
    o.etag = 'foo';
    o.inputVariables = buildUnnamed40();
    o.labels = buildUnnamed41();
    o.maintenance = buildMaintenanceSettings();
    o.managementMode = 'foo';
    o.name = 'foo';
    o.ongoingOperations = buildUnnamed42();
    o.outputVariables = buildUnnamed43();
    o.pendingOperations = buildUnnamed44();
    o.release = 'foo';
    o.scheduledOperations = buildUnnamed45();
    o.state = 'foo';
    o.systemCleanupAt = 'foo';
    o.systemManagedState = 'foo';
    o.tenant = 'foo';
    o.uid = 'foo';
    o.unitKind = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterUnit--;
  return o;
}

void checkUnit(api.Unit o) {
  buildCounterUnit++;
  if (buildCounterUnit < 3) {
    checkUnnamed36(o.annotations!);
    checkUnnamed37(o.conditions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed38(o.dependencies!);
    checkUnnamed39(o.dependents!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed40(o.inputVariables!);
    checkUnnamed41(o.labels!);
    checkMaintenanceSettings(o.maintenance!);
    unittest.expect(o.managementMode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed42(o.ongoingOperations!);
    checkUnnamed43(o.outputVariables!);
    checkUnnamed44(o.pendingOperations!);
    unittest.expect(o.release!, unittest.equals('foo'));
    checkUnnamed45(o.scheduledOperations!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.systemCleanupAt!, unittest.equals('foo'));
    unittest.expect(o.systemManagedState!, unittest.equals('foo'));
    unittest.expect(o.tenant!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.unitKind!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterUnit--;
}

core.int buildCounterUnitCondition = 0;
api.UnitCondition buildUnitCondition() {
  final o = api.UnitCondition();
  buildCounterUnitCondition++;
  if (buildCounterUnitCondition < 3) {
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterUnitCondition--;
  return o;
}

void checkUnitCondition(api.UnitCondition o) {
  buildCounterUnitCondition++;
  if (buildCounterUnitCondition < 3) {
    unittest.expect(o.lastTransitionTime!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterUnitCondition--;
}

core.int buildCounterUnitDependency = 0;
api.UnitDependency buildUnitDependency() {
  final o = api.UnitDependency();
  buildCounterUnitDependency++;
  if (buildCounterUnitDependency < 3) {
    o.alias = 'foo';
    o.unit = 'foo';
  }
  buildCounterUnitDependency--;
  return o;
}

void checkUnitDependency(api.UnitDependency o) {
  buildCounterUnitDependency++;
  if (buildCounterUnitDependency < 3) {
    unittest.expect(o.alias!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterUnitDependency--;
}

core.Map<core.String, core.String> buildUnnamed46() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed46(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.Dependency> buildUnnamed47() => [
  buildDependency(),
  buildDependency(),
];

void checkUnnamed47(core.List<api.Dependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDependency(o[0]);
  checkDependency(o[1]);
}

core.List<api.VariableMapping> buildUnnamed48() => [
  buildVariableMapping(),
  buildVariableMapping(),
];

void checkUnnamed48(core.List<api.VariableMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariableMapping(o[0]);
  checkVariableMapping(o[1]);
}

core.Map<core.String, core.String> buildUnnamed49() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed49(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.VariableMapping> buildUnnamed50() => [
  buildVariableMapping(),
  buildVariableMapping(),
];

void checkUnnamed50(core.List<api.VariableMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariableMapping(o[0]);
  checkVariableMapping(o[1]);
}

core.int buildCounterUnitKind = 0;
api.UnitKind buildUnitKind() {
  final o = api.UnitKind();
  buildCounterUnitKind++;
  if (buildCounterUnitKind < 3) {
    o.annotations = buildUnnamed46();
    o.createTime = 'foo';
    o.defaultRelease = 'foo';
    o.dependencies = buildUnnamed47();
    o.etag = 'foo';
    o.inputVariableMappings = buildUnnamed48();
    o.labels = buildUnnamed49();
    o.name = 'foo';
    o.outputVariableMappings = buildUnnamed50();
    o.saas = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterUnitKind--;
  return o;
}

void checkUnitKind(api.UnitKind o) {
  buildCounterUnitKind++;
  if (buildCounterUnitKind < 3) {
    checkUnnamed46(o.annotations!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.defaultRelease!, unittest.equals('foo'));
    checkUnnamed47(o.dependencies!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed48(o.inputVariableMappings!);
    checkUnnamed49(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed50(o.outputVariableMappings!);
    unittest.expect(o.saas!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterUnitKind--;
}

core.Map<core.String, core.String> buildUnnamed51() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed51(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.UnitOperationCondition> buildUnnamed52() => [
  buildUnitOperationCondition(),
  buildUnitOperationCondition(),
];

void checkUnnamed52(core.List<api.UnitOperationCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitOperationCondition(o[0]);
  checkUnitOperationCondition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed53() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed53(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterUnitOperation = 0;
api.UnitOperation buildUnitOperation() {
  final o = api.UnitOperation();
  buildCounterUnitOperation++;
  if (buildCounterUnitOperation < 3) {
    o.annotations = buildUnnamed51();
    o.cancel = true;
    o.conditions = buildUnnamed52();
    o.createTime = 'foo';
    o.deprovision = buildDeprovision();
    o.engineState = 'foo';
    o.errorCategory = 'foo';
    o.etag = 'foo';
    o.labels = buildUnnamed53();
    o.name = 'foo';
    o.parentUnitOperation = 'foo';
    o.provision = buildProvision();
    o.rollout = 'foo';
    o.schedule = buildSchedule();
    o.state = 'foo';
    o.uid = 'foo';
    o.unit = 'foo';
    o.updateTime = 'foo';
    o.upgrade = buildUpgrade();
  }
  buildCounterUnitOperation--;
  return o;
}

void checkUnitOperation(api.UnitOperation o) {
  buildCounterUnitOperation++;
  if (buildCounterUnitOperation < 3) {
    checkUnnamed51(o.annotations!);
    unittest.expect(o.cancel!, unittest.isTrue);
    checkUnnamed52(o.conditions!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDeprovision(o.deprovision!);
    unittest.expect(o.engineState!, unittest.equals('foo'));
    unittest.expect(o.errorCategory!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    checkUnnamed53(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentUnitOperation!, unittest.equals('foo'));
    checkProvision(o.provision!);
    unittest.expect(o.rollout!, unittest.equals('foo'));
    checkSchedule(o.schedule!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.uid!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUpgrade(o.upgrade!);
  }
  buildCounterUnitOperation--;
}

core.int buildCounterUnitOperationCondition = 0;
api.UnitOperationCondition buildUnitOperationCondition() {
  final o = api.UnitOperationCondition();
  buildCounterUnitOperationCondition++;
  if (buildCounterUnitOperationCondition < 3) {
    o.lastTransitionTime = 'foo';
    o.message = 'foo';
    o.reason = 'foo';
    o.status = 'foo';
    o.type = 'foo';
  }
  buildCounterUnitOperationCondition--;
  return o;
}

void checkUnitOperationCondition(api.UnitOperationCondition o) {
  buildCounterUnitOperationCondition++;
  if (buildCounterUnitOperationCondition < 3) {
    unittest.expect(o.lastTransitionTime!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterUnitOperationCondition--;
}

core.int buildCounterUnitVariable = 0;
api.UnitVariable buildUnitVariable() {
  final o = api.UnitVariable();
  buildCounterUnitVariable++;
  if (buildCounterUnitVariable < 3) {
    o.type = 'foo';
    o.value = 'foo';
    o.variable = 'foo';
  }
  buildCounterUnitVariable--;
  return o;
}

void checkUnitVariable(api.UnitVariable o) {
  buildCounterUnitVariable++;
  if (buildCounterUnitVariable < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterUnitVariable--;
}

core.List<api.UnitVariable> buildUnnamed54() => [
  buildUnitVariable(),
  buildUnitVariable(),
];

void checkUnnamed54(core.List<api.UnitVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnitVariable(o[0]);
  checkUnitVariable(o[1]);
}

core.int buildCounterUpgrade = 0;
api.Upgrade buildUpgrade() {
  final o = api.Upgrade();
  buildCounterUpgrade++;
  if (buildCounterUpgrade < 3) {
    o.inputVariables = buildUnnamed54();
    o.release = 'foo';
  }
  buildCounterUpgrade--;
  return o;
}

void checkUpgrade(api.Upgrade o) {
  buildCounterUpgrade++;
  if (buildCounterUpgrade < 3) {
    checkUnnamed54(o.inputVariables!);
    unittest.expect(o.release!, unittest.equals('foo'));
  }
  buildCounterUpgrade--;
}

core.int buildCounterVariableMapping = 0;
api.VariableMapping buildVariableMapping() {
  final o = api.VariableMapping();
  buildCounterVariableMapping++;
  if (buildCounterVariableMapping < 3) {
    o.from = buildFromMapping();
    o.to = buildToMapping();
    o.variable = 'foo';
  }
  buildCounterVariableMapping--;
  return o;
}

void checkVariableMapping(api.VariableMapping o) {
  buildCounterVariableMapping++;
  if (buildCounterVariableMapping < 3) {
    checkFromMapping(o.from!);
    checkToMapping(o.to!);
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterVariableMapping--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Aggregate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregate(od);
    });
  });

  unittest.group('obj-schema-Blueprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlueprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Blueprint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlueprint(od);
    });
  });

  unittest.group('obj-schema-Dependency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDependency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dependency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDependency(od);
    });
  });

  unittest.group('obj-schema-Deprovision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeprovision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Deprovision.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeprovision(od);
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

  unittest.group('obj-schema-ErrorBudget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorBudget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorBudget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorBudget(od);
    });
  });

  unittest.group('obj-schema-FromMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFromMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FromMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFromMapping(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationLocation(od);
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

  unittest.group('obj-schema-ListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReleasesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListRolloutKindsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRolloutKindsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRolloutKindsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRolloutKindsResponse(od);
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

  unittest.group('obj-schema-ListSaasResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSaasResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSaasResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSaasResponse(od);
    });
  });

  unittest.group('obj-schema-ListTenantsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTenantsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTenantsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTenantsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUnitKindsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUnitKindsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUnitKindsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUnitKindsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUnitOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUnitOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUnitOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUnitOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUnitsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUnitsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUnitsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUnitsResponse(od);
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

  unittest.group('obj-schema-MaintenanceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMaintenanceSettings(od);
    });
  });

  unittest.group('obj-schema-Provision', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvision();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Provision.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvision(od);
    });
  });

  unittest.group('obj-schema-Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Release.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelease(od);
    });
  });

  unittest.group('obj-schema-ReleaseRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseRequirements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReleaseRequirements(od);
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

  unittest.group('obj-schema-RolloutControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutControl(od);
    });
  });

  unittest.group('obj-schema-RolloutKind', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutKind();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutKind.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutKind(od);
    });
  });

  unittest.group('obj-schema-RolloutStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRolloutStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RolloutStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRolloutStats(od);
    });
  });

  unittest.group('obj-schema-RunRolloutActionParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunRolloutActionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunRolloutActionParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunRolloutActionParams(od);
    });
  });

  unittest.group('obj-schema-Saas', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSaas();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Saas.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSaas(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Schedule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-Tenant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTenant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tenant.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTenant(od);
    });
  });

  unittest.group('obj-schema-ToMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToMapping(od);
    });
  });

  unittest.group('obj-schema-Unit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Unit.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnit(od);
    });
  });

  unittest.group('obj-schema-UnitCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitCondition(od);
    });
  });

  unittest.group('obj-schema-UnitDependency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitDependency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitDependency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitDependency(od);
    });
  });

  unittest.group('obj-schema-UnitKind', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitKind();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitKind.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitKind(od);
    });
  });

  unittest.group('obj-schema-UnitOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitOperation(od);
    });
  });

  unittest.group('obj-schema-UnitOperationCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitOperationCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitOperationCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitOperationCondition(od);
    });
  });

  unittest.group('obj-schema-UnitVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnitVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnitVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnitVariable(od);
    });
  });

  unittest.group('obj-schema-Upgrade', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgrade();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Upgrade.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpgrade(od);
    });
  });

  unittest.group('obj-schema-VariableMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariableMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VariableMapping.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVariableMapping(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildGoogleCloudLocationLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
        response as api.GoogleCloudLocationLocation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed55();
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
            unittest.equals('v1beta1/'),
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
  });

  unittest.group('resource-ProjectsLocationsReleasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.releases;
      final arg_request = buildRelease();
      final arg_parent = 'foo';
      final arg_releaseId = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Release.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRelease(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['releaseId']!.first,
            unittest.equals(arg_releaseId),
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
          final resp = convert.json.encode(buildRelease());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        releaseId: arg_releaseId,
        requestId: arg_requestId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkRelease(response as api.Release);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.releases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.releases;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRelease());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRelease(response as api.Release);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.releases;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListReleasesResponse());
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
      checkListReleasesResponse(response as api.ListReleasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.releases;
      final arg_request = buildRelease();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Release.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRelease(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRelease());
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
      checkRelease(response as api.Release);
    });
  });

  unittest.group('resource-ProjectsLocationsRolloutKindsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rolloutKinds;
      final arg_request = buildRolloutKind();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_rolloutKindId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RolloutKind.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRolloutKind(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['rolloutKindId']!.first,
            unittest.equals(arg_rolloutKindId),
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
          final resp = convert.json.encode(buildRolloutKind());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        rolloutKindId: arg_rolloutKindId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkRolloutKind(response as api.RolloutKind);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rolloutKinds;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rolloutKinds;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRolloutKind());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRolloutKind(response as api.RolloutKind);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rolloutKinds;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListRolloutKindsResponse());
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
      checkListRolloutKindsResponse(response as api.ListRolloutKindsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rolloutKinds;
      final arg_request = buildRolloutKind();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RolloutKind.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRolloutKind(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRolloutKind());
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
      checkRolloutKind(response as api.RolloutKind);
    });
  });

  unittest.group('resource-ProjectsLocationsRolloutsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rollouts;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRollout());
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
      checkRollout(response as api.Rollout);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rollouts;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rollouts;
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
            unittest.equals('v1beta1/'),
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
          api.SaaSServiceManagementApi(mock).projects.locations.rollouts;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
        $fields: arg_$fields,
      );
      checkListRolloutsResponse(response as api.ListRolloutsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.rollouts;
      final arg_request = buildRollout();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildRollout());
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
      checkRollout(response as api.Rollout);
    });
  });

  unittest.group('resource-ProjectsLocationsSaasResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.saas;
      final arg_request = buildSaas();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_saasId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Saas.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSaas(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['saasId']!.first,
            unittest.equals(arg_saasId),
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
          final resp = convert.json.encode(buildSaas());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        saasId: arg_saasId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkSaas(response as api.Saas);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.saas;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.saas;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildSaas());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSaas(response as api.Saas);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.saas;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListSaasResponse());
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
      checkListSaasResponse(response as api.ListSaasResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.saas;
      final arg_request = buildSaas();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Saas.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSaas(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildSaas());
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
      checkSaas(response as api.Saas);
    });
  });

  unittest.group('resource-ProjectsLocationsTenantsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.tenants;
      final arg_request = buildTenant();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_tenantId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Tenant.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTenant(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['tenantId']!.first,
            unittest.equals(arg_tenantId),
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
          final resp = convert.json.encode(buildTenant());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        tenantId: arg_tenantId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.tenants;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.tenants;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildTenant());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkTenant(response as api.Tenant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.tenants;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListTenantsResponse());
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
      checkListTenantsResponse(response as api.ListTenantsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.tenants;
      final arg_request = buildTenant();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Tenant.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTenant(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildTenant());
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
      checkTenant(response as api.Tenant);
    });
  });

  unittest.group('resource-ProjectsLocationsUnitKindsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitKinds;
      final arg_request = buildUnitKind();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_unitKindId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnitKind.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnitKind(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['unitKindId']!.first,
            unittest.equals(arg_unitKindId),
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
          final resp = convert.json.encode(buildUnitKind());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        unitKindId: arg_unitKindId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUnitKind(response as api.UnitKind);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitKinds;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitKinds;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnitKind());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUnitKind(response as api.UnitKind);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitKinds;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListUnitKindsResponse());
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
      checkListUnitKindsResponse(response as api.ListUnitKindsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitKinds;
      final arg_request = buildUnitKind();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnitKind.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnitKind(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnitKind());
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
      checkUnitKind(response as api.UnitKind);
    });
  });

  unittest.group('resource-ProjectsLocationsUnitOperationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitOperations;
      final arg_request = buildUnitOperation();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_unitOperationId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnitOperation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnitOperation(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['unitOperationId']!.first,
            unittest.equals(arg_unitOperationId),
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
          final resp = convert.json.encode(buildUnitOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        unitOperationId: arg_unitOperationId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUnitOperation(response as api.UnitOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitOperations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitOperations;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnitOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUnitOperation(response as api.UnitOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitOperations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListUnitOperationsResponse());
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
      checkListUnitOperationsResponse(
        response as api.ListUnitOperationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.SaaSServiceManagementApi(mock).projects.locations.unitOperations;
      final arg_request = buildUnitOperation();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UnitOperation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnitOperation(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnitOperation());
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
      checkUnitOperation(response as api.UnitOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsUnitsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.units;
      final arg_request = buildUnit();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_unitId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Unit.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnit(obj);

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
            unittest.equals('v1beta1/'),
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['unitId']!.first,
            unittest.equals(arg_unitId),
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
          final resp = convert.json.encode(buildUnit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        unitId: arg_unitId,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUnit(response as api.Unit);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.units;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildEmpty());
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
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.units;
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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnit());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUnit(response as api.Unit);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.units;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildListUnitsResponse());
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
      checkListUnitsResponse(response as api.ListUnitsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.SaaSServiceManagementApi(mock).projects.locations.units;
      final arg_request = buildUnit();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Unit.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUnit(obj);

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
            unittest.equals('v1beta1/'),
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
          final resp = convert.json.encode(buildUnit());
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
      checkUnit(response as api.Unit);
    });
  });
}
