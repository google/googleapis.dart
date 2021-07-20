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

import 'package:googleapis/servicenetworking/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddDnsRecordSetMetadata = 0;
api.AddDnsRecordSetMetadata buildAddDnsRecordSetMetadata() {
  final o = api.AddDnsRecordSetMetadata();
  buildCounterAddDnsRecordSetMetadata++;
  if (buildCounterAddDnsRecordSetMetadata < 3) {}
  buildCounterAddDnsRecordSetMetadata--;
  return o;
}

void checkAddDnsRecordSetMetadata(api.AddDnsRecordSetMetadata o) {
  buildCounterAddDnsRecordSetMetadata++;
  if (buildCounterAddDnsRecordSetMetadata < 3) {}
  buildCounterAddDnsRecordSetMetadata--;
}

core.int buildCounterAddDnsRecordSetRequest = 0;
api.AddDnsRecordSetRequest buildAddDnsRecordSetRequest() {
  final o = api.AddDnsRecordSetRequest();
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterAddDnsRecordSetRequest--;
  return o;
}

void checkAddDnsRecordSetRequest(api.AddDnsRecordSetRequest o) {
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.dnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddDnsRecordSetRequest--;
}

core.int buildCounterAddDnsZoneMetadata = 0;
api.AddDnsZoneMetadata buildAddDnsZoneMetadata() {
  final o = api.AddDnsZoneMetadata();
  buildCounterAddDnsZoneMetadata++;
  if (buildCounterAddDnsZoneMetadata < 3) {}
  buildCounterAddDnsZoneMetadata--;
  return o;
}

void checkAddDnsZoneMetadata(api.AddDnsZoneMetadata o) {
  buildCounterAddDnsZoneMetadata++;
  if (buildCounterAddDnsZoneMetadata < 3) {}
  buildCounterAddDnsZoneMetadata--;
}

core.int buildCounterAddDnsZoneRequest = 0;
api.AddDnsZoneRequest buildAddDnsZoneRequest() {
  final o = api.AddDnsZoneRequest();
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsSuffix = 'foo';
    o.name = 'foo';
  }
  buildCounterAddDnsZoneRequest--;
  return o;
}

void checkAddDnsZoneRequest(api.AddDnsZoneRequest o) {
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dnsSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddDnsZoneRequest--;
}

core.int buildCounterAddDnsZoneResponse = 0;
api.AddDnsZoneResponse buildAddDnsZoneResponse() {
  final o = api.AddDnsZoneResponse();
  buildCounterAddDnsZoneResponse++;
  if (buildCounterAddDnsZoneResponse < 3) {
    o.consumerPeeringZone = buildDnsZone();
    o.producerPrivateZone = buildDnsZone();
  }
  buildCounterAddDnsZoneResponse--;
  return o;
}

void checkAddDnsZoneResponse(api.AddDnsZoneResponse o) {
  buildCounterAddDnsZoneResponse++;
  if (buildCounterAddDnsZoneResponse < 3) {
    checkDnsZone(o.consumerPeeringZone!);
    checkDnsZone(o.producerPrivateZone!);
  }
  buildCounterAddDnsZoneResponse--;
}

core.int buildCounterAddRolesMetadata = 0;
api.AddRolesMetadata buildAddRolesMetadata() {
  final o = api.AddRolesMetadata();
  buildCounterAddRolesMetadata++;
  if (buildCounterAddRolesMetadata < 3) {}
  buildCounterAddRolesMetadata--;
  return o;
}

void checkAddRolesMetadata(api.AddRolesMetadata o) {
  buildCounterAddRolesMetadata++;
  if (buildCounterAddRolesMetadata < 3) {}
  buildCounterAddRolesMetadata--;
}

core.List<api.PolicyBinding> buildUnnamed4686() => [
      buildPolicyBinding(),
      buildPolicyBinding(),
    ];

void checkUnnamed4686(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterAddRolesRequest = 0;
api.AddRolesRequest buildAddRolesRequest() {
  final o = api.AddRolesRequest();
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    o.consumerNetwork = 'foo';
    o.policyBinding = buildUnnamed4686();
  }
  buildCounterAddRolesRequest--;
  return o;
}

void checkAddRolesRequest(api.AddRolesRequest o) {
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed4686(o.policyBinding!);
  }
  buildCounterAddRolesRequest--;
}

core.List<api.PolicyBinding> buildUnnamed4687() => [
      buildPolicyBinding(),
      buildPolicyBinding(),
    ];

void checkUnnamed4687(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterAddRolesResponse = 0;
api.AddRolesResponse buildAddRolesResponse() {
  final o = api.AddRolesResponse();
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    o.policyBinding = buildUnnamed4687();
  }
  buildCounterAddRolesResponse--;
  return o;
}

void checkAddRolesResponse(api.AddRolesResponse o) {
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    checkUnnamed4687(o.policyBinding!);
  }
  buildCounterAddRolesResponse--;
}

core.List<core.String> buildUnnamed4688() => [
      'foo',
      'foo',
    ];

void checkUnnamed4688(core.List<core.String> o) {
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

core.List<api.SecondaryIpRangeSpec> buildUnnamed4689() => [
      buildSecondaryIpRangeSpec(),
      buildSecondaryIpRangeSpec(),
    ];

void checkUnnamed4689(core.List<api.SecondaryIpRangeSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecondaryIpRangeSpec(o[0]);
  checkSecondaryIpRangeSpec(o[1]);
}

core.List<core.String> buildUnnamed4690() => [
      'foo',
      'foo',
    ];

void checkUnnamed4690(core.List<core.String> o) {
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

core.int buildCounterAddSubnetworkRequest = 0;
api.AddSubnetworkRequest buildAddSubnetworkRequest() {
  final o = api.AddSubnetworkRequest();
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    o.consumer = 'foo';
    o.consumerNetwork = 'foo';
    o.description = 'foo';
    o.ipPrefixLength = 42;
    o.region = 'foo';
    o.requestedAddress = 'foo';
    o.requestedRanges = buildUnnamed4688();
    o.secondaryIpRangeSpecs = buildUnnamed4689();
    o.subnetwork = 'foo';
    o.subnetworkUsers = buildUnnamed4690();
  }
  buildCounterAddSubnetworkRequest--;
  return o;
}

void checkAddSubnetworkRequest(api.AddSubnetworkRequest o) {
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    unittest.expect(
      o.consumer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed4688(o.requestedRanges!);
    checkUnnamed4689(o.secondaryIpRangeSpecs!);
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed4690(o.subnetworkUsers!);
  }
  buildCounterAddSubnetworkRequest--;
}

core.List<api.Method> buildUnnamed4691() => [
      buildMethod(),
      buildMethod(),
    ];

void checkUnnamed4691(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

core.List<api.Mixin> buildUnnamed4692() => [
      buildMixin(),
      buildMixin(),
    ];

void checkUnnamed4692(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

core.List<api.Option> buildUnnamed4693() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4693(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
api.Api buildApi() {
  final o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed4691();
    o.mixins = buildUnnamed4692();
    o.name = 'foo';
    o.options = buildUnnamed4693();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
    o.version = 'foo';
  }
  buildCounterApi--;
  return o;
}

void checkApi(api.Api o) {
  buildCounterApi++;
  if (buildCounterApi < 3) {
    checkUnnamed4691(o.methods!);
    checkUnnamed4692(o.mixins!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4693(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterApi--;
}

core.List<api.JwtLocation> buildUnnamed4694() => [
      buildJwtLocation(),
      buildJwtLocation(),
    ];

void checkUnnamed4694(core.List<api.JwtLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwtLocation(o[0]);
  checkJwtLocation(o[1]);
}

core.int buildCounterAuthProvider = 0;
api.AuthProvider buildAuthProvider() {
  final o = api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = 'foo';
    o.authorizationUrl = 'foo';
    o.id = 'foo';
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.jwtLocations = buildUnnamed4694();
  }
  buildCounterAuthProvider--;
  return o;
}

void checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(
      o.audiences!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authorizationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksUri!,
      unittest.equals('foo'),
    );
    checkUnnamed4694(o.jwtLocations!);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
api.AuthRequirement buildAuthRequirement() {
  final o = api.AuthRequirement();
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    o.audiences = 'foo';
    o.providerId = 'foo';
  }
  buildCounterAuthRequirement--;
  return o;
}

void checkAuthRequirement(api.AuthRequirement o) {
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    unittest.expect(
      o.audiences!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthRequirement--;
}

core.List<api.AuthProvider> buildUnnamed4695() => [
      buildAuthProvider(),
      buildAuthProvider(),
    ];

void checkUnnamed4695(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

core.List<api.AuthenticationRule> buildUnnamed4696() => [
      buildAuthenticationRule(),
      buildAuthenticationRule(),
    ];

void checkUnnamed4696(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  final o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed4695();
    o.rules = buildUnnamed4696();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed4695(o.providers!);
    checkUnnamed4696(o.rules!);
  }
  buildCounterAuthentication--;
}

core.List<api.AuthRequirement> buildUnnamed4697() => [
      buildAuthRequirement(),
      buildAuthRequirement(),
    ];

void checkUnnamed4697(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0]);
  checkAuthRequirement(o[1]);
}

core.int buildCounterAuthenticationRule = 0;
api.AuthenticationRule buildAuthenticationRule() {
  final o = api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed4697();
    o.selector = 'foo';
  }
  buildCounterAuthenticationRule--;
  return o;
}

void checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential!, unittest.isTrue);
    checkOAuthRequirements(o.oauth!);
    checkUnnamed4697(o.requirements!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticationRule--;
}

core.List<api.BackendRule> buildUnnamed4698() => [
      buildBackendRule(),
      buildBackendRule(),
    ];

void checkUnnamed4698(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0]);
  checkBackendRule(o[1]);
}

