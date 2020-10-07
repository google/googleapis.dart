library googleapis.servicenetworking.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/servicenetworking/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAddDnsRecordSetMetadata = 0;
buildAddDnsRecordSetMetadata() {
  var o = new api.AddDnsRecordSetMetadata();
  buildCounterAddDnsRecordSetMetadata++;
  if (buildCounterAddDnsRecordSetMetadata < 3) {}
  buildCounterAddDnsRecordSetMetadata--;
  return o;
}

checkAddDnsRecordSetMetadata(api.AddDnsRecordSetMetadata o) {
  buildCounterAddDnsRecordSetMetadata++;
  if (buildCounterAddDnsRecordSetMetadata < 3) {}
  buildCounterAddDnsRecordSetMetadata--;
}

core.int buildCounterAddDnsRecordSetRequest = 0;
buildAddDnsRecordSetRequest() {
  var o = new api.AddDnsRecordSetRequest();
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    o.consumerNetwork = "foo";
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = "foo";
  }
  buildCounterAddDnsRecordSetRequest--;
  return o;
}

checkAddDnsRecordSetRequest(api.AddDnsRecordSetRequest o) {
  buildCounterAddDnsRecordSetRequest++;
  if (buildCounterAddDnsRecordSetRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.dnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterAddDnsRecordSetRequest--;
}

core.int buildCounterAddDnsZoneMetadata = 0;
buildAddDnsZoneMetadata() {
  var o = new api.AddDnsZoneMetadata();
  buildCounterAddDnsZoneMetadata++;
  if (buildCounterAddDnsZoneMetadata < 3) {}
  buildCounterAddDnsZoneMetadata--;
  return o;
}

checkAddDnsZoneMetadata(api.AddDnsZoneMetadata o) {
  buildCounterAddDnsZoneMetadata++;
  if (buildCounterAddDnsZoneMetadata < 3) {}
  buildCounterAddDnsZoneMetadata--;
}

core.int buildCounterAddDnsZoneRequest = 0;
buildAddDnsZoneRequest() {
  var o = new api.AddDnsZoneRequest();
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    o.consumerNetwork = "foo";
    o.dnsSuffix = "foo";
    o.name = "foo";
  }
  buildCounterAddDnsZoneRequest--;
  return o;
}

checkAddDnsZoneRequest(api.AddDnsZoneRequest o) {
  buildCounterAddDnsZoneRequest++;
  if (buildCounterAddDnsZoneRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAddDnsZoneRequest--;
}

core.int buildCounterAddDnsZoneResponse = 0;
buildAddDnsZoneResponse() {
  var o = new api.AddDnsZoneResponse();
  buildCounterAddDnsZoneResponse++;
  if (buildCounterAddDnsZoneResponse < 3) {
    o.consumerPeeringZone = buildDnsZone();
    o.producerPrivateZone = buildDnsZone();
  }
  buildCounterAddDnsZoneResponse--;
  return o;
}

checkAddDnsZoneResponse(api.AddDnsZoneResponse o) {
  buildCounterAddDnsZoneResponse++;
  if (buildCounterAddDnsZoneResponse < 3) {
    checkDnsZone(o.consumerPeeringZone);
    checkDnsZone(o.producerPrivateZone);
  }
  buildCounterAddDnsZoneResponse--;
}

core.int buildCounterAddRolesMetadata = 0;
buildAddRolesMetadata() {
  var o = new api.AddRolesMetadata();
  buildCounterAddRolesMetadata++;
  if (buildCounterAddRolesMetadata < 3) {}
  buildCounterAddRolesMetadata--;
  return o;
}

checkAddRolesMetadata(api.AddRolesMetadata o) {
  buildCounterAddRolesMetadata++;
  if (buildCounterAddRolesMetadata < 3) {}
  buildCounterAddRolesMetadata--;
}

buildUnnamed410() {
  var o = new core.List<api.PolicyBinding>();
  o.add(buildPolicyBinding());
  o.add(buildPolicyBinding());
  return o;
}

checkUnnamed410(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterAddRolesRequest = 0;
buildAddRolesRequest() {
  var o = new api.AddRolesRequest();
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    o.consumerNetwork = "foo";
    o.policyBinding = buildUnnamed410();
  }
  buildCounterAddRolesRequest--;
  return o;
}

checkAddRolesRequest(api.AddRolesRequest o) {
  buildCounterAddRolesRequest++;
  if (buildCounterAddRolesRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkUnnamed410(o.policyBinding);
  }
  buildCounterAddRolesRequest--;
}

buildUnnamed411() {
  var o = new core.List<api.PolicyBinding>();
  o.add(buildPolicyBinding());
  o.add(buildPolicyBinding());
  return o;
}

checkUnnamed411(core.List<api.PolicyBinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyBinding(o[0]);
  checkPolicyBinding(o[1]);
}

core.int buildCounterAddRolesResponse = 0;
buildAddRolesResponse() {
  var o = new api.AddRolesResponse();
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    o.policyBinding = buildUnnamed411();
  }
  buildCounterAddRolesResponse--;
  return o;
}

checkAddRolesResponse(api.AddRolesResponse o) {
  buildCounterAddRolesResponse++;
  if (buildCounterAddRolesResponse < 3) {
    checkUnnamed411(o.policyBinding);
  }
  buildCounterAddRolesResponse--;
}

buildUnnamed412() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAddSubnetworkRequest = 0;
buildAddSubnetworkRequest() {
  var o = new api.AddSubnetworkRequest();
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    o.consumer = "foo";
    o.consumerNetwork = "foo";
    o.description = "foo";
    o.ipPrefixLength = 42;
    o.region = "foo";
    o.requestedAddress = "foo";
    o.subnetwork = "foo";
    o.subnetworkUsers = buildUnnamed412();
  }
  buildCounterAddSubnetworkRequest--;
  return o;
}

checkAddSubnetworkRequest(api.AddSubnetworkRequest o) {
  buildCounterAddSubnetworkRequest++;
  if (buildCounterAddSubnetworkRequest < 3) {
    unittest.expect(o.consumer, unittest.equals('foo'));
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    unittest.expect(o.region, unittest.equals('foo'));
    unittest.expect(o.requestedAddress, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    checkUnnamed412(o.subnetworkUsers);
  }
  buildCounterAddSubnetworkRequest--;
}

buildUnnamed413() {
  var o = new core.List<api.Method>();
  o.add(buildMethod());
  o.add(buildMethod());
  return o;
}

checkUnnamed413(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

buildUnnamed414() {
  var o = new core.List<api.Mixin>();
  o.add(buildMixin());
  o.add(buildMixin());
  return o;
}

checkUnnamed414(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

buildUnnamed415() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed415(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
buildApi() {
  var o = new api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed413();
    o.mixins = buildUnnamed414();
    o.name = "foo";
    o.options = buildUnnamed415();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
    o.version = "foo";
  }
  buildCounterApi--;
  return o;
}

checkApi(api.Api o) {
  buildCounterApi++;
  if (buildCounterApi < 3) {
    checkUnnamed413(o.methods);
    checkUnnamed414(o.mixins);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed415(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApi--;
}

buildUnnamed416() {
  var o = new core.List<api.JwtLocation>();
  o.add(buildJwtLocation());
  o.add(buildJwtLocation());
  return o;
}

checkUnnamed416(core.List<api.JwtLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwtLocation(o[0]);
  checkJwtLocation(o[1]);
}

core.int buildCounterAuthProvider = 0;
buildAuthProvider() {
  var o = new api.AuthProvider();
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    o.audiences = "foo";
    o.authorizationUrl = "foo";
    o.id = "foo";
    o.issuer = "foo";
    o.jwksUri = "foo";
    o.jwtLocations = buildUnnamed416();
  }
  buildCounterAuthProvider--;
  return o;
}

checkAuthProvider(api.AuthProvider o) {
  buildCounterAuthProvider++;
  if (buildCounterAuthProvider < 3) {
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.authorizationUrl, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.issuer, unittest.equals('foo'));
    unittest.expect(o.jwksUri, unittest.equals('foo'));
    checkUnnamed416(o.jwtLocations);
  }
  buildCounterAuthProvider--;
}

core.int buildCounterAuthRequirement = 0;
buildAuthRequirement() {
  var o = new api.AuthRequirement();
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    o.audiences = "foo";
    o.providerId = "foo";
  }
  buildCounterAuthRequirement--;
  return o;
}

checkAuthRequirement(api.AuthRequirement o) {
  buildCounterAuthRequirement++;
  if (buildCounterAuthRequirement < 3) {
    unittest.expect(o.audiences, unittest.equals('foo'));
    unittest.expect(o.providerId, unittest.equals('foo'));
  }
  buildCounterAuthRequirement--;
}

buildUnnamed417() {
  var o = new core.List<api.AuthProvider>();
  o.add(buildAuthProvider());
  o.add(buildAuthProvider());
  return o;
}

checkUnnamed417(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

buildUnnamed418() {
  var o = new core.List<api.AuthenticationRule>();
  o.add(buildAuthenticationRule());
  o.add(buildAuthenticationRule());
  return o;
}

checkUnnamed418(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
buildAuthentication() {
  var o = new api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed417();
    o.rules = buildUnnamed418();
  }
  buildCounterAuthentication--;
  return o;
}

checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed417(o.providers);
    checkUnnamed418(o.rules);
  }
  buildCounterAuthentication--;
}

buildUnnamed419() {
  var o = new core.List<api.AuthRequirement>();
  o.add(buildAuthRequirement());
  o.add(buildAuthRequirement());
  return o;
}

checkUnnamed419(core.List<api.AuthRequirement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthRequirement(o[0]);
  checkAuthRequirement(o[1]);
}

core.int buildCounterAuthenticationRule = 0;
buildAuthenticationRule() {
  var o = new api.AuthenticationRule();
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    o.allowWithoutCredential = true;
    o.oauth = buildOAuthRequirements();
    o.requirements = buildUnnamed419();
    o.selector = "foo";
  }
  buildCounterAuthenticationRule--;
  return o;
}

