// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/servicenetworking/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Future<http.StreamedResponse> Function(http.BaseRequest, core.Object)
      _callback;
  core.bool _expectJson;

  void register(
    core.Future<http.StreamedResponse> Function(
      http.BaseRequest bob,
      core.Object foo,
    )
        callback,
    core.bool expectJson,
  ) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAddDnsRecordSetMetadata = 0;
api.AddDnsRecordSetMetadata buildAddDnsRecordSetMetadata() {
  var o = api.AddDnsRecordSetMetadata();
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
  var o = api.AddDnsRecordSetRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.dnsRecordSet as api.DnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterAddDnsRecordSetRequest--;
}

core.int buildCounterAddDnsZoneMetadata = 0;
api.AddDnsZoneMetadata buildAddDnsZoneMetadata() {
  var o = api.AddDnsZoneMetadata();
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
  var o = api.AddDnsZoneRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAddDnsZoneRequest--;
}

core.int buildCounterAddDnsZoneResponse = 0;
api.AddDnsZoneResponse buildAddDnsZoneResponse() {
  var o = api.AddDnsZoneResponse();
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
    checkDnsZone(o.consumerPeeringZone as api.DnsZone);
    checkDnsZone(o.producerPrivateZone as api.DnsZone);
  }
  buildCounterAddDnsZoneResponse--;
}

core.int buildCounterAddRolesMetadata = 0;
api.AddRolesMetadata buildAddRolesMetadata() {
  var o = api.AddRolesMetadata();
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

core.List<api.PolicyBinding> buildUnnamed3390() {
  var o = <api.PolicyBinding>[];
  o.add(buildPolicyBinding());
  o.add(buildPolicyBinding());
  return o;
}

void checkUnnamed3390(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0] as api.PolicyBinding);
  checkPolicyBinding(o[1] as api.PolicyBinding);
}

core.int buildCounterAddRolesRequest = 0;
api.AddRolesRequest buildAddRolesRequest() {
  var o = api.AddRolesRequest();
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    o.consumerNetwork = 'foo';
    o.policyBinding = buildUnnamed3390();
  }
  buildCounterAddRolesRequest--;
  return o;
}

void checkAddRolesRequest(api.AddRolesRequest o) {
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkUnnamed3390(o.policyBinding);
  }
  buildCounterAddRolesRequest--;
}

core.List<api.PolicyBinding> buildUnnamed3391() {
  var o = <api.PolicyBinding>[];
  o.add(buildPolicyBinding());
  o.add(buildPolicyBinding());
  return o;
}

void checkUnnamed3391(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0] as api.PolicyBinding);
  checkPolicyBinding(o[1] as api.PolicyBinding);
}

core.int buildCounterAddRolesResponse = 0;
api.AddRolesResponse buildAddRolesResponse() {
  var o = api.AddRolesResponse();
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    o.policyBinding = buildUnnamed3391();
  }
  buildCounterAddRolesResponse--;
  return o;
}

void checkAddRolesResponse(api.AddRolesResponse o) {
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    checkUnnamed3391(o.policyBinding);
  }
  buildCounterAddRolesResponse--;
}

core.List<core.String> buildUnnamed3392() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3392(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddSubnetworkRequest = 0;
api.AddSubnetworkRequest buildAddSubnetworkRequest() {
  var o = api.AddSubnetworkRequest();
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    o.consumer = 'foo';
    o.consumerNetwork = 'foo';
    o.description = 'foo';
    o.ipPrefixLength = 42;
    o.region = 'foo';
    o.requestedAddress = 'foo';
    o.subnetwork = 'foo';
    o.subnetworkUsers = buildUnnamed3392();
  }
  buildCounterAddSubnetworkRequest--;
  return o;
}

void checkAddSubnetworkRequest(api.AddSubnetworkRequest o) {
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    unittest.expect(o.consumer, unittest.equals('foo'));
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.requestedAddress, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    checkUnnamed3392(o.subnetworkUsers);
  }
  buildCounterAddSubnetworkRequest--;
}

core.List<api.Method> buildUnnamed3393() {
  var o = <api.Method>[];
  o.add(buildMethod());
  o.add(buildMethod());
  return o;
}

void checkUnnamed3393(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0] as api.Method);
  checkMethod(o[1] as api.Method);
}

core.List<api.Mixin> buildUnnamed3394() {
  var o = <api.Mixin>[];
  o.add(buildMixin());
  o.add(buildMixin());
  return o;
}

void checkUnnamed3394(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0] as api.Mixin);
  checkMixin(o[1] as api.Mixin);
}

core.List<api.Option> buildUnnamed3395() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3395(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterApi = 0;
api.Api buildApi() {
  var o = api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed3393();
    o.mixins = buildUnnamed3394();
    o.name = 'foo';
    o.options = buildUnnamed3395();
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
    checkUnnamed3393(o.methods);
    checkUnnamed3394(o.mixins);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3395(o.options);
    checkSourceContext(o.sourceContext as api.SourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApi--;
}

core.List<api.JwtLocation> buildUnnamed3396() {
  var o = <api.JwtLocation>[];
  o.add(buildJwtLocation());
  o.add(buildJwtLocation());
  return o;
}

void checkUnnamed3396(core.List<api.JwtLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwtLocation(o[0] as api.JwtLocation);
  checkJwtLocation(o[1] as api.JwtLocation);
}

core.int buildCounterAuthProvider = 0;
api.AuthProvider buildAuthProvider() {
  var o = api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = 'foo';
    o.authorizationUrl = 'foo';
    o.id = 'foo';
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.jwtLocations = buildUnnamed3396();
  }
  buildCounterAuthProvider--;
  return o;
}

void checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.authorizationUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
    checkUnnamed3396(o.jwtLocations);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
api.AuthRequirement buildAuthRequirement() {
  var o = api.AuthRequirement();
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
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterAuthRequirement--;
}

core.List<api.AuthProvider> buildUnnamed3397() {
  var o = <api.AuthProvider>[];
  o.add(buildAuthProvider());
  o.add(buildAuthProvider());
  return o;
}

void checkUnnamed3397(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0] as api.AuthProvider);
  checkAuthProvider(o[1] as api.AuthProvider);
}

core.List<api.AuthenticationRule> buildUnnamed3398() {
  var o = <api.AuthenticationRule>[];
  o.add(buildAuthenticationRule());
  o.add(buildAuthenticationRule());
  return o;
}

void checkUnnamed3398(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0] as api.AuthenticationRule);
  checkAuthenticationRule(o[1] as api.AuthenticationRule);
}

core.int buildCounterAuthentication = 0;
api.Authentication buildAuthentication() {
  var o = api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed3397();
    o.rules = buildUnnamed3398();
  }
  buildCounterAuthentication--;
  return o;
}

void checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed3397(o.providers);
    checkUnnamed3398(o.rules);
  }
  buildCounterAuthentication--;
}

core.List<api.AuthRequirement> buildUnnamed3399() {
  var o = <api.AuthRequirement>[];
  o.add(buildAuthRequirement());
  o.add(buildAuthRequirement());
  return o;
}

void checkUnnamed3399(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0] as api.AuthRequirement);
  checkAuthRequirement(o[1] as api.AuthRequirement);
}

core.int buildCounterAuthenticationRule = 0;
api.AuthenticationRule buildAuthenticationRule() {
  var o = api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed3399();
    o.selector = 'foo';
  }
  buildCounterAuthenticationRule--;
  return o;
}

void checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential, unittest.isTrue);
    checkOAuthRequirements(o.oauth as api.OAuthRequirements);
    checkUnnamed3399(o.requirements);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterAuthenticationRule--;
}

core.List<api.BackendRule> buildUnnamed3400() {
  var o = <api.BackendRule>[];
  o.add(buildBackendRule());
  o.add(buildBackendRule());
  return o;
}

void checkUnnamed3400(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0] as api.BackendRule);
  checkBackendRule(o[1] as api.BackendRule);
}

core.int buildCounterBackend = 0;
api.Backend buildBackend() {
  var o = api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed3400();
  }
  buildCounterBackend--;
  return o;
}

void checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed3400(o.rules);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
api.BackendRule buildBackendRule() {
  var o = api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = 'foo';
    o.deadline = 42.0;
    o.disableAuth = true;
    o.jwtAudience = 'foo';
    o.minDeadline = 42.0;
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
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.deadline, unittest.equals(42.0));
    unittest.expect(o.disableAuth, unittest.isTrue);
    unittest.expect(o.jwtAudience, unittest.equals('foo'));
    unittest.expect(o.minDeadline, unittest.equals(42.0));
    unittest.expect(o.operationDeadline, unittest.equals(42.0));
    unittest.expect(o.pathTranslation, unittest.equals('foo'));
    unittest.expect(o.protocol, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterBackendRule--;
}

core.List<api.BillingDestination> buildUnnamed3401() {
  var o = <api.BillingDestination>[];
  o.add(buildBillingDestination());
  o.add(buildBillingDestination());
  return o;
}

void checkUnnamed3401(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0] as api.BillingDestination);
  checkBillingDestination(o[1] as api.BillingDestination);
}

core.int buildCounterBilling = 0;
api.Billing buildBilling() {
  var o = api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed3401();
  }
  buildCounterBilling--;
  return o;
}

void checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed3401(o.consumerDestinations);
  }
  buildCounterBilling--;
}

core.List<core.String> buildUnnamed3402() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3402(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBillingDestination = 0;
api.BillingDestination buildBillingDestination() {
  var o = api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed3402();
    o.monitoredResource = 'foo';
  }
  buildCounterBillingDestination--;
  return o;
}

void checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed3402(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterBillingDestination--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  var o = api.CancelOperationRequest();
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

core.List<core.String> buildUnnamed3403() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3403(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConnection = 0;
api.Connection buildConnection() {
  var o = api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.network = 'foo';
    o.peering = 'foo';
    o.reservedPeeringRanges = buildUnnamed3403();
    o.service = 'foo';
  }
  buildCounterConnection--;
  return o;
}

void checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.peering, unittest.equals('foo'));
    checkUnnamed3403(o.reservedPeeringRanges);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterConnection--;
}

core.int buildCounterConsumerProject = 0;
api.ConsumerProject buildConsumerProject() {
  var o = api.ConsumerProject();
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
    unittest.expect(o.projectNum, unittest.equals('foo'));
  }
  buildCounterConsumerProject--;
}

core.List<api.ContextRule> buildUnnamed3404() {
  var o = <api.ContextRule>[];
  o.add(buildContextRule());
  o.add(buildContextRule());
  return o;
}

void checkUnnamed3404(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0] as api.ContextRule);
  checkContextRule(o[1] as api.ContextRule);
}

core.int buildCounterContext = 0;
api.Context buildContext() {
  var o = api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed3404();
  }
  buildCounterContext--;
  return o;
}

void checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed3404(o.rules);
  }
  buildCounterContext--;
}

core.List<core.String> buildUnnamed3405() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3405(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3406() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3407() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3408() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3408(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContextRule = 0;
api.ContextRule buildContextRule() {
  var o = api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed3405();
    o.allowedResponseExtensions = buildUnnamed3406();
    o.provided = buildUnnamed3407();
    o.requested = buildUnnamed3408();
    o.selector = 'foo';
  }
  buildCounterContextRule--;
  return o;
}

void checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed3405(o.allowedRequestExtensions);
    checkUnnamed3406(o.allowedResponseExtensions);
    checkUnnamed3407(o.provided);
    checkUnnamed3408(o.requested);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
api.Control buildControl() {
  var o = api.Control();
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
    unittest.expect(o.environment, unittest.equals('foo'));
  }
  buildCounterControl--;
}

core.List<api.CustomErrorRule> buildUnnamed3409() {
  var o = <api.CustomErrorRule>[];
  o.add(buildCustomErrorRule());
  o.add(buildCustomErrorRule());
  return o;
}

void checkUnnamed3409(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0] as api.CustomErrorRule);
  checkCustomErrorRule(o[1] as api.CustomErrorRule);
}

core.List<core.String> buildUnnamed3410() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3410(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomError = 0;
api.CustomError buildCustomError() {
  var o = api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed3409();
    o.types = buildUnnamed3410();
  }
  buildCounterCustomError--;
  return o;
}

void checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed3409(o.rules);
    checkUnnamed3410(o.types);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
api.CustomErrorRule buildCustomErrorRule() {
  var o = api.CustomErrorRule();
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
    unittest.expect(o.isErrorType, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterCustomErrorRule--;
}

core.int buildCounterCustomHttpPattern = 0;
api.CustomHttpPattern buildCustomHttpPattern() {
  var o = api.CustomHttpPattern();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterCustomHttpPattern--;
}

core.int buildCounterDeletePeeredDnsDomainMetadata = 0;
api.DeletePeeredDnsDomainMetadata buildDeletePeeredDnsDomainMetadata() {
  var o = api.DeletePeeredDnsDomainMetadata();
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
  var o = api.DisableVpcServiceControlsRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
  }
  buildCounterDisableVpcServiceControlsRequest--;
}

core.List<core.String> buildUnnamed3411() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3411(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDnsRecordSet = 0;
api.DnsRecordSet buildDnsRecordSet() {
  var o = api.DnsRecordSet();
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    o.data = buildUnnamed3411();
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
    checkUnnamed3411(o.data);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsRecordSet--;
}

core.int buildCounterDnsZone = 0;
api.DnsZone buildDnsZone() {
  var o = api.DnsZone();
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
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDnsZone--;
}

core.List<api.Page> buildUnnamed3412() {
  var o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed3412(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0] as api.Page);
  checkPage(o[1] as api.Page);
}

core.List<api.DocumentationRule> buildUnnamed3413() {
  var o = <api.DocumentationRule>[];
  o.add(buildDocumentationRule());
  o.add(buildDocumentationRule());
  return o;
}

void checkUnnamed3413(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0] as api.DocumentationRule);
  checkDocumentationRule(o[1] as api.DocumentationRule);
}

core.int buildCounterDocumentation = 0;
api.Documentation buildDocumentation() {
  var o = api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = 'foo';
    o.overview = 'foo';
    o.pages = buildUnnamed3412();
    o.rules = buildUnnamed3413();
    o.serviceRootUrl = 'foo';
    o.summary = 'foo';
  }
  buildCounterDocumentation--;
  return o;
}

void checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(o.documentationRootUrl, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    checkUnnamed3412(o.pages);
    checkUnnamed3413(o.rules);
    unittest.expect(o.serviceRootUrl, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

core.int buildCounterDocumentationRule = 0;
api.DocumentationRule buildDocumentationRule() {
  var o = api.DocumentationRule();
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
    unittest.expect(o.deprecationDescription, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterDocumentationRule--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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
  var o = api.EnableVpcServiceControlsRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
  }
  buildCounterEnableVpcServiceControlsRequest--;
}

core.List<core.String> buildUnnamed3414() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEndpoint = 0;
api.Endpoint buildEndpoint() {
  var o = api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed3414();
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
    checkUnnamed3414(o.aliases);
    unittest.expect(o.allowCors, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

core.List<api.EnumValue> buildUnnamed3415() {
  var o = <api.EnumValue>[];
  o.add(buildEnumValue());
  o.add(buildEnumValue());
  return o;
}

void checkUnnamed3415(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0] as api.EnumValue);
  checkEnumValue(o[1] as api.EnumValue);
}

core.List<api.Option> buildUnnamed3416() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3416(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterEnum = 0;
api.Enum buildEnum() {
  var o = api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed3415();
    o.name = 'foo';
    o.options = buildUnnamed3416();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterEnum--;
  return o;
}

void checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed3415(o.enumvalue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3416(o.options);
    checkSourceContext(o.sourceContext as api.SourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterEnum--;
}

core.List<api.Option> buildUnnamed3417() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3417(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterEnumValue = 0;
api.EnumValue buildEnumValue() {
  var o = api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = 'foo';
    o.number = 42;
    o.options = buildUnnamed3417();
  }
  buildCounterEnumValue--;
  return o;
}

void checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    checkUnnamed3417(o.options);
  }
  buildCounterEnumValue--;
}

core.List<api.Option> buildUnnamed3418() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3418(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterField = 0;
api.Field buildField() {
  var o = api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = 'foo';
    o.defaultValue = 'foo';
    o.jsonName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed3418();
    o.packed = true;
    o.typeUrl = 'foo';
  }
  buildCounterField--;
  return o;
}

void checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.cardinality, unittest.equals('foo'));
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.jsonName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    unittest.expect(o.oneofIndex, unittest.equals(42));
    checkUnnamed3418(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.int buildCounterGoogleCloudServicenetworkingV1betaSubnetwork = 0;
api.GoogleCloudServicenetworkingV1betaSubnetwork
    buildGoogleCloudServicenetworkingV1betaSubnetwork() {
  var o = api.GoogleCloudServicenetworkingV1betaSubnetwork();
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
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.outsideAllocation, unittest.isTrue);
  }
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork--;
}