core.int buildCounterBackend = 0;
api.Backend buildBackend() {
  final o = api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed4698();
  }
  buildCounterBackend--;
  return o;
}

void checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed4698(o.rules!);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
api.BackendRule buildBackendRule() {
  final o = api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = 'foo';
    o.deadline = 42.0;
    o.disableAuth = true;
    o.jwtAudience = 'foo';
    o.operationDeadline = 42.0;
    o.pathTranslation = 'foo';
    o.protocol = 'foo';
    o.selector = 'foo';
  }
  buildCounterBackendRule--;
  return o;
}

void checkBackendRule(api.BackendRule o) {
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deadline!,
      unittest.equals(42.0),
    );
    unittest.expect(o.disableAuth!, unittest.isTrue);
    unittest.expect(
      o.jwtAudience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationDeadline!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pathTranslation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterBackendRule--;
}

core.List<api.BillingDestination> buildUnnamed4699() => [
      buildBillingDestination(),
      buildBillingDestination(),
    ];

void checkUnnamed4699(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0]);
  checkBillingDestination(o[1]);
}

core.int buildCounterBilling = 0;
api.Billing buildBilling() {
  final o = api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed4699();
  }
  buildCounterBilling--;
  return o;
}

void checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed4699(o.consumerDestinations!);
  }
  buildCounterBilling--;
}

core.List<core.String> buildUnnamed4700() => [
      'foo',
      'foo',
    ];

void checkUnnamed4700(core.List<core.String> o) {
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

core.int buildCounterBillingDestination = 0;
api.BillingDestination buildBillingDestination() {
  final o = api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed4700();
    o.monitoredResource = 'foo';
  }
  buildCounterBillingDestination--;
  return o;
}

void checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed4700(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingDestination--;
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

core.List<core.String> buildUnnamed4701() => [
      'foo',
      'foo',
    ];

void checkUnnamed4701(core.List<core.String> o) {
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

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  final o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.network = 'foo';
    o.peering = 'foo';
    o.reservedPeeringRanges = buildUnnamed4701();
    o.service = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peering!,
      unittest.equals('foo'),
    );
    checkUnnamed4701(o.reservedPeeringRanges!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterConnection--;
}

core.List<api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>
    buildUnnamed4702() => [
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(),
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(),
        ];

void checkUnnamed4702(
    core.List<api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(o[0]);
  checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(o[1]);
}

core.int buildCounterConsumerConfig = 0;
api.ConsumerConfig buildConsumerConfig() {
  final o = api.ConsumerConfig();
  buildCounterConsumerConfig++;
  if (buildCounterConsumerConfig < 3) {
    o.consumerExportCustomRoutes = true;
    o.consumerExportSubnetRoutesWithPublicIp = true;
    o.consumerImportCustomRoutes = true;
    o.consumerImportSubnetRoutesWithPublicIp = true;
    o.producerExportCustomRoutes = true;
    o.producerExportSubnetRoutesWithPublicIp = true;
    o.producerImportCustomRoutes = true;
    o.producerImportSubnetRoutesWithPublicIp = true;
    o.producerNetwork = 'foo';
    o.reservedRanges = buildUnnamed4702();
    o.vpcScReferenceArchitectureEnabled = true;
  }
  buildCounterConsumerConfig--;
  return o;
}

void checkConsumerConfig(api.ConsumerConfig o) {
  buildCounterConsumerConfig++;
  if (buildCounterConsumerConfig < 3) {
    unittest.expect(o.consumerExportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.consumerExportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.consumerImportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.consumerImportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.producerExportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.producerExportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(o.producerImportCustomRoutes!, unittest.isTrue);
    unittest.expect(o.producerImportSubnetRoutesWithPublicIp!, unittest.isTrue);
    unittest.expect(
      o.producerNetwork!,
      unittest.equals('foo'),
    );
    checkUnnamed4702(o.reservedRanges!);
    unittest.expect(o.vpcScReferenceArchitectureEnabled!, unittest.isTrue);
  }
  buildCounterConsumerConfig--;
}

core.int buildCounterConsumerConfigMetadata = 0;
api.ConsumerConfigMetadata buildConsumerConfigMetadata() {
  final o = api.ConsumerConfigMetadata();
  buildCounterConsumerConfigMetadata++;
  if (buildCounterConsumerConfigMetadata < 3) {}
  buildCounterConsumerConfigMetadata--;
  return o;
}

void checkConsumerConfigMetadata(api.ConsumerConfigMetadata o) {
  buildCounterConsumerConfigMetadata++;
  if (buildCounterConsumerConfigMetadata < 3) {}
  buildCounterConsumerConfigMetadata--;
}

core.int buildCounterConsumerProject = 0;
api.ConsumerProject buildConsumerProject() {
  final o = api.ConsumerProject();
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    o.projectNum = 'foo';
  }
  buildCounterConsumerProject--;
  return o;
}

void checkConsumerProject(api.ConsumerProject o) {
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    unittest.expect(
      o.projectNum!,
      unittest.equals('foo'),
    );
  }
  buildCounterConsumerProject--;
}

core.List<api.ContextRule> buildUnnamed4703() => [
      buildContextRule(),
      buildContextRule(),
    ];

void checkUnnamed4703(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0]);
  checkContextRule(o[1]);
}

core.int buildCounterContext = 0;
api.Context buildContext() {
  final o = api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed4703();
  }
  buildCounterContext--;
  return o;
}

void checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed4703(o.rules!);
  }
  buildCounterContext--;
}

core.List<core.String> buildUnnamed4704() => [
      'foo',
      'foo',
    ];

void checkUnnamed4704(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4705() => [
      'foo',
      'foo',
    ];

void checkUnnamed4705(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4706() => [
      'foo',
      'foo',
    ];

void checkUnnamed4706(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4707() => [
      'foo',
      'foo',
    ];

void checkUnnamed4707(core.List<core.String> o) {
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

core.int buildCounterContextRule = 0;
api.ContextRule buildContextRule() {
  final o = api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed4704();
    o.allowedResponseExtensions = buildUnnamed4705();
    o.provided = buildUnnamed4706();
    o.requested = buildUnnamed4707();
    o.selector = 'foo';
  }
  buildCounterContextRule--;
  return o;
}

void checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed4704(o.allowedRequestExtensions!);
    checkUnnamed4705(o.allowedResponseExtensions!);
    checkUnnamed4706(o.provided!);
    checkUnnamed4707(o.requested!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  final o = api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.environment = 'foo';
  }
  buildCounterControl--;
  return o;
}

void checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
  }
  buildCounterControl--;
}

core.List<api.CustomErrorRule> buildUnnamed4708() => [
      buildCustomErrorRule(),
      buildCustomErrorRule(),
    ];

void checkUnnamed4708(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0]);
  checkCustomErrorRule(o[1]);
}

core.List<core.String> buildUnnamed4709() => [
      'foo',
      'foo',
    ];

void checkUnnamed4709(core.List<core.String> o) {
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

core.int buildCounterCustomError = 0;
api.CustomError buildCustomError() {
  final o = api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed4708();
    o.types = buildUnnamed4709();
  }
  buildCounterCustomError--;
  return o;
}

void checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed4708(o.rules!);
    checkUnnamed4709(o.types!);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
api.CustomErrorRule buildCustomErrorRule() {
  final o = api.CustomErrorRule();
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    o.isErrorType = true;
    o.selector = 'foo';
  }
  buildCounterCustomErrorRule--;
  return o;
}

void checkCustomErrorRule(api.CustomErrorRule o) {
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    unittest.expect(o.isErrorType!, unittest.isTrue);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomErrorRule--;
}

core.int buildCounterCustomHttpPattern = 0;
api.CustomHttpPattern buildCustomHttpPattern() {
  final o = api.CustomHttpPattern();
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    o.kind = 'foo';
    o.path = 'foo';
  }
  buildCounterCustomHttpPattern--;
  return o;
}

void checkCustomHttpPattern(api.CustomHttpPattern o) {
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomHttpPattern--;
}

core.int buildCounterDeleteConnectionMetadata = 0;
api.DeleteConnectionMetadata buildDeleteConnectionMetadata() {
  final o = api.DeleteConnectionMetadata();
  buildCounterDeleteConnectionMetadata++;
  if (buildCounterDeleteConnectionMetadata < 3) {}
  buildCounterDeleteConnectionMetadata--;
  return o;
}

