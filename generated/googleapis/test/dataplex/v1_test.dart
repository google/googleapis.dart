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

import 'package:googleapis/dataplex/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterGoogleCloudDataplexV1Action = 0;
api.GoogleCloudDataplexV1Action buildGoogleCloudDataplexV1Action() {
  final o = api.GoogleCloudDataplexV1Action();
  buildCounterGoogleCloudDataplexV1Action++;
  if (buildCounterGoogleCloudDataplexV1Action < 3) {
    o.asset = 'foo';
    o.category = 'foo';
    o.dataLocations = buildUnnamed0();
    o.detectTime = 'foo';
    o.failedSecurityPolicyApply =
        buildGoogleCloudDataplexV1ActionFailedSecurityPolicyApply();
    o.incompatibleDataSchema =
        buildGoogleCloudDataplexV1ActionIncompatibleDataSchema();
    o.invalidDataFormat = buildGoogleCloudDataplexV1ActionInvalidDataFormat();
    o.invalidDataOrganization =
        buildGoogleCloudDataplexV1ActionInvalidDataOrganization();
    o.invalidDataPartition =
        buildGoogleCloudDataplexV1ActionInvalidDataPartition();
    o.issue = 'foo';
    o.lake = 'foo';
    o.missingData = buildGoogleCloudDataplexV1ActionMissingData();
    o.missingResource = buildGoogleCloudDataplexV1ActionMissingResource();
    o.name = 'foo';
    o.unauthorizedResource =
        buildGoogleCloudDataplexV1ActionUnauthorizedResource();
    o.zone = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Action--;
  return o;
}

void checkGoogleCloudDataplexV1Action(api.GoogleCloudDataplexV1Action o) {
  buildCounterGoogleCloudDataplexV1Action++;
  if (buildCounterGoogleCloudDataplexV1Action < 3) {
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.dataLocations!);
    unittest.expect(
      o.detectTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ActionFailedSecurityPolicyApply(
        o.failedSecurityPolicyApply!);
    checkGoogleCloudDataplexV1ActionIncompatibleDataSchema(
        o.incompatibleDataSchema!);
    checkGoogleCloudDataplexV1ActionInvalidDataFormat(o.invalidDataFormat!);
    checkGoogleCloudDataplexV1ActionInvalidDataOrganization(
        o.invalidDataOrganization!);
    checkGoogleCloudDataplexV1ActionInvalidDataPartition(
        o.invalidDataPartition!);
    unittest.expect(
      o.issue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lake!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ActionMissingData(o.missingData!);
    checkGoogleCloudDataplexV1ActionMissingResource(o.missingResource!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ActionUnauthorizedResource(
        o.unauthorizedResource!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Action--;
}

core.int buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply = 0;
api.GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
    buildGoogleCloudDataplexV1ActionFailedSecurityPolicyApply() {
  final o = api.GoogleCloudDataplexV1ActionFailedSecurityPolicyApply();
  buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply++;
  if (buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply < 3) {
    o.asset = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply--;
  return o;
}

void checkGoogleCloudDataplexV1ActionFailedSecurityPolicyApply(
    api.GoogleCloudDataplexV1ActionFailedSecurityPolicyApply o) {
  buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply++;
  if (buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply < 3) {
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ActionFailedSecurityPolicyApply--;
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

core.int buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema = 0;
api.GoogleCloudDataplexV1ActionIncompatibleDataSchema
    buildGoogleCloudDataplexV1ActionIncompatibleDataSchema() {
  final o = api.GoogleCloudDataplexV1ActionIncompatibleDataSchema();
  buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema++;
  if (buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema < 3) {
    o.existingSchema = 'foo';
    o.newSchema = 'foo';
    o.sampledDataLocations = buildUnnamed1();
    o.schemaChange = 'foo';
    o.table = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema--;
  return o;
}

void checkGoogleCloudDataplexV1ActionIncompatibleDataSchema(
    api.GoogleCloudDataplexV1ActionIncompatibleDataSchema o) {
  buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema++;
  if (buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema < 3) {
    unittest.expect(
      o.existingSchema!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newSchema!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.sampledDataLocations!);
    unittest.expect(
      o.schemaChange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ActionIncompatibleDataSchema--;
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

core.int buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat = 0;
api.GoogleCloudDataplexV1ActionInvalidDataFormat
    buildGoogleCloudDataplexV1ActionInvalidDataFormat() {
  final o = api.GoogleCloudDataplexV1ActionInvalidDataFormat();
  buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat < 3) {
    o.expectedFormat = 'foo';
    o.newFormat = 'foo';
    o.sampledDataLocations = buildUnnamed2();
  }
  buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat--;
  return o;
}

void checkGoogleCloudDataplexV1ActionInvalidDataFormat(
    api.GoogleCloudDataplexV1ActionInvalidDataFormat o) {
  buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat < 3) {
    unittest.expect(
      o.expectedFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.sampledDataLocations!);
  }
  buildCounterGoogleCloudDataplexV1ActionInvalidDataFormat--;
}

core.int buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization = 0;
api.GoogleCloudDataplexV1ActionInvalidDataOrganization
    buildGoogleCloudDataplexV1ActionInvalidDataOrganization() {
  final o = api.GoogleCloudDataplexV1ActionInvalidDataOrganization();
  buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization < 3) {}
  buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization--;
  return o;
}

void checkGoogleCloudDataplexV1ActionInvalidDataOrganization(
    api.GoogleCloudDataplexV1ActionInvalidDataOrganization o) {
  buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization < 3) {}
  buildCounterGoogleCloudDataplexV1ActionInvalidDataOrganization--;
}

core.int buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition = 0;
api.GoogleCloudDataplexV1ActionInvalidDataPartition
    buildGoogleCloudDataplexV1ActionInvalidDataPartition() {
  final o = api.GoogleCloudDataplexV1ActionInvalidDataPartition();
  buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition < 3) {
    o.expectedStructure = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition--;
  return o;
}

void checkGoogleCloudDataplexV1ActionInvalidDataPartition(
    api.GoogleCloudDataplexV1ActionInvalidDataPartition o) {
  buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition++;
  if (buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition < 3) {
    unittest.expect(
      o.expectedStructure!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ActionInvalidDataPartition--;
}

core.int buildCounterGoogleCloudDataplexV1ActionMissingData = 0;
api.GoogleCloudDataplexV1ActionMissingData
    buildGoogleCloudDataplexV1ActionMissingData() {
  final o = api.GoogleCloudDataplexV1ActionMissingData();
  buildCounterGoogleCloudDataplexV1ActionMissingData++;
  if (buildCounterGoogleCloudDataplexV1ActionMissingData < 3) {}
  buildCounterGoogleCloudDataplexV1ActionMissingData--;
  return o;
}

void checkGoogleCloudDataplexV1ActionMissingData(
    api.GoogleCloudDataplexV1ActionMissingData o) {
  buildCounterGoogleCloudDataplexV1ActionMissingData++;
  if (buildCounterGoogleCloudDataplexV1ActionMissingData < 3) {}
  buildCounterGoogleCloudDataplexV1ActionMissingData--;
}

core.int buildCounterGoogleCloudDataplexV1ActionMissingResource = 0;
api.GoogleCloudDataplexV1ActionMissingResource
    buildGoogleCloudDataplexV1ActionMissingResource() {
  final o = api.GoogleCloudDataplexV1ActionMissingResource();
  buildCounterGoogleCloudDataplexV1ActionMissingResource++;
  if (buildCounterGoogleCloudDataplexV1ActionMissingResource < 3) {}
  buildCounterGoogleCloudDataplexV1ActionMissingResource--;
  return o;
}

void checkGoogleCloudDataplexV1ActionMissingResource(
    api.GoogleCloudDataplexV1ActionMissingResource o) {
  buildCounterGoogleCloudDataplexV1ActionMissingResource++;
  if (buildCounterGoogleCloudDataplexV1ActionMissingResource < 3) {}
  buildCounterGoogleCloudDataplexV1ActionMissingResource--;
}

core.int buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource = 0;
api.GoogleCloudDataplexV1ActionUnauthorizedResource
    buildGoogleCloudDataplexV1ActionUnauthorizedResource() {
  final o = api.GoogleCloudDataplexV1ActionUnauthorizedResource();
  buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource++;
  if (buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource < 3) {}
  buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource--;
  return o;
}

void checkGoogleCloudDataplexV1ActionUnauthorizedResource(
    api.GoogleCloudDataplexV1ActionUnauthorizedResource o) {
  buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource++;
  if (buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource < 3) {}
  buildCounterGoogleCloudDataplexV1ActionUnauthorizedResource--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Asset = 0;
api.GoogleCloudDataplexV1Asset buildGoogleCloudDataplexV1Asset() {
  final o = api.GoogleCloudDataplexV1Asset();
  buildCounterGoogleCloudDataplexV1Asset++;
  if (buildCounterGoogleCloudDataplexV1Asset < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.discoverySpec = buildGoogleCloudDataplexV1AssetDiscoverySpec();
    o.discoveryStatus = buildGoogleCloudDataplexV1AssetDiscoveryStatus();
    o.displayName = 'foo';
    o.labels = buildUnnamed3();
    o.name = 'foo';
    o.resourceSpec = buildGoogleCloudDataplexV1AssetResourceSpec();
    o.resourceStatus = buildGoogleCloudDataplexV1AssetResourceStatus();
    o.securityStatus = buildGoogleCloudDataplexV1AssetSecurityStatus();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Asset--;
  return o;
}

void checkGoogleCloudDataplexV1Asset(api.GoogleCloudDataplexV1Asset o) {
  buildCounterGoogleCloudDataplexV1Asset++;
  if (buildCounterGoogleCloudDataplexV1Asset < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1AssetDiscoverySpec(o.discoverySpec!);
    checkGoogleCloudDataplexV1AssetDiscoveryStatus(o.discoveryStatus!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1AssetResourceSpec(o.resourceSpec!);
    checkGoogleCloudDataplexV1AssetResourceStatus(o.resourceStatus!);
    checkGoogleCloudDataplexV1AssetSecurityStatus(o.securityStatus!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Asset--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1AssetDiscoverySpec = 0;
api.GoogleCloudDataplexV1AssetDiscoverySpec
    buildGoogleCloudDataplexV1AssetDiscoverySpec() {
  final o = api.GoogleCloudDataplexV1AssetDiscoverySpec();
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpec++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpec < 3) {
    o.csvOptions = buildGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions();
    o.enabled = true;
    o.excludePatterns = buildUnnamed4();
    o.includePatterns = buildUnnamed5();
    o.jsonOptions = buildGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions();
    o.schedule = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpec--;
  return o;
}

void checkGoogleCloudDataplexV1AssetDiscoverySpec(
    api.GoogleCloudDataplexV1AssetDiscoverySpec o) {
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpec++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpec < 3) {
    checkGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions(o.csvOptions!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed4(o.excludePatterns!);
    checkUnnamed5(o.includePatterns!);
    checkGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions(o.jsonOptions!);
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpec--;
}

core.int buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions = 0;
api.GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
    buildGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions() {
  final o = api.GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions();
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions < 3) {
    o.delimiter = 'foo';
    o.disableTypeInference = true;
    o.encoding = 'foo';
    o.headerRows = 42;
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions--;
  return o;
}

void checkGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions(
    api.GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions o) {
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions < 3) {
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableTypeInference!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headerRows!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions--;
}

core.int buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions = 0;
api.GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
    buildGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions() {
  final o = api.GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions();
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions < 3) {
    o.disableTypeInference = true;
    o.encoding = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions--;
  return o;
}

void checkGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions(
    api.GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions o) {
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions < 3) {
    unittest.expect(o.disableTypeInference!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions--;
}

core.int buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus = 0;
api.GoogleCloudDataplexV1AssetDiscoveryStatus
    buildGoogleCloudDataplexV1AssetDiscoveryStatus() {
  final o = api.GoogleCloudDataplexV1AssetDiscoveryStatus();
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus < 3) {
    o.lastRunDuration = 'foo';
    o.lastRunTime = 'foo';
    o.message = 'foo';
    o.state = 'foo';
    o.stats = buildGoogleCloudDataplexV1AssetDiscoveryStatusStats();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus--;
  return o;
}

void checkGoogleCloudDataplexV1AssetDiscoveryStatus(
    api.GoogleCloudDataplexV1AssetDiscoveryStatus o) {
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus < 3) {
    unittest.expect(
      o.lastRunDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastRunTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1AssetDiscoveryStatusStats(o.stats!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatus--;
}

core.int buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats = 0;
api.GoogleCloudDataplexV1AssetDiscoveryStatusStats
    buildGoogleCloudDataplexV1AssetDiscoveryStatusStats() {
  final o = api.GoogleCloudDataplexV1AssetDiscoveryStatusStats();
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats < 3) {
    o.dataItems = 'foo';
    o.dataSize = 'foo';
    o.filesets = 'foo';
    o.tables = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats--;
  return o;
}

void checkGoogleCloudDataplexV1AssetDiscoveryStatusStats(
    api.GoogleCloudDataplexV1AssetDiscoveryStatusStats o) {
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats++;
  if (buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats < 3) {
    unittest.expect(
      o.dataItems!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filesets!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tables!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetDiscoveryStatusStats--;
}

core.int buildCounterGoogleCloudDataplexV1AssetResourceSpec = 0;
api.GoogleCloudDataplexV1AssetResourceSpec
    buildGoogleCloudDataplexV1AssetResourceSpec() {
  final o = api.GoogleCloudDataplexV1AssetResourceSpec();
  buildCounterGoogleCloudDataplexV1AssetResourceSpec++;
  if (buildCounterGoogleCloudDataplexV1AssetResourceSpec < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetResourceSpec--;
  return o;
}

void checkGoogleCloudDataplexV1AssetResourceSpec(
    api.GoogleCloudDataplexV1AssetResourceSpec o) {
  buildCounterGoogleCloudDataplexV1AssetResourceSpec++;
  if (buildCounterGoogleCloudDataplexV1AssetResourceSpec < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetResourceSpec--;
}

core.int buildCounterGoogleCloudDataplexV1AssetResourceStatus = 0;
api.GoogleCloudDataplexV1AssetResourceStatus
    buildGoogleCloudDataplexV1AssetResourceStatus() {
  final o = api.GoogleCloudDataplexV1AssetResourceStatus();
  buildCounterGoogleCloudDataplexV1AssetResourceStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetResourceStatus < 3) {
    o.message = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetResourceStatus--;
  return o;
}

void checkGoogleCloudDataplexV1AssetResourceStatus(
    api.GoogleCloudDataplexV1AssetResourceStatus o) {
  buildCounterGoogleCloudDataplexV1AssetResourceStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetResourceStatus < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetResourceStatus--;
}

core.int buildCounterGoogleCloudDataplexV1AssetSecurityStatus = 0;
api.GoogleCloudDataplexV1AssetSecurityStatus
    buildGoogleCloudDataplexV1AssetSecurityStatus() {
  final o = api.GoogleCloudDataplexV1AssetSecurityStatus();
  buildCounterGoogleCloudDataplexV1AssetSecurityStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetSecurityStatus < 3) {
    o.message = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetSecurityStatus--;
  return o;
}

void checkGoogleCloudDataplexV1AssetSecurityStatus(
    api.GoogleCloudDataplexV1AssetSecurityStatus o) {
  buildCounterGoogleCloudDataplexV1AssetSecurityStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetSecurityStatus < 3) {
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetSecurityStatus--;
}

core.int buildCounterGoogleCloudDataplexV1AssetStatus = 0;
api.GoogleCloudDataplexV1AssetStatus buildGoogleCloudDataplexV1AssetStatus() {
  final o = api.GoogleCloudDataplexV1AssetStatus();
  buildCounterGoogleCloudDataplexV1AssetStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetStatus < 3) {
    o.activeAssets = 42;
    o.securityPolicyApplyingAssets = 42;
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1AssetStatus--;
  return o;
}

void checkGoogleCloudDataplexV1AssetStatus(
    api.GoogleCloudDataplexV1AssetStatus o) {
  buildCounterGoogleCloudDataplexV1AssetStatus++;
  if (buildCounterGoogleCloudDataplexV1AssetStatus < 3) {
    unittest.expect(
      o.activeAssets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.securityPolicyApplyingAssets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1AssetStatus--;
}

core.int buildCounterGoogleCloudDataplexV1CancelJobRequest = 0;
api.GoogleCloudDataplexV1CancelJobRequest
    buildGoogleCloudDataplexV1CancelJobRequest() {
  final o = api.GoogleCloudDataplexV1CancelJobRequest();
  buildCounterGoogleCloudDataplexV1CancelJobRequest++;
  if (buildCounterGoogleCloudDataplexV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudDataplexV1CancelJobRequest--;
  return o;
}

void checkGoogleCloudDataplexV1CancelJobRequest(
    api.GoogleCloudDataplexV1CancelJobRequest o) {
  buildCounterGoogleCloudDataplexV1CancelJobRequest++;
  if (buildCounterGoogleCloudDataplexV1CancelJobRequest < 3) {}
  buildCounterGoogleCloudDataplexV1CancelJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Content = 0;
api.GoogleCloudDataplexV1Content buildGoogleCloudDataplexV1Content() {
  final o = api.GoogleCloudDataplexV1Content();
  buildCounterGoogleCloudDataplexV1Content++;
  if (buildCounterGoogleCloudDataplexV1Content < 3) {
    o.createTime = 'foo';
    o.dataText = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed6();
    o.name = 'foo';
    o.notebook = buildGoogleCloudDataplexV1ContentNotebook();
    o.path = 'foo';
    o.sqlScript = buildGoogleCloudDataplexV1ContentSqlScript();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Content--;
  return o;
}

void checkGoogleCloudDataplexV1Content(api.GoogleCloudDataplexV1Content o) {
  buildCounterGoogleCloudDataplexV1Content++;
  if (buildCounterGoogleCloudDataplexV1Content < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ContentNotebook(o.notebook!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ContentSqlScript(o.sqlScript!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Content--;
}

core.int buildCounterGoogleCloudDataplexV1ContentNotebook = 0;
api.GoogleCloudDataplexV1ContentNotebook
    buildGoogleCloudDataplexV1ContentNotebook() {
  final o = api.GoogleCloudDataplexV1ContentNotebook();
  buildCounterGoogleCloudDataplexV1ContentNotebook++;
  if (buildCounterGoogleCloudDataplexV1ContentNotebook < 3) {
    o.kernelType = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ContentNotebook--;
  return o;
}

void checkGoogleCloudDataplexV1ContentNotebook(
    api.GoogleCloudDataplexV1ContentNotebook o) {
  buildCounterGoogleCloudDataplexV1ContentNotebook++;
  if (buildCounterGoogleCloudDataplexV1ContentNotebook < 3) {
    unittest.expect(
      o.kernelType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ContentNotebook--;
}

core.int buildCounterGoogleCloudDataplexV1ContentSqlScript = 0;
api.GoogleCloudDataplexV1ContentSqlScript
    buildGoogleCloudDataplexV1ContentSqlScript() {
  final o = api.GoogleCloudDataplexV1ContentSqlScript();
  buildCounterGoogleCloudDataplexV1ContentSqlScript++;
  if (buildCounterGoogleCloudDataplexV1ContentSqlScript < 3) {
    o.engine = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ContentSqlScript--;
  return o;
}

void checkGoogleCloudDataplexV1ContentSqlScript(
    api.GoogleCloudDataplexV1ContentSqlScript o) {
  buildCounterGoogleCloudDataplexV1ContentSqlScript++;
  if (buildCounterGoogleCloudDataplexV1ContentSqlScript < 3) {
    unittest.expect(
      o.engine!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ContentSqlScript--;
}

core.int buildCounterGoogleCloudDataplexV1DataProfileResult = 0;
api.GoogleCloudDataplexV1DataProfileResult
    buildGoogleCloudDataplexV1DataProfileResult() {
  final o = api.GoogleCloudDataplexV1DataProfileResult();
  buildCounterGoogleCloudDataplexV1DataProfileResult++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResult < 3) {
    o.profile = buildGoogleCloudDataplexV1DataProfileResultProfile();
    o.rowCount = 'foo';
    o.scannedData = buildGoogleCloudDataplexV1ScannedData();
  }
  buildCounterGoogleCloudDataplexV1DataProfileResult--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResult(
    api.GoogleCloudDataplexV1DataProfileResult o) {
  buildCounterGoogleCloudDataplexV1DataProfileResult++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResult < 3) {
    checkGoogleCloudDataplexV1DataProfileResultProfile(o.profile!);
    unittest.expect(
      o.rowCount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ScannedData(o.scannedData!);
  }
  buildCounterGoogleCloudDataplexV1DataProfileResult--;
}

core.List<api.GoogleCloudDataplexV1DataProfileResultProfileField>
    buildUnnamed7() => [
          buildGoogleCloudDataplexV1DataProfileResultProfileField(),
          buildGoogleCloudDataplexV1DataProfileResultProfileField(),
        ];

void checkUnnamed7(
    core.List<api.GoogleCloudDataplexV1DataProfileResultProfileField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataProfileResultProfileField(o[0]);
  checkGoogleCloudDataplexV1DataProfileResultProfileField(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1DataProfileResultProfile = 0;
api.GoogleCloudDataplexV1DataProfileResultProfile
    buildGoogleCloudDataplexV1DataProfileResultProfile() {
  final o = api.GoogleCloudDataplexV1DataProfileResultProfile();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfile++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfile < 3) {
    o.fields = buildUnnamed7();
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfile--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfile(
    api.GoogleCloudDataplexV1DataProfileResultProfile o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfile++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfile < 3) {
    checkUnnamed7(o.fields!);
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfile--;
}

core.int buildCounterGoogleCloudDataplexV1DataProfileResultProfileField = 0;
api.GoogleCloudDataplexV1DataProfileResultProfileField
    buildGoogleCloudDataplexV1DataProfileResultProfileField() {
  final o = api.GoogleCloudDataplexV1DataProfileResultProfileField();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileField++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileField < 3) {
    o.mode = 'foo';
    o.name = 'foo';
    o.profile =
        buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo();
    o.type = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileField--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileField(
    api.GoogleCloudDataplexV1DataProfileResultProfileField o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileField++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileField < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo(
        o.profile!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileField--;
}

core.List<
        api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue>
    buildUnnamed8() => [
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(),
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(),
        ];

void checkUnnamed8(
    core.List<
            api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(
      o[0]);
  checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(
      o[1]);
}

core.int
    buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo =
    0;
api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
    buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo() {
  final o = api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo <
      3) {
    o.distinctRatio = 42.0;
    o.doubleProfile =
        buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo();
    o.integerProfile =
        buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo();
    o.nullRatio = 42.0;
    o.stringProfile =
        buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo();
    o.topNValues = buildUnnamed8();
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo(
    api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo <
      3) {
    unittest.expect(
      o.distinctRatio!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo(
        o.doubleProfile!);
    checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo(
        o.integerProfile!);
    unittest.expect(
      o.nullRatio!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo(
        o.stringProfile!);
    checkUnnamed8(o.topNValues!);
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo--;
}

core.List<core.double> buildUnnamed9() => [
      42.0,
      42.0,
    ];

void checkUnnamed9(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int
    buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo =
    0;
api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
    buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo() {
  final o = api
      .GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo <
      3) {
    o.average = 42.0;
    o.max = 42.0;
    o.min = 42.0;
    o.quartiles = buildUnnamed9();
    o.standardDeviation = 42.0;
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo(
    api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
        o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo <
      3) {
    unittest.expect(
      o.average!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.max!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42.0),
    );
    checkUnnamed9(o.quartiles!);
    unittest.expect(
      o.standardDeviation!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo =
    0;
api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
    buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo() {
  final o = api
      .GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo <
      3) {
    o.average = 42.0;
    o.max = 'foo';
    o.min = 'foo';
    o.quartiles = buildUnnamed10();
    o.standardDeviation = 42.0;
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo(
    api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
        o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo <
      3) {
    unittest.expect(
      o.average!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.max!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.min!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.quartiles!);
    unittest.expect(
      o.standardDeviation!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo--;
}

core.int
    buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo =
    0;
api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
    buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo() {
  final o = api
      .GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo <
      3) {
    o.averageLength = 42.0;
    o.maxLength = 'foo';
    o.minLength = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo(
    api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
        o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo <
      3) {
    unittest.expect(
      o.averageLength!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minLength!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo--;
}

core.int
    buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue =
    0;
api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
    buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue() {
  final o = api
      .GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue();
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue <
      3) {
    o.count = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(
    api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
        o) {
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue++;
  if (buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue <
      3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue--;
}

core.int buildCounterGoogleCloudDataplexV1DataProfileSpec = 0;
api.GoogleCloudDataplexV1DataProfileSpec
    buildGoogleCloudDataplexV1DataProfileSpec() {
  final o = api.GoogleCloudDataplexV1DataProfileSpec();
  buildCounterGoogleCloudDataplexV1DataProfileSpec++;
  if (buildCounterGoogleCloudDataplexV1DataProfileSpec < 3) {}
  buildCounterGoogleCloudDataplexV1DataProfileSpec--;
  return o;
}

void checkGoogleCloudDataplexV1DataProfileSpec(
    api.GoogleCloudDataplexV1DataProfileSpec o) {
  buildCounterGoogleCloudDataplexV1DataProfileSpec++;
  if (buildCounterGoogleCloudDataplexV1DataProfileSpec < 3) {}
  buildCounterGoogleCloudDataplexV1DataProfileSpec--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityDimensionResult = 0;
api.GoogleCloudDataplexV1DataQualityDimensionResult
    buildGoogleCloudDataplexV1DataQualityDimensionResult() {
  final o = api.GoogleCloudDataplexV1DataQualityDimensionResult();
  buildCounterGoogleCloudDataplexV1DataQualityDimensionResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityDimensionResult < 3) {
    o.passed = true;
  }
  buildCounterGoogleCloudDataplexV1DataQualityDimensionResult--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityDimensionResult(
    api.GoogleCloudDataplexV1DataQualityDimensionResult o) {
  buildCounterGoogleCloudDataplexV1DataQualityDimensionResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityDimensionResult < 3) {
    unittest.expect(o.passed!, unittest.isTrue);
  }
  buildCounterGoogleCloudDataplexV1DataQualityDimensionResult--;
}

core.List<api.GoogleCloudDataplexV1DataQualityDimensionResult>
    buildUnnamed11() => [
          buildGoogleCloudDataplexV1DataQualityDimensionResult(),
          buildGoogleCloudDataplexV1DataQualityDimensionResult(),
        ];

void checkUnnamed11(
    core.List<api.GoogleCloudDataplexV1DataQualityDimensionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataQualityDimensionResult(o[0]);
  checkGoogleCloudDataplexV1DataQualityDimensionResult(o[1]);
}

core.List<api.GoogleCloudDataplexV1DataQualityRuleResult> buildUnnamed12() => [
      buildGoogleCloudDataplexV1DataQualityRuleResult(),
      buildGoogleCloudDataplexV1DataQualityRuleResult(),
    ];

void checkUnnamed12(
    core.List<api.GoogleCloudDataplexV1DataQualityRuleResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataQualityRuleResult(o[0]);
  checkGoogleCloudDataplexV1DataQualityRuleResult(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1DataQualityResult = 0;
api.GoogleCloudDataplexV1DataQualityResult
    buildGoogleCloudDataplexV1DataQualityResult() {
  final o = api.GoogleCloudDataplexV1DataQualityResult();
  buildCounterGoogleCloudDataplexV1DataQualityResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityResult < 3) {
    o.dimensions = buildUnnamed11();
    o.passed = true;
    o.rowCount = 'foo';
    o.rules = buildUnnamed12();
    o.scannedData = buildGoogleCloudDataplexV1ScannedData();
  }
  buildCounterGoogleCloudDataplexV1DataQualityResult--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityResult(
    api.GoogleCloudDataplexV1DataQualityResult o) {
  buildCounterGoogleCloudDataplexV1DataQualityResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityResult < 3) {
    checkUnnamed11(o.dimensions!);
    unittest.expect(o.passed!, unittest.isTrue);
    unittest.expect(
      o.rowCount!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.rules!);
    checkGoogleCloudDataplexV1ScannedData(o.scannedData!);
  }
  buildCounterGoogleCloudDataplexV1DataQualityResult--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRule = 0;
api.GoogleCloudDataplexV1DataQualityRule
    buildGoogleCloudDataplexV1DataQualityRule() {
  final o = api.GoogleCloudDataplexV1DataQualityRule();
  buildCounterGoogleCloudDataplexV1DataQualityRule++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRule < 3) {
    o.column = 'foo';
    o.dimension = 'foo';
    o.ignoreNull = true;
    o.nonNullExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleNonNullExpectation();
    o.rangeExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleRangeExpectation();
    o.regexExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleRegexExpectation();
    o.rowConditionExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation();
    o.setExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleSetExpectation();
    o.statisticRangeExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation();
    o.tableConditionExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation();
    o.threshold = 42.0;
    o.uniquenessExpectation =
        buildGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation();
  }
  buildCounterGoogleCloudDataplexV1DataQualityRule--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRule(
    api.GoogleCloudDataplexV1DataQualityRule o) {
  buildCounterGoogleCloudDataplexV1DataQualityRule++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRule < 3) {
    unittest.expect(
      o.column!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dimension!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreNull!, unittest.isTrue);
    checkGoogleCloudDataplexV1DataQualityRuleNonNullExpectation(
        o.nonNullExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleRangeExpectation(
        o.rangeExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleRegexExpectation(
        o.regexExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation(
        o.rowConditionExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleSetExpectation(o.setExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation(
        o.statisticRangeExpectation!);
    checkGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation(
        o.tableConditionExpectation!);
    unittest.expect(
      o.threshold!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation(
        o.uniquenessExpectation!);
  }
  buildCounterGoogleCloudDataplexV1DataQualityRule--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation = 0;
api.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
    buildGoogleCloudDataplexV1DataQualityRuleNonNullExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation < 3) {}
  buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleNonNullExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation < 3) {}
  buildCounterGoogleCloudDataplexV1DataQualityRuleNonNullExpectation--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation = 0;
api.GoogleCloudDataplexV1DataQualityRuleRangeExpectation
    buildGoogleCloudDataplexV1DataQualityRuleRangeExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleRangeExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
    o.strictMaxEnabled = true;
    o.strictMinEnabled = true;
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleRangeExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleRangeExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation < 3) {
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
    unittest.expect(o.strictMaxEnabled!, unittest.isTrue);
    unittest.expect(o.strictMinEnabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRangeExpectation--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation = 0;
api.GoogleCloudDataplexV1DataQualityRuleRegexExpectation
    buildGoogleCloudDataplexV1DataQualityRuleRegexExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleRegexExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation < 3) {
    o.regex = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleRegexExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleRegexExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation < 3) {
    unittest.expect(
      o.regex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRegexExpectation--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleResult = 0;
api.GoogleCloudDataplexV1DataQualityRuleResult
    buildGoogleCloudDataplexV1DataQualityRuleResult() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleResult();
  buildCounterGoogleCloudDataplexV1DataQualityRuleResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleResult < 3) {
    o.evaluatedCount = 'foo';
    o.failingRowsQuery = 'foo';
    o.nullCount = 'foo';
    o.passRatio = 42.0;
    o.passed = true;
    o.passedCount = 'foo';
    o.rule = buildGoogleCloudDataplexV1DataQualityRule();
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleResult--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleResult(
    api.GoogleCloudDataplexV1DataQualityRuleResult o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleResult++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleResult < 3) {
    unittest.expect(
      o.evaluatedCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failingRowsQuery!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nullCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(o.passed!, unittest.isTrue);
    unittest.expect(
      o.passedCount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1DataQualityRule(o.rule!);
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleResult--;
}

core.int
    buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation = 0;
api.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
    buildGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation <
      3) {
    o.sqlExpression = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation <
      3) {
    unittest.expect(
      o.sqlExpression!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation--;
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

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation = 0;
api.GoogleCloudDataplexV1DataQualityRuleSetExpectation
    buildGoogleCloudDataplexV1DataQualityRuleSetExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleSetExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation < 3) {
    o.values = buildUnnamed13();
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleSetExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleSetExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation < 3) {
    checkUnnamed13(o.values!);
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleSetExpectation--;
}

core.int
    buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation =
    0;
api.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
    buildGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation <
      3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
    o.statistic = 'foo';
    o.strictMaxEnabled = true;
    o.strictMinEnabled = true;
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation <
      3) {
    unittest.expect(
      o.maxValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statistic!,
      unittest.equals('foo'),
    );
    unittest.expect(o.strictMaxEnabled!, unittest.isTrue);
    unittest.expect(o.strictMinEnabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation--;
}

core.int
    buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation =
    0;
api.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
    buildGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation <
      3) {
    o.sqlExpression = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation <
      3) {
    unittest.expect(
      o.sqlExpression!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation--;
}

core.int buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation =
    0;
api.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
    buildGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation() {
  final o = api.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation();
  buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation <
      3) {}
  buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation(
    api.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation o) {
  buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation++;
  if (buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation <
      3) {}
  buildCounterGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation--;
}

core.List<api.GoogleCloudDataplexV1DataQualityRule> buildUnnamed14() => [
      buildGoogleCloudDataplexV1DataQualityRule(),
      buildGoogleCloudDataplexV1DataQualityRule(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudDataplexV1DataQualityRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataQualityRule(o[0]);
  checkGoogleCloudDataplexV1DataQualityRule(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1DataQualitySpec = 0;
api.GoogleCloudDataplexV1DataQualitySpec
    buildGoogleCloudDataplexV1DataQualitySpec() {
  final o = api.GoogleCloudDataplexV1DataQualitySpec();
  buildCounterGoogleCloudDataplexV1DataQualitySpec++;
  if (buildCounterGoogleCloudDataplexV1DataQualitySpec < 3) {
    o.rules = buildUnnamed14();
  }
  buildCounterGoogleCloudDataplexV1DataQualitySpec--;
  return o;
}

void checkGoogleCloudDataplexV1DataQualitySpec(
    api.GoogleCloudDataplexV1DataQualitySpec o) {
  buildCounterGoogleCloudDataplexV1DataQualitySpec++;
  if (buildCounterGoogleCloudDataplexV1DataQualitySpec < 3) {
    checkUnnamed14(o.rules!);
  }
  buildCounterGoogleCloudDataplexV1DataQualitySpec--;
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1DataScan = 0;
api.GoogleCloudDataplexV1DataScan buildGoogleCloudDataplexV1DataScan() {
  final o = api.GoogleCloudDataplexV1DataScan();
  buildCounterGoogleCloudDataplexV1DataScan++;
  if (buildCounterGoogleCloudDataplexV1DataScan < 3) {
    o.createTime = 'foo';
    o.data = buildGoogleCloudDataplexV1DataSource();
    o.dataProfileResult = buildGoogleCloudDataplexV1DataProfileResult();
    o.dataProfileSpec = buildGoogleCloudDataplexV1DataProfileSpec();
    o.dataQualityResult = buildGoogleCloudDataplexV1DataQualityResult();
    o.dataQualitySpec = buildGoogleCloudDataplexV1DataQualitySpec();
    o.description = 'foo';
    o.displayName = 'foo';
    o.executionSpec = buildGoogleCloudDataplexV1DataScanExecutionSpec();
    o.executionStatus = buildGoogleCloudDataplexV1DataScanExecutionStatus();
    o.labels = buildUnnamed15();
    o.name = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataScan--;
  return o;
}

void checkGoogleCloudDataplexV1DataScan(api.GoogleCloudDataplexV1DataScan o) {
  buildCounterGoogleCloudDataplexV1DataScan++;
  if (buildCounterGoogleCloudDataplexV1DataScan < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1DataSource(o.data!);
    checkGoogleCloudDataplexV1DataProfileResult(o.dataProfileResult!);
    checkGoogleCloudDataplexV1DataProfileSpec(o.dataProfileSpec!);
    checkGoogleCloudDataplexV1DataQualityResult(o.dataQualityResult!);
    checkGoogleCloudDataplexV1DataQualitySpec(o.dataQualitySpec!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1DataScanExecutionSpec(o.executionSpec!);
    checkGoogleCloudDataplexV1DataScanExecutionStatus(o.executionStatus!);
    checkUnnamed15(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataScan--;
}

core.int buildCounterGoogleCloudDataplexV1DataScanExecutionSpec = 0;
api.GoogleCloudDataplexV1DataScanExecutionSpec
    buildGoogleCloudDataplexV1DataScanExecutionSpec() {
  final o = api.GoogleCloudDataplexV1DataScanExecutionSpec();
  buildCounterGoogleCloudDataplexV1DataScanExecutionSpec++;
  if (buildCounterGoogleCloudDataplexV1DataScanExecutionSpec < 3) {
    o.field = 'foo';
    o.trigger = buildGoogleCloudDataplexV1Trigger();
  }
  buildCounterGoogleCloudDataplexV1DataScanExecutionSpec--;
  return o;
}

void checkGoogleCloudDataplexV1DataScanExecutionSpec(
    api.GoogleCloudDataplexV1DataScanExecutionSpec o) {
  buildCounterGoogleCloudDataplexV1DataScanExecutionSpec++;
  if (buildCounterGoogleCloudDataplexV1DataScanExecutionSpec < 3) {
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1Trigger(o.trigger!);
  }
  buildCounterGoogleCloudDataplexV1DataScanExecutionSpec--;
}

core.int buildCounterGoogleCloudDataplexV1DataScanExecutionStatus = 0;
api.GoogleCloudDataplexV1DataScanExecutionStatus
    buildGoogleCloudDataplexV1DataScanExecutionStatus() {
  final o = api.GoogleCloudDataplexV1DataScanExecutionStatus();
  buildCounterGoogleCloudDataplexV1DataScanExecutionStatus++;
  if (buildCounterGoogleCloudDataplexV1DataScanExecutionStatus < 3) {
    o.latestJobEndTime = 'foo';
    o.latestJobStartTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataScanExecutionStatus--;
  return o;
}

void checkGoogleCloudDataplexV1DataScanExecutionStatus(
    api.GoogleCloudDataplexV1DataScanExecutionStatus o) {
  buildCounterGoogleCloudDataplexV1DataScanExecutionStatus++;
  if (buildCounterGoogleCloudDataplexV1DataScanExecutionStatus < 3) {
    unittest.expect(
      o.latestJobEndTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestJobStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataScanExecutionStatus--;
}

core.int buildCounterGoogleCloudDataplexV1DataScanJob = 0;
api.GoogleCloudDataplexV1DataScanJob buildGoogleCloudDataplexV1DataScanJob() {
  final o = api.GoogleCloudDataplexV1DataScanJob();
  buildCounterGoogleCloudDataplexV1DataScanJob++;
  if (buildCounterGoogleCloudDataplexV1DataScanJob < 3) {
    o.dataProfileResult = buildGoogleCloudDataplexV1DataProfileResult();
    o.dataProfileSpec = buildGoogleCloudDataplexV1DataProfileSpec();
    o.dataQualityResult = buildGoogleCloudDataplexV1DataQualityResult();
    o.dataQualitySpec = buildGoogleCloudDataplexV1DataQualitySpec();
    o.endTime = 'foo';
    o.message = 'foo';
    o.name = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataScanJob--;
  return o;
}

void checkGoogleCloudDataplexV1DataScanJob(
    api.GoogleCloudDataplexV1DataScanJob o) {
  buildCounterGoogleCloudDataplexV1DataScanJob++;
  if (buildCounterGoogleCloudDataplexV1DataScanJob < 3) {
    checkGoogleCloudDataplexV1DataProfileResult(o.dataProfileResult!);
    checkGoogleCloudDataplexV1DataProfileSpec(o.dataProfileSpec!);
    checkGoogleCloudDataplexV1DataQualityResult(o.dataQualityResult!);
    checkGoogleCloudDataplexV1DataQualitySpec(o.dataQualitySpec!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataScanJob--;
}

core.int buildCounterGoogleCloudDataplexV1DataSource = 0;
api.GoogleCloudDataplexV1DataSource buildGoogleCloudDataplexV1DataSource() {
  final o = api.GoogleCloudDataplexV1DataSource();
  buildCounterGoogleCloudDataplexV1DataSource++;
  if (buildCounterGoogleCloudDataplexV1DataSource < 3) {
    o.entity = 'foo';
  }
  buildCounterGoogleCloudDataplexV1DataSource--;
  return o;
}

void checkGoogleCloudDataplexV1DataSource(
    api.GoogleCloudDataplexV1DataSource o) {
  buildCounterGoogleCloudDataplexV1DataSource++;
  if (buildCounterGoogleCloudDataplexV1DataSource < 3) {
    unittest.expect(
      o.entity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1DataSource--;
}

core.int buildCounterGoogleCloudDataplexV1Entity = 0;
api.GoogleCloudDataplexV1Entity buildGoogleCloudDataplexV1Entity() {
  final o = api.GoogleCloudDataplexV1Entity();
  buildCounterGoogleCloudDataplexV1Entity++;
  if (buildCounterGoogleCloudDataplexV1Entity < 3) {
    o.asset = 'foo';
    o.catalogEntry = 'foo';
    o.compatibility = buildGoogleCloudDataplexV1EntityCompatibilityStatus();
    o.createTime = 'foo';
    o.dataPath = 'foo';
    o.dataPathPattern = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.etag = 'foo';
    o.format = buildGoogleCloudDataplexV1StorageFormat();
    o.id = 'foo';
    o.name = 'foo';
    o.schema = buildGoogleCloudDataplexV1Schema();
    o.system = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Entity--;
  return o;
}

void checkGoogleCloudDataplexV1Entity(api.GoogleCloudDataplexV1Entity o) {
  buildCounterGoogleCloudDataplexV1Entity++;
  if (buildCounterGoogleCloudDataplexV1Entity < 3) {
    unittest.expect(
      o.asset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.catalogEntry!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1EntityCompatibilityStatus(o.compatibility!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataPathPattern!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1StorageFormat(o.format!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1Schema(o.schema!);
    unittest.expect(
      o.system!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Entity--;
}

core.int buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus = 0;
api.GoogleCloudDataplexV1EntityCompatibilityStatus
    buildGoogleCloudDataplexV1EntityCompatibilityStatus() {
  final o = api.GoogleCloudDataplexV1EntityCompatibilityStatus();
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus++;
  if (buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus < 3) {
    o.bigquery =
        buildGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility();
    o.hiveMetastore =
        buildGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility();
  }
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus--;
  return o;
}

void checkGoogleCloudDataplexV1EntityCompatibilityStatus(
    api.GoogleCloudDataplexV1EntityCompatibilityStatus o) {
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus++;
  if (buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus < 3) {
    checkGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility(
        o.bigquery!);
    checkGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility(
        o.hiveMetastore!);
  }
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatus--;
}

core.int
    buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility = 0;
api.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
    buildGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility() {
  final o = api.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility();
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility++;
  if (buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility <
      3) {
    o.compatible = true;
    o.reason = 'foo';
  }
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility--;
  return o;
}

void checkGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility(
    api.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility o) {
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility++;
  if (buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility <
      3) {
    unittest.expect(o.compatible!, unittest.isTrue);
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility--;
}

core.Map<core.String, core.String> buildUnnamed16() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed16(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Environment = 0;
api.GoogleCloudDataplexV1Environment buildGoogleCloudDataplexV1Environment() {
  final o = api.GoogleCloudDataplexV1Environment();
  buildCounterGoogleCloudDataplexV1Environment++;
  if (buildCounterGoogleCloudDataplexV1Environment < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.endpoints = buildGoogleCloudDataplexV1EnvironmentEndpoints();
    o.infrastructureSpec =
        buildGoogleCloudDataplexV1EnvironmentInfrastructureSpec();
    o.labels = buildUnnamed16();
    o.name = 'foo';
    o.sessionSpec = buildGoogleCloudDataplexV1EnvironmentSessionSpec();
    o.sessionStatus = buildGoogleCloudDataplexV1EnvironmentSessionStatus();
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Environment--;
  return o;
}

void checkGoogleCloudDataplexV1Environment(
    api.GoogleCloudDataplexV1Environment o) {
  buildCounterGoogleCloudDataplexV1Environment++;
  if (buildCounterGoogleCloudDataplexV1Environment < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1EnvironmentEndpoints(o.endpoints!);
    checkGoogleCloudDataplexV1EnvironmentInfrastructureSpec(
        o.infrastructureSpec!);
    checkUnnamed16(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1EnvironmentSessionSpec(o.sessionSpec!);
    checkGoogleCloudDataplexV1EnvironmentSessionStatus(o.sessionStatus!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Environment--;
}

core.int buildCounterGoogleCloudDataplexV1EnvironmentEndpoints = 0;
api.GoogleCloudDataplexV1EnvironmentEndpoints
    buildGoogleCloudDataplexV1EnvironmentEndpoints() {
  final o = api.GoogleCloudDataplexV1EnvironmentEndpoints();
  buildCounterGoogleCloudDataplexV1EnvironmentEndpoints++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentEndpoints < 3) {
    o.notebooks = 'foo';
    o.sql = 'foo';
  }
  buildCounterGoogleCloudDataplexV1EnvironmentEndpoints--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentEndpoints(
    api.GoogleCloudDataplexV1EnvironmentEndpoints o) {
  buildCounterGoogleCloudDataplexV1EnvironmentEndpoints++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentEndpoints < 3) {
    unittest.expect(
      o.notebooks!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sql!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1EnvironmentEndpoints--;
}

core.int buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec = 0;
api.GoogleCloudDataplexV1EnvironmentInfrastructureSpec
    buildGoogleCloudDataplexV1EnvironmentInfrastructureSpec() {
  final o = api.GoogleCloudDataplexV1EnvironmentInfrastructureSpec();
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec < 3) {
    o.compute =
        buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources();
    o.osImage =
        buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime();
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentInfrastructureSpec(
    api.GoogleCloudDataplexV1EnvironmentInfrastructureSpec o) {
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec < 3) {
    checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources(
        o.compute!);
    checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime(
        o.osImage!);
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpec--;
}

core.int
    buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources =
    0;
api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
    buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources() {
  final o =
      api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources();
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources <
      3) {
    o.diskSizeGb = 42;
    o.maxNodeCount = 42;
    o.nodeCount = 42;
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources(
    api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources o) {
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources <
      3) {
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources--;
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

core.Map<core.String, core.String> buildUnnamed18() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed18(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime =
    0;
api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
    buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime() {
  final o =
      api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime();
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime <
      3) {
    o.imageVersion = 'foo';
    o.javaLibraries = buildUnnamed17();
    o.properties = buildUnnamed18();
    o.pythonPackages = buildUnnamed19();
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime(
    api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime o) {
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime <
      3) {
    unittest.expect(
      o.imageVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.javaLibraries!);
    checkUnnamed18(o.properties!);
    checkUnnamed19(o.pythonPackages!);
  }
  buildCounterGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime--;
}

core.int buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec = 0;
api.GoogleCloudDataplexV1EnvironmentSessionSpec
    buildGoogleCloudDataplexV1EnvironmentSessionSpec() {
  final o = api.GoogleCloudDataplexV1EnvironmentSessionSpec();
  buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec < 3) {
    o.enableFastStartup = true;
    o.maxIdleDuration = 'foo';
  }
  buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentSessionSpec(
    api.GoogleCloudDataplexV1EnvironmentSessionSpec o) {
  buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec < 3) {
    unittest.expect(o.enableFastStartup!, unittest.isTrue);
    unittest.expect(
      o.maxIdleDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1EnvironmentSessionSpec--;
}

core.int buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus = 0;
api.GoogleCloudDataplexV1EnvironmentSessionStatus
    buildGoogleCloudDataplexV1EnvironmentSessionStatus() {
  final o = api.GoogleCloudDataplexV1EnvironmentSessionStatus();
  buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus < 3) {
    o.active = true;
  }
  buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus--;
  return o;
}

void checkGoogleCloudDataplexV1EnvironmentSessionStatus(
    api.GoogleCloudDataplexV1EnvironmentSessionStatus o) {
  buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus++;
  if (buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus < 3) {
    unittest.expect(o.active!, unittest.isTrue);
  }
  buildCounterGoogleCloudDataplexV1EnvironmentSessionStatus--;
}

core.int buildCounterGoogleCloudDataplexV1Job = 0;
api.GoogleCloudDataplexV1Job buildGoogleCloudDataplexV1Job() {
  final o = api.GoogleCloudDataplexV1Job();
  buildCounterGoogleCloudDataplexV1Job++;
  if (buildCounterGoogleCloudDataplexV1Job < 3) {
    o.endTime = 'foo';
    o.message = 'foo';
    o.name = 'foo';
    o.retryCount = 42;
    o.service = 'foo';
    o.serviceJob = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Job--;
  return o;
}

void checkGoogleCloudDataplexV1Job(api.GoogleCloudDataplexV1Job o) {
  buildCounterGoogleCloudDataplexV1Job++;
  if (buildCounterGoogleCloudDataplexV1Job < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retryCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceJob!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Job--;
}

core.Map<core.String, core.String> buildUnnamed20() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed20(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Lake = 0;
api.GoogleCloudDataplexV1Lake buildGoogleCloudDataplexV1Lake() {
  final o = api.GoogleCloudDataplexV1Lake();
  buildCounterGoogleCloudDataplexV1Lake++;
  if (buildCounterGoogleCloudDataplexV1Lake < 3) {
    o.assetStatus = buildGoogleCloudDataplexV1AssetStatus();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed20();
    o.metastore = buildGoogleCloudDataplexV1LakeMetastore();
    o.metastoreStatus = buildGoogleCloudDataplexV1LakeMetastoreStatus();
    o.name = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Lake--;
  return o;
}

void checkGoogleCloudDataplexV1Lake(api.GoogleCloudDataplexV1Lake o) {
  buildCounterGoogleCloudDataplexV1Lake++;
  if (buildCounterGoogleCloudDataplexV1Lake < 3) {
    checkGoogleCloudDataplexV1AssetStatus(o.assetStatus!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.labels!);
    checkGoogleCloudDataplexV1LakeMetastore(o.metastore!);
    checkGoogleCloudDataplexV1LakeMetastoreStatus(o.metastoreStatus!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Lake--;
}

core.int buildCounterGoogleCloudDataplexV1LakeMetastore = 0;
api.GoogleCloudDataplexV1LakeMetastore
    buildGoogleCloudDataplexV1LakeMetastore() {
  final o = api.GoogleCloudDataplexV1LakeMetastore();
  buildCounterGoogleCloudDataplexV1LakeMetastore++;
  if (buildCounterGoogleCloudDataplexV1LakeMetastore < 3) {
    o.service = 'foo';
  }
  buildCounterGoogleCloudDataplexV1LakeMetastore--;
  return o;
}

void checkGoogleCloudDataplexV1LakeMetastore(
    api.GoogleCloudDataplexV1LakeMetastore o) {
  buildCounterGoogleCloudDataplexV1LakeMetastore++;
  if (buildCounterGoogleCloudDataplexV1LakeMetastore < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1LakeMetastore--;
}

core.int buildCounterGoogleCloudDataplexV1LakeMetastoreStatus = 0;
api.GoogleCloudDataplexV1LakeMetastoreStatus
    buildGoogleCloudDataplexV1LakeMetastoreStatus() {
  final o = api.GoogleCloudDataplexV1LakeMetastoreStatus();
  buildCounterGoogleCloudDataplexV1LakeMetastoreStatus++;
  if (buildCounterGoogleCloudDataplexV1LakeMetastoreStatus < 3) {
    o.endpoint = 'foo';
    o.message = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1LakeMetastoreStatus--;
  return o;
}

void checkGoogleCloudDataplexV1LakeMetastoreStatus(
    api.GoogleCloudDataplexV1LakeMetastoreStatus o) {
  buildCounterGoogleCloudDataplexV1LakeMetastoreStatus++;
  if (buildCounterGoogleCloudDataplexV1LakeMetastoreStatus < 3) {
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1LakeMetastoreStatus--;
}

core.List<api.GoogleCloudDataplexV1Action> buildUnnamed21() => [
      buildGoogleCloudDataplexV1Action(),
      buildGoogleCloudDataplexV1Action(),
    ];

void checkUnnamed21(core.List<api.GoogleCloudDataplexV1Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Action(o[0]);
  checkGoogleCloudDataplexV1Action(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListActionsResponse = 0;
api.GoogleCloudDataplexV1ListActionsResponse
    buildGoogleCloudDataplexV1ListActionsResponse() {
  final o = api.GoogleCloudDataplexV1ListActionsResponse();
  buildCounterGoogleCloudDataplexV1ListActionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListActionsResponse < 3) {
    o.actions = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListActionsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListActionsResponse(
    api.GoogleCloudDataplexV1ListActionsResponse o) {
  buildCounterGoogleCloudDataplexV1ListActionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListActionsResponse < 3) {
    checkUnnamed21(o.actions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListActionsResponse--;
}

core.List<api.GoogleCloudDataplexV1Asset> buildUnnamed22() => [
      buildGoogleCloudDataplexV1Asset(),
      buildGoogleCloudDataplexV1Asset(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudDataplexV1Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Asset(o[0]);
  checkGoogleCloudDataplexV1Asset(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListAssetsResponse = 0;
api.GoogleCloudDataplexV1ListAssetsResponse
    buildGoogleCloudDataplexV1ListAssetsResponse() {
  final o = api.GoogleCloudDataplexV1ListAssetsResponse();
  buildCounterGoogleCloudDataplexV1ListAssetsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListAssetsResponse < 3) {
    o.assets = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListAssetsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListAssetsResponse(
    api.GoogleCloudDataplexV1ListAssetsResponse o) {
  buildCounterGoogleCloudDataplexV1ListAssetsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListAssetsResponse < 3) {
    checkUnnamed22(o.assets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListAssetsResponse--;
}

core.List<api.GoogleCloudDataplexV1Content> buildUnnamed23() => [
      buildGoogleCloudDataplexV1Content(),
      buildGoogleCloudDataplexV1Content(),
    ];

void checkUnnamed23(core.List<api.GoogleCloudDataplexV1Content> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Content(o[0]);
  checkGoogleCloudDataplexV1Content(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListContentResponse = 0;
api.GoogleCloudDataplexV1ListContentResponse
    buildGoogleCloudDataplexV1ListContentResponse() {
  final o = api.GoogleCloudDataplexV1ListContentResponse();
  buildCounterGoogleCloudDataplexV1ListContentResponse++;
  if (buildCounterGoogleCloudDataplexV1ListContentResponse < 3) {
    o.content = buildUnnamed23();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListContentResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListContentResponse(
    api.GoogleCloudDataplexV1ListContentResponse o) {
  buildCounterGoogleCloudDataplexV1ListContentResponse++;
  if (buildCounterGoogleCloudDataplexV1ListContentResponse < 3) {
    checkUnnamed23(o.content!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListContentResponse--;
}

core.List<api.GoogleCloudDataplexV1DataScanJob> buildUnnamed24() => [
      buildGoogleCloudDataplexV1DataScanJob(),
      buildGoogleCloudDataplexV1DataScanJob(),
    ];

void checkUnnamed24(core.List<api.GoogleCloudDataplexV1DataScanJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataScanJob(o[0]);
  checkGoogleCloudDataplexV1DataScanJob(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse = 0;
api.GoogleCloudDataplexV1ListDataScanJobsResponse
    buildGoogleCloudDataplexV1ListDataScanJobsResponse() {
  final o = api.GoogleCloudDataplexV1ListDataScanJobsResponse();
  buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse < 3) {
    o.dataScanJobs = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListDataScanJobsResponse(
    api.GoogleCloudDataplexV1ListDataScanJobsResponse o) {
  buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse < 3) {
    checkUnnamed24(o.dataScanJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListDataScanJobsResponse--;
}

core.List<api.GoogleCloudDataplexV1DataScan> buildUnnamed25() => [
      buildGoogleCloudDataplexV1DataScan(),
      buildGoogleCloudDataplexV1DataScan(),
    ];

void checkUnnamed25(core.List<api.GoogleCloudDataplexV1DataScan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1DataScan(o[0]);
  checkGoogleCloudDataplexV1DataScan(o[1]);
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1ListDataScansResponse = 0;
api.GoogleCloudDataplexV1ListDataScansResponse
    buildGoogleCloudDataplexV1ListDataScansResponse() {
  final o = api.GoogleCloudDataplexV1ListDataScansResponse();
  buildCounterGoogleCloudDataplexV1ListDataScansResponse++;
  if (buildCounterGoogleCloudDataplexV1ListDataScansResponse < 3) {
    o.dataScans = buildUnnamed25();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed26();
  }
  buildCounterGoogleCloudDataplexV1ListDataScansResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListDataScansResponse(
    api.GoogleCloudDataplexV1ListDataScansResponse o) {
  buildCounterGoogleCloudDataplexV1ListDataScansResponse++;
  if (buildCounterGoogleCloudDataplexV1ListDataScansResponse < 3) {
    checkUnnamed25(o.dataScans!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.unreachable!);
  }
  buildCounterGoogleCloudDataplexV1ListDataScansResponse--;
}

core.List<api.GoogleCloudDataplexV1Entity> buildUnnamed27() => [
      buildGoogleCloudDataplexV1Entity(),
      buildGoogleCloudDataplexV1Entity(),
    ];

void checkUnnamed27(core.List<api.GoogleCloudDataplexV1Entity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Entity(o[0]);
  checkGoogleCloudDataplexV1Entity(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListEntitiesResponse = 0;
api.GoogleCloudDataplexV1ListEntitiesResponse
    buildGoogleCloudDataplexV1ListEntitiesResponse() {
  final o = api.GoogleCloudDataplexV1ListEntitiesResponse();
  buildCounterGoogleCloudDataplexV1ListEntitiesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListEntitiesResponse < 3) {
    o.entities = buildUnnamed27();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListEntitiesResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListEntitiesResponse(
    api.GoogleCloudDataplexV1ListEntitiesResponse o) {
  buildCounterGoogleCloudDataplexV1ListEntitiesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListEntitiesResponse < 3) {
    checkUnnamed27(o.entities!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListEntitiesResponse--;
}

core.List<api.GoogleCloudDataplexV1Environment> buildUnnamed28() => [
      buildGoogleCloudDataplexV1Environment(),
      buildGoogleCloudDataplexV1Environment(),
    ];

void checkUnnamed28(core.List<api.GoogleCloudDataplexV1Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Environment(o[0]);
  checkGoogleCloudDataplexV1Environment(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse = 0;
api.GoogleCloudDataplexV1ListEnvironmentsResponse
    buildGoogleCloudDataplexV1ListEnvironmentsResponse() {
  final o = api.GoogleCloudDataplexV1ListEnvironmentsResponse();
  buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed28();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListEnvironmentsResponse(
    api.GoogleCloudDataplexV1ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse < 3) {
    checkUnnamed28(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDataplexV1Job> buildUnnamed29() => [
      buildGoogleCloudDataplexV1Job(),
      buildGoogleCloudDataplexV1Job(),
    ];

void checkUnnamed29(core.List<api.GoogleCloudDataplexV1Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Job(o[0]);
  checkGoogleCloudDataplexV1Job(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListJobsResponse = 0;
api.GoogleCloudDataplexV1ListJobsResponse
    buildGoogleCloudDataplexV1ListJobsResponse() {
  final o = api.GoogleCloudDataplexV1ListJobsResponse();
  buildCounterGoogleCloudDataplexV1ListJobsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListJobsResponse < 3) {
    o.jobs = buildUnnamed29();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ListJobsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListJobsResponse(
    api.GoogleCloudDataplexV1ListJobsResponse o) {
  buildCounterGoogleCloudDataplexV1ListJobsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListJobsResponse < 3) {
    checkUnnamed29(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ListJobsResponse--;
}

core.List<api.GoogleCloudDataplexV1Lake> buildUnnamed30() => [
      buildGoogleCloudDataplexV1Lake(),
      buildGoogleCloudDataplexV1Lake(),
    ];

void checkUnnamed30(core.List<api.GoogleCloudDataplexV1Lake> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Lake(o[0]);
  checkGoogleCloudDataplexV1Lake(o[1]);
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1ListLakesResponse = 0;
api.GoogleCloudDataplexV1ListLakesResponse
    buildGoogleCloudDataplexV1ListLakesResponse() {
  final o = api.GoogleCloudDataplexV1ListLakesResponse();
  buildCounterGoogleCloudDataplexV1ListLakesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListLakesResponse < 3) {
    o.lakes = buildUnnamed30();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed31();
  }
  buildCounterGoogleCloudDataplexV1ListLakesResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListLakesResponse(
    api.GoogleCloudDataplexV1ListLakesResponse o) {
  buildCounterGoogleCloudDataplexV1ListLakesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListLakesResponse < 3) {
    checkUnnamed30(o.lakes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.unreachableLocations!);
  }
  buildCounterGoogleCloudDataplexV1ListLakesResponse--;
}

core.List<api.GoogleCloudDataplexV1Partition> buildUnnamed32() => [
      buildGoogleCloudDataplexV1Partition(),
      buildGoogleCloudDataplexV1Partition(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudDataplexV1Partition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Partition(o[0]);
  checkGoogleCloudDataplexV1Partition(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListPartitionsResponse = 0;
api.GoogleCloudDataplexV1ListPartitionsResponse
    buildGoogleCloudDataplexV1ListPartitionsResponse() {
  final o = api.GoogleCloudDataplexV1ListPartitionsResponse();
  buildCounterGoogleCloudDataplexV1ListPartitionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListPartitionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.partitions = buildUnnamed32();
  }
  buildCounterGoogleCloudDataplexV1ListPartitionsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListPartitionsResponse(
    api.GoogleCloudDataplexV1ListPartitionsResponse o) {
  buildCounterGoogleCloudDataplexV1ListPartitionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListPartitionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed32(o.partitions!);
  }
  buildCounterGoogleCloudDataplexV1ListPartitionsResponse--;
}

core.List<api.GoogleCloudDataplexV1Session> buildUnnamed33() => [
      buildGoogleCloudDataplexV1Session(),
      buildGoogleCloudDataplexV1Session(),
    ];

void checkUnnamed33(core.List<api.GoogleCloudDataplexV1Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Session(o[0]);
  checkGoogleCloudDataplexV1Session(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListSessionsResponse = 0;
api.GoogleCloudDataplexV1ListSessionsResponse
    buildGoogleCloudDataplexV1ListSessionsResponse() {
  final o = api.GoogleCloudDataplexV1ListSessionsResponse();
  buildCounterGoogleCloudDataplexV1ListSessionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListSessionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessions = buildUnnamed33();
  }
  buildCounterGoogleCloudDataplexV1ListSessionsResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListSessionsResponse(
    api.GoogleCloudDataplexV1ListSessionsResponse o) {
  buildCounterGoogleCloudDataplexV1ListSessionsResponse++;
  if (buildCounterGoogleCloudDataplexV1ListSessionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.sessions!);
  }
  buildCounterGoogleCloudDataplexV1ListSessionsResponse--;
}

core.List<api.GoogleCloudDataplexV1Task> buildUnnamed34() => [
      buildGoogleCloudDataplexV1Task(),
      buildGoogleCloudDataplexV1Task(),
    ];

void checkUnnamed34(core.List<api.GoogleCloudDataplexV1Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Task(o[0]);
  checkGoogleCloudDataplexV1Task(o[1]);
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1ListTasksResponse = 0;
api.GoogleCloudDataplexV1ListTasksResponse
    buildGoogleCloudDataplexV1ListTasksResponse() {
  final o = api.GoogleCloudDataplexV1ListTasksResponse();
  buildCounterGoogleCloudDataplexV1ListTasksResponse++;
  if (buildCounterGoogleCloudDataplexV1ListTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.tasks = buildUnnamed34();
    o.unreachableLocations = buildUnnamed35();
  }
  buildCounterGoogleCloudDataplexV1ListTasksResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListTasksResponse(
    api.GoogleCloudDataplexV1ListTasksResponse o) {
  buildCounterGoogleCloudDataplexV1ListTasksResponse++;
  if (buildCounterGoogleCloudDataplexV1ListTasksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.tasks!);
    checkUnnamed35(o.unreachableLocations!);
  }
  buildCounterGoogleCloudDataplexV1ListTasksResponse--;
}

core.List<api.GoogleCloudDataplexV1Zone> buildUnnamed36() => [
      buildGoogleCloudDataplexV1Zone(),
      buildGoogleCloudDataplexV1Zone(),
    ];

void checkUnnamed36(core.List<api.GoogleCloudDataplexV1Zone> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1Zone(o[0]);
  checkGoogleCloudDataplexV1Zone(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1ListZonesResponse = 0;
api.GoogleCloudDataplexV1ListZonesResponse
    buildGoogleCloudDataplexV1ListZonesResponse() {
  final o = api.GoogleCloudDataplexV1ListZonesResponse();
  buildCounterGoogleCloudDataplexV1ListZonesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListZonesResponse < 3) {
    o.nextPageToken = 'foo';
    o.zones = buildUnnamed36();
  }
  buildCounterGoogleCloudDataplexV1ListZonesResponse--;
  return o;
}

void checkGoogleCloudDataplexV1ListZonesResponse(
    api.GoogleCloudDataplexV1ListZonesResponse o) {
  buildCounterGoogleCloudDataplexV1ListZonesResponse++;
  if (buildCounterGoogleCloudDataplexV1ListZonesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.zones!);
  }
  buildCounterGoogleCloudDataplexV1ListZonesResponse--;
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Partition = 0;
api.GoogleCloudDataplexV1Partition buildGoogleCloudDataplexV1Partition() {
  final o = api.GoogleCloudDataplexV1Partition();
  buildCounterGoogleCloudDataplexV1Partition++;
  if (buildCounterGoogleCloudDataplexV1Partition < 3) {
    o.etag = 'foo';
    o.location = 'foo';
    o.name = 'foo';
    o.values = buildUnnamed37();
  }
  buildCounterGoogleCloudDataplexV1Partition--;
  return o;
}

void checkGoogleCloudDataplexV1Partition(api.GoogleCloudDataplexV1Partition o) {
  buildCounterGoogleCloudDataplexV1Partition++;
  if (buildCounterGoogleCloudDataplexV1Partition < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.values!);
  }
  buildCounterGoogleCloudDataplexV1Partition--;
}

core.int buildCounterGoogleCloudDataplexV1RunDataScanRequest = 0;
api.GoogleCloudDataplexV1RunDataScanRequest
    buildGoogleCloudDataplexV1RunDataScanRequest() {
  final o = api.GoogleCloudDataplexV1RunDataScanRequest();
  buildCounterGoogleCloudDataplexV1RunDataScanRequest++;
  if (buildCounterGoogleCloudDataplexV1RunDataScanRequest < 3) {}
  buildCounterGoogleCloudDataplexV1RunDataScanRequest--;
  return o;
}

void checkGoogleCloudDataplexV1RunDataScanRequest(
    api.GoogleCloudDataplexV1RunDataScanRequest o) {
  buildCounterGoogleCloudDataplexV1RunDataScanRequest++;
  if (buildCounterGoogleCloudDataplexV1RunDataScanRequest < 3) {}
  buildCounterGoogleCloudDataplexV1RunDataScanRequest--;
}

core.int buildCounterGoogleCloudDataplexV1RunDataScanResponse = 0;
api.GoogleCloudDataplexV1RunDataScanResponse
    buildGoogleCloudDataplexV1RunDataScanResponse() {
  final o = api.GoogleCloudDataplexV1RunDataScanResponse();
  buildCounterGoogleCloudDataplexV1RunDataScanResponse++;
  if (buildCounterGoogleCloudDataplexV1RunDataScanResponse < 3) {
    o.job = buildGoogleCloudDataplexV1DataScanJob();
  }
  buildCounterGoogleCloudDataplexV1RunDataScanResponse--;
  return o;
}

void checkGoogleCloudDataplexV1RunDataScanResponse(
    api.GoogleCloudDataplexV1RunDataScanResponse o) {
  buildCounterGoogleCloudDataplexV1RunDataScanResponse++;
  if (buildCounterGoogleCloudDataplexV1RunDataScanResponse < 3) {
    checkGoogleCloudDataplexV1DataScanJob(o.job!);
  }
  buildCounterGoogleCloudDataplexV1RunDataScanResponse--;
}

core.int buildCounterGoogleCloudDataplexV1ScannedData = 0;
api.GoogleCloudDataplexV1ScannedData buildGoogleCloudDataplexV1ScannedData() {
  final o = api.GoogleCloudDataplexV1ScannedData();
  buildCounterGoogleCloudDataplexV1ScannedData++;
  if (buildCounterGoogleCloudDataplexV1ScannedData < 3) {
    o.incrementalField =
        buildGoogleCloudDataplexV1ScannedDataIncrementalField();
  }
  buildCounterGoogleCloudDataplexV1ScannedData--;
  return o;
}

void checkGoogleCloudDataplexV1ScannedData(
    api.GoogleCloudDataplexV1ScannedData o) {
  buildCounterGoogleCloudDataplexV1ScannedData++;
  if (buildCounterGoogleCloudDataplexV1ScannedData < 3) {
    checkGoogleCloudDataplexV1ScannedDataIncrementalField(o.incrementalField!);
  }
  buildCounterGoogleCloudDataplexV1ScannedData--;
}

core.int buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField = 0;
api.GoogleCloudDataplexV1ScannedDataIncrementalField
    buildGoogleCloudDataplexV1ScannedDataIncrementalField() {
  final o = api.GoogleCloudDataplexV1ScannedDataIncrementalField();
  buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField++;
  if (buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField < 3) {
    o.end = 'foo';
    o.field = 'foo';
    o.start = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField--;
  return o;
}

void checkGoogleCloudDataplexV1ScannedDataIncrementalField(
    api.GoogleCloudDataplexV1ScannedDataIncrementalField o) {
  buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField++;
  if (buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField < 3) {
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.start!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ScannedDataIncrementalField--;
}

core.List<api.GoogleCloudDataplexV1SchemaSchemaField> buildUnnamed38() => [
      buildGoogleCloudDataplexV1SchemaSchemaField(),
      buildGoogleCloudDataplexV1SchemaSchemaField(),
    ];

void checkUnnamed38(core.List<api.GoogleCloudDataplexV1SchemaSchemaField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1SchemaSchemaField(o[0]);
  checkGoogleCloudDataplexV1SchemaSchemaField(o[1]);
}

core.List<api.GoogleCloudDataplexV1SchemaPartitionField> buildUnnamed39() => [
      buildGoogleCloudDataplexV1SchemaPartitionField(),
      buildGoogleCloudDataplexV1SchemaPartitionField(),
    ];

void checkUnnamed39(
    core.List<api.GoogleCloudDataplexV1SchemaPartitionField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1SchemaPartitionField(o[0]);
  checkGoogleCloudDataplexV1SchemaPartitionField(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1Schema = 0;
api.GoogleCloudDataplexV1Schema buildGoogleCloudDataplexV1Schema() {
  final o = api.GoogleCloudDataplexV1Schema();
  buildCounterGoogleCloudDataplexV1Schema++;
  if (buildCounterGoogleCloudDataplexV1Schema < 3) {
    o.fields = buildUnnamed38();
    o.partitionFields = buildUnnamed39();
    o.partitionStyle = 'foo';
    o.userManaged = true;
  }
  buildCounterGoogleCloudDataplexV1Schema--;
  return o;
}

void checkGoogleCloudDataplexV1Schema(api.GoogleCloudDataplexV1Schema o) {
  buildCounterGoogleCloudDataplexV1Schema++;
  if (buildCounterGoogleCloudDataplexV1Schema < 3) {
    checkUnnamed38(o.fields!);
    checkUnnamed39(o.partitionFields!);
    unittest.expect(
      o.partitionStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(o.userManaged!, unittest.isTrue);
  }
  buildCounterGoogleCloudDataplexV1Schema--;
}

core.int buildCounterGoogleCloudDataplexV1SchemaPartitionField = 0;
api.GoogleCloudDataplexV1SchemaPartitionField
    buildGoogleCloudDataplexV1SchemaPartitionField() {
  final o = api.GoogleCloudDataplexV1SchemaPartitionField();
  buildCounterGoogleCloudDataplexV1SchemaPartitionField++;
  if (buildCounterGoogleCloudDataplexV1SchemaPartitionField < 3) {
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDataplexV1SchemaPartitionField--;
  return o;
}

void checkGoogleCloudDataplexV1SchemaPartitionField(
    api.GoogleCloudDataplexV1SchemaPartitionField o) {
  buildCounterGoogleCloudDataplexV1SchemaPartitionField++;
  if (buildCounterGoogleCloudDataplexV1SchemaPartitionField < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1SchemaPartitionField--;
}

core.List<api.GoogleCloudDataplexV1SchemaSchemaField> buildUnnamed40() => [
      buildGoogleCloudDataplexV1SchemaSchemaField(),
      buildGoogleCloudDataplexV1SchemaSchemaField(),
    ];

void checkUnnamed40(core.List<api.GoogleCloudDataplexV1SchemaSchemaField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDataplexV1SchemaSchemaField(o[0]);
  checkGoogleCloudDataplexV1SchemaSchemaField(o[1]);
}

core.int buildCounterGoogleCloudDataplexV1SchemaSchemaField = 0;
api.GoogleCloudDataplexV1SchemaSchemaField
    buildGoogleCloudDataplexV1SchemaSchemaField() {
  final o = api.GoogleCloudDataplexV1SchemaSchemaField();
  buildCounterGoogleCloudDataplexV1SchemaSchemaField++;
  if (buildCounterGoogleCloudDataplexV1SchemaSchemaField < 3) {
    o.description = 'foo';
    o.fields = buildUnnamed40();
    o.mode = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDataplexV1SchemaSchemaField--;
  return o;
}

void checkGoogleCloudDataplexV1SchemaSchemaField(
    api.GoogleCloudDataplexV1SchemaSchemaField o) {
  buildCounterGoogleCloudDataplexV1SchemaSchemaField++;
  if (buildCounterGoogleCloudDataplexV1SchemaSchemaField < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.fields!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1SchemaSchemaField--;
}

core.int buildCounterGoogleCloudDataplexV1Session = 0;
api.GoogleCloudDataplexV1Session buildGoogleCloudDataplexV1Session() {
  final o = api.GoogleCloudDataplexV1Session();
  buildCounterGoogleCloudDataplexV1Session++;
  if (buildCounterGoogleCloudDataplexV1Session < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.userId = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Session--;
  return o;
}

void checkGoogleCloudDataplexV1Session(api.GoogleCloudDataplexV1Session o) {
  buildCounterGoogleCloudDataplexV1Session++;
  if (buildCounterGoogleCloudDataplexV1Session < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Session--;
}

core.int buildCounterGoogleCloudDataplexV1StorageFormat = 0;
api.GoogleCloudDataplexV1StorageFormat
    buildGoogleCloudDataplexV1StorageFormat() {
  final o = api.GoogleCloudDataplexV1StorageFormat();
  buildCounterGoogleCloudDataplexV1StorageFormat++;
  if (buildCounterGoogleCloudDataplexV1StorageFormat < 3) {
    o.compressionFormat = 'foo';
    o.csv = buildGoogleCloudDataplexV1StorageFormatCsvOptions();
    o.format = 'foo';
    o.iceberg = buildGoogleCloudDataplexV1StorageFormatIcebergOptions();
    o.json = buildGoogleCloudDataplexV1StorageFormatJsonOptions();
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudDataplexV1StorageFormat--;
  return o;
}

void checkGoogleCloudDataplexV1StorageFormat(
    api.GoogleCloudDataplexV1StorageFormat o) {
  buildCounterGoogleCloudDataplexV1StorageFormat++;
  if (buildCounterGoogleCloudDataplexV1StorageFormat < 3) {
    unittest.expect(
      o.compressionFormat!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1StorageFormatCsvOptions(o.csv!);
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1StorageFormatIcebergOptions(o.iceberg!);
    checkGoogleCloudDataplexV1StorageFormatJsonOptions(o.json!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1StorageFormat--;
}

core.int buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions = 0;
api.GoogleCloudDataplexV1StorageFormatCsvOptions
    buildGoogleCloudDataplexV1StorageFormatCsvOptions() {
  final o = api.GoogleCloudDataplexV1StorageFormatCsvOptions();
  buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions < 3) {
    o.delimiter = 'foo';
    o.encoding = 'foo';
    o.headerRows = 42;
    o.quote = 'foo';
  }
  buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions--;
  return o;
}

void checkGoogleCloudDataplexV1StorageFormatCsvOptions(
    api.GoogleCloudDataplexV1StorageFormatCsvOptions o) {
  buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions < 3) {
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headerRows!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quote!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1StorageFormatCsvOptions--;
}

core.int buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions = 0;
api.GoogleCloudDataplexV1StorageFormatIcebergOptions
    buildGoogleCloudDataplexV1StorageFormatIcebergOptions() {
  final o = api.GoogleCloudDataplexV1StorageFormatIcebergOptions();
  buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions < 3) {
    o.metadataLocation = 'foo';
  }
  buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions--;
  return o;
}

void checkGoogleCloudDataplexV1StorageFormatIcebergOptions(
    api.GoogleCloudDataplexV1StorageFormatIcebergOptions o) {
  buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions < 3) {
    unittest.expect(
      o.metadataLocation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1StorageFormatIcebergOptions--;
}

core.int buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions = 0;
api.GoogleCloudDataplexV1StorageFormatJsonOptions
    buildGoogleCloudDataplexV1StorageFormatJsonOptions() {
  final o = api.GoogleCloudDataplexV1StorageFormatJsonOptions();
  buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions < 3) {
    o.encoding = 'foo';
  }
  buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions--;
  return o;
}

void checkGoogleCloudDataplexV1StorageFormatJsonOptions(
    api.GoogleCloudDataplexV1StorageFormatJsonOptions o) {
  buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions < 3) {
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1StorageFormatJsonOptions--;
}

core.Map<core.String, core.String> buildUnnamed41() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed41(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Task = 0;
api.GoogleCloudDataplexV1Task buildGoogleCloudDataplexV1Task() {
  final o = api.GoogleCloudDataplexV1Task();
  buildCounterGoogleCloudDataplexV1Task++;
  if (buildCounterGoogleCloudDataplexV1Task < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.executionSpec = buildGoogleCloudDataplexV1TaskExecutionSpec();
    o.executionStatus = buildGoogleCloudDataplexV1TaskExecutionStatus();
    o.labels = buildUnnamed41();
    o.name = 'foo';
    o.notebook = buildGoogleCloudDataplexV1TaskNotebookTaskConfig();
    o.spark = buildGoogleCloudDataplexV1TaskSparkTaskConfig();
    o.state = 'foo';
    o.triggerSpec = buildGoogleCloudDataplexV1TaskTriggerSpec();
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Task--;
  return o;
}

void checkGoogleCloudDataplexV1Task(api.GoogleCloudDataplexV1Task o) {
  buildCounterGoogleCloudDataplexV1Task++;
  if (buildCounterGoogleCloudDataplexV1Task < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1TaskExecutionSpec(o.executionSpec!);
    checkGoogleCloudDataplexV1TaskExecutionStatus(o.executionStatus!);
    checkUnnamed41(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1TaskNotebookTaskConfig(o.notebook!);
    checkGoogleCloudDataplexV1TaskSparkTaskConfig(o.spark!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1TaskTriggerSpec(o.triggerSpec!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Task--;
}

core.Map<core.String, core.String> buildUnnamed42() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed42(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1TaskExecutionSpec = 0;
api.GoogleCloudDataplexV1TaskExecutionSpec
    buildGoogleCloudDataplexV1TaskExecutionSpec() {
  final o = api.GoogleCloudDataplexV1TaskExecutionSpec();
  buildCounterGoogleCloudDataplexV1TaskExecutionSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskExecutionSpec < 3) {
    o.args = buildUnnamed42();
    o.kmsKey = 'foo';
    o.maxJobExecutionLifetime = 'foo';
    o.project = 'foo';
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskExecutionSpec--;
  return o;
}

void checkGoogleCloudDataplexV1TaskExecutionSpec(
    api.GoogleCloudDataplexV1TaskExecutionSpec o) {
  buildCounterGoogleCloudDataplexV1TaskExecutionSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskExecutionSpec < 3) {
    checkUnnamed42(o.args!);
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxJobExecutionLifetime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskExecutionSpec--;
}

core.int buildCounterGoogleCloudDataplexV1TaskExecutionStatus = 0;
api.GoogleCloudDataplexV1TaskExecutionStatus
    buildGoogleCloudDataplexV1TaskExecutionStatus() {
  final o = api.GoogleCloudDataplexV1TaskExecutionStatus();
  buildCounterGoogleCloudDataplexV1TaskExecutionStatus++;
  if (buildCounterGoogleCloudDataplexV1TaskExecutionStatus < 3) {
    o.latestJob = buildGoogleCloudDataplexV1Job();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskExecutionStatus--;
  return o;
}

void checkGoogleCloudDataplexV1TaskExecutionStatus(
    api.GoogleCloudDataplexV1TaskExecutionStatus o) {
  buildCounterGoogleCloudDataplexV1TaskExecutionStatus++;
  if (buildCounterGoogleCloudDataplexV1TaskExecutionStatus < 3) {
    checkGoogleCloudDataplexV1Job(o.latestJob!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskExecutionStatus--;
}

core.int buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec = 0;
api.GoogleCloudDataplexV1TaskInfrastructureSpec
    buildGoogleCloudDataplexV1TaskInfrastructureSpec() {
  final o = api.GoogleCloudDataplexV1TaskInfrastructureSpec();
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec < 3) {
    o.batch =
        buildGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources();
    o.containerImage =
        buildGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime();
    o.vpcNetwork = buildGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork();
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec--;
  return o;
}

void checkGoogleCloudDataplexV1TaskInfrastructureSpec(
    api.GoogleCloudDataplexV1TaskInfrastructureSpec o) {
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec < 3) {
    checkGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources(
        o.batch!);
    checkGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime(
        o.containerImage!);
    checkGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork(o.vpcNetwork!);
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpec--;
}

core.int
    buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources =
    0;
api.GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
    buildGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources() {
  final o =
      api.GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources();
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources <
      3) {
    o.executorsCount = 42;
    o.maxExecutorsCount = 42;
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources--;
  return o;
}

void checkGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources(
    api.GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources o) {
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources <
      3) {
    unittest.expect(
      o.executorsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxExecutorsCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources--;
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed44() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed44(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int
    buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime =
    0;
api.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
    buildGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime() {
  final o =
      api.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime();
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime <
      3) {
    o.image = 'foo';
    o.javaJars = buildUnnamed43();
    o.properties = buildUnnamed44();
    o.pythonPackages = buildUnnamed45();
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime--;
  return o;
}

void checkGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime(
    api.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime o) {
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime <
      3) {
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.javaJars!);
    checkUnnamed44(o.properties!);
    checkUnnamed45(o.pythonPackages!);
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork = 0;
api.GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
    buildGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork() {
  final o = api.GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork();
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork < 3) {
    o.network = 'foo';
    o.networkTags = buildUnnamed46();
    o.subNetwork = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork--;
  return o;
}

void checkGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork(
    api.GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork o) {
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork++;
  if (buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.networkTags!);
    unittest.expect(
      o.subNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig = 0;
api.GoogleCloudDataplexV1TaskNotebookTaskConfig
    buildGoogleCloudDataplexV1TaskNotebookTaskConfig() {
  final o = api.GoogleCloudDataplexV1TaskNotebookTaskConfig();
  buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig++;
  if (buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig < 3) {
    o.archiveUris = buildUnnamed47();
    o.fileUris = buildUnnamed48();
    o.infrastructureSpec = buildGoogleCloudDataplexV1TaskInfrastructureSpec();
    o.notebook = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig--;
  return o;
}

void checkGoogleCloudDataplexV1TaskNotebookTaskConfig(
    api.GoogleCloudDataplexV1TaskNotebookTaskConfig o) {
  buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig++;
  if (buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig < 3) {
    checkUnnamed47(o.archiveUris!);
    checkUnnamed48(o.fileUris!);
    checkGoogleCloudDataplexV1TaskInfrastructureSpec(o.infrastructureSpec!);
    unittest.expect(
      o.notebook!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskNotebookTaskConfig--;
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig = 0;
api.GoogleCloudDataplexV1TaskSparkTaskConfig
    buildGoogleCloudDataplexV1TaskSparkTaskConfig() {
  final o = api.GoogleCloudDataplexV1TaskSparkTaskConfig();
  buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig++;
  if (buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig < 3) {
    o.archiveUris = buildUnnamed49();
    o.fileUris = buildUnnamed50();
    o.infrastructureSpec = buildGoogleCloudDataplexV1TaskInfrastructureSpec();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.pythonScriptFile = 'foo';
    o.sqlScript = 'foo';
    o.sqlScriptFile = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig--;
  return o;
}

void checkGoogleCloudDataplexV1TaskSparkTaskConfig(
    api.GoogleCloudDataplexV1TaskSparkTaskConfig o) {
  buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig++;
  if (buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig < 3) {
    checkUnnamed49(o.archiveUris!);
    checkUnnamed50(o.fileUris!);
    checkGoogleCloudDataplexV1TaskInfrastructureSpec(o.infrastructureSpec!);
    unittest.expect(
      o.mainClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mainJarFileUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pythonScriptFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sqlScript!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sqlScriptFile!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskSparkTaskConfig--;
}

core.int buildCounterGoogleCloudDataplexV1TaskTriggerSpec = 0;
api.GoogleCloudDataplexV1TaskTriggerSpec
    buildGoogleCloudDataplexV1TaskTriggerSpec() {
  final o = api.GoogleCloudDataplexV1TaskTriggerSpec();
  buildCounterGoogleCloudDataplexV1TaskTriggerSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskTriggerSpec < 3) {
    o.disabled = true;
    o.maxRetries = 42;
    o.schedule = 'foo';
    o.startTime = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TaskTriggerSpec--;
  return o;
}

void checkGoogleCloudDataplexV1TaskTriggerSpec(
    api.GoogleCloudDataplexV1TaskTriggerSpec o) {
  buildCounterGoogleCloudDataplexV1TaskTriggerSpec++;
  if (buildCounterGoogleCloudDataplexV1TaskTriggerSpec < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.maxRetries!,
      unittest.equals(42),
    );
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TaskTriggerSpec--;
}

core.int buildCounterGoogleCloudDataplexV1Trigger = 0;
api.GoogleCloudDataplexV1Trigger buildGoogleCloudDataplexV1Trigger() {
  final o = api.GoogleCloudDataplexV1Trigger();
  buildCounterGoogleCloudDataplexV1Trigger++;
  if (buildCounterGoogleCloudDataplexV1Trigger < 3) {
    o.onDemand = buildGoogleCloudDataplexV1TriggerOnDemand();
    o.schedule = buildGoogleCloudDataplexV1TriggerSchedule();
  }
  buildCounterGoogleCloudDataplexV1Trigger--;
  return o;
}

void checkGoogleCloudDataplexV1Trigger(api.GoogleCloudDataplexV1Trigger o) {
  buildCounterGoogleCloudDataplexV1Trigger++;
  if (buildCounterGoogleCloudDataplexV1Trigger < 3) {
    checkGoogleCloudDataplexV1TriggerOnDemand(o.onDemand!);
    checkGoogleCloudDataplexV1TriggerSchedule(o.schedule!);
  }
  buildCounterGoogleCloudDataplexV1Trigger--;
}

core.int buildCounterGoogleCloudDataplexV1TriggerOnDemand = 0;
api.GoogleCloudDataplexV1TriggerOnDemand
    buildGoogleCloudDataplexV1TriggerOnDemand() {
  final o = api.GoogleCloudDataplexV1TriggerOnDemand();
  buildCounterGoogleCloudDataplexV1TriggerOnDemand++;
  if (buildCounterGoogleCloudDataplexV1TriggerOnDemand < 3) {}
  buildCounterGoogleCloudDataplexV1TriggerOnDemand--;
  return o;
}

void checkGoogleCloudDataplexV1TriggerOnDemand(
    api.GoogleCloudDataplexV1TriggerOnDemand o) {
  buildCounterGoogleCloudDataplexV1TriggerOnDemand++;
  if (buildCounterGoogleCloudDataplexV1TriggerOnDemand < 3) {}
  buildCounterGoogleCloudDataplexV1TriggerOnDemand--;
}

core.int buildCounterGoogleCloudDataplexV1TriggerSchedule = 0;
api.GoogleCloudDataplexV1TriggerSchedule
    buildGoogleCloudDataplexV1TriggerSchedule() {
  final o = api.GoogleCloudDataplexV1TriggerSchedule();
  buildCounterGoogleCloudDataplexV1TriggerSchedule++;
  if (buildCounterGoogleCloudDataplexV1TriggerSchedule < 3) {
    o.cron = 'foo';
  }
  buildCounterGoogleCloudDataplexV1TriggerSchedule--;
  return o;
}

void checkGoogleCloudDataplexV1TriggerSchedule(
    api.GoogleCloudDataplexV1TriggerSchedule o) {
  buildCounterGoogleCloudDataplexV1TriggerSchedule++;
  if (buildCounterGoogleCloudDataplexV1TriggerSchedule < 3) {
    unittest.expect(
      o.cron!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1TriggerSchedule--;
}

core.Map<core.String, core.String> buildUnnamed51() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed51(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1Zone = 0;
api.GoogleCloudDataplexV1Zone buildGoogleCloudDataplexV1Zone() {
  final o = api.GoogleCloudDataplexV1Zone();
  buildCounterGoogleCloudDataplexV1Zone++;
  if (buildCounterGoogleCloudDataplexV1Zone < 3) {
    o.assetStatus = buildGoogleCloudDataplexV1AssetStatus();
    o.createTime = 'foo';
    o.description = 'foo';
    o.discoverySpec = buildGoogleCloudDataplexV1ZoneDiscoverySpec();
    o.displayName = 'foo';
    o.labels = buildUnnamed51();
    o.name = 'foo';
    o.resourceSpec = buildGoogleCloudDataplexV1ZoneResourceSpec();
    o.state = 'foo';
    o.type = 'foo';
    o.uid = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudDataplexV1Zone--;
  return o;
}

void checkGoogleCloudDataplexV1Zone(api.GoogleCloudDataplexV1Zone o) {
  buildCounterGoogleCloudDataplexV1Zone++;
  if (buildCounterGoogleCloudDataplexV1Zone < 3) {
    checkGoogleCloudDataplexV1AssetStatus(o.assetStatus!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ZoneDiscoverySpec(o.discoverySpec!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDataplexV1ZoneResourceSpec(o.resourceSpec!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1Zone--;
}

core.List<core.String> buildUnnamed52() => [
      'foo',
      'foo',
    ];

void checkUnnamed52(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec = 0;
api.GoogleCloudDataplexV1ZoneDiscoverySpec
    buildGoogleCloudDataplexV1ZoneDiscoverySpec() {
  final o = api.GoogleCloudDataplexV1ZoneDiscoverySpec();
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec < 3) {
    o.csvOptions = buildGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions();
    o.enabled = true;
    o.excludePatterns = buildUnnamed52();
    o.includePatterns = buildUnnamed53();
    o.jsonOptions = buildGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions();
    o.schedule = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec--;
  return o;
}

void checkGoogleCloudDataplexV1ZoneDiscoverySpec(
    api.GoogleCloudDataplexV1ZoneDiscoverySpec o) {
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec < 3) {
    checkGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions(o.csvOptions!);
    unittest.expect(o.enabled!, unittest.isTrue);
    checkUnnamed52(o.excludePatterns!);
    checkUnnamed53(o.includePatterns!);
    checkGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions(o.jsonOptions!);
    unittest.expect(
      o.schedule!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpec--;
}

core.int buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions = 0;
api.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
    buildGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions() {
  final o = api.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions();
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions < 3) {
    o.delimiter = 'foo';
    o.disableTypeInference = true;
    o.encoding = 'foo';
    o.headerRows = 42;
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions--;
  return o;
}

void checkGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions(
    api.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions o) {
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions < 3) {
    unittest.expect(
      o.delimiter!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableTypeInference!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headerRows!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions--;
}

core.int buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions = 0;
api.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
    buildGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions() {
  final o = api.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions();
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions < 3) {
    o.disableTypeInference = true;
    o.encoding = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions--;
  return o;
}

void checkGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions(
    api.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions o) {
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions++;
  if (buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions < 3) {
    unittest.expect(o.disableTypeInference!, unittest.isTrue);
    unittest.expect(
      o.encoding!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions--;
}

core.int buildCounterGoogleCloudDataplexV1ZoneResourceSpec = 0;
api.GoogleCloudDataplexV1ZoneResourceSpec
    buildGoogleCloudDataplexV1ZoneResourceSpec() {
  final o = api.GoogleCloudDataplexV1ZoneResourceSpec();
  buildCounterGoogleCloudDataplexV1ZoneResourceSpec++;
  if (buildCounterGoogleCloudDataplexV1ZoneResourceSpec < 3) {
    o.locationType = 'foo';
  }
  buildCounterGoogleCloudDataplexV1ZoneResourceSpec--;
  return o;
}

void checkGoogleCloudDataplexV1ZoneResourceSpec(
    api.GoogleCloudDataplexV1ZoneResourceSpec o) {
  buildCounterGoogleCloudDataplexV1ZoneResourceSpec++;
  if (buildCounterGoogleCloudDataplexV1ZoneResourceSpec < 3) {
    unittest.expect(
      o.locationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDataplexV1ZoneResourceSpec--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed54() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed54(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
    buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed54();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed54(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed55() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed55(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed56() => {
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

void checkUnnamed56(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed55();
    o.locationId = 'foo';
    o.metadata = buildUnnamed56();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleIamV1AuditLogConfig> buildUnnamed57() => [
      buildGoogleIamV1AuditLogConfig(),
      buildGoogleIamV1AuditLogConfig(),
    ];

void checkUnnamed57(core.List<api.GoogleIamV1AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditLogConfig(o[0]);
  checkGoogleIamV1AuditLogConfig(o[1]);
}

core.int buildCounterGoogleIamV1AuditConfig = 0;
api.GoogleIamV1AuditConfig buildGoogleIamV1AuditConfig() {
  final o = api.GoogleIamV1AuditConfig();
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed57();
    o.service = 'foo';
  }
  buildCounterGoogleIamV1AuditConfig--;
  return o;
}

void checkGoogleIamV1AuditConfig(api.GoogleIamV1AuditConfig o) {
  buildCounterGoogleIamV1AuditConfig++;
  if (buildCounterGoogleIamV1AuditConfig < 3) {
    checkUnnamed57(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditConfig--;
}

core.List<core.String> buildUnnamed58() => [
      'foo',
      'foo',
    ];

void checkUnnamed58(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1AuditLogConfig = 0;
api.GoogleIamV1AuditLogConfig buildGoogleIamV1AuditLogConfig() {
  final o = api.GoogleIamV1AuditLogConfig();
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed58();
    o.logType = 'foo';
  }
  buildCounterGoogleIamV1AuditLogConfig--;
  return o;
}

void checkGoogleIamV1AuditLogConfig(api.GoogleIamV1AuditLogConfig o) {
  buildCounterGoogleIamV1AuditLogConfig++;
  if (buildCounterGoogleIamV1AuditLogConfig < 3) {
    checkUnnamed58(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1AuditLogConfig--;
}

core.List<core.String> buildUnnamed59() => [
      'foo',
      'foo',
    ];

void checkUnnamed59(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1Binding = 0;
api.GoogleIamV1Binding buildGoogleIamV1Binding() {
  final o = api.GoogleIamV1Binding();
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    o.condition = buildGoogleTypeExpr();
    o.members = buildUnnamed59();
    o.role = 'foo';
  }
  buildCounterGoogleIamV1Binding--;
  return o;
}

void checkGoogleIamV1Binding(api.GoogleIamV1Binding o) {
  buildCounterGoogleIamV1Binding++;
  if (buildCounterGoogleIamV1Binding < 3) {
    checkGoogleTypeExpr(o.condition!);
    checkUnnamed59(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1Binding--;
}

core.List<api.GoogleIamV1AuditConfig> buildUnnamed60() => [
      buildGoogleIamV1AuditConfig(),
      buildGoogleIamV1AuditConfig(),
    ];

void checkUnnamed60(core.List<api.GoogleIamV1AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1AuditConfig(o[0]);
  checkGoogleIamV1AuditConfig(o[1]);
}

core.List<api.GoogleIamV1Binding> buildUnnamed61() => [
      buildGoogleIamV1Binding(),
      buildGoogleIamV1Binding(),
    ];

void checkUnnamed61(core.List<api.GoogleIamV1Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleIamV1Binding(o[0]);
  checkGoogleIamV1Binding(o[1]);
}

core.int buildCounterGoogleIamV1Policy = 0;
api.GoogleIamV1Policy buildGoogleIamV1Policy() {
  final o = api.GoogleIamV1Policy();
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    o.auditConfigs = buildUnnamed60();
    o.bindings = buildUnnamed61();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterGoogleIamV1Policy--;
  return o;
}

void checkGoogleIamV1Policy(api.GoogleIamV1Policy o) {
  buildCounterGoogleIamV1Policy++;
  if (buildCounterGoogleIamV1Policy < 3) {
    checkUnnamed60(o.auditConfigs!);
    checkUnnamed61(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleIamV1Policy--;
}

core.int buildCounterGoogleIamV1SetIamPolicyRequest = 0;
api.GoogleIamV1SetIamPolicyRequest buildGoogleIamV1SetIamPolicyRequest() {
  final o = api.GoogleIamV1SetIamPolicyRequest();
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    o.policy = buildGoogleIamV1Policy();
    o.updateMask = 'foo';
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
  return o;
}

void checkGoogleIamV1SetIamPolicyRequest(api.GoogleIamV1SetIamPolicyRequest o) {
  buildCounterGoogleIamV1SetIamPolicyRequest++;
  if (buildCounterGoogleIamV1SetIamPolicyRequest < 3) {
    checkGoogleIamV1Policy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamV1SetIamPolicyRequest--;
}

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1TestIamPermissionsRequest = 0;
api.GoogleIamV1TestIamPermissionsRequest
    buildGoogleIamV1TestIamPermissionsRequest() {
  final o = api.GoogleIamV1TestIamPermissionsRequest();
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed62();
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsRequest(
    api.GoogleIamV1TestIamPermissionsRequest o) {
  buildCounterGoogleIamV1TestIamPermissionsRequest++;
  if (buildCounterGoogleIamV1TestIamPermissionsRequest < 3) {
    checkUnnamed62(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed63() => [
      'foo',
      'foo',
    ];

void checkUnnamed63(core.List<core.String> o) {
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

core.int buildCounterGoogleIamV1TestIamPermissionsResponse = 0;
api.GoogleIamV1TestIamPermissionsResponse
    buildGoogleIamV1TestIamPermissionsResponse() {
  final o = api.GoogleIamV1TestIamPermissionsResponse();
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed63();
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
  return o;
}

void checkGoogleIamV1TestIamPermissionsResponse(
    api.GoogleIamV1TestIamPermissionsResponse o) {
  buildCounterGoogleIamV1TestIamPermissionsResponse++;
  if (buildCounterGoogleIamV1TestIamPermissionsResponse < 3) {
    checkUnnamed63(o.permissions!);
  }
  buildCounterGoogleIamV1TestIamPermissionsResponse--;
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
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed64() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed64(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed64();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed65() => {
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

void checkUnnamed65(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed66() => {
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

void checkUnnamed66(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed65();
    o.name = 'foo';
    o.response = buildUnnamed66();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed65(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed68() => [
      buildUnnamed67(),
      buildUnnamed67(),
    ];

void checkUnnamed68(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed67(o[0]);
  checkUnnamed67(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed68();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed68(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeExpr = 0;
api.GoogleTypeExpr buildGoogleTypeExpr() {
  final o = api.GoogleTypeExpr();
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleTypeExpr--;
  return o;
}

void checkGoogleTypeExpr(api.GoogleTypeExpr o) {
  buildCounterGoogleTypeExpr++;
  if (buildCounterGoogleTypeExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeExpr--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Action();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Action.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Action(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1ActionFailedSecurityPolicyApply', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionFailedSecurityPolicyApply();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1ActionFailedSecurityPolicyApply.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionFailedSecurityPolicyApply(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionIncompatibleDataSchema',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionIncompatibleDataSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionIncompatibleDataSchema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionIncompatibleDataSchema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionInvalidDataFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionInvalidDataFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionInvalidDataFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionInvalidDataFormat(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1ActionInvalidDataOrganization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionInvalidDataOrganization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1ActionInvalidDataOrganization.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionInvalidDataOrganization(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionInvalidDataPartition',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionInvalidDataPartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionInvalidDataPartition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionInvalidDataPartition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionMissingData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionMissingData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionMissingData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionMissingData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionMissingResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionMissingResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionMissingResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionMissingResource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ActionUnauthorizedResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ActionUnauthorizedResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ActionUnauthorizedResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ActionUnauthorizedResource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Asset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Asset.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Asset(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetDiscoverySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetDiscoverySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetDiscoverySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetDiscoverySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetDiscoverySpecCsvOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetDiscoverySpecJsonOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetDiscoveryStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetDiscoveryStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetDiscoveryStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetDiscoveryStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetDiscoveryStatusStats',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetDiscoveryStatusStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetDiscoveryStatusStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetDiscoveryStatusStats(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetResourceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetResourceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetResourceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetResourceSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetResourceStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetResourceStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetResourceStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetResourceStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetSecurityStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetSecurityStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetSecurityStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetSecurityStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1AssetStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1AssetStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1AssetStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1AssetStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1CancelJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1CancelJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1CancelJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1CancelJobRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Content', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Content();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Content.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Content(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ContentNotebook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ContentNotebook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ContentNotebook.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ContentNotebook(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ContentSqlScript', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ContentSqlScript();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ContentSqlScript.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ContentSqlScript(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataProfileResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataProfileResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataProfileResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataProfileResultProfile',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataProfileResultProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataProfileResultProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfile(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataProfileResultProfileField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileField.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileField(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataProfileSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataProfileSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataProfileSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataProfileSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataQualityDimensionResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityDimensionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityDimensionResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityDimensionResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataQualityResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataQualityRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRule(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleNonNullExpectation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRuleNonNullExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleNonNullExpectation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleNonNullExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleRangeExpectation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRuleRangeExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleRangeExpectation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleRangeExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleRegexExpectation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRuleRegexExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleRegexExpectation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleRegexExpectation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataQualityRuleResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRuleResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityRuleResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleRowConditionExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleSetExpectation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualityRuleSetExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleSetExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleTableConditionExpectation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualityRuleUniquenessExpectation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataQualitySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataQualitySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataQualitySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataQualitySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataScan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataScan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataScan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataScan(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataScanExecutionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataScanExecutionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataScanExecutionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataScanExecutionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataScanExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataScanExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataScanExecutionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataScanExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataScanJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataScanJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataScanJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataScanJob(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1DataSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1DataSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1DataSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1DataSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Entity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Entity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Entity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Entity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1EntityCompatibilityStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1EntityCompatibilityStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1EntityCompatibilityStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EntityCompatibilityStatus(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EntityCompatibilityStatusCompatibility(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Environment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Environment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1EnvironmentEndpoints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1EnvironmentEndpoints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1EnvironmentEndpoints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentEndpoints(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1EnvironmentInfrastructureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1EnvironmentInfrastructureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1EnvironmentInfrastructureSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentInfrastructureSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1EnvironmentSessionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1EnvironmentSessionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1EnvironmentSessionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentSessionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1EnvironmentSessionStatus',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1EnvironmentSessionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1EnvironmentSessionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1EnvironmentSessionStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Job();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Job.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Job(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Lake', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Lake();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Lake.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Lake(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1LakeMetastore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1LakeMetastore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1LakeMetastore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1LakeMetastore(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1LakeMetastoreStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1LakeMetastoreStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1LakeMetastoreStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1LakeMetastoreStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListActionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListActionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListActionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListActionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListContentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListContentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListContentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListDataScanJobsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListDataScanJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListDataScanJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListDataScanJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListDataScansResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListDataScansResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListDataScansResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListDataScansResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListEntitiesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListEntitiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListEntitiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListEntitiesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListEnvironmentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListLakesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListLakesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListLakesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListLakesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListPartitionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListPartitionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListPartitionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListPartitionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListSessionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListTasksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ListZonesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ListZonesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ListZonesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ListZonesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Partition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Partition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Partition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Partition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1RunDataScanRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1RunDataScanRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1RunDataScanRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1RunDataScanRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1RunDataScanResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1RunDataScanResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1RunDataScanResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1RunDataScanResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ScannedData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ScannedData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ScannedData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ScannedData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ScannedDataIncrementalField',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ScannedDataIncrementalField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ScannedDataIncrementalField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ScannedDataIncrementalField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Schema.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1SchemaPartitionField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1SchemaPartitionField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1SchemaPartitionField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1SchemaPartitionField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1SchemaSchemaField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1SchemaSchemaField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1SchemaSchemaField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1SchemaSchemaField(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Session', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Session();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Session.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Session(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1StorageFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1StorageFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1StorageFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1StorageFormat(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1StorageFormatCsvOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1StorageFormatCsvOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1StorageFormatCsvOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1StorageFormatCsvOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1StorageFormatIcebergOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1StorageFormatIcebergOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1StorageFormatIcebergOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1StorageFormatIcebergOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1StorageFormatJsonOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1StorageFormatJsonOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1StorageFormatJsonOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1StorageFormatJsonOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Task();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Task.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Task(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskExecutionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskExecutionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskExecutionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskExecutionSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskExecutionStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskInfrastructureSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskInfrastructureSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskInfrastructureSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskInfrastructureSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskNotebookTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskNotebookTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskNotebookTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskNotebookTaskConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskSparkTaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskSparkTaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskSparkTaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskSparkTaskConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TaskTriggerSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TaskTriggerSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TaskTriggerSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TaskTriggerSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Trigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Trigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Trigger(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TriggerOnDemand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TriggerOnDemand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TriggerOnDemand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TriggerOnDemand(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1TriggerSchedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1TriggerSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1TriggerSchedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1TriggerSchedule(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1Zone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1Zone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1Zone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1Zone(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ZoneDiscoverySpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ZoneDiscoverySpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ZoneDiscoverySpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ZoneDiscoverySpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDataplexV1ZoneResourceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDataplexV1ZoneResourceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDataplexV1ZoneResourceSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDataplexV1ZoneResourceSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1AuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1AuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Binding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Binding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Binding(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1Policy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1Policy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1Policy(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1SetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1SetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1TestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleIamV1TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamV1TestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamV1TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamV1TestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeExpr(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations;
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
        final resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataAttributeBindingsResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.dataAttributeBindings;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.dataAttributeBindings;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.dataAttributeBindings;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataScansResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_request = buildGoogleCloudDataplexV1DataScan();
      final arg_parent = 'foo';
      final arg_dataScanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1DataScan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1DataScan(obj);

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
          queryMap['dataScanId']!.first,
          unittest.equals(arg_dataScanId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          dataScanId: arg_dataScanId, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1DataScan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudDataplexV1DataScan(
          response as api.GoogleCloudDataplexV1DataScan);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListDataScansResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListDataScansResponse(
          response as api.GoogleCloudDataplexV1ListDataScansResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_request = buildGoogleCloudDataplexV1DataScan();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1DataScan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1DataScan(obj);

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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_request = buildGoogleCloudDataplexV1RunDataScanRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1RunDataScanRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1RunDataScanRequest(obj);

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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1RunDataScanResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1RunDataScanResponse(
          response as api.GoogleCloudDataplexV1RunDataScanResponse);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataScansJobsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans.jobs;
      final arg_name = 'foo';
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1DataScanJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudDataplexV1DataScanJob(
          response as api.GoogleCloudDataplexV1DataScanJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataScans.jobs;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListDataScanJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListDataScanJobsResponse(
          response as api.GoogleCloudDataplexV1ListDataScanJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataTaxonomiesResource', () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataTaxonomies;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataTaxonomies;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.dataTaxonomies;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDataTaxonomiesAttributesResource',
      () {
    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .dataTaxonomies
          .attributes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .dataTaxonomies
          .attributes;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .dataTaxonomies
          .attributes;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
      final arg_request = buildGoogleCloudDataplexV1Lake();
      final arg_parent = 'foo';
      final arg_lakeId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Lake.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Lake(obj);

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
          queryMap['lakeId']!.first,
          unittest.equals(arg_lakeId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          lakeId: arg_lakeId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Lake());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Lake(response as api.GoogleCloudDataplexV1Lake);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1ListLakesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListLakesResponse(
          response as api.GoogleCloudDataplexV1ListLakesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
      final arg_request = buildGoogleCloudDataplexV1Lake();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Lake.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Lake(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesActionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.actions;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListActionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListActionsResponse(
          response as api.GoogleCloudDataplexV1ListActionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesContentResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_request = buildGoogleCloudDataplexV1Content();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Content.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Content(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
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
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListContentResponse(
          response as api.GoogleCloudDataplexV1ListContentResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_request = buildGoogleCloudDataplexV1Content();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Content.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Content(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.content;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesContentitemsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_request = buildGoogleCloudDataplexV1Content();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Content.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Content(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
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
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListContentResponse(
          response as api.GoogleCloudDataplexV1ListContentResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_request = buildGoogleCloudDataplexV1Content();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Content.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Content(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Content());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1Content(
          response as api.GoogleCloudDataplexV1Content);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.contentitems;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
      final arg_request = buildGoogleCloudDataplexV1Environment();
      final arg_parent = 'foo';
      final arg_environmentId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Environment(obj);

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
          queryMap['environmentId']!.first,
          unittest.equals(arg_environmentId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          environmentId: arg_environmentId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Environment(
          response as api.GoogleCloudDataplexV1Environment);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListEnvironmentsResponse(
          response as api.GoogleCloudDataplexV1ListEnvironmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
      final arg_request = buildGoogleCloudDataplexV1Environment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Environment(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.environments;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesEnvironmentsSessionsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .environments
          .sessions;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListSessionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListSessionsResponse(
          response as api.GoogleCloudDataplexV1ListSessionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesTasksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
      final arg_request = buildGoogleCloudDataplexV1Task();
      final arg_parent = 'foo';
      final arg_taskId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Task.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Task(obj);

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
          queryMap['taskId']!.first,
          unittest.equals(arg_taskId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          taskId: arg_taskId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Task());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Task(response as api.GoogleCloudDataplexV1Task);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1ListTasksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListTasksResponse(
          response as api.GoogleCloudDataplexV1ListTasksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
      final arg_request = buildGoogleCloudDataplexV1Task();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Task.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Task(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.tasks;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesTasksJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.tasks.jobs;
      final arg_request = buildGoogleCloudDataplexV1CancelJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1CancelJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1CancelJobRequest(obj);

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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.tasks.jobs;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Job());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Job(response as api.GoogleCloudDataplexV1Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.tasks.jobs;
      final arg_parent = 'foo';
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1ListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListJobsResponse(
          response as api.GoogleCloudDataplexV1ListJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesZonesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
      final arg_request = buildGoogleCloudDataplexV1Zone();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_zoneId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Zone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Zone(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['zoneId']!.first,
          unittest.equals(arg_zoneId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          validateOnly: arg_validateOnly,
          zoneId: arg_zoneId,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Zone());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Zone(response as api.GoogleCloudDataplexV1Zone);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1ListZonesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListZonesResponse(
          response as api.GoogleCloudDataplexV1ListZonesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
      final arg_request = buildGoogleCloudDataplexV1Zone();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Zone.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Zone(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.lakes.zones;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesZonesActionsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.actions;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListActionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListActionsResponse(
          response as api.GoogleCloudDataplexV1ListActionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesZonesAssetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
      final arg_request = buildGoogleCloudDataplexV1Asset();
      final arg_parent = 'foo';
      final arg_assetId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Asset.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Asset(obj);

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
          queryMap['assetId']!.first,
          unittest.equals(arg_assetId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          assetId: arg_assetId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Asset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Asset(
          response as api.GoogleCloudDataplexV1Asset);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
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
        final resp =
            convert.json.encode(buildGoogleCloudDataplexV1ListAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListAssetsResponse(
          response as api.GoogleCloudDataplexV1ListAssetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
      final arg_request = buildGoogleCloudDataplexV1Asset();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Asset.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Asset(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
      final arg_request = buildGoogleIamV1SetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1SetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildGoogleIamV1Policy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1Policy(response as api.GoogleIamV1Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.assets;
      final arg_request = buildGoogleIamV1TestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleIamV1TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleIamV1TestIamPermissionsRequest(obj);

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
        final resp =
            convert.json.encode(buildGoogleIamV1TestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkGoogleIamV1TestIamPermissionsResponse(
          response as api.GoogleIamV1TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesZonesAssetsActionsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .zones
          .assets
          .actions;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListActionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListActionsResponse(
          response as api.GoogleCloudDataplexV1ListActionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsLakesZonesEntitiesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.entities;
      final arg_request = buildGoogleCloudDataplexV1Entity();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Entity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Entity(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Entity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Entity(
          response as api.GoogleCloudDataplexV1Entity);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.entities;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
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
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.entities;
      final arg_name = 'foo';
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Entity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Entity(
          response as api.GoogleCloudDataplexV1Entity);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.entities;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListEntitiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListEntitiesResponse(
          response as api.GoogleCloudDataplexV1ListEntitiesResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudDataplexApi(mock).projects.locations.lakes.zones.entities;
      final arg_request = buildGoogleCloudDataplexV1Entity();
      final arg_name = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Entity.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Entity(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Entity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_name,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Entity(
          response as api.GoogleCloudDataplexV1Entity);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsLakesZonesEntitiesPartitionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .zones
          .entities
          .partitions;
      final arg_request = buildGoogleCloudDataplexV1Partition();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDataplexV1Partition.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDataplexV1Partition(obj);

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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Partition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          validateOnly: arg_validateOnly, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Partition(
          response as api.GoogleCloudDataplexV1Partition);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .zones
          .entities
          .partitions;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
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
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .zones
          .entities
          .partitions;
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
        final resp = convert.json.encode(buildGoogleCloudDataplexV1Partition());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDataplexV1Partition(
          response as api.GoogleCloudDataplexV1Partition);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock)
          .projects
          .locations
          .lakes
          .zones
          .entities
          .partitions;
      final arg_parent = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudDataplexV1ListPartitionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDataplexV1ListPartitionsResponse(
          response as api.GoogleCloudDataplexV1ListPartitionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

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
      final res = api.CloudDataplexApi(mock).projects.locations.operations;
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
      final res = api.CloudDataplexApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudDataplexApi(mock).projects.locations.operations;
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