core.List<api.HttpRule> buildUnnamed3419() {
  var o = <api.HttpRule>[];
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

void checkUnnamed3419(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0] as api.HttpRule);
  checkHttpRule(o[1] as api.HttpRule);
}

core.int buildCounterHttp = 0;
api.Http buildHttp() {
  var o = api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed3419();
  }
  buildCounterHttp--;
  return o;
}

void checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion, unittest.isTrue);
    checkUnnamed3419(o.rules);
  }
  buildCounterHttp--;
}

core.List<api.HttpRule> buildUnnamed3420() {
  var o = <api.HttpRule>[];
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

void checkUnnamed3420(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0] as api.HttpRule);
  checkHttpRule(o[1] as api.HttpRule);
}

core.int buildCounterHttpRule = 0;
api.HttpRule buildHttpRule() {
  var o = api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed3420();
    o.allowHalfDuplex = true;
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
    checkUnnamed3420(o.additionalBindings);
    unittest.expect(o.allowHalfDuplex, unittest.isTrue);
    unittest.expect(o.body, unittest.equals('foo'));
    checkCustomHttpPattern(o.custom as api.CustomHttpPattern);
    unittest.expect(o.delete, unittest.equals('foo'));
    unittest.expect(o.get, unittest.equals('foo'));
    unittest.expect(o.patch, unittest.equals('foo'));
    unittest.expect(o.post, unittest.equals('foo'));
    unittest.expect(o.put, unittest.equals('foo'));
    unittest.expect(o.responseBody, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterHttpRule--;
}

core.int buildCounterJwtLocation = 0;
api.JwtLocation buildJwtLocation() {
  var o = api.JwtLocation();
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
    unittest.expect(o.header, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.valuePrefix, unittest.equals('foo'));
  }
  buildCounterJwtLocation--;
}

core.int buildCounterLabelDescriptor = 0;
api.LabelDescriptor buildLabelDescriptor() {
  var o = api.LabelDescriptor();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

core.List<api.Connection> buildUnnamed3421() {
  var o = <api.Connection>[];
  o.add(buildConnection());
  o.add(buildConnection());
  return o;
}

void checkUnnamed3421(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0] as api.Connection);
  checkConnection(o[1] as api.Connection);
}

core.int buildCounterListConnectionsResponse = 0;
api.ListConnectionsResponse buildListConnectionsResponse() {
  var o = api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed3421();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

void checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed3421(o.connections);
  }
  buildCounterListConnectionsResponse--;
}

core.List<api.Operation> buildUnnamed3422() {
  var o = <api.Operation>[];
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

void checkUnnamed3422(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0] as api.Operation);
  checkOperation(o[1] as api.Operation);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  var o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed3422();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3422(o.operations);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PeeredDnsDomain> buildUnnamed3423() {
  var o = <api.PeeredDnsDomain>[];
  o.add(buildPeeredDnsDomain());
  o.add(buildPeeredDnsDomain());
  return o;
}

void checkUnnamed3423(core.List<api.PeeredDnsDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeredDnsDomain(o[0] as api.PeeredDnsDomain);
  checkPeeredDnsDomain(o[1] as api.PeeredDnsDomain);
}

core.int buildCounterListPeeredDnsDomainsResponse = 0;
api.ListPeeredDnsDomainsResponse buildListPeeredDnsDomainsResponse() {
  var o = api.ListPeeredDnsDomainsResponse();
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    o.peeredDnsDomains = buildUnnamed3423();
  }
  buildCounterListPeeredDnsDomainsResponse--;
  return o;
}

void checkListPeeredDnsDomainsResponse(api.ListPeeredDnsDomainsResponse o) {
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    checkUnnamed3423(o.peeredDnsDomains);
  }
  buildCounterListPeeredDnsDomainsResponse--;
}

core.List<api.LabelDescriptor> buildUnnamed3424() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3424(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterLogDescriptor = 0;
api.LogDescriptor buildLogDescriptor() {
  var o = api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3424();
    o.name = 'foo';
  }
  buildCounterLogDescriptor--;
  return o;
}

void checkLogDescriptor(api.LogDescriptor o) {
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3424(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogDescriptor--;
}

core.List<api.LoggingDestination> buildUnnamed3425() {
  var o = <api.LoggingDestination>[];
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

void checkUnnamed3425(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0] as api.LoggingDestination);
  checkLoggingDestination(o[1] as api.LoggingDestination);
}

core.List<api.LoggingDestination> buildUnnamed3426() {
  var o = <api.LoggingDestination>[];
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

void checkUnnamed3426(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0] as api.LoggingDestination);
  checkLoggingDestination(o[1] as api.LoggingDestination);
}

core.int buildCounterLogging = 0;
api.Logging buildLogging() {
  var o = api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed3425();
    o.producerDestinations = buildUnnamed3426();
  }
  buildCounterLogging--;
  return o;
}

void checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed3425(o.consumerDestinations);
    checkUnnamed3426(o.producerDestinations);
  }
  buildCounterLogging--;
}

core.List<core.String> buildUnnamed3427() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoggingDestination = 0;
api.LoggingDestination buildLoggingDestination() {
  var o = api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed3427();
    o.monitoredResource = 'foo';
  }
  buildCounterLoggingDestination--;
  return o;
}

void checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed3427(o.logs);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterLoggingDestination--;
}