checkAuthenticationRule(api.AuthenticationRule o) {
  buildCounterAuthenticationRule++;
  if (buildCounterAuthenticationRule < 3) {
    unittest.expect(o.allowWithoutCredential, unittest.isTrue);
    checkOAuthRequirements(o.oauth);
    checkUnnamed419(o.requirements);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterAuthenticationRule--;
}

buildUnnamed420() {
  var o = new core.List<api.BackendRule>();
  o.add(buildBackendRule());
  o.add(buildBackendRule());
  return o;
}

checkUnnamed420(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0]);
  checkBackendRule(o[1]);
}

core.int buildCounterBackend = 0;
buildBackend() {
  var o = new api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed420();
  }
  buildCounterBackend--;
  return o;
}

checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed420(o.rules);
  }
  buildCounterBackend--;
}

core.int buildCounterBackendRule = 0;
buildBackendRule() {
  var o = new api.BackendRule();
  buildCounterBackendRule++;
  if (buildCounterBackendRule < 3) {
    o.address = "foo";
    o.deadline = 42.0;
    o.disableAuth = true;
    o.jwtAudience = "foo";
    o.minDeadline = 42.0;
    o.operationDeadline = 42.0;
    o.pathTranslation = "foo";
    o.protocol = "foo";
    o.selector = "foo";
  }
  buildCounterBackendRule--;
  return o;
}

checkBackendRule(api.BackendRule o) {
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

buildUnnamed421() {
  var o = new core.List<api.BillingDestination>();
  o.add(buildBillingDestination());
  o.add(buildBillingDestination());
  return o;
}

checkUnnamed421(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0]);
  checkBillingDestination(o[1]);
}

core.int buildCounterBilling = 0;
buildBilling() {
  var o = new api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed421();
  }
  buildCounterBilling--;
  return o;
}

checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed421(o.consumerDestinations);
  }
  buildCounterBilling--;
}

buildUnnamed422() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed422(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBillingDestination = 0;
buildBillingDestination() {
  var o = new api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed422();
    o.monitoredResource = "foo";
  }
  buildCounterBillingDestination--;
  return o;
}

checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed422(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterBillingDestination--;
}

core.int buildCounterCancelOperationRequest = 0;
buildCancelOperationRequest() {
  var o = new api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

buildUnnamed423() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed423(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConnection = 0;
buildConnection() {
  var o = new api.Connection();
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    o.network = "foo";
    o.peering = "foo";
    o.reservedPeeringRanges = buildUnnamed423();
    o.service = "foo";
  }
  buildCounterConnection--;
  return o;
}

checkConnection(api.Connection o) {
  buildCounterConnection++;
  if (buildCounterConnection < 3) {
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.peering, unittest.equals('foo'));
    checkUnnamed423(o.reservedPeeringRanges);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterConnection--;
}

core.int buildCounterConsumerProject = 0;
buildConsumerProject() {
  var o = new api.ConsumerProject();
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    o.projectNum = "foo";
  }
  buildCounterConsumerProject--;
  return o;
}

checkConsumerProject(api.ConsumerProject o) {
  buildCounterConsumerProject++;
  if (buildCounterConsumerProject < 3) {
    unittest.expect(o.projectNum, unittest.equals('foo'));
  }
  buildCounterConsumerProject--;
}

buildUnnamed424() {
  var o = new core.List<api.ContextRule>();
  o.add(buildContextRule());
  o.add(buildContextRule());
  return o;
}

checkUnnamed424(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0]);
  checkContextRule(o[1]);
}

core.int buildCounterContext = 0;
buildContext() {
  var o = new api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed424();
  }
  buildCounterContext--;
  return o;
}

checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed424(o.rules);
  }
  buildCounterContext--;
}

buildUnnamed425() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed425(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed426() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed426(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed427() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed427(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed428() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed428(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContextRule = 0;
buildContextRule() {
  var o = new api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed425();
    o.allowedResponseExtensions = buildUnnamed426();
    o.provided = buildUnnamed427();
    o.requested = buildUnnamed428();
    o.selector = "foo";
  }
  buildCounterContextRule--;
  return o;
}

checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed425(o.allowedRequestExtensions);
    checkUnnamed426(o.allowedResponseExtensions);
    checkUnnamed427(o.provided);
    checkUnnamed428(o.requested);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterContextRule--;
}

core.int buildCounterControl = 0;
buildControl() {
  var o = new api.Control();
  buildCounterControl++;
  if (buildCounterControl < 3) {
    o.environment = "foo";
  }
  buildCounterControl--;
  return o;
}

checkControl(api.Control o) {
  buildCounterControl++;
  if (buildCounterControl < 3) {
    unittest.expect(o.environment, unittest.equals('foo'));
  }
  buildCounterControl--;
}

buildUnnamed429() {
  var o = new core.List<api.CustomErrorRule>();
  o.add(buildCustomErrorRule());
  o.add(buildCustomErrorRule());
  return o;
}

checkUnnamed429(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0]);
  checkCustomErrorRule(o[1]);
}

buildUnnamed430() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed430(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomError = 0;
buildCustomError() {
  var o = new api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed429();
    o.types = buildUnnamed430();
  }
  buildCounterCustomError--;
  return o;
}

checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed429(o.rules);
    checkUnnamed430(o.types);
  }
  buildCounterCustomError--;
}

core.int buildCounterCustomErrorRule = 0;
buildCustomErrorRule() {
  var o = new api.CustomErrorRule();
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    o.isErrorType = true;
    o.selector = "foo";
  }
  buildCounterCustomErrorRule--;
  return o;
}