void checkDeleteConnectionMetadata(api.DeleteConnectionMetadata o) {
  buildCounterDeleteConnectionMetadata++;
  if (buildCounterDeleteConnectionMetadata < 3) {}
  buildCounterDeleteConnectionMetadata--;
}

core.int buildCounterDeleteConnectionRequest = 0;
api.DeleteConnectionRequest buildDeleteConnectionRequest() {
  final o = api.DeleteConnectionRequest();
  buildCounterDeleteConnectionRequest++;
  if (buildCounterDeleteConnectionRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterDeleteConnectionRequest--;
  return o;
}

void checkDeleteConnectionRequest(api.DeleteConnectionRequest o) {
  buildCounterDeleteConnectionRequest++;
  if (buildCounterDeleteConnectionRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteConnectionRequest--;
}

core.int buildCounterDeletePeeredDnsDomainMetadata = 0;
api.DeletePeeredDnsDomainMetadata buildDeletePeeredDnsDomainMetadata() {
  final o = api.DeletePeeredDnsDomainMetadata();
  buildCounterDeletePeeredDnsDomainMetadata++;
  if (buildCounterDeletePeeredDnsDomainMetadata < 3) {}
  buildCounterDeletePeeredDnsDomainMetadata--;
  return o;
}

void checkDeletePeeredDnsDomainMetadata(api.DeletePeeredDnsDomainMetadata o) {
  buildCounterDeletePeeredDnsDomainMetadata++;
  if (buildCounterDeletePeeredDnsDomainMetadata < 3) {}
  buildCounterDeletePeeredDnsDomainMetadata--;
}

core.int buildCounterDisableVpcServiceControlsRequest = 0;
api.DisableVpcServiceControlsRequest buildDisableVpcServiceControlsRequest() {
  final o = api.DisableVpcServiceControlsRequest();
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterDisableVpcServiceControlsRequest--;
  return o;
}

void checkDisableVpcServiceControlsRequest(
    api.DisableVpcServiceControlsRequest o) {
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisableVpcServiceControlsRequest--;
}

core.List<core.String> buildUnnamed4710() => [
      'foo',
      'foo',
    ];

void checkUnnamed4710(core.List<core.String> o) {
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

core.int buildCounterDnsRecordSet = 0;
api.DnsRecordSet buildDnsRecordSet() {
  final o = api.DnsRecordSet();
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    o.data = buildUnnamed4710();
    o.domain = 'foo';
    o.ttl = 'foo';
    o.type = 'foo';
  }
  buildCounterDnsRecordSet--;
  return o;
}

void checkDnsRecordSet(api.DnsRecordSet o) {
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    checkUnnamed4710(o.data!);
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsRecordSet--;
}

core.int buildCounterDnsZone = 0;
api.DnsZone buildDnsZone() {
  final o = api.DnsZone();
  buildCounterDnsZone++;
  if (buildCounterDnsZone < 3) {
    o.dnsSuffix = 'foo';
    o.name = 'foo';
  }
  buildCounterDnsZone--;
  return o;
}

void checkDnsZone(api.DnsZone o) {
  buildCounterDnsZone++;
  if (buildCounterDnsZone < 3) {
    unittest.expect(
      o.dnsSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDnsZone--;
}

core.List<api.Page> buildUnnamed4711() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed4711(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.List<api.DocumentationRule> buildUnnamed4712() => [
      buildDocumentationRule(),
      buildDocumentationRule(),
    ];

void checkUnnamed4712(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0]);
  checkDocumentationRule(o[1]);
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  final o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = 'foo';
    o.overview = 'foo';
    o.pages = buildUnnamed4711();
    o.rules = buildUnnamed4712();
    o.serviceRootUrl = 'foo';
    o.summary = 'foo';
  }
  buildCounterDocumentation--;
  return o;
}

void checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(
      o.documentationRootUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overview!,
      unittest.equals('foo'),
    );
    checkUnnamed4711(o.pages!);
    checkUnnamed4712(o.rules!);
    unittest.expect(
      o.serviceRootUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentation--;
}

core.int buildCounterDocumentationRule = 0;
api.DocumentationRule buildDocumentationRule() {
  final o = api.DocumentationRule();
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    o.deprecationDescription = 'foo';
    o.description = 'foo';
    o.selector = 'foo';
  }
  buildCounterDocumentationRule--;
  return o;
}

void checkDocumentationRule(api.DocumentationRule o) {
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    unittest.expect(
      o.deprecationDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocumentationRule--;
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

core.int buildCounterEnableVpcServiceControlsRequest = 0;
api.EnableVpcServiceControlsRequest buildEnableVpcServiceControlsRequest() {
  final o = api.EnableVpcServiceControlsRequest();
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = 'foo';
  }
  buildCounterEnableVpcServiceControlsRequest--;
  return o;
}

void checkEnableVpcServiceControlsRequest(
    api.EnableVpcServiceControlsRequest o) {
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnableVpcServiceControlsRequest--;
}

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  final o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.allowCors = true;
    o.name = 'foo';
    o.target = 'foo';
  }
  buildCounterEndpoint--;
  return o;
}

void checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    unittest.expect(o.allowCors!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.target!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndpoint--;
}

core.List<api.EnumValue> buildUnnamed4713() => [
      buildEnumValue(),
      buildEnumValue(),
    ];

void checkUnnamed4713(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0]);
  checkEnumValue(o[1]);
}

core.List<api.Option> buildUnnamed4714() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4714(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnum = 0;
api.Enum buildEnum() {
  final o = api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed4713();
    o.name = 'foo';
    o.options = buildUnnamed4714();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterEnum--;
  return o;
}

void checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed4713(o.enumvalue!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4714(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnum--;
}

core.List<api.Option> buildUnnamed4715() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4715(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnumValue = 0;
api.EnumValue buildEnumValue() {
  final o = api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = 'foo';
    o.number = 42;
    o.options = buildUnnamed4715();
  }
  buildCounterEnumValue--;
  return o;
}

void checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    checkUnnamed4715(o.options!);
  }
  buildCounterEnumValue--;
}