core.List<api.Option> buildUnnamed3428() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3428(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterMethod = 0;
api.Method buildMethod() {
  var o = api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = 'foo';
    o.options = buildUnnamed3428();
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
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3428(o.options);
    unittest.expect(o.requestStreaming, unittest.isTrue);
    unittest.expect(o.requestTypeUrl, unittest.equals('foo'));
    unittest.expect(o.responseStreaming, unittest.isTrue);
    unittest.expect(o.responseTypeUrl, unittest.equals('foo'));
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterMethod--;
}

core.List<api.LabelDescriptor> buildUnnamed3429() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3429(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.List<core.String> buildUnnamed3430() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3430(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetricDescriptor = 0;
api.MetricDescriptor buildMetricDescriptor() {
  var o = api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3429();
    o.launchStage = 'foo';
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = 'foo';
    o.monitoredResourceTypes = buildUnnamed3430();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3429(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    checkMetricDescriptorMetadata(o.metadata as api.MetricDescriptorMetadata);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed3430(o.monitoredResourceTypes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
api.MetricDescriptorMetadata buildMetricDescriptorMetadata() {
  var o = api.MetricDescriptorMetadata();
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
    unittest.expect(o.ingestDelay, unittest.equals('foo'));
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.samplePeriod, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorMetadata--;
}

core.Map<core.String, core.String> buildUnnamed3431() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3431(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetricRule = 0;
api.MetricRule buildMetricRule() {
  var o = api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed3431();
    o.selector = 'foo';
  }
  buildCounterMetricRule--;
  return o;
}

void checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed3431(o.metricCosts);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
api.Mixin buildMixin() {
  var o = api.Mixin();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.root, unittest.equals('foo'));
  }
  buildCounterMixin--;
}

core.List<api.LabelDescriptor> buildUnnamed3432() {
  var o = <api.LabelDescriptor>[];
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

void checkUnnamed3432(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0] as api.LabelDescriptor);
  checkLabelDescriptor(o[1] as api.LabelDescriptor);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
api.MonitoredResourceDescriptor buildMonitoredResourceDescriptor() {
  var o = api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed3432();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed3432(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

core.List<api.MonitoringDestination> buildUnnamed3433() {
  var o = <api.MonitoringDestination>[];
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

void checkUnnamed3433(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0] as api.MonitoringDestination);
  checkMonitoringDestination(o[1] as api.MonitoringDestination);
}

core.List<api.MonitoringDestination> buildUnnamed3434() {
  var o = <api.MonitoringDestination>[];
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

void checkUnnamed3434(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0] as api.MonitoringDestination);
  checkMonitoringDestination(o[1] as api.MonitoringDestination);
}

core.int buildCounterMonitoring = 0;
api.Monitoring buildMonitoring() {
  var o = api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed3433();
    o.producerDestinations = buildUnnamed3434();
  }
  buildCounterMonitoring--;
  return o;
}

void checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed3433(o.consumerDestinations);
    checkUnnamed3434(o.producerDestinations);
  }
  buildCounterMonitoring--;
}

core.List<core.String> buildUnnamed3435() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3435(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMonitoringDestination = 0;
api.MonitoringDestination buildMonitoringDestination() {
  var o = api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed3435();
    o.monitoredResource = 'foo';
  }
  buildCounterMonitoringDestination--;
  return o;
}

void checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed3435(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
api.OAuthRequirements buildOAuthRequirements() {
  var o = api.OAuthRequirements();
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
    unittest.expect(o.canonicalScopes, unittest.equals('foo'));
  }
  buildCounterOAuthRequirements--;
}

core.Map<core.String, core.Object> buildUnnamed3436() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed3436(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed3437() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed3437(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed3436();
    o.name = 'foo';
    o.response = buildUnnamed3437();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error as api.Status);
    checkUnnamed3436(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3437(o.response);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.Object> buildUnnamed3438() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed3438(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.int buildCounterOption = 0;
api.Option buildOption() {
  var o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = 'foo';
    o.value = buildUnnamed3438();
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3438(o.value);
  }
  buildCounterOption--;
}

core.List<api.Page> buildUnnamed3439() {
  var o = <api.Page>[];
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

void checkUnnamed3439(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0] as api.Page);
  checkPage(o[1] as api.Page);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  var o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = 'foo';
    o.name = 'foo';
    o.subpages = buildUnnamed3439();
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3439(o.subpages);
  }
  buildCounterPage--;
}

core.int buildCounterPeeredDnsDomain = 0;
api.PeeredDnsDomain buildPeeredDnsDomain() {
  var o = api.PeeredDnsDomain();
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
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPeeredDnsDomain--;
}

core.int buildCounterPeeredDnsDomainMetadata = 0;
api.PeeredDnsDomainMetadata buildPeeredDnsDomainMetadata() {
  var o = api.PeeredDnsDomainMetadata();
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
  var o = api.PolicyBinding();
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
    unittest.expect(o.member, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPolicyBinding--;
}

core.List<api.QuotaLimit> buildUnnamed3440() {
  var o = <api.QuotaLimit>[];
  o.add(buildQuotaLimit());
  o.add(buildQuotaLimit());
  return o;
}

void checkUnnamed3440(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0] as api.QuotaLimit);
  checkQuotaLimit(o[1] as api.QuotaLimit);
}

core.List<api.MetricRule> buildUnnamed3441() {
  var o = <api.MetricRule>[];
  o.add(buildMetricRule());
  o.add(buildMetricRule());
  return o;
}

void checkUnnamed3441(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0] as api.MetricRule);
  checkMetricRule(o[1] as api.MetricRule);
}

core.int buildCounterQuota = 0;
api.Quota buildQuota() {
  var o = api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed3440();
    o.metricRules = buildUnnamed3441();
  }
  buildCounterQuota--;
  return o;
}

void checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed3440(o.limits);
    checkUnnamed3441(o.metricRules);
  }
  buildCounterQuota--;
}

core.Map<core.String, core.String> buildUnnamed3442() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed3442(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterQuotaLimit = 0;
api.QuotaLimit buildQuotaLimit() {
  var o = api.QuotaLimit();
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
    o.values = buildUnnamed3442();
  }
  buildCounterQuotaLimit--;
  return o;
}

void checkQuotaLimit(api.QuotaLimit o) {
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    unittest.expect(o.defaultLimit, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.freeTier, unittest.equals('foo'));
    unittest.expect(o.maxLimit, unittest.equals('foo'));
    unittest.expect(o.metric, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    checkUnnamed3442(o.values);
  }
  buildCounterQuotaLimit--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  var o = api.Range();
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
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
  }
  buildCounterRange--;
}

core.List<core.int> buildUnnamed3443() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed3443(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterRangeReservation = 0;
api.RangeReservation buildRangeReservation() {
  var o = api.RangeReservation();
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    o.ipPrefixLength = 42;
    o.secondaryRangeIpPrefixLengths = buildUnnamed3443();
  }
  buildCounterRangeReservation--;
  return o;
}

void checkRangeReservation(api.RangeReservation o) {
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    checkUnnamed3443(o.secondaryRangeIpPrefixLengths);
  }
  buildCounterRangeReservation--;
}

core.int buildCounterRemoveDnsRecordSetMetadata = 0;
api.RemoveDnsRecordSetMetadata buildRemoveDnsRecordSetMetadata() {
  var o = api.RemoveDnsRecordSetMetadata();
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
  var o = api.RemoveDnsRecordSetRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.dnsRecordSet as api.DnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterRemoveDnsRecordSetRequest--;
}

core.int buildCounterRemoveDnsRecordSetResponse = 0;
api.RemoveDnsRecordSetResponse buildRemoveDnsRecordSetResponse() {
  var o = api.RemoveDnsRecordSetResponse();
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
  var o = api.RemoveDnsZoneMetadata();
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
  var o = api.RemoveDnsZoneRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterRemoveDnsZoneRequest--;
}

core.int buildCounterRemoveDnsZoneResponse = 0;
api.RemoveDnsZoneResponse buildRemoveDnsZoneResponse() {
  var o = api.RemoveDnsZoneResponse();
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
  var o = api.Route();
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
    unittest.expect(o.destRange, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.nextHopGateway, unittest.equals('foo'));
  }
  buildCounterRoute--;
}

core.int buildCounterSearchRangeRequest = 0;
api.SearchRangeRequest buildSearchRangeRequest() {
  var o = api.SearchRangeRequest();
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
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    unittest.expect(o.network, unittest.equals('foo'));
  }
  buildCounterSearchRangeRequest--;
}

core.List<api.Api> buildUnnamed3444() {
  var o = <api.Api>[];
  o.add(buildApi());
  o.add(buildApi());
  return o;
}

void checkUnnamed3444(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0] as api.Api);
  checkApi(o[1] as api.Api);
}

core.List<api.Endpoint> buildUnnamed3445() {
  var o = <api.Endpoint>[];
  o.add(buildEndpoint());
  o.add(buildEndpoint());
  return o;
}

void checkUnnamed3445(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0] as api.Endpoint);
  checkEndpoint(o[1] as api.Endpoint);
}

core.List<api.Enum> buildUnnamed3446() {
  var o = <api.Enum>[];
  o.add(buildEnum());
  o.add(buildEnum());
  return o;
}

void checkUnnamed3446(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0] as api.Enum);
  checkEnum(o[1] as api.Enum);
}

core.List<api.LogDescriptor> buildUnnamed3447() {
  var o = <api.LogDescriptor>[];
  o.add(buildLogDescriptor());
  o.add(buildLogDescriptor());
  return o;
}

void checkUnnamed3447(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0] as api.LogDescriptor);
  checkLogDescriptor(o[1] as api.LogDescriptor);
}

core.List<api.MetricDescriptor> buildUnnamed3448() {
  var o = <api.MetricDescriptor>[];
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

void checkUnnamed3448(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0] as api.MetricDescriptor);
  checkMetricDescriptor(o[1] as api.MetricDescriptor);
}