checkCustomErrorRule(api.CustomErrorRule o) {
  buildCounterCustomErrorRule++;
  if (buildCounterCustomErrorRule < 3) {
    unittest.expect(o.isErrorType, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterCustomErrorRule--;
}

core.int buildCounterCustomHttpPattern = 0;
buildCustomHttpPattern() {
  var o = new api.CustomHttpPattern();
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    o.kind = "foo";
    o.path = "foo";
  }
  buildCounterCustomHttpPattern--;
  return o;
}

checkCustomHttpPattern(api.CustomHttpPattern o) {
  buildCounterCustomHttpPattern++;
  if (buildCounterCustomHttpPattern < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterCustomHttpPattern--;
}

core.int buildCounterDeletePeeredDnsDomainMetadata = 0;
buildDeletePeeredDnsDomainMetadata() {
  var o = new api.DeletePeeredDnsDomainMetadata();
  buildCounterDeletePeeredDnsDomainMetadata++;
  if (buildCounterDeletePeeredDnsDomainMetadata < 3) {}
  buildCounterDeletePeeredDnsDomainMetadata--;
  return o;
}

checkDeletePeeredDnsDomainMetadata(api.DeletePeeredDnsDomainMetadata o) {
  buildCounterDeletePeeredDnsDomainMetadata++;
  if (buildCounterDeletePeeredDnsDomainMetadata < 3) {}
  buildCounterDeletePeeredDnsDomainMetadata--;
}

core.int buildCounterDisableVpcServiceControlsRequest = 0;
buildDisableVpcServiceControlsRequest() {
  var o = new api.DisableVpcServiceControlsRequest();
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = "foo";
  }
  buildCounterDisableVpcServiceControlsRequest--;
  return o;
}

checkDisableVpcServiceControlsRequest(api.DisableVpcServiceControlsRequest o) {
  buildCounterDisableVpcServiceControlsRequest++;
  if (buildCounterDisableVpcServiceControlsRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
  }
  buildCounterDisableVpcServiceControlsRequest--;
}

buildUnnamed431() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed431(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDnsRecordSet = 0;
buildDnsRecordSet() {
  var o = new api.DnsRecordSet();
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    o.data = buildUnnamed431();
    o.domain = "foo";
    o.ttl = "foo";
    o.type = "foo";
  }
  buildCounterDnsRecordSet--;
  return o;
}

checkDnsRecordSet(api.DnsRecordSet o) {
  buildCounterDnsRecordSet++;
  if (buildCounterDnsRecordSet < 3) {
    checkUnnamed431(o.data);
    unittest.expect(o.domain, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterDnsRecordSet--;
}

core.int buildCounterDnsZone = 0;
buildDnsZone() {
  var o = new api.DnsZone();
  buildCounterDnsZone++;
  if (buildCounterDnsZone < 3) {
    o.dnsSuffix = "foo";
    o.name = "foo";
  }
  buildCounterDnsZone--;
  return o;
}

checkDnsZone(api.DnsZone o) {
  buildCounterDnsZone++;
  if (buildCounterDnsZone < 3) {
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDnsZone--;
}

buildUnnamed432() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed432(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

buildUnnamed433() {
  var o = new core.List<api.DocumentationRule>();
  o.add(buildDocumentationRule());
  o.add(buildDocumentationRule());
  return o;
}

checkUnnamed433(core.List<api.DocumentationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocumentationRule(o[0]);
  checkDocumentationRule(o[1]);
}

core.int buildCounterDocumentation = 0;
buildDocumentation() {
  var o = new api.Documentation();
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    o.documentationRootUrl = "foo";
    o.overview = "foo";
    o.pages = buildUnnamed432();
    o.rules = buildUnnamed433();
    o.serviceRootUrl = "foo";
    o.summary = "foo";
  }
  buildCounterDocumentation--;
  return o;
}

checkDocumentation(api.Documentation o) {
  buildCounterDocumentation++;
  if (buildCounterDocumentation < 3) {
    unittest.expect(o.documentationRootUrl, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    checkUnnamed432(o.pages);
    checkUnnamed433(o.rules);
    unittest.expect(o.serviceRootUrl, unittest.equals('foo'));
    unittest.expect(o.summary, unittest.equals('foo'));
  }
  buildCounterDocumentation--;
}

core.int buildCounterDocumentationRule = 0;
buildDocumentationRule() {
  var o = new api.DocumentationRule();
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    o.deprecationDescription = "foo";
    o.description = "foo";
    o.selector = "foo";
  }
  buildCounterDocumentationRule--;
  return o;
}

checkDocumentationRule(api.DocumentationRule o) {
  buildCounterDocumentationRule++;
  if (buildCounterDocumentationRule < 3) {
    unittest.expect(o.deprecationDescription, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterDocumentationRule--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnableVpcServiceControlsRequest = 0;
buildEnableVpcServiceControlsRequest() {
  var o = new api.EnableVpcServiceControlsRequest();
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    o.consumerNetwork = "foo";
  }
  buildCounterEnableVpcServiceControlsRequest--;
  return o;
}

checkEnableVpcServiceControlsRequest(api.EnableVpcServiceControlsRequest o) {
  buildCounterEnableVpcServiceControlsRequest++;
  if (buildCounterEnableVpcServiceControlsRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
  }
  buildCounterEnableVpcServiceControlsRequest--;
}

buildUnnamed434() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed434(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEndpoint = 0;
buildEndpoint() {
  var o = new api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed434();
    o.allowCors = true;
    o.name = "foo";
    o.target = "foo";
  }
  buildCounterEndpoint--;
  return o;
}

checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    checkUnnamed434(o.aliases);
    unittest.expect(o.allowCors, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

buildUnnamed435() {
  var o = new core.List<api.EnumValue>();
  o.add(buildEnumValue());
  o.add(buildEnumValue());
  return o;
}

checkUnnamed435(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0]);
  checkEnumValue(o[1]);
}

buildUnnamed436() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed436(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnum = 0;
buildEnum() {
  var o = new api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed435();
    o.name = "foo";
    o.options = buildUnnamed436();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterEnum--;
  return o;
}

checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed435(o.enumvalue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed436(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterEnum--;
}

buildUnnamed437() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed437(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnumValue = 0;
buildEnumValue() {
  var o = new api.EnumValue();
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    o.name = "foo";
    o.number = 42;
    o.options = buildUnnamed437();
  }
  buildCounterEnumValue--;
  return o;
}

checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    checkUnnamed437(o.options);
  }
  buildCounterEnumValue--;
}

buildUnnamed438() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed438(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterField = 0;
buildField() {
  var o = new api.Field();
  buildCounterField++;
  if (buildCounterField < 3) {
    o.cardinality = "foo";
    o.defaultValue = "foo";
    o.jsonName = "foo";
    o.kind = "foo";
    o.name = "foo";
    o.number = 42;
    o.oneofIndex = 42;
    o.options = buildUnnamed438();
    o.packed = true;
    o.typeUrl = "foo";
  }
  buildCounterField--;
  return o;
}

checkField(api.Field o) {
  buildCounterField++;
  if (buildCounterField < 3) {
    unittest.expect(o.cardinality, unittest.equals('foo'));
    unittest.expect(o.defaultValue, unittest.equals('foo'));
    unittest.expect(o.jsonName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    unittest.expect(o.oneofIndex, unittest.equals(42));
    checkUnnamed438(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.int buildCounterGoogleCloudServicenetworkingV1betaSubnetwork = 0;
buildGoogleCloudServicenetworkingV1betaSubnetwork() {
  var o = new api.GoogleCloudServicenetworkingV1betaSubnetwork();
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork++;
  if (buildCounterGoogleCloudServicenetworkingV1betaSubnetwork < 3) {
    o.ipCidrRange = "foo";
    o.name = "foo";
    o.network = "foo";
    o.outsideAllocation = true;
  }
  buildCounterGoogleCloudServicenetworkingV1betaSubnetwork--;
  return o;
}

checkGoogleCloudServicenetworkingV1betaSubnetwork(
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

buildUnnamed439() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed439(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttp = 0;
buildHttp() {
  var o = new api.Http();
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    o.fullyDecodeReservedExpansion = true;
    o.rules = buildUnnamed439();
  }
  buildCounterHttp--;
  return o;
}

checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion, unittest.isTrue);
    checkUnnamed439(o.rules);
  }
  buildCounterHttp--;
}

buildUnnamed440() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed440(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttpRule = 0;
buildHttpRule() {
  var o = new api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed440();
    o.allowHalfDuplex = true;
    o.body = "foo";
    o.custom = buildCustomHttpPattern();
    o.delete = "foo";
    o.get = "foo";
    o.patch = "foo";
    o.post = "foo";
    o.put = "foo";
    o.responseBody = "foo";
    o.selector = "foo";
  }
  buildCounterHttpRule--;
  return o;
}

checkHttpRule(api.HttpRule o) {
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    checkUnnamed440(o.additionalBindings);
    unittest.expect(o.allowHalfDuplex, unittest.isTrue);
    unittest.expect(o.body, unittest.equals('foo'));
    checkCustomHttpPattern(o.custom);
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
buildJwtLocation() {
  var o = new api.JwtLocation();
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    o.header = "foo";
    o.query = "foo";
    o.valuePrefix = "foo";
  }
  buildCounterJwtLocation--;
  return o;
}

checkJwtLocation(api.JwtLocation o) {
  buildCounterJwtLocation++;
  if (buildCounterJwtLocation < 3) {
    unittest.expect(o.header, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.valuePrefix, unittest.equals('foo'));
  }
  buildCounterJwtLocation--;
}

core.int buildCounterLabelDescriptor = 0;
buildLabelDescriptor() {
  var o = new api.LabelDescriptor();
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    o.description = "foo";
    o.key = "foo";
    o.valueType = "foo";
  }
  buildCounterLabelDescriptor--;
  return o;
}

checkLabelDescriptor(api.LabelDescriptor o) {
  buildCounterLabelDescriptor++;
  if (buildCounterLabelDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterLabelDescriptor--;
}

buildUnnamed441() {
  var o = new core.List<api.Connection>();
  o.add(buildConnection());
  o.add(buildConnection());
  return o;
}

checkUnnamed441(core.List<api.Connection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnection(o[0]);
  checkConnection(o[1]);
}

core.int buildCounterListConnectionsResponse = 0;
buildListConnectionsResponse() {
  var o = new api.ListConnectionsResponse();
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    o.connections = buildUnnamed441();
  }
  buildCounterListConnectionsResponse--;
  return o;
}

checkListConnectionsResponse(api.ListConnectionsResponse o) {
  buildCounterListConnectionsResponse++;
  if (buildCounterListConnectionsResponse < 3) {
    checkUnnamed441(o.connections);
  }
  buildCounterListConnectionsResponse--;
}

buildUnnamed442() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed442(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed442();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed442(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed443() {
  var o = new core.List<api.PeeredDnsDomain>();
  o.add(buildPeeredDnsDomain());
  o.add(buildPeeredDnsDomain());
  return o;
}

checkUnnamed443(core.List<api.PeeredDnsDomain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPeeredDnsDomain(o[0]);
  checkPeeredDnsDomain(o[1]);
}

core.int buildCounterListPeeredDnsDomainsResponse = 0;
buildListPeeredDnsDomainsResponse() {
  var o = new api.ListPeeredDnsDomainsResponse();
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    o.peeredDnsDomains = buildUnnamed443();
  }
  buildCounterListPeeredDnsDomainsResponse--;
  return o;
}

checkListPeeredDnsDomainsResponse(api.ListPeeredDnsDomainsResponse o) {
  buildCounterListPeeredDnsDomainsResponse++;
  if (buildCounterListPeeredDnsDomainsResponse < 3) {
    checkUnnamed443(o.peeredDnsDomains);
  }
  buildCounterListPeeredDnsDomainsResponse--;
}

buildUnnamed444() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed444(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterLogDescriptor = 0;
buildLogDescriptor() {
  var o = new api.LogDescriptor();
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed444();
    o.name = "foo";
  }
  buildCounterLogDescriptor--;
  return o;
}

checkLogDescriptor(api.LogDescriptor o) {
  buildCounterLogDescriptor++;
  if (buildCounterLogDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed444(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogDescriptor--;
}

buildUnnamed445() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed445(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

buildUnnamed446() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed446(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.int buildCounterLogging = 0;
buildLogging() {
  var o = new api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed445();
    o.producerDestinations = buildUnnamed446();
  }
  buildCounterLogging--;
  return o;
}

checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed445(o.consumerDestinations);
    checkUnnamed446(o.producerDestinations);
  }
  buildCounterLogging--;
}

buildUnnamed447() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed447(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoggingDestination = 0;
buildLoggingDestination() {
  var o = new api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed447();
    o.monitoredResource = "foo";
  }
  buildCounterLoggingDestination--;
  return o;
}

checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed447(o.logs);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterLoggingDestination--;
}

buildUnnamed448() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed448(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterMethod = 0;
buildMethod() {
  var o = new api.Method();
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    o.name = "foo";
    o.options = buildUnnamed448();
    o.requestStreaming = true;
    o.requestTypeUrl = "foo";
    o.responseStreaming = true;
    o.responseTypeUrl = "foo";
    o.syntax = "foo";
  }
  buildCounterMethod--;
  return o;
}

checkMethod(api.Method o) {
  buildCounterMethod++;
  if (buildCounterMethod < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed448(o.options);
    unittest.expect(o.requestStreaming, unittest.isTrue);
    unittest.expect(o.requestTypeUrl, unittest.equals('foo'));
    unittest.expect(o.responseStreaming, unittest.isTrue);
    unittest.expect(o.responseTypeUrl, unittest.equals('foo'));
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterMethod--;
}

buildUnnamed449() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed449(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

buildUnnamed450() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed450(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetricDescriptor = 0;
buildMetricDescriptor() {
  var o = new api.MetricDescriptor();
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed449();
    o.launchStage = "foo";
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = "foo";
    o.monitoredResourceTypes = buildUnnamed450();
    o.name = "foo";
    o.type = "foo";
    o.unit = "foo";
    o.valueType = "foo";
  }
  buildCounterMetricDescriptor--;
  return o;
}

checkMetricDescriptor(api.MetricDescriptor o) {
  buildCounterMetricDescriptor++;
  if (buildCounterMetricDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed449(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    checkMetricDescriptorMetadata(o.metadata);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed450(o.monitoredResourceTypes);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.unit, unittest.equals('foo'));
    unittest.expect(o.valueType, unittest.equals('foo'));
  }
  buildCounterMetricDescriptor--;
}

core.int buildCounterMetricDescriptorMetadata = 0;
buildMetricDescriptorMetadata() {
  var o = new api.MetricDescriptorMetadata();
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    o.ingestDelay = "foo";
    o.launchStage = "foo";
    o.samplePeriod = "foo";
  }
  buildCounterMetricDescriptorMetadata--;
  return o;
}

checkMetricDescriptorMetadata(api.MetricDescriptorMetadata o) {
  buildCounterMetricDescriptorMetadata++;
  if (buildCounterMetricDescriptorMetadata < 3) {
    unittest.expect(o.ingestDelay, unittest.equals('foo'));
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.samplePeriod, unittest.equals('foo'));
  }
  buildCounterMetricDescriptorMetadata--;
}

buildUnnamed451() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed451(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricRule = 0;
buildMetricRule() {
  var o = new api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed451();
    o.selector = "foo";
  }
  buildCounterMetricRule--;
  return o;
}

checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed451(o.metricCosts);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterMetricRule--;
}

core.int buildCounterMixin = 0;
buildMixin() {
  var o = new api.Mixin();
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    o.name = "foo";
    o.root = "foo";
  }
  buildCounterMixin--;
  return o;
}

checkMixin(api.Mixin o) {
  buildCounterMixin++;
  if (buildCounterMixin < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.root, unittest.equals('foo'));
  }
  buildCounterMixin--;
}

buildUnnamed452() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed452(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

core.int buildCounterMonitoredResourceDescriptor = 0;
buildMonitoredResourceDescriptor() {
  var o = new api.MonitoredResourceDescriptor();
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.labels = buildUnnamed452();
    o.launchStage = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterMonitoredResourceDescriptor--;
  return o;
}

checkMonitoredResourceDescriptor(api.MonitoredResourceDescriptor o) {
  buildCounterMonitoredResourceDescriptor++;
  if (buildCounterMonitoredResourceDescriptor < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed452(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

buildUnnamed453() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed453(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

buildUnnamed454() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed454(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
buildMonitoring() {
  var o = new api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed453();
    o.producerDestinations = buildUnnamed454();
  }
  buildCounterMonitoring--;
  return o;
}

checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed453(o.consumerDestinations);
    checkUnnamed454(o.producerDestinations);
  }
  buildCounterMonitoring--;
}

buildUnnamed455() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed455(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMonitoringDestination = 0;
buildMonitoringDestination() {
  var o = new api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed455();
    o.monitoredResource = "foo";
  }
  buildCounterMonitoringDestination--;
  return o;
}

checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed455(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterMonitoringDestination--;
}

core.int buildCounterOAuthRequirements = 0;
buildOAuthRequirements() {
  var o = new api.OAuthRequirements();
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    o.canonicalScopes = "foo";
  }
  buildCounterOAuthRequirements--;
  return o;
}

checkOAuthRequirements(api.OAuthRequirements o) {
  buildCounterOAuthRequirements++;
  if (buildCounterOAuthRequirements < 3) {
    unittest.expect(o.canonicalScopes, unittest.equals('foo'));
  }
  buildCounterOAuthRequirements--;
}

buildUnnamed456() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed456(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed457() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed457(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
  var casted4 = (o["y"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed456();
    o.name = "foo";
    o.response = buildUnnamed457();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed456(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed457(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed458() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed458(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

core.int buildCounterOption = 0;
buildOption() {
  var o = new api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = "foo";
    o.value = buildUnnamed458();
  }
  buildCounterOption--;
  return o;
}

checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed458(o.value);
  }
  buildCounterOption--;
}

buildUnnamed459() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed459(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPage = 0;
buildPage() {
  var o = new api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.content = "foo";
    o.name = "foo";
    o.subpages = buildUnnamed459();
  }
  buildCounterPage--;
  return o;
}

checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed459(o.subpages);
  }
  buildCounterPage--;
}

core.int buildCounterPeeredDnsDomain = 0;
buildPeeredDnsDomain() {
  var o = new api.PeeredDnsDomain();
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    o.dnsSuffix = "foo";
    o.name = "foo";
  }
  buildCounterPeeredDnsDomain--;
  return o;
}

checkPeeredDnsDomain(api.PeeredDnsDomain o) {
  buildCounterPeeredDnsDomain++;
  if (buildCounterPeeredDnsDomain < 3) {
    unittest.expect(o.dnsSuffix, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPeeredDnsDomain--;
}

core.int buildCounterPeeredDnsDomainMetadata = 0;
buildPeeredDnsDomainMetadata() {
  var o = new api.PeeredDnsDomainMetadata();
  buildCounterPeeredDnsDomainMetadata++;
  if (buildCounterPeeredDnsDomainMetadata < 3) {}
  buildCounterPeeredDnsDomainMetadata--;
  return o;
}

checkPeeredDnsDomainMetadata(api.PeeredDnsDomainMetadata o) {
  buildCounterPeeredDnsDomainMetadata++;
  if (buildCounterPeeredDnsDomainMetadata < 3) {}
  buildCounterPeeredDnsDomainMetadata--;
}

core.int buildCounterPolicyBinding = 0;
buildPolicyBinding() {
  var o = new api.PolicyBinding();
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    o.member = "foo";
    o.role = "foo";
  }
  buildCounterPolicyBinding--;
  return o;
}

checkPolicyBinding(api.PolicyBinding o) {
  buildCounterPolicyBinding++;
  if (buildCounterPolicyBinding < 3) {
    unittest.expect(o.member, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterPolicyBinding--;
}

buildUnnamed460() {
  var o = new core.List<api.QuotaLimit>();
  o.add(buildQuotaLimit());
  o.add(buildQuotaLimit());
  return o;
}

checkUnnamed460(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

buildUnnamed461() {
  var o = new core.List<api.MetricRule>();
  o.add(buildMetricRule());
  o.add(buildMetricRule());
  return o;
}

checkUnnamed461(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
buildQuota() {
  var o = new api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed460();
    o.metricRules = buildUnnamed461();
  }
  buildCounterQuota--;
  return o;
}

checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed460(o.limits);
    checkUnnamed461(o.metricRules);
  }
  buildCounterQuota--;
}

buildUnnamed462() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed462(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterQuotaLimit = 0;
buildQuotaLimit() {
  var o = new api.QuotaLimit();
  buildCounterQuotaLimit++;
  if (buildCounterQuotaLimit < 3) {
    o.defaultLimit = "foo";
    o.description = "foo";
    o.displayName = "foo";
    o.duration = "foo";
    o.freeTier = "foo";
    o.maxLimit = "foo";
    o.metric = "foo";
    o.name = "foo";
    o.unit = "foo";
    o.values = buildUnnamed462();
  }
  buildCounterQuotaLimit--;
  return o;
}

checkQuotaLimit(api.QuotaLimit o) {
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
    checkUnnamed462(o.values);
  }
  buildCounterQuotaLimit--;
}

core.int buildCounterRange = 0;
buildRange() {
  var o = new api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.ipCidrRange = "foo";
    o.network = "foo";
  }
  buildCounterRange--;
  return o;
}

checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.ipCidrRange, unittest.equals('foo'));
    unittest.expect(o.network, unittest.equals('foo'));
  }
  buildCounterRange--;
}

buildUnnamed463() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed463(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterRangeReservation = 0;
buildRangeReservation() {
  var o = new api.RangeReservation();
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    o.ipPrefixLength = 42;
    o.secondaryRangeIpPrefixLengths = buildUnnamed463();
  }
  buildCounterRangeReservation--;
  return o;
}

checkRangeReservation(api.RangeReservation o) {
  buildCounterRangeReservation++;
  if (buildCounterRangeReservation < 3) {
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    checkUnnamed463(o.secondaryRangeIpPrefixLengths);
  }
  buildCounterRangeReservation--;
}

core.int buildCounterRemoveDnsRecordSetMetadata = 0;
buildRemoveDnsRecordSetMetadata() {
  var o = new api.RemoveDnsRecordSetMetadata();
  buildCounterRemoveDnsRecordSetMetadata++;
  if (buildCounterRemoveDnsRecordSetMetadata < 3) {}
  buildCounterRemoveDnsRecordSetMetadata--;
  return o;
}

checkRemoveDnsRecordSetMetadata(api.RemoveDnsRecordSetMetadata o) {
  buildCounterRemoveDnsRecordSetMetadata++;
  if (buildCounterRemoveDnsRecordSetMetadata < 3) {}
  buildCounterRemoveDnsRecordSetMetadata--;
}

core.int buildCounterRemoveDnsRecordSetRequest = 0;
buildRemoveDnsRecordSetRequest() {
  var o = new api.RemoveDnsRecordSetRequest();
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    o.consumerNetwork = "foo";
    o.dnsRecordSet = buildDnsRecordSet();
    o.zone = "foo";
  }
  buildCounterRemoveDnsRecordSetRequest--;
  return o;
}

checkRemoveDnsRecordSetRequest(api.RemoveDnsRecordSetRequest o) {
  buildCounterRemoveDnsRecordSetRequest++;
  if (buildCounterRemoveDnsRecordSetRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.dnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterRemoveDnsRecordSetRequest--;
}

core.int buildCounterRemoveDnsRecordSetResponse = 0;
buildRemoveDnsRecordSetResponse() {
  var o = new api.RemoveDnsRecordSetResponse();
  buildCounterRemoveDnsRecordSetResponse++;
  if (buildCounterRemoveDnsRecordSetResponse < 3) {}
  buildCounterRemoveDnsRecordSetResponse--;
  return o;
}

checkRemoveDnsRecordSetResponse(api.RemoveDnsRecordSetResponse o) {
  buildCounterRemoveDnsRecordSetResponse++;
  if (buildCounterRemoveDnsRecordSetResponse < 3) {}
  buildCounterRemoveDnsRecordSetResponse--;
}

core.int buildCounterRemoveDnsZoneMetadata = 0;
buildRemoveDnsZoneMetadata() {
  var o = new api.RemoveDnsZoneMetadata();
  buildCounterRemoveDnsZoneMetadata++;
  if (buildCounterRemoveDnsZoneMetadata < 3) {}
  buildCounterRemoveDnsZoneMetadata--;
  return o;
}

checkRemoveDnsZoneMetadata(api.RemoveDnsZoneMetadata o) {
  buildCounterRemoveDnsZoneMetadata++;
  if (buildCounterRemoveDnsZoneMetadata < 3) {}
  buildCounterRemoveDnsZoneMetadata--;
}

core.int buildCounterRemoveDnsZoneRequest = 0;
buildRemoveDnsZoneRequest() {
  var o = new api.RemoveDnsZoneRequest();
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    o.consumerNetwork = "foo";
    o.name = "foo";
  }
  buildCounterRemoveDnsZoneRequest--;
  return o;
}

checkRemoveDnsZoneRequest(api.RemoveDnsZoneRequest o) {
  buildCounterRemoveDnsZoneRequest++;
  if (buildCounterRemoveDnsZoneRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterRemoveDnsZoneRequest--;
}

core.int buildCounterRemoveDnsZoneResponse = 0;
buildRemoveDnsZoneResponse() {
  var o = new api.RemoveDnsZoneResponse();
  buildCounterRemoveDnsZoneResponse++;
  if (buildCounterRemoveDnsZoneResponse < 3) {}
  buildCounterRemoveDnsZoneResponse--;
  return o;
}

checkRemoveDnsZoneResponse(api.RemoveDnsZoneResponse o) {
  buildCounterRemoveDnsZoneResponse++;
  if (buildCounterRemoveDnsZoneResponse < 3) {}
  buildCounterRemoveDnsZoneResponse--;
}

core.int buildCounterRoute = 0;
buildRoute() {
  var o = new api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.destRange = "foo";
    o.name = "foo";
    o.network = "foo";
    o.nextHopGateway = "foo";
  }
  buildCounterRoute--;
  return o;
}

checkRoute(api.Route o) {
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
buildSearchRangeRequest() {
  var o = new api.SearchRangeRequest();
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    o.ipPrefixLength = 42;
    o.network = "foo";
  }
  buildCounterSearchRangeRequest--;
  return o;
}

checkSearchRangeRequest(api.SearchRangeRequest o) {
  buildCounterSearchRangeRequest++;
  if (buildCounterSearchRangeRequest < 3) {
    unittest.expect(o.ipPrefixLength, unittest.equals(42));
    unittest.expect(o.network, unittest.equals('foo'));
  }
  buildCounterSearchRangeRequest--;
}

buildUnnamed464() {
  var o = new core.List<api.Api>();
  o.add(buildApi());
  o.add(buildApi());
  return o;
}

checkUnnamed464(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

buildUnnamed465() {
  var o = new core.List<api.Endpoint>();
  o.add(buildEndpoint());
  o.add(buildEndpoint());
  return o;
}

checkUnnamed465(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

buildUnnamed466() {
  var o = new core.List<api.Enum>();
  o.add(buildEnum());
  o.add(buildEnum());
  return o;
}

checkUnnamed466(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0]);
  checkEnum(o[1]);
}

buildUnnamed467() {
  var o = new core.List<api.LogDescriptor>();
  o.add(buildLogDescriptor());
  o.add(buildLogDescriptor());
  return o;
}

checkUnnamed467(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0]);
  checkLogDescriptor(o[1]);
}

buildUnnamed468() {
  var o = new core.List<api.MetricDescriptor>();
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

checkUnnamed468(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

buildUnnamed469() {
  var o = new core.List<api.MonitoredResourceDescriptor>();
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

checkUnnamed469(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

buildUnnamed470() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed470(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

buildUnnamed471() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed471(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed464();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed465();
    o.enums = buildUnnamed466();
    o.http = buildHttp();
    o.id = "foo";
    o.logging = buildLogging();
    o.logs = buildUnnamed467();
    o.metrics = buildUnnamed468();
    o.monitoredResources = buildUnnamed469();
    o.monitoring = buildMonitoring();
    o.name = "foo";
    o.producerProjectId = "foo";
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed470();
    o.title = "foo";
    o.types = buildUnnamed471();
    o.usage = buildUsage();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed464(o.apis);
    checkAuthentication(o.authentication);
    checkBackend(o.backend);
    checkBilling(o.billing);
    unittest.expect(o.configVersion, unittest.equals(42));
    checkContext(o.context);
    checkControl(o.control);
    checkCustomError(o.customError);
    checkDocumentation(o.documentation);
    checkUnnamed465(o.endpoints);
    checkUnnamed466(o.enums);
    checkHttp(o.http);
    unittest.expect(o.id, unittest.equals('foo'));
    checkLogging(o.logging);
    checkUnnamed467(o.logs);
    checkUnnamed468(o.metrics);
    checkUnnamed469(o.monitoredResources);
    checkMonitoring(o.monitoring);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.producerProjectId, unittest.equals('foo'));
    checkQuota(o.quota);
    checkSourceInfo(o.sourceInfo);
    checkSystemParameters(o.systemParameters);
    checkUnnamed470(o.systemTypes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed471(o.types);
    checkUsage(o.usage);
  }
  buildCounterService--;
}

core.int buildCounterServiceIdentity = 0;
buildServiceIdentity() {
  var o = new api.ServiceIdentity();
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    o.description = "foo";
    o.displayName = "foo";
    o.serviceAccountParent = "foo";
  }
  buildCounterServiceIdentity--;
  return o;
}

checkServiceIdentity(api.ServiceIdentity o) {
  buildCounterServiceIdentity++;
  if (buildCounterServiceIdentity < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.serviceAccountParent, unittest.equals('foo'));
  }
  buildCounterServiceIdentity--;
}

core.int buildCounterSourceContext = 0;
buildSourceContext() {
  var o = new api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.fileName = "foo";
  }
  buildCounterSourceContext--;
  return o;
}

checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    unittest.expect(o.fileName, unittest.equals('foo'));
  }
  buildCounterSourceContext--;
}

buildUnnamed472() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed472(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

buildUnnamed473() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed472());
  o.add(buildUnnamed472());
  return o;
}

checkUnnamed473(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed472(o[0]);
  checkUnnamed472(o[1]);
}

core.int buildCounterSourceInfo = 0;
buildSourceInfo() {
  var o = new api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed473();
  }
  buildCounterSourceInfo--;
  return o;
}

checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed473(o.sourceFiles);
  }
  buildCounterSourceInfo--;
}

buildUnnamed474() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed474(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed475() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed474());
  o.add(buildUnnamed474());
  return o;
}

checkUnnamed475(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed474(o[0]);
  checkUnnamed474(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed475();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed475(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterSubnetwork = 0;
buildSubnetwork() {
  var o = new api.Subnetwork();
  buildCounterSubnetwork++;
  if (buildCounterSubnetwork < 3) {
    o.ipCidrRange = "foo";
    o.name = "foo";
    o.network = "foo";
    o.outsideAllocation = true;
  }
  buildCounterSubnetwork--;
  return o;
}

checkSubnetwork(api.Subnetwork o) {
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
buildSystemParameter() {
  var o = new api.SystemParameter();
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    o.httpHeader = "foo";
    o.name = "foo";
    o.urlQueryParameter = "foo";
  }
  buildCounterSystemParameter--;
  return o;
}

checkSystemParameter(api.SystemParameter o) {
  buildCounterSystemParameter++;
  if (buildCounterSystemParameter < 3) {
    unittest.expect(o.httpHeader, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.urlQueryParameter, unittest.equals('foo'));
  }
  buildCounterSystemParameter--;
}

buildUnnamed476() {
  var o = new core.List<api.SystemParameter>();
  o.add(buildSystemParameter());
  o.add(buildSystemParameter());
  return o;
}

checkUnnamed476(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0]);
  checkSystemParameter(o[1]);
}

core.int buildCounterSystemParameterRule = 0;
buildSystemParameterRule() {
  var o = new api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed476();
    o.selector = "foo";
  }
  buildCounterSystemParameterRule--;
  return o;
}

checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed476(o.parameters);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterSystemParameterRule--;
}

buildUnnamed477() {
  var o = new core.List<api.SystemParameterRule>();
  o.add(buildSystemParameterRule());
  o.add(buildSystemParameterRule());
  return o;
}

checkUnnamed477(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0]);
  checkSystemParameterRule(o[1]);
}

core.int buildCounterSystemParameters = 0;
buildSystemParameters() {
  var o = new api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed477();
  }
  buildCounterSystemParameters--;
  return o;
}

checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed477(o.rules);
  }
  buildCounterSystemParameters--;
}

buildUnnamed478() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed478(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

buildUnnamed479() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed479(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed480() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed480(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed478();
    o.name = "foo";
    o.oneofs = buildUnnamed479();
    o.options = buildUnnamed480();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed478(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed479(o.oneofs);
    checkUnnamed480(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterUpdateDnsRecordSetMetadata = 0;
buildUpdateDnsRecordSetMetadata() {
  var o = new api.UpdateDnsRecordSetMetadata();
  buildCounterUpdateDnsRecordSetMetadata++;
  if (buildCounterUpdateDnsRecordSetMetadata < 3) {}
  buildCounterUpdateDnsRecordSetMetadata--;
  return o;
}

checkUpdateDnsRecordSetMetadata(api.UpdateDnsRecordSetMetadata o) {
  buildCounterUpdateDnsRecordSetMetadata++;
  if (buildCounterUpdateDnsRecordSetMetadata < 3) {}
  buildCounterUpdateDnsRecordSetMetadata--;
}

core.int buildCounterUpdateDnsRecordSetRequest = 0;
buildUpdateDnsRecordSetRequest() {
  var o = new api.UpdateDnsRecordSetRequest();
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    o.consumerNetwork = "foo";
    o.existingDnsRecordSet = buildDnsRecordSet();
    o.newDnsRecordSet = buildDnsRecordSet();
    o.zone = "foo";
  }
  buildCounterUpdateDnsRecordSetRequest--;
  return o;
}

checkUpdateDnsRecordSetRequest(api.UpdateDnsRecordSetRequest o) {
  buildCounterUpdateDnsRecordSetRequest++;
  if (buildCounterUpdateDnsRecordSetRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkDnsRecordSet(o.existingDnsRecordSet);
    checkDnsRecordSet(o.newDnsRecordSet);
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterUpdateDnsRecordSetRequest--;
}

buildUnnamed481() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed481(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed482() {
  var o = new core.List<api.UsageRule>();
  o.add(buildUsageRule());
  o.add(buildUsageRule());
  return o;
}

checkUnnamed482(core.List<api.UsageRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsageRule(o[0]);
  checkUsageRule(o[1]);
}

core.int buildCounterUsage = 0;
buildUsage() {
  var o = new api.Usage();
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    o.producerNotificationChannel = "foo";
    o.requirements = buildUnnamed481();
    o.rules = buildUnnamed482();
    o.serviceIdentity = buildServiceIdentity();
  }
  buildCounterUsage--;
  return o;
}

checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(o.producerNotificationChannel, unittest.equals('foo'));
    checkUnnamed481(o.requirements);
    checkUnnamed482(o.rules);
    checkServiceIdentity(o.serviceIdentity);
  }
  buildCounterUsage--;
}

core.int buildCounterUsageRule = 0;
buildUsageRule() {
  var o = new api.UsageRule();
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    o.allowUnregisteredCalls = true;
    o.selector = "foo";
    o.skipServiceControl = true;
  }
  buildCounterUsageRule--;
  return o;
}

checkUsageRule(api.UsageRule o) {
  buildCounterUsageRule++;
  if (buildCounterUsageRule < 3) {
    unittest.expect(o.allowUnregisteredCalls, unittest.isTrue);
    unittest.expect(o.selector, unittest.equals('foo'));
    unittest.expect(o.skipServiceControl, unittest.isTrue);
  }
  buildCounterUsageRule--;
}

core.int buildCounterValidateConsumerConfigRequest = 0;
buildValidateConsumerConfigRequest() {
  var o = new api.ValidateConsumerConfigRequest();
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    o.consumerNetwork = "foo";
    o.consumerProject = buildConsumerProject();
    o.rangeReservation = buildRangeReservation();
    o.validateNetwork = true;
  }
  buildCounterValidateConsumerConfigRequest--;
  return o;
}

checkValidateConsumerConfigRequest(api.ValidateConsumerConfigRequest o) {
  buildCounterValidateConsumerConfigRequest++;
  if (buildCounterValidateConsumerConfigRequest < 3) {
    unittest.expect(o.consumerNetwork, unittest.equals('foo'));
    checkConsumerProject(o.consumerProject);
    checkRangeReservation(o.rangeReservation);
    unittest.expect(o.validateNetwork, unittest.isTrue);
  }
  buildCounterValidateConsumerConfigRequest--;
}

core.int buildCounterValidateConsumerConfigResponse = 0;
buildValidateConsumerConfigResponse() {
  var o = new api.ValidateConsumerConfigResponse();
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    o.isValid = true;
    o.validationError = "foo";
  }
  buildCounterValidateConsumerConfigResponse--;
  return o;
}

