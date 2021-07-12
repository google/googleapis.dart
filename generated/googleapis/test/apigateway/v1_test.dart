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

import 'package:googleapis/apigateway/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed5842() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5842(core.Map<core.String, core.String> o) {
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

core.int buildCounterApigatewayApi = 0;
api.ApigatewayApi buildApigatewayApi() {
  final o = api.ApigatewayApi();
  buildCounterApigatewayApi++;
  if (buildCounterApigatewayApi < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed5842();
    o.managedService = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayApi--;
  return o;
}

void checkApigatewayApi(api.ApigatewayApi o) {
  buildCounterApigatewayApi++;
  if (buildCounterApigatewayApi < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed5842(o.labels!);
    unittest.expect(
      o.managedService!,
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
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayApi--;
}

core.List<api.ApigatewayApiConfigGrpcServiceDefinition> buildUnnamed5843() {
  final o = <api.ApigatewayApiConfigGrpcServiceDefinition>[];
  o.add(buildApigatewayApiConfigGrpcServiceDefinition());
  o.add(buildApigatewayApiConfigGrpcServiceDefinition());
  return o;
}

void checkUnnamed5843(
    core.List<api.ApigatewayApiConfigGrpcServiceDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigGrpcServiceDefinition(o[0]);
  checkApigatewayApiConfigGrpcServiceDefinition(o[1]);
}

core.Map<core.String, core.String> buildUnnamed5844() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5844(core.Map<core.String, core.String> o) {
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

core.List<api.ApigatewayApiConfigFile> buildUnnamed5845() {
  final o = <api.ApigatewayApiConfigFile>[];
  o.add(buildApigatewayApiConfigFile());
  o.add(buildApigatewayApiConfigFile());
  return o;
}

void checkUnnamed5845(core.List<api.ApigatewayApiConfigFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigFile(o[0]);
  checkApigatewayApiConfigFile(o[1]);
}

core.List<api.ApigatewayApiConfigOpenApiDocument> buildUnnamed5846() {
  final o = <api.ApigatewayApiConfigOpenApiDocument>[];
  o.add(buildApigatewayApiConfigOpenApiDocument());
  o.add(buildApigatewayApiConfigOpenApiDocument());
  return o;
}

void checkUnnamed5846(core.List<api.ApigatewayApiConfigOpenApiDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigOpenApiDocument(o[0]);
  checkApigatewayApiConfigOpenApiDocument(o[1]);
}

core.int buildCounterApigatewayApiConfig = 0;
api.ApigatewayApiConfig buildApigatewayApiConfig() {
  final o = api.ApigatewayApiConfig();
  buildCounterApigatewayApiConfig++;
  if (buildCounterApigatewayApiConfig < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.gatewayServiceAccount = 'foo';
    o.grpcServices = buildUnnamed5843();
    o.labels = buildUnnamed5844();
    o.managedServiceConfigs = buildUnnamed5845();
    o.name = 'foo';
    o.openapiDocuments = buildUnnamed5846();
    o.serviceConfigId = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayApiConfig--;
  return o;
}

void checkApigatewayApiConfig(api.ApigatewayApiConfig o) {
  buildCounterApigatewayApiConfig++;
  if (buildCounterApigatewayApiConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gatewayServiceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed5843(o.grpcServices!);
    checkUnnamed5844(o.labels!);
    checkUnnamed5845(o.managedServiceConfigs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5846(o.openapiDocuments!);
    unittest.expect(
      o.serviceConfigId!,
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
  buildCounterApigatewayApiConfig--;
}

core.int buildCounterApigatewayApiConfigFile = 0;
api.ApigatewayApiConfigFile buildApigatewayApiConfigFile() {
  final o = api.ApigatewayApiConfigFile();
  buildCounterApigatewayApiConfigFile++;
  if (buildCounterApigatewayApiConfigFile < 3) {
    o.contents = 'foo';
    o.path = 'foo';
  }
  buildCounterApigatewayApiConfigFile--;
  return o;
}

void checkApigatewayApiConfigFile(api.ApigatewayApiConfigFile o) {
  buildCounterApigatewayApiConfigFile++;
  if (buildCounterApigatewayApiConfigFile < 3) {
    unittest.expect(
      o.contents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayApiConfigFile--;
}

core.List<api.ApigatewayApiConfigFile> buildUnnamed5847() {
  final o = <api.ApigatewayApiConfigFile>[];
  o.add(buildApigatewayApiConfigFile());
  o.add(buildApigatewayApiConfigFile());
  return o;
}

void checkUnnamed5847(core.List<api.ApigatewayApiConfigFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfigFile(o[0]);
  checkApigatewayApiConfigFile(o[1]);
}

core.int buildCounterApigatewayApiConfigGrpcServiceDefinition = 0;
api.ApigatewayApiConfigGrpcServiceDefinition
    buildApigatewayApiConfigGrpcServiceDefinition() {
  final o = api.ApigatewayApiConfigGrpcServiceDefinition();
  buildCounterApigatewayApiConfigGrpcServiceDefinition++;
  if (buildCounterApigatewayApiConfigGrpcServiceDefinition < 3) {
    o.fileDescriptorSet = buildApigatewayApiConfigFile();
    o.source = buildUnnamed5847();
  }
  buildCounterApigatewayApiConfigGrpcServiceDefinition--;
  return o;
}

void checkApigatewayApiConfigGrpcServiceDefinition(
    api.ApigatewayApiConfigGrpcServiceDefinition o) {
  buildCounterApigatewayApiConfigGrpcServiceDefinition++;
  if (buildCounterApigatewayApiConfigGrpcServiceDefinition < 3) {
    checkApigatewayApiConfigFile(o.fileDescriptorSet!);
    checkUnnamed5847(o.source!);
  }
  buildCounterApigatewayApiConfigGrpcServiceDefinition--;
}

core.int buildCounterApigatewayApiConfigOpenApiDocument = 0;
api.ApigatewayApiConfigOpenApiDocument
    buildApigatewayApiConfigOpenApiDocument() {
  final o = api.ApigatewayApiConfigOpenApiDocument();
  buildCounterApigatewayApiConfigOpenApiDocument++;
  if (buildCounterApigatewayApiConfigOpenApiDocument < 3) {
    o.document = buildApigatewayApiConfigFile();
  }
  buildCounterApigatewayApiConfigOpenApiDocument--;
  return o;
}

void checkApigatewayApiConfigOpenApiDocument(
    api.ApigatewayApiConfigOpenApiDocument o) {
  buildCounterApigatewayApiConfigOpenApiDocument++;
  if (buildCounterApigatewayApiConfigOpenApiDocument < 3) {
    checkApigatewayApiConfigFile(o.document!);
  }
  buildCounterApigatewayApiConfigOpenApiDocument--;
}

core.List<api.ApigatewayAuditLogConfig> buildUnnamed5848() {
  final o = <api.ApigatewayAuditLogConfig>[];
  o.add(buildApigatewayAuditLogConfig());
  o.add(buildApigatewayAuditLogConfig());
  return o;
}

void checkUnnamed5848(core.List<api.ApigatewayAuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayAuditLogConfig(o[0]);
  checkApigatewayAuditLogConfig(o[1]);
}

core.int buildCounterApigatewayAuditConfig = 0;
api.ApigatewayAuditConfig buildApigatewayAuditConfig() {
  final o = api.ApigatewayAuditConfig();
  buildCounterApigatewayAuditConfig++;
  if (buildCounterApigatewayAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed5848();
    o.service = 'foo';
  }
  buildCounterApigatewayAuditConfig--;
  return o;
}

void checkApigatewayAuditConfig(api.ApigatewayAuditConfig o) {
  buildCounterApigatewayAuditConfig++;
  if (buildCounterApigatewayAuditConfig < 3) {
    checkUnnamed5848(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayAuditConfig--;
}

core.List<core.String> buildUnnamed5849() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5849(core.List<core.String> o) {
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

core.int buildCounterApigatewayAuditLogConfig = 0;
api.ApigatewayAuditLogConfig buildApigatewayAuditLogConfig() {
  final o = api.ApigatewayAuditLogConfig();
  buildCounterApigatewayAuditLogConfig++;
  if (buildCounterApigatewayAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed5849();
    o.logType = 'foo';
  }
  buildCounterApigatewayAuditLogConfig--;
  return o;
}

void checkApigatewayAuditLogConfig(api.ApigatewayAuditLogConfig o) {
  buildCounterApigatewayAuditLogConfig++;
  if (buildCounterApigatewayAuditLogConfig < 3) {
    checkUnnamed5849(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayAuditLogConfig--;
}

core.List<core.String> buildUnnamed5850() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5850(core.List<core.String> o) {
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

core.int buildCounterApigatewayBinding = 0;
api.ApigatewayBinding buildApigatewayBinding() {
  final o = api.ApigatewayBinding();
  buildCounterApigatewayBinding++;
  if (buildCounterApigatewayBinding < 3) {
    o.condition = buildApigatewayExpr();
    o.members = buildUnnamed5850();
    o.role = 'foo';
  }
  buildCounterApigatewayBinding--;
  return o;
}

void checkApigatewayBinding(api.ApigatewayBinding o) {
  buildCounterApigatewayBinding++;
  if (buildCounterApigatewayBinding < 3) {
    checkApigatewayExpr(o.condition!);
    checkUnnamed5850(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayBinding--;
}

core.int buildCounterApigatewayCancelOperationRequest = 0;
api.ApigatewayCancelOperationRequest buildApigatewayCancelOperationRequest() {
  final o = api.ApigatewayCancelOperationRequest();
  buildCounterApigatewayCancelOperationRequest++;
  if (buildCounterApigatewayCancelOperationRequest < 3) {}
  buildCounterApigatewayCancelOperationRequest--;
  return o;
}

void checkApigatewayCancelOperationRequest(
    api.ApigatewayCancelOperationRequest o) {
  buildCounterApigatewayCancelOperationRequest++;
  if (buildCounterApigatewayCancelOperationRequest < 3) {}
  buildCounterApigatewayCancelOperationRequest--;
}

core.int buildCounterApigatewayExpr = 0;
api.ApigatewayExpr buildApigatewayExpr() {
  final o = api.ApigatewayExpr();
  buildCounterApigatewayExpr++;
  if (buildCounterApigatewayExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterApigatewayExpr--;
  return o;
}

void checkApigatewayExpr(api.ApigatewayExpr o) {
  buildCounterApigatewayExpr++;
  if (buildCounterApigatewayExpr < 3) {
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
  buildCounterApigatewayExpr--;
}

core.Map<core.String, core.String> buildUnnamed5851() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5851(core.Map<core.String, core.String> o) {
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

core.int buildCounterApigatewayGateway = 0;
api.ApigatewayGateway buildApigatewayGateway() {
  final o = api.ApigatewayGateway();
  buildCounterApigatewayGateway++;
  if (buildCounterApigatewayGateway < 3) {
    o.apiConfig = 'foo';
    o.createTime = 'foo';
    o.defaultHostname = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed5851();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApigatewayGateway--;
  return o;
}

void checkApigatewayGateway(api.ApigatewayGateway o) {
  buildCounterApigatewayGateway++;
  if (buildCounterApigatewayGateway < 3) {
    unittest.expect(
      o.apiConfig!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultHostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed5851(o.labels!);
    unittest.expect(
      o.name!,
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
  buildCounterApigatewayGateway--;
}

core.List<api.ApigatewayApiConfig> buildUnnamed5852() {
  final o = <api.ApigatewayApiConfig>[];
  o.add(buildApigatewayApiConfig());
  o.add(buildApigatewayApiConfig());
  return o;
}

void checkUnnamed5852(core.List<api.ApigatewayApiConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApiConfig(o[0]);
  checkApigatewayApiConfig(o[1]);
}

core.List<core.String> buildUnnamed5853() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5853(core.List<core.String> o) {
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

core.int buildCounterApigatewayListApiConfigsResponse = 0;
api.ApigatewayListApiConfigsResponse buildApigatewayListApiConfigsResponse() {
  final o = api.ApigatewayListApiConfigsResponse();
  buildCounterApigatewayListApiConfigsResponse++;
  if (buildCounterApigatewayListApiConfigsResponse < 3) {
    o.apiConfigs = buildUnnamed5852();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5853();
  }
  buildCounterApigatewayListApiConfigsResponse--;
  return o;
}

void checkApigatewayListApiConfigsResponse(
    api.ApigatewayListApiConfigsResponse o) {
  buildCounterApigatewayListApiConfigsResponse++;
  if (buildCounterApigatewayListApiConfigsResponse < 3) {
    checkUnnamed5852(o.apiConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5853(o.unreachableLocations!);
  }
  buildCounterApigatewayListApiConfigsResponse--;
}

core.List<api.ApigatewayApi> buildUnnamed5854() {
  final o = <api.ApigatewayApi>[];
  o.add(buildApigatewayApi());
  o.add(buildApigatewayApi());
  return o;
}

void checkUnnamed5854(core.List<api.ApigatewayApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayApi(o[0]);
  checkApigatewayApi(o[1]);
}

core.List<core.String> buildUnnamed5855() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5855(core.List<core.String> o) {
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

core.int buildCounterApigatewayListApisResponse = 0;
api.ApigatewayListApisResponse buildApigatewayListApisResponse() {
  final o = api.ApigatewayListApisResponse();
  buildCounterApigatewayListApisResponse++;
  if (buildCounterApigatewayListApisResponse < 3) {
    o.apis = buildUnnamed5854();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5855();
  }
  buildCounterApigatewayListApisResponse--;
  return o;
}

void checkApigatewayListApisResponse(api.ApigatewayListApisResponse o) {
  buildCounterApigatewayListApisResponse++;
  if (buildCounterApigatewayListApisResponse < 3) {
    checkUnnamed5854(o.apis!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5855(o.unreachableLocations!);
  }
  buildCounterApigatewayListApisResponse--;
}

core.List<api.ApigatewayGateway> buildUnnamed5856() {
  final o = <api.ApigatewayGateway>[];
  o.add(buildApigatewayGateway());
  o.add(buildApigatewayGateway());
  return o;
}

void checkUnnamed5856(core.List<api.ApigatewayGateway> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayGateway(o[0]);
  checkApigatewayGateway(o[1]);
}

core.List<core.String> buildUnnamed5857() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5857(core.List<core.String> o) {
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

core.int buildCounterApigatewayListGatewaysResponse = 0;
api.ApigatewayListGatewaysResponse buildApigatewayListGatewaysResponse() {
  final o = api.ApigatewayListGatewaysResponse();
  buildCounterApigatewayListGatewaysResponse++;
  if (buildCounterApigatewayListGatewaysResponse < 3) {
    o.gateways = buildUnnamed5856();
    o.nextPageToken = 'foo';
    o.unreachableLocations = buildUnnamed5857();
  }
  buildCounterApigatewayListGatewaysResponse--;
  return o;
}

void checkApigatewayListGatewaysResponse(api.ApigatewayListGatewaysResponse o) {
  buildCounterApigatewayListGatewaysResponse++;
  if (buildCounterApigatewayListGatewaysResponse < 3) {
    checkUnnamed5856(o.gateways!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5857(o.unreachableLocations!);
  }
  buildCounterApigatewayListGatewaysResponse--;
}

core.List<api.ApigatewayLocation> buildUnnamed5858() {
  final o = <api.ApigatewayLocation>[];
  o.add(buildApigatewayLocation());
  o.add(buildApigatewayLocation());
  return o;
}

void checkUnnamed5858(core.List<api.ApigatewayLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayLocation(o[0]);
  checkApigatewayLocation(o[1]);
}

core.int buildCounterApigatewayListLocationsResponse = 0;
api.ApigatewayListLocationsResponse buildApigatewayListLocationsResponse() {
  final o = api.ApigatewayListLocationsResponse();
  buildCounterApigatewayListLocationsResponse++;
  if (buildCounterApigatewayListLocationsResponse < 3) {
    o.locations = buildUnnamed5858();
    o.nextPageToken = 'foo';
  }
  buildCounterApigatewayListLocationsResponse--;
  return o;
}

void checkApigatewayListLocationsResponse(
    api.ApigatewayListLocationsResponse o) {
  buildCounterApigatewayListLocationsResponse++;
  if (buildCounterApigatewayListLocationsResponse < 3) {
    checkUnnamed5858(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayListLocationsResponse--;
}

core.List<api.ApigatewayOperation> buildUnnamed5859() {
  final o = <api.ApigatewayOperation>[];
  o.add(buildApigatewayOperation());
  o.add(buildApigatewayOperation());
  return o;
}

void checkUnnamed5859(core.List<api.ApigatewayOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayOperation(o[0]);
  checkApigatewayOperation(o[1]);
}

core.int buildCounterApigatewayListOperationsResponse = 0;
api.ApigatewayListOperationsResponse buildApigatewayListOperationsResponse() {
  final o = api.ApigatewayListOperationsResponse();
  buildCounterApigatewayListOperationsResponse++;
  if (buildCounterApigatewayListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed5859();
  }
  buildCounterApigatewayListOperationsResponse--;
  return o;
}

void checkApigatewayListOperationsResponse(
    api.ApigatewayListOperationsResponse o) {
  buildCounterApigatewayListOperationsResponse++;
  if (buildCounterApigatewayListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5859(o.operations!);
  }
  buildCounterApigatewayListOperationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed5860() {
  final o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed5860(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed5861() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5861(core.Map<core.String, core.Object> o) {
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

core.int buildCounterApigatewayLocation = 0;
api.ApigatewayLocation buildApigatewayLocation() {
  final o = api.ApigatewayLocation();
  buildCounterApigatewayLocation++;
  if (buildCounterApigatewayLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed5860();
    o.locationId = 'foo';
    o.metadata = buildUnnamed5861();
    o.name = 'foo';
  }
  buildCounterApigatewayLocation--;
  return o;
}

void checkApigatewayLocation(api.ApigatewayLocation o) {
  buildCounterApigatewayLocation++;
  if (buildCounterApigatewayLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed5860(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed5861(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayLocation--;
}

core.Map<core.String, core.Object> buildUnnamed5862() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5862(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed5863() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5863(core.Map<core.String, core.Object> o) {
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

core.int buildCounterApigatewayOperation = 0;
api.ApigatewayOperation buildApigatewayOperation() {
  final o = api.ApigatewayOperation();
  buildCounterApigatewayOperation++;
  if (buildCounterApigatewayOperation < 3) {
    o.done = true;
    o.error = buildApigatewayStatus();
    o.metadata = buildUnnamed5862();
    o.name = 'foo';
    o.response = buildUnnamed5863();
  }
  buildCounterApigatewayOperation--;
  return o;
}

void checkApigatewayOperation(api.ApigatewayOperation o) {
  buildCounterApigatewayOperation++;
  if (buildCounterApigatewayOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkApigatewayStatus(o.error!);
    checkUnnamed5862(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5863(o.response!);
  }
  buildCounterApigatewayOperation--;
}

core.List<api.ApigatewayOperationMetadataDiagnostic> buildUnnamed5864() {
  final o = <api.ApigatewayOperationMetadataDiagnostic>[];
  o.add(buildApigatewayOperationMetadataDiagnostic());
  o.add(buildApigatewayOperationMetadataDiagnostic());
  return o;
}

void checkUnnamed5864(core.List<api.ApigatewayOperationMetadataDiagnostic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayOperationMetadataDiagnostic(o[0]);
  checkApigatewayOperationMetadataDiagnostic(o[1]);
}

core.int buildCounterApigatewayOperationMetadata = 0;
api.ApigatewayOperationMetadata buildApigatewayOperationMetadata() {
  final o = api.ApigatewayOperationMetadata();
  buildCounterApigatewayOperationMetadata++;
  if (buildCounterApigatewayOperationMetadata < 3) {
    o.apiVersion = 'foo';
    o.createTime = 'foo';
    o.diagnostics = buildUnnamed5864();
    o.endTime = 'foo';
    o.requestedCancellation = true;
    o.statusMessage = 'foo';
    o.target = 'foo';
    o.verb = 'foo';
  }
  buildCounterApigatewayOperationMetadata--;
  return o;
}

void checkApigatewayOperationMetadata(api.ApigatewayOperationMetadata o) {
  buildCounterApigatewayOperationMetadata++;
  if (buildCounterApigatewayOperationMetadata < 3) {
    unittest.expect(
      o.apiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5864(o.diagnostics!);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.requestedCancellation!, unittest.isTrue);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verb!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayOperationMetadata--;
}

core.int buildCounterApigatewayOperationMetadataDiagnostic = 0;
api.ApigatewayOperationMetadataDiagnostic
    buildApigatewayOperationMetadataDiagnostic() {
  final o = api.ApigatewayOperationMetadataDiagnostic();
  buildCounterApigatewayOperationMetadataDiagnostic++;
  if (buildCounterApigatewayOperationMetadataDiagnostic < 3) {
    o.location = 'foo';
    o.message = 'foo';
  }
  buildCounterApigatewayOperationMetadataDiagnostic--;
  return o;
}

void checkApigatewayOperationMetadataDiagnostic(
    api.ApigatewayOperationMetadataDiagnostic o) {
  buildCounterApigatewayOperationMetadataDiagnostic++;
  if (buildCounterApigatewayOperationMetadataDiagnostic < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayOperationMetadataDiagnostic--;
}

core.List<api.ApigatewayAuditConfig> buildUnnamed5865() {
  final o = <api.ApigatewayAuditConfig>[];
  o.add(buildApigatewayAuditConfig());
  o.add(buildApigatewayAuditConfig());
  return o;
}

void checkUnnamed5865(core.List<api.ApigatewayAuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayAuditConfig(o[0]);
  checkApigatewayAuditConfig(o[1]);
}

core.List<api.ApigatewayBinding> buildUnnamed5866() {
  final o = <api.ApigatewayBinding>[];
  o.add(buildApigatewayBinding());
  o.add(buildApigatewayBinding());
  return o;
}

void checkUnnamed5866(core.List<api.ApigatewayBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApigatewayBinding(o[0]);
  checkApigatewayBinding(o[1]);
}

core.int buildCounterApigatewayPolicy = 0;
api.ApigatewayPolicy buildApigatewayPolicy() {
  final o = api.ApigatewayPolicy();
  buildCounterApigatewayPolicy++;
  if (buildCounterApigatewayPolicy < 3) {
    o.auditConfigs = buildUnnamed5865();
    o.bindings = buildUnnamed5866();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterApigatewayPolicy--;
  return o;
}

void checkApigatewayPolicy(api.ApigatewayPolicy o) {
  buildCounterApigatewayPolicy++;
  if (buildCounterApigatewayPolicy < 3) {
    checkUnnamed5865(o.auditConfigs!);
    checkUnnamed5866(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterApigatewayPolicy--;
}

core.int buildCounterApigatewaySetIamPolicyRequest = 0;
api.ApigatewaySetIamPolicyRequest buildApigatewaySetIamPolicyRequest() {
  final o = api.ApigatewaySetIamPolicyRequest();
  buildCounterApigatewaySetIamPolicyRequest++;
  if (buildCounterApigatewaySetIamPolicyRequest < 3) {
    o.policy = buildApigatewayPolicy();
    o.updateMask = 'foo';
  }
  buildCounterApigatewaySetIamPolicyRequest--;
  return o;
}

void checkApigatewaySetIamPolicyRequest(api.ApigatewaySetIamPolicyRequest o) {
  buildCounterApigatewaySetIamPolicyRequest++;
  if (buildCounterApigatewaySetIamPolicyRequest < 3) {
    checkApigatewayPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewaySetIamPolicyRequest--;
}

core.Map<core.String, core.Object> buildUnnamed5867() {
  final o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed5867(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed5868() {
  final o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed5867());
  o.add(buildUnnamed5867());
  return o;
}

void checkUnnamed5868(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed5867(o[0]);
  checkUnnamed5867(o[1]);
}

core.int buildCounterApigatewayStatus = 0;
api.ApigatewayStatus buildApigatewayStatus() {
  final o = api.ApigatewayStatus();
  buildCounterApigatewayStatus++;
  if (buildCounterApigatewayStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed5868();
    o.message = 'foo';
  }
  buildCounterApigatewayStatus--;
  return o;
}

void checkApigatewayStatus(api.ApigatewayStatus o) {
  buildCounterApigatewayStatus++;
  if (buildCounterApigatewayStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed5868(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterApigatewayStatus--;
}

core.List<core.String> buildUnnamed5869() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5869(core.List<core.String> o) {
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

core.int buildCounterApigatewayTestIamPermissionsRequest = 0;
api.ApigatewayTestIamPermissionsRequest
    buildApigatewayTestIamPermissionsRequest() {
  final o = api.ApigatewayTestIamPermissionsRequest();
  buildCounterApigatewayTestIamPermissionsRequest++;
  if (buildCounterApigatewayTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed5869();
  }
  buildCounterApigatewayTestIamPermissionsRequest--;
  return o;
}

void checkApigatewayTestIamPermissionsRequest(
    api.ApigatewayTestIamPermissionsRequest o) {
  buildCounterApigatewayTestIamPermissionsRequest++;
  if (buildCounterApigatewayTestIamPermissionsRequest < 3) {
    checkUnnamed5869(o.permissions!);
  }
  buildCounterApigatewayTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed5870() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5870(core.List<core.String> o) {
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

core.int buildCounterApigatewayTestIamPermissionsResponse = 0;
api.ApigatewayTestIamPermissionsResponse
    buildApigatewayTestIamPermissionsResponse() {
  final o = api.ApigatewayTestIamPermissionsResponse();
  buildCounterApigatewayTestIamPermissionsResponse++;
  if (buildCounterApigatewayTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed5870();
  }
  buildCounterApigatewayTestIamPermissionsResponse--;
  return o;
}

void checkApigatewayTestIamPermissionsResponse(
    api.ApigatewayTestIamPermissionsResponse o) {
  buildCounterApigatewayTestIamPermissionsResponse++;
  if (buildCounterApigatewayTestIamPermissionsResponse < 3) {
    checkUnnamed5870(o.permissions!);
  }
  buildCounterApigatewayTestIamPermissionsResponse--;
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

void main() {
  unittest.group('obj-schema-ApigatewayApi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayApi.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayApi(od);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayApiConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayApiConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayApiConfig(od);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayApiConfigFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayApiConfigFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayApiConfigFile(od);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigGrpcServiceDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayApiConfigGrpcServiceDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayApiConfigGrpcServiceDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayApiConfigGrpcServiceDefinition(od);
    });
  });

  unittest.group('obj-schema-ApigatewayApiConfigOpenApiDocument', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayApiConfigOpenApiDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayApiConfigOpenApiDocument.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayApiConfigOpenApiDocument(od);
    });
  });

  unittest.group('obj-schema-ApigatewayAuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayAuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayAuditConfig(od);
    });
  });

  unittest.group('obj-schema-ApigatewayAuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayAuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-ApigatewayBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayBinding(od);
    });
  });

  unittest.group('obj-schema-ApigatewayCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ApigatewayExpr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayExpr.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayExpr(od);
    });
  });

  unittest.group('obj-schema-ApigatewayGateway', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayGateway();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayGateway.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayGateway(od);
    });
  });

  unittest.group('obj-schema-ApigatewayListApiConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayListApiConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayListApiConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayListApiConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ApigatewayListApisResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayListApisResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayListApisResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayListApisResponse(od);
    });
  });

  unittest.group('obj-schema-ApigatewayListGatewaysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayListGatewaysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayListGatewaysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayListGatewaysResponse(od);
    });
  });

  unittest.group('obj-schema-ApigatewayListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ApigatewayListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ApigatewayLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayLocation(od);
    });
  });

  unittest.group('obj-schema-ApigatewayOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayOperation(od);
    });
  });

  unittest.group('obj-schema-ApigatewayOperationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayOperationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayOperationMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayOperationMetadata(od);
    });
  });

  unittest.group('obj-schema-ApigatewayOperationMetadataDiagnostic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayOperationMetadataDiagnostic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayOperationMetadataDiagnostic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayOperationMetadataDiagnostic(od);
    });
  });

  unittest.group('obj-schema-ApigatewayPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayPolicy(od);
    });
  });

  unittest.group('obj-schema-ApigatewaySetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewaySetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewaySetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewaySetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-ApigatewayStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayStatus(od);
    });
  });

  unittest.group('obj-schema-ApigatewayTestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayTestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-ApigatewayTestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApigatewayTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApigatewayTestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApigatewayTestIamPermissionsResponse(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations;
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
        final resp = convert.json.encode(buildApigatewayLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkApigatewayLocation(response as api.ApigatewayLocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations;
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
            convert.json.encode(buildApigatewayListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApigatewayListLocationsResponse(
          response as api.ApigatewayListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsApisResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
      final arg_request = buildApigatewayApi();
      final arg_parent = 'foo';
      final arg_apiId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayApi.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApi(obj);

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
          queryMap['apiId']!.first,
          unittest.equals(arg_apiId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          apiId: arg_apiId, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        final resp = convert.json.encode(buildApigatewayApi());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkApigatewayApi(response as api.ApigatewayApi);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
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
        final resp = convert.json.encode(buildApigatewayListApisResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApigatewayListApisResponse(
          response as api.ApigatewayListApisResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
      final arg_request = buildApigatewayApi();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayApi.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApi(obj);

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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
      final arg_request = buildApigatewaySetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis;
      final arg_request = buildApigatewayTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(obj);

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
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayTestIamPermissionsResponse(
          response as api.ApigatewayTestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsApisConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      final arg_request = buildApigatewayApiConfig();
      final arg_parent = 'foo';
      final arg_apiConfigId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayApiConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApiConfig(obj);

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
          queryMap['apiConfigId']!.first,
          unittest.equals(arg_apiConfigId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          apiConfigId: arg_apiConfigId, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
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
        final resp = convert.json.encode(buildApigatewayApiConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkApigatewayApiConfig(response as api.ApigatewayApiConfig);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
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
            convert.json.encode(buildApigatewayListApiConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApigatewayListApiConfigsResponse(
          response as api.ApigatewayListApiConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      final arg_request = buildApigatewayApiConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayApiConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayApiConfig(obj);

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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      final arg_request = buildApigatewaySetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.apis.configs;
      final arg_request = buildApigatewayTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(obj);

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
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayTestIamPermissionsResponse(
          response as api.ApigatewayTestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsGatewaysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      final arg_request = buildApigatewayGateway();
      final arg_parent = 'foo';
      final arg_gatewayId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayGateway.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayGateway(obj);

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
          queryMap['gatewayId']!.first,
          unittest.equals(arg_gatewayId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          gatewayId: arg_gatewayId, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        final resp = convert.json.encode(buildApigatewayGateway());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkApigatewayGateway(response as api.ApigatewayGateway);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
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
        final resp = convert.json.encode(buildApigatewayListGatewaysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApigatewayListGatewaysResponse(
          response as api.ApigatewayListGatewaysResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      final arg_request = buildApigatewayGateway();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayGateway.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayGateway(obj);

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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      final arg_request = buildApigatewaySetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewaySetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewaySetIamPolicyRequest(obj);

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
        final resp = convert.json.encode(buildApigatewayPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayPolicy(response as api.ApigatewayPolicy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.gateways;
      final arg_request = buildApigatewayTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayTestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayTestIamPermissionsRequest(obj);

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
            convert.json.encode(buildApigatewayTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkApigatewayTestIamPermissionsResponse(
          response as api.ApigatewayTestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.operations;
      final arg_request = buildApigatewayCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApigatewayCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApigatewayCancelOperationRequest(obj);

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
      final res = api.ApigatewayApi_1(mock).projects.locations.operations;
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
      final res = api.ApigatewayApi_1(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildApigatewayOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkApigatewayOperation(response as api.ApigatewayOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ApigatewayApi_1(mock).projects.locations.operations;
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
            convert.json.encode(buildApigatewayListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkApigatewayListOperationsResponse(
          response as api.ApigatewayListOperationsResponse);
    });
  });
}