core.List<api.MonitoredResourceDescriptor> buildUnnamed3449() {
  var o = <api.MonitoredResourceDescriptor>[];
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

void checkUnnamed3449(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0] as api.MonitoredResourceDescriptor);
  checkMonitoredResourceDescriptor(o[1] as api.MonitoredResourceDescriptor);
}

core.List<api.Type> buildUnnamed3450() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed3450(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0] as api.Type);
  checkType(o[1] as api.Type);
}

core.List<api.Type> buildUnnamed3451() {
  var o = <api.Type>[];
  o.add(buildType());
  o.add(buildType());
  return o;
}

void checkUnnamed3451(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0] as api.Type);
  checkType(o[1] as api.Type);
}

core.int buildCounterService = 0;
api.Service buildService() {
  var o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed3444();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed3445();
    o.enums = buildUnnamed3446();
    o.http = buildHttp();
    o.id = 'foo';
    o.logging = buildLogging();
    o.logs = buildUnnamed3447();
    o.metrics = buildUnnamed3448();
    o.monitoredResources = buildUnnamed3449();
    o.monitoring = buildMonitoring();
    o.name = 'foo';
    o.producerProjectId = 'foo';
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed3450();
    o.title = 'foo';
    o.types = buildUnnamed3451();
    o.usage = buildUsage();
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed3444(o.apis);
    checkAuthentication(o.authentication as api.Authentication);
    checkBackend(o.backend as api.Backend);
    checkBilling(o.billing as api.Billing);
    unittest.expect(o.configVersion, unittest.equals(42));
    checkContext(o.context as api.Context);
    checkControl(o.control as api.Control);
    checkCustomError(o.customError as api.CustomError);
    checkDocumentation(o.documentation as api.Documentation);
    checkUnnamed3445(o.endpoints);
    checkUnnamed3446(o.enums);
    checkHttp(o.http as api.Http);
    unittest.expect(o.id, unittest.equals('foo'));
    checkLogging(o.logging as api.Logging);
    checkUnnamed3447(o.logs);
    checkUnnamed3448(o.metrics);
    checkUnnamed3449(o.monitoredResources);
    checkMonitoring(o.monitoring as api.Monitoring);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.producerProjectId, unittest.equals('foo'));
    checkQuota(o.quota as api.Quota);
    checkSourceInfo(o.sourceInfo as api.SourceInfo);
    checkSystemParameters(o.systemParameters as api.SystemParameters);
    checkUnnamed3450(o.systemTypes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed3451(o.types);
    checkUsage(o.usage as api.Usage);
  }
  buildCounterService--;
}

core.int buildCounterServiceIdentity = 0;
api.ServiceIdentity buildServiceIdentity() {
  var o = api.ServiceIdentity();
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.serviceAccountParent = 'foo';
  }
  buildCounterServiceIdentity--;
  return o;
}

void checkServiceIdentity(api.ServiceIdentity o) {
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.serviceAccountParent, unittest.equals('foo'));
  }
  buildCounterServiceIdentity--;
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  var o = api.SourceContext();
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
    unittest.expect(o.fileName, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object> buildUnnamed3452() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed3452(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed3453() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3452());
  o.add(buildUnnamed3452());
  return o;
}

void checkUnnamed3453(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3452(o[0]);
  checkUnnamed3452(o[1]);
}

core.int buildCounterSourceInfo = 0;
api.SourceInfo buildSourceInfo() {
  var o = api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed3453();
  }
  buildCounterSourceInfo--;
  return o;
}

void checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed3453(o.sourceFiles);
  }
  buildCounterSourceInfo--;
}

core.Map<core.String, core.Object> buildUnnamed3454() {
  var o = <core.String, core.Object>{};
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

void checkUnnamed3454(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed3455() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed3454());
  o.add(buildUnnamed3454());
  return o;
}

void checkUnnamed3455(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3454(o[0]);
  checkUnnamed3454(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed3455();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed3455(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubnetwork = 0;
api.Subnetwork buildSubnetwork() {
  var o = api.Subnetwork();
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.outsideAllocation = true;
  }
  buildCounterSubnetwork--;
  return o;
}

void checkSubnetwork(api.Subnetwork o) {
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.outsideAllocation, unittest.isTrue);
  }
  buildCounterSubnetwork--;
}

core.int buildCounterSystemParameter = 0;
api.SystemParameter buildSystemParameter() {
  var o = api.SystemParameter();
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
    unittest.expect(o.httpHeader, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.urlQueryParameter, unittest.equals('foo'));
  }
  buildCounterSystemParameter--;
}

core.List<api.SystemParameter> buildUnnamed3456() {
  var o = <api.SystemParameter>[];
  o.add(buildSystemParameter());
  o.add(buildSystemParameter());
  return o;
}

void checkUnnamed3456(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0] as api.SystemParameter);
  checkSystemParameter(o[1] as api.SystemParameter);
}

core.int buildCounterSystemParameterRule = 0;
api.SystemParameterRule buildSystemParameterRule() {
  var o = api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed3456();
    o.selector = 'foo';
  }
  buildCounterSystemParameterRule--;
  return o;
}

void checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed3456(o.parameters);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterSystemParameterRule--;
}

core.List<api.SystemParameterRule> buildUnnamed3457() {
  var o = <api.SystemParameterRule>[];
  o.add(buildSystemParameterRule());
  o.add(buildSystemParameterRule());
  return o;
}

void checkUnnamed3457(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0] as api.SystemParameterRule);
  checkSystemParameterRule(o[1] as api.SystemParameterRule);
}

core.int buildCounterSystemParameters = 0;
api.SystemParameters buildSystemParameters() {
  var o = api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed3457();
  }
  buildCounterSystemParameters--;
  return o;
}

void checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed3457(o.rules);
  }
  buildCounterSystemParameters--;
}

core.List<api.Field> buildUnnamed3458() {
  var o = <api.Field>[];
  o.add(buildField());
  o.add(buildField());
  return o;
}

void checkUnnamed3458(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0] as api.Field);
  checkField(o[1] as api.Field);
}

core.List<core.String> buildUnnamed3459() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3459(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Option> buildUnnamed3460() {
  var o = <api.Option>[];
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

void checkUnnamed3460(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0] as api.Option);
  checkOption(o[1] as api.Option);
}

core.int buildCounterType = 0;
api.Type buildType() {
  var o = api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed3458();
    o.name = 'foo';
    o.oneofs = buildUnnamed3459();
    o.options = buildUnnamed3460();
    o.sourceContext = buildSourceContext();
    o.syntax = 'foo';
  }
  buildCounterType--;
  return o;
}

void checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed3458(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3459(o.oneofs);
    checkUnnamed3460(o.options);
    checkSourceContext(o.sourceContext as api.SourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterUpdateDnsRecordSetMetadata = 0;
api.UpdateDnsRecordSetMetadata buildUpdateDnsRecordSetMetadata() {
  var o = api.UpdateDnsRecordSetMetadata();
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
  var o = api.UpdateDnsRecordSetRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.existingDnsRecordSet as api.DnsRecordSet);
    checkDnsRecordSet(o.newDnsRecordSet as api.DnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateDnsRecordSetRequest--;
}

core.List<core.String> buildUnnamed3461() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3461(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UsageRule> buildUnnamed3462() {
  var o = <api.UsageRule>[];
  o.add(buildUsageRule());
  o.add(buildUsageRule());
  return o;
}

void checkUnnamed3462(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0] as api.UsageRule);
  checkUsageRule(o[1] as api.UsageRule);
}

core.int buildCounterUsage = 0;
api.Usage buildUsage() {
  var o = api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = 'foo';
    o.requirements = buildUnnamed3461();
    o.rules = buildUnnamed3462();
    o.serviceIdentity = buildServiceIdentity();
  }
  buildCounterUsage--;
  return o;
}

void checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(o.producerNotificationChannel, unittest.equals('foo'));
    checkUnnamed3461(o.requirements);
    checkUnnamed3462(o.rules);
    checkServiceIdentity(o.serviceIdentity as api.ServiceIdentity);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