core.List<api.Option> buildUnnamed4716() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4716(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterField = 0;
api.Field buildField() {
  final o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = 'foo';
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed4716();
    o.packed = true;
    o.typeUrl = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(
      o.cardinality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jsonName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    unittest.expect(
      o.oneofIndex!,
      unittest.equals(42),
    );
    checkUnnamed4716(o.options!);
    unittest.expect(o.packed!, unittest.isTrue);
    unittest.expect(
      o.typeUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterField--;
}

core.int buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange =
    0;
api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
    buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange() {
  final o = api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange();
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange++;
  if (buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange <
      3) {
    o.address = 'foo';
    o.ipPrefixLength = 42;
    o.name = 'foo';
  }
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange--;
  return o;
}

void checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(
    api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange o) {
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange++;
  if (buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange <
      3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudServicenetworkingV1ConsumerConfigReservedRange--;
}

core.List<core.String> buildUnnamed4717() => [
      'foo',
      'foo',
    ];

void checkUnnamed4717(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudServicenetworkingV1betaConnection = 0;
api.GoogleCloudServicenetworkingV1betaConnection
    buildGoogleCloudServicenetworkingV1betaConnection() {
  final o = api.GoogleCloudServicenetworkingV1betaConnection();
  buildCounterGoogleCloudServicenetworkingV1betaConnection++;
  if (buildCounterGoogleCloudServicenetworkingV1betaConnection < 3) {
    o.network = 'foo';
    o.peering = 'foo';
    o.reservedPeeringRanges = buildUnnamed4717();
    o.service = 'foo';
  }
  buildCounterGoogleCloudServicenetworkingV1betaConnection--;
  return o;
}

void checkGoogleCloudServicenetworkingV1betaConnection(
    api.GoogleCloudServicenetworkingV1betaConnection o) {
  buildCounterGoogleCloudServicenetworkingV1betaConnection++;
  if (buildCounterGoogleCloudServicenetworkingV1betaConnection < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peering!,
      unittest.equals('foo'),
    );
    checkUnnamed4717(o.reservedPeeringRanges!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudServicenetworkingV1betaConnection--;
}

core.int buildCounterGoogleCloudServicenetworkingV1betaSubnetwork = 0;
api.GoogleCloudServicenetworkingV1betaSubnetwork
    buildGoogleCloudServicenetworkingV1betaSubnetwork() {
  final o = api.GoogleCloudServicenetworkingV1betaSubnetwork();
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork++;
  if (buildCounterGoogleCloudServicenetworkingV1betaSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.outsideAllocation = true;
  }
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork--;
  return o;
}

void checkGoogleCloudServicenetworkingV1betaSubnetwork(
    api.GoogleCloudServicenetworkingV1betaSubnetwork o) {
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork++;
  if (buildCounterGoogleCloudServicenetworkingV1betaSubnetwork < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outsideAllocation!, unittest.isTrue);
  }
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork--;
}

core.List<api.HttpRule> buildUnnamed4718() => [
      buildHttpRule(),
      buildHttpRule(),
    ];

void checkUnnamed4718(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttp = 0;
api.Http buildHttp() {
  final o = api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed4718();
  }
  buildCounterHttp--;
  return o;
}

void checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion!, unittest.isTrue);
    checkUnnamed4718(o.rules!);
  }
  buildCounterHttp--;
}

core.List<api.HttpRule> buildUnnamed4719() => [
      buildHttpRule(),
      buildHttpRule(),
    ];

void checkUnnamed4719(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttpRule = 0;
api.HttpRule buildHttpRule() {
  final o = api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed4719();
    o.body = 'foo';
    o.custom = buildCustomHttpPattern();
    o.delete = 'foo';
    o.get = 'foo';
    o.patch = 'foo';
    o.post = 'foo';
    o.put = 'foo';
    o.responseBody = 'foo';
    o.selector = 'foo';
  }
  buildCounterHttpRule--;
  return o;
}

void checkHttpRule(api.HttpRule o) {
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    checkUnnamed4719(o.additionalBindings!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkCustomHttpPattern(o.custom!);
    unittest.expect(
      o.delete!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.get!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.patch!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.post!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.put!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseBody!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRule--;
}

core.int buildCounterJwtLocation = 0;
api.JwtLocation buildJwtLocation() {
  final o = api.JwtLocation();
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    o.header = 'foo';
    o.query = 'foo';
    o.valuePrefix = 'foo';
  }
  buildCounterJwtLocation--;
  return o;
}

void checkJwtLocation(api.JwtLocation o) {
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valuePrefix!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwtLocation--;
}

core.int buildCounterLabelDescriptor = 0;
api.LabelDescriptor buildLabelDescriptor() {
  final o = api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = 'foo';
    o.key = 'foo';
    o.valueType = 'foo';
  }
  buildCounterLabelDescriptor--;
  return o;
}

void checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabelDescriptor--;
}

core.List<api.Connection> buildUnnamed4720() => [
      buildConnection(),
      buildConnection(),
    ];

void checkUnnamed4720(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  final o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed4720();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed4720(o.connections!);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.Operation> buildUnnamed4721() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed4721(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed4721();
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
    checkUnnamed4721(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PeeredDnsDomain> buildUnnamed4722() => [
      buildPeeredDnsDomain(),
      buildPeeredDnsDomain(),
    ];

void checkUnnamed4722(core.List<api.PeeredDnsDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeredDnsDomain(o[0]);
  checkPeeredDnsDomain(o[1]);
}

core.int buildCounterListPeeredDnsDomainsResponse = 0;
api.ListPeeredDnsDomainsResponse buildListPeeredDnsDomainsResponse() {
  final o = api.ListPeeredDnsDomainsResponse();
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    o.peeredDnsDomains = buildUnnamed4722();
  }
  buildCounterListPeeredDnsDomainsResponse--;
  return o;
}

void checkListPeeredDnsDomainsResponse(api.ListPeeredDnsDomainsResponse o) {
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    checkUnnamed4722(o.peeredDnsDomains!);
  }
  buildCounterListPeeredDnsDomainsResponse--;
}

core.List<api.LabelDescriptor> buildUnnamed4723() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed4723(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterLogDescriptor = 0;
api.LogDescriptor buildLogDescriptor() {
  final o = api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed4723();
    o.name = 'foo';
  }
  buildCounterLogDescriptor--;
  return o;
}

void checkLogDescriptor(api.LogDescriptor o) {
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed4723(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLogDescriptor--;
}

core.List<api.LoggingDestination> buildUnnamed4724() => [
      buildLoggingDestination(),
      buildLoggingDestination(),
    ];

void checkUnnamed4724(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.List<api.LoggingDestination> buildUnnamed4725() => [
      buildLoggingDestination(),
      buildLoggingDestination(),
    ];

void checkUnnamed4725(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.int buildCounterLogging = 0;
api.Logging buildLogging() {
  final o = api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed4724();
    o.producerDestinations = buildUnnamed4725();
  }
  buildCounterLogging--;
  return o;
}

void checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed4724(o.consumerDestinations!);
    checkUnnamed4725(o.producerDestinations!);
  }
  buildCounterLogging--;
}

core.List<core.String> buildUnnamed4726() => [
      'foo',
      'foo',
    ];

void checkUnnamed4726(core.List<core.String> o) {
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

core.int buildCounterLoggingDestination = 0;
api.LoggingDestination buildLoggingDestination() {
  final o = api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed4726();
    o.monitoredResource = 'foo';
  }
  buildCounterLoggingDestination--;
  return o;
}

void checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed4726(o.logs!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoggingDestination--;
}

core.List<api.Option> buildUnnamed4727() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4727(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterMethod = 0;
api.Method buildMethod() {
  final o = api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = 'foo';
    o.options = buildUnnamed4727();
    o.requestStreaming = true;
    o.requestTypeUrl = 'foo';
    o.responseStreaming = true;
    o.responseTypeUrl = 'foo';
    o.syntax = 'foo';
  }
  buildCounterMethod--;
  return o;
}

void checkMethod(api.Method o) {
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4727(o.options!);
    unittest.expect(o.requestStreaming!, unittest.isTrue);
    unittest.expect(
      o.requestTypeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.responseStreaming!, unittest.isTrue);
    unittest.expect(
      o.responseTypeUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterMethod--;
}

core.List<api.LabelDescriptor> buildUnnamed4728() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed4728(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.List<core.String> buildUnnamed4729() => [
      'foo',
      'foo',
    ];

void checkUnnamed4729(core.List<core.String> o) {
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

core.int buildCounterMetricDescriptor = 0;
api.MetricDescriptor buildMetricDescriptor() {
  final o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed4728();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed4729();
    o.name = 'foo';
    o.type = 'foo';
    o.unit = 'foo';
    o.valueType = 'foo';
  }
  buildCounterMetricDescriptor--;
  return o;
}

void checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed4728(o.labels!);
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    checkMetricDescriptorMetadata(o.metadata!);
    unittest.expect(
      o.metricKind!,
      unittest.equals('foo'),
    );
    checkUnnamed4729(o.monitoredResourceTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
api.MetricDescriptorMetadata buildMetricDescriptorMetadata() {
  final o = api.MetricDescriptorMetadata();
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    o.ingestDelay = 'foo';
    o.launchStage = 'foo';
    o.samplePeriod = 'foo';
  }
  buildCounterMetricDescriptorMetadata--;
  return o;
}

void checkMetricDescriptorMetadata(api.MetricDescriptorMetadata o) {
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    unittest.expect(
      o.ingestDelay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.samplePeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricDescriptorMetadata--;
}

core.Map<core.String, core.String> buildUnnamed4730() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4730(core.Map<core.String, core.String> o) {
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

core.int buildCounterMetricRule = 0;
api.MetricRule buildMetricRule() {
  final o = api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed4730();
    o.selector = 'foo';
  }
  buildCounterMetricRule--;
  return o;
}

void checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed4730(o.metricCosts!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
api.Mixin buildMixin() {
  final o = api.Mixin();
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    o.name = 'foo';
    o.root = 'foo';
  }
  buildCounterMixin--;
  return o;
}

void checkMixin(api.Mixin o) {
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.root!,
      unittest.equals('foo'),
    );
  }
  buildCounterMixin--;
}

core.List<api.LabelDescriptor> buildUnnamed4731() => [
      buildLabelDescriptor(),
      buildLabelDescriptor(),
    ];

void checkUnnamed4731(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  final o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed4731();
    o.launchStage = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

void checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed4731(o.labels!);
    unittest.expect(
      o.launchStage!,
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
  buildCounterMonitoredResourceDescriptor--;
}

core.List<api.MonitoringDestination> buildUnnamed4732() => [
      buildMonitoringDestination(),
      buildMonitoringDestination(),
    ];

void checkUnnamed4732(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.List<api.MonitoringDestination> buildUnnamed4733() => [
      buildMonitoringDestination(),
      buildMonitoringDestination(),
    ];

void checkUnnamed4733(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
api.Monitoring buildMonitoring() {
  final o = api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed4732();
    o.producerDestinations = buildUnnamed4733();
  }
  buildCounterMonitoring--;
  return o;
}

void checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed4732(o.consumerDestinations!);
    checkUnnamed4733(o.producerDestinations!);
  }
  buildCounterMonitoring--;
}

core.List<core.String> buildUnnamed4734() => [
      'foo',
      'foo',
    ];

void checkUnnamed4734(core.List<core.String> o) {
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

core.int buildCounterMonitoringDestination = 0;
api.MonitoringDestination buildMonitoringDestination() {
  final o = api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed4734();
    o.monitoredResource = 'foo';
  }
  buildCounterMonitoringDestination--;
  return o;
}

void checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed4734(o.metrics!);
    unittest.expect(
      o.monitoredResource!,
      unittest.equals('foo'),
    );
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
api.OAuthRequirements buildOAuthRequirements() {
  final o = api.OAuthRequirements();
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    o.canonicalScopes = 'foo';
  }
  buildCounterOAuthRequirements--;
  return o;
}

void checkOAuthRequirements(api.OAuthRequirements o) {
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    unittest.expect(
      o.canonicalScopes!,
      unittest.equals('foo'),
    );
  }
  buildCounterOAuthRequirements--;
}

core.Map<core.String, core.Object> buildUnnamed4735() => {
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

void checkUnnamed4735(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed4736() => {
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

void checkUnnamed4736(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed4735();
    o.name = 'foo';
    o.response = buildUnnamed4736();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed4735(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4736(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object> buildUnnamed4737() => {
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

void checkUnnamed4737(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOption = 0;
api.Option buildOption() {
  final o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed4737();
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4737(o.value!);
  }
  buildCounterOption--;
}

core.List<api.Page> buildUnnamed4738() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed4738(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  final o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = 'foo';
    o.name = 'foo';
    o.subpages = buildUnnamed4738();
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4738(o.subpages!);
  }
  buildCounterPage--;
}

core.int buildCounterPartialDeleteConnectionMetadata = 0;
api.PartialDeleteConnectionMetadata buildPartialDeleteConnectionMetadata() {
  final o = api.PartialDeleteConnectionMetadata();
  buildCounterPartialDeleteConnectionMetadata++;
  if (buildCounterPartialDeleteConnectionMetadata < 3) {}
  buildCounterPartialDeleteConnectionMetadata--;
  return o;
}

void checkPartialDeleteConnectionMetadata(
    api.PartialDeleteConnectionMetadata o) {
  buildCounterPartialDeleteConnectionMetadata++;
  if (buildCounterPartialDeleteConnectionMetadata < 3) {}
  buildCounterPartialDeleteConnectionMetadata--;
}

core.int buildCounterPeeredDnsDomain = 0;
api.PeeredDnsDomain buildPeeredDnsDomain() {
  final o = api.PeeredDnsDomain();
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    o.dnsSuffix = 'foo';
    o.name = 'foo';
  }
  buildCounterPeeredDnsDomain--;
  return o;
}

void checkPeeredDnsDomain(api.PeeredDnsDomain o) {
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    unittest.expect(
      o.dnsSuffix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPeeredDnsDomain--;
}

core.int buildCounterPeeredDnsDomainMetadata = 0;
api.PeeredDnsDomainMetadata buildPeeredDnsDomainMetadata() {
  final o = api.PeeredDnsDomainMetadata();
  buildCounterPeeredDnsDomainMetadata++;
  if (buildCounterPeeredDnsDomainMetadata < 3) {}
  buildCounterPeeredDnsDomainMetadata--;
  return o;
}

void checkPeeredDnsDomainMetadata(api.PeeredDnsDomainMetadata o) {
  buildCounterPeeredDnsDomainMetadata++;
  if (buildCounterPeeredDnsDomainMetadata < 3) {}
  buildCounterPeeredDnsDomainMetadata--;
}

core.int buildCounterPolicyBinding = 0;
api.PolicyBinding buildPolicyBinding() {
  final o = api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.member = 'foo';
    o.role = 'foo';
  }
  buildCounterPolicyBinding--;
  return o;
}

void checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    unittest.expect(
      o.member!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterPolicyBinding--;
}

core.List<api.QuotaLimit> buildUnnamed4739() => [
      buildQuotaLimit(),
      buildQuotaLimit(),
    ];

void checkUnnamed4739(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

core.List<api.MetricRule> buildUnnamed4740() => [
      buildMetricRule(),
      buildMetricRule(),
    ];

void checkUnnamed4740(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  final o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed4739();
    o.metricRules = buildUnnamed4740();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed4739(o.limits!);
    checkUnnamed4740(o.metricRules!);
  }
  buildCounterQuota--;
}

core.Map<core.String, core.String> buildUnnamed4741() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4741(core.Map<core.String, core.String> o) {
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

core.int buildCounterQuotaLimit = 0;
api.QuotaLimit buildQuotaLimit() {
  final o = api.QuotaLimit();
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    o.defaultLimit = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.duration = 'foo';
    o.freeTier = 'foo';
    o.maxLimit = 'foo';
    o.metric = 'foo';
    o.name = 'foo';
    o.unit = 'foo';
    o.values = buildUnnamed4741();
  }
  buildCounterQuotaLimit--;
  return o;
}

void checkQuotaLimit(api.QuotaLimit o) {
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    unittest.expect(
      o.defaultLimit!,
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
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
    checkUnnamed4741(o.values!);
  }
  buildCounterQuotaLimit--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  final o = api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.ipCidrRange = 'foo';
    o.network = 'foo';
  }
  buildCounterRange--;
  return o;
}

void checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
  }
  buildCounterRange--;
}

core.List<core.String> buildUnnamed4742() => [
      'foo',
      'foo',
    ];

void checkUnnamed4742(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed4743() => [
      42,
      42,
    ];

void checkUnnamed4743(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<api.Subnetwork> buildUnnamed4744() => [
      buildSubnetwork(),
      buildSubnetwork(),
    ];

void checkUnnamed4744(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterRangeReservation = 0;
api.RangeReservation buildRangeReservation() {
  final o = api.RangeReservation();
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    o.ipPrefixLength = 42;
    o.requestedRanges = buildUnnamed4742();
    o.secondaryRangeIpPrefixLengths = buildUnnamed4743();
    o.subnetworkCandidates = buildUnnamed4744();
  }
  buildCounterRangeReservation--;
  return o;
}

void checkRangeReservation(api.RangeReservation o) {
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    checkUnnamed4742(o.requestedRanges!);
    checkUnnamed4743(o.secondaryRangeIpPrefixLengths!);
    checkUnnamed4744(o.subnetworkCandidates!);
  }
  buildCounterRangeReservation--;
}

core.int buildCounterRemoveDnsRecordSetMetadata = 0;
api.RemoveDnsRecordSetMetadata buildRemoveDnsRecordSetMetadata() {
  final o = api.RemoveDnsRecordSetMetadata();
  buildCounterRemoveDnsRecordSetMetadata++;
  if (buildCounterRemoveDnsRecordSetMetadata < 3) {}
  buildCounterRemoveDnsRecordSetMetadata--;
  return o;
}

void checkRemoveDnsRecordSetMetadata(api.RemoveDnsRecordSetMetadata o) {
  buildCounterRemoveDnsRecordSetMetadata++;
  if (buildCounterRemoveDnsRecordSetMetadata < 3) {}
  buildCounterRemoveDnsRecordSetMetadata--;
}

core.int buildCounterRemoveDnsRecordSetRequest = 0;
api.RemoveDnsRecordSetRequest buildRemoveDnsRecordSetRequest() {
  final o = api.RemoveDnsRecordSetRequest();
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterRemoveDnsRecordSetRequest--;
  return o;
}

void checkRemoveDnsRecordSetRequest(api.RemoveDnsRecordSetRequest o) {
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.dnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveDnsRecordSetRequest--;
}

core.int buildCounterRemoveDnsRecordSetResponse = 0;
api.RemoveDnsRecordSetResponse buildRemoveDnsRecordSetResponse() {
  final o = api.RemoveDnsRecordSetResponse();
  buildCounterRemoveDnsRecordSetResponse++;
  if (buildCounterRemoveDnsRecordSetResponse < 3) {}
  buildCounterRemoveDnsRecordSetResponse--;
  return o;
}

void checkRemoveDnsRecordSetResponse(api.RemoveDnsRecordSetResponse o) {
  buildCounterRemoveDnsRecordSetResponse++;
  if (buildCounterRemoveDnsRecordSetResponse < 3) {}
  buildCounterRemoveDnsRecordSetResponse--;
}

core.int buildCounterRemoveDnsZoneMetadata = 0;
api.RemoveDnsZoneMetadata buildRemoveDnsZoneMetadata() {
  final o = api.RemoveDnsZoneMetadata();
  buildCounterRemoveDnsZoneMetadata++;
  if (buildCounterRemoveDnsZoneMetadata < 3) {}
  buildCounterRemoveDnsZoneMetadata--;
  return o;
}

void checkRemoveDnsZoneMetadata(api.RemoveDnsZoneMetadata o) {
  buildCounterRemoveDnsZoneMetadata++;
  if (buildCounterRemoveDnsZoneMetadata < 3) {}
  buildCounterRemoveDnsZoneMetadata--;
}

core.int buildCounterRemoveDnsZoneRequest = 0;
api.RemoveDnsZoneRequest buildRemoveDnsZoneRequest() {
  final o = api.RemoveDnsZoneRequest();
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    o.consumerNetwork = 'foo';
    o.name = 'foo';
  }
  buildCounterRemoveDnsZoneRequest--;
  return o;
}

void checkRemoveDnsZoneRequest(api.RemoveDnsZoneRequest o) {
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveDnsZoneRequest--;
}

core.int buildCounterRemoveDnsZoneResponse = 0;
api.RemoveDnsZoneResponse buildRemoveDnsZoneResponse() {
  final o = api.RemoveDnsZoneResponse();
  buildCounterRemoveDnsZoneResponse++;
  if (buildCounterRemoveDnsZoneResponse < 3) {}
  buildCounterRemoveDnsZoneResponse--;
  return o;
}

void checkRemoveDnsZoneResponse(api.RemoveDnsZoneResponse o) {
  buildCounterRemoveDnsZoneResponse++;
  if (buildCounterRemoveDnsZoneResponse < 3) {}
  buildCounterRemoveDnsZoneResponse--;
}

core.int buildCounterRoute = 0;
api.Route buildRoute() {
  final o = api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.destRange = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.nextHopGateway = 'foo';
  }
  buildCounterRoute--;
  return o;
}

void checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(
      o.destRange!,
      unittest.equals('foo'),
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
      o.nextHopGateway!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoute--;
}

core.int buildCounterSearchRangeRequest = 0;
api.SearchRangeRequest buildSearchRangeRequest() {
  final o = api.SearchRangeRequest();
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    o.ipPrefixLength = 42;
    o.network = 'foo';
  }
  buildCounterSearchRangeRequest--;
  return o;
}

void checkSearchRangeRequest(api.SearchRangeRequest o) {
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchRangeRequest--;
}

core.int buildCounterSecondaryIpRange = 0;
api.SecondaryIpRange buildSecondaryIpRange() {
  final o = api.SecondaryIpRange();
  buildCounterSecondaryIpRange++;
  if (buildCounterSecondaryIpRange < 3) {
    o.ipCidrRange = 'foo';
    o.rangeName = 'foo';
  }
  buildCounterSecondaryIpRange--;
  return o;
}

void checkSecondaryIpRange(api.SecondaryIpRange o) {
  buildCounterSecondaryIpRange++;
  if (buildCounterSecondaryIpRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecondaryIpRange--;
}

core.int buildCounterSecondaryIpRangeSpec = 0;
api.SecondaryIpRangeSpec buildSecondaryIpRangeSpec() {
  final o = api.SecondaryIpRangeSpec();
  buildCounterSecondaryIpRangeSpec++;
  if (buildCounterSecondaryIpRangeSpec < 3) {
    o.ipPrefixLength = 42;
    o.rangeName = 'foo';
    o.requestedAddress = 'foo';
  }
  buildCounterSecondaryIpRangeSpec--;
  return o;
}

void checkSecondaryIpRangeSpec(api.SecondaryIpRangeSpec o) {
  buildCounterSecondaryIpRangeSpec++;
  if (buildCounterSecondaryIpRangeSpec < 3) {
    unittest.expect(
      o.ipPrefixLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecondaryIpRangeSpec--;
}

core.List<api.Api> buildUnnamed4745() => [
      buildApi(),
      buildApi(),
    ];

void checkUnnamed4745(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

core.List<api.Endpoint> buildUnnamed4746() => [
      buildEndpoint(),
      buildEndpoint(),
    ];

void checkUnnamed4746(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

core.List<api.Enum> buildUnnamed4747() => [
      buildEnum(),
      buildEnum(),
    ];

void checkUnnamed4747(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0]);
  checkEnum(o[1]);
}

core.List<api.LogDescriptor> buildUnnamed4748() => [
      buildLogDescriptor(),
      buildLogDescriptor(),
    ];

void checkUnnamed4748(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0]);
  checkLogDescriptor(o[1]);
}

core.List<api.MetricDescriptor> buildUnnamed4749() => [
      buildMetricDescriptor(),
      buildMetricDescriptor(),
    ];

void checkUnnamed4749(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed4750() => [
      buildMonitoredResourceDescriptor(),
      buildMonitoredResourceDescriptor(),
    ];

void checkUnnamed4750(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

core.List<api.Type> buildUnnamed4751() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed4751(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.List<api.Type> buildUnnamed4752() => [
      buildType(),
      buildType(),
    ];

void checkUnnamed4752(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed4745();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed4746();
    o.enums = buildUnnamed4747();
    o.http = buildHttp();
    o.id = 'foo';
    o.logging = buildLogging();
    o.logs = buildUnnamed4748();
    o.metrics = buildUnnamed4749();
    o.monitoredResources = buildUnnamed4750();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.producerProjectId = 'foo';
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed4751();
    o.title = 'foo';
    o.types = buildUnnamed4752();
    o.usage = buildUsage();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed4745(o.apis!);
    checkAuthentication(o.authentication!);
    checkBackend(o.backend!);
    checkBilling(o.billing!);
    unittest.expect(
      o.configVersion!,
      unittest.equals(42),
    );
    checkContext(o.context!);
    checkControl(o.control!);
    checkCustomError(o.customError!);
    checkDocumentation(o.documentation!);
    checkUnnamed4746(o.endpoints!);
    checkUnnamed4747(o.enums!);
    checkHttp(o.http!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkLogging(o.logging!);
    checkUnnamed4748(o.logs!);
    checkUnnamed4749(o.metrics!);
    checkUnnamed4750(o.monitoredResources!);
    checkMonitoring(o.monitoring!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.producerProjectId!,
      unittest.equals('foo'),
    );
    checkQuota(o.quota!);
    checkSourceInfo(o.sourceInfo!);
    checkSystemParameters(o.systemParameters!);
    checkUnnamed4751(o.systemTypes!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed4752(o.types!);
    checkUsage(o.usage!);
  }
  buildCounterService--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = 'foo';
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object> buildUnnamed4753() => {
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

void checkUnnamed4753(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4754() => [
      buildUnnamed4753(),
      buildUnnamed4753(),
    ];

void checkUnnamed4754(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4753(o[0]);
  checkUnnamed4753(o[1]);
}

core.int buildCounterSourceInfo = 0;
api.SourceInfo buildSourceInfo() {
  final o = api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed4754();
  }
  buildCounterSourceInfo--;
  return o;
}

void checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed4754(o.sourceFiles!);
  }
  buildCounterSourceInfo--;
}

core.Map<core.String, core.Object> buildUnnamed4755() => {
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

void checkUnnamed4755(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed4756() => [
      buildUnnamed4755(),
      buildUnnamed4755(),
    ];

void checkUnnamed4756(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4755(o[0]);
  checkUnnamed4755(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed4756();
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
    checkUnnamed4756(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.List<api.SecondaryIpRange> buildUnnamed4757() => [
      buildSecondaryIpRange(),
      buildSecondaryIpRange(),
    ];

void checkUnnamed4757(core.List<api.SecondaryIpRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSecondaryIpRange(o[0]);
  checkSecondaryIpRange(o[1]);
}

core.int buildCounterSubnetwork = 0;
api.Subnetwork buildSubnetwork() {
  final o = api.Subnetwork();
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.outsideAllocation = true;
    o.region = 'foo';
    o.secondaryIpRanges = buildUnnamed4757();
  }
  buildCounterSubnetwork--;
  return o;
}

void checkSubnetwork(api.Subnetwork o) {
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outsideAllocation!, unittest.isTrue);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed4757(o.secondaryIpRanges!);
  }
  buildCounterSubnetwork--;
}

core.int buildCounterSystemParameter = 0;
api.SystemParameter buildSystemParameter() {
  final o = api.SystemParameter();
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    o.httpHeader = 'foo';
    o.name = 'foo';
    o.urlQueryParameter = 'foo';
  }
  buildCounterSystemParameter--;
  return o;
}

void checkSystemParameter(api.SystemParameter o) {
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    unittest.expect(
      o.httpHeader!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlQueryParameter!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemParameter--;
}

core.List<api.SystemParameter> buildUnnamed4758() => [
      buildSystemParameter(),
      buildSystemParameter(),
    ];

void checkUnnamed4758(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0]);
  checkSystemParameter(o[1]);
}

core.int buildCounterSystemParameterRule = 0;
api.SystemParameterRule buildSystemParameterRule() {
  final o = api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed4758();
    o.selector = 'foo';
  }
  buildCounterSystemParameterRule--;
  return o;
}

void checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed4758(o.parameters!);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemParameterRule--;
}

core.List<api.SystemParameterRule> buildUnnamed4759() => [
      buildSystemParameterRule(),
      buildSystemParameterRule(),
    ];

void checkUnnamed4759(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0]);
  checkSystemParameterRule(o[1]);
}

core.int buildCounterSystemParameters = 0;
api.SystemParameters buildSystemParameters() {
  final o = api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed4759();
  }
  buildCounterSystemParameters--;
  return o;
}

void checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed4759(o.rules!);
  }
  buildCounterSystemParameters--;
}

