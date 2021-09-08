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

import 'package:googleapis/cloudfunctions/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.AuditLogConfig> buildUnnamed2555() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed2555(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2555();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2555(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
}

core.List<core.String> buildUnnamed2556() => [
      'foo',
      'foo',
    ];

void checkUnnamed2556(core.List<core.String> o) {
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2556();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2556(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.List<core.String> buildUnnamed2557() => [
      'foo',
      'foo',
    ];

void checkUnnamed2557(core.List<core.String> o) {
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2557();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed2557(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCallFunctionRequest = 0;
api.CallFunctionRequest buildCallFunctionRequest() {
  final o = api.CallFunctionRequest();
  buildCounterCallFunctionRequest++;
  if (buildCounterCallFunctionRequest < 3) {
    o.data = 'foo';
  }
  buildCounterCallFunctionRequest--;
  return o;
}

void checkCallFunctionRequest(api.CallFunctionRequest o) {
  buildCounterCallFunctionRequest++;
  if (buildCounterCallFunctionRequest < 3) {
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
  }
  buildCounterCallFunctionRequest--;
}

core.int buildCounterCallFunctionResponse = 0;
api.CallFunctionResponse buildCallFunctionResponse() {
  final o = api.CallFunctionResponse();
  buildCounterCallFunctionResponse++;
  if (buildCounterCallFunctionResponse < 3) {
    o.error = 'foo';
    o.executionId = 'foo';
    o.result = 'foo';
  }
  buildCounterCallFunctionResponse--;
  return o;
}

void checkCallFunctionResponse(api.CallFunctionResponse o) {
  buildCounterCallFunctionResponse++;
  if (buildCounterCallFunctionResponse < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterCallFunctionResponse--;
}

core.Map<core.String, core.String> buildUnnamed2558() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2558(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2559() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2559(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed2560() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2560(core.Map<core.String, core.String> o) {
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

core.List<api.SecretEnvVar> buildUnnamed2561() => [
      buildSecretEnvVar(),
      buildSecretEnvVar(),
    ];

void checkUnnamed2561(core.List<api.SecretEnvVar> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretEnvVar(o[0]);
  checkSecretEnvVar(o[1]);
}

core.List<api.SecretVolume> buildUnnamed2562() => [
      buildSecretVolume(),
      buildSecretVolume(),
    ];

void checkUnnamed2562(core.List<api.SecretVolume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretVolume(o[0]);
  checkSecretVolume(o[1]);
}

core.int buildCounterCloudFunction = 0;
api.CloudFunction buildCloudFunction() {
  final o = api.CloudFunction();
  buildCounterCloudFunction++;
  if (buildCounterCloudFunction < 3) {
    o.availableMemoryMb = 42;
    o.buildEnvironmentVariables = buildUnnamed2558();
    o.buildId = 'foo';
    o.buildName = 'foo';
    o.buildWorkerPool = 'foo';
    o.description = 'foo';
    o.entryPoint = 'foo';
    o.environmentVariables = buildUnnamed2559();
    o.eventTrigger = buildEventTrigger();
    o.httpsTrigger = buildHttpsTrigger();
    o.ingressSettings = 'foo';
    o.labels = buildUnnamed2560();
    o.maxInstances = 42;
    o.minInstances = 42;
    o.name = 'foo';
    o.network = 'foo';
    o.runtime = 'foo';
    o.secretEnvironmentVariables = buildUnnamed2561();
    o.secretVolumes = buildUnnamed2562();
    o.serviceAccountEmail = 'foo';
    o.sourceArchiveUrl = 'foo';
    o.sourceRepository = buildSourceRepository();
    o.sourceToken = 'foo';
    o.sourceUploadUrl = 'foo';
    o.status = 'foo';
    o.timeout = 'foo';
    o.updateTime = 'foo';
    o.versionId = 'foo';
    o.vpcConnector = 'foo';
    o.vpcConnectorEgressSettings = 'foo';
  }
  buildCounterCloudFunction--;
  return o;
}

void checkCloudFunction(api.CloudFunction o) {
  buildCounterCloudFunction++;
  if (buildCounterCloudFunction < 3) {
    unittest.expect(
      o.availableMemoryMb!,
      unittest.equals(42),
    );
    checkUnnamed2558(o.buildEnvironmentVariables!);
    unittest.expect(
      o.buildId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildWorkerPool!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed2559(o.environmentVariables!);
    checkEventTrigger(o.eventTrigger!);
    checkHttpsTrigger(o.httpsTrigger!);
    unittest.expect(
      o.ingressSettings!,
      unittest.equals('foo'),
    );
    checkUnnamed2560(o.labels!);
    unittest.expect(
      o.maxInstances!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minInstances!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runtime!,
      unittest.equals('foo'),
    );
    checkUnnamed2561(o.secretEnvironmentVariables!);
    checkUnnamed2562(o.secretVolumes!);
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceArchiveUrl!,
      unittest.equals('foo'),
    );
    checkSourceRepository(o.sourceRepository!);
    unittest.expect(
      o.sourceToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUploadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcConnector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vpcConnectorEgressSettings!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudFunction--;
}

core.int buildCounterEventTrigger = 0;
api.EventTrigger buildEventTrigger() {
  final o = api.EventTrigger();
  buildCounterEventTrigger++;
  if (buildCounterEventTrigger < 3) {
    o.eventType = 'foo';
    o.failurePolicy = buildFailurePolicy();
    o.resource = 'foo';
    o.service = 'foo';
  }
  buildCounterEventTrigger--;
  return o;
}

void checkEventTrigger(api.EventTrigger o) {
  buildCounterEventTrigger++;
  if (buildCounterEventTrigger < 3) {
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    checkFailurePolicy(o.failurePolicy!);
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventTrigger--;
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
  buildCounterExpr--;
}

core.int buildCounterFailurePolicy = 0;
api.FailurePolicy buildFailurePolicy() {
  final o = api.FailurePolicy();
  buildCounterFailurePolicy++;
  if (buildCounterFailurePolicy < 3) {
    o.retry = buildRetry();
  }
  buildCounterFailurePolicy--;
  return o;
}

void checkFailurePolicy(api.FailurePolicy o) {
  buildCounterFailurePolicy++;
  if (buildCounterFailurePolicy < 3) {
    checkRetry(o.retry!);
  }
  buildCounterFailurePolicy--;
}

core.int buildCounterGenerateDownloadUrlRequest = 0;
api.GenerateDownloadUrlRequest buildGenerateDownloadUrlRequest() {
  final o = api.GenerateDownloadUrlRequest();
  buildCounterGenerateDownloadUrlRequest++;
  if (buildCounterGenerateDownloadUrlRequest < 3) {
    o.versionId = 'foo';
  }
  buildCounterGenerateDownloadUrlRequest--;
  return o;
}

void checkGenerateDownloadUrlRequest(api.GenerateDownloadUrlRequest o) {
  buildCounterGenerateDownloadUrlRequest++;
  if (buildCounterGenerateDownloadUrlRequest < 3) {
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateDownloadUrlRequest--;
}

core.int buildCounterGenerateDownloadUrlResponse = 0;
api.GenerateDownloadUrlResponse buildGenerateDownloadUrlResponse() {
  final o = api.GenerateDownloadUrlResponse();
  buildCounterGenerateDownloadUrlResponse++;
  if (buildCounterGenerateDownloadUrlResponse < 3) {
    o.downloadUrl = 'foo';
  }
  buildCounterGenerateDownloadUrlResponse--;
  return o;
}

void checkGenerateDownloadUrlResponse(api.GenerateDownloadUrlResponse o) {
  buildCounterGenerateDownloadUrlResponse++;
  if (buildCounterGenerateDownloadUrlResponse < 3) {
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateDownloadUrlResponse--;
}

core.int buildCounterGenerateUploadUrlRequest = 0;
api.GenerateUploadUrlRequest buildGenerateUploadUrlRequest() {
  final o = api.GenerateUploadUrlRequest();
  buildCounterGenerateUploadUrlRequest++;
  if (buildCounterGenerateUploadUrlRequest < 3) {}
  buildCounterGenerateUploadUrlRequest--;
  return o;
}

void checkGenerateUploadUrlRequest(api.GenerateUploadUrlRequest o) {
  buildCounterGenerateUploadUrlRequest++;
  if (buildCounterGenerateUploadUrlRequest < 3) {}
  buildCounterGenerateUploadUrlRequest--;
}

core.int buildCounterGenerateUploadUrlResponse = 0;
api.GenerateUploadUrlResponse buildGenerateUploadUrlResponse() {
  final o = api.GenerateUploadUrlResponse();
  buildCounterGenerateUploadUrlResponse++;
  if (buildCounterGenerateUploadUrlResponse < 3) {
    o.uploadUrl = 'foo';
  }
  buildCounterGenerateUploadUrlResponse--;
  return o;
}

void checkGenerateUploadUrlResponse(api.GenerateUploadUrlResponse o) {
  buildCounterGenerateUploadUrlResponse++;
  if (buildCounterGenerateUploadUrlResponse < 3) {
    unittest.expect(
      o.uploadUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenerateUploadUrlResponse--;
}

core.int buildCounterHttpsTrigger = 0;
api.HttpsTrigger buildHttpsTrigger() {
  final o = api.HttpsTrigger();
  buildCounterHttpsTrigger++;
  if (buildCounterHttpsTrigger < 3) {
    o.securityLevel = 'foo';
    o.url = 'foo';
  }
  buildCounterHttpsTrigger--;
  return o;
}

void checkHttpsTrigger(api.HttpsTrigger o) {
  buildCounterHttpsTrigger++;
  if (buildCounterHttpsTrigger < 3) {
    unittest.expect(
      o.securityLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpsTrigger--;
}

core.List<api.CloudFunction> buildUnnamed2563() => [
      buildCloudFunction(),
      buildCloudFunction(),
    ];

void checkUnnamed2563(core.List<api.CloudFunction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCloudFunction(o[0]);
  checkCloudFunction(o[1]);
}

core.List<core.String> buildUnnamed2564() => [
      'foo',
      'foo',
    ];

void checkUnnamed2564(core.List<core.String> o) {
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

core.int buildCounterListFunctionsResponse = 0;
api.ListFunctionsResponse buildListFunctionsResponse() {
  final o = api.ListFunctionsResponse();
  buildCounterListFunctionsResponse++;
  if (buildCounterListFunctionsResponse < 3) {
    o.functions = buildUnnamed2563();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed2564();
  }
  buildCounterListFunctionsResponse--;
  return o;
}

void checkListFunctionsResponse(api.ListFunctionsResponse o) {
  buildCounterListFunctionsResponse++;
  if (buildCounterListFunctionsResponse < 3) {
    checkUnnamed2563(o.functions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2564(o.unreachable!);
  }
  buildCounterListFunctionsResponse--;
}

core.List<api.Location> buildUnnamed2565() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed2565(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed2565();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed2565(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed2566() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed2566(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2566();
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
    checkUnnamed2566(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed2567() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2567(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed2568() => {
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

void checkUnnamed2568(core.Map<core.String, core.Object> o) {
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
    o.labels = buildUnnamed2567();
    o.locationId = 'foo';
    o.metadata = buildUnnamed2568();
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
    checkUnnamed2567(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed2568(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.Map<core.String, core.Object> buildUnnamed2569() => {
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

void checkUnnamed2569(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2570() => {
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

void checkUnnamed2570(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2569();
    o.name = 'foo';
    o.response = buildUnnamed2570();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed2569(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2570(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object> buildUnnamed2571() => {
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

void checkUnnamed2571(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperationMetadataV1 = 0;
api.OperationMetadataV1 buildOperationMetadataV1() {
  final o = api.OperationMetadataV1();
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    o.buildId = 'foo';
    o.buildName = 'foo';
    o.request = buildUnnamed2571();
    o.sourceToken = 'foo';
    o.target = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.versionId = 'foo';
  }
  buildCounterOperationMetadataV1--;
  return o;
}

void checkOperationMetadataV1(api.OperationMetadataV1 o) {
  buildCounterOperationMetadataV1++;
  if (buildCounterOperationMetadataV1 < 3) {
    unittest.expect(
      o.buildId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildName!,
      unittest.equals('foo'),
    );
    checkUnnamed2571(o.request!);
    unittest.expect(
      o.sourceToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
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
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationMetadataV1--;
}

core.List<api.AuditConfig> buildUnnamed2572() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed2572(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed2573() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed2573(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2572();
    o.bindings = buildUnnamed2573();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2572(o.auditConfigs!);
    checkUnnamed2573(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterRetry = 0;
api.Retry buildRetry() {
  final o = api.Retry();
  buildCounterRetry++;
  if (buildCounterRetry < 3) {}
  buildCounterRetry--;
  return o;
}

void checkRetry(api.Retry o) {
  buildCounterRetry++;
  if (buildCounterRetry < 3) {}
  buildCounterRetry--;
}

core.int buildCounterSecretEnvVar = 0;
api.SecretEnvVar buildSecretEnvVar() {
  final o = api.SecretEnvVar();
  buildCounterSecretEnvVar++;
  if (buildCounterSecretEnvVar < 3) {
    o.key = 'foo';
    o.projectId = 'foo';
    o.secret = 'foo';
    o.version = 'foo';
  }
  buildCounterSecretEnvVar--;
  return o;
}

void checkSecretEnvVar(api.SecretEnvVar o) {
  buildCounterSecretEnvVar++;
  if (buildCounterSecretEnvVar < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretEnvVar--;
}

core.int buildCounterSecretVersion = 0;
api.SecretVersion buildSecretVersion() {
  final o = api.SecretVersion();
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    o.path = 'foo';
    o.version = 'foo';
  }
  buildCounterSecretVersion--;
  return o;
}

void checkSecretVersion(api.SecretVersion o) {
  buildCounterSecretVersion++;
  if (buildCounterSecretVersion < 3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecretVersion--;
}

core.List<api.SecretVersion> buildUnnamed2574() => [
      buildSecretVersion(),
      buildSecretVersion(),
    ];

void checkUnnamed2574(core.List<api.SecretVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecretVersion(o[0]);
  checkSecretVersion(o[1]);
}

core.int buildCounterSecretVolume = 0;
api.SecretVolume buildSecretVolume() {
  final o = api.SecretVolume();
  buildCounterSecretVolume++;
  if (buildCounterSecretVolume < 3) {
    o.mountPath = 'foo';
    o.projectId = 'foo';
    o.secret = 'foo';
    o.versions = buildUnnamed2574();
  }
  buildCounterSecretVolume--;
  return o;
}

void checkSecretVolume(api.SecretVolume o) {
  buildCounterSecretVolume++;
  if (buildCounterSecretVolume < 3) {
    unittest.expect(
      o.mountPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secret!,
      unittest.equals('foo'),
    );
    checkUnnamed2574(o.versions!);
  }
  buildCounterSecretVolume--;
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
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSourceRepository = 0;
api.SourceRepository buildSourceRepository() {
  final o = api.SourceRepository();
  buildCounterSourceRepository++;
  if (buildCounterSourceRepository < 3) {
    o.deployedUrl = 'foo';
    o.url = 'foo';
  }
  buildCounterSourceRepository--;
  return o;
}

void checkSourceRepository(api.SourceRepository o) {
  buildCounterSourceRepository++;
  if (buildCounterSourceRepository < 3) {
    unittest.expect(
      o.deployedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceRepository--;
}

core.Map<core.String, core.Object> buildUnnamed2575() => {
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

void checkUnnamed2575(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2576() => [
      buildUnnamed2575(),
      buildUnnamed2575(),
    ];

void checkUnnamed2576(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2575(o[0]);
  checkUnnamed2575(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2576();
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
    checkUnnamed2576(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<core.String> buildUnnamed2577() => [
      'foo',
      'foo',
    ];

void checkUnnamed2577(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2577();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2577(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed2578() => [
      'foo',
      'foo',
    ];

void checkUnnamed2578(core.List<core.String> o) {
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2578();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2578(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

void main() {
  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CallFunctionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallFunctionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CallFunctionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCallFunctionRequest(od);
    });
  });

  unittest.group('obj-schema-CallFunctionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallFunctionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CallFunctionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCallFunctionResponse(od);
    });
  });

  unittest.group('obj-schema-CloudFunction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudFunction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudFunction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudFunction(od);
    });
  });

  unittest.group('obj-schema-EventTrigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTrigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEventTrigger(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FailurePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailurePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailurePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailurePolicy(od);
    });
  });

  unittest.group('obj-schema-GenerateDownloadUrlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateDownloadUrlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateDownloadUrlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateDownloadUrlRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateDownloadUrlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateDownloadUrlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateDownloadUrlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateDownloadUrlResponse(od);
    });
  });

  unittest.group('obj-schema-GenerateUploadUrlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateUploadUrlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateUploadUrlRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateUploadUrlRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateUploadUrlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateUploadUrlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateUploadUrlResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenerateUploadUrlResponse(od);
    });
  });

  unittest.group('obj-schema-HttpsTrigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpsTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpsTrigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpsTrigger(od);
    });
  });

  unittest.group('obj-schema-ListFunctionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFunctionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFunctionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFunctionsResponse(od);
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

  unittest.group('obj-schema-OperationMetadataV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationMetadataV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationMetadataV1.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationMetadataV1(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-Retry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Retry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRetry(od);
    });
  });

  unittest.group('obj-schema-SecretEnvVar', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretEnvVar();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretEnvVar.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretEnvVar(od);
    });
  });

  unittest.group('obj-schema-SecretVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretVersion(od);
    });
  });

  unittest.group('obj-schema-SecretVolume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecretVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecretVolume.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecretVolume(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SourceRepository', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceRepository();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceRepository.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceRepository(od);
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

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).operations;
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
      final res = api.CloudFunctionsApi(mock).operations;
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/operations'),
        );
        pathOffset += 13;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.list(
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations;
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

  unittest.group('resource-ProjectsLocationsFunctionsResource', () {
    unittest.test('method--call', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildCallFunctionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CallFunctionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCallFunctionRequest(obj);

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
        final resp = convert.json.encode(buildCallFunctionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.call(arg_request, arg_name, $fields: arg_$fields);
      checkCallFunctionResponse(response as api.CallFunctionResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildCloudFunction();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CloudFunction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCloudFunction(obj);

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
      final response =
          await res.create(arg_request, arg_location, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--generateDownloadUrl', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildGenerateDownloadUrlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateDownloadUrlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateDownloadUrlRequest(obj);

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
        final resp = convert.json.encode(buildGenerateDownloadUrlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateDownloadUrl(arg_request, arg_name,
          $fields: arg_$fields);
      checkGenerateDownloadUrlResponse(
          response as api.GenerateDownloadUrlResponse);
    });

    unittest.test('method--generateUploadUrl', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildGenerateUploadUrlRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GenerateUploadUrlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGenerateUploadUrlRequest(obj);

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
        final resp = convert.json.encode(buildGenerateUploadUrlResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.generateUploadUrl(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGenerateUploadUrlResponse(response as api.GenerateUploadUrlResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
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
        final resp = convert.json.encode(buildCloudFunction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCloudFunction(response as api.CloudFunction);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
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
        final resp = convert.json.encode(buildListFunctionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFunctionsResponse(response as api.ListFunctionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildCloudFunction();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CloudFunction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCloudFunction(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.CloudFunctionsApi(mock).projects.locations.functions;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

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
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