api.UsageRule buildUsageRule() {
  var o = api.UsageRule();
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
    unittest.expect(o.allowUnregisteredCalls, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
    unittest.expect(o.skipServiceControl, unittest.isTrue);
  }
  buildCounterUsageRule--;
}

core.int buildCounterValidateConsumerConfigRequest = 0;
api.ValidateConsumerConfigRequest buildValidateConsumerConfigRequest() {
  var o = api.ValidateConsumerConfigRequest();
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
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkConsumerProject(o.consumerProject as api.ConsumerProject);
    checkRangeReservation(o.rangeReservation as api.RangeReservation);
    unittest.expect(o.validateNetwork, unittest.isTrue);
  }
  buildCounterValidateConsumerConfigRequest--;
}

core.int buildCounterValidateConsumerConfigResponse = 0;
api.ValidateConsumerConfigResponse buildValidateConsumerConfigResponse() {
  var o = api.ValidateConsumerConfigResponse();
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    o.isValid = true;
    o.validationError = 'foo';
  }
  buildCounterValidateConsumerConfigResponse--;
  return o;
}

void checkValidateConsumerConfigResponse(api.ValidateConsumerConfigResponse o) {
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    unittest.expect(o.isValid, unittest.isTrue);
    unittest.expect(o.validationError, unittest.equals('foo'));
  }
  buildCounterValidateConsumerConfigResponse--;
}