core.List<api.Field> buildUnnamed4760() => [
      buildField(),
      buildField(),
    ];

void checkUnnamed4760(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

core.List<core.String> buildUnnamed4761() => [
      'foo',
      'foo',
    ];

void checkUnnamed4761(core.List<core.String> o) {
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

core.List<api.Option> buildUnnamed4762() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed4762(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
api.Type buildType() {
  final o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed4760();
    o.name = 'foo';
    o.oneofs = buildUnnamed4761();
    o.options = buildUnnamed4762();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed4760(o.fields!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4761(o.oneofs!);
    checkUnnamed4762(o.options!);
    checkSourceContext(o.sourceContext!);
    unittest.expect(
      o.syntax!,
      unittest.equals('foo'),
    );
  }
  buildCounterType--;
}

core.int buildCounterUpdateConsumerConfigRequest = 0;
api.UpdateConsumerConfigRequest buildUpdateConsumerConfigRequest() {
  final o = api.UpdateConsumerConfigRequest();
  buildCounterUpdateConsumerConfigRequest++;
  if (buildCounterUpdateConsumerConfigRequest < 3) {
    o.consumerConfig = buildConsumerConfig();
  }
  buildCounterUpdateConsumerConfigRequest--;
  return o;
}

void checkUpdateConsumerConfigRequest(api.UpdateConsumerConfigRequest o) {
  buildCounterUpdateConsumerConfigRequest++;
  if (buildCounterUpdateConsumerConfigRequest < 3) {
    checkConsumerConfig(o.consumerConfig!);
  }
  buildCounterUpdateConsumerConfigRequest--;
}

core.int buildCounterUpdateDnsRecordSetMetadata = 0;
api.UpdateDnsRecordSetMetadata buildUpdateDnsRecordSetMetadata() {
  final o = api.UpdateDnsRecordSetMetadata();
  buildCounterUpdateDnsRecordSetMetadata++;
  if (buildCounterUpdateDnsRecordSetMetadata < 3) {}
  buildCounterUpdateDnsRecordSetMetadata--;
  return o;
}

void checkUpdateDnsRecordSetMetadata(api.UpdateDnsRecordSetMetadata o) {
  buildCounterUpdateDnsRecordSetMetadata++;
  if (buildCounterUpdateDnsRecordSetMetadata < 3) {}
  buildCounterUpdateDnsRecordSetMetadata--;
}

core.int buildCounterUpdateDnsRecordSetRequest = 0;
api.UpdateDnsRecordSetRequest buildUpdateDnsRecordSetRequest() {
  final o = api.UpdateDnsRecordSetRequest();
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    o.consumerNetwork = 'foo';
    o.existingDnsRecordSet = buildDnsRecordSet();
    o.newDnsRecordSet = buildDnsRecordSet();
    o.zone = 'foo';
  }
  buildCounterUpdateDnsRecordSetRequest--;
  return o;
}

void checkUpdateDnsRecordSetRequest(api.UpdateDnsRecordSetRequest o) {
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkDnsRecordSet(o.existingDnsRecordSet!);
    checkDnsRecordSet(o.newDnsRecordSet!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDnsRecordSetRequest--;
}

core.List<core.String> buildUnnamed4763() => [
      'foo',
      'foo',
    ];

void checkUnnamed4763(core.List<core.String> o) {
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

core.List<api.UsageRule> buildUnnamed4764() => [
      buildUsageRule(),
      buildUsageRule(),
    ];

void checkUnnamed4764(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0]);
  checkUsageRule(o[1]);
}

core.int buildCounterUsage = 0;
api.Usage buildUsage() {
  final o = api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = 'foo';
    o.requirements = buildUnnamed4763();
    o.rules = buildUnnamed4764();
  }
  buildCounterUsage--;
  return o;
}

void checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(
      o.producerNotificationChannel!,
      unittest.equals('foo'),
    );
    checkUnnamed4763(o.requirements!);
    checkUnnamed4764(o.rules!);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
api.UsageRule buildUsageRule() {
  final o = api.UsageRule();
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    o.allowUnregisteredCalls = true;
    o.selector = 'foo';
    o.skipServiceControl = true;
  }
  buildCounterUsageRule--;
  return o;
}

