library googleapis.servicemanagement.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/servicemanagement/v1.dart' as api;

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

core.int buildCounterAdvice = 0;
buildAdvice() {
  var o = new api.Advice();
  buildCounterAdvice++;
  if (buildCounterAdvice < 3) {
    o.description = "foo";
  }
  buildCounterAdvice--;
  return o;
}

checkAdvice(api.Advice o) {
  buildCounterAdvice++;
  if (buildCounterAdvice < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
  }
  buildCounterAdvice--;
}

buildUnnamed2674() {
  var o = new core.List<api.Method>();
  o.add(buildMethod());
  o.add(buildMethod());
  return o;
}

checkUnnamed2674(core.List<api.Method> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMethod(o[0]);
  checkMethod(o[1]);
}

buildUnnamed2675() {
  var o = new core.List<api.Mixin>();
  o.add(buildMixin());
  o.add(buildMixin());
  return o;
}

checkUnnamed2675(core.List<api.Mixin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMixin(o[0]);
  checkMixin(o[1]);
}

buildUnnamed2676() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2676(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterApi = 0;
buildApi() {
  var o = new api.Api();
  buildCounterApi++;
  if (buildCounterApi < 3) {
    o.methods = buildUnnamed2674();
    o.mixins = buildUnnamed2675();
    o.name = "foo";
    o.options = buildUnnamed2676();
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
    checkUnnamed2674(o.methods);
    checkUnnamed2675(o.mixins);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2676(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterApi--;
}

buildUnnamed2677() {
  var o = new core.List<api.AuditLogConfig>();
  o.add(buildAuditLogConfig());
  o.add(buildAuditLogConfig());
  return o;
}

checkUnnamed2677(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
buildAuditConfig() {
  var o = new api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed2677();
    o.service = "foo";
  }
  buildCounterAuditConfig--;
  return o;
}

checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed2677(o.auditLogConfigs);
    unittest.expect(o.service, unittest.equals('foo'));
  }
  buildCounterAuditConfig--;
}

buildUnnamed2678() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2678(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAuditLogConfig = 0;
buildAuditLogConfig() {
  var o = new api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2678();
    o.logType = "foo";
  }
  buildCounterAuditLogConfig--;
  return o;
}

checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2678(o.exemptedMembers);
    unittest.expect(o.logType, unittest.equals('foo'));
  }
  buildCounterAuditLogConfig--;
}

buildUnnamed2679() {
  var o = new core.List<api.JwtLocation>();
  o.add(buildJwtLocation());
  o.add(buildJwtLocation());
  return o;
}

checkUnnamed2679(core.List<api.JwtLocation> o) {
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
    o.jwtLocations = buildUnnamed2679();
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
    checkUnnamed2679(o.jwtLocations);
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

buildUnnamed2680() {
  var o = new core.List<api.AuthProvider>();
  o.add(buildAuthProvider());
  o.add(buildAuthProvider());
  return o;
}

checkUnnamed2680(core.List<api.AuthProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthProvider(o[0]);
  checkAuthProvider(o[1]);
}

buildUnnamed2681() {
  var o = new core.List<api.AuthenticationRule>();
  o.add(buildAuthenticationRule());
  o.add(buildAuthenticationRule());
  return o;
}

checkUnnamed2681(core.List<api.AuthenticationRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationRule(o[0]);
  checkAuthenticationRule(o[1]);
}

core.int buildCounterAuthentication = 0;
buildAuthentication() {
  var o = new api.Authentication();
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    o.providers = buildUnnamed2680();
    o.rules = buildUnnamed2681();
  }
  buildCounterAuthentication--;
  return o;
}

checkAuthentication(api.Authentication o) {
  buildCounterAuthentication++;
  if (buildCounterAuthentication < 3) {
    checkUnnamed2680(o.providers);
    checkUnnamed2681(o.rules);
  }
  buildCounterAuthentication--;
}

buildUnnamed2682() {
  var o = new core.List<api.AuthRequirement>();
  o.add(buildAuthRequirement());
  o.add(buildAuthRequirement());
  return o;
}

checkUnnamed2682(core.List<api.AuthRequirement> o) {
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
    o.requirements = buildUnnamed2682();
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
    checkUnnamed2682(o.requirements);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterAuthenticationRule--;
}

buildUnnamed2683() {
  var o = new core.List<api.BackendRule>();
  o.add(buildBackendRule());
  o.add(buildBackendRule());
  return o;
}

checkUnnamed2683(core.List<api.BackendRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBackendRule(o[0]);
  checkBackendRule(o[1]);
}

core.int buildCounterBackend = 0;
buildBackend() {
  var o = new api.Backend();
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    o.rules = buildUnnamed2683();
  }
  buildCounterBackend--;
  return o;
}

checkBackend(api.Backend o) {
  buildCounterBackend++;
  if (buildCounterBackend < 3) {
    checkUnnamed2683(o.rules);
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
    o.renameTo = "foo";
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
    unittest.expect(o.renameTo, unittest.equals('foo'));
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterBackendRule--;
}

buildUnnamed2684() {
  var o = new core.List<api.BillingDestination>();
  o.add(buildBillingDestination());
  o.add(buildBillingDestination());
  return o;
}

checkUnnamed2684(core.List<api.BillingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingDestination(o[0]);
  checkBillingDestination(o[1]);
}

core.int buildCounterBilling = 0;
buildBilling() {
  var o = new api.Billing();
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    o.consumerDestinations = buildUnnamed2684();
  }
  buildCounterBilling--;
  return o;
}

checkBilling(api.Billing o) {
  buildCounterBilling++;
  if (buildCounterBilling < 3) {
    checkUnnamed2684(o.consumerDestinations);
  }
  buildCounterBilling--;
}

buildUnnamed2685() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2685(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBillingDestination = 0;
buildBillingDestination() {
  var o = new api.BillingDestination();
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    o.metrics = buildUnnamed2685();
    o.monitoredResource = "foo";
  }
  buildCounterBillingDestination--;
  return o;
}

checkBillingDestination(api.BillingDestination o) {
  buildCounterBillingDestination++;
  if (buildCounterBillingDestination < 3) {
    checkUnnamed2685(o.metrics);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterBillingDestination--;
}

buildUnnamed2686() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2686(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
buildBinding() {
  var o = new api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed2686();
    o.role = "foo";
  }
  buildCounterBinding--;
  return o;
}

checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition);
    checkUnnamed2686(o.members);
    unittest.expect(o.role, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

buildUnnamed2687() {
  var o = new core.List<api.ConfigChange>();
  o.add(buildConfigChange());
  o.add(buildConfigChange());
  return o;
}

checkUnnamed2687(core.List<api.ConfigChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigChange(o[0]);
  checkConfigChange(o[1]);
}

core.int buildCounterChangeReport = 0;
buildChangeReport() {
  var o = new api.ChangeReport();
  buildCounterChangeReport++;
  if (buildCounterChangeReport < 3) {
    o.configChanges = buildUnnamed2687();
  }
  buildCounterChangeReport--;
  return o;
}

checkChangeReport(api.ChangeReport o) {
  buildCounterChangeReport++;
  if (buildCounterChangeReport < 3) {
    checkUnnamed2687(o.configChanges);
  }
  buildCounterChangeReport--;
}

buildUnnamed2688() {
  var o = new core.List<api.Advice>();
  o.add(buildAdvice());
  o.add(buildAdvice());
  return o;
}

checkUnnamed2688(core.List<api.Advice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvice(o[0]);
  checkAdvice(o[1]);
}

core.int buildCounterConfigChange = 0;
buildConfigChange() {
  var o = new api.ConfigChange();
  buildCounterConfigChange++;
  if (buildCounterConfigChange < 3) {
    o.advices = buildUnnamed2688();
    o.changeType = "foo";
    o.element = "foo";
    o.newValue = "foo";
    o.oldValue = "foo";
  }
  buildCounterConfigChange--;
  return o;
}

checkConfigChange(api.ConfigChange o) {
  buildCounterConfigChange++;
  if (buildCounterConfigChange < 3) {
    checkUnnamed2688(o.advices);
    unittest.expect(o.changeType, unittest.equals('foo'));
    unittest.expect(o.element, unittest.equals('foo'));
    unittest.expect(o.newValue, unittest.equals('foo'));
    unittest.expect(o.oldValue, unittest.equals('foo'));
  }
  buildCounterConfigChange--;
}

core.int buildCounterConfigFile = 0;
buildConfigFile() {
  var o = new api.ConfigFile();
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    o.fileContents = "foo";
    o.filePath = "foo";
    o.fileType = "foo";
  }
  buildCounterConfigFile--;
  return o;
}