checkValidateConsumerConfigResponse(api.ValidateConsumerConfigResponse o) {
  buildCounterValidateConsumerConfigResponse++;
  if (buildCounterValidateConsumerConfigResponse < 3) {
    unittest.expect(o.isValid, unittest.isTrue);
    unittest.expect(o.validationError, unittest.equals('foo'));
  }
  buildCounterValidateConsumerConfigResponse--;
}

main() {
  unittest.group("obj-schema-AddDnsRecordSetMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDnsRecordSetMetadata();
      var od = new api.AddDnsRecordSetMetadata.fromJson(o.toJson());
      checkAddDnsRecordSetMetadata(od);
    });
  });

  unittest.group("obj-schema-AddDnsRecordSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDnsRecordSetRequest();
      var od = new api.AddDnsRecordSetRequest.fromJson(o.toJson());
      checkAddDnsRecordSetRequest(od);
    });
  });

  unittest.group("obj-schema-AddDnsZoneMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDnsZoneMetadata();
      var od = new api.AddDnsZoneMetadata.fromJson(o.toJson());
      checkAddDnsZoneMetadata(od);
    });
  });

  unittest.group("obj-schema-AddDnsZoneRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDnsZoneRequest();
      var od = new api.AddDnsZoneRequest.fromJson(o.toJson());
      checkAddDnsZoneRequest(od);
    });
  });

  unittest.group("obj-schema-AddDnsZoneResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddDnsZoneResponse();
      var od = new api.AddDnsZoneResponse.fromJson(o.toJson());
      checkAddDnsZoneResponse(od);
    });
  });

  unittest.group("obj-schema-AddRolesMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddRolesMetadata();
      var od = new api.AddRolesMetadata.fromJson(o.toJson());
      checkAddRolesMetadata(od);
    });
  });

  unittest.group("obj-schema-AddRolesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddRolesRequest();
      var od = new api.AddRolesRequest.fromJson(o.toJson());
      checkAddRolesRequest(od);
    });
  });

  unittest.group("obj-schema-AddRolesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddRolesResponse();
      var od = new api.AddRolesResponse.fromJson(o.toJson());
      checkAddRolesResponse(od);
    });
  });

  unittest.group("obj-schema-AddSubnetworkRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddSubnetworkRequest();
      var od = new api.AddSubnetworkRequest.fromJson(o.toJson());
      checkAddSubnetworkRequest(od);
    });
  });

  unittest.group("obj-schema-Api", () {
    unittest.test("to-json--from-json", () {
      var o = buildApi();
      var od = new api.Api.fromJson(o.toJson());
      checkApi(od);
    });
  });

  unittest.group("obj-schema-AuthProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthProvider();
      var od = new api.AuthProvider.fromJson(o.toJson());
      checkAuthProvider(od);
    });
  });

  unittest.group("obj-schema-AuthRequirement", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthRequirement();
      var od = new api.AuthRequirement.fromJson(o.toJson());
      checkAuthRequirement(od);
    });
  });

  unittest.group("obj-schema-Authentication", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthentication();
      var od = new api.Authentication.fromJson(o.toJson());
      checkAuthentication(od);
    });
  });

  unittest.group("obj-schema-AuthenticationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuthenticationRule();
      var od = new api.AuthenticationRule.fromJson(o.toJson());
      checkAuthenticationRule(od);
    });
  });

  unittest.group("obj-schema-Backend", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackend();
      var od = new api.Backend.fromJson(o.toJson());
      checkBackend(od);
    });
  });

  unittest.group("obj-schema-BackendRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackendRule();
      var od = new api.BackendRule.fromJson(o.toJson());
      checkBackendRule(od);
    });
  });

  unittest.group("obj-schema-Billing", () {
    unittest.test("to-json--from-json", () {
      var o = buildBilling();
      var od = new api.Billing.fromJson(o.toJson());
      checkBilling(od);
    });
  });

  unittest.group("obj-schema-BillingDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingDestination();
      var od = new api.BillingDestination.fromJson(o.toJson());
      checkBillingDestination(od);
    });
  });

  unittest.group("obj-schema-CancelOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelOperationRequest();
      var od = new api.CancelOperationRequest.fromJson(o.toJson());
      checkCancelOperationRequest(od);
    });
  });

  unittest.group("obj-schema-Connection", () {
    unittest.test("to-json--from-json", () {
      var o = buildConnection();
      var od = new api.Connection.fromJson(o.toJson());
      checkConnection(od);
    });
  });

  unittest.group("obj-schema-ConsumerProject", () {
    unittest.test("to-json--from-json", () {
      var o = buildConsumerProject();
      var od = new api.ConsumerProject.fromJson(o.toJson());
      checkConsumerProject(od);
    });
  });

  unittest.group("obj-schema-Context", () {
    unittest.test("to-json--from-json", () {
      var o = buildContext();
      var od = new api.Context.fromJson(o.toJson());
      checkContext(od);
    });
  });

  unittest.group("obj-schema-ContextRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildContextRule();
      var od = new api.ContextRule.fromJson(o.toJson());
      checkContextRule(od);
    });
  });

  unittest.group("obj-schema-Control", () {
    unittest.test("to-json--from-json", () {
      var o = buildControl();
      var od = new api.Control.fromJson(o.toJson());
      checkControl(od);
    });
  });

  unittest.group("obj-schema-CustomError", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomError();
      var od = new api.CustomError.fromJson(o.toJson());
      checkCustomError(od);
    });
  });

  unittest.group("obj-schema-CustomErrorRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomErrorRule();
      var od = new api.CustomErrorRule.fromJson(o.toJson());
      checkCustomErrorRule(od);
    });
  });

  unittest.group("obj-schema-CustomHttpPattern", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomHttpPattern();
      var od = new api.CustomHttpPattern.fromJson(o.toJson());
      checkCustomHttpPattern(od);
    });
  });

  unittest.group("obj-schema-DeletePeeredDnsDomainMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeletePeeredDnsDomainMetadata();
      var od = new api.DeletePeeredDnsDomainMetadata.fromJson(o.toJson());
      checkDeletePeeredDnsDomainMetadata(od);
    });
  });

  unittest.group("obj-schema-DisableVpcServiceControlsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableVpcServiceControlsRequest();
      var od = new api.DisableVpcServiceControlsRequest.fromJson(o.toJson());
      checkDisableVpcServiceControlsRequest(od);
    });
  });

  unittest.group("obj-schema-DnsRecordSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsRecordSet();
      var od = new api.DnsRecordSet.fromJson(o.toJson());
      checkDnsRecordSet(od);
    });
  });

  unittest.group("obj-schema-DnsZone", () {
    unittest.test("to-json--from-json", () {
      var o = buildDnsZone();
      var od = new api.DnsZone.fromJson(o.toJson());
      checkDnsZone(od);
    });
  });

  unittest.group("obj-schema-Documentation", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentation();
      var od = new api.Documentation.fromJson(o.toJson());
      checkDocumentation(od);
    });
  });

  unittest.group("obj-schema-DocumentationRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentationRule();
      var od = new api.DocumentationRule.fromJson(o.toJson());
      checkDocumentationRule(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EnableVpcServiceControlsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableVpcServiceControlsRequest();
      var od = new api.EnableVpcServiceControlsRequest.fromJson(o.toJson());
      checkEnableVpcServiceControlsRequest(od);
    });
  });

  unittest.group("obj-schema-Endpoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndpoint();
      var od = new api.Endpoint.fromJson(o.toJson());
      checkEndpoint(od);
    });
  });

  unittest.group("obj-schema-Enum", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnum();
      var od = new api.Enum.fromJson(o.toJson());
      checkEnum(od);
    });
  });

  unittest.group("obj-schema-EnumValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnumValue();
      var od = new api.EnumValue.fromJson(o.toJson());
      checkEnumValue(od);
    });
  });

  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudServicenetworkingV1betaSubnetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudServicenetworkingV1betaSubnetwork();
      var od = new api.GoogleCloudServicenetworkingV1betaSubnetwork.fromJson(
          o.toJson());
      checkGoogleCloudServicenetworkingV1betaSubnetwork(od);
    });
  });

  unittest.group("obj-schema-Http", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttp();
      var od = new api.Http.fromJson(o.toJson());
      checkHttp(od);
    });
  });

  unittest.group("obj-schema-HttpRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHttpRule();
      var od = new api.HttpRule.fromJson(o.toJson());
      checkHttpRule(od);
    });
  });

  unittest.group("obj-schema-JwtLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildJwtLocation();
      var od = new api.JwtLocation.fromJson(o.toJson());
      checkJwtLocation(od);
    });
  });

  unittest.group("obj-schema-LabelDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabelDescriptor();
      var od = new api.LabelDescriptor.fromJson(o.toJson());
      checkLabelDescriptor(od);
    });
  });

  unittest.group("obj-schema-ListConnectionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListConnectionsResponse();
      var od = new api.ListConnectionsResponse.fromJson(o.toJson());
      checkListConnectionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPeeredDnsDomainsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPeeredDnsDomainsResponse();
      var od = new api.ListPeeredDnsDomainsResponse.fromJson(o.toJson());
      checkListPeeredDnsDomainsResponse(od);
    });
  });

  unittest.group("obj-schema-LogDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogDescriptor();
      var od = new api.LogDescriptor.fromJson(o.toJson());
      checkLogDescriptor(od);
    });
  });

  unittest.group("obj-schema-Logging", () {
    unittest.test("to-json--from-json", () {
      var o = buildLogging();
      var od = new api.Logging.fromJson(o.toJson());
      checkLogging(od);
    });
  });

  unittest.group("obj-schema-LoggingDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildLoggingDestination();
      var od = new api.LoggingDestination.fromJson(o.toJson());
      checkLoggingDestination(od);
    });
  });

  unittest.group("obj-schema-Method", () {
    unittest.test("to-json--from-json", () {
      var o = buildMethod();
      var od = new api.Method.fromJson(o.toJson());
      checkMethod(od);
    });
  });

  unittest.group("obj-schema-MetricDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptor();
      var od = new api.MetricDescriptor.fromJson(o.toJson());
      checkMetricDescriptor(od);
    });
  });

  unittest.group("obj-schema-MetricDescriptorMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricDescriptorMetadata();
      var od = new api.MetricDescriptorMetadata.fromJson(o.toJson());
      checkMetricDescriptorMetadata(od);
    });
  });

  unittest.group("obj-schema-MetricRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricRule();
      var od = new api.MetricRule.fromJson(o.toJson());
      checkMetricRule(od);
    });
  });

  unittest.group("obj-schema-Mixin", () {
    unittest.test("to-json--from-json", () {
      var o = buildMixin();
      var od = new api.Mixin.fromJson(o.toJson());
      checkMixin(od);
    });
  });

  unittest.group("obj-schema-MonitoredResourceDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoredResourceDescriptor();
      var od = new api.MonitoredResourceDescriptor.fromJson(o.toJson());
      checkMonitoredResourceDescriptor(od);
    });
  });

  unittest.group("obj-schema-Monitoring", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoring();
      var od = new api.Monitoring.fromJson(o.toJson());
      checkMonitoring(od);
    });
  });

  unittest.group("obj-schema-MonitoringDestination", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonitoringDestination();
      var od = new api.MonitoringDestination.fromJson(o.toJson());
      checkMonitoringDestination(od);
    });
  });

  unittest.group("obj-schema-OAuthRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildOAuthRequirements();
      var od = new api.OAuthRequirements.fromJson(o.toJson());
      checkOAuthRequirements(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-Option", () {
    unittest.test("to-json--from-json", () {
      var o = buildOption();
      var od = new api.Option.fromJson(o.toJson());
      checkOption(od);
    });
  });

  unittest.group("obj-schema-Page", () {
    unittest.test("to-json--from-json", () {
      var o = buildPage();
      var od = new api.Page.fromJson(o.toJson());
      checkPage(od);
    });
  });

  unittest.group("obj-schema-PeeredDnsDomain", () {
    unittest.test("to-json--from-json", () {
      var o = buildPeeredDnsDomain();
      var od = new api.PeeredDnsDomain.fromJson(o.toJson());
      checkPeeredDnsDomain(od);
    });
  });

  unittest.group("obj-schema-PeeredDnsDomainMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildPeeredDnsDomainMetadata();
      var od = new api.PeeredDnsDomainMetadata.fromJson(o.toJson());
      checkPeeredDnsDomainMetadata(od);
    });
  });

  unittest.group("obj-schema-PolicyBinding", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyBinding();
      var od = new api.PolicyBinding.fromJson(o.toJson());
      checkPolicyBinding(od);
    });
  });

  unittest.group("obj-schema-Quota", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuota();
      var od = new api.Quota.fromJson(o.toJson());
      checkQuota(od);
    });
  });

  unittest.group("obj-schema-QuotaLimit", () {
    unittest.test("to-json--from-json", () {
      var o = buildQuotaLimit();
      var od = new api.QuotaLimit.fromJson(o.toJson());
      checkQuotaLimit(od);
    });
  });

  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });

  unittest.group("obj-schema-RangeReservation", () {
    unittest.test("to-json--from-json", () {
      var o = buildRangeReservation();
      var od = new api.RangeReservation.fromJson(o.toJson());
      checkRangeReservation(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsRecordSetMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsRecordSetMetadata();
      var od = new api.RemoveDnsRecordSetMetadata.fromJson(o.toJson());
      checkRemoveDnsRecordSetMetadata(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsRecordSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsRecordSetRequest();
      var od = new api.RemoveDnsRecordSetRequest.fromJson(o.toJson());
      checkRemoveDnsRecordSetRequest(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsRecordSetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsRecordSetResponse();
      var od = new api.RemoveDnsRecordSetResponse.fromJson(o.toJson());
      checkRemoveDnsRecordSetResponse(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsZoneMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsZoneMetadata();
      var od = new api.RemoveDnsZoneMetadata.fromJson(o.toJson());
      checkRemoveDnsZoneMetadata(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsZoneRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsZoneRequest();
      var od = new api.RemoveDnsZoneRequest.fromJson(o.toJson());
      checkRemoveDnsZoneRequest(od);
    });
  });

  unittest.group("obj-schema-RemoveDnsZoneResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveDnsZoneResponse();
      var od = new api.RemoveDnsZoneResponse.fromJson(o.toJson());
      checkRemoveDnsZoneResponse(od);
    });
  });

  unittest.group("obj-schema-Route", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoute();
      var od = new api.Route.fromJson(o.toJson());
      checkRoute(od);
    });
  });

  unittest.group("obj-schema-SearchRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchRangeRequest();
      var od = new api.SearchRangeRequest.fromJson(o.toJson());
      checkSearchRangeRequest(od);
    });
  });

  unittest.group("obj-schema-Service", () {
    unittest.test("to-json--from-json", () {
      var o = buildService();
      var od = new api.Service.fromJson(o.toJson());
      checkService(od);
    });
  });

  unittest.group("obj-schema-ServiceIdentity", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceIdentity();
      var od = new api.ServiceIdentity.fromJson(o.toJson());
      checkServiceIdentity(od);
    });
  });

  unittest.group("obj-schema-SourceContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceContext();
      var od = new api.SourceContext.fromJson(o.toJson());
      checkSourceContext(od);
    });
  });

  unittest.group("obj-schema-SourceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceInfo();
      var od = new api.SourceInfo.fromJson(o.toJson());
      checkSourceInfo(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Subnetwork", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubnetwork();
      var od = new api.Subnetwork.fromJson(o.toJson());
      checkSubnetwork(od);
    });
  });

  unittest.group("obj-schema-SystemParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameter();
      var od = new api.SystemParameter.fromJson(o.toJson());
      checkSystemParameter(od);
    });
  });

  unittest.group("obj-schema-SystemParameterRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameterRule();
      var od = new api.SystemParameterRule.fromJson(o.toJson());
      checkSystemParameterRule(od);
    });
  });

  unittest.group("obj-schema-SystemParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemParameters();
      var od = new api.SystemParameters.fromJson(o.toJson());
      checkSystemParameters(od);
    });
  });

  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group("obj-schema-UpdateDnsRecordSetMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDnsRecordSetMetadata();
      var od = new api.UpdateDnsRecordSetMetadata.fromJson(o.toJson());
      checkUpdateDnsRecordSetMetadata(od);
    });
  });

  unittest.group("obj-schema-UpdateDnsRecordSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDnsRecordSetRequest();
      var od = new api.UpdateDnsRecordSetRequest.fromJson(o.toJson());
      checkUpdateDnsRecordSetRequest(od);
    });
  });

  unittest.group("obj-schema-Usage", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsage();
      var od = new api.Usage.fromJson(o.toJson());
      checkUsage(od);
    });
  });

  unittest.group("obj-schema-UsageRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildUsageRule();
      var od = new api.UsageRule.fromJson(o.toJson());
      checkUsageRule(od);
    });
  });

  unittest.group("obj-schema-ValidateConsumerConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildValidateConsumerConfigRequest();
      var od = new api.ValidateConsumerConfigRequest.fromJson(o.toJson());
      checkValidateConsumerConfigRequest(od);
    });
  });

  unittest.group("obj-schema-ValidateConsumerConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildValidateConsumerConfigResponse();
      var od = new api.ValidateConsumerConfigResponse.fromJson(o.toJson());
      checkValidateConsumerConfigResponse(od);
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.ServicenetworkingApi(mock).operations;
      var arg_request = buildCancelOperationRequest();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CancelOperationRequest.fromJson(json);
        checkCancelOperationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.ServicenetworkingApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.ServicenetworkingApi(mock).operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.ServicenetworkingApi(mock).operations;
      var arg_name = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesResourceApi", () {
    unittest.test("method--addSubnetwork", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicenetworkingApi(mock).services;
      var arg_request = buildAddSubnetworkRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddSubnetworkRequest.fromJson(json);
        checkAddSubnetworkRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addSubnetwork(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--disableVpcServiceControls", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicenetworkingApi(mock).services;
      var arg_request = buildDisableVpcServiceControlsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisableVpcServiceControlsRequest.fromJson(json);
        checkDisableVpcServiceControlsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .disableVpcServiceControls(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--enableVpcServiceControls", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicenetworkingApi(mock).services;
      var arg_request = buildEnableVpcServiceControlsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnableVpcServiceControlsRequest.fromJson(json);
        checkEnableVpcServiceControlsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .enableVpcServiceControls(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--searchRange", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicenetworkingApi(mock).services;
      var arg_request = buildSearchRangeRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SearchRangeRequest.fromJson(json);
        checkSearchRangeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchRange(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--validate", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicenetworkingApi(mock).services;
      var arg_request = buildValidateConsumerConfigRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ValidateConsumerConfigRequest.fromJson(json);
        checkValidateConsumerConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildValidateConsumerConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValidateConsumerConfigResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesConnectionsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ServicesConnectionsResourceApi res =
          new api.ServicenetworkingApi(mock).services.connections;
      var arg_request = buildConnection();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Connection.fromJson(json);
        checkConnection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesConnectionsResourceApi res =
          new api.ServicenetworkingApi(mock).services.connections;
      var arg_parent = "foo";
      var arg_network = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["network"].first, unittest.equals(arg_network));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListConnectionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, network: arg_network, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListConnectionsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ServicesConnectionsResourceApi res =
          new api.ServicenetworkingApi(mock).services.connections;
      var arg_request = buildConnection();
      var arg_name = "foo";
      var arg_force = true;
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Connection.fromJson(json);
        checkConnection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              force: arg_force,
              updateMask: arg_updateMask,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ServicesDnsRecordSetsResourceApi", () {
    unittest.test("method--add", () {
      var mock = new HttpServerMock();
      api.ServicesDnsRecordSetsResourceApi res =
          new api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildAddDnsRecordSetRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddDnsRecordSetRequest.fromJson(json);
        checkAddDnsRecordSetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--remove", () {
      var mock = new HttpServerMock();
      api.ServicesDnsRecordSetsResourceApi res =
          new api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildRemoveDnsRecordSetRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveDnsRecordSetRequest.fromJson(json);
        checkRemoveDnsRecordSetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .remove(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ServicesDnsRecordSetsResourceApi res =
          new api.ServicenetworkingApi(mock).services.dnsRecordSets;
      var arg_request = buildUpdateDnsRecordSetRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.UpdateDnsRecordSetRequest.fromJson(json);
        checkUpdateDnsRecordSetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ServicesDnsZonesResourceApi", () {
    unittest.test("method--add", () {
      var mock = new HttpServerMock();
      api.ServicesDnsZonesResourceApi res =
          new api.ServicenetworkingApi(mock).services.dnsZones;
      var arg_request = buildAddDnsZoneRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddDnsZoneRequest.fromJson(json);
        checkAddDnsZoneRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--remove", () {
      var mock = new HttpServerMock();
      api.ServicesDnsZonesResourceApi res =
          new api.ServicenetworkingApi(mock).services.dnsZones;
      var arg_request = buildRemoveDnsZoneRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveDnsZoneRequest.fromJson(json);
        checkRemoveDnsZoneRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .remove(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group(
      "resource-ServicesProjectsGlobalNetworksPeeredDnsDomainsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ServicesProjectsGlobalNetworksPeeredDnsDomainsResourceApi res =
          new api.ServicenetworkingApi(mock)
              .services
              .projects
              .global
              .networks
              .peeredDnsDomains;
      var arg_request = buildPeeredDnsDomain();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PeeredDnsDomain.fromJson(json);
        checkPeeredDnsDomain(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ServicesProjectsGlobalNetworksPeeredDnsDomainsResourceApi res =
          new api.ServicenetworkingApi(mock)
              .services
              .projects
              .global
              .networks
              .peeredDnsDomains;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesProjectsGlobalNetworksPeeredDnsDomainsResourceApi res =
          new api.ServicenetworkingApi(mock)
              .services
              .projects
              .global
              .networks
              .peeredDnsDomains;
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPeeredDnsDomainsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPeeredDnsDomainsResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesRolesResourceApi", () {
    unittest.test("method--add", () {
      var mock = new HttpServerMock();
      api.ServicesRolesResourceApi res =
          new api.ServicenetworkingApi(mock).services.roles;
      var arg_request = buildAddRolesRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddRolesRequest.fromJson(json);
        checkAddRolesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .add(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });
}