void checkUsageRule(api.UsageRule o) {
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    unittest.expect(o.allowUnregisteredCalls!, unittest.isTrue);
    unittest.expect(
      o.selector!,
      unittest.equals('foo'),
    );
    unittest.expect(o.skipServiceControl!, unittest.isTrue);
  }
  buildCounterUsageRule--;
}

core.int buildCounterValidateConsumerConfigRequest = 0;
api.ValidateConsumerConfigRequest buildValidateConsumerConfigRequest() {
  final o = api.ValidateConsumerConfigRequest();
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    o.consumerNetwork = 'foo';
    o.consumerProject = buildConsumerProject();
    o.rangeReservation = buildRangeReservation();
    o.validateNetwork = true;
  }
  buildCounterValidateConsumerConfigRequest--;
  return o;
}

void checkValidateConsumerConfigRequest(api.ValidateConsumerConfigRequest o) {
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    unittest.expect(
      o.consumerNetwork!,
      unittest.equals('foo'),
    );
    checkConsumerProject(o.consumerProject!);
    checkRangeReservation(o.rangeReservation!);
    unittest.expect(o.validateNetwork!, unittest.isTrue);
  }
  buildCounterValidateConsumerConfigRequest--;
}

core.List<api.Subnetwork> buildUnnamed4765() => [
      buildSubnetwork(),
      buildSubnetwork(),
    ];