checkConfigFile(api.ConfigFile o) {
  buildCounterConfigFile++;
  if (buildCounterConfigFile < 3) {
    unittest.expect(o.fileContents, unittest.equals('foo'));
    unittest.expect(o.filePath, unittest.equals('foo'));
    unittest.expect(o.fileType, unittest.equals('foo'));
  }
  buildCounterConfigFile--;
}

core.int buildCounterConfigRef = 0;
buildConfigRef() {
  var o = new api.ConfigRef();
  buildCounterConfigRef++;
  if (buildCounterConfigRef < 3) {
    o.name = "foo";
  }
  buildCounterConfigRef--;
  return o;
}

checkConfigRef(api.ConfigRef o) {
  buildCounterConfigRef++;
  if (buildCounterConfigRef < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterConfigRef--;
}

buildUnnamed2689() {
  var o = new core.List<api.ConfigFile>();
  o.add(buildConfigFile());
  o.add(buildConfigFile());
  return o;
}

checkUnnamed2689(core.List<api.ConfigFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfigFile(o[0]);
  checkConfigFile(o[1]);
}

core.int buildCounterConfigSource = 0;
buildConfigSource() {
  var o = new api.ConfigSource();
  buildCounterConfigSource++;
  if (buildCounterConfigSource < 3) {
    o.files = buildUnnamed2689();
    o.id = "foo";
  }
  buildCounterConfigSource--;
  return o;
}

checkConfigSource(api.ConfigSource o) {
  buildCounterConfigSource++;
  if (buildCounterConfigSource < 3) {
    checkUnnamed2689(o.files);
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterConfigSource--;
}

buildUnnamed2690() {
  var o = new core.List<api.ContextRule>();
  o.add(buildContextRule());
  o.add(buildContextRule());
  return o;
}

checkUnnamed2690(core.List<api.ContextRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContextRule(o[0]);
  checkContextRule(o[1]);
}

core.int buildCounterContext = 0;
buildContext() {
  var o = new api.Context();
  buildCounterContext++;
  if (buildCounterContext < 3) {
    o.rules = buildUnnamed2690();
  }
  buildCounterContext--;
  return o;
}

checkContext(api.Context o) {
  buildCounterContext++;
  if (buildCounterContext < 3) {
    checkUnnamed2690(o.rules);
  }
  buildCounterContext--;
}

buildUnnamed2691() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2691(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2692() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2692(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2693() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2693(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2694() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2694(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContextRule = 0;
buildContextRule() {
  var o = new api.ContextRule();
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    o.allowedRequestExtensions = buildUnnamed2691();
    o.allowedResponseExtensions = buildUnnamed2692();
    o.provided = buildUnnamed2693();
    o.requested = buildUnnamed2694();
    o.selector = "foo";
  }
  buildCounterContextRule--;
  return o;
}

checkContextRule(api.ContextRule o) {
  buildCounterContextRule++;
  if (buildCounterContextRule < 3) {
    checkUnnamed2691(o.allowedRequestExtensions);
    checkUnnamed2692(o.allowedResponseExtensions);
    checkUnnamed2693(o.provided);
    checkUnnamed2694(o.requested);
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

buildUnnamed2695() {
  var o = new core.List<api.CustomErrorRule>();
  o.add(buildCustomErrorRule());
  o.add(buildCustomErrorRule());
  return o;
}

checkUnnamed2695(core.List<api.CustomErrorRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomErrorRule(o[0]);
  checkCustomErrorRule(o[1]);
}

buildUnnamed2696() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2696(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomError = 0;
buildCustomError() {
  var o = new api.CustomError();
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    o.rules = buildUnnamed2695();
    o.types = buildUnnamed2696();
  }
  buildCounterCustomError--;
  return o;
}

checkCustomError(api.CustomError o) {
  buildCounterCustomError++;
  if (buildCounterCustomError < 3) {
    checkUnnamed2695(o.rules);
    checkUnnamed2696(o.types);
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

core.int buildCounterDeleteServiceStrategy = 0;
buildDeleteServiceStrategy() {
  var o = new api.DeleteServiceStrategy();
  buildCounterDeleteServiceStrategy++;
  if (buildCounterDeleteServiceStrategy < 3) {}
  buildCounterDeleteServiceStrategy--;
  return o;
}

checkDeleteServiceStrategy(api.DeleteServiceStrategy o) {
  buildCounterDeleteServiceStrategy++;
  if (buildCounterDeleteServiceStrategy < 3) {}
  buildCounterDeleteServiceStrategy--;
}

core.int buildCounterDiagnostic = 0;
buildDiagnostic() {
  var o = new api.Diagnostic();
  buildCounterDiagnostic++;
  if (buildCounterDiagnostic < 3) {
    o.kind = "foo";
    o.location = "foo";
    o.message = "foo";
  }
  buildCounterDiagnostic--;
  return o;
}

checkDiagnostic(api.Diagnostic o) {
  buildCounterDiagnostic++;
  if (buildCounterDiagnostic < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterDiagnostic--;
}

core.int buildCounterDisableServiceRequest = 0;
buildDisableServiceRequest() {
  var o = new api.DisableServiceRequest();
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
    o.consumerId = "foo";
  }
  buildCounterDisableServiceRequest--;
  return o;
}

checkDisableServiceRequest(api.DisableServiceRequest o) {
  buildCounterDisableServiceRequest++;
  if (buildCounterDisableServiceRequest < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
  }
  buildCounterDisableServiceRequest--;
}

core.int buildCounterDisableServiceResponse = 0;
buildDisableServiceResponse() {
  var o = new api.DisableServiceResponse();
  buildCounterDisableServiceResponse++;
  if (buildCounterDisableServiceResponse < 3) {}
  buildCounterDisableServiceResponse--;
  return o;
}

checkDisableServiceResponse(api.DisableServiceResponse o) {
  buildCounterDisableServiceResponse++;
  if (buildCounterDisableServiceResponse < 3) {}
  buildCounterDisableServiceResponse--;
}

buildUnnamed2697() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed2697(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

buildUnnamed2698() {
  var o = new core.List<api.DocumentationRule>();
  o.add(buildDocumentationRule());
  o.add(buildDocumentationRule());
  return o;
}

checkUnnamed2698(core.List<api.DocumentationRule> o) {
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
    o.pages = buildUnnamed2697();
    o.rules = buildUnnamed2698();
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
    checkUnnamed2697(o.pages);
    checkUnnamed2698(o.rules);
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

core.int buildCounterEnableServiceRequest = 0;
buildEnableServiceRequest() {
  var o = new api.EnableServiceRequest();
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {
    o.consumerId = "foo";
  }
  buildCounterEnableServiceRequest--;
  return o;
}

checkEnableServiceRequest(api.EnableServiceRequest o) {
  buildCounterEnableServiceRequest++;
  if (buildCounterEnableServiceRequest < 3) {
    unittest.expect(o.consumerId, unittest.equals('foo'));
  }
  buildCounterEnableServiceRequest--;
}

core.int buildCounterEnableServiceResponse = 0;
buildEnableServiceResponse() {
  var o = new api.EnableServiceResponse();
  buildCounterEnableServiceResponse++;
  if (buildCounterEnableServiceResponse < 3) {}
  buildCounterEnableServiceResponse--;
  return o;
}

checkEnableServiceResponse(api.EnableServiceResponse o) {
  buildCounterEnableServiceResponse++;
  if (buildCounterEnableServiceResponse < 3) {}
  buildCounterEnableServiceResponse--;
}

buildUnnamed2699() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2699(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2700() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEndpoint = 0;
buildEndpoint() {
  var o = new api.Endpoint();
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    o.aliases = buildUnnamed2699();
    o.allowCors = true;
    o.features = buildUnnamed2700();
    o.name = "foo";
    o.target = "foo";
  }
  buildCounterEndpoint--;
  return o;
}

checkEndpoint(api.Endpoint o) {
  buildCounterEndpoint++;
  if (buildCounterEndpoint < 3) {
    checkUnnamed2699(o.aliases);
    unittest.expect(o.allowCors, unittest.isTrue);
    checkUnnamed2700(o.features);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.target, unittest.equals('foo'));
  }
  buildCounterEndpoint--;
}

buildUnnamed2701() {
  var o = new core.List<api.EnumValue>();
  o.add(buildEnumValue());
  o.add(buildEnumValue());
  return o;
}

checkUnnamed2701(core.List<api.EnumValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnumValue(o[0]);
  checkEnumValue(o[1]);
}

buildUnnamed2702() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2702(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterEnum = 0;
buildEnum() {
  var o = new api.Enum();
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    o.enumvalue = buildUnnamed2701();
    o.name = "foo";
    o.options = buildUnnamed2702();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterEnum--;
  return o;
}

checkEnum(api.Enum o) {
  buildCounterEnum++;
  if (buildCounterEnum < 3) {
    checkUnnamed2701(o.enumvalue);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2702(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterEnum--;
}

buildUnnamed2703() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2703(core.List<api.Option> o) {
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
    o.options = buildUnnamed2703();
  }
  buildCounterEnumValue--;
  return o;
}

checkEnumValue(api.EnumValue o) {
  buildCounterEnumValue++;
  if (buildCounterEnumValue < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals(42));
    checkUnnamed2703(o.options);
  }
  buildCounterEnumValue--;
}

core.int buildCounterExpr = 0;
buildExpr() {
  var o = new api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = "foo";
    o.expression = "foo";
    o.location = "foo";
    o.title = "foo";
  }
  buildCounterExpr--;
  return o;
}

checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.expression, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

buildUnnamed2704() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2704(core.List<api.Option> o) {
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
    o.options = buildUnnamed2704();
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
    checkUnnamed2704(o.options);
    unittest.expect(o.packed, unittest.isTrue);
    unittest.expect(o.typeUrl, unittest.equals('foo'));
  }
  buildCounterField--;
}

core.int buildCounterFlowErrorDetails = 0;
buildFlowErrorDetails() {
  var o = new api.FlowErrorDetails();
  buildCounterFlowErrorDetails++;
  if (buildCounterFlowErrorDetails < 3) {
    o.exceptionType = "foo";
    o.flowStepId = "foo";
  }
  buildCounterFlowErrorDetails--;
  return o;
}

checkFlowErrorDetails(api.FlowErrorDetails o) {
  buildCounterFlowErrorDetails++;
  if (buildCounterFlowErrorDetails < 3) {
    unittest.expect(o.exceptionType, unittest.equals('foo'));
    unittest.expect(o.flowStepId, unittest.equals('foo'));
  }
  buildCounterFlowErrorDetails--;
}

buildUnnamed2705() {
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

checkUnnamed2705(core.Map<core.String, core.Object> o) {
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

buildUnnamed2706() {
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

checkUnnamed2706(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGenerateConfigReportRequest = 0;
buildGenerateConfigReportRequest() {
  var o = new api.GenerateConfigReportRequest();
  buildCounterGenerateConfigReportRequest++;
  if (buildCounterGenerateConfigReportRequest < 3) {
    o.newConfig = buildUnnamed2705();
    o.oldConfig = buildUnnamed2706();
  }
  buildCounterGenerateConfigReportRequest--;
  return o;
}

checkGenerateConfigReportRequest(api.GenerateConfigReportRequest o) {
  buildCounterGenerateConfigReportRequest++;
  if (buildCounterGenerateConfigReportRequest < 3) {
    checkUnnamed2705(o.newConfig);
    checkUnnamed2706(o.oldConfig);
  }
  buildCounterGenerateConfigReportRequest--;
}

buildUnnamed2707() {
  var o = new core.List<api.ChangeReport>();
  o.add(buildChangeReport());
  o.add(buildChangeReport());
  return o;
}

checkUnnamed2707(core.List<api.ChangeReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangeReport(o[0]);
  checkChangeReport(o[1]);
}

buildUnnamed2708() {
  var o = new core.List<api.Diagnostic>();
  o.add(buildDiagnostic());
  o.add(buildDiagnostic());
  return o;
}

checkUnnamed2708(core.List<api.Diagnostic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiagnostic(o[0]);
  checkDiagnostic(o[1]);
}

core.int buildCounterGenerateConfigReportResponse = 0;
buildGenerateConfigReportResponse() {
  var o = new api.GenerateConfigReportResponse();
  buildCounterGenerateConfigReportResponse++;
  if (buildCounterGenerateConfigReportResponse < 3) {
    o.changeReports = buildUnnamed2707();
    o.diagnostics = buildUnnamed2708();
    o.id = "foo";
    o.serviceName = "foo";
  }
  buildCounterGenerateConfigReportResponse--;
  return o;
}

checkGenerateConfigReportResponse(api.GenerateConfigReportResponse o) {
  buildCounterGenerateConfigReportResponse++;
  if (buildCounterGenerateConfigReportResponse < 3) {
    checkUnnamed2707(o.changeReports);
    checkUnnamed2708(o.diagnostics);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterGenerateConfigReportResponse--;
}

core.int buildCounterGetIamPolicyRequest = 0;
buildGetIamPolicyRequest() {
  var o = new api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
buildGetPolicyOptions() {
  var o = new api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

buildUnnamed2709() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed2709(core.List<api.HttpRule> o) {
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
    o.rules = buildUnnamed2709();
  }
  buildCounterHttp--;
  return o;
}

checkHttp(api.Http o) {
  buildCounterHttp++;
  if (buildCounterHttp < 3) {
    unittest.expect(o.fullyDecodeReservedExpansion, unittest.isTrue);
    checkUnnamed2709(o.rules);
  }
  buildCounterHttp--;
}

buildUnnamed2710() {
  var o = new core.List<api.HttpRule>();
  o.add(buildHttpRule());
  o.add(buildHttpRule());
  return o;
}

checkUnnamed2710(core.List<api.HttpRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHttpRule(o[0]);
  checkHttpRule(o[1]);
}

core.int buildCounterHttpRule = 0;
buildHttpRule() {
  var o = new api.HttpRule();
  buildCounterHttpRule++;
  if (buildCounterHttpRule < 3) {
    o.additionalBindings = buildUnnamed2710();
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
    checkUnnamed2710(o.additionalBindings);
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

buildUnnamed2711() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2711(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2711();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2711(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed2712() {
  var o = new core.List<api.Service>();
  o.add(buildService());
  o.add(buildService());
  return o;
}

checkUnnamed2712(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.int buildCounterListServiceConfigsResponse = 0;
buildListServiceConfigsResponse() {
  var o = new api.ListServiceConfigsResponse();
  buildCounterListServiceConfigsResponse++;
  if (buildCounterListServiceConfigsResponse < 3) {
    o.nextPageToken = "foo";
    o.serviceConfigs = buildUnnamed2712();
  }
  buildCounterListServiceConfigsResponse--;
  return o;
}

checkListServiceConfigsResponse(api.ListServiceConfigsResponse o) {
  buildCounterListServiceConfigsResponse++;
  if (buildCounterListServiceConfigsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2712(o.serviceConfigs);
  }
  buildCounterListServiceConfigsResponse--;
}

buildUnnamed2713() {
  var o = new core.List<api.Rollout>();
  o.add(buildRollout());
  o.add(buildRollout());
  return o;
}

checkUnnamed2713(core.List<api.Rollout> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRollout(o[0]);
  checkRollout(o[1]);
}

core.int buildCounterListServiceRolloutsResponse = 0;
buildListServiceRolloutsResponse() {
  var o = new api.ListServiceRolloutsResponse();
  buildCounterListServiceRolloutsResponse++;
  if (buildCounterListServiceRolloutsResponse < 3) {
    o.nextPageToken = "foo";
    o.rollouts = buildUnnamed2713();
  }
  buildCounterListServiceRolloutsResponse--;
  return o;
}

checkListServiceRolloutsResponse(api.ListServiceRolloutsResponse o) {
  buildCounterListServiceRolloutsResponse++;
  if (buildCounterListServiceRolloutsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2713(o.rollouts);
  }
  buildCounterListServiceRolloutsResponse--;
}

buildUnnamed2714() {
  var o = new core.List<api.ManagedService>();
  o.add(buildManagedService());
  o.add(buildManagedService());
  return o;
}

checkUnnamed2714(core.List<api.ManagedService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedService(o[0]);
  checkManagedService(o[1]);
}

core.int buildCounterListServicesResponse = 0;
buildListServicesResponse() {
  var o = new api.ListServicesResponse();
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    o.nextPageToken = "foo";
    o.services = buildUnnamed2714();
  }
  buildCounterListServicesResponse--;
  return o;
}

checkListServicesResponse(api.ListServicesResponse o) {
  buildCounterListServicesResponse++;
  if (buildCounterListServicesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2714(o.services);
  }
  buildCounterListServicesResponse--;
}

buildUnnamed2715() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed2715(core.List<api.LabelDescriptor> o) {
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
    o.labels = buildUnnamed2715();
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
    checkUnnamed2715(o.labels);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLogDescriptor--;
}

buildUnnamed2716() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed2716(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

buildUnnamed2717() {
  var o = new core.List<api.LoggingDestination>();
  o.add(buildLoggingDestination());
  o.add(buildLoggingDestination());
  return o;
}

checkUnnamed2717(core.List<api.LoggingDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoggingDestination(o[0]);
  checkLoggingDestination(o[1]);
}

core.int buildCounterLogging = 0;
buildLogging() {
  var o = new api.Logging();
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    o.consumerDestinations = buildUnnamed2716();
    o.producerDestinations = buildUnnamed2717();
  }
  buildCounterLogging--;
  return o;
}

checkLogging(api.Logging o) {
  buildCounterLogging++;
  if (buildCounterLogging < 3) {
    checkUnnamed2716(o.consumerDestinations);
    checkUnnamed2717(o.producerDestinations);
  }
  buildCounterLogging--;
}

buildUnnamed2718() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2718(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLoggingDestination = 0;
buildLoggingDestination() {
  var o = new api.LoggingDestination();
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    o.logs = buildUnnamed2718();
    o.monitoredResource = "foo";
  }
  buildCounterLoggingDestination--;
  return o;
}

checkLoggingDestination(api.LoggingDestination o) {
  buildCounterLoggingDestination++;
  if (buildCounterLoggingDestination < 3) {
    checkUnnamed2718(o.logs);
    unittest.expect(o.monitoredResource, unittest.equals('foo'));
  }
  buildCounterLoggingDestination--;
}

core.int buildCounterManagedService = 0;
buildManagedService() {
  var o = new api.ManagedService();
  buildCounterManagedService++;
  if (buildCounterManagedService < 3) {
    o.producerProjectId = "foo";
    o.serviceName = "foo";
  }
  buildCounterManagedService--;
  return o;
}

checkManagedService(api.ManagedService o) {
  buildCounterManagedService++;
  if (buildCounterManagedService < 3) {
    unittest.expect(o.producerProjectId, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
  }
  buildCounterManagedService--;
}

buildUnnamed2719() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2719(core.List<api.Option> o) {
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
    o.options = buildUnnamed2719();
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
    checkUnnamed2719(o.options);
    unittest.expect(o.requestStreaming, unittest.isTrue);
    unittest.expect(o.requestTypeUrl, unittest.equals('foo'));
    unittest.expect(o.responseStreaming, unittest.isTrue);
    unittest.expect(o.responseTypeUrl, unittest.equals('foo'));
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterMethod--;
}

buildUnnamed2720() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed2720(core.List<api.LabelDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelDescriptor(o[0]);
  checkLabelDescriptor(o[1]);
}

buildUnnamed2721() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2721(core.List<core.String> o) {
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
    o.labels = buildUnnamed2720();
    o.launchStage = "foo";
    o.metadata = buildMetricDescriptorMetadata();
    o.metricKind = "foo";
    o.monitoredResourceTypes = buildUnnamed2721();
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
    checkUnnamed2720(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    checkMetricDescriptorMetadata(o.metadata);
    unittest.expect(o.metricKind, unittest.equals('foo'));
    checkUnnamed2721(o.monitoredResourceTypes);
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

buildUnnamed2722() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2722(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricRule = 0;
buildMetricRule() {
  var o = new api.MetricRule();
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    o.metricCosts = buildUnnamed2722();
    o.selector = "foo";
  }
  buildCounterMetricRule--;
  return o;
}

checkMetricRule(api.MetricRule o) {
  buildCounterMetricRule++;
  if (buildCounterMetricRule < 3) {
    checkUnnamed2722(o.metricCosts);
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

buildUnnamed2723() {
  var o = new core.List<api.LabelDescriptor>();
  o.add(buildLabelDescriptor());
  o.add(buildLabelDescriptor());
  return o;
}

checkUnnamed2723(core.List<api.LabelDescriptor> o) {
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
    o.labels = buildUnnamed2723();
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
    checkUnnamed2723(o.labels);
    unittest.expect(o.launchStage, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterMonitoredResourceDescriptor--;
}

buildUnnamed2724() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed2724(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

buildUnnamed2725() {
  var o = new core.List<api.MonitoringDestination>();
  o.add(buildMonitoringDestination());
  o.add(buildMonitoringDestination());
  return o;
}

checkUnnamed2725(core.List<api.MonitoringDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoringDestination(o[0]);
  checkMonitoringDestination(o[1]);
}

core.int buildCounterMonitoring = 0;
buildMonitoring() {
  var o = new api.Monitoring();
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    o.consumerDestinations = buildUnnamed2724();
    o.producerDestinations = buildUnnamed2725();
  }
  buildCounterMonitoring--;
  return o;
}

checkMonitoring(api.Monitoring o) {
  buildCounterMonitoring++;
  if (buildCounterMonitoring < 3) {
    checkUnnamed2724(o.consumerDestinations);
    checkUnnamed2725(o.producerDestinations);
  }
  buildCounterMonitoring--;
}

buildUnnamed2726() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2726(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMonitoringDestination = 0;
buildMonitoringDestination() {
  var o = new api.MonitoringDestination();
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    o.metrics = buildUnnamed2726();
    o.monitoredResource = "foo";
  }
  buildCounterMonitoringDestination--;
  return o;
}

checkMonitoringDestination(api.MonitoringDestination o) {
  buildCounterMonitoringDestination++;
  if (buildCounterMonitoringDestination < 3) {
    checkUnnamed2726(o.metrics);
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

buildUnnamed2727() {
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

checkUnnamed2727(core.Map<core.String, core.Object> o) {
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

buildUnnamed2728() {
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

checkUnnamed2728(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed2727();
    o.name = "foo";
    o.response = buildUnnamed2728();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2727(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2728(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed2729() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2729(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2730() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed2730(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterOperationMetadata = 0;
buildOperationMetadata() {
  var o = new api.OperationMetadata();
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    o.progressPercentage = 42;
    o.resourceNames = buildUnnamed2729();
    o.startTime = "foo";
    o.steps = buildUnnamed2730();
  }
  buildCounterOperationMetadata--;
  return o;
}

checkOperationMetadata(api.OperationMetadata o) {
  buildCounterOperationMetadata++;
  if (buildCounterOperationMetadata < 3) {
    unittest.expect(o.progressPercentage, unittest.equals(42));
    checkUnnamed2729(o.resourceNames);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed2730(o.steps);
  }
  buildCounterOperationMetadata--;
}

buildUnnamed2731() {
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

checkUnnamed2731(core.Map<core.String, core.Object> o) {
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

core.int buildCounterOption = 0;
buildOption() {
  var o = new api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.name = "foo";
    o.value = buildUnnamed2731();
  }
  buildCounterOption--;
  return o;
}

checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2731(o.value);
  }
  buildCounterOption--;
}

buildUnnamed2732() {
  var o = new core.List<api.Page>();
  o.add(buildPage());
  o.add(buildPage());
  return o;
}

checkUnnamed2732(core.List<api.Page> o) {
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
    o.subpages = buildUnnamed2732();
  }
  buildCounterPage--;
  return o;
}

checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2732(o.subpages);
  }
  buildCounterPage--;
}

buildUnnamed2733() {
  var o = new core.List<api.AuditConfig>();
  o.add(buildAuditConfig());
  o.add(buildAuditConfig());
  return o;
}

checkUnnamed2733(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

buildUnnamed2734() {
  var o = new core.List<api.Binding>();
  o.add(buildBinding());
  o.add(buildBinding());
  return o;
}

checkUnnamed2734(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed2733();
    o.bindings = buildUnnamed2734();
    o.etag = "foo";
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed2733(o.auditConfigs);
    checkUnnamed2734(o.bindings);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterPolicy--;
}

buildUnnamed2735() {
  var o = new core.List<api.QuotaLimit>();
  o.add(buildQuotaLimit());
  o.add(buildQuotaLimit());
  return o;
}

checkUnnamed2735(core.List<api.QuotaLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuotaLimit(o[0]);
  checkQuotaLimit(o[1]);
}

buildUnnamed2736() {
  var o = new core.List<api.MetricRule>();
  o.add(buildMetricRule());
  o.add(buildMetricRule());
  return o;
}

checkUnnamed2736(core.List<api.MetricRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricRule(o[0]);
  checkMetricRule(o[1]);
}

core.int buildCounterQuota = 0;
buildQuota() {
  var o = new api.Quota();
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    o.limits = buildUnnamed2735();
    o.metricRules = buildUnnamed2736();
  }
  buildCounterQuota--;
  return o;
}

checkQuota(api.Quota o) {
  buildCounterQuota++;
  if (buildCounterQuota < 3) {
    checkUnnamed2735(o.limits);
    checkUnnamed2736(o.metricRules);
  }
  buildCounterQuota--;
}

buildUnnamed2737() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2737(core.Map<core.String, core.String> o) {
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
    o.values = buildUnnamed2737();
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
    checkUnnamed2737(o.values);
  }
  buildCounterQuotaLimit--;
}

core.int buildCounterRollout = 0;
buildRollout() {
  var o = new api.Rollout();
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    o.createTime = "foo";
    o.createdBy = "foo";
    o.deleteServiceStrategy = buildDeleteServiceStrategy();
    o.rolloutId = "foo";
    o.serviceName = "foo";
    o.status = "foo";
    o.trafficPercentStrategy = buildTrafficPercentStrategy();
  }
  buildCounterRollout--;
  return o;
}

checkRollout(api.Rollout o) {
  buildCounterRollout++;
  if (buildCounterRollout < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.createdBy, unittest.equals('foo'));
    checkDeleteServiceStrategy(o.deleteServiceStrategy);
    unittest.expect(o.rolloutId, unittest.equals('foo'));
    unittest.expect(o.serviceName, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkTrafficPercentStrategy(o.trafficPercentStrategy);
  }
  buildCounterRollout--;
}

buildUnnamed2738() {
  var o = new core.List<api.Api>();
  o.add(buildApi());
  o.add(buildApi());
  return o;
}

checkUnnamed2738(core.List<api.Api> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApi(o[0]);
  checkApi(o[1]);
}

buildUnnamed2739() {
  var o = new core.List<api.Endpoint>();
  o.add(buildEndpoint());
  o.add(buildEndpoint());
  return o;
}

checkUnnamed2739(core.List<api.Endpoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEndpoint(o[0]);
  checkEndpoint(o[1]);
}

buildUnnamed2740() {
  var o = new core.List<api.Enum>();
  o.add(buildEnum());
  o.add(buildEnum());
  return o;
}

checkUnnamed2740(core.List<api.Enum> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnum(o[0]);
  checkEnum(o[1]);
}

buildUnnamed2741() {
  var o = new core.List<api.LogDescriptor>();
  o.add(buildLogDescriptor());
  o.add(buildLogDescriptor());
  return o;
}

checkUnnamed2741(core.List<api.LogDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLogDescriptor(o[0]);
  checkLogDescriptor(o[1]);
}

buildUnnamed2742() {
  var o = new core.List<api.MetricDescriptor>();
  o.add(buildMetricDescriptor());
  o.add(buildMetricDescriptor());
  return o;
}

checkUnnamed2742(core.List<api.MetricDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricDescriptor(o[0]);
  checkMetricDescriptor(o[1]);
}

buildUnnamed2743() {
  var o = new core.List<api.MonitoredResourceDescriptor>();
  o.add(buildMonitoredResourceDescriptor());
  o.add(buildMonitoredResourceDescriptor());
  return o;
}

checkUnnamed2743(core.List<api.MonitoredResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMonitoredResourceDescriptor(o[0]);
  checkMonitoredResourceDescriptor(o[1]);
}

buildUnnamed2744() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed2744(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

buildUnnamed2745() {
  var o = new core.List<api.Type>();
  o.add(buildType());
  o.add(buildType());
  return o;
}

checkUnnamed2745(core.List<api.Type> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkType(o[0]);
  checkType(o[1]);
}

core.int buildCounterService = 0;
buildService() {
  var o = new api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.apis = buildUnnamed2738();
    o.authentication = buildAuthentication();
    o.backend = buildBackend();
    o.billing = buildBilling();
    o.configVersion = 42;
    o.context = buildContext();
    o.control = buildControl();
    o.customError = buildCustomError();
    o.documentation = buildDocumentation();
    o.endpoints = buildUnnamed2739();
    o.enums = buildUnnamed2740();
    o.http = buildHttp();
    o.id = "foo";
    o.logging = buildLogging();
    o.logs = buildUnnamed2741();
    o.metrics = buildUnnamed2742();
    o.monitoredResources = buildUnnamed2743();
    o.monitoring = buildMonitoring();
    o.name = "foo";
    o.producerProjectId = "foo";
    o.quota = buildQuota();
    o.sourceInfo = buildSourceInfo();
    o.systemParameters = buildSystemParameters();
    o.systemTypes = buildUnnamed2744();
    o.title = "foo";
    o.types = buildUnnamed2745();
    o.usage = buildUsage();
  }
  buildCounterService--;
  return o;
}

checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed2738(o.apis);
    checkAuthentication(o.authentication);
    checkBackend(o.backend);
    checkBilling(o.billing);
    unittest.expect(o.configVersion, unittest.equals(42));
    checkContext(o.context);
    checkControl(o.control);
    checkCustomError(o.customError);
    checkDocumentation(o.documentation);
    checkUnnamed2739(o.endpoints);
    checkUnnamed2740(o.enums);
    checkHttp(o.http);
    unittest.expect(o.id, unittest.equals('foo'));
    checkLogging(o.logging);
    checkUnnamed2741(o.logs);
    checkUnnamed2742(o.metrics);
    checkUnnamed2743(o.monitoredResources);
    checkMonitoring(o.monitoring);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.producerProjectId, unittest.equals('foo'));
    checkQuota(o.quota);
    checkSourceInfo(o.sourceInfo);
    checkSystemParameters(o.systemParameters);
    checkUnnamed2744(o.systemTypes);
    unittest.expect(o.title, unittest.equals('foo'));
    checkUnnamed2745(o.types);
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

core.int buildCounterSetIamPolicyRequest = 0;
buildSetIamPolicyRequest() {
  var o = new api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = "foo";
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterSetIamPolicyRequest--;
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

buildUnnamed2746() {
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

checkUnnamed2746(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed2747() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2746());
  o.add(buildUnnamed2746());
  return o;
}

checkUnnamed2747(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2746(o[0]);
  checkUnnamed2746(o[1]);
}

core.int buildCounterSourceInfo = 0;
buildSourceInfo() {
  var o = new api.SourceInfo();
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    o.sourceFiles = buildUnnamed2747();
  }
  buildCounterSourceInfo--;
  return o;
}

checkSourceInfo(api.SourceInfo o) {
  buildCounterSourceInfo++;
  if (buildCounterSourceInfo < 3) {
    checkUnnamed2747(o.sourceFiles);
  }
  buildCounterSourceInfo--;
}

buildUnnamed2748() {
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

checkUnnamed2748(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o["x"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
  var casted14 = (o["y"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
}

buildUnnamed2749() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2748());
  o.add(buildUnnamed2748());
  return o;
}

checkUnnamed2749(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2748(o[0]);
  checkUnnamed2748(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2749();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2749(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStep = 0;
buildStep() {
  var o = new api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.description = "foo";
    o.status = "foo";
  }
  buildCounterStep--;
  return o;
}

checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterStep--;
}

core.int buildCounterSubmitConfigSourceRequest = 0;
buildSubmitConfigSourceRequest() {
  var o = new api.SubmitConfigSourceRequest();
  buildCounterSubmitConfigSourceRequest++;
  if (buildCounterSubmitConfigSourceRequest < 3) {
    o.configSource = buildConfigSource();
    o.validateOnly = true;
  }
  buildCounterSubmitConfigSourceRequest--;
  return o;
}

checkSubmitConfigSourceRequest(api.SubmitConfigSourceRequest o) {
  buildCounterSubmitConfigSourceRequest++;
  if (buildCounterSubmitConfigSourceRequest < 3) {
    checkConfigSource(o.configSource);
    unittest.expect(o.validateOnly, unittest.isTrue);
  }
  buildCounterSubmitConfigSourceRequest--;
}

core.int buildCounterSubmitConfigSourceResponse = 0;
buildSubmitConfigSourceResponse() {
  var o = new api.SubmitConfigSourceResponse();
  buildCounterSubmitConfigSourceResponse++;
  if (buildCounterSubmitConfigSourceResponse < 3) {
    o.serviceConfig = buildService();
  }
  buildCounterSubmitConfigSourceResponse--;
  return o;
}

checkSubmitConfigSourceResponse(api.SubmitConfigSourceResponse o) {
  buildCounterSubmitConfigSourceResponse++;
  if (buildCounterSubmitConfigSourceResponse < 3) {
    checkService(o.serviceConfig);
  }
  buildCounterSubmitConfigSourceResponse--;
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

buildUnnamed2750() {
  var o = new core.List<api.SystemParameter>();
  o.add(buildSystemParameter());
  o.add(buildSystemParameter());
  return o;
}

checkUnnamed2750(core.List<api.SystemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameter(o[0]);
  checkSystemParameter(o[1]);
}

core.int buildCounterSystemParameterRule = 0;
buildSystemParameterRule() {
  var o = new api.SystemParameterRule();
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    o.parameters = buildUnnamed2750();
    o.selector = "foo";
  }
  buildCounterSystemParameterRule--;
  return o;
}

checkSystemParameterRule(api.SystemParameterRule o) {
  buildCounterSystemParameterRule++;
  if (buildCounterSystemParameterRule < 3) {
    checkUnnamed2750(o.parameters);
    unittest.expect(o.selector, unittest.equals('foo'));
  }
  buildCounterSystemParameterRule--;
}

buildUnnamed2751() {
  var o = new core.List<api.SystemParameterRule>();
  o.add(buildSystemParameterRule());
  o.add(buildSystemParameterRule());
  return o;
}

checkUnnamed2751(core.List<api.SystemParameterRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemParameterRule(o[0]);
  checkSystemParameterRule(o[1]);
}

core.int buildCounterSystemParameters = 0;
buildSystemParameters() {
  var o = new api.SystemParameters();
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    o.rules = buildUnnamed2751();
  }
  buildCounterSystemParameters--;
  return o;
}

checkSystemParameters(api.SystemParameters o) {
  buildCounterSystemParameters++;
  if (buildCounterSystemParameters < 3) {
    checkUnnamed2751(o.rules);
  }
  buildCounterSystemParameters--;
}

buildUnnamed2752() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2752(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
buildTestIamPermissionsRequest() {
  var o = new api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed2752();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed2752(o.permissions);
  }
  buildCounterTestIamPermissionsRequest--;
}

buildUnnamed2753() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2753(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
buildTestIamPermissionsResponse() {
  var o = new api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed2753();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed2753(o.permissions);
  }
  buildCounterTestIamPermissionsResponse--;
}

buildUnnamed2754() {
  var o = new core.Map<core.String, core.double>();
  o["x"] = 42.0;
  o["y"] = 42.0;
  return o;
}

checkUnnamed2754(core.Map<core.String, core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals(42.0));
  unittest.expect(o["y"], unittest.equals(42.0));
}

core.int buildCounterTrafficPercentStrategy = 0;
buildTrafficPercentStrategy() {
  var o = new api.TrafficPercentStrategy();
  buildCounterTrafficPercentStrategy++;
  if (buildCounterTrafficPercentStrategy < 3) {
    o.percentages = buildUnnamed2754();
  }
  buildCounterTrafficPercentStrategy--;
  return o;
}

checkTrafficPercentStrategy(api.TrafficPercentStrategy o) {
  buildCounterTrafficPercentStrategy++;
  if (buildCounterTrafficPercentStrategy < 3) {
    checkUnnamed2754(o.percentages);
  }
  buildCounterTrafficPercentStrategy--;
}

buildUnnamed2755() {
  var o = new core.List<api.Field>();
  o.add(buildField());
  o.add(buildField());
  return o;
}

checkUnnamed2755(core.List<api.Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkField(o[0]);
  checkField(o[1]);
}

buildUnnamed2756() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2756(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2757() {
  var o = new core.List<api.Option>();
  o.add(buildOption());
  o.add(buildOption());
  return o;
}

checkUnnamed2757(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterType = 0;
buildType() {
  var o = new api.Type();
  buildCounterType++;
  if (buildCounterType < 3) {
    o.fields = buildUnnamed2755();
    o.name = "foo";
    o.oneofs = buildUnnamed2756();
    o.options = buildUnnamed2757();
    o.sourceContext = buildSourceContext();
    o.syntax = "foo";
  }
  buildCounterType--;
  return o;
}

checkType(api.Type o) {
  buildCounterType++;
  if (buildCounterType < 3) {
    checkUnnamed2755(o.fields);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2756(o.oneofs);
    checkUnnamed2757(o.options);
    checkSourceContext(o.sourceContext);
    unittest.expect(o.syntax, unittest.equals('foo'));
  }
  buildCounterType--;
}

core.int buildCounterUndeleteServiceResponse = 0;
buildUndeleteServiceResponse() {
  var o = new api.UndeleteServiceResponse();
  buildCounterUndeleteServiceResponse++;
  if (buildCounterUndeleteServiceResponse < 3) {
    o.service = buildManagedService();
  }
  buildCounterUndeleteServiceResponse--;
  return o;
}

checkUndeleteServiceResponse(api.UndeleteServiceResponse o) {
  buildCounterUndeleteServiceResponse++;
  if (buildCounterUndeleteServiceResponse < 3) {
    checkManagedService(o.service);
  }
  buildCounterUndeleteServiceResponse--;
}

buildUnnamed2758() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2758(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2759() {
  var o = new core.List<api.UsageRule>();
  o.add(buildUsageRule());
  o.add(buildUsageRule());
  return o;
}

checkUnnamed2759(core.List<api.UsageRule> o) {
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
    o.requirements = buildUnnamed2758();
    o.rules = buildUnnamed2759();
    o.serviceIdentity = buildServiceIdentity();
  }
  buildCounterUsage--;
  return o;
}

checkUsage(api.Usage o) {
  buildCounterUsage++;
  if (buildCounterUsage < 3) {
    unittest.expect(o.producerNotificationChannel, unittest.equals('foo'));
    checkUnnamed2758(o.requirements);
    checkUnnamed2759(o.rules);
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

main() {
  unittest.group("obj-schema-Advice", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdvice();
      var od = new api.Advice.fromJson(o.toJson());
      checkAdvice(od);
    });
  });

  unittest.group("obj-schema-Api", () {
    unittest.test("to-json--from-json", () {
      var o = buildApi();
      var od = new api.Api.fromJson(o.toJson());
      checkApi(od);
    });
  });

  unittest.group("obj-schema-AuditConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditConfig();
      var od = new api.AuditConfig.fromJson(o.toJson());
      checkAuditConfig(od);
    });
  });

  unittest.group("obj-schema-AuditLogConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAuditLogConfig();
      var od = new api.AuditLogConfig.fromJson(o.toJson());
      checkAuditLogConfig(od);
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

  unittest.group("obj-schema-Binding", () {
    unittest.test("to-json--from-json", () {
      var o = buildBinding();
      var od = new api.Binding.fromJson(o.toJson());
      checkBinding(od);
    });
  });

  unittest.group("obj-schema-ChangeReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeReport();
      var od = new api.ChangeReport.fromJson(o.toJson());
      checkChangeReport(od);
    });
  });

  unittest.group("obj-schema-ConfigChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigChange();
      var od = new api.ConfigChange.fromJson(o.toJson());
      checkConfigChange(od);
    });
  });

  unittest.group("obj-schema-ConfigFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigFile();
      var od = new api.ConfigFile.fromJson(o.toJson());
      checkConfigFile(od);
    });
  });

  unittest.group("obj-schema-ConfigRef", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigRef();
      var od = new api.ConfigRef.fromJson(o.toJson());
      checkConfigRef(od);
    });
  });

  unittest.group("obj-schema-ConfigSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildConfigSource();
      var od = new api.ConfigSource.fromJson(o.toJson());
      checkConfigSource(od);
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

  unittest.group("obj-schema-DeleteServiceStrategy", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteServiceStrategy();
      var od = new api.DeleteServiceStrategy.fromJson(o.toJson());
      checkDeleteServiceStrategy(od);
    });
  });

  unittest.group("obj-schema-Diagnostic", () {
    unittest.test("to-json--from-json", () {
      var o = buildDiagnostic();
      var od = new api.Diagnostic.fromJson(o.toJson());
      checkDiagnostic(od);
    });
  });

  unittest.group("obj-schema-DisableServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableServiceRequest();
      var od = new api.DisableServiceRequest.fromJson(o.toJson());
      checkDisableServiceRequest(od);
    });
  });

  unittest.group("obj-schema-DisableServiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisableServiceResponse();
      var od = new api.DisableServiceResponse.fromJson(o.toJson());
      checkDisableServiceResponse(od);
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

  unittest.group("obj-schema-EnableServiceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableServiceRequest();
      var od = new api.EnableServiceRequest.fromJson(o.toJson());
      checkEnableServiceRequest(od);
    });
  });

  unittest.group("obj-schema-EnableServiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnableServiceResponse();
      var od = new api.EnableServiceResponse.fromJson(o.toJson());
      checkEnableServiceResponse(od);
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

  unittest.group("obj-schema-Expr", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpr();
      var od = new api.Expr.fromJson(o.toJson());
      checkExpr(od);
    });
  });

  unittest.group("obj-schema-Field", () {
    unittest.test("to-json--from-json", () {
      var o = buildField();
      var od = new api.Field.fromJson(o.toJson());
      checkField(od);
    });
  });

  unittest.group("obj-schema-FlowErrorDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildFlowErrorDetails();
      var od = new api.FlowErrorDetails.fromJson(o.toJson());
      checkFlowErrorDetails(od);
    });
  });

  unittest.group("obj-schema-GenerateConfigReportRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateConfigReportRequest();
      var od = new api.GenerateConfigReportRequest.fromJson(o.toJson());
      checkGenerateConfigReportRequest(od);
    });
  });

  unittest.group("obj-schema-GenerateConfigReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenerateConfigReportResponse();
      var od = new api.GenerateConfigReportResponse.fromJson(o.toJson());
      checkGenerateConfigReportResponse(od);
    });
  });

  unittest.group("obj-schema-GetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetIamPolicyRequest();
      var od = new api.GetIamPolicyRequest.fromJson(o.toJson());
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group("obj-schema-GetPolicyOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetPolicyOptions();
      var od = new api.GetPolicyOptions.fromJson(o.toJson());
      checkGetPolicyOptions(od);
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

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListServiceConfigsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServiceConfigsResponse();
      var od = new api.ListServiceConfigsResponse.fromJson(o.toJson());
      checkListServiceConfigsResponse(od);
    });
  });

  unittest.group("obj-schema-ListServiceRolloutsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServiceRolloutsResponse();
      var od = new api.ListServiceRolloutsResponse.fromJson(o.toJson());
      checkListServiceRolloutsResponse(od);
    });
  });

  unittest.group("obj-schema-ListServicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListServicesResponse();
      var od = new api.ListServicesResponse.fromJson(o.toJson());
      checkListServicesResponse(od);
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

  unittest.group("obj-schema-ManagedService", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedService();
      var od = new api.ManagedService.fromJson(o.toJson());
      checkManagedService(od);
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

  unittest.group("obj-schema-OperationMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperationMetadata();
      var od = new api.OperationMetadata.fromJson(o.toJson());
      checkOperationMetadata(od);
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

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
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

  unittest.group("obj-schema-Rollout", () {
    unittest.test("to-json--from-json", () {
      var o = buildRollout();
      var od = new api.Rollout.fromJson(o.toJson());
      checkRollout(od);
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

  unittest.group("obj-schema-SetIamPolicyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetIamPolicyRequest();
      var od = new api.SetIamPolicyRequest.fromJson(o.toJson());
      checkSetIamPolicyRequest(od);
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

  unittest.group("obj-schema-Step", () {
    unittest.test("to-json--from-json", () {
      var o = buildStep();
      var od = new api.Step.fromJson(o.toJson());
      checkStep(od);
    });
  });

  unittest.group("obj-schema-SubmitConfigSourceRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubmitConfigSourceRequest();
      var od = new api.SubmitConfigSourceRequest.fromJson(o.toJson());
      checkSubmitConfigSourceRequest(od);
    });
  });

  unittest.group("obj-schema-SubmitConfigSourceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubmitConfigSourceResponse();
      var od = new api.SubmitConfigSourceResponse.fromJson(o.toJson());
      checkSubmitConfigSourceResponse(od);
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

  unittest.group("obj-schema-TestIamPermissionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsRequest();
      var od = new api.TestIamPermissionsRequest.fromJson(o.toJson());
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group("obj-schema-TestIamPermissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestIamPermissionsResponse();
      var od = new api.TestIamPermissionsResponse.fromJson(o.toJson());
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group("obj-schema-TrafficPercentStrategy", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficPercentStrategy();
      var od = new api.TrafficPercentStrategy.fromJson(o.toJson());
      checkTrafficPercentStrategy(od);
    });
  });

  unittest.group("obj-schema-Type", () {
    unittest.test("to-json--from-json", () {
      var o = buildType();
      var od = new api.Type.fromJson(o.toJson());
      checkType(od);
    });
  });

  unittest.group("obj-schema-UndeleteServiceResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildUndeleteServiceResponse();
      var od = new api.UndeleteServiceResponse.fromJson(o.toJson());
      checkUndeleteServiceResponse(od);
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

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res =
          new api.ServicemanagementApi(mock).operations;
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
          new api.ServicemanagementApi(mock).operations;
      var arg_filter = "foo";
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/operations"));
        pathOffset += 13;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              name: arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildManagedService();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ManagedService.fromJson(json);
        checkManagedService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/services"));
        pathOffset += 11;

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
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));

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
          .delete(arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--disable", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildDisableServiceRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.DisableServiceRequest.fromJson(json);
        checkDisableServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":disable", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals(":disable"));
        pathOffset += 8;

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
          .disable(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--enable", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildEnableServiceRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnableServiceRequest.fromJson(json);
        checkEnableServiceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":enable", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":enable"));
        pathOffset += 7;

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
          .enable(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--generateConfigReport", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildGenerateConfigReportRequest();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GenerateConfigReportRequest.fromJson(json);
        checkGenerateConfigReportRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("v1/services:generateConfigReport"));
        pathOffset += 32;

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
        var resp = convert.json.encode(buildGenerateConfigReportResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generateConfigReport(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGenerateConfigReportResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));

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
        var resp = convert.json.encode(buildManagedService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkManagedService(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_serviceName = "foo";
      var arg_configId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/config", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/config"));
        pathOffset += 7;

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
            queryMap["configId"].first, unittest.equals(arg_configId));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_serviceName,
              configId: arg_configId, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_producerProjectId = "foo";
      var arg_consumerId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/services"));
        pathOffset += 11;

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
        unittest.expect(queryMap["producerProjectId"].first,
            unittest.equals(arg_producerProjectId));
        unittest.expect(
            queryMap["consumerId"].first, unittest.equals(arg_consumerId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              producerProjectId: arg_producerProjectId,
              consumerId: arg_consumerId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServicesResponse(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });

    unittest.test("method--undelete", () {
      var mock = new HttpServerMock();
      api.ServicesResourceApi res = new api.ServicemanagementApi(mock).services;
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf(":undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":undelete"));
        pathOffset += 9;

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
          .undelete(arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ServicesConfigsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ServicesConfigsResourceApi res =
          new api.ServicemanagementApi(mock).services.configs;
      var arg_request = buildService();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Service.fromJson(json);
        checkService(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/configs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/configs"));
        pathOffset += 8;

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
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ServicesConfigsResourceApi res =
          new api.ServicemanagementApi(mock).services.configs;
      var arg_serviceName = "foo";
      var arg_configId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/configs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/configs/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_configId"));

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildService());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_serviceName, arg_configId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkService(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesConfigsResourceApi res =
          new api.ServicemanagementApi(mock).services.configs;
      var arg_serviceName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/configs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/configs"));
        pathOffset += 8;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServiceConfigsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_serviceName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServiceConfigsResponse(response);
      })));
    });

    unittest.test("method--submit", () {
      var mock = new HttpServerMock();
      api.ServicesConfigsResourceApi res =
          new api.ServicemanagementApi(mock).services.configs;
      var arg_request = buildSubmitConfigSourceRequest();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SubmitConfigSourceRequest.fromJson(json);
        checkSubmitConfigSourceRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/configs:submit", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/configs:submit"));
        pathOffset += 15;

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
          .submit(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ServicesConsumersResourceApi", () {
    unittest.test("method--getIamPolicy", () {
      var mock = new HttpServerMock();
      api.ServicesConsumersResourceApi res =
          new api.ServicemanagementApi(mock).services.consumers;
      var arg_request = buildGetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetIamPolicyRequest.fromJson(json);
        checkGetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--setIamPolicy", () {
      var mock = new HttpServerMock();
      api.ServicesConsumersResourceApi res =
          new api.ServicemanagementApi(mock).services.consumers;
      var arg_request = buildSetIamPolicyRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SetIamPolicyRequest.fromJson(json);
        checkSetIamPolicyRequest(obj);

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
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .setIamPolicy(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--testIamPermissions", () {
      var mock = new HttpServerMock();
      api.ServicesConsumersResourceApi res =
          new api.ServicemanagementApi(mock).services.consumers;
      var arg_request = buildTestIamPermissionsRequest();
      var arg_resource = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestIamPermissionsRequest.fromJson(json);
        checkTestIamPermissionsRequest(obj);

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
        var resp = convert.json.encode(buildTestIamPermissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .testIamPermissions(arg_request, arg_resource, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestIamPermissionsResponse(response);
      })));
    });
  });

  unittest.group("resource-ServicesRolloutsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ServicesRolloutsResourceApi res =
          new api.ServicemanagementApi(mock).services.rollouts;
      var arg_request = buildRollout();
      var arg_serviceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Rollout.fromJson(json);
        checkRollout(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/rollouts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/rollouts"));
        pathOffset += 9;

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
          .create(arg_request, arg_serviceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ServicesRolloutsResourceApi res =
          new api.ServicemanagementApi(mock).services.rollouts;
      var arg_serviceName = "foo";
      var arg_rolloutId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/rollouts/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/rollouts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_rolloutId"));

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
        var resp = convert.json.encode(buildRollout());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_serviceName, arg_rolloutId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRollout(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ServicesRolloutsResourceApi res =
          new api.ServicemanagementApi(mock).services.rollouts;
      var arg_serviceName = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/services/"));
        pathOffset += 12;
        index = path.indexOf("/rollouts", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_serviceName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/rollouts"));
        pathOffset += 9;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListServiceRolloutsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_serviceName,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListServiceRolloutsResponse(response);
      })));
    });
  });
}