void main() {
  unittest.group('obj-schema-AddDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDnsRecordSetMetadata();
      var od = api.AddDnsRecordSetMetadata.fromJson(o.toJson());
      checkAddDnsRecordSetMetadata(od as api.AddDnsRecordSetMetadata);
    });
  });

  unittest.group('obj-schema-AddDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDnsRecordSetRequest();
      var od = api.AddDnsRecordSetRequest.fromJson(o.toJson());
      checkAddDnsRecordSetRequest(od as api.AddDnsRecordSetRequest);
    });
  });

  unittest.group('obj-schema-AddDnsZoneMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDnsZoneMetadata();
      var od = api.AddDnsZoneMetadata.fromJson(o.toJson());
      checkAddDnsZoneMetadata(od as api.AddDnsZoneMetadata);
    });
  });

  unittest.group('obj-schema-AddDnsZoneRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDnsZoneRequest();
      var od = api.AddDnsZoneRequest.fromJson(o.toJson());
      checkAddDnsZoneRequest(od as api.AddDnsZoneRequest);
    });
  });

  unittest.group('obj-schema-AddDnsZoneResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddDnsZoneResponse();
      var od = api.AddDnsZoneResponse.fromJson(o.toJson());
      checkAddDnsZoneResponse(od as api.AddDnsZoneResponse);
    });
  });

  unittest.group('obj-schema-AddRolesMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddRolesMetadata();
      var od = api.AddRolesMetadata.fromJson(o.toJson());
      checkAddRolesMetadata(od as api.AddRolesMetadata);
    });
  });

  unittest.group('obj-schema-AddRolesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddRolesRequest();
      var od = api.AddRolesRequest.fromJson(o.toJson());
      checkAddRolesRequest(od as api.AddRolesRequest);
    });
  });

  unittest.group('obj-schema-AddRolesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddRolesResponse();
      var od = api.AddRolesResponse.fromJson(o.toJson());
      checkAddRolesResponse(od as api.AddRolesResponse);
    });
  });

  unittest.group('obj-schema-AddSubnetworkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAddSubnetworkRequest();
      var od = api.AddSubnetworkRequest.fromJson(o.toJson());
      checkAddSubnetworkRequest(od as api.AddSubnetworkRequest);
    });
  });

  unittest.group('obj-schema-Api', () {
    unittest.test('to-json--from-json', () {
      var o = buildApi();
      var od = api.Api.fromJson(o.toJson());
      checkApi(od as api.Api);
    });
  });

  unittest.group('obj-schema-AuthProvider', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthProvider();
      var od = api.AuthProvider.fromJson(o.toJson());
      checkAuthProvider(od as api.AuthProvider);
    });
  });

  unittest.group('obj-schema-AuthRequirement', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthRequirement();
      var od = api.AuthRequirement.fromJson(o.toJson());
      checkAuthRequirement(od as api.AuthRequirement);
    });
  });

  unittest.group('obj-schema-Authentication', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthentication();
      var od = api.Authentication.fromJson(o.toJson());
      checkAuthentication(od as api.Authentication);
    });
  });

  unittest.group('obj-schema-AuthenticationRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildAuthenticationRule();
      var od = api.AuthenticationRule.fromJson(o.toJson());
      checkAuthenticationRule(od as api.AuthenticationRule);
    });
  });

  unittest.group('obj-schema-Backend', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackend();
      var od = api.Backend.fromJson(o.toJson());
      checkBackend(od as api.Backend);
    });
  });

  unittest.group('obj-schema-BackendRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackendRule();
      var od = api.BackendRule.fromJson(o.toJson());
      checkBackendRule(od as api.BackendRule);
    });
  });

  unittest.group('obj-schema-Billing', () {
    unittest.test('to-json--from-json', () {
      var o = buildBilling();
      var od = api.Billing.fromJson(o.toJson());
      checkBilling(od as api.Billing);
    });
  });

  unittest.group('obj-schema-BillingDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildBillingDestination();
      var od = api.BillingDestination.fromJson(o.toJson());
      checkBillingDestination(od as api.BillingDestination);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelOperationRequest();
      var od = api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od as api.CancelOperationRequest);
    });
  });

  unittest.group('obj-schema-Connection', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnection();
      var od = api.Connection.fromJson(o.toJson());
      checkConnection(od as api.Connection);
    });
  });

  unittest.group('obj-schema-ConsumerProject', () {
    unittest.test('to-json--from-json', () {
      var o = buildConsumerProject();
      var od = api.ConsumerProject.fromJson(o.toJson());
      checkConsumerProject(od as api.ConsumerProject);
    });
  });

  unittest.group('obj-schema-Context', () {
    unittest.test('to-json--from-json', () {
      var o = buildContext();
      var od = api.Context.fromJson(o.toJson());
      checkContext(od as api.Context);
    });
  });

  unittest.group('obj-schema-ContextRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildContextRule();
      var od = api.ContextRule.fromJson(o.toJson());
      checkContextRule(od as api.ContextRule);
    });
  });

  unittest.group('obj-schema-Control', () {
    unittest.test('to-json--from-json', () {
      var o = buildControl();
      var od = api.Control.fromJson(o.toJson());
      checkControl(od as api.Control);
    });
  });

  unittest.group('obj-schema-CustomError', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomError();
      var od = api.CustomError.fromJson(o.toJson());
      checkCustomError(od as api.CustomError);
    });
  });

  unittest.group('obj-schema-CustomErrorRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomErrorRule();
      var od = api.CustomErrorRule.fromJson(o.toJson());
      checkCustomErrorRule(od as api.CustomErrorRule);
    });
  });

  unittest.group('obj-schema-CustomHttpPattern', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomHttpPattern();
      var od = api.CustomHttpPattern.fromJson(o.toJson());
      checkCustomHttpPattern(od as api.CustomHttpPattern);
    });
  });

  unittest.group('obj-schema-DeletePeeredDnsDomainMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeletePeeredDnsDomainMetadata();
      var od = api.DeletePeeredDnsDomainMetadata.fromJson(o.toJson());
      checkDeletePeeredDnsDomainMetadata(
          od as api.DeletePeeredDnsDomainMetadata);
    });
  });

  unittest.group('obj-schema-DisableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisableVpcServiceControlsRequest();
      var od = api.DisableVpcServiceControlsRequest.fromJson(o.toJson());
      checkDisableVpcServiceControlsRequest(
          od as api.DisableVpcServiceControlsRequest);
    });
  });

  unittest.group('obj-schema-DnsRecordSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsRecordSet();
      var od = api.DnsRecordSet.fromJson(o.toJson());
      checkDnsRecordSet(od as api.DnsRecordSet);
    });
  });

  unittest.group('obj-schema-DnsZone', () {
    unittest.test('to-json--from-json', () {
      var o = buildDnsZone();
      var od = api.DnsZone.fromJson(o.toJson());
      checkDnsZone(od as api.DnsZone);
    });
  });

  unittest.group('obj-schema-Documentation', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocumentation();
      var od = api.Documentation.fromJson(o.toJson());
      checkDocumentation(od as api.Documentation);
    });
  });

  unittest.group('obj-schema-DocumentationRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocumentationRule();
      var od = api.DocumentationRule.fromJson(o.toJson());
      checkDocumentationRule(od as api.DocumentationRule);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-EnableVpcServiceControlsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnableVpcServiceControlsRequest();
      var od = api.EnableVpcServiceControlsRequest.fromJson(o.toJson());
      checkEnableVpcServiceControlsRequest(
          od as api.EnableVpcServiceControlsRequest);
    });
  });

  unittest.group('obj-schema-Endpoint', () {
    unittest.test('to-json--from-json', () {
      var o = buildEndpoint();
      var od = api.Endpoint.fromJson(o.toJson());
      checkEndpoint(od as api.Endpoint);
    });
  });

  unittest.group('obj-schema-Enum', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnum();
      var od = api.Enum.fromJson(o.toJson());
      checkEnum(od as api.Enum);
    });
  });

  unittest.group('obj-schema-EnumValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnumValue();
      var od = api.EnumValue.fromJson(o.toJson());
      checkEnumValue(od as api.EnumValue);
    });
  });

  unittest.group('obj-schema-Field', () {
    unittest.test('to-json--from-json', () {
      var o = buildField();
      var od = api.Field.fromJson(o.toJson());
      checkField(od as api.Field);
    });
  });

  unittest.group('obj-schema-GoogleCloudServicenetworkingV1betaSubnetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudServicenetworkingV1betaSubnetwork();
      var od =
          api.GoogleCloudServicenetworkingV1betaSubnetwork.fromJson(o.toJson());
      checkGoogleCloudServicenetworkingV1betaSubnetwork(
          od as api.GoogleCloudServicenetworkingV1betaSubnetwork);
    });
  });

  unittest.group('obj-schema-Http', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttp();
      var od = api.Http.fromJson(o.toJson());
      checkHttp(od as api.Http);
    });
  });

  unittest.group('obj-schema-HttpRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildHttpRule();
      var od = api.HttpRule.fromJson(o.toJson());
      checkHttpRule(od as api.HttpRule);
    });
  });

  unittest.group('obj-schema-JwtLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildJwtLocation();
      var od = api.JwtLocation.fromJson(o.toJson());
      checkJwtLocation(od as api.JwtLocation);
    });
  });

  unittest.group('obj-schema-LabelDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildLabelDescriptor();
      var od = api.LabelDescriptor.fromJson(o.toJson());
      checkLabelDescriptor(od as api.LabelDescriptor);
    });
  });

  unittest.group('obj-schema-ListConnectionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListConnectionsResponse();
      var od = api.ListConnectionsResponse.fromJson(o.toJson());
      checkListConnectionsResponse(od as api.ListConnectionsResponse);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListOperationsResponse();
      var od = api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od as api.ListOperationsResponse);
    });
  });

  unittest.group('obj-schema-ListPeeredDnsDomainsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPeeredDnsDomainsResponse();
      var od = api.ListPeeredDnsDomainsResponse.fromJson(o.toJson());
      checkListPeeredDnsDomainsResponse(od as api.ListPeeredDnsDomainsResponse);
    });
  });

  unittest.group('obj-schema-LogDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogDescriptor();
      var od = api.LogDescriptor.fromJson(o.toJson());
      checkLogDescriptor(od as api.LogDescriptor);
    });
  });

  unittest.group('obj-schema-Logging', () {
    unittest.test('to-json--from-json', () {
      var o = buildLogging();
      var od = api.Logging.fromJson(o.toJson());
      checkLogging(od as api.Logging);
    });
  });

  unittest.group('obj-schema-LoggingDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildLoggingDestination();
      var od = api.LoggingDestination.fromJson(o.toJson());
      checkLoggingDestination(od as api.LoggingDestination);
    });
  });

  unittest.group('obj-schema-Method', () {
    unittest.test('to-json--from-json', () {
      var o = buildMethod();
      var od = api.Method.fromJson(o.toJson());
      checkMethod(od as api.Method);
    });
  });

  unittest.group('obj-schema-MetricDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricDescriptor();
      var od = api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od as api.MetricDescriptor);
    });
  });

  unittest.group('obj-schema-MetricDescriptorMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricDescriptorMetadata();
      var od = api.MetricDescriptorMetadata.fromJson(o.toJson());
      checkMetricDescriptorMetadata(od as api.MetricDescriptorMetadata);
    });
  });

  unittest.group('obj-schema-MetricRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricRule();
      var od = api.MetricRule.fromJson(o.toJson());
      checkMetricRule(od as api.MetricRule);
    });
  });

  unittest.group('obj-schema-Mixin', () {
    unittest.test('to-json--from-json', () {
      var o = buildMixin();
      var od = api.Mixin.fromJson(o.toJson());
      checkMixin(od as api.Mixin);
    });
  });

  unittest.group('obj-schema-MonitoredResourceDescriptor', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoredResourceDescriptor();
      var od = api.MonitoredResourceDescriptor.fromJson(o.toJson());
      checkMonitoredResourceDescriptor(od as api.MonitoredResourceDescriptor);
    });
  });

  unittest.group('obj-schema-Monitoring', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoring();
      var od = api.Monitoring.fromJson(o.toJson());
      checkMonitoring(od as api.Monitoring);
    });
  });

  unittest.group('obj-schema-MonitoringDestination', () {
    unittest.test('to-json--from-json', () {
      var o = buildMonitoringDestination();
      var od = api.MonitoringDestination.fromJson(o.toJson());
      checkMonitoringDestination(od as api.MonitoringDestination);
    });
  });

  unittest.group('obj-schema-OAuthRequirements', () {
    unittest.test('to-json--from-json', () {
      var o = buildOAuthRequirements();
      var od = api.OAuthRequirements.fromJson(o.toJson());
      checkOAuthRequirements(od as api.OAuthRequirements);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperation();
      var od = api.Operation.fromJson(o.toJson());
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () {
      var o = buildOption();
      var od = api.Option.fromJson(o.toJson());
      checkOption(od as api.Option);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () {
      var o = buildPage();
      var od = api.Page.fromJson(o.toJson());
      checkPage(od as api.Page);
    });
  });

  unittest.group('obj-schema-PeeredDnsDomain', () {
    unittest.test('to-json--from-json', () {
      var o = buildPeeredDnsDomain();
      var od = api.PeeredDnsDomain.fromJson(o.toJson());
      checkPeeredDnsDomain(od as api.PeeredDnsDomain);
    });
  });

  unittest.group('obj-schema-PeeredDnsDomainMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildPeeredDnsDomainMetadata();
      var od = api.PeeredDnsDomainMetadata.fromJson(o.toJson());
      checkPeeredDnsDomainMetadata(od as api.PeeredDnsDomainMetadata);
    });
  });

  unittest.group('obj-schema-PolicyBinding', () {
    unittest.test('to-json--from-json', () {
      var o = buildPolicyBinding();
      var od = api.PolicyBinding.fromJson(o.toJson());
      checkPolicyBinding(od as api.PolicyBinding);
    });
  });

  unittest.group('obj-schema-Quota', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuota();
      var od = api.Quota.fromJson(o.toJson());
      checkQuota(od as api.Quota);
    });
  });

  unittest.group('obj-schema-QuotaLimit', () {
    unittest.test('to-json--from-json', () {
      var o = buildQuotaLimit();
      var od = api.QuotaLimit.fromJson(o.toJson());
      checkQuotaLimit(od as api.QuotaLimit);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () {
      var o = buildRange();
      var od = api.Range.fromJson(o.toJson());
      checkRange(od as api.Range);
    });
  });

  unittest.group('obj-schema-RangeReservation', () {
    unittest.test('to-json--from-json', () {
      var o = buildRangeReservation();
      var od = api.RangeReservation.fromJson(o.toJson());
      checkRangeReservation(od as api.RangeReservation);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsRecordSetMetadata();
      var od = api.RemoveDnsRecordSetMetadata.fromJson(o.toJson());
      checkRemoveDnsRecordSetMetadata(od as api.RemoveDnsRecordSetMetadata);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsRecordSetRequest();
      var od = api.RemoveDnsRecordSetRequest.fromJson(o.toJson());
      checkRemoveDnsRecordSetRequest(od as api.RemoveDnsRecordSetRequest);
    });
  });

  unittest.group('obj-schema-RemoveDnsRecordSetResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsRecordSetResponse();
      var od = api.RemoveDnsRecordSetResponse.fromJson(o.toJson());
      checkRemoveDnsRecordSetResponse(od as api.RemoveDnsRecordSetResponse);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsZoneMetadata();
      var od = api.RemoveDnsZoneMetadata.fromJson(o.toJson());
      checkRemoveDnsZoneMetadata(od as api.RemoveDnsZoneMetadata);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsZoneRequest();
      var od = api.RemoveDnsZoneRequest.fromJson(o.toJson());
      checkRemoveDnsZoneRequest(od as api.RemoveDnsZoneRequest);
    });
  });

  unittest.group('obj-schema-RemoveDnsZoneResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemoveDnsZoneResponse();
      var od = api.RemoveDnsZoneResponse.fromJson(o.toJson());
      checkRemoveDnsZoneResponse(od as api.RemoveDnsZoneResponse);
    });
  });

  unittest.group('obj-schema-Route', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoute();
      var od = api.Route.fromJson(o.toJson());
      checkRoute(od as api.Route);
    });
  });

  unittest.group('obj-schema-SearchRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSearchRangeRequest();
      var od = api.SearchRangeRequest.fromJson(o.toJson());
      checkSearchRangeRequest(od as api.SearchRangeRequest);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () {
      var o = buildService();
      var od = api.Service.fromJson(o.toJson());
      checkService(od as api.Service);
    });
  });

  unittest.group('obj-schema-ServiceIdentity', () {
    unittest.test('to-json--from-json', () {
      var o = buildServiceIdentity();
      var od = api.ServiceIdentity.fromJson(o.toJson());
      checkServiceIdentity(od as api.ServiceIdentity);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceContext();
      var od = api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od as api.SourceContext);
    });
  });

  unittest.group('obj-schema-SourceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceInfo();
      var od = api.SourceInfo.fromJson(o.toJson());
      checkSourceInfo(od as api.SourceInfo);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Subnetwork', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubnetwork();
      var od = api.Subnetwork.fromJson(o.toJson());
      checkSubnetwork(od as api.Subnetwork);
    });
  });

  unittest.group('obj-schema-SystemParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystemParameter();
      var od = api.SystemParameter.fromJson(o.toJson());
      checkSystemParameter(od as api.SystemParameter);
    });
  });

  unittest.group('obj-schema-SystemParameterRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystemParameterRule();
      var od = api.SystemParameterRule.fromJson(o.toJson());
      checkSystemParameterRule(od as api.SystemParameterRule);
    });
  });

  unittest.group('obj-schema-SystemParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystemParameters();
      var od = api.SystemParameters.fromJson(o.toJson());
      checkSystemParameters(od as api.SystemParameters);
    });
  });

  unittest.group('obj-schema-Type', () {
    unittest.test('to-json--from-json', () {
      var o = buildType();
      var od = api.Type.fromJson(o.toJson());
      checkType(od as api.Type);
    });
  });

  unittest.group('obj-schema-UpdateDnsRecordSetMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDnsRecordSetMetadata();
      var od = api.UpdateDnsRecordSetMetadata.fromJson(o.toJson());
      checkUpdateDnsRecordSetMetadata(od as api.UpdateDnsRecordSetMetadata);
    });
  });

  unittest.group('obj-schema-UpdateDnsRecordSetRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDnsRecordSetRequest();
      var od = api.UpdateDnsRecordSetRequest.fromJson(o.toJson());
      checkUpdateDnsRecordSetRequest(od as api.UpdateDnsRecordSetRequest);
    });
  });

  unittest.group('obj-schema-Usage', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsage();
      var od = api.Usage.fromJson(o.toJson());
      checkUsage(od as api.Usage);
    });
  });

  unittest.group('obj-schema-UsageRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsageRule();
      var od = api.UsageRule.fromJson(o.toJson());
      checkUsageRule(od as api.UsageRule);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateConsumerConfigRequest();
      var od = api.ValidateConsumerConfigRequest.fromJson(o.toJson());
      checkValidateConsumerConfigRequest(
          od as api.ValidateConsumerConfigRequest);
    });
  });

  unittest.group('obj-schema-ValidateConsumerConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateConsumerConfigResponse();
      var od = api.ValidateConsumerConfigResponse.fromJson(o.toJson());
      checkValidateConsumerConfigResponse(
          od as api.ValidateConsumerConfigResponse);
    });
  });

  unittest.group('resource-OperationsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj as api.CancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response as api.ListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ServicesResourceApi', () {
    unittest.test('method--addSubnetwork', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services;
      var arg_request = buildAddSubnetworkRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddSubnetworkRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddSubnetworkRequest(obj as api.AddSubnetworkRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addSubnetwork(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--disableVpcServiceControls', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services;
      var arg_request = buildDisableVpcServiceControlsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DisableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableVpcServiceControlsRequest(
            obj as api.DisableVpcServiceControlsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disableVpcServiceControls(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--enableVpcServiceControls', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services;
      var arg_request = buildEnableVpcServiceControlsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EnableVpcServiceControlsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableVpcServiceControlsRequest(
            obj as api.EnableVpcServiceControlsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enableVpcServiceControls(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--searchRange', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services;
      var arg_request = buildSearchRangeRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SearchRangeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchRangeRequest(obj as api.SearchRangeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchRange(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services;
      var arg_request = buildValidateConsumerConfigRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ValidateConsumerConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkValidateConsumerConfigRequest(
            obj as api.ValidateConsumerConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildValidateConsumerConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValidateConsumerConfigResponse(
            response as api.ValidateConsumerConfigResponse);
      })));
    });
  });

  unittest.group('resource-ServicesConnectionsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.connections;
      var arg_request = buildConnection();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj as api.Connection);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.connections;
      var arg_parent = 'foo';
      var arg_network = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["network"].first, unittest.equals(arg_network));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListConnectionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, network: arg_network, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConnectionsResponse(response as api.ListConnectionsResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.connections;
      var arg_request = buildConnection();
      var arg_name = 'foo';
      var arg_force = true;
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Connection.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConnection(obj as api.Connection);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              force: arg_force,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ServicesDnsRecordSetsResourceApi', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildAddDnsRecordSetRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsRecordSetRequest(obj as api.AddDnsRecordSetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--remove', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildRemoveDnsRecordSetRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsRecordSetRequest(obj as api.RemoveDnsRecordSetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .remove(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildUpdateDnsRecordSetRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UpdateDnsRecordSetRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDnsRecordSetRequest(obj as api.UpdateDnsRecordSetRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group('resource-ServicesDnsZonesResourceApi', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.dnsZones;
      var arg_request = buildAddDnsZoneRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddDnsZoneRequest(obj as api.AddDnsZoneRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--remove', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.dnsZones;
      var arg_request = buildRemoveDnsZoneRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveDnsZoneRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveDnsZoneRequest(obj as api.RemoveDnsZoneRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .remove(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });

  unittest.group(
      'resource-ServicesProjectsGlobalNetworksPeeredDnsDomainsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      var arg_request = buildPeeredDnsDomain();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PeeredDnsDomain.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPeeredDnsDomain(obj as api.PeeredDnsDomain);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock)
          .services
          .projects
          .global
          .networks
          .peeredDnsDomains;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListPeeredDnsDomainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPeeredDnsDomainsResponse(
            response as api.ListPeeredDnsDomainsResponse);
      })));
    });
  });

  unittest.group('resource-ServicesRolesResourceApi', () {
    unittest.test('method--add', () {
      var mock = HttpServerMock();
      var res = api.ServicenetworkingApi(mock).services.roles;
      var arg_request = buildAddRolesRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddRolesRequest(obj as api.AddRolesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response as api.Operation);
      })));
    });
  });
}