void checkUnnamed4765(core.List<api.Subnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubnetwork(o[0]);
  checkSubnetwork(o[1]);
}

core.int buildCounterValidateConsumerConfigResponse = 0;
api.ValidateConsumerConfigResponse buildValidateConsumerConfigResponse() {
  final o = api.ValidateConsumerConfigResponse();
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    o.existingSubnetworkCandidates = buildUnnamed4765();
    o.isValid = true;
    o.validationError = 'foo';
  }
  buildCounterValidateConsumerConfigResponse--;
  return o;
}

void checkValidateConsumerConfigResponse(api.ValidateConsumerConfigResponse o) {
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    checkUnnamed4765(o.existingSubnetworkCandidates!);
    unittest.expect(o.isValid!, unittest.isTrue);
    unittest.expect(
      o.validationError!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateConsumerConfigResponse--;
}

void main() {
  unittest.group('obj-schema-AddDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsRecordSetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsRecordSetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsRecordSetMetadata(od);
    });
  });

  unittest.group('obj-schema-AddDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-AddDnsZoneMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsZoneMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsZoneMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsZoneMetadata(od);
    });
  });

  unittest.group('obj-schema-AddDnsZoneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsZoneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsZoneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsZoneRequest(od);
    });
  });

  unittest.group('obj-schema-AddDnsZoneResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDnsZoneResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDnsZoneResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddDnsZoneResponse(od);
    });
  });

  unittest.group('obj-schema-AddRolesMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddRolesMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddRolesMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddRolesMetadata(od);
    });
  });

  unittest.group('obj-schema-AddRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddRolesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddRolesRequest(od);
    });
  });

  unittest.group('obj-schema-AddRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddRolesResponse(od);
    });
  });

  unittest.group('obj-schema-AddSubnetworkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddSubnetworkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddSubnetworkRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddSubnetworkRequest(od);
    });
  });

  unittest.group('obj-schema-Api', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Api.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApi(od);
    });
  });

  unittest.group('obj-schema-AuthProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthProvider(od);
    });
  });

  unittest.group('obj-schema-AuthRequirement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthRequirement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthRequirement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthRequirement(od);
    });
  });

  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthentication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Authentication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthentication(od);
    });
  });

  unittest.group('obj-schema-AuthenticationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticationRule(od);
    });
  });

  unittest.group('obj-schema-Backend', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackend();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Backend.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackend(od);
    });
  });

  unittest.group('obj-schema-BackendRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackendRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackendRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackendRule(od);
    });
  });

  unittest.group('obj-schema-Billing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBilling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Billing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBilling(od);
    });
  });

  unittest.group('obj-schema-BillingDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBillingDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BillingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingDestination(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Connection.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkConnection(od);
    });
  });

  unittest.group('obj-schema-ConsumerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerConfig(od);
    });
  });

  unittest.group('obj-schema-ConsumerConfigMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerConfigMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerConfigMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerConfigMetadata(od);
    });
  });

  unittest.group('obj-schema-ConsumerProject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumerProject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumerProject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumerProject(od);
    });
  });

  unittest.group('obj-schema-Context', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Context.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContext(od);
    });
  });

  unittest.group('obj-schema-ContextRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContextRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContextRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContextRule(od);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () async {
      final o = buildControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Control.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkControl(od);
    });
  });

  unittest.group('obj-schema-CustomError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomError(od);
    });
  });

  unittest.group('obj-schema-CustomErrorRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomErrorRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomErrorRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomErrorRule(od);
    });
  });

  unittest.group('obj-schema-CustomHttpPattern', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomHttpPattern();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomHttpPattern.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomHttpPattern(od);
    });
  });

  unittest.group('obj-schema-DeleteConnectionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteConnectionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteConnectionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteConnectionMetadata(od);
    });
  });

  unittest.group('obj-schema-DeleteConnectionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteConnectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteConnectionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteConnectionRequest(od);
    });
  });

  unittest.group('obj-schema-DeletePeeredDnsDomainMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeletePeeredDnsDomainMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeletePeeredDnsDomainMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeletePeeredDnsDomainMetadata(od);
    });
  });

  unittest.group('obj-schema-DisableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableVpcServiceControlsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableVpcServiceControlsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableVpcServiceControlsRequest(od);
    });
  });

  unittest.group('obj-schema-DnsRecordSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsRecordSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsRecordSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsRecordSet(od);
    });
  });

  unittest.group('obj-schema-DnsZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DnsZone.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDnsZone(od);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Documentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentation(od);
    });
  });

  unittest.group('obj-schema-DocumentationRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentationRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentationRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentationRule(od);
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

  unittest.group('obj-schema-EnableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableVpcServiceControlsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableVpcServiceControlsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableVpcServiceControlsRequest(od);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Endpoint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEndpoint(od);
    });
  });

  unittest.group('obj-schema-Enum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Enum.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnum(od);
    });
  });

  unittest.group('obj-schema-EnumValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnumValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EnumValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnumValue(od);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Field.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkField(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudServicenetworkingV1ConsumerConfigReservedRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudServicenetworkingV1ConsumerConfigReservedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudServicenetworkingV1ConsumerConfigReservedRange
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudServicenetworkingV1ConsumerConfigReservedRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudServicenetworkingV1betaConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudServicenetworkingV1betaConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudServicenetworkingV1betaConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudServicenetworkingV1betaConnection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudServicenetworkingV1betaSubnetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudServicenetworkingV1betaSubnetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudServicenetworkingV1betaSubnetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudServicenetworkingV1betaSubnetwork(od);
    });
  });

  unittest.group('obj-schema-Http', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Http.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttp(od);
    });
  });

  unittest.group('obj-schema-HttpRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpRule(od);
    });
  });

  unittest.group('obj-schema-JwtLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JwtLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJwtLocation(od);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLabelDescriptor(od);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListConnectionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListConnectionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListConnectionsResponse(od);
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

  unittest.group('obj-schema-ListPeeredDnsDomainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPeeredDnsDomainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPeeredDnsDomainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPeeredDnsDomainsResponse(od);
    });
  });

  unittest.group('obj-schema-LogDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LogDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLogDescriptor(od);
    });
  });

  unittest.group('obj-schema-Logging', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLogging();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Logging.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLogging(od);
    });
  });

  unittest.group('obj-schema-LoggingDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingDestination(od);
    });
  });

  unittest.group('obj-schema-Method', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMethod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Method.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMethod(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptor(od);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricDescriptorMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricDescriptorMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricDescriptorMetadata(od);
    });
  });

  unittest.group('obj-schema-MetricRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MetricRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetricRule(od);
    });
  });

  unittest.group('obj-schema-Mixin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMixin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Mixin.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMixin(od);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoredResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoredResourceDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-Monitoring', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoring();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Monitoring.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMonitoring(od);
    });
  });

  unittest.group('obj-schema-MonitoringDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringDestination(od);
    });
  });

  unittest.group('obj-schema-OAuthRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OAuthRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOAuthRequirements(od);
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

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Option.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOption(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od);
    });
  });

  unittest.group('obj-schema-PartialDeleteConnectionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialDeleteConnectionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialDeleteConnectionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialDeleteConnectionMetadata(od);
    });
  });

  unittest.group('obj-schema-PeeredDnsDomain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeeredDnsDomain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeeredDnsDomain.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPeeredDnsDomain(od);
    });
  });

  unittest.group('obj-schema-PeeredDnsDomainMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeeredDnsDomainMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeeredDnsDomainMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPeeredDnsDomainMetadata(od);
    });
  });

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyBinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyBinding(od);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Quota.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuota(od);
    });
  });

  unittest.group('obj-schema-QuotaLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuotaLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QuotaLimit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuotaLimit(od);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Range.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRange(od);
    });
  });

  unittest.group('obj-schema-RangeReservation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangeReservation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RangeReservation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRangeReservation(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsRecordSetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsRecordSetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsRecordSetMetadata(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsRecordSetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsRecordSetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsRecordSetResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsZoneMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsZoneMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsZoneMetadata(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsZoneRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsZoneRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsZoneRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveDnsZoneResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveDnsZoneResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveDnsZoneResponse(od);
    });
  });

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Route.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoute(od);
    });
  });

  unittest.group('obj-schema-SearchRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchRangeRequest(od);
    });
  });

  unittest.group('obj-schema-SecondaryIpRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondaryIpRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondaryIpRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecondaryIpRange(od);
    });
  });

  unittest.group('obj-schema-SecondaryIpRangeSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondaryIpRangeSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondaryIpRangeSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecondaryIpRangeSpec(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Service.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkService(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od);
    });
  });

  unittest.group('obj-schema-SourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SourceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSourceInfo(od);
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

  unittest.group('obj-schema-Subnetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubnetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subnetwork.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubnetwork(od);
    });
  });

  unittest.group('obj-schema-SystemParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameter(od);
    });
  });

  unittest.group('obj-schema-SystemParameterRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameterRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameterRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameterRule(od);
    });
  });

  unittest.group('obj-schema-SystemParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemParameters(od);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () async {
      final o = buildType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Type.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkType(od);
    });
  });

  unittest.group('obj-schema-UpdateConsumerConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateConsumerConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateConsumerConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateConsumerConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDnsRecordSetMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDnsRecordSetMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDnsRecordSetMetadata(od);
    });
  });

  unittest.group('obj-schema-UpdateDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDnsRecordSetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDnsRecordSetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDnsRecordSetRequest(od);
    });
  });

  unittest.group('obj-schema-Usage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Usage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsage(od);
    });
  });

  unittest.group('obj-schema-UsageRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UsageRule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUsageRule(od);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateConsumerConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateConsumerConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateConsumerConfigRequest(od);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateConsumerConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateConsumerConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateConsumerConfigResponse(od);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).operations;
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
      final res = api.ServiceNetworkingApi(mock).operations;
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
      final res = api.ServiceNetworkingApi(mock).operations;
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
      final res = api.ServiceNetworkingApi(mock).operations;
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

  unittest.group('resource-ServicesResource', () {
    unittest.test('method--addSubnetwork', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildAddSubnetworkRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddSubnetworkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddSubnetworkRequest(obj);

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
      final response = await res.addSubnetwork(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--disableVpcServiceControls', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildDisableVpcServiceControlsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableVpcServiceControlsRequest(obj);

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
      final response = await res.disableVpcServiceControls(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--enableVpcServiceControls', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildEnableVpcServiceControlsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableVpcServiceControlsRequest(obj);

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
      final response = await res.enableVpcServiceControls(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--searchRange', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildSearchRangeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRangeRequest(obj);

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
          await res.searchRange(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services;
      final arg_request = buildValidateConsumerConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateConsumerConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateConsumerConfigRequest(obj);

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
        final resp = convert.json.encode(buildValidateConsumerConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_request, arg_parent, $fields: arg_$fields);
      checkValidateConsumerConfigResponse(
          response as api.ValidateConsumerConfigResponse);
    });
  });

  unittest.group('resource-ServicesConnectionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildConnection();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--deleteConnection', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildDeleteConnectionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeleteConnectionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeleteConnectionRequest(obj);

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
      final response = await res.deleteConnection(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_parent = 'foo';
      final arg_network = 'foo';
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
          queryMap['network']!.first,
          unittest.equals(arg_network),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          network: arg_network, $fields: arg_$fields);
      checkListConnectionsResponse(response as api.ListConnectionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.connections;
      final arg_request = buildConnection();
      final arg_name = 'foo';
      final arg_force = true;
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj);

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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
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
          force: arg_force, updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesDnsRecordSetsResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildAddDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsRecordSetRequest(obj);

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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildRemoveDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsRecordSetRequest(obj);

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
          await res.remove(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsRecordSets;
      final arg_request = buildUpdateDnsRecordSetRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDnsRecordSetRequest(obj);

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
          await res.update(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesDnsZonesResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsZones;
      final arg_request = buildAddDnsZoneRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsZoneRequest(obj);

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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.dnsZones;
      final arg_request = buildRemoveDnsZoneRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsZoneRequest(obj);

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
          await res.remove(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ServicesProjectsGlobalNetworksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceNetworkingApi(mock).services.projects.global.networks;
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
        final resp = convert.json.encode(buildConsumerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConsumerConfig(response as api.ConsumerConfig);
    });

    unittest.test('method--updateConsumerConfig', () async {
      final mock = HttpServerMock();
      final res =
          api.ServiceNetworkingApi(mock).services.projects.global.networks;
      final arg_request = buildUpdateConsumerConfigRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateConsumerConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateConsumerConfigRequest(obj);

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
      final response = await res.updateConsumerConfig(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ServicesProjectsGlobalNetworksPeeredDnsDomainsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      final arg_request = buildPeeredDnsDomain();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PeeredDnsDomain.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPeeredDnsDomain(obj);

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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildListPeeredDnsDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListPeeredDnsDomainsResponse(
          response as api.ListPeeredDnsDomainsResponse);
    });
  });

  unittest.group('resource-ServicesRolesResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res = api.ServiceNetworkingApi(mock).services.roles;
      final arg_request = buildAddRolesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddRolesRequest(obj);

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
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
