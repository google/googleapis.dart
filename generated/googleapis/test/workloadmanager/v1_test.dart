// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/workloadmanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterEvaluation = 0;
api.Evaluation buildEvaluation() {
  final o = api.Evaluation();
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed0();
    o.name = 'foo';
    o.resourceFilter = buildResourceFilter();
    o.resourceStatus = buildResourceStatus();
    o.ruleNames = buildUnnamed1();
    o.ruleVersions = buildUnnamed2();
    o.updateTime = 'foo';
  }
  buildCounterEvaluation--;
  return o;
}

void checkEvaluation(api.Evaluation o) {
  buildCounterEvaluation++;
  if (buildCounterEvaluation < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkResourceFilter(o.resourceFilter!);
    checkResourceStatus(o.resourceStatus!);
    checkUnnamed1(o.ruleNames!);
    checkUnnamed2(o.ruleVersions!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvaluation--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGceInstanceFilter = 0;
api.GceInstanceFilter buildGceInstanceFilter() {
  final o = api.GceInstanceFilter();
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    o.serviceAccounts = buildUnnamed3();
  }
  buildCounterGceInstanceFilter--;
  return o;
}

void checkGceInstanceFilter(api.GceInstanceFilter o) {
  buildCounterGceInstanceFilter++;
  if (buildCounterGceInstanceFilter < 3) {
    checkUnnamed3(o.serviceAccounts!);
  }
  buildCounterGceInstanceFilter--;
}

core.int buildCounterInsight = 0;
api.Insight buildInsight() {
  final o = api.Insight();
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    o.sapDiscovery = buildSapDiscovery();
    o.sapValidation = buildSapValidation();
    o.sentTime = 'foo';
  }
  buildCounterInsight--;
  return o;
}

void checkInsight(api.Insight o) {
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    checkSapDiscovery(o.sapDiscovery!);
    checkSapValidation(o.sapValidation!);
    unittest.expect(
      o.sentTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsight--;
}

core.List<api.Evaluation> buildUnnamed4() => [
      buildEvaluation(),
      buildEvaluation(),
    ];

void checkUnnamed4(core.List<api.Evaluation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvaluation(o[0]);
  checkEvaluation(o[1]);
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterListEvaluationsResponse = 0;
api.ListEvaluationsResponse buildListEvaluationsResponse() {
  final o = api.ListEvaluationsResponse();
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    o.evaluations = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed5();
  }
  buildCounterListEvaluationsResponse--;
  return o;
}

void checkListEvaluationsResponse(api.ListEvaluationsResponse o) {
  buildCounterListEvaluationsResponse++;
  if (buildCounterListEvaluationsResponse < 3) {
    checkUnnamed4(o.evaluations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.unreachable!);
  }
  buildCounterListEvaluationsResponse--;
}

core.List<api.Location> buildUnnamed6() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed7() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed7(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed7();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed9() => {
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

void checkUnnamed9(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed8();
    o.locationId = 'foo';
    o.metadata = buildUnnamed9();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
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

core.Map<core.String, core.String> buildUnnamed12() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterResourceFilter = 0;
api.ResourceFilter buildResourceFilter() {
  final o = api.ResourceFilter();
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    o.gceInstanceFilter = buildGceInstanceFilter();
    o.inclusionLabels = buildUnnamed12();
    o.resourceIdPatterns = buildUnnamed13();
    o.scopes = buildUnnamed14();
  }
  buildCounterResourceFilter--;
  return o;
}

void checkResourceFilter(api.ResourceFilter o) {
  buildCounterResourceFilter++;
  if (buildCounterResourceFilter < 3) {
    checkGceInstanceFilter(o.gceInstanceFilter!);
    checkUnnamed12(o.inclusionLabels!);
    checkUnnamed13(o.resourceIdPatterns!);
    checkUnnamed14(o.scopes!);
  }
  buildCounterResourceFilter--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterResourceStatus = 0;
api.ResourceStatus buildResourceStatus() {
  final o = api.ResourceStatus();
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    o.rulesNewerVersions = buildUnnamed15();
    o.state = 'foo';
  }
  buildCounterResourceStatus--;
  return o;
}

void checkResourceStatus(api.ResourceStatus o) {
  buildCounterResourceStatus++;
  if (buildCounterResourceStatus < 3) {
    checkUnnamed15(o.rulesNewerVersions!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceStatus--;
}

core.int buildCounterSapDiscovery = 0;
api.SapDiscovery buildSapDiscovery() {
  final o = api.SapDiscovery();
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    o.applicationLayer = buildSapDiscoveryComponent();
    o.databaseLayer = buildSapDiscoveryComponent();
    o.metadata = buildSapDiscoveryMetadata();
    o.systemId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSapDiscovery--;
  return o;
}

void checkSapDiscovery(api.SapDiscovery o) {
  buildCounterSapDiscovery++;
  if (buildCounterSapDiscovery < 3) {
    checkSapDiscoveryComponent(o.applicationLayer!);
    checkSapDiscoveryComponent(o.databaseLayer!);
    checkSapDiscoveryMetadata(o.metadata!);
    unittest.expect(
      o.systemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscovery--;
}

core.List<api.SapDiscoveryResource> buildUnnamed16() => [
      buildSapDiscoveryResource(),
      buildSapDiscoveryResource(),
    ];

void checkUnnamed16(core.List<api.SapDiscoveryResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapDiscoveryResource(o[0]);
  checkSapDiscoveryResource(o[1]);
}

core.int buildCounterSapDiscoveryComponent = 0;
api.SapDiscoveryComponent buildSapDiscoveryComponent() {
  final o = api.SapDiscoveryComponent();
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    o.applicationType = 'foo';
    o.databaseType = 'foo';
    o.hostProject = 'foo';
    o.resources = buildUnnamed16();
    o.sid = 'foo';
  }
  buildCounterSapDiscoveryComponent--;
  return o;
}

void checkSapDiscoveryComponent(api.SapDiscoveryComponent o) {
  buildCounterSapDiscoveryComponent++;
  if (buildCounterSapDiscoveryComponent < 3) {
    unittest.expect(
      o.applicationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostProject!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.resources!);
    unittest.expect(
      o.sid!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryComponent--;
}

core.int buildCounterSapDiscoveryMetadata = 0;
api.SapDiscoveryMetadata buildSapDiscoveryMetadata() {
  final o = api.SapDiscoveryMetadata();
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    o.customerRegion = 'foo';
    o.definedSystem = 'foo';
    o.environmentType = 'foo';
    o.sapProduct = 'foo';
  }
  buildCounterSapDiscoveryMetadata--;
  return o;
}

void checkSapDiscoveryMetadata(api.SapDiscoveryMetadata o) {
  buildCounterSapDiscoveryMetadata++;
  if (buildCounterSapDiscoveryMetadata < 3) {
    unittest.expect(
      o.customerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.definedSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environmentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sapProduct!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryMetadata--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.int buildCounterSapDiscoveryResource = 0;
api.SapDiscoveryResource buildSapDiscoveryResource() {
  final o = api.SapDiscoveryResource();
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    o.relatedResources = buildUnnamed17();
    o.resourceKind = 'foo';
    o.resourceType = 'foo';
    o.resourceUri = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSapDiscoveryResource--;
  return o;
}

void checkSapDiscoveryResource(api.SapDiscoveryResource o) {
  buildCounterSapDiscoveryResource++;
  if (buildCounterSapDiscoveryResource < 3) {
    checkUnnamed17(o.relatedResources!);
    unittest.expect(
      o.resourceKind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapDiscoveryResource--;
}

core.List<api.SapValidationValidationDetail> buildUnnamed18() => [
      buildSapValidationValidationDetail(),
      buildSapValidationValidationDetail(),
    ];

void checkUnnamed18(core.List<api.SapValidationValidationDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSapValidationValidationDetail(o[0]);
  checkSapValidationValidationDetail(o[1]);
}

core.int buildCounterSapValidation = 0;
api.SapValidation buildSapValidation() {
  final o = api.SapValidation();
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    o.validationDetails = buildUnnamed18();
  }
  buildCounterSapValidation--;
  return o;
}

void checkSapValidation(api.SapValidation o) {
  buildCounterSapValidation++;
  if (buildCounterSapValidation < 3) {
    checkUnnamed18(o.validationDetails!);
  }
  buildCounterSapValidation--;
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterSapValidationValidationDetail = 0;
api.SapValidationValidationDetail buildSapValidationValidationDetail() {
  final o = api.SapValidationValidationDetail();
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    o.details = buildUnnamed19();
    o.sapValidationType = 'foo';
  }
  buildCounterSapValidationValidationDetail--;
  return o;
}

void checkSapValidationValidationDetail(api.SapValidationValidationDetail o) {
  buildCounterSapValidationValidationDetail++;
  if (buildCounterSapValidationValidationDetail < 3) {
    checkUnnamed19(o.details!);
    unittest.expect(
      o.sapValidationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSapValidationValidationDetail--;
}

core.Map<core.String, core.Object?> buildUnnamed20() => {
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

void checkUnnamed20(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed21() => [
      buildUnnamed20(),
      buildUnnamed20(),
    ];

void checkUnnamed21(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed20(o[0]);
  checkUnnamed20(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed21();
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
    checkUnnamed21(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterWriteInsightRequest = 0;
api.WriteInsightRequest buildWriteInsightRequest() {
  final o = api.WriteInsightRequest();
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    o.insight = buildInsight();
    o.requestId = 'foo';
  }
  buildCounterWriteInsightRequest--;
  return o;
}

void checkWriteInsightRequest(api.WriteInsightRequest o) {
  buildCounterWriteInsightRequest++;
  if (buildCounterWriteInsightRequest < 3) {
    checkInsight(o.insight!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteInsightRequest--;
}

core.int buildCounterWriteInsightResponse = 0;
api.WriteInsightResponse buildWriteInsightResponse() {
  final o = api.WriteInsightResponse();
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
  return o;
}

void checkWriteInsightResponse(api.WriteInsightResponse o) {
  buildCounterWriteInsightResponse++;
  if (buildCounterWriteInsightResponse < 3) {}
  buildCounterWriteInsightResponse--;
}

void main() {
  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
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

  unittest.group('obj-schema-Evaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Evaluation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvaluation(od);
    });
  });

  unittest.group('obj-schema-GceInstanceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceInstanceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceInstanceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGceInstanceFilter(od);
    });
  });

  unittest.group('obj-schema-Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Insight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInsight(od);
    });
  });

  unittest.group('obj-schema-ListEvaluationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEvaluationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEvaluationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEvaluationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
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

  unittest.group('obj-schema-ResourceFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceFilter(od);
    });
  });

  unittest.group('obj-schema-ResourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceStatus(od);
    });
  });

  unittest.group('obj-schema-SapDiscovery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscovery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscovery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscovery(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryComponent(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryMetadata(od);
    });
  });

  unittest.group('obj-schema-SapDiscoveryResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapDiscoveryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapDiscoveryResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapDiscoveryResource(od);
    });
  });

  unittest.group('obj-schema-SapValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapValidation(od);
    });
  });

  unittest.group('obj-schema-SapValidationValidationDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSapValidationValidationDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SapValidationValidationDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSapValidationValidationDetail(od);
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

  unittest.group('obj-schema-WriteInsightRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteInsightRequest(od);
    });
  });

  unittest.group('obj-schema-WriteInsightResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInsightResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInsightResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteInsightResponse(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsEvaluationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_request = buildEvaluation();
      final arg_parent = 'foo';
      final arg_evaluationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Evaluation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEvaluation(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['evaluationId']!.first,
          unittest.equals(arg_evaluationId),
        );
        unittest.expect(
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.create(arg_request, arg_parent,
          evaluationId: arg_evaluationId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEvaluation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEvaluation(response as api.Evaluation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.evaluations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListEvaluationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEvaluationsResponse(response as api.ListEvaluationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInsightsResource', () {
    unittest.test('method--writeInsight', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.insights;
      final arg_request = buildWriteInsightRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WriteInsightRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWriteInsightRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildWriteInsightResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.writeInsight(arg_request, arg_location,
          $fields: arg_$fields);
      checkWriteInsightResponse(response as api.WriteInsightResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WorkloadManagerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
