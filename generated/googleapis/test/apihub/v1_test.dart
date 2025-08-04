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

import 'package:googleapis/apihub/v1.dart' as api;
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

core.List<api.GoogleCloudApihubV1VersionMetadata> buildUnnamed0() => [
  buildGoogleCloudApihubV1VersionMetadata(),
  buildGoogleCloudApihubV1VersionMetadata(),
];

void checkUnnamed0(core.List<api.GoogleCloudApihubV1VersionMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1VersionMetadata(o[0]);
  checkGoogleCloudApihubV1VersionMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1APIMetadata = 0;
api.GoogleCloudApihubV1APIMetadata buildGoogleCloudApihubV1APIMetadata() {
  final o = api.GoogleCloudApihubV1APIMetadata();
  buildCounterGoogleCloudApihubV1APIMetadata++;
  if (buildCounterGoogleCloudApihubV1APIMetadata < 3) {
    o.api = buildGoogleCloudApihubV1Api();
    o.originalCreateTime = 'foo';
    o.originalId = 'foo';
    o.originalUpdateTime = 'foo';
    o.versions = buildUnnamed0();
  }
  buildCounterGoogleCloudApihubV1APIMetadata--;
  return o;
}

void checkGoogleCloudApihubV1APIMetadata(api.GoogleCloudApihubV1APIMetadata o) {
  buildCounterGoogleCloudApihubV1APIMetadata++;
  if (buildCounterGoogleCloudApihubV1APIMetadata < 3) {
    checkGoogleCloudApihubV1Api(o.api!);
    unittest.expect(o.originalCreateTime!, unittest.equals('foo'));
    unittest.expect(o.originalId!, unittest.equals('foo'));
    unittest.expect(o.originalUpdateTime!, unittest.equals('foo'));
    checkUnnamed0(o.versions!);
  }
  buildCounterGoogleCloudApihubV1APIMetadata--;
}

core.int buildCounterGoogleCloudApihubV1ActionExecutionDetail = 0;
api.GoogleCloudApihubV1ActionExecutionDetail
buildGoogleCloudApihubV1ActionExecutionDetail() {
  final o = api.GoogleCloudApihubV1ActionExecutionDetail();
  buildCounterGoogleCloudApihubV1ActionExecutionDetail++;
  if (buildCounterGoogleCloudApihubV1ActionExecutionDetail < 3) {
    o.actionId = 'foo';
  }
  buildCounterGoogleCloudApihubV1ActionExecutionDetail--;
  return o;
}

void checkGoogleCloudApihubV1ActionExecutionDetail(
  api.GoogleCloudApihubV1ActionExecutionDetail o,
) {
  buildCounterGoogleCloudApihubV1ActionExecutionDetail++;
  if (buildCounterGoogleCloudApihubV1ActionExecutionDetail < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ActionExecutionDetail--;
}

core.int buildCounterGoogleCloudApihubV1AllowedValue = 0;
api.GoogleCloudApihubV1AllowedValue buildGoogleCloudApihubV1AllowedValue() {
  final o = api.GoogleCloudApihubV1AllowedValue();
  buildCounterGoogleCloudApihubV1AllowedValue++;
  if (buildCounterGoogleCloudApihubV1AllowedValue < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.immutable = true;
  }
  buildCounterGoogleCloudApihubV1AllowedValue--;
  return o;
}

void checkGoogleCloudApihubV1AllowedValue(
  api.GoogleCloudApihubV1AllowedValue o,
) {
  buildCounterGoogleCloudApihubV1AllowedValue++;
  if (buildCounterGoogleCloudApihubV1AllowedValue < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.immutable!, unittest.isTrue);
  }
  buildCounterGoogleCloudApihubV1AllowedValue--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> buildUnnamed1() =>
    {
      'x': buildGoogleCloudApihubV1AttributeValues(),
      'y': buildGoogleCloudApihubV1AttributeValues(),
    };

void checkUnnamed1(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.List<api.GoogleCloudApihubV1SourceMetadata> buildUnnamed2() => [
  buildGoogleCloudApihubV1SourceMetadata(),
  buildGoogleCloudApihubV1SourceMetadata(),
];

void checkUnnamed2(core.List<api.GoogleCloudApihubV1SourceMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SourceMetadata(o[0]);
  checkGoogleCloudApihubV1SourceMetadata(o[1]);
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1Api = 0;
api.GoogleCloudApihubV1Api buildGoogleCloudApihubV1Api() {
  final o = api.GoogleCloudApihubV1Api();
  buildCounterGoogleCloudApihubV1Api++;
  if (buildCounterGoogleCloudApihubV1Api < 3) {
    o.apiFunctionalRequirements = buildGoogleCloudApihubV1AttributeValues();
    o.apiRequirements = buildGoogleCloudApihubV1AttributeValues();
    o.apiStyle = buildGoogleCloudApihubV1AttributeValues();
    o.apiTechnicalRequirements = buildGoogleCloudApihubV1AttributeValues();
    o.attributes = buildUnnamed1();
    o.businessUnit = buildGoogleCloudApihubV1AttributeValues();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.fingerprint = 'foo';
    o.maturityLevel = buildGoogleCloudApihubV1AttributeValues();
    o.name = 'foo';
    o.owner = buildGoogleCloudApihubV1Owner();
    o.selectedVersion = 'foo';
    o.sourceMetadata = buildUnnamed2();
    o.targetUser = buildGoogleCloudApihubV1AttributeValues();
    o.team = buildGoogleCloudApihubV1AttributeValues();
    o.updateTime = 'foo';
    o.versions = buildUnnamed3();
  }
  buildCounterGoogleCloudApihubV1Api--;
  return o;
}

void checkGoogleCloudApihubV1Api(api.GoogleCloudApihubV1Api o) {
  buildCounterGoogleCloudApihubV1Api++;
  if (buildCounterGoogleCloudApihubV1Api < 3) {
    checkGoogleCloudApihubV1AttributeValues(o.apiFunctionalRequirements!);
    checkGoogleCloudApihubV1AttributeValues(o.apiRequirements!);
    checkGoogleCloudApihubV1AttributeValues(o.apiStyle!);
    checkGoogleCloudApihubV1AttributeValues(o.apiTechnicalRequirements!);
    checkUnnamed1(o.attributes!);
    checkGoogleCloudApihubV1AttributeValues(o.businessUnit!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.maturityLevel!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Owner(o.owner!);
    unittest.expect(o.selectedVersion!, unittest.equals('foo'));
    checkUnnamed2(o.sourceMetadata!);
    checkGoogleCloudApihubV1AttributeValues(o.targetUser!);
    checkGoogleCloudApihubV1AttributeValues(o.team!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkUnnamed3(o.versions!);
  }
  buildCounterGoogleCloudApihubV1Api--;
}

core.int buildCounterGoogleCloudApihubV1ApiData = 0;
api.GoogleCloudApihubV1ApiData buildGoogleCloudApihubV1ApiData() {
  final o = api.GoogleCloudApihubV1ApiData();
  buildCounterGoogleCloudApihubV1ApiData++;
  if (buildCounterGoogleCloudApihubV1ApiData < 3) {
    o.apiMetadataList = buildGoogleCloudApihubV1ApiMetadataList();
  }
  buildCounterGoogleCloudApihubV1ApiData--;
  return o;
}

void checkGoogleCloudApihubV1ApiData(api.GoogleCloudApihubV1ApiData o) {
  buildCounterGoogleCloudApihubV1ApiData++;
  if (buildCounterGoogleCloudApihubV1ApiData < 3) {
    checkGoogleCloudApihubV1ApiMetadataList(o.apiMetadataList!);
  }
  buildCounterGoogleCloudApihubV1ApiData--;
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1ApiHubInstance = 0;
api.GoogleCloudApihubV1ApiHubInstance buildGoogleCloudApihubV1ApiHubInstance() {
  final o = api.GoogleCloudApihubV1ApiHubInstance();
  buildCounterGoogleCloudApihubV1ApiHubInstance++;
  if (buildCounterGoogleCloudApihubV1ApiHubInstance < 3) {
    o.config = buildGoogleCloudApihubV1Config();
    o.createTime = 'foo';
    o.description = 'foo';
    o.labels = buildUnnamed4();
    o.name = 'foo';
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1ApiHubInstance--;
  return o;
}

void checkGoogleCloudApihubV1ApiHubInstance(
  api.GoogleCloudApihubV1ApiHubInstance o,
) {
  buildCounterGoogleCloudApihubV1ApiHubInstance++;
  if (buildCounterGoogleCloudApihubV1ApiHubInstance < 3) {
    checkGoogleCloudApihubV1Config(o.config!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed4(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ApiHubInstance--;
}

core.int buildCounterGoogleCloudApihubV1ApiHubResource = 0;
api.GoogleCloudApihubV1ApiHubResource buildGoogleCloudApihubV1ApiHubResource() {
  final o = api.GoogleCloudApihubV1ApiHubResource();
  buildCounterGoogleCloudApihubV1ApiHubResource++;
  if (buildCounterGoogleCloudApihubV1ApiHubResource < 3) {
    o.api = buildGoogleCloudApihubV1Api();
    o.definition = buildGoogleCloudApihubV1Definition();
    o.deployment = buildGoogleCloudApihubV1Deployment();
    o.operation = buildGoogleCloudApihubV1ApiOperation();
    o.spec = buildGoogleCloudApihubV1Spec();
    o.version = buildGoogleCloudApihubV1Version();
  }
  buildCounterGoogleCloudApihubV1ApiHubResource--;
  return o;
}

void checkGoogleCloudApihubV1ApiHubResource(
  api.GoogleCloudApihubV1ApiHubResource o,
) {
  buildCounterGoogleCloudApihubV1ApiHubResource++;
  if (buildCounterGoogleCloudApihubV1ApiHubResource < 3) {
    checkGoogleCloudApihubV1Api(o.api!);
    checkGoogleCloudApihubV1Definition(o.definition!);
    checkGoogleCloudApihubV1Deployment(o.deployment!);
    checkGoogleCloudApihubV1ApiOperation(o.operation!);
    checkGoogleCloudApihubV1Spec(o.spec!);
    checkGoogleCloudApihubV1Version(o.version!);
  }
  buildCounterGoogleCloudApihubV1ApiHubResource--;
}

core.int buildCounterGoogleCloudApihubV1ApiKeyConfig = 0;
api.GoogleCloudApihubV1ApiKeyConfig buildGoogleCloudApihubV1ApiKeyConfig() {
  final o = api.GoogleCloudApihubV1ApiKeyConfig();
  buildCounterGoogleCloudApihubV1ApiKeyConfig++;
  if (buildCounterGoogleCloudApihubV1ApiKeyConfig < 3) {
    o.apiKey = buildGoogleCloudApihubV1Secret();
    o.httpElementLocation = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1ApiKeyConfig--;
  return o;
}

void checkGoogleCloudApihubV1ApiKeyConfig(
  api.GoogleCloudApihubV1ApiKeyConfig o,
) {
  buildCounterGoogleCloudApihubV1ApiKeyConfig++;
  if (buildCounterGoogleCloudApihubV1ApiKeyConfig < 3) {
    checkGoogleCloudApihubV1Secret(o.apiKey!);
    unittest.expect(o.httpElementLocation!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ApiKeyConfig--;
}

core.List<api.GoogleCloudApihubV1APIMetadata> buildUnnamed5() => [
  buildGoogleCloudApihubV1APIMetadata(),
  buildGoogleCloudApihubV1APIMetadata(),
];

void checkUnnamed5(core.List<api.GoogleCloudApihubV1APIMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1APIMetadata(o[0]);
  checkGoogleCloudApihubV1APIMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ApiMetadataList = 0;
api.GoogleCloudApihubV1ApiMetadataList
buildGoogleCloudApihubV1ApiMetadataList() {
  final o = api.GoogleCloudApihubV1ApiMetadataList();
  buildCounterGoogleCloudApihubV1ApiMetadataList++;
  if (buildCounterGoogleCloudApihubV1ApiMetadataList < 3) {
    o.apiMetadata = buildUnnamed5();
  }
  buildCounterGoogleCloudApihubV1ApiMetadataList--;
  return o;
}

void checkGoogleCloudApihubV1ApiMetadataList(
  api.GoogleCloudApihubV1ApiMetadataList o,
) {
  buildCounterGoogleCloudApihubV1ApiMetadataList++;
  if (buildCounterGoogleCloudApihubV1ApiMetadataList < 3) {
    checkUnnamed5(o.apiMetadata!);
  }
  buildCounterGoogleCloudApihubV1ApiMetadataList--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> buildUnnamed6() =>
    {
      'x': buildGoogleCloudApihubV1AttributeValues(),
      'y': buildGoogleCloudApihubV1AttributeValues(),
    };

void checkUnnamed6(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.List<api.GoogleCloudApihubV1SourceMetadata> buildUnnamed7() => [
  buildGoogleCloudApihubV1SourceMetadata(),
  buildGoogleCloudApihubV1SourceMetadata(),
];

void checkUnnamed7(core.List<api.GoogleCloudApihubV1SourceMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SourceMetadata(o[0]);
  checkGoogleCloudApihubV1SourceMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ApiOperation = 0;
api.GoogleCloudApihubV1ApiOperation buildGoogleCloudApihubV1ApiOperation() {
  final o = api.GoogleCloudApihubV1ApiOperation();
  buildCounterGoogleCloudApihubV1ApiOperation++;
  if (buildCounterGoogleCloudApihubV1ApiOperation < 3) {
    o.attributes = buildUnnamed6();
    o.createTime = 'foo';
    o.details = buildGoogleCloudApihubV1OperationDetails();
    o.name = 'foo';
    o.sourceMetadata = buildUnnamed7();
    o.spec = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1ApiOperation--;
  return o;
}

void checkGoogleCloudApihubV1ApiOperation(
  api.GoogleCloudApihubV1ApiOperation o,
) {
  buildCounterGoogleCloudApihubV1ApiOperation++;
  if (buildCounterGoogleCloudApihubV1ApiOperation < 3) {
    checkUnnamed6(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1OperationDetails(o.details!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed7(o.sourceMetadata!);
    unittest.expect(o.spec!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ApiOperation--;
}

core.int buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails =
    0;
api.GoogleCloudApihubV1ApplicationIntegrationEndpointDetails
buildGoogleCloudApihubV1ApplicationIntegrationEndpointDetails() {
  final o = api.GoogleCloudApihubV1ApplicationIntegrationEndpointDetails();
  buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails++;
  if (buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails <
      3) {
    o.triggerId = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails--;
  return o;
}

void checkGoogleCloudApihubV1ApplicationIntegrationEndpointDetails(
  api.GoogleCloudApihubV1ApplicationIntegrationEndpointDetails o,
) {
  buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails++;
  if (buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails <
      3) {
    unittest.expect(o.triggerId!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ApplicationIntegrationEndpointDetails--;
}

core.List<api.GoogleCloudApihubV1AllowedValue> buildUnnamed8() => [
  buildGoogleCloudApihubV1AllowedValue(),
  buildGoogleCloudApihubV1AllowedValue(),
];

void checkUnnamed8(core.List<api.GoogleCloudApihubV1AllowedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AllowedValue(o[0]);
  checkGoogleCloudApihubV1AllowedValue(o[1]);
}

core.int buildCounterGoogleCloudApihubV1Attribute = 0;
api.GoogleCloudApihubV1Attribute buildGoogleCloudApihubV1Attribute() {
  final o = api.GoogleCloudApihubV1Attribute();
  buildCounterGoogleCloudApihubV1Attribute++;
  if (buildCounterGoogleCloudApihubV1Attribute < 3) {
    o.allowedValues = buildUnnamed8();
    o.cardinality = 42;
    o.createTime = 'foo';
    o.dataType = 'foo';
    o.definitionType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.mandatory = true;
    o.name = 'foo';
    o.scope = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Attribute--;
  return o;
}

void checkGoogleCloudApihubV1Attribute(api.GoogleCloudApihubV1Attribute o) {
  buildCounterGoogleCloudApihubV1Attribute++;
  if (buildCounterGoogleCloudApihubV1Attribute < 3) {
    checkUnnamed8(o.allowedValues!);
    unittest.expect(o.cardinality!, unittest.equals(42));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.definitionType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.mandatory!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Attribute--;
}

core.int buildCounterGoogleCloudApihubV1AttributeValues = 0;
api.GoogleCloudApihubV1AttributeValues
buildGoogleCloudApihubV1AttributeValues() {
  final o = api.GoogleCloudApihubV1AttributeValues();
  buildCounterGoogleCloudApihubV1AttributeValues++;
  if (buildCounterGoogleCloudApihubV1AttributeValues < 3) {
    o.attribute = 'foo';
    o.enumValues = buildGoogleCloudApihubV1EnumAttributeValues();
    o.jsonValues = buildGoogleCloudApihubV1StringAttributeValues();
    o.stringValues = buildGoogleCloudApihubV1StringAttributeValues();
    o.uriValues = buildGoogleCloudApihubV1StringAttributeValues();
  }
  buildCounterGoogleCloudApihubV1AttributeValues--;
  return o;
}

void checkGoogleCloudApihubV1AttributeValues(
  api.GoogleCloudApihubV1AttributeValues o,
) {
  buildCounterGoogleCloudApihubV1AttributeValues++;
  if (buildCounterGoogleCloudApihubV1AttributeValues < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    checkGoogleCloudApihubV1EnumAttributeValues(o.enumValues!);
    checkGoogleCloudApihubV1StringAttributeValues(o.jsonValues!);
    checkGoogleCloudApihubV1StringAttributeValues(o.stringValues!);
    checkGoogleCloudApihubV1StringAttributeValues(o.uriValues!);
  }
  buildCounterGoogleCloudApihubV1AttributeValues--;
}

core.int buildCounterGoogleCloudApihubV1AuthConfig = 0;
api.GoogleCloudApihubV1AuthConfig buildGoogleCloudApihubV1AuthConfig() {
  final o = api.GoogleCloudApihubV1AuthConfig();
  buildCounterGoogleCloudApihubV1AuthConfig++;
  if (buildCounterGoogleCloudApihubV1AuthConfig < 3) {
    o.apiKeyConfig = buildGoogleCloudApihubV1ApiKeyConfig();
    o.authType = 'foo';
    o.googleServiceAccountConfig =
        buildGoogleCloudApihubV1GoogleServiceAccountConfig();
    o.oauth2ClientCredentialsConfig =
        buildGoogleCloudApihubV1Oauth2ClientCredentialsConfig();
    o.userPasswordConfig = buildGoogleCloudApihubV1UserPasswordConfig();
  }
  buildCounterGoogleCloudApihubV1AuthConfig--;
  return o;
}

void checkGoogleCloudApihubV1AuthConfig(api.GoogleCloudApihubV1AuthConfig o) {
  buildCounterGoogleCloudApihubV1AuthConfig++;
  if (buildCounterGoogleCloudApihubV1AuthConfig < 3) {
    checkGoogleCloudApihubV1ApiKeyConfig(o.apiKeyConfig!);
    unittest.expect(o.authType!, unittest.equals('foo'));
    checkGoogleCloudApihubV1GoogleServiceAccountConfig(
      o.googleServiceAccountConfig!,
    );
    checkGoogleCloudApihubV1Oauth2ClientCredentialsConfig(
      o.oauth2ClientCredentialsConfig!,
    );
    checkGoogleCloudApihubV1UserPasswordConfig(o.userPasswordConfig!);
  }
  buildCounterGoogleCloudApihubV1AuthConfig--;
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1AuthConfigTemplate = 0;
api.GoogleCloudApihubV1AuthConfigTemplate
buildGoogleCloudApihubV1AuthConfigTemplate() {
  final o = api.GoogleCloudApihubV1AuthConfigTemplate();
  buildCounterGoogleCloudApihubV1AuthConfigTemplate++;
  if (buildCounterGoogleCloudApihubV1AuthConfigTemplate < 3) {
    o.serviceAccount = buildGoogleCloudApihubV1GoogleServiceAccountConfig();
    o.supportedAuthTypes = buildUnnamed9();
  }
  buildCounterGoogleCloudApihubV1AuthConfigTemplate--;
  return o;
}

void checkGoogleCloudApihubV1AuthConfigTemplate(
  api.GoogleCloudApihubV1AuthConfigTemplate o,
) {
  buildCounterGoogleCloudApihubV1AuthConfigTemplate++;
  if (buildCounterGoogleCloudApihubV1AuthConfigTemplate < 3) {
    checkGoogleCloudApihubV1GoogleServiceAccountConfig(o.serviceAccount!);
    checkUnnamed9(o.supportedAuthTypes!);
  }
  buildCounterGoogleCloudApihubV1AuthConfigTemplate--;
}

core.int buildCounterGoogleCloudApihubV1CollectApiDataRequest = 0;
api.GoogleCloudApihubV1CollectApiDataRequest
buildGoogleCloudApihubV1CollectApiDataRequest() {
  final o = api.GoogleCloudApihubV1CollectApiDataRequest();
  buildCounterGoogleCloudApihubV1CollectApiDataRequest++;
  if (buildCounterGoogleCloudApihubV1CollectApiDataRequest < 3) {
    o.actionId = 'foo';
    o.apiData = buildGoogleCloudApihubV1ApiData();
    o.collectionType = 'foo';
    o.pluginInstance = 'foo';
  }
  buildCounterGoogleCloudApihubV1CollectApiDataRequest--;
  return o;
}

void checkGoogleCloudApihubV1CollectApiDataRequest(
  api.GoogleCloudApihubV1CollectApiDataRequest o,
) {
  buildCounterGoogleCloudApihubV1CollectApiDataRequest++;
  if (buildCounterGoogleCloudApihubV1CollectApiDataRequest < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
    checkGoogleCloudApihubV1ApiData(o.apiData!);
    unittest.expect(o.collectionType!, unittest.equals('foo'));
    unittest.expect(o.pluginInstance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1CollectApiDataRequest--;
}

core.int buildCounterGoogleCloudApihubV1Config = 0;
api.GoogleCloudApihubV1Config buildGoogleCloudApihubV1Config() {
  final o = api.GoogleCloudApihubV1Config();
  buildCounterGoogleCloudApihubV1Config++;
  if (buildCounterGoogleCloudApihubV1Config < 3) {
    o.cmekKeyName = 'foo';
    o.disableSearch = true;
    o.encryptionType = 'foo';
    o.vertexLocation = 'foo';
  }
  buildCounterGoogleCloudApihubV1Config--;
  return o;
}

void checkGoogleCloudApihubV1Config(api.GoogleCloudApihubV1Config o) {
  buildCounterGoogleCloudApihubV1Config++;
  if (buildCounterGoogleCloudApihubV1Config < 3) {
    unittest.expect(o.cmekKeyName!, unittest.equals('foo'));
    unittest.expect(o.disableSearch!, unittest.isTrue);
    unittest.expect(o.encryptionType!, unittest.equals('foo'));
    unittest.expect(o.vertexLocation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Config--;
}

core.List<api.GoogleCloudApihubV1ConfigVariableTemplate> buildUnnamed10() => [
  buildGoogleCloudApihubV1ConfigVariableTemplate(),
  buildGoogleCloudApihubV1ConfigVariableTemplate(),
];

void checkUnnamed10(
  core.List<api.GoogleCloudApihubV1ConfigVariableTemplate> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ConfigVariableTemplate(o[0]);
  checkGoogleCloudApihubV1ConfigVariableTemplate(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ConfigTemplate = 0;
api.GoogleCloudApihubV1ConfigTemplate buildGoogleCloudApihubV1ConfigTemplate() {
  final o = api.GoogleCloudApihubV1ConfigTemplate();
  buildCounterGoogleCloudApihubV1ConfigTemplate++;
  if (buildCounterGoogleCloudApihubV1ConfigTemplate < 3) {
    o.additionalConfigTemplate = buildUnnamed10();
    o.authConfigTemplate = buildGoogleCloudApihubV1AuthConfigTemplate();
  }
  buildCounterGoogleCloudApihubV1ConfigTemplate--;
  return o;
}

void checkGoogleCloudApihubV1ConfigTemplate(
  api.GoogleCloudApihubV1ConfigTemplate o,
) {
  buildCounterGoogleCloudApihubV1ConfigTemplate++;
  if (buildCounterGoogleCloudApihubV1ConfigTemplate < 3) {
    checkUnnamed10(o.additionalConfigTemplate!);
    checkGoogleCloudApihubV1AuthConfigTemplate(o.authConfigTemplate!);
  }
  buildCounterGoogleCloudApihubV1ConfigTemplate--;
}

core.int buildCounterGoogleCloudApihubV1ConfigValueOption = 0;
api.GoogleCloudApihubV1ConfigValueOption
buildGoogleCloudApihubV1ConfigValueOption() {
  final o = api.GoogleCloudApihubV1ConfigValueOption();
  buildCounterGoogleCloudApihubV1ConfigValueOption++;
  if (buildCounterGoogleCloudApihubV1ConfigValueOption < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleCloudApihubV1ConfigValueOption--;
  return o;
}

void checkGoogleCloudApihubV1ConfigValueOption(
  api.GoogleCloudApihubV1ConfigValueOption o,
) {
  buildCounterGoogleCloudApihubV1ConfigValueOption++;
  if (buildCounterGoogleCloudApihubV1ConfigValueOption < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ConfigValueOption--;
}

core.int buildCounterGoogleCloudApihubV1ConfigVariable = 0;
api.GoogleCloudApihubV1ConfigVariable buildGoogleCloudApihubV1ConfigVariable() {
  final o = api.GoogleCloudApihubV1ConfigVariable();
  buildCounterGoogleCloudApihubV1ConfigVariable++;
  if (buildCounterGoogleCloudApihubV1ConfigVariable < 3) {
    o.boolValue = true;
    o.enumValue = buildGoogleCloudApihubV1ConfigValueOption();
    o.intValue = 'foo';
    o.key = 'foo';
    o.multiIntValues = buildGoogleCloudApihubV1MultiIntValues();
    o.multiSelectValues = buildGoogleCloudApihubV1MultiSelectValues();
    o.multiStringValues = buildGoogleCloudApihubV1MultiStringValues();
    o.secretValue = buildGoogleCloudApihubV1Secret();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudApihubV1ConfigVariable--;
  return o;
}

void checkGoogleCloudApihubV1ConfigVariable(
  api.GoogleCloudApihubV1ConfigVariable o,
) {
  buildCounterGoogleCloudApihubV1ConfigVariable++;
  if (buildCounterGoogleCloudApihubV1ConfigVariable < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    checkGoogleCloudApihubV1ConfigValueOption(o.enumValue!);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    checkGoogleCloudApihubV1MultiIntValues(o.multiIntValues!);
    checkGoogleCloudApihubV1MultiSelectValues(o.multiSelectValues!);
    checkGoogleCloudApihubV1MultiStringValues(o.multiStringValues!);
    checkGoogleCloudApihubV1Secret(o.secretValue!);
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ConfigVariable--;
}

core.List<api.GoogleCloudApihubV1ConfigValueOption> buildUnnamed11() => [
  buildGoogleCloudApihubV1ConfigValueOption(),
  buildGoogleCloudApihubV1ConfigValueOption(),
];

void checkUnnamed11(core.List<api.GoogleCloudApihubV1ConfigValueOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ConfigValueOption(o[0]);
  checkGoogleCloudApihubV1ConfigValueOption(o[1]);
}

core.List<api.GoogleCloudApihubV1ConfigValueOption> buildUnnamed12() => [
  buildGoogleCloudApihubV1ConfigValueOption(),
  buildGoogleCloudApihubV1ConfigValueOption(),
];

void checkUnnamed12(core.List<api.GoogleCloudApihubV1ConfigValueOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ConfigValueOption(o[0]);
  checkGoogleCloudApihubV1ConfigValueOption(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ConfigVariableTemplate = 0;
api.GoogleCloudApihubV1ConfigVariableTemplate
buildGoogleCloudApihubV1ConfigVariableTemplate() {
  final o = api.GoogleCloudApihubV1ConfigVariableTemplate();
  buildCounterGoogleCloudApihubV1ConfigVariableTemplate++;
  if (buildCounterGoogleCloudApihubV1ConfigVariableTemplate < 3) {
    o.description = 'foo';
    o.enumOptions = buildUnnamed11();
    o.id = 'foo';
    o.multiSelectOptions = buildUnnamed12();
    o.required = true;
    o.validationRegex = 'foo';
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudApihubV1ConfigVariableTemplate--;
  return o;
}

void checkGoogleCloudApihubV1ConfigVariableTemplate(
  api.GoogleCloudApihubV1ConfigVariableTemplate o,
) {
  buildCounterGoogleCloudApihubV1ConfigVariableTemplate++;
  if (buildCounterGoogleCloudApihubV1ConfigVariableTemplate < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed11(o.enumOptions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed12(o.multiSelectOptions!);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.validationRegex!, unittest.equals('foo'));
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ConfigVariableTemplate--;
}

core.List<api.GoogleCloudApihubV1PluginInstanceActionID> buildUnnamed13() => [
  buildGoogleCloudApihubV1PluginInstanceActionID(),
  buildGoogleCloudApihubV1PluginInstanceActionID(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudApihubV1PluginInstanceActionID> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1PluginInstanceActionID(o[0]);
  checkGoogleCloudApihubV1PluginInstanceActionID(o[1]);
}

core.int buildCounterGoogleCloudApihubV1Curation = 0;
api.GoogleCloudApihubV1Curation buildGoogleCloudApihubV1Curation() {
  final o = api.GoogleCloudApihubV1Curation();
  buildCounterGoogleCloudApihubV1Curation++;
  if (buildCounterGoogleCloudApihubV1Curation < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.endpoint = buildGoogleCloudApihubV1Endpoint();
    o.lastExecutionErrorCode = 'foo';
    o.lastExecutionErrorMessage = 'foo';
    o.lastExecutionState = 'foo';
    o.name = 'foo';
    o.pluginInstanceActions = buildUnnamed13();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Curation--;
  return o;
}

void checkGoogleCloudApihubV1Curation(api.GoogleCloudApihubV1Curation o) {
  buildCounterGoogleCloudApihubV1Curation++;
  if (buildCounterGoogleCloudApihubV1Curation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Endpoint(o.endpoint!);
    unittest.expect(o.lastExecutionErrorCode!, unittest.equals('foo'));
    unittest.expect(o.lastExecutionErrorMessage!, unittest.equals('foo'));
    unittest.expect(o.lastExecutionState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed13(o.pluginInstanceActions!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Curation--;
}

core.int buildCounterGoogleCloudApihubV1CurationConfig = 0;
api.GoogleCloudApihubV1CurationConfig buildGoogleCloudApihubV1CurationConfig() {
  final o = api.GoogleCloudApihubV1CurationConfig();
  buildCounterGoogleCloudApihubV1CurationConfig++;
  if (buildCounterGoogleCloudApihubV1CurationConfig < 3) {
    o.curationType = 'foo';
    o.customCuration = buildGoogleCloudApihubV1CustomCuration();
  }
  buildCounterGoogleCloudApihubV1CurationConfig--;
  return o;
}

void checkGoogleCloudApihubV1CurationConfig(
  api.GoogleCloudApihubV1CurationConfig o,
) {
  buildCounterGoogleCloudApihubV1CurationConfig++;
  if (buildCounterGoogleCloudApihubV1CurationConfig < 3) {
    unittest.expect(o.curationType!, unittest.equals('foo'));
    checkGoogleCloudApihubV1CustomCuration(o.customCuration!);
  }
  buildCounterGoogleCloudApihubV1CurationConfig--;
}

core.int buildCounterGoogleCloudApihubV1CustomCuration = 0;
api.GoogleCloudApihubV1CustomCuration buildGoogleCloudApihubV1CustomCuration() {
  final o = api.GoogleCloudApihubV1CustomCuration();
  buildCounterGoogleCloudApihubV1CustomCuration++;
  if (buildCounterGoogleCloudApihubV1CustomCuration < 3) {
    o.curation = 'foo';
  }
  buildCounterGoogleCloudApihubV1CustomCuration--;
  return o;
}

void checkGoogleCloudApihubV1CustomCuration(
  api.GoogleCloudApihubV1CustomCuration o,
) {
  buildCounterGoogleCloudApihubV1CustomCuration++;
  if (buildCounterGoogleCloudApihubV1CustomCuration < 3) {
    unittest.expect(o.curation!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1CustomCuration--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed14() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed14(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.int buildCounterGoogleCloudApihubV1Definition = 0;
api.GoogleCloudApihubV1Definition buildGoogleCloudApihubV1Definition() {
  final o = api.GoogleCloudApihubV1Definition();
  buildCounterGoogleCloudApihubV1Definition++;
  if (buildCounterGoogleCloudApihubV1Definition < 3) {
    o.attributes = buildUnnamed14();
    o.createTime = 'foo';
    o.name = 'foo';
    o.schema = buildGoogleCloudApihubV1Schema();
    o.spec = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Definition--;
  return o;
}

void checkGoogleCloudApihubV1Definition(api.GoogleCloudApihubV1Definition o) {
  buildCounterGoogleCloudApihubV1Definition++;
  if (buildCounterGoogleCloudApihubV1Definition < 3) {
    checkUnnamed14(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Schema(o.schema!);
    unittest.expect(o.spec!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Definition--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed15() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed15(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.int buildCounterGoogleCloudApihubV1Dependency = 0;
api.GoogleCloudApihubV1Dependency buildGoogleCloudApihubV1Dependency() {
  final o = api.GoogleCloudApihubV1Dependency();
  buildCounterGoogleCloudApihubV1Dependency++;
  if (buildCounterGoogleCloudApihubV1Dependency < 3) {
    o.attributes = buildUnnamed15();
    o.consumer = buildGoogleCloudApihubV1DependencyEntityReference();
    o.createTime = 'foo';
    o.description = 'foo';
    o.discoveryMode = 'foo';
    o.errorDetail = buildGoogleCloudApihubV1DependencyErrorDetail();
    o.name = 'foo';
    o.state = 'foo';
    o.supplier = buildGoogleCloudApihubV1DependencyEntityReference();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Dependency--;
  return o;
}

void checkGoogleCloudApihubV1Dependency(api.GoogleCloudApihubV1Dependency o) {
  buildCounterGoogleCloudApihubV1Dependency++;
  if (buildCounterGoogleCloudApihubV1Dependency < 3) {
    checkUnnamed15(o.attributes!);
    checkGoogleCloudApihubV1DependencyEntityReference(o.consumer!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.discoveryMode!, unittest.equals('foo'));
    checkGoogleCloudApihubV1DependencyErrorDetail(o.errorDetail!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleCloudApihubV1DependencyEntityReference(o.supplier!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Dependency--;
}

core.int buildCounterGoogleCloudApihubV1DependencyEntityReference = 0;
api.GoogleCloudApihubV1DependencyEntityReference
buildGoogleCloudApihubV1DependencyEntityReference() {
  final o = api.GoogleCloudApihubV1DependencyEntityReference();
  buildCounterGoogleCloudApihubV1DependencyEntityReference++;
  if (buildCounterGoogleCloudApihubV1DependencyEntityReference < 3) {
    o.displayName = 'foo';
    o.externalApiResourceName = 'foo';
    o.operationResourceName = 'foo';
  }
  buildCounterGoogleCloudApihubV1DependencyEntityReference--;
  return o;
}

void checkGoogleCloudApihubV1DependencyEntityReference(
  api.GoogleCloudApihubV1DependencyEntityReference o,
) {
  buildCounterGoogleCloudApihubV1DependencyEntityReference++;
  if (buildCounterGoogleCloudApihubV1DependencyEntityReference < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.externalApiResourceName!, unittest.equals('foo'));
    unittest.expect(o.operationResourceName!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DependencyEntityReference--;
}

core.int buildCounterGoogleCloudApihubV1DependencyErrorDetail = 0;
api.GoogleCloudApihubV1DependencyErrorDetail
buildGoogleCloudApihubV1DependencyErrorDetail() {
  final o = api.GoogleCloudApihubV1DependencyErrorDetail();
  buildCounterGoogleCloudApihubV1DependencyErrorDetail++;
  if (buildCounterGoogleCloudApihubV1DependencyErrorDetail < 3) {
    o.error = 'foo';
    o.errorTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1DependencyErrorDetail--;
  return o;
}

void checkGoogleCloudApihubV1DependencyErrorDetail(
  api.GoogleCloudApihubV1DependencyErrorDetail o,
) {
  buildCounterGoogleCloudApihubV1DependencyErrorDetail++;
  if (buildCounterGoogleCloudApihubV1DependencyErrorDetail < 3) {
    unittest.expect(o.error!, unittest.equals('foo'));
    unittest.expect(o.errorTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DependencyErrorDetail--;
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed17() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed17(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApihubV1SourceMetadata> buildUnnamed19() => [
  buildGoogleCloudApihubV1SourceMetadata(),
  buildGoogleCloudApihubV1SourceMetadata(),
];

void checkUnnamed19(core.List<api.GoogleCloudApihubV1SourceMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SourceMetadata(o[0]);
  checkGoogleCloudApihubV1SourceMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1Deployment = 0;
api.GoogleCloudApihubV1Deployment buildGoogleCloudApihubV1Deployment() {
  final o = api.GoogleCloudApihubV1Deployment();
  buildCounterGoogleCloudApihubV1Deployment++;
  if (buildCounterGoogleCloudApihubV1Deployment < 3) {
    o.apiVersions = buildUnnamed16();
    o.attributes = buildUnnamed17();
    o.createTime = 'foo';
    o.deploymentType = buildGoogleCloudApihubV1AttributeValues();
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.endpoints = buildUnnamed18();
    o.environment = buildGoogleCloudApihubV1AttributeValues();
    o.managementUrl = buildGoogleCloudApihubV1AttributeValues();
    o.name = 'foo';
    o.resourceUri = 'foo';
    o.slo = buildGoogleCloudApihubV1AttributeValues();
    o.sourceEnvironment = 'foo';
    o.sourceMetadata = buildUnnamed19();
    o.sourceProject = 'foo';
    o.sourceUri = buildGoogleCloudApihubV1AttributeValues();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Deployment--;
  return o;
}

void checkGoogleCloudApihubV1Deployment(api.GoogleCloudApihubV1Deployment o) {
  buildCounterGoogleCloudApihubV1Deployment++;
  if (buildCounterGoogleCloudApihubV1Deployment < 3) {
    checkUnnamed16(o.apiVersions!);
    checkUnnamed17(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.deploymentType!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    checkUnnamed18(o.endpoints!);
    checkGoogleCloudApihubV1AttributeValues(o.environment!);
    checkGoogleCloudApihubV1AttributeValues(o.managementUrl!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.resourceUri!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.slo!);
    unittest.expect(o.sourceEnvironment!, unittest.equals('foo'));
    checkUnnamed19(o.sourceMetadata!);
    unittest.expect(o.sourceProject!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.sourceUri!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Deployment--;
}

core.int buildCounterGoogleCloudApihubV1DeploymentMetadata = 0;
api.GoogleCloudApihubV1DeploymentMetadata
buildGoogleCloudApihubV1DeploymentMetadata() {
  final o = api.GoogleCloudApihubV1DeploymentMetadata();
  buildCounterGoogleCloudApihubV1DeploymentMetadata++;
  if (buildCounterGoogleCloudApihubV1DeploymentMetadata < 3) {
    o.deployment = buildGoogleCloudApihubV1Deployment();
    o.originalCreateTime = 'foo';
    o.originalId = 'foo';
    o.originalUpdateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1DeploymentMetadata--;
  return o;
}

void checkGoogleCloudApihubV1DeploymentMetadata(
  api.GoogleCloudApihubV1DeploymentMetadata o,
) {
  buildCounterGoogleCloudApihubV1DeploymentMetadata++;
  if (buildCounterGoogleCloudApihubV1DeploymentMetadata < 3) {
    checkGoogleCloudApihubV1Deployment(o.deployment!);
    unittest.expect(o.originalCreateTime!, unittest.equals('foo'));
    unittest.expect(o.originalId!, unittest.equals('foo'));
    unittest.expect(o.originalUpdateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DeploymentMetadata--;
}

core.int buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest = 0;
api.GoogleCloudApihubV1DisablePluginInstanceActionRequest
buildGoogleCloudApihubV1DisablePluginInstanceActionRequest() {
  final o = api.GoogleCloudApihubV1DisablePluginInstanceActionRequest();
  buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest < 3) {
    o.actionId = 'foo';
  }
  buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest--;
  return o;
}

void checkGoogleCloudApihubV1DisablePluginInstanceActionRequest(
  api.GoogleCloudApihubV1DisablePluginInstanceActionRequest o,
) {
  buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DisablePluginInstanceActionRequest--;
}

core.int buildCounterGoogleCloudApihubV1DisablePluginRequest = 0;
api.GoogleCloudApihubV1DisablePluginRequest
buildGoogleCloudApihubV1DisablePluginRequest() {
  final o = api.GoogleCloudApihubV1DisablePluginRequest();
  buildCounterGoogleCloudApihubV1DisablePluginRequest++;
  if (buildCounterGoogleCloudApihubV1DisablePluginRequest < 3) {}
  buildCounterGoogleCloudApihubV1DisablePluginRequest--;
  return o;
}

void checkGoogleCloudApihubV1DisablePluginRequest(
  api.GoogleCloudApihubV1DisablePluginRequest o,
) {
  buildCounterGoogleCloudApihubV1DisablePluginRequest++;
  if (buildCounterGoogleCloudApihubV1DisablePluginRequest < 3) {}
  buildCounterGoogleCloudApihubV1DisablePluginRequest--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1DiscoveredApiObservation = 0;
api.GoogleCloudApihubV1DiscoveredApiObservation
buildGoogleCloudApihubV1DiscoveredApiObservation() {
  final o = api.GoogleCloudApihubV1DiscoveredApiObservation();
  buildCounterGoogleCloudApihubV1DiscoveredApiObservation++;
  if (buildCounterGoogleCloudApihubV1DiscoveredApiObservation < 3) {
    o.apiOperationCount = 'foo';
    o.createTime = 'foo';
    o.hostname = 'foo';
    o.knownOperationsCount = 'foo';
    o.lastEventDetectedTime = 'foo';
    o.name = 'foo';
    o.origin = 'foo';
    o.serverIps = buildUnnamed20();
    o.sourceLocations = buildUnnamed21();
    o.sourceMetadata = buildGoogleCloudApihubV1SourceMetadata();
    o.sourceTypes = buildUnnamed22();
    o.style = 'foo';
    o.unknownOperationsCount = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1DiscoveredApiObservation--;
  return o;
}

void checkGoogleCloudApihubV1DiscoveredApiObservation(
  api.GoogleCloudApihubV1DiscoveredApiObservation o,
) {
  buildCounterGoogleCloudApihubV1DiscoveredApiObservation++;
  if (buildCounterGoogleCloudApihubV1DiscoveredApiObservation < 3) {
    unittest.expect(o.apiOperationCount!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.knownOperationsCount!, unittest.equals('foo'));
    unittest.expect(o.lastEventDetectedTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.origin!, unittest.equals('foo'));
    checkUnnamed20(o.serverIps!);
    checkUnnamed21(o.sourceLocations!);
    checkGoogleCloudApihubV1SourceMetadata(o.sourceMetadata!);
    checkUnnamed22(o.sourceTypes!);
    unittest.expect(o.style!, unittest.equals('foo'));
    unittest.expect(o.unknownOperationsCount!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DiscoveredApiObservation--;
}

core.List<api.GoogleCloudApihubV1MatchResult> buildUnnamed23() => [
  buildGoogleCloudApihubV1MatchResult(),
  buildGoogleCloudApihubV1MatchResult(),
];

void checkUnnamed23(core.List<api.GoogleCloudApihubV1MatchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1MatchResult(o[0]);
  checkGoogleCloudApihubV1MatchResult(o[1]);
}

core.int buildCounterGoogleCloudApihubV1DiscoveredApiOperation = 0;
api.GoogleCloudApihubV1DiscoveredApiOperation
buildGoogleCloudApihubV1DiscoveredApiOperation() {
  final o = api.GoogleCloudApihubV1DiscoveredApiOperation();
  buildCounterGoogleCloudApihubV1DiscoveredApiOperation++;
  if (buildCounterGoogleCloudApihubV1DiscoveredApiOperation < 3) {
    o.classification = 'foo';
    o.count = 'foo';
    o.createTime = 'foo';
    o.firstSeenTime = 'foo';
    o.httpOperation = buildGoogleCloudApihubV1HttpOperationDetails();
    o.lastSeenTime = 'foo';
    o.matchResults = buildUnnamed23();
    o.name = 'foo';
    o.sourceMetadata = buildGoogleCloudApihubV1SourceMetadata();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1DiscoveredApiOperation--;
  return o;
}

void checkGoogleCloudApihubV1DiscoveredApiOperation(
  api.GoogleCloudApihubV1DiscoveredApiOperation o,
) {
  buildCounterGoogleCloudApihubV1DiscoveredApiOperation++;
  if (buildCounterGoogleCloudApihubV1DiscoveredApiOperation < 3) {
    unittest.expect(o.classification!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.firstSeenTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1HttpOperationDetails(o.httpOperation!);
    unittest.expect(o.lastSeenTime!, unittest.equals('foo'));
    checkUnnamed23(o.matchResults!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudApihubV1SourceMetadata(o.sourceMetadata!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1DiscoveredApiOperation--;
}

core.int buildCounterGoogleCloudApihubV1Documentation = 0;
api.GoogleCloudApihubV1Documentation buildGoogleCloudApihubV1Documentation() {
  final o = api.GoogleCloudApihubV1Documentation();
  buildCounterGoogleCloudApihubV1Documentation++;
  if (buildCounterGoogleCloudApihubV1Documentation < 3) {
    o.externalUri = 'foo';
  }
  buildCounterGoogleCloudApihubV1Documentation--;
  return o;
}

void checkGoogleCloudApihubV1Documentation(
  api.GoogleCloudApihubV1Documentation o,
) {
  buildCounterGoogleCloudApihubV1Documentation++;
  if (buildCounterGoogleCloudApihubV1Documentation < 3) {
    unittest.expect(o.externalUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Documentation--;
}

core.int buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest = 0;
api.GoogleCloudApihubV1EnablePluginInstanceActionRequest
buildGoogleCloudApihubV1EnablePluginInstanceActionRequest() {
  final o = api.GoogleCloudApihubV1EnablePluginInstanceActionRequest();
  buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest < 3) {
    o.actionId = 'foo';
  }
  buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest--;
  return o;
}

void checkGoogleCloudApihubV1EnablePluginInstanceActionRequest(
  api.GoogleCloudApihubV1EnablePluginInstanceActionRequest o,
) {
  buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1EnablePluginInstanceActionRequest--;
}

core.int buildCounterGoogleCloudApihubV1EnablePluginRequest = 0;
api.GoogleCloudApihubV1EnablePluginRequest
buildGoogleCloudApihubV1EnablePluginRequest() {
  final o = api.GoogleCloudApihubV1EnablePluginRequest();
  buildCounterGoogleCloudApihubV1EnablePluginRequest++;
  if (buildCounterGoogleCloudApihubV1EnablePluginRequest < 3) {}
  buildCounterGoogleCloudApihubV1EnablePluginRequest--;
  return o;
}

void checkGoogleCloudApihubV1EnablePluginRequest(
  api.GoogleCloudApihubV1EnablePluginRequest o,
) {
  buildCounterGoogleCloudApihubV1EnablePluginRequest++;
  if (buildCounterGoogleCloudApihubV1EnablePluginRequest < 3) {}
  buildCounterGoogleCloudApihubV1EnablePluginRequest--;
}

core.int buildCounterGoogleCloudApihubV1Endpoint = 0;
api.GoogleCloudApihubV1Endpoint buildGoogleCloudApihubV1Endpoint() {
  final o = api.GoogleCloudApihubV1Endpoint();
  buildCounterGoogleCloudApihubV1Endpoint++;
  if (buildCounterGoogleCloudApihubV1Endpoint < 3) {
    o.applicationIntegrationEndpointDetails =
        buildGoogleCloudApihubV1ApplicationIntegrationEndpointDetails();
  }
  buildCounterGoogleCloudApihubV1Endpoint--;
  return o;
}

void checkGoogleCloudApihubV1Endpoint(api.GoogleCloudApihubV1Endpoint o) {
  buildCounterGoogleCloudApihubV1Endpoint++;
  if (buildCounterGoogleCloudApihubV1Endpoint < 3) {
    checkGoogleCloudApihubV1ApplicationIntegrationEndpointDetails(
      o.applicationIntegrationEndpointDetails!,
    );
  }
  buildCounterGoogleCloudApihubV1Endpoint--;
}

core.List<api.GoogleCloudApihubV1AllowedValue> buildUnnamed24() => [
  buildGoogleCloudApihubV1AllowedValue(),
  buildGoogleCloudApihubV1AllowedValue(),
];

void checkUnnamed24(core.List<api.GoogleCloudApihubV1AllowedValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AllowedValue(o[0]);
  checkGoogleCloudApihubV1AllowedValue(o[1]);
}

core.int buildCounterGoogleCloudApihubV1EnumAttributeValues = 0;
api.GoogleCloudApihubV1EnumAttributeValues
buildGoogleCloudApihubV1EnumAttributeValues() {
  final o = api.GoogleCloudApihubV1EnumAttributeValues();
  buildCounterGoogleCloudApihubV1EnumAttributeValues++;
  if (buildCounterGoogleCloudApihubV1EnumAttributeValues < 3) {
    o.values = buildUnnamed24();
  }
  buildCounterGoogleCloudApihubV1EnumAttributeValues--;
  return o;
}

void checkGoogleCloudApihubV1EnumAttributeValues(
  api.GoogleCloudApihubV1EnumAttributeValues o,
) {
  buildCounterGoogleCloudApihubV1EnumAttributeValues++;
  if (buildCounterGoogleCloudApihubV1EnumAttributeValues < 3) {
    checkUnnamed24(o.values!);
  }
  buildCounterGoogleCloudApihubV1EnumAttributeValues--;
}

core.int buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest = 0;
api.GoogleCloudApihubV1ExecutePluginInstanceActionRequest
buildGoogleCloudApihubV1ExecutePluginInstanceActionRequest() {
  final o = api.GoogleCloudApihubV1ExecutePluginInstanceActionRequest();
  buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest < 3) {
    o.actionExecutionDetail = buildGoogleCloudApihubV1ActionExecutionDetail();
  }
  buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest--;
  return o;
}

void checkGoogleCloudApihubV1ExecutePluginInstanceActionRequest(
  api.GoogleCloudApihubV1ExecutePluginInstanceActionRequest o,
) {
  buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest++;
  if (buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest < 3) {
    checkGoogleCloudApihubV1ActionExecutionDetail(o.actionExecutionDetail!);
  }
  buildCounterGoogleCloudApihubV1ExecutePluginInstanceActionRequest--;
}

core.int buildCounterGoogleCloudApihubV1ExecutionStatus = 0;
api.GoogleCloudApihubV1ExecutionStatus
buildGoogleCloudApihubV1ExecutionStatus() {
  final o = api.GoogleCloudApihubV1ExecutionStatus();
  buildCounterGoogleCloudApihubV1ExecutionStatus++;
  if (buildCounterGoogleCloudApihubV1ExecutionStatus < 3) {
    o.currentExecutionState = 'foo';
    o.lastExecution = buildGoogleCloudApihubV1LastExecution();
  }
  buildCounterGoogleCloudApihubV1ExecutionStatus--;
  return o;
}

void checkGoogleCloudApihubV1ExecutionStatus(
  api.GoogleCloudApihubV1ExecutionStatus o,
) {
  buildCounterGoogleCloudApihubV1ExecutionStatus++;
  if (buildCounterGoogleCloudApihubV1ExecutionStatus < 3) {
    unittest.expect(o.currentExecutionState!, unittest.equals('foo'));
    checkGoogleCloudApihubV1LastExecution(o.lastExecution!);
  }
  buildCounterGoogleCloudApihubV1ExecutionStatus--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed25() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed25(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
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

core.int buildCounterGoogleCloudApihubV1ExternalApi = 0;
api.GoogleCloudApihubV1ExternalApi buildGoogleCloudApihubV1ExternalApi() {
  final o = api.GoogleCloudApihubV1ExternalApi();
  buildCounterGoogleCloudApihubV1ExternalApi++;
  if (buildCounterGoogleCloudApihubV1ExternalApi < 3) {
    o.attributes = buildUnnamed25();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.endpoints = buildUnnamed26();
    o.name = 'foo';
    o.paths = buildUnnamed27();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1ExternalApi--;
  return o;
}

void checkGoogleCloudApihubV1ExternalApi(api.GoogleCloudApihubV1ExternalApi o) {
  buildCounterGoogleCloudApihubV1ExternalApi++;
  if (buildCounterGoogleCloudApihubV1ExternalApi < 3) {
    checkUnnamed25(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    checkUnnamed26(o.endpoints!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed27(o.paths!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ExternalApi--;
}

core.int buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig = 0;
api.GoogleCloudApihubV1GoogleServiceAccountConfig
buildGoogleCloudApihubV1GoogleServiceAccountConfig() {
  final o = api.GoogleCloudApihubV1GoogleServiceAccountConfig();
  buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig++;
  if (buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig < 3) {
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig--;
  return o;
}

void checkGoogleCloudApihubV1GoogleServiceAccountConfig(
  api.GoogleCloudApihubV1GoogleServiceAccountConfig o,
) {
  buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig++;
  if (buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig < 3) {
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1GoogleServiceAccountConfig--;
}

core.int buildCounterGoogleCloudApihubV1Header = 0;
api.GoogleCloudApihubV1Header buildGoogleCloudApihubV1Header() {
  final o = api.GoogleCloudApihubV1Header();
  buildCounterGoogleCloudApihubV1Header++;
  if (buildCounterGoogleCloudApihubV1Header < 3) {
    o.count = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1Header--;
  return o;
}

void checkGoogleCloudApihubV1Header(api.GoogleCloudApihubV1Header o) {
  buildCounterGoogleCloudApihubV1Header++;
  if (buildCounterGoogleCloudApihubV1Header < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Header--;
}

core.int buildCounterGoogleCloudApihubV1HostProjectRegistration = 0;
api.GoogleCloudApihubV1HostProjectRegistration
buildGoogleCloudApihubV1HostProjectRegistration() {
  final o = api.GoogleCloudApihubV1HostProjectRegistration();
  buildCounterGoogleCloudApihubV1HostProjectRegistration++;
  if (buildCounterGoogleCloudApihubV1HostProjectRegistration < 3) {
    o.createTime = 'foo';
    o.gcpProject = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1HostProjectRegistration--;
  return o;
}

void checkGoogleCloudApihubV1HostProjectRegistration(
  api.GoogleCloudApihubV1HostProjectRegistration o,
) {
  buildCounterGoogleCloudApihubV1HostProjectRegistration++;
  if (buildCounterGoogleCloudApihubV1HostProjectRegistration < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.gcpProject!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1HostProjectRegistration--;
}

core.int buildCounterGoogleCloudApihubV1HostingService = 0;
api.GoogleCloudApihubV1HostingService buildGoogleCloudApihubV1HostingService() {
  final o = api.GoogleCloudApihubV1HostingService();
  buildCounterGoogleCloudApihubV1HostingService++;
  if (buildCounterGoogleCloudApihubV1HostingService < 3) {
    o.serviceUri = 'foo';
  }
  buildCounterGoogleCloudApihubV1HostingService--;
  return o;
}

void checkGoogleCloudApihubV1HostingService(
  api.GoogleCloudApihubV1HostingService o,
) {
  buildCounterGoogleCloudApihubV1HostingService++;
  if (buildCounterGoogleCloudApihubV1HostingService < 3) {
    unittest.expect(o.serviceUri!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1HostingService--;
}

core.int buildCounterGoogleCloudApihubV1HttpOperation = 0;
api.GoogleCloudApihubV1HttpOperation buildGoogleCloudApihubV1HttpOperation() {
  final o = api.GoogleCloudApihubV1HttpOperation();
  buildCounterGoogleCloudApihubV1HttpOperation++;
  if (buildCounterGoogleCloudApihubV1HttpOperation < 3) {
    o.method = 'foo';
    o.path = buildGoogleCloudApihubV1Path();
  }
  buildCounterGoogleCloudApihubV1HttpOperation--;
  return o;
}

void checkGoogleCloudApihubV1HttpOperation(
  api.GoogleCloudApihubV1HttpOperation o,
) {
  buildCounterGoogleCloudApihubV1HttpOperation++;
  if (buildCounterGoogleCloudApihubV1HttpOperation < 3) {
    unittest.expect(o.method!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Path(o.path!);
  }
  buildCounterGoogleCloudApihubV1HttpOperation--;
}

core.List<api.GoogleCloudApihubV1PathParam> buildUnnamed28() => [
  buildGoogleCloudApihubV1PathParam(),
  buildGoogleCloudApihubV1PathParam(),
];

void checkUnnamed28(core.List<api.GoogleCloudApihubV1PathParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1PathParam(o[0]);
  checkGoogleCloudApihubV1PathParam(o[1]);
}

core.Map<core.String, api.GoogleCloudApihubV1QueryParam> buildUnnamed29() => {
  'x': buildGoogleCloudApihubV1QueryParam(),
  'y': buildGoogleCloudApihubV1QueryParam(),
};

void checkUnnamed29(
  core.Map<core.String, api.GoogleCloudApihubV1QueryParam> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1QueryParam(o['x']!);
  checkGoogleCloudApihubV1QueryParam(o['y']!);
}

core.int buildCounterGoogleCloudApihubV1HttpOperationDetails = 0;
api.GoogleCloudApihubV1HttpOperationDetails
buildGoogleCloudApihubV1HttpOperationDetails() {
  final o = api.GoogleCloudApihubV1HttpOperationDetails();
  buildCounterGoogleCloudApihubV1HttpOperationDetails++;
  if (buildCounterGoogleCloudApihubV1HttpOperationDetails < 3) {
    o.httpOperation = buildGoogleCloudApihubV1HttpOperation();
    o.pathParams = buildUnnamed28();
    o.queryParams = buildUnnamed29();
    o.request = buildGoogleCloudApihubV1HttpRequest();
    o.response = buildGoogleCloudApihubV1HttpResponse();
  }
  buildCounterGoogleCloudApihubV1HttpOperationDetails--;
  return o;
}

void checkGoogleCloudApihubV1HttpOperationDetails(
  api.GoogleCloudApihubV1HttpOperationDetails o,
) {
  buildCounterGoogleCloudApihubV1HttpOperationDetails++;
  if (buildCounterGoogleCloudApihubV1HttpOperationDetails < 3) {
    checkGoogleCloudApihubV1HttpOperation(o.httpOperation!);
    checkUnnamed28(o.pathParams!);
    checkUnnamed29(o.queryParams!);
    checkGoogleCloudApihubV1HttpRequest(o.request!);
    checkGoogleCloudApihubV1HttpResponse(o.response!);
  }
  buildCounterGoogleCloudApihubV1HttpOperationDetails--;
}

core.Map<core.String, api.GoogleCloudApihubV1Header> buildUnnamed30() => {
  'x': buildGoogleCloudApihubV1Header(),
  'y': buildGoogleCloudApihubV1Header(),
};

void checkUnnamed30(core.Map<core.String, api.GoogleCloudApihubV1Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Header(o['x']!);
  checkGoogleCloudApihubV1Header(o['y']!);
}

core.int buildCounterGoogleCloudApihubV1HttpRequest = 0;
api.GoogleCloudApihubV1HttpRequest buildGoogleCloudApihubV1HttpRequest() {
  final o = api.GoogleCloudApihubV1HttpRequest();
  buildCounterGoogleCloudApihubV1HttpRequest++;
  if (buildCounterGoogleCloudApihubV1HttpRequest < 3) {
    o.headers = buildUnnamed30();
  }
  buildCounterGoogleCloudApihubV1HttpRequest--;
  return o;
}

void checkGoogleCloudApihubV1HttpRequest(api.GoogleCloudApihubV1HttpRequest o) {
  buildCounterGoogleCloudApihubV1HttpRequest++;
  if (buildCounterGoogleCloudApihubV1HttpRequest < 3) {
    checkUnnamed30(o.headers!);
  }
  buildCounterGoogleCloudApihubV1HttpRequest--;
}

core.Map<core.String, api.GoogleCloudApihubV1Header> buildUnnamed31() => {
  'x': buildGoogleCloudApihubV1Header(),
  'y': buildGoogleCloudApihubV1Header(),
};

void checkUnnamed31(core.Map<core.String, api.GoogleCloudApihubV1Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Header(o['x']!);
  checkGoogleCloudApihubV1Header(o['y']!);
}

core.Map<core.String, core.String> buildUnnamed32() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1HttpResponse = 0;
api.GoogleCloudApihubV1HttpResponse buildGoogleCloudApihubV1HttpResponse() {
  final o = api.GoogleCloudApihubV1HttpResponse();
  buildCounterGoogleCloudApihubV1HttpResponse++;
  if (buildCounterGoogleCloudApihubV1HttpResponse < 3) {
    o.headers = buildUnnamed31();
    o.responseCodes = buildUnnamed32();
  }
  buildCounterGoogleCloudApihubV1HttpResponse--;
  return o;
}

void checkGoogleCloudApihubV1HttpResponse(
  api.GoogleCloudApihubV1HttpResponse o,
) {
  buildCounterGoogleCloudApihubV1HttpResponse++;
  if (buildCounterGoogleCloudApihubV1HttpResponse < 3) {
    checkUnnamed31(o.headers!);
    checkUnnamed32(o.responseCodes!);
  }
  buildCounterGoogleCloudApihubV1HttpResponse--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1Issue = 0;
api.GoogleCloudApihubV1Issue buildGoogleCloudApihubV1Issue() {
  final o = api.GoogleCloudApihubV1Issue();
  buildCounterGoogleCloudApihubV1Issue++;
  if (buildCounterGoogleCloudApihubV1Issue < 3) {
    o.code = 'foo';
    o.message = 'foo';
    o.path = buildUnnamed33();
    o.range = buildGoogleCloudApihubV1Range();
    o.severity = 'foo';
  }
  buildCounterGoogleCloudApihubV1Issue--;
  return o;
}

void checkGoogleCloudApihubV1Issue(api.GoogleCloudApihubV1Issue o) {
  buildCounterGoogleCloudApihubV1Issue++;
  if (buildCounterGoogleCloudApihubV1Issue < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    checkUnnamed33(o.path!);
    checkGoogleCloudApihubV1Range(o.range!);
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Issue--;
}

core.int buildCounterGoogleCloudApihubV1LastExecution = 0;
api.GoogleCloudApihubV1LastExecution buildGoogleCloudApihubV1LastExecution() {
  final o = api.GoogleCloudApihubV1LastExecution();
  buildCounterGoogleCloudApihubV1LastExecution++;
  if (buildCounterGoogleCloudApihubV1LastExecution < 3) {
    o.endTime = 'foo';
    o.errorMessage = 'foo';
    o.result = 'foo';
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1LastExecution--;
  return o;
}

void checkGoogleCloudApihubV1LastExecution(
  api.GoogleCloudApihubV1LastExecution o,
) {
  buildCounterGoogleCloudApihubV1LastExecution++;
  if (buildCounterGoogleCloudApihubV1LastExecution < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.result!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1LastExecution--;
}

core.List<api.GoogleCloudApihubV1Issue> buildUnnamed34() => [
  buildGoogleCloudApihubV1Issue(),
  buildGoogleCloudApihubV1Issue(),
];

void checkUnnamed34(core.List<api.GoogleCloudApihubV1Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Issue(o[0]);
  checkGoogleCloudApihubV1Issue(o[1]);
}

core.List<api.GoogleCloudApihubV1SummaryEntry> buildUnnamed35() => [
  buildGoogleCloudApihubV1SummaryEntry(),
  buildGoogleCloudApihubV1SummaryEntry(),
];

void checkUnnamed35(core.List<api.GoogleCloudApihubV1SummaryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SummaryEntry(o[0]);
  checkGoogleCloudApihubV1SummaryEntry(o[1]);
}

core.int buildCounterGoogleCloudApihubV1LintResponse = 0;
api.GoogleCloudApihubV1LintResponse buildGoogleCloudApihubV1LintResponse() {
  final o = api.GoogleCloudApihubV1LintResponse();
  buildCounterGoogleCloudApihubV1LintResponse++;
  if (buildCounterGoogleCloudApihubV1LintResponse < 3) {
    o.createTime = 'foo';
    o.issues = buildUnnamed34();
    o.linter = 'foo';
    o.source = 'foo';
    o.state = 'foo';
    o.summary = buildUnnamed35();
  }
  buildCounterGoogleCloudApihubV1LintResponse--;
  return o;
}

void checkGoogleCloudApihubV1LintResponse(
  api.GoogleCloudApihubV1LintResponse o,
) {
  buildCounterGoogleCloudApihubV1LintResponse++;
  if (buildCounterGoogleCloudApihubV1LintResponse < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed34(o.issues!);
    unittest.expect(o.linter!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed35(o.summary!);
  }
  buildCounterGoogleCloudApihubV1LintResponse--;
}

core.int buildCounterGoogleCloudApihubV1LintSpecRequest = 0;
api.GoogleCloudApihubV1LintSpecRequest
buildGoogleCloudApihubV1LintSpecRequest() {
  final o = api.GoogleCloudApihubV1LintSpecRequest();
  buildCounterGoogleCloudApihubV1LintSpecRequest++;
  if (buildCounterGoogleCloudApihubV1LintSpecRequest < 3) {}
  buildCounterGoogleCloudApihubV1LintSpecRequest--;
  return o;
}

void checkGoogleCloudApihubV1LintSpecRequest(
  api.GoogleCloudApihubV1LintSpecRequest o,
) {
  buildCounterGoogleCloudApihubV1LintSpecRequest++;
  if (buildCounterGoogleCloudApihubV1LintSpecRequest < 3) {}
  buildCounterGoogleCloudApihubV1LintSpecRequest--;
}

core.List<api.GoogleCloudApihubV1ApiOperation> buildUnnamed36() => [
  buildGoogleCloudApihubV1ApiOperation(),
  buildGoogleCloudApihubV1ApiOperation(),
];

void checkUnnamed36(core.List<api.GoogleCloudApihubV1ApiOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ApiOperation(o[0]);
  checkGoogleCloudApihubV1ApiOperation(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListApiOperationsResponse = 0;
api.GoogleCloudApihubV1ListApiOperationsResponse
buildGoogleCloudApihubV1ListApiOperationsResponse() {
  final o = api.GoogleCloudApihubV1ListApiOperationsResponse();
  buildCounterGoogleCloudApihubV1ListApiOperationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListApiOperationsResponse < 3) {
    o.apiOperations = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListApiOperationsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListApiOperationsResponse(
  api.GoogleCloudApihubV1ListApiOperationsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListApiOperationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListApiOperationsResponse < 3) {
    checkUnnamed36(o.apiOperations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListApiOperationsResponse--;
}

core.List<api.GoogleCloudApihubV1Api> buildUnnamed37() => [
  buildGoogleCloudApihubV1Api(),
  buildGoogleCloudApihubV1Api(),
];

void checkUnnamed37(core.List<api.GoogleCloudApihubV1Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Api(o[0]);
  checkGoogleCloudApihubV1Api(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListApisResponse = 0;
api.GoogleCloudApihubV1ListApisResponse
buildGoogleCloudApihubV1ListApisResponse() {
  final o = api.GoogleCloudApihubV1ListApisResponse();
  buildCounterGoogleCloudApihubV1ListApisResponse++;
  if (buildCounterGoogleCloudApihubV1ListApisResponse < 3) {
    o.apis = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListApisResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListApisResponse(
  api.GoogleCloudApihubV1ListApisResponse o,
) {
  buildCounterGoogleCloudApihubV1ListApisResponse++;
  if (buildCounterGoogleCloudApihubV1ListApisResponse < 3) {
    checkUnnamed37(o.apis!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListApisResponse--;
}

core.List<api.GoogleCloudApihubV1Attribute> buildUnnamed38() => [
  buildGoogleCloudApihubV1Attribute(),
  buildGoogleCloudApihubV1Attribute(),
];

void checkUnnamed38(core.List<api.GoogleCloudApihubV1Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Attribute(o[0]);
  checkGoogleCloudApihubV1Attribute(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListAttributesResponse = 0;
api.GoogleCloudApihubV1ListAttributesResponse
buildGoogleCloudApihubV1ListAttributesResponse() {
  final o = api.GoogleCloudApihubV1ListAttributesResponse();
  buildCounterGoogleCloudApihubV1ListAttributesResponse++;
  if (buildCounterGoogleCloudApihubV1ListAttributesResponse < 3) {
    o.attributes = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListAttributesResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListAttributesResponse(
  api.GoogleCloudApihubV1ListAttributesResponse o,
) {
  buildCounterGoogleCloudApihubV1ListAttributesResponse++;
  if (buildCounterGoogleCloudApihubV1ListAttributesResponse < 3) {
    checkUnnamed38(o.attributes!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListAttributesResponse--;
}

core.List<api.GoogleCloudApihubV1Curation> buildUnnamed39() => [
  buildGoogleCloudApihubV1Curation(),
  buildGoogleCloudApihubV1Curation(),
];

void checkUnnamed39(core.List<api.GoogleCloudApihubV1Curation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Curation(o[0]);
  checkGoogleCloudApihubV1Curation(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListCurationsResponse = 0;
api.GoogleCloudApihubV1ListCurationsResponse
buildGoogleCloudApihubV1ListCurationsResponse() {
  final o = api.GoogleCloudApihubV1ListCurationsResponse();
  buildCounterGoogleCloudApihubV1ListCurationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListCurationsResponse < 3) {
    o.curations = buildUnnamed39();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListCurationsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListCurationsResponse(
  api.GoogleCloudApihubV1ListCurationsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListCurationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListCurationsResponse < 3) {
    checkUnnamed39(o.curations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListCurationsResponse--;
}

core.List<api.GoogleCloudApihubV1Dependency> buildUnnamed40() => [
  buildGoogleCloudApihubV1Dependency(),
  buildGoogleCloudApihubV1Dependency(),
];

void checkUnnamed40(core.List<api.GoogleCloudApihubV1Dependency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Dependency(o[0]);
  checkGoogleCloudApihubV1Dependency(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListDependenciesResponse = 0;
api.GoogleCloudApihubV1ListDependenciesResponse
buildGoogleCloudApihubV1ListDependenciesResponse() {
  final o = api.GoogleCloudApihubV1ListDependenciesResponse();
  buildCounterGoogleCloudApihubV1ListDependenciesResponse++;
  if (buildCounterGoogleCloudApihubV1ListDependenciesResponse < 3) {
    o.dependencies = buildUnnamed40();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListDependenciesResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListDependenciesResponse(
  api.GoogleCloudApihubV1ListDependenciesResponse o,
) {
  buildCounterGoogleCloudApihubV1ListDependenciesResponse++;
  if (buildCounterGoogleCloudApihubV1ListDependenciesResponse < 3) {
    checkUnnamed40(o.dependencies!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListDependenciesResponse--;
}

core.List<api.GoogleCloudApihubV1Deployment> buildUnnamed41() => [
  buildGoogleCloudApihubV1Deployment(),
  buildGoogleCloudApihubV1Deployment(),
];

void checkUnnamed41(core.List<api.GoogleCloudApihubV1Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Deployment(o[0]);
  checkGoogleCloudApihubV1Deployment(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListDeploymentsResponse = 0;
api.GoogleCloudApihubV1ListDeploymentsResponse
buildGoogleCloudApihubV1ListDeploymentsResponse() {
  final o = api.GoogleCloudApihubV1ListDeploymentsResponse();
  buildCounterGoogleCloudApihubV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed41();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListDeploymentsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListDeploymentsResponse(
  api.GoogleCloudApihubV1ListDeploymentsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListDeploymentsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDeploymentsResponse < 3) {
    checkUnnamed41(o.deployments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListDeploymentsResponse--;
}

core.List<api.GoogleCloudApihubV1DiscoveredApiObservation> buildUnnamed42() => [
  buildGoogleCloudApihubV1DiscoveredApiObservation(),
  buildGoogleCloudApihubV1DiscoveredApiObservation(),
];

void checkUnnamed42(
  core.List<api.GoogleCloudApihubV1DiscoveredApiObservation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1DiscoveredApiObservation(o[0]);
  checkGoogleCloudApihubV1DiscoveredApiObservation(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse =
    0;
api.GoogleCloudApihubV1ListDiscoveredApiObservationsResponse
buildGoogleCloudApihubV1ListDiscoveredApiObservationsResponse() {
  final o = api.GoogleCloudApihubV1ListDiscoveredApiObservationsResponse();
  buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse <
      3) {
    o.discoveredApiObservations = buildUnnamed42();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListDiscoveredApiObservationsResponse(
  api.GoogleCloudApihubV1ListDiscoveredApiObservationsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse <
      3) {
    checkUnnamed42(o.discoveredApiObservations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListDiscoveredApiObservationsResponse--;
}

core.List<api.GoogleCloudApihubV1DiscoveredApiOperation> buildUnnamed43() => [
  buildGoogleCloudApihubV1DiscoveredApiOperation(),
  buildGoogleCloudApihubV1DiscoveredApiOperation(),
];

void checkUnnamed43(
  core.List<api.GoogleCloudApihubV1DiscoveredApiOperation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1DiscoveredApiOperation(o[0]);
  checkGoogleCloudApihubV1DiscoveredApiOperation(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse = 0;
api.GoogleCloudApihubV1ListDiscoveredApiOperationsResponse
buildGoogleCloudApihubV1ListDiscoveredApiOperationsResponse() {
  final o = api.GoogleCloudApihubV1ListDiscoveredApiOperationsResponse();
  buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse < 3) {
    o.discoveredApiOperations = buildUnnamed43();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListDiscoveredApiOperationsResponse(
  api.GoogleCloudApihubV1ListDiscoveredApiOperationsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse < 3) {
    checkUnnamed43(o.discoveredApiOperations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListDiscoveredApiOperationsResponse--;
}

core.List<api.GoogleCloudApihubV1ExternalApi> buildUnnamed44() => [
  buildGoogleCloudApihubV1ExternalApi(),
  buildGoogleCloudApihubV1ExternalApi(),
];

void checkUnnamed44(core.List<api.GoogleCloudApihubV1ExternalApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ExternalApi(o[0]);
  checkGoogleCloudApihubV1ExternalApi(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListExternalApisResponse = 0;
api.GoogleCloudApihubV1ListExternalApisResponse
buildGoogleCloudApihubV1ListExternalApisResponse() {
  final o = api.GoogleCloudApihubV1ListExternalApisResponse();
  buildCounterGoogleCloudApihubV1ListExternalApisResponse++;
  if (buildCounterGoogleCloudApihubV1ListExternalApisResponse < 3) {
    o.externalApis = buildUnnamed44();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListExternalApisResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListExternalApisResponse(
  api.GoogleCloudApihubV1ListExternalApisResponse o,
) {
  buildCounterGoogleCloudApihubV1ListExternalApisResponse++;
  if (buildCounterGoogleCloudApihubV1ListExternalApisResponse < 3) {
    checkUnnamed44(o.externalApis!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListExternalApisResponse--;
}

core.List<api.GoogleCloudApihubV1HostProjectRegistration> buildUnnamed45() => [
  buildGoogleCloudApihubV1HostProjectRegistration(),
  buildGoogleCloudApihubV1HostProjectRegistration(),
];

void checkUnnamed45(
  core.List<api.GoogleCloudApihubV1HostProjectRegistration> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1HostProjectRegistration(o[0]);
  checkGoogleCloudApihubV1HostProjectRegistration(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse =
    0;
api.GoogleCloudApihubV1ListHostProjectRegistrationsResponse
buildGoogleCloudApihubV1ListHostProjectRegistrationsResponse() {
  final o = api.GoogleCloudApihubV1ListHostProjectRegistrationsResponse();
  buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse < 3) {
    o.hostProjectRegistrations = buildUnnamed45();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListHostProjectRegistrationsResponse(
  api.GoogleCloudApihubV1ListHostProjectRegistrationsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse++;
  if (buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse < 3) {
    checkUnnamed45(o.hostProjectRegistrations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ListHostProjectRegistrationsResponse--;
}

core.List<api.GoogleCloudApihubV1PluginInstance> buildUnnamed46() => [
  buildGoogleCloudApihubV1PluginInstance(),
  buildGoogleCloudApihubV1PluginInstance(),
];

void checkUnnamed46(core.List<api.GoogleCloudApihubV1PluginInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1PluginInstance(o[0]);
  checkGoogleCloudApihubV1PluginInstance(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListPluginInstancesResponse = 0;
api.GoogleCloudApihubV1ListPluginInstancesResponse
buildGoogleCloudApihubV1ListPluginInstancesResponse() {
  final o = api.GoogleCloudApihubV1ListPluginInstancesResponse();
  buildCounterGoogleCloudApihubV1ListPluginInstancesResponse++;
  if (buildCounterGoogleCloudApihubV1ListPluginInstancesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pluginInstances = buildUnnamed46();
  }
  buildCounterGoogleCloudApihubV1ListPluginInstancesResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListPluginInstancesResponse(
  api.GoogleCloudApihubV1ListPluginInstancesResponse o,
) {
  buildCounterGoogleCloudApihubV1ListPluginInstancesResponse++;
  if (buildCounterGoogleCloudApihubV1ListPluginInstancesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed46(o.pluginInstances!);
  }
  buildCounterGoogleCloudApihubV1ListPluginInstancesResponse--;
}

core.List<api.GoogleCloudApihubV1Plugin> buildUnnamed47() => [
  buildGoogleCloudApihubV1Plugin(),
  buildGoogleCloudApihubV1Plugin(),
];

void checkUnnamed47(core.List<api.GoogleCloudApihubV1Plugin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Plugin(o[0]);
  checkGoogleCloudApihubV1Plugin(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListPluginsResponse = 0;
api.GoogleCloudApihubV1ListPluginsResponse
buildGoogleCloudApihubV1ListPluginsResponse() {
  final o = api.GoogleCloudApihubV1ListPluginsResponse();
  buildCounterGoogleCloudApihubV1ListPluginsResponse++;
  if (buildCounterGoogleCloudApihubV1ListPluginsResponse < 3) {
    o.nextPageToken = 'foo';
    o.plugins = buildUnnamed47();
  }
  buildCounterGoogleCloudApihubV1ListPluginsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListPluginsResponse(
  api.GoogleCloudApihubV1ListPluginsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListPluginsResponse++;
  if (buildCounterGoogleCloudApihubV1ListPluginsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed47(o.plugins!);
  }
  buildCounterGoogleCloudApihubV1ListPluginsResponse--;
}

core.List<api.GoogleCloudApihubV1RuntimeProjectAttachment> buildUnnamed48() => [
  buildGoogleCloudApihubV1RuntimeProjectAttachment(),
  buildGoogleCloudApihubV1RuntimeProjectAttachment(),
];

void checkUnnamed48(
  core.List<api.GoogleCloudApihubV1RuntimeProjectAttachment> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1RuntimeProjectAttachment(o[0]);
  checkGoogleCloudApihubV1RuntimeProjectAttachment(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse =
    0;
api.GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse
buildGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse() {
  final o = api.GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse();
  buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse++;
  if (buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.runtimeProjectAttachments = buildUnnamed48();
  }
  buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse(
  api.GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse++;
  if (buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed48(o.runtimeProjectAttachments!);
  }
  buildCounterGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse--;
}

core.List<api.GoogleCloudApihubV1Spec> buildUnnamed49() => [
  buildGoogleCloudApihubV1Spec(),
  buildGoogleCloudApihubV1Spec(),
];

void checkUnnamed49(core.List<api.GoogleCloudApihubV1Spec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Spec(o[0]);
  checkGoogleCloudApihubV1Spec(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListSpecsResponse = 0;
api.GoogleCloudApihubV1ListSpecsResponse
buildGoogleCloudApihubV1ListSpecsResponse() {
  final o = api.GoogleCloudApihubV1ListSpecsResponse();
  buildCounterGoogleCloudApihubV1ListSpecsResponse++;
  if (buildCounterGoogleCloudApihubV1ListSpecsResponse < 3) {
    o.nextPageToken = 'foo';
    o.specs = buildUnnamed49();
  }
  buildCounterGoogleCloudApihubV1ListSpecsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListSpecsResponse(
  api.GoogleCloudApihubV1ListSpecsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListSpecsResponse++;
  if (buildCounterGoogleCloudApihubV1ListSpecsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed49(o.specs!);
  }
  buildCounterGoogleCloudApihubV1ListSpecsResponse--;
}

core.List<api.GoogleCloudApihubV1Version> buildUnnamed50() => [
  buildGoogleCloudApihubV1Version(),
  buildGoogleCloudApihubV1Version(),
];

void checkUnnamed50(core.List<api.GoogleCloudApihubV1Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1Version(o[0]);
  checkGoogleCloudApihubV1Version(o[1]);
}

core.int buildCounterGoogleCloudApihubV1ListVersionsResponse = 0;
api.GoogleCloudApihubV1ListVersionsResponse
buildGoogleCloudApihubV1ListVersionsResponse() {
  final o = api.GoogleCloudApihubV1ListVersionsResponse();
  buildCounterGoogleCloudApihubV1ListVersionsResponse++;
  if (buildCounterGoogleCloudApihubV1ListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed50();
  }
  buildCounterGoogleCloudApihubV1ListVersionsResponse--;
  return o;
}

void checkGoogleCloudApihubV1ListVersionsResponse(
  api.GoogleCloudApihubV1ListVersionsResponse o,
) {
  buildCounterGoogleCloudApihubV1ListVersionsResponse++;
  if (buildCounterGoogleCloudApihubV1ListVersionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed50(o.versions!);
  }
  buildCounterGoogleCloudApihubV1ListVersionsResponse--;
}

core.int buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse = 0;
api.GoogleCloudApihubV1LookupApiHubInstanceResponse
buildGoogleCloudApihubV1LookupApiHubInstanceResponse() {
  final o = api.GoogleCloudApihubV1LookupApiHubInstanceResponse();
  buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse++;
  if (buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse < 3) {
    o.apiHubInstance = buildGoogleCloudApihubV1ApiHubInstance();
  }
  buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse--;
  return o;
}

void checkGoogleCloudApihubV1LookupApiHubInstanceResponse(
  api.GoogleCloudApihubV1LookupApiHubInstanceResponse o,
) {
  buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse++;
  if (buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse < 3) {
    checkGoogleCloudApihubV1ApiHubInstance(o.apiHubInstance!);
  }
  buildCounterGoogleCloudApihubV1LookupApiHubInstanceResponse--;
}

core.int buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse =
    0;
api.GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse
buildGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse() {
  final o = api.GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse();
  buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse++;
  if (buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse <
      3) {
    o.runtimeProjectAttachment =
        buildGoogleCloudApihubV1RuntimeProjectAttachment();
  }
  buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse--;
  return o;
}

void checkGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse(
  api.GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse o,
) {
  buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse++;
  if (buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse <
      3) {
    checkGoogleCloudApihubV1RuntimeProjectAttachment(
      o.runtimeProjectAttachment!,
    );
  }
  buildCounterGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse--;
}

core.int buildCounterGoogleCloudApihubV1MatchResult = 0;
api.GoogleCloudApihubV1MatchResult buildGoogleCloudApihubV1MatchResult() {
  final o = api.GoogleCloudApihubV1MatchResult();
  buildCounterGoogleCloudApihubV1MatchResult++;
  if (buildCounterGoogleCloudApihubV1MatchResult < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1MatchResult--;
  return o;
}

void checkGoogleCloudApihubV1MatchResult(api.GoogleCloudApihubV1MatchResult o) {
  buildCounterGoogleCloudApihubV1MatchResult++;
  if (buildCounterGoogleCloudApihubV1MatchResult < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1MatchResult--;
}

core.List<core.int> buildUnnamed51() => [42, 42];

void checkUnnamed51(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGoogleCloudApihubV1MultiIntValues = 0;
api.GoogleCloudApihubV1MultiIntValues buildGoogleCloudApihubV1MultiIntValues() {
  final o = api.GoogleCloudApihubV1MultiIntValues();
  buildCounterGoogleCloudApihubV1MultiIntValues++;
  if (buildCounterGoogleCloudApihubV1MultiIntValues < 3) {
    o.values = buildUnnamed51();
  }
  buildCounterGoogleCloudApihubV1MultiIntValues--;
  return o;
}

void checkGoogleCloudApihubV1MultiIntValues(
  api.GoogleCloudApihubV1MultiIntValues o,
) {
  buildCounterGoogleCloudApihubV1MultiIntValues++;
  if (buildCounterGoogleCloudApihubV1MultiIntValues < 3) {
    checkUnnamed51(o.values!);
  }
  buildCounterGoogleCloudApihubV1MultiIntValues--;
}

core.List<api.GoogleCloudApihubV1ConfigValueOption> buildUnnamed52() => [
  buildGoogleCloudApihubV1ConfigValueOption(),
  buildGoogleCloudApihubV1ConfigValueOption(),
];

void checkUnnamed52(core.List<api.GoogleCloudApihubV1ConfigValueOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ConfigValueOption(o[0]);
  checkGoogleCloudApihubV1ConfigValueOption(o[1]);
}

core.int buildCounterGoogleCloudApihubV1MultiSelectValues = 0;
api.GoogleCloudApihubV1MultiSelectValues
buildGoogleCloudApihubV1MultiSelectValues() {
  final o = api.GoogleCloudApihubV1MultiSelectValues();
  buildCounterGoogleCloudApihubV1MultiSelectValues++;
  if (buildCounterGoogleCloudApihubV1MultiSelectValues < 3) {
    o.values = buildUnnamed52();
  }
  buildCounterGoogleCloudApihubV1MultiSelectValues--;
  return o;
}

void checkGoogleCloudApihubV1MultiSelectValues(
  api.GoogleCloudApihubV1MultiSelectValues o,
) {
  buildCounterGoogleCloudApihubV1MultiSelectValues++;
  if (buildCounterGoogleCloudApihubV1MultiSelectValues < 3) {
    checkUnnamed52(o.values!);
  }
  buildCounterGoogleCloudApihubV1MultiSelectValues--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1MultiStringValues = 0;
api.GoogleCloudApihubV1MultiStringValues
buildGoogleCloudApihubV1MultiStringValues() {
  final o = api.GoogleCloudApihubV1MultiStringValues();
  buildCounterGoogleCloudApihubV1MultiStringValues++;
  if (buildCounterGoogleCloudApihubV1MultiStringValues < 3) {
    o.values = buildUnnamed53();
  }
  buildCounterGoogleCloudApihubV1MultiStringValues--;
  return o;
}

void checkGoogleCloudApihubV1MultiStringValues(
  api.GoogleCloudApihubV1MultiStringValues o,
) {
  buildCounterGoogleCloudApihubV1MultiStringValues++;
  if (buildCounterGoogleCloudApihubV1MultiStringValues < 3) {
    checkUnnamed53(o.values!);
  }
  buildCounterGoogleCloudApihubV1MultiStringValues--;
}

core.int buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig = 0;
api.GoogleCloudApihubV1Oauth2ClientCredentialsConfig
buildGoogleCloudApihubV1Oauth2ClientCredentialsConfig() {
  final o = api.GoogleCloudApihubV1Oauth2ClientCredentialsConfig();
  buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig++;
  if (buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig < 3) {
    o.clientId = 'foo';
    o.clientSecret = buildGoogleCloudApihubV1Secret();
  }
  buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig--;
  return o;
}

void checkGoogleCloudApihubV1Oauth2ClientCredentialsConfig(
  api.GoogleCloudApihubV1Oauth2ClientCredentialsConfig o,
) {
  buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig++;
  if (buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig < 3) {
    unittest.expect(o.clientId!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Secret(o.clientSecret!);
  }
  buildCounterGoogleCloudApihubV1Oauth2ClientCredentialsConfig--;
}

core.int buildCounterGoogleCloudApihubV1OpenApiSpecDetails = 0;
api.GoogleCloudApihubV1OpenApiSpecDetails
buildGoogleCloudApihubV1OpenApiSpecDetails() {
  final o = api.GoogleCloudApihubV1OpenApiSpecDetails();
  buildCounterGoogleCloudApihubV1OpenApiSpecDetails++;
  if (buildCounterGoogleCloudApihubV1OpenApiSpecDetails < 3) {
    o.format = 'foo';
    o.owner = buildGoogleCloudApihubV1Owner();
    o.version = 'foo';
  }
  buildCounterGoogleCloudApihubV1OpenApiSpecDetails--;
  return o;
}

void checkGoogleCloudApihubV1OpenApiSpecDetails(
  api.GoogleCloudApihubV1OpenApiSpecDetails o,
) {
  buildCounterGoogleCloudApihubV1OpenApiSpecDetails++;
  if (buildCounterGoogleCloudApihubV1OpenApiSpecDetails < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Owner(o.owner!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1OpenApiSpecDetails--;
}

core.int buildCounterGoogleCloudApihubV1OperationDetails = 0;
api.GoogleCloudApihubV1OperationDetails
buildGoogleCloudApihubV1OperationDetails() {
  final o = api.GoogleCloudApihubV1OperationDetails();
  buildCounterGoogleCloudApihubV1OperationDetails++;
  if (buildCounterGoogleCloudApihubV1OperationDetails < 3) {
    o.deprecated = true;
    o.description = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.httpOperation = buildGoogleCloudApihubV1HttpOperation();
  }
  buildCounterGoogleCloudApihubV1OperationDetails--;
  return o;
}

void checkGoogleCloudApihubV1OperationDetails(
  api.GoogleCloudApihubV1OperationDetails o,
) {
  buildCounterGoogleCloudApihubV1OperationDetails++;
  if (buildCounterGoogleCloudApihubV1OperationDetails < 3) {
    unittest.expect(o.deprecated!, unittest.isTrue);
    unittest.expect(o.description!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    checkGoogleCloudApihubV1HttpOperation(o.httpOperation!);
  }
  buildCounterGoogleCloudApihubV1OperationDetails--;
}

core.int buildCounterGoogleCloudApihubV1Owner = 0;
api.GoogleCloudApihubV1Owner buildGoogleCloudApihubV1Owner() {
  final o = api.GoogleCloudApihubV1Owner();
  buildCounterGoogleCloudApihubV1Owner++;
  if (buildCounterGoogleCloudApihubV1Owner < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
  }
  buildCounterGoogleCloudApihubV1Owner--;
  return o;
}

void checkGoogleCloudApihubV1Owner(api.GoogleCloudApihubV1Owner o) {
  buildCounterGoogleCloudApihubV1Owner++;
  if (buildCounterGoogleCloudApihubV1Owner < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Owner--;
}

core.int buildCounterGoogleCloudApihubV1Path = 0;
api.GoogleCloudApihubV1Path buildGoogleCloudApihubV1Path() {
  final o = api.GoogleCloudApihubV1Path();
  buildCounterGoogleCloudApihubV1Path++;
  if (buildCounterGoogleCloudApihubV1Path < 3) {
    o.description = 'foo';
    o.path = 'foo';
  }
  buildCounterGoogleCloudApihubV1Path--;
  return o;
}

void checkGoogleCloudApihubV1Path(api.GoogleCloudApihubV1Path o) {
  buildCounterGoogleCloudApihubV1Path++;
  if (buildCounterGoogleCloudApihubV1Path < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Path--;
}

core.int buildCounterGoogleCloudApihubV1PathParam = 0;
api.GoogleCloudApihubV1PathParam buildGoogleCloudApihubV1PathParam() {
  final o = api.GoogleCloudApihubV1PathParam();
  buildCounterGoogleCloudApihubV1PathParam++;
  if (buildCounterGoogleCloudApihubV1PathParam < 3) {
    o.dataType = 'foo';
    o.position = 42;
  }
  buildCounterGoogleCloudApihubV1PathParam--;
  return o;
}

void checkGoogleCloudApihubV1PathParam(api.GoogleCloudApihubV1PathParam o) {
  buildCounterGoogleCloudApihubV1PathParam++;
  if (buildCounterGoogleCloudApihubV1PathParam < 3) {
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.position!, unittest.equals(42));
  }
  buildCounterGoogleCloudApihubV1PathParam--;
}

core.List<api.GoogleCloudApihubV1PluginActionConfig> buildUnnamed54() => [
  buildGoogleCloudApihubV1PluginActionConfig(),
  buildGoogleCloudApihubV1PluginActionConfig(),
];

void checkUnnamed54(core.List<api.GoogleCloudApihubV1PluginActionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1PluginActionConfig(o[0]);
  checkGoogleCloudApihubV1PluginActionConfig(o[1]);
}

core.int buildCounterGoogleCloudApihubV1Plugin = 0;
api.GoogleCloudApihubV1Plugin buildGoogleCloudApihubV1Plugin() {
  final o = api.GoogleCloudApihubV1Plugin();
  buildCounterGoogleCloudApihubV1Plugin++;
  if (buildCounterGoogleCloudApihubV1Plugin < 3) {
    o.actionsConfig = buildUnnamed54();
    o.configTemplate = buildGoogleCloudApihubV1ConfigTemplate();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.gatewayType = 'foo';
    o.hostingService = buildGoogleCloudApihubV1HostingService();
    o.name = 'foo';
    o.ownershipType = 'foo';
    o.pluginCategory = 'foo';
    o.state = 'foo';
    o.type = buildGoogleCloudApihubV1AttributeValues();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Plugin--;
  return o;
}

void checkGoogleCloudApihubV1Plugin(api.GoogleCloudApihubV1Plugin o) {
  buildCounterGoogleCloudApihubV1Plugin++;
  if (buildCounterGoogleCloudApihubV1Plugin < 3) {
    checkUnnamed54(o.actionsConfig!);
    checkGoogleCloudApihubV1ConfigTemplate(o.configTemplate!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    unittest.expect(o.gatewayType!, unittest.equals('foo'));
    checkGoogleCloudApihubV1HostingService(o.hostingService!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownershipType!, unittest.equals('foo'));
    unittest.expect(o.pluginCategory!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.type!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Plugin--;
}

core.int buildCounterGoogleCloudApihubV1PluginActionConfig = 0;
api.GoogleCloudApihubV1PluginActionConfig
buildGoogleCloudApihubV1PluginActionConfig() {
  final o = api.GoogleCloudApihubV1PluginActionConfig();
  buildCounterGoogleCloudApihubV1PluginActionConfig++;
  if (buildCounterGoogleCloudApihubV1PluginActionConfig < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.triggerMode = 'foo';
  }
  buildCounterGoogleCloudApihubV1PluginActionConfig--;
  return o;
}

void checkGoogleCloudApihubV1PluginActionConfig(
  api.GoogleCloudApihubV1PluginActionConfig o,
) {
  buildCounterGoogleCloudApihubV1PluginActionConfig++;
  if (buildCounterGoogleCloudApihubV1PluginActionConfig < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.triggerMode!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1PluginActionConfig--;
}

core.List<api.GoogleCloudApihubV1PluginInstanceAction> buildUnnamed55() => [
  buildGoogleCloudApihubV1PluginInstanceAction(),
  buildGoogleCloudApihubV1PluginInstanceAction(),
];

void checkUnnamed55(core.List<api.GoogleCloudApihubV1PluginInstanceAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1PluginInstanceAction(o[0]);
  checkGoogleCloudApihubV1PluginInstanceAction(o[1]);
}

core.Map<core.String, api.GoogleCloudApihubV1ConfigVariable> buildUnnamed56() =>
    {
      'x': buildGoogleCloudApihubV1ConfigVariable(),
      'y': buildGoogleCloudApihubV1ConfigVariable(),
    };

void checkUnnamed56(
  core.Map<core.String, api.GoogleCloudApihubV1ConfigVariable> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1ConfigVariable(o['x']!);
  checkGoogleCloudApihubV1ConfigVariable(o['y']!);
}

core.int buildCounterGoogleCloudApihubV1PluginInstance = 0;
api.GoogleCloudApihubV1PluginInstance buildGoogleCloudApihubV1PluginInstance() {
  final o = api.GoogleCloudApihubV1PluginInstance();
  buildCounterGoogleCloudApihubV1PluginInstance++;
  if (buildCounterGoogleCloudApihubV1PluginInstance < 3) {
    o.actions = buildUnnamed55();
    o.additionalConfig = buildUnnamed56();
    o.authConfig = buildGoogleCloudApihubV1AuthConfig();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.errorMessage = 'foo';
    o.name = 'foo';
    o.sourceProjectId = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1PluginInstance--;
  return o;
}

void checkGoogleCloudApihubV1PluginInstance(
  api.GoogleCloudApihubV1PluginInstance o,
) {
  buildCounterGoogleCloudApihubV1PluginInstance++;
  if (buildCounterGoogleCloudApihubV1PluginInstance < 3) {
    checkUnnamed55(o.actions!);
    checkUnnamed56(o.additionalConfig!);
    checkGoogleCloudApihubV1AuthConfig(o.authConfig!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.sourceProjectId!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1PluginInstance--;
}

core.int buildCounterGoogleCloudApihubV1PluginInstanceAction = 0;
api.GoogleCloudApihubV1PluginInstanceAction
buildGoogleCloudApihubV1PluginInstanceAction() {
  final o = api.GoogleCloudApihubV1PluginInstanceAction();
  buildCounterGoogleCloudApihubV1PluginInstanceAction++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceAction < 3) {
    o.actionId = 'foo';
    o.curationConfig = buildGoogleCloudApihubV1CurationConfig();
    o.hubInstanceAction = buildGoogleCloudApihubV1ExecutionStatus();
    o.resourceConfig = buildGoogleCloudApihubV1ResourceConfig();
    o.scheduleCronExpression = 'foo';
    o.scheduleTimeZone = 'foo';
    o.serviceAccount = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudApihubV1PluginInstanceAction--;
  return o;
}

void checkGoogleCloudApihubV1PluginInstanceAction(
  api.GoogleCloudApihubV1PluginInstanceAction o,
) {
  buildCounterGoogleCloudApihubV1PluginInstanceAction++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceAction < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
    checkGoogleCloudApihubV1CurationConfig(o.curationConfig!);
    checkGoogleCloudApihubV1ExecutionStatus(o.hubInstanceAction!);
    checkGoogleCloudApihubV1ResourceConfig(o.resourceConfig!);
    unittest.expect(o.scheduleCronExpression!, unittest.equals('foo'));
    unittest.expect(o.scheduleTimeZone!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1PluginInstanceAction--;
}

core.int buildCounterGoogleCloudApihubV1PluginInstanceActionID = 0;
api.GoogleCloudApihubV1PluginInstanceActionID
buildGoogleCloudApihubV1PluginInstanceActionID() {
  final o = api.GoogleCloudApihubV1PluginInstanceActionID();
  buildCounterGoogleCloudApihubV1PluginInstanceActionID++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceActionID < 3) {
    o.actionId = 'foo';
    o.pluginInstance = 'foo';
  }
  buildCounterGoogleCloudApihubV1PluginInstanceActionID--;
  return o;
}

void checkGoogleCloudApihubV1PluginInstanceActionID(
  api.GoogleCloudApihubV1PluginInstanceActionID o,
) {
  buildCounterGoogleCloudApihubV1PluginInstanceActionID++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceActionID < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
    unittest.expect(o.pluginInstance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1PluginInstanceActionID--;
}

core.int buildCounterGoogleCloudApihubV1PluginInstanceActionSource = 0;
api.GoogleCloudApihubV1PluginInstanceActionSource
buildGoogleCloudApihubV1PluginInstanceActionSource() {
  final o = api.GoogleCloudApihubV1PluginInstanceActionSource();
  buildCounterGoogleCloudApihubV1PluginInstanceActionSource++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceActionSource < 3) {
    o.actionId = 'foo';
    o.pluginInstance = 'foo';
  }
  buildCounterGoogleCloudApihubV1PluginInstanceActionSource--;
  return o;
}

void checkGoogleCloudApihubV1PluginInstanceActionSource(
  api.GoogleCloudApihubV1PluginInstanceActionSource o,
) {
  buildCounterGoogleCloudApihubV1PluginInstanceActionSource++;
  if (buildCounterGoogleCloudApihubV1PluginInstanceActionSource < 3) {
    unittest.expect(o.actionId!, unittest.equals('foo'));
    unittest.expect(o.pluginInstance!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1PluginInstanceActionSource--;
}

core.int buildCounterGoogleCloudApihubV1Point = 0;
api.GoogleCloudApihubV1Point buildGoogleCloudApihubV1Point() {
  final o = api.GoogleCloudApihubV1Point();
  buildCounterGoogleCloudApihubV1Point++;
  if (buildCounterGoogleCloudApihubV1Point < 3) {
    o.character = 42;
    o.line = 42;
  }
  buildCounterGoogleCloudApihubV1Point--;
  return o;
}

void checkGoogleCloudApihubV1Point(api.GoogleCloudApihubV1Point o) {
  buildCounterGoogleCloudApihubV1Point++;
  if (buildCounterGoogleCloudApihubV1Point < 3) {
    unittest.expect(o.character!, unittest.equals(42));
    unittest.expect(o.line!, unittest.equals(42));
  }
  buildCounterGoogleCloudApihubV1Point--;
}

core.int buildCounterGoogleCloudApihubV1QueryParam = 0;
api.GoogleCloudApihubV1QueryParam buildGoogleCloudApihubV1QueryParam() {
  final o = api.GoogleCloudApihubV1QueryParam();
  buildCounterGoogleCloudApihubV1QueryParam++;
  if (buildCounterGoogleCloudApihubV1QueryParam < 3) {
    o.count = 'foo';
    o.dataType = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1QueryParam--;
  return o;
}

void checkGoogleCloudApihubV1QueryParam(api.GoogleCloudApihubV1QueryParam o) {
  buildCounterGoogleCloudApihubV1QueryParam++;
  if (buildCounterGoogleCloudApihubV1QueryParam < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.dataType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1QueryParam--;
}

core.int buildCounterGoogleCloudApihubV1Range = 0;
api.GoogleCloudApihubV1Range buildGoogleCloudApihubV1Range() {
  final o = api.GoogleCloudApihubV1Range();
  buildCounterGoogleCloudApihubV1Range++;
  if (buildCounterGoogleCloudApihubV1Range < 3) {
    o.end = buildGoogleCloudApihubV1Point();
    o.start = buildGoogleCloudApihubV1Point();
  }
  buildCounterGoogleCloudApihubV1Range--;
  return o;
}

void checkGoogleCloudApihubV1Range(api.GoogleCloudApihubV1Range o) {
  buildCounterGoogleCloudApihubV1Range++;
  if (buildCounterGoogleCloudApihubV1Range < 3) {
    checkGoogleCloudApihubV1Point(o.end!);
    checkGoogleCloudApihubV1Point(o.start!);
  }
  buildCounterGoogleCloudApihubV1Range--;
}

core.int buildCounterGoogleCloudApihubV1ResourceConfig = 0;
api.GoogleCloudApihubV1ResourceConfig buildGoogleCloudApihubV1ResourceConfig() {
  final o = api.GoogleCloudApihubV1ResourceConfig();
  buildCounterGoogleCloudApihubV1ResourceConfig++;
  if (buildCounterGoogleCloudApihubV1ResourceConfig < 3) {
    o.actionType = 'foo';
    o.pubsubTopic = 'foo';
  }
  buildCounterGoogleCloudApihubV1ResourceConfig--;
  return o;
}

void checkGoogleCloudApihubV1ResourceConfig(
  api.GoogleCloudApihubV1ResourceConfig o,
) {
  buildCounterGoogleCloudApihubV1ResourceConfig++;
  if (buildCounterGoogleCloudApihubV1ResourceConfig < 3) {
    unittest.expect(o.actionType!, unittest.equals('foo'));
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1ResourceConfig--;
}

core.int buildCounterGoogleCloudApihubV1RuntimeProjectAttachment = 0;
api.GoogleCloudApihubV1RuntimeProjectAttachment
buildGoogleCloudApihubV1RuntimeProjectAttachment() {
  final o = api.GoogleCloudApihubV1RuntimeProjectAttachment();
  buildCounterGoogleCloudApihubV1RuntimeProjectAttachment++;
  if (buildCounterGoogleCloudApihubV1RuntimeProjectAttachment < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.runtimeProject = 'foo';
  }
  buildCounterGoogleCloudApihubV1RuntimeProjectAttachment--;
  return o;
}

void checkGoogleCloudApihubV1RuntimeProjectAttachment(
  api.GoogleCloudApihubV1RuntimeProjectAttachment o,
) {
  buildCounterGoogleCloudApihubV1RuntimeProjectAttachment++;
  if (buildCounterGoogleCloudApihubV1RuntimeProjectAttachment < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.runtimeProject!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1RuntimeProjectAttachment--;
}

core.int buildCounterGoogleCloudApihubV1Schema = 0;
api.GoogleCloudApihubV1Schema buildGoogleCloudApihubV1Schema() {
  final o = api.GoogleCloudApihubV1Schema();
  buildCounterGoogleCloudApihubV1Schema++;
  if (buildCounterGoogleCloudApihubV1Schema < 3) {
    o.displayName = 'foo';
    o.rawValue = 'foo';
  }
  buildCounterGoogleCloudApihubV1Schema--;
  return o;
}

void checkGoogleCloudApihubV1Schema(api.GoogleCloudApihubV1Schema o) {
  buildCounterGoogleCloudApihubV1Schema++;
  if (buildCounterGoogleCloudApihubV1Schema < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.rawValue!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Schema--;
}

core.int buildCounterGoogleCloudApihubV1SearchResourcesRequest = 0;
api.GoogleCloudApihubV1SearchResourcesRequest
buildGoogleCloudApihubV1SearchResourcesRequest() {
  final o = api.GoogleCloudApihubV1SearchResourcesRequest();
  buildCounterGoogleCloudApihubV1SearchResourcesRequest++;
  if (buildCounterGoogleCloudApihubV1SearchResourcesRequest < 3) {
    o.filter = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.query = 'foo';
  }
  buildCounterGoogleCloudApihubV1SearchResourcesRequest--;
  return o;
}

void checkGoogleCloudApihubV1SearchResourcesRequest(
  api.GoogleCloudApihubV1SearchResourcesRequest o,
) {
  buildCounterGoogleCloudApihubV1SearchResourcesRequest++;
  if (buildCounterGoogleCloudApihubV1SearchResourcesRequest < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1SearchResourcesRequest--;
}

core.List<api.GoogleCloudApihubV1SearchResult> buildUnnamed57() => [
  buildGoogleCloudApihubV1SearchResult(),
  buildGoogleCloudApihubV1SearchResult(),
];

void checkUnnamed57(core.List<api.GoogleCloudApihubV1SearchResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SearchResult(o[0]);
  checkGoogleCloudApihubV1SearchResult(o[1]);
}

core.int buildCounterGoogleCloudApihubV1SearchResourcesResponse = 0;
api.GoogleCloudApihubV1SearchResourcesResponse
buildGoogleCloudApihubV1SearchResourcesResponse() {
  final o = api.GoogleCloudApihubV1SearchResourcesResponse();
  buildCounterGoogleCloudApihubV1SearchResourcesResponse++;
  if (buildCounterGoogleCloudApihubV1SearchResourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.searchResults = buildUnnamed57();
  }
  buildCounterGoogleCloudApihubV1SearchResourcesResponse--;
  return o;
}

void checkGoogleCloudApihubV1SearchResourcesResponse(
  api.GoogleCloudApihubV1SearchResourcesResponse o,
) {
  buildCounterGoogleCloudApihubV1SearchResourcesResponse++;
  if (buildCounterGoogleCloudApihubV1SearchResourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.searchResults!);
  }
  buildCounterGoogleCloudApihubV1SearchResourcesResponse--;
}

core.int buildCounterGoogleCloudApihubV1SearchResult = 0;
api.GoogleCloudApihubV1SearchResult buildGoogleCloudApihubV1SearchResult() {
  final o = api.GoogleCloudApihubV1SearchResult();
  buildCounterGoogleCloudApihubV1SearchResult++;
  if (buildCounterGoogleCloudApihubV1SearchResult < 3) {
    o.resource = buildGoogleCloudApihubV1ApiHubResource();
  }
  buildCounterGoogleCloudApihubV1SearchResult--;
  return o;
}

void checkGoogleCloudApihubV1SearchResult(
  api.GoogleCloudApihubV1SearchResult o,
) {
  buildCounterGoogleCloudApihubV1SearchResult++;
  if (buildCounterGoogleCloudApihubV1SearchResult < 3) {
    checkGoogleCloudApihubV1ApiHubResource(o.resource!);
  }
  buildCounterGoogleCloudApihubV1SearchResult--;
}

core.int buildCounterGoogleCloudApihubV1Secret = 0;
api.GoogleCloudApihubV1Secret buildGoogleCloudApihubV1Secret() {
  final o = api.GoogleCloudApihubV1Secret();
  buildCounterGoogleCloudApihubV1Secret++;
  if (buildCounterGoogleCloudApihubV1Secret < 3) {
    o.secretVersion = 'foo';
  }
  buildCounterGoogleCloudApihubV1Secret--;
  return o;
}

void checkGoogleCloudApihubV1Secret(api.GoogleCloudApihubV1Secret o) {
  buildCounterGoogleCloudApihubV1Secret++;
  if (buildCounterGoogleCloudApihubV1Secret < 3) {
    unittest.expect(o.secretVersion!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Secret--;
}

core.int buildCounterGoogleCloudApihubV1SourceMetadata = 0;
api.GoogleCloudApihubV1SourceMetadata buildGoogleCloudApihubV1SourceMetadata() {
  final o = api.GoogleCloudApihubV1SourceMetadata();
  buildCounterGoogleCloudApihubV1SourceMetadata++;
  if (buildCounterGoogleCloudApihubV1SourceMetadata < 3) {
    o.originalResourceCreateTime = 'foo';
    o.originalResourceId = 'foo';
    o.originalResourceUpdateTime = 'foo';
    o.pluginInstanceActionSource =
        buildGoogleCloudApihubV1PluginInstanceActionSource();
    o.sourceType = 'foo';
  }
  buildCounterGoogleCloudApihubV1SourceMetadata--;
  return o;
}

void checkGoogleCloudApihubV1SourceMetadata(
  api.GoogleCloudApihubV1SourceMetadata o,
) {
  buildCounterGoogleCloudApihubV1SourceMetadata++;
  if (buildCounterGoogleCloudApihubV1SourceMetadata < 3) {
    unittest.expect(o.originalResourceCreateTime!, unittest.equals('foo'));
    unittest.expect(o.originalResourceId!, unittest.equals('foo'));
    unittest.expect(o.originalResourceUpdateTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1PluginInstanceActionSource(
      o.pluginInstanceActionSource!,
    );
    unittest.expect(o.sourceType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1SourceMetadata--;
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed58() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed58(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.List<api.GoogleCloudApihubV1SourceMetadata> buildUnnamed59() => [
  buildGoogleCloudApihubV1SourceMetadata(),
  buildGoogleCloudApihubV1SourceMetadata(),
];

void checkUnnamed59(core.List<api.GoogleCloudApihubV1SourceMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SourceMetadata(o[0]);
  checkGoogleCloudApihubV1SourceMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1Spec = 0;
api.GoogleCloudApihubV1Spec buildGoogleCloudApihubV1Spec() {
  final o = api.GoogleCloudApihubV1Spec();
  buildCounterGoogleCloudApihubV1Spec++;
  if (buildCounterGoogleCloudApihubV1Spec < 3) {
    o.attributes = buildUnnamed58();
    o.contents = buildGoogleCloudApihubV1SpecContents();
    o.createTime = 'foo';
    o.details = buildGoogleCloudApihubV1SpecDetails();
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.lintResponse = buildGoogleCloudApihubV1LintResponse();
    o.name = 'foo';
    o.parsingMode = 'foo';
    o.sourceMetadata = buildUnnamed59();
    o.sourceUri = 'foo';
    o.specType = buildGoogleCloudApihubV1AttributeValues();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Spec--;
  return o;
}

void checkGoogleCloudApihubV1Spec(api.GoogleCloudApihubV1Spec o) {
  buildCounterGoogleCloudApihubV1Spec++;
  if (buildCounterGoogleCloudApihubV1Spec < 3) {
    checkUnnamed58(o.attributes!);
    checkGoogleCloudApihubV1SpecContents(o.contents!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1SpecDetails(o.details!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    checkGoogleCloudApihubV1LintResponse(o.lintResponse!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parsingMode!, unittest.equals('foo'));
    checkUnnamed59(o.sourceMetadata!);
    unittest.expect(o.sourceUri!, unittest.equals('foo'));
    checkGoogleCloudApihubV1AttributeValues(o.specType!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Spec--;
}

core.int buildCounterGoogleCloudApihubV1SpecContents = 0;
api.GoogleCloudApihubV1SpecContents buildGoogleCloudApihubV1SpecContents() {
  final o = api.GoogleCloudApihubV1SpecContents();
  buildCounterGoogleCloudApihubV1SpecContents++;
  if (buildCounterGoogleCloudApihubV1SpecContents < 3) {
    o.contents = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudApihubV1SpecContents--;
  return o;
}

void checkGoogleCloudApihubV1SpecContents(
  api.GoogleCloudApihubV1SpecContents o,
) {
  buildCounterGoogleCloudApihubV1SpecContents++;
  if (buildCounterGoogleCloudApihubV1SpecContents < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1SpecContents--;
}

core.int buildCounterGoogleCloudApihubV1SpecDetails = 0;
api.GoogleCloudApihubV1SpecDetails buildGoogleCloudApihubV1SpecDetails() {
  final o = api.GoogleCloudApihubV1SpecDetails();
  buildCounterGoogleCloudApihubV1SpecDetails++;
  if (buildCounterGoogleCloudApihubV1SpecDetails < 3) {
    o.description = 'foo';
    o.openApiSpecDetails = buildGoogleCloudApihubV1OpenApiSpecDetails();
  }
  buildCounterGoogleCloudApihubV1SpecDetails--;
  return o;
}

void checkGoogleCloudApihubV1SpecDetails(api.GoogleCloudApihubV1SpecDetails o) {
  buildCounterGoogleCloudApihubV1SpecDetails++;
  if (buildCounterGoogleCloudApihubV1SpecDetails < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkGoogleCloudApihubV1OpenApiSpecDetails(o.openApiSpecDetails!);
  }
  buildCounterGoogleCloudApihubV1SpecDetails--;
}

core.int buildCounterGoogleCloudApihubV1SpecMetadata = 0;
api.GoogleCloudApihubV1SpecMetadata buildGoogleCloudApihubV1SpecMetadata() {
  final o = api.GoogleCloudApihubV1SpecMetadata();
  buildCounterGoogleCloudApihubV1SpecMetadata++;
  if (buildCounterGoogleCloudApihubV1SpecMetadata < 3) {
    o.originalCreateTime = 'foo';
    o.originalId = 'foo';
    o.originalUpdateTime = 'foo';
    o.spec = buildGoogleCloudApihubV1Spec();
  }
  buildCounterGoogleCloudApihubV1SpecMetadata--;
  return o;
}

void checkGoogleCloudApihubV1SpecMetadata(
  api.GoogleCloudApihubV1SpecMetadata o,
) {
  buildCounterGoogleCloudApihubV1SpecMetadata++;
  if (buildCounterGoogleCloudApihubV1SpecMetadata < 3) {
    unittest.expect(o.originalCreateTime!, unittest.equals('foo'));
    unittest.expect(o.originalId!, unittest.equals('foo'));
    unittest.expect(o.originalUpdateTime!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Spec(o.spec!);
  }
  buildCounterGoogleCloudApihubV1SpecMetadata--;
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1StringAttributeValues = 0;
api.GoogleCloudApihubV1StringAttributeValues
buildGoogleCloudApihubV1StringAttributeValues() {
  final o = api.GoogleCloudApihubV1StringAttributeValues();
  buildCounterGoogleCloudApihubV1StringAttributeValues++;
  if (buildCounterGoogleCloudApihubV1StringAttributeValues < 3) {
    o.values = buildUnnamed60();
  }
  buildCounterGoogleCloudApihubV1StringAttributeValues--;
  return o;
}

void checkGoogleCloudApihubV1StringAttributeValues(
  api.GoogleCloudApihubV1StringAttributeValues o,
) {
  buildCounterGoogleCloudApihubV1StringAttributeValues++;
  if (buildCounterGoogleCloudApihubV1StringAttributeValues < 3) {
    checkUnnamed60(o.values!);
  }
  buildCounterGoogleCloudApihubV1StringAttributeValues--;
}

core.int buildCounterGoogleCloudApihubV1StyleGuide = 0;
api.GoogleCloudApihubV1StyleGuide buildGoogleCloudApihubV1StyleGuide() {
  final o = api.GoogleCloudApihubV1StyleGuide();
  buildCounterGoogleCloudApihubV1StyleGuide++;
  if (buildCounterGoogleCloudApihubV1StyleGuide < 3) {
    o.contents = buildGoogleCloudApihubV1StyleGuideContents();
    o.linter = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudApihubV1StyleGuide--;
  return o;
}

void checkGoogleCloudApihubV1StyleGuide(api.GoogleCloudApihubV1StyleGuide o) {
  buildCounterGoogleCloudApihubV1StyleGuide++;
  if (buildCounterGoogleCloudApihubV1StyleGuide < 3) {
    checkGoogleCloudApihubV1StyleGuideContents(o.contents!);
    unittest.expect(o.linter!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1StyleGuide--;
}

core.int buildCounterGoogleCloudApihubV1StyleGuideContents = 0;
api.GoogleCloudApihubV1StyleGuideContents
buildGoogleCloudApihubV1StyleGuideContents() {
  final o = api.GoogleCloudApihubV1StyleGuideContents();
  buildCounterGoogleCloudApihubV1StyleGuideContents++;
  if (buildCounterGoogleCloudApihubV1StyleGuideContents < 3) {
    o.contents = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterGoogleCloudApihubV1StyleGuideContents--;
  return o;
}

void checkGoogleCloudApihubV1StyleGuideContents(
  api.GoogleCloudApihubV1StyleGuideContents o,
) {
  buildCounterGoogleCloudApihubV1StyleGuideContents++;
  if (buildCounterGoogleCloudApihubV1StyleGuideContents < 3) {
    unittest.expect(o.contents!, unittest.equals('foo'));
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1StyleGuideContents--;
}

core.int buildCounterGoogleCloudApihubV1SummaryEntry = 0;
api.GoogleCloudApihubV1SummaryEntry buildGoogleCloudApihubV1SummaryEntry() {
  final o = api.GoogleCloudApihubV1SummaryEntry();
  buildCounterGoogleCloudApihubV1SummaryEntry++;
  if (buildCounterGoogleCloudApihubV1SummaryEntry < 3) {
    o.count = 42;
    o.severity = 'foo';
  }
  buildCounterGoogleCloudApihubV1SummaryEntry--;
  return o;
}

void checkGoogleCloudApihubV1SummaryEntry(
  api.GoogleCloudApihubV1SummaryEntry o,
) {
  buildCounterGoogleCloudApihubV1SummaryEntry++;
  if (buildCounterGoogleCloudApihubV1SummaryEntry < 3) {
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1SummaryEntry--;
}

core.int buildCounterGoogleCloudApihubV1UserPasswordConfig = 0;
api.GoogleCloudApihubV1UserPasswordConfig
buildGoogleCloudApihubV1UserPasswordConfig() {
  final o = api.GoogleCloudApihubV1UserPasswordConfig();
  buildCounterGoogleCloudApihubV1UserPasswordConfig++;
  if (buildCounterGoogleCloudApihubV1UserPasswordConfig < 3) {
    o.password = buildGoogleCloudApihubV1Secret();
    o.username = 'foo';
  }
  buildCounterGoogleCloudApihubV1UserPasswordConfig--;
  return o;
}

void checkGoogleCloudApihubV1UserPasswordConfig(
  api.GoogleCloudApihubV1UserPasswordConfig o,
) {
  buildCounterGoogleCloudApihubV1UserPasswordConfig++;
  if (buildCounterGoogleCloudApihubV1UserPasswordConfig < 3) {
    checkGoogleCloudApihubV1Secret(o.password!);
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1UserPasswordConfig--;
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.GoogleCloudApihubV1AttributeValues>
buildUnnamed62() => {
  'x': buildGoogleCloudApihubV1AttributeValues(),
  'y': buildGoogleCloudApihubV1AttributeValues(),
};

void checkUnnamed62(
  core.Map<core.String, api.GoogleCloudApihubV1AttributeValues> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1AttributeValues(o['x']!);
  checkGoogleCloudApihubV1AttributeValues(o['y']!);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GoogleCloudApihubV1SourceMetadata> buildUnnamed65() => [
  buildGoogleCloudApihubV1SourceMetadata(),
  buildGoogleCloudApihubV1SourceMetadata(),
];

void checkUnnamed65(core.List<api.GoogleCloudApihubV1SourceMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SourceMetadata(o[0]);
  checkGoogleCloudApihubV1SourceMetadata(o[1]);
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleCloudApihubV1Version = 0;
api.GoogleCloudApihubV1Version buildGoogleCloudApihubV1Version() {
  final o = api.GoogleCloudApihubV1Version();
  buildCounterGoogleCloudApihubV1Version++;
  if (buildCounterGoogleCloudApihubV1Version < 3) {
    o.accreditation = buildGoogleCloudApihubV1AttributeValues();
    o.apiOperations = buildUnnamed61();
    o.attributes = buildUnnamed62();
    o.compliance = buildGoogleCloudApihubV1AttributeValues();
    o.createTime = 'foo';
    o.definitions = buildUnnamed63();
    o.deployments = buildUnnamed64();
    o.description = 'foo';
    o.displayName = 'foo';
    o.documentation = buildGoogleCloudApihubV1Documentation();
    o.lifecycle = buildGoogleCloudApihubV1AttributeValues();
    o.name = 'foo';
    o.selectedDeployment = 'foo';
    o.sourceMetadata = buildUnnamed65();
    o.specs = buildUnnamed66();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudApihubV1Version--;
  return o;
}

void checkGoogleCloudApihubV1Version(api.GoogleCloudApihubV1Version o) {
  buildCounterGoogleCloudApihubV1Version++;
  if (buildCounterGoogleCloudApihubV1Version < 3) {
    checkGoogleCloudApihubV1AttributeValues(o.accreditation!);
    checkUnnamed61(o.apiOperations!);
    checkUnnamed62(o.attributes!);
    checkGoogleCloudApihubV1AttributeValues(o.compliance!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed63(o.definitions!);
    checkUnnamed64(o.deployments!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudApihubV1Documentation(o.documentation!);
    checkGoogleCloudApihubV1AttributeValues(o.lifecycle!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.selectedDeployment!, unittest.equals('foo'));
    checkUnnamed65(o.sourceMetadata!);
    checkUnnamed66(o.specs!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudApihubV1Version--;
}

core.List<api.GoogleCloudApihubV1DeploymentMetadata> buildUnnamed67() => [
  buildGoogleCloudApihubV1DeploymentMetadata(),
  buildGoogleCloudApihubV1DeploymentMetadata(),
];

void checkUnnamed67(core.List<api.GoogleCloudApihubV1DeploymentMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1DeploymentMetadata(o[0]);
  checkGoogleCloudApihubV1DeploymentMetadata(o[1]);
}

core.List<api.GoogleCloudApihubV1SpecMetadata> buildUnnamed68() => [
  buildGoogleCloudApihubV1SpecMetadata(),
  buildGoogleCloudApihubV1SpecMetadata(),
];

void checkUnnamed68(core.List<api.GoogleCloudApihubV1SpecMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudApihubV1SpecMetadata(o[0]);
  checkGoogleCloudApihubV1SpecMetadata(o[1]);
}

core.int buildCounterGoogleCloudApihubV1VersionMetadata = 0;
api.GoogleCloudApihubV1VersionMetadata
buildGoogleCloudApihubV1VersionMetadata() {
  final o = api.GoogleCloudApihubV1VersionMetadata();
  buildCounterGoogleCloudApihubV1VersionMetadata++;
  if (buildCounterGoogleCloudApihubV1VersionMetadata < 3) {
    o.deployments = buildUnnamed67();
    o.originalCreateTime = 'foo';
    o.originalId = 'foo';
    o.originalUpdateTime = 'foo';
    o.specs = buildUnnamed68();
    o.version = buildGoogleCloudApihubV1Version();
  }
  buildCounterGoogleCloudApihubV1VersionMetadata--;
  return o;
}

void checkGoogleCloudApihubV1VersionMetadata(
  api.GoogleCloudApihubV1VersionMetadata o,
) {
  buildCounterGoogleCloudApihubV1VersionMetadata++;
  if (buildCounterGoogleCloudApihubV1VersionMetadata < 3) {
    checkUnnamed67(o.deployments!);
    unittest.expect(o.originalCreateTime!, unittest.equals('foo'));
    unittest.expect(o.originalId!, unittest.equals('foo'));
    unittest.expect(o.originalUpdateTime!, unittest.equals('foo'));
    checkUnnamed68(o.specs!);
    checkGoogleCloudApihubV1Version(o.version!);
  }
  buildCounterGoogleCloudApihubV1VersionMetadata--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed69() => [
  buildGoogleCloudLocationLocation(),
  buildGoogleCloudLocationLocation(),
];

void checkUnnamed69(core.List<api.GoogleCloudLocationLocation> o) {
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
    o.locations = buildUnnamed69();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
  api.GoogleCloudLocationListLocationsResponse o,
) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed69(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed70() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed70(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed71() => {
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

void checkUnnamed71(core.Map<core.String, core.Object?> o) {
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
    o.labels = buildUnnamed70();
    o.locationId = 'foo';
    o.metadata = buildUnnamed71();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed70(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed71(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudLocationLocation--;
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

core.List<api.GoogleLongrunningOperation> buildUnnamed72() => [
  buildGoogleLongrunningOperation(),
  buildGoogleLongrunningOperation(),
];

void checkUnnamed72(core.List<api.GoogleLongrunningOperation> o) {
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
    o.operations = buildUnnamed72();
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
    checkUnnamed72(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed73() => {
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

void checkUnnamed73(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed74() => {
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

void checkUnnamed74(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed73();
    o.name = 'foo';
    o.response = buildUnnamed74();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed73(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed74(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.Map<core.String, core.Object?> buildUnnamed75() => {
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

void checkUnnamed75(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed76() => [
  buildUnnamed75(),
  buildUnnamed75(),
];

void checkUnnamed76(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed75(o[0]);
  checkUnnamed75(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed76();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed76(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
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

  unittest.group('obj-schema-GoogleCloudApihubV1APIMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1APIMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1APIMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1APIMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ActionExecutionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ActionExecutionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ActionExecutionDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ActionExecutionDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1AllowedValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1AllowedValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1AllowedValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1AllowedValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Api', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Api();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Api.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Api(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiHubInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiHubInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiHubInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiHubInstance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiHubResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiHubResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiHubResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiHubResource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiKeyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiKeyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiKeyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiKeyConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiMetadataList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiMetadataList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiMetadataList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiMetadataList(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ApiOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ApiOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ApiOperation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ApplicationIntegrationEndpointDetails',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudApihubV1ApplicationIntegrationEndpointDetails();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ApplicationIntegrationEndpointDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ApplicationIntegrationEndpointDetails(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1Attribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Attribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Attribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Attribute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1AttributeValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1AttributeValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1AttributeValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1AttributeValues(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1AuthConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1AuthConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1AuthConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1AuthConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1AuthConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1AuthConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1AuthConfigTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1AuthConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1CollectApiDataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1CollectApiDataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1CollectApiDataRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1CollectApiDataRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Config', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Config();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Config.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Config(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ConfigTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ConfigTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ConfigTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ConfigTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ConfigValueOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ConfigValueOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ConfigValueOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ConfigValueOption(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ConfigVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ConfigVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ConfigVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ConfigVariable(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ConfigVariableTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ConfigVariableTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ConfigVariableTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ConfigVariableTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Curation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Curation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Curation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Curation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1CurationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1CurationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1CurationConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1CurationConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1CustomCuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1CustomCuration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1CustomCuration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1CustomCuration(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Definition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Definition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Definition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Definition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Dependency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Dependency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Dependency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Dependency(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1DependencyEntityReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DependencyEntityReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DependencyEntityReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DependencyEntityReference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1DependencyErrorDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DependencyErrorDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DependencyErrorDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DependencyErrorDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Deployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Deployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Deployment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1DeploymentMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DeploymentMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DeploymentMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DeploymentMetadata(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1DisablePluginInstanceActionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1DisablePluginInstanceActionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1DisablePluginInstanceActionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1DisablePluginInstanceActionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1DisablePluginRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DisablePluginRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DisablePluginRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DisablePluginRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1DiscoveredApiObservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DiscoveredApiObservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DiscoveredApiObservation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DiscoveredApiObservation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1DiscoveredApiOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1DiscoveredApiOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1DiscoveredApiOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1DiscoveredApiOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Documentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Documentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Documentation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Documentation(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1EnablePluginInstanceActionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1EnablePluginInstanceActionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1EnablePluginInstanceActionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1EnablePluginInstanceActionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1EnablePluginRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1EnablePluginRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1EnablePluginRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1EnablePluginRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Endpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Endpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Endpoint(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1EnumAttributeValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1EnumAttributeValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1EnumAttributeValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1EnumAttributeValues(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ExecutePluginInstanceActionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1ExecutePluginInstanceActionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ExecutePluginInstanceActionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ExecutePluginInstanceActionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1ExecutionStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ExecutionStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ExecutionStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ExecutionStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ExternalApi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ExternalApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ExternalApi.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ExternalApi(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1GoogleServiceAccountConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1GoogleServiceAccountConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudApihubV1GoogleServiceAccountConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1GoogleServiceAccountConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Header();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Header.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Header(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HostProjectRegistration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HostProjectRegistration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HostProjectRegistration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HostProjectRegistration(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HostingService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HostingService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HostingService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HostingService(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HttpOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HttpOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HttpOperation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HttpOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HttpOperationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HttpOperationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HttpOperationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HttpOperationDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HttpRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HttpRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1HttpResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1HttpResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1HttpResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1HttpResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Issue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Issue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Issue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1LastExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1LastExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1LastExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1LastExecution(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1LintResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1LintResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1LintResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1LintResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1LintSpecRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1LintSpecRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1LintSpecRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1LintSpecRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListApiOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListApiOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListApiOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListApiOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListApisResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListApisResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListApisResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListApisResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListAttributesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListAttributesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListAttributesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListAttributesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListCurationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListCurationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListCurationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListCurationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListDependenciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListDependenciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListDependenciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListDependenciesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListDeploymentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListDeploymentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListDeploymentsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ListDiscoveredApiObservationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudApihubV1ListDiscoveredApiObservationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ListDiscoveredApiObservationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ListDiscoveredApiObservationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ListDiscoveredApiOperationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1ListDiscoveredApiOperationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ListDiscoveredApiOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ListDiscoveredApiOperationsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1ListExternalApisResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListExternalApisResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListExternalApisResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListExternalApisResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ListHostProjectRegistrationsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudApihubV1ListHostProjectRegistrationsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ListHostProjectRegistrationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ListHostProjectRegistrationsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ListPluginInstancesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1ListPluginInstancesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudApihubV1ListPluginInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ListPluginInstancesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1ListPluginsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListPluginsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListPluginsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListPluginsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1ListSpecsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListSpecsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListSpecsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListSpecsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ListVersionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ListVersionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ListVersionsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1LookupApiHubInstanceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1LookupApiHubInstanceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudApihubV1LookupApiHubInstanceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1LookupApiHubInstanceResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1MatchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1MatchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1MatchResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1MatchResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1MultiIntValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1MultiIntValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1MultiIntValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1MultiIntValues(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1MultiSelectValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1MultiSelectValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1MultiSelectValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1MultiSelectValues(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1MultiStringValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1MultiStringValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1MultiStringValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1MultiStringValues(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1Oauth2ClientCredentialsConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1Oauth2ClientCredentialsConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudApihubV1Oauth2ClientCredentialsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1Oauth2ClientCredentialsConfig(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1OpenApiSpecDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1OpenApiSpecDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1OpenApiSpecDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1OpenApiSpecDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1OperationDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1OperationDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1OperationDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1OperationDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Owner', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Owner();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Owner.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Owner(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Path', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Path();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Path.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Path(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1PathParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1PathParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1PathParam.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1PathParam(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Plugin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Plugin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Plugin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Plugin(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1PluginActionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1PluginActionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1PluginActionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1PluginActionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1PluginInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1PluginInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1PluginInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1PluginInstance(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1PluginInstanceAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1PluginInstanceAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1PluginInstanceAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1PluginInstanceAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1PluginInstanceActionID', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1PluginInstanceActionID();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1PluginInstanceActionID.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1PluginInstanceActionID(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudApihubV1PluginInstanceActionSource',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudApihubV1PluginInstanceActionSource();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudApihubV1PluginInstanceActionSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudApihubV1PluginInstanceActionSource(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudApihubV1Point', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Point();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Point.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Point(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1QueryParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1QueryParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1QueryParam.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1QueryParam(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Range();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Range.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Range(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1ResourceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1ResourceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1ResourceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1ResourceConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1RuntimeProjectAttachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1RuntimeProjectAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1RuntimeProjectAttachment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Schema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Schema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Schema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Schema(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SearchResourcesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SearchResourcesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SearchResourcesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SearchResourcesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SearchResourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SearchResourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SearchResourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SearchResourcesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SearchResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SearchResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SearchResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SearchResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Secret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Secret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Secret.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Secret(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SourceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SourceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SourceMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SourceMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Spec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Spec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Spec.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Spec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SpecContents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SpecContents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SpecContents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SpecContents(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SpecDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SpecDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SpecDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SpecDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SpecMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SpecMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SpecMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SpecMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1StringAttributeValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1StringAttributeValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1StringAttributeValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1StringAttributeValues(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1StyleGuide', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1StyleGuide();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1StyleGuide.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1StyleGuide(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1StyleGuideContents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1StyleGuideContents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1StyleGuideContents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1StyleGuideContents(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1SummaryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1SummaryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1SummaryEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1SummaryEntry(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1UserPasswordConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1UserPasswordConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1UserPasswordConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1UserPasswordConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1Version();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1Version.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1Version(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudApihubV1VersionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudApihubV1VersionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudApihubV1VersionMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudApihubV1VersionMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudLocationListLocationsResponse(od);
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

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--collectApiData', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations;
      final arg_request = buildGoogleCloudApihubV1CollectApiDataRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1CollectApiDataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1CollectApiDataRequest(obj);

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
      final response = await res.collectApiData(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations;
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
      final res = api.APIHubApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed77();
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
          final resp = convert.json.encode(
            buildGoogleCloudLocationListLocationsResponse(),
          );
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
      checkGoogleCloudLocationListLocationsResponse(
        response as api.GoogleCloudLocationListLocationsResponse,
      );
    });

    unittest.test('method--lookupRuntimeProjectAttachment', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations;
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
            buildGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupRuntimeProjectAttachment(
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse(
        response
            as api.GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse,
      );
    });

    unittest.test('method--searchResources', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations;
      final arg_request = buildGoogleCloudApihubV1SearchResourcesRequest();
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1SearchResourcesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1SearchResourcesRequest(obj);

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
            buildGoogleCloudApihubV1SearchResourcesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchResources(
        arg_request,
        arg_location,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1SearchResourcesResponse(
        response as api.GoogleCloudApihubV1SearchResourcesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsApiHubInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apiHubInstances;
      final arg_request = buildGoogleCloudApihubV1ApiHubInstance();
      final arg_parent = 'foo';
      final arg_apiHubInstanceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1ApiHubInstance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ApiHubInstance(obj);

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
            queryMap['apiHubInstanceId']!.first,
            unittest.equals(arg_apiHubInstanceId),
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
        apiHubInstanceId: arg_apiHubInstanceId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apiHubInstances;
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
      final res = api.APIHubApi(mock).projects.locations.apiHubInstances;
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
            buildGoogleCloudApihubV1ApiHubInstance(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1ApiHubInstance(
        response as api.GoogleCloudApihubV1ApiHubInstance,
      );
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apiHubInstances;
      final arg_parent = 'foo';
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
            buildGoogleCloudApihubV1LookupApiHubInstanceResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(arg_parent, $fields: arg_$fields);
      checkGoogleCloudApihubV1LookupApiHubInstanceResponse(
        response as api.GoogleCloudApihubV1LookupApiHubInstanceResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsApisResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis;
      final arg_request = buildGoogleCloudApihubV1Api();
      final arg_parent = 'foo';
      final arg_apiId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Api.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Api(obj);

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
          unittest.expect(queryMap['apiId']!.first, unittest.equals(arg_apiId));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Api());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        apiId: arg_apiId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Api(response as api.GoogleCloudApihubV1Api);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Api());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Api(response as api.GoogleCloudApihubV1Api);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis;
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
            buildGoogleCloudApihubV1ListApisResponse(),
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
      checkGoogleCloudApihubV1ListApisResponse(
        response as api.GoogleCloudApihubV1ListApisResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis;
      final arg_request = buildGoogleCloudApihubV1Api();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Api.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Api(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Api());
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
      checkGoogleCloudApihubV1Api(response as api.GoogleCloudApihubV1Api);
    });
  });

  unittest.group('resource-ProjectsLocationsApisVersionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions;
      final arg_request = buildGoogleCloudApihubV1Version();
      final arg_parent = 'foo';
      final arg_versionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Version.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Version(obj);

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
            queryMap['versionId']!.first,
            unittest.equals(arg_versionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Version());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        versionId: arg_versionId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Version(
        response as api.GoogleCloudApihubV1Version,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions;
      final arg_name = 'foo';
      final arg_force = true;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Version());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Version(
        response as api.GoogleCloudApihubV1Version,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions;
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
            buildGoogleCloudApihubV1ListVersionsResponse(),
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
      checkGoogleCloudApihubV1ListVersionsResponse(
        response as api.GoogleCloudApihubV1ListVersionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions;
      final arg_request = buildGoogleCloudApihubV1Version();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Version.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Version(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Version());
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
      checkGoogleCloudApihubV1Version(
        response as api.GoogleCloudApihubV1Version,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsApisVersionsDefinitionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.apis.versions.definitions;
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
            buildGoogleCloudApihubV1Definition(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Definition(
        response as api.GoogleCloudApihubV1Definition,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsApisVersionsOperationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.apis.versions.operations;
      final arg_request = buildGoogleCloudApihubV1ApiOperation();
      final arg_parent = 'foo';
      final arg_apiOperationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1ApiOperation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ApiOperation(obj);

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
            queryMap['apiOperationId']!.first,
            unittest.equals(arg_apiOperationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1ApiOperation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        apiOperationId: arg_apiOperationId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1ApiOperation(
        response as api.GoogleCloudApihubV1ApiOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.apis.versions.operations;
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
          api.APIHubApi(mock).projects.locations.apis.versions.operations;
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
            buildGoogleCloudApihubV1ApiOperation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1ApiOperation(
        response as api.GoogleCloudApihubV1ApiOperation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.apis.versions.operations;
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
            buildGoogleCloudApihubV1ListApiOperationsResponse(),
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
      checkGoogleCloudApihubV1ListApiOperationsResponse(
        response as api.GoogleCloudApihubV1ListApiOperationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.apis.versions.operations;
      final arg_request = buildGoogleCloudApihubV1ApiOperation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1ApiOperation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ApiOperation(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1ApiOperation(),
          );
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
      checkGoogleCloudApihubV1ApiOperation(
        response as api.GoogleCloudApihubV1ApiOperation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsApisVersionsSpecsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
      final arg_request = buildGoogleCloudApihubV1Spec();
      final arg_parent = 'foo';
      final arg_specId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Spec.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Spec(obj);

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
            queryMap['specId']!.first,
            unittest.equals(arg_specId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Spec());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        specId: arg_specId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Spec(response as api.GoogleCloudApihubV1Spec);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
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
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Spec());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Spec(response as api.GoogleCloudApihubV1Spec);
    });

    unittest.test('method--getContents', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
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
            buildGoogleCloudApihubV1SpecContents(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContents(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1SpecContents(
        response as api.GoogleCloudApihubV1SpecContents,
      );
    });

    unittest.test('method--lint', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
      final arg_request = buildGoogleCloudApihubV1LintSpecRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1LintSpecRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1LintSpecRequest(obj);

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
      final response = await res.lint(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
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
            buildGoogleCloudApihubV1ListSpecsResponse(),
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
      checkGoogleCloudApihubV1ListSpecsResponse(
        response as api.GoogleCloudApihubV1ListSpecsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.apis.versions.specs;
      final arg_request = buildGoogleCloudApihubV1Spec();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Spec.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Spec(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Spec());
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
      checkGoogleCloudApihubV1Spec(response as api.GoogleCloudApihubV1Spec);
    });
  });

  unittest.group('resource-ProjectsLocationsAttributesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.attributes;
      final arg_request = buildGoogleCloudApihubV1Attribute();
      final arg_parent = 'foo';
      final arg_attributeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Attribute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Attribute(obj);

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
            queryMap['attributeId']!.first,
            unittest.equals(arg_attributeId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Attribute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        attributeId: arg_attributeId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Attribute(
        response as api.GoogleCloudApihubV1Attribute,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.attributes;
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
      final res = api.APIHubApi(mock).projects.locations.attributes;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Attribute());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Attribute(
        response as api.GoogleCloudApihubV1Attribute,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.attributes;
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
            buildGoogleCloudApihubV1ListAttributesResponse(),
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
      checkGoogleCloudApihubV1ListAttributesResponse(
        response as api.GoogleCloudApihubV1ListAttributesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.attributes;
      final arg_request = buildGoogleCloudApihubV1Attribute();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Attribute.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Attribute(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Attribute());
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
      checkGoogleCloudApihubV1Attribute(
        response as api.GoogleCloudApihubV1Attribute,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsCurationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.curations;
      final arg_request = buildGoogleCloudApihubV1Curation();
      final arg_parent = 'foo';
      final arg_curationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Curation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Curation(obj);

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
            queryMap['curationId']!.first,
            unittest.equals(arg_curationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Curation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        curationId: arg_curationId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Curation(
        response as api.GoogleCloudApihubV1Curation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.curations;
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
      final res = api.APIHubApi(mock).projects.locations.curations;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Curation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Curation(
        response as api.GoogleCloudApihubV1Curation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.curations;
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
            buildGoogleCloudApihubV1ListCurationsResponse(),
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
      checkGoogleCloudApihubV1ListCurationsResponse(
        response as api.GoogleCloudApihubV1ListCurationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.curations;
      final arg_request = buildGoogleCloudApihubV1Curation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Curation.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Curation(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Curation());
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
      checkGoogleCloudApihubV1Curation(
        response as api.GoogleCloudApihubV1Curation,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDependenciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.dependencies;
      final arg_request = buildGoogleCloudApihubV1Dependency();
      final arg_parent = 'foo';
      final arg_dependencyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Dependency.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Dependency(obj);

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
            queryMap['dependencyId']!.first,
            unittest.equals(arg_dependencyId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1Dependency(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        dependencyId: arg_dependencyId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Dependency(
        response as api.GoogleCloudApihubV1Dependency,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.dependencies;
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
      final res = api.APIHubApi(mock).projects.locations.dependencies;
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
            buildGoogleCloudApihubV1Dependency(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Dependency(
        response as api.GoogleCloudApihubV1Dependency,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.dependencies;
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
            buildGoogleCloudApihubV1ListDependenciesResponse(),
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
      checkGoogleCloudApihubV1ListDependenciesResponse(
        response as api.GoogleCloudApihubV1ListDependenciesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.dependencies;
      final arg_request = buildGoogleCloudApihubV1Dependency();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Dependency.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Dependency(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1Dependency(),
          );
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
      checkGoogleCloudApihubV1Dependency(
        response as api.GoogleCloudApihubV1Dependency,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDeploymentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.deployments;
      final arg_request = buildGoogleCloudApihubV1Deployment();
      final arg_parent = 'foo';
      final arg_deploymentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Deployment(obj);

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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1Deployment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        deploymentId: arg_deploymentId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Deployment(
        response as api.GoogleCloudApihubV1Deployment,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.deployments;
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
      final res = api.APIHubApi(mock).projects.locations.deployments;
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
            buildGoogleCloudApihubV1Deployment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Deployment(
        response as api.GoogleCloudApihubV1Deployment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.deployments;
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
            buildGoogleCloudApihubV1ListDeploymentsResponse(),
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
      checkGoogleCloudApihubV1ListDeploymentsResponse(
        response as api.GoogleCloudApihubV1ListDeploymentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.deployments;
      final arg_request = buildGoogleCloudApihubV1Deployment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Deployment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Deployment(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1Deployment(),
          );
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
      checkGoogleCloudApihubV1Deployment(
        response as api.GoogleCloudApihubV1Deployment,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsDiscoveredApiObservationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.discoveredApiObservations;
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
            buildGoogleCloudApihubV1DiscoveredApiObservation(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1DiscoveredApiObservation(
        response as api.GoogleCloudApihubV1DiscoveredApiObservation,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.discoveredApiObservations;
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
            buildGoogleCloudApihubV1ListDiscoveredApiObservationsResponse(),
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
      checkGoogleCloudApihubV1ListDiscoveredApiObservationsResponse(
        response
            as api.GoogleCloudApihubV1ListDiscoveredApiObservationsResponse,
      );
    });
  });

  unittest.group(
    'resource-ProjectsLocationsDiscoveredApiObservationsDiscoveredApiOperationsResource',
    () {
      unittest.test('method--get', () async {
        final mock = HttpServerMock();
        final res =
            api.APIHubApi(mock)
                .projects
                .locations
                .discoveredApiObservations
                .discoveredApiOperations;
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
              buildGoogleCloudApihubV1DiscoveredApiOperation(),
            );
            return async.Future.value(stringResponse(200, h, resp));
          }),
          true,
        );
        final response = await res.get(arg_name, $fields: arg_$fields);
        checkGoogleCloudApihubV1DiscoveredApiOperation(
          response as api.GoogleCloudApihubV1DiscoveredApiOperation,
        );
      });

      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res =
            api.APIHubApi(mock)
                .projects
                .locations
                .discoveredApiObservations
                .discoveredApiOperations;
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
              buildGoogleCloudApihubV1ListDiscoveredApiOperationsResponse(),
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
        checkGoogleCloudApihubV1ListDiscoveredApiOperationsResponse(
          response
              as api.GoogleCloudApihubV1ListDiscoveredApiOperationsResponse,
        );
      });
    },
  );

  unittest.group('resource-ProjectsLocationsExternalApisResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.externalApis;
      final arg_request = buildGoogleCloudApihubV1ExternalApi();
      final arg_parent = 'foo';
      final arg_externalApiId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1ExternalApi.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ExternalApi(obj);

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
            queryMap['externalApiId']!.first,
            unittest.equals(arg_externalApiId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1ExternalApi(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        externalApiId: arg_externalApiId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1ExternalApi(
        response as api.GoogleCloudApihubV1ExternalApi,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.externalApis;
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
      final res = api.APIHubApi(mock).projects.locations.externalApis;
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
            buildGoogleCloudApihubV1ExternalApi(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1ExternalApi(
        response as api.GoogleCloudApihubV1ExternalApi,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.externalApis;
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
            buildGoogleCloudApihubV1ListExternalApisResponse(),
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
      checkGoogleCloudApihubV1ListExternalApisResponse(
        response as api.GoogleCloudApihubV1ListExternalApisResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.externalApis;
      final arg_request = buildGoogleCloudApihubV1ExternalApi();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1ExternalApi.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ExternalApi(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1ExternalApi(),
          );
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
      checkGoogleCloudApihubV1ExternalApi(
        response as api.GoogleCloudApihubV1ExternalApi,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsHostProjectRegistrationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.hostProjectRegistrations;
      final arg_request = buildGoogleCloudApihubV1HostProjectRegistration();
      final arg_parent = 'foo';
      final arg_hostProjectRegistrationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1HostProjectRegistration.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1HostProjectRegistration(obj);

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
            queryMap['hostProjectRegistrationId']!.first,
            unittest.equals(arg_hostProjectRegistrationId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1HostProjectRegistration(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        hostProjectRegistrationId: arg_hostProjectRegistrationId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1HostProjectRegistration(
        response as api.GoogleCloudApihubV1HostProjectRegistration,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.hostProjectRegistrations;
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
            buildGoogleCloudApihubV1HostProjectRegistration(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1HostProjectRegistration(
        response as api.GoogleCloudApihubV1HostProjectRegistration,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.hostProjectRegistrations;
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
            buildGoogleCloudApihubV1ListHostProjectRegistrationsResponse(),
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
      checkGoogleCloudApihubV1ListHostProjectRegistrationsResponse(
        response as api.GoogleCloudApihubV1ListHostProjectRegistrationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.operations;
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
      final res = api.APIHubApi(mock).projects.locations.operations;
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
      final res = api.APIHubApi(mock).projects.locations.operations;
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
      final res = api.APIHubApi(mock).projects.locations.operations;
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
        $fields: arg_$fields,
      );
      checkGoogleLongrunningListOperationsResponse(
        response as api.GoogleLongrunningListOperationsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsPluginsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
      final arg_request = buildGoogleCloudApihubV1Plugin();
      final arg_parent = 'foo';
      final arg_pluginId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1Plugin.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1Plugin(obj);

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
            queryMap['pluginId']!.first,
            unittest.equals(arg_pluginId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleCloudApihubV1Plugin());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        pluginId: arg_pluginId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Plugin(response as api.GoogleCloudApihubV1Plugin);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
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

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
      final arg_request = buildGoogleCloudApihubV1DisablePluginRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1DisablePluginRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1DisablePluginRequest(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Plugin());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Plugin(response as api.GoogleCloudApihubV1Plugin);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
      final arg_request = buildGoogleCloudApihubV1EnablePluginRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1EnablePluginRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1EnablePluginRequest(obj);

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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Plugin());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1Plugin(response as api.GoogleCloudApihubV1Plugin);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
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
          final resp = convert.json.encode(buildGoogleCloudApihubV1Plugin());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1Plugin(response as api.GoogleCloudApihubV1Plugin);
    });

    unittest.test('method--getStyleGuide', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
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
            buildGoogleCloudApihubV1StyleGuide(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getStyleGuide(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1StyleGuide(
        response as api.GoogleCloudApihubV1StyleGuide,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
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
            buildGoogleCloudApihubV1ListPluginsResponse(),
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
      checkGoogleCloudApihubV1ListPluginsResponse(
        response as api.GoogleCloudApihubV1ListPluginsResponse,
      );
    });

    unittest.test('method--updateStyleGuide', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins;
      final arg_request = buildGoogleCloudApihubV1StyleGuide();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1StyleGuide.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1StyleGuide(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1StyleGuide(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateStyleGuide(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1StyleGuide(
        response as api.GoogleCloudApihubV1StyleGuide,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsPluginsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
      final arg_request = buildGoogleCloudApihubV1PluginInstance();
      final arg_parent = 'foo';
      final arg_pluginInstanceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1PluginInstance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1PluginInstance(obj);

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
            queryMap['pluginInstanceId']!.first,
            unittest.equals(arg_pluginInstanceId),
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
        pluginInstanceId: arg_pluginInstanceId,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
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

    unittest.test('method--disableAction', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
      final arg_request =
          buildGoogleCloudApihubV1DisablePluginInstanceActionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudApihubV1DisablePluginInstanceActionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1DisablePluginInstanceActionRequest(obj);

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
      final response = await res.disableAction(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--enableAction', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
      final arg_request =
          buildGoogleCloudApihubV1EnablePluginInstanceActionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudApihubV1EnablePluginInstanceActionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1EnablePluginInstanceActionRequest(obj);

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
      final response = await res.enableAction(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--executeAction', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
      final arg_request =
          buildGoogleCloudApihubV1ExecutePluginInstanceActionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleCloudApihubV1ExecutePluginInstanceActionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1ExecutePluginInstanceActionRequest(obj);

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
      final response = await res.executeAction(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleLongrunningOperation(
        response as api.GoogleLongrunningOperation,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
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
            buildGoogleCloudApihubV1PluginInstance(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1PluginInstance(
        response as api.GoogleCloudApihubV1PluginInstance,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
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
            buildGoogleCloudApihubV1ListPluginInstancesResponse(),
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
      checkGoogleCloudApihubV1ListPluginInstancesResponse(
        response as api.GoogleCloudApihubV1ListPluginInstancesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.instances;
      final arg_request = buildGoogleCloudApihubV1PluginInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1PluginInstance.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1PluginInstance(obj);

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
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1PluginInstance(),
          );
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
      checkGoogleCloudApihubV1PluginInstance(
        response as api.GoogleCloudApihubV1PluginInstance,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsPluginsStyleGuideResource', () {
    unittest.test('method--getContents', () async {
      final mock = HttpServerMock();
      final res = api.APIHubApi(mock).projects.locations.plugins.styleGuide;
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
            buildGoogleCloudApihubV1StyleGuideContents(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getContents(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1StyleGuideContents(
        response as api.GoogleCloudApihubV1StyleGuideContents,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsRuntimeProjectAttachmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.runtimeProjectAttachments;
      final arg_request = buildGoogleCloudApihubV1RuntimeProjectAttachment();
      final arg_parent = 'foo';
      final arg_runtimeProjectAttachmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleCloudApihubV1RuntimeProjectAttachment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleCloudApihubV1RuntimeProjectAttachment(obj);

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
            queryMap['runtimeProjectAttachmentId']!.first,
            unittest.equals(arg_runtimeProjectAttachmentId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudApihubV1RuntimeProjectAttachment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        runtimeProjectAttachmentId: arg_runtimeProjectAttachmentId,
        $fields: arg_$fields,
      );
      checkGoogleCloudApihubV1RuntimeProjectAttachment(
        response as api.GoogleCloudApihubV1RuntimeProjectAttachment,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.runtimeProjectAttachments;
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
          api.APIHubApi(mock).projects.locations.runtimeProjectAttachments;
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
            buildGoogleCloudApihubV1RuntimeProjectAttachment(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudApihubV1RuntimeProjectAttachment(
        response as api.GoogleCloudApihubV1RuntimeProjectAttachment,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.APIHubApi(mock).projects.locations.runtimeProjectAttachments;
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
            buildGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse(),
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
      checkGoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse(
        response
            as api.GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse,
      );
    });
  });
}
