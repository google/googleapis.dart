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

import 'package:googleapis/trafficdirector/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddress = 0;
api.Address buildAddress() {
  final o = api.Address();
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    o.pipe = buildPipe();
    o.socketAddress = buildSocketAddress();
  }
  buildCounterAddress--;
  return o;
}

void checkAddress(api.Address o) {
  buildCounterAddress++;
  if (buildCounterAddress < 3) {
    checkPipe(o.pipe!);
    checkSocketAddress(o.socketAddress!);
  }
  buildCounterAddress--;
}

core.Map<core.String, core.Object> buildUnnamed2583() => {
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

void checkUnnamed2583(core.Map<core.String, core.Object> o) {
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

core.int buildCounterBuildVersion = 0;
api.BuildVersion buildBuildVersion() {
  final o = api.BuildVersion();
  buildCounterBuildVersion++;
  if (buildCounterBuildVersion < 3) {
    o.metadata = buildUnnamed2583();
    o.version = buildSemanticVersion();
  }
  buildCounterBuildVersion--;
  return o;
}

void checkBuildVersion(api.BuildVersion o) {
  buildCounterBuildVersion++;
  if (buildCounterBuildVersion < 3) {
    checkUnnamed2583(o.metadata!);
    checkSemanticVersion(o.version!);
  }
  buildCounterBuildVersion--;
}

core.List<api.PerXdsConfig> buildUnnamed2584() => [
      buildPerXdsConfig(),
      buildPerXdsConfig(),
    ];

void checkUnnamed2584(core.List<api.PerXdsConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerXdsConfig(o[0]);
  checkPerXdsConfig(o[1]);
}

core.int buildCounterClientConfig = 0;
api.ClientConfig buildClientConfig() {
  final o = api.ClientConfig();
  buildCounterClientConfig++;
  if (buildCounterClientConfig < 3) {
    o.node = buildNode();
    o.xdsConfig = buildUnnamed2584();
  }
  buildCounterClientConfig--;
  return o;
}

void checkClientConfig(api.ClientConfig o) {
  buildCounterClientConfig++;
  if (buildCounterClientConfig < 3) {
    checkNode(o.node!);
    checkUnnamed2584(o.xdsConfig!);
  }
  buildCounterClientConfig--;
}

core.List<api.NodeMatcher> buildUnnamed2585() => [
      buildNodeMatcher(),
      buildNodeMatcher(),
    ];

void checkUnnamed2585(core.List<api.NodeMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeMatcher(o[0]);
  checkNodeMatcher(o[1]);
}

core.int buildCounterClientStatusRequest = 0;
api.ClientStatusRequest buildClientStatusRequest() {
  final o = api.ClientStatusRequest();
  buildCounterClientStatusRequest++;
  if (buildCounterClientStatusRequest < 3) {
    o.nodeMatchers = buildUnnamed2585();
  }
  buildCounterClientStatusRequest--;
  return o;
}

void checkClientStatusRequest(api.ClientStatusRequest o) {
  buildCounterClientStatusRequest++;
  if (buildCounterClientStatusRequest < 3) {
    checkUnnamed2585(o.nodeMatchers!);
  }
  buildCounterClientStatusRequest--;
}

core.List<api.ClientConfig> buildUnnamed2586() => [
      buildClientConfig(),
      buildClientConfig(),
    ];

void checkUnnamed2586(core.List<api.ClientConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientConfig(o[0]);
  checkClientConfig(o[1]);
}

core.int buildCounterClientStatusResponse = 0;
api.ClientStatusResponse buildClientStatusResponse() {
  final o = api.ClientStatusResponse();
  buildCounterClientStatusResponse++;
  if (buildCounterClientStatusResponse < 3) {
    o.config = buildUnnamed2586();
  }
  buildCounterClientStatusResponse--;
  return o;
}

void checkClientStatusResponse(api.ClientStatusResponse o) {
  buildCounterClientStatusResponse++;
  if (buildCounterClientStatusResponse < 3) {
    checkUnnamed2586(o.config!);
  }
  buildCounterClientStatusResponse--;
}

core.List<api.DynamicCluster> buildUnnamed2587() => [
      buildDynamicCluster(),
      buildDynamicCluster(),
    ];

void checkUnnamed2587(core.List<api.DynamicCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicCluster(o[0]);
  checkDynamicCluster(o[1]);
}

core.List<api.DynamicCluster> buildUnnamed2588() => [
      buildDynamicCluster(),
      buildDynamicCluster(),
    ];

void checkUnnamed2588(core.List<api.DynamicCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicCluster(o[0]);
  checkDynamicCluster(o[1]);
}

core.List<api.StaticCluster> buildUnnamed2589() => [
      buildStaticCluster(),
      buildStaticCluster(),
    ];

void checkUnnamed2589(core.List<api.StaticCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStaticCluster(o[0]);
  checkStaticCluster(o[1]);
}

core.int buildCounterClustersConfigDump = 0;
api.ClustersConfigDump buildClustersConfigDump() {
  final o = api.ClustersConfigDump();
  buildCounterClustersConfigDump++;
  if (buildCounterClustersConfigDump < 3) {
    o.dynamicActiveClusters = buildUnnamed2587();
    o.dynamicWarmingClusters = buildUnnamed2588();
    o.staticClusters = buildUnnamed2589();
    o.versionInfo = 'foo';
  }
  buildCounterClustersConfigDump--;
  return o;
}

void checkClustersConfigDump(api.ClustersConfigDump o) {
  buildCounterClustersConfigDump++;
  if (buildCounterClustersConfigDump < 3) {
    checkUnnamed2587(o.dynamicActiveClusters!);
    checkUnnamed2588(o.dynamicWarmingClusters!);
    checkUnnamed2589(o.staticClusters!);
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterClustersConfigDump--;
}

core.int buildCounterDoubleMatcher = 0;
api.DoubleMatcher buildDoubleMatcher() {
  final o = api.DoubleMatcher();
  buildCounterDoubleMatcher++;
  if (buildCounterDoubleMatcher < 3) {
    o.exact = 42.0;
    o.range = buildDoubleRange();
  }
  buildCounterDoubleMatcher--;
  return o;
}

void checkDoubleMatcher(api.DoubleMatcher o) {
  buildCounterDoubleMatcher++;
  if (buildCounterDoubleMatcher < 3) {
    unittest.expect(
      o.exact!,
      unittest.equals(42.0),
    );
    checkDoubleRange(o.range!);
  }
  buildCounterDoubleMatcher--;
}

core.int buildCounterDoubleRange = 0;
api.DoubleRange buildDoubleRange() {
  final o = api.DoubleRange();
  buildCounterDoubleRange++;
  if (buildCounterDoubleRange < 3) {
    o.end = 42.0;
    o.start = 42.0;
  }
  buildCounterDoubleRange--;
  return o;
}

void checkDoubleRange(api.DoubleRange o) {
  buildCounterDoubleRange++;
  if (buildCounterDoubleRange < 3) {
    unittest.expect(
      o.end!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42.0),
    );
  }
  buildCounterDoubleRange--;
}

core.Map<core.String, core.Object> buildUnnamed2590() => {
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

void checkUnnamed2590(core.Map<core.String, core.Object> o) {
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

core.int buildCounterDynamicCluster = 0;
api.DynamicCluster buildDynamicCluster() {
  final o = api.DynamicCluster();
  buildCounterDynamicCluster++;
  if (buildCounterDynamicCluster < 3) {
    o.cluster = buildUnnamed2590();
    o.lastUpdated = 'foo';
    o.versionInfo = 'foo';
  }
  buildCounterDynamicCluster--;
  return o;
}

void checkDynamicCluster(api.DynamicCluster o) {
  buildCounterDynamicCluster++;
  if (buildCounterDynamicCluster < 3) {
    checkUnnamed2590(o.cluster!);
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicCluster--;
}

core.int buildCounterDynamicListener = 0;
api.DynamicListener buildDynamicListener() {
  final o = api.DynamicListener();
  buildCounterDynamicListener++;
  if (buildCounterDynamicListener < 3) {
    o.activeState = buildDynamicListenerState();
    o.drainingState = buildDynamicListenerState();
    o.errorState = buildUpdateFailureState();
    o.name = 'foo';
    o.warmingState = buildDynamicListenerState();
  }
  buildCounterDynamicListener--;
  return o;
}

void checkDynamicListener(api.DynamicListener o) {
  buildCounterDynamicListener++;
  if (buildCounterDynamicListener < 3) {
    checkDynamicListenerState(o.activeState!);
    checkDynamicListenerState(o.drainingState!);
    checkUpdateFailureState(o.errorState!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkDynamicListenerState(o.warmingState!);
  }
  buildCounterDynamicListener--;
}

core.Map<core.String, core.Object> buildUnnamed2591() => {
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

void checkUnnamed2591(core.Map<core.String, core.Object> o) {
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

core.int buildCounterDynamicListenerState = 0;
api.DynamicListenerState buildDynamicListenerState() {
  final o = api.DynamicListenerState();
  buildCounterDynamicListenerState++;
  if (buildCounterDynamicListenerState < 3) {
    o.lastUpdated = 'foo';
    o.listener = buildUnnamed2591();
    o.versionInfo = 'foo';
  }
  buildCounterDynamicListenerState--;
  return o;
}

void checkDynamicListenerState(api.DynamicListenerState o) {
  buildCounterDynamicListenerState++;
  if (buildCounterDynamicListenerState < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    checkUnnamed2591(o.listener!);
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicListenerState--;
}

core.Map<core.String, core.Object> buildUnnamed2592() => {
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

void checkUnnamed2592(core.Map<core.String, core.Object> o) {
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

core.int buildCounterDynamicRouteConfig = 0;
api.DynamicRouteConfig buildDynamicRouteConfig() {
  final o = api.DynamicRouteConfig();
  buildCounterDynamicRouteConfig++;
  if (buildCounterDynamicRouteConfig < 3) {
    o.lastUpdated = 'foo';
    o.routeConfig = buildUnnamed2592();
    o.versionInfo = 'foo';
  }
  buildCounterDynamicRouteConfig--;
  return o;
}

void checkDynamicRouteConfig(api.DynamicRouteConfig o) {
  buildCounterDynamicRouteConfig++;
  if (buildCounterDynamicRouteConfig < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    checkUnnamed2592(o.routeConfig!);
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicRouteConfig--;
}

core.Map<core.String, core.Object> buildUnnamed2593() => {
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

void checkUnnamed2593(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2594() => [
      buildUnnamed2593(),
      buildUnnamed2593(),
    ];

void checkUnnamed2594(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2593(o[0]);
  checkUnnamed2593(o[1]);
}

core.int buildCounterDynamicScopedRouteConfigs = 0;
api.DynamicScopedRouteConfigs buildDynamicScopedRouteConfigs() {
  final o = api.DynamicScopedRouteConfigs();
  buildCounterDynamicScopedRouteConfigs++;
  if (buildCounterDynamicScopedRouteConfigs < 3) {
    o.lastUpdated = 'foo';
    o.name = 'foo';
    o.scopedRouteConfigs = buildUnnamed2594();
    o.versionInfo = 'foo';
  }
  buildCounterDynamicScopedRouteConfigs--;
  return o;
}

void checkDynamicScopedRouteConfigs(api.DynamicScopedRouteConfigs o) {
  buildCounterDynamicScopedRouteConfigs++;
  if (buildCounterDynamicScopedRouteConfigs < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2594(o.scopedRouteConfigs!);
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicScopedRouteConfigs--;
}

core.int buildCounterExtension = 0;
api.Extension buildExtension() {
  final o = api.Extension();
  buildCounterExtension++;
  if (buildCounterExtension < 3) {
    o.category = 'foo';
    o.disabled = true;
    o.name = 'foo';
    o.typeDescriptor = 'foo';
    o.version = buildBuildVersion();
  }
  buildCounterExtension--;
  return o;
}

void checkExtension(api.Extension o) {
  buildCounterExtension++;
  if (buildCounterExtension < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.typeDescriptor!,
      unittest.equals('foo'),
    );
    checkBuildVersion(o.version!);
  }
  buildCounterExtension--;
}

core.int buildCounterGoogleRE2 = 0;
api.GoogleRE2 buildGoogleRE2() {
  final o = api.GoogleRE2();
  buildCounterGoogleRE2++;
  if (buildCounterGoogleRE2 < 3) {
    o.maxProgramSize = 42;
  }
  buildCounterGoogleRE2--;
  return o;
}

void checkGoogleRE2(api.GoogleRE2 o) {
  buildCounterGoogleRE2++;
  if (buildCounterGoogleRE2 < 3) {
    unittest.expect(
      o.maxProgramSize!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleRE2--;
}

core.Map<core.String, core.Object> buildUnnamed2595() => {
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

void checkUnnamed2595(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2596() => [
      buildUnnamed2595(),
      buildUnnamed2595(),
    ];

void checkUnnamed2596(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2595(o[0]);
  checkUnnamed2595(o[1]);
}

core.int buildCounterInlineScopedRouteConfigs = 0;
api.InlineScopedRouteConfigs buildInlineScopedRouteConfigs() {
  final o = api.InlineScopedRouteConfigs();
  buildCounterInlineScopedRouteConfigs++;
  if (buildCounterInlineScopedRouteConfigs < 3) {
    o.lastUpdated = 'foo';
    o.name = 'foo';
    o.scopedRouteConfigs = buildUnnamed2596();
  }
  buildCounterInlineScopedRouteConfigs--;
  return o;
}

void checkInlineScopedRouteConfigs(api.InlineScopedRouteConfigs o) {
  buildCounterInlineScopedRouteConfigs++;
  if (buildCounterInlineScopedRouteConfigs < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2596(o.scopedRouteConfigs!);
  }
  buildCounterInlineScopedRouteConfigs--;
}

core.int buildCounterListMatcher = 0;
api.ListMatcher buildListMatcher() {
  final o = api.ListMatcher();
  buildCounterListMatcher++;
  if (buildCounterListMatcher < 3) {
    o.oneOf = buildValueMatcher();
  }
  buildCounterListMatcher--;
  return o;
}

void checkListMatcher(api.ListMatcher o) {
  buildCounterListMatcher++;
  if (buildCounterListMatcher < 3) {
    checkValueMatcher(o.oneOf!);
  }
  buildCounterListMatcher--;
}

core.List<api.DynamicListener> buildUnnamed2597() => [
      buildDynamicListener(),
      buildDynamicListener(),
    ];

void checkUnnamed2597(core.List<api.DynamicListener> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicListener(o[0]);
  checkDynamicListener(o[1]);
}

core.List<api.StaticListener> buildUnnamed2598() => [
      buildStaticListener(),
      buildStaticListener(),
    ];

void checkUnnamed2598(core.List<api.StaticListener> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStaticListener(o[0]);
  checkStaticListener(o[1]);
}

core.int buildCounterListenersConfigDump = 0;
api.ListenersConfigDump buildListenersConfigDump() {
  final o = api.ListenersConfigDump();
  buildCounterListenersConfigDump++;
  if (buildCounterListenersConfigDump < 3) {
    o.dynamicListeners = buildUnnamed2597();
    o.staticListeners = buildUnnamed2598();
    o.versionInfo = 'foo';
  }
  buildCounterListenersConfigDump--;
  return o;
}

void checkListenersConfigDump(api.ListenersConfigDump o) {
  buildCounterListenersConfigDump++;
  if (buildCounterListenersConfigDump < 3) {
    checkUnnamed2597(o.dynamicListeners!);
    checkUnnamed2598(o.staticListeners!);
    unittest.expect(
      o.versionInfo!,
      unittest.equals('foo'),
    );
  }
  buildCounterListenersConfigDump--;
}

core.int buildCounterLocality = 0;
api.Locality buildLocality() {
  final o = api.Locality();
  buildCounterLocality++;
  if (buildCounterLocality < 3) {
    o.region = 'foo';
    o.subZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterLocality--;
  return o;
}

void checkLocality(api.Locality o) {
  buildCounterLocality++;
  if (buildCounterLocality < 3) {
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocality--;
}

core.List<core.String> buildUnnamed2599() => [
      'foo',
      'foo',
    ];

void checkUnnamed2599(core.List<core.String> o) {
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

core.List<api.Extension> buildUnnamed2600() => [
      buildExtension(),
      buildExtension(),
    ];

void checkUnnamed2600(core.List<api.Extension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtension(o[0]);
  checkExtension(o[1]);
}

core.List<api.Address> buildUnnamed2601() => [
      buildAddress(),
      buildAddress(),
    ];

void checkUnnamed2601(core.List<api.Address> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAddress(o[0]);
  checkAddress(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed2602() => {
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

void checkUnnamed2602(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterNode = 0;
api.Node buildNode() {
  final o = api.Node();
  buildCounterNode++;
  if (buildCounterNode < 3) {
    o.buildVersion = 'foo';
    o.clientFeatures = buildUnnamed2599();
    o.cluster = 'foo';
    o.extensions = buildUnnamed2600();
    o.id = 'foo';
    o.listeningAddresses = buildUnnamed2601();
    o.locality = buildLocality();
    o.metadata = buildUnnamed2602();
    o.userAgentBuildVersion = buildBuildVersion();
    o.userAgentName = 'foo';
    o.userAgentVersion = 'foo';
  }
  buildCounterNode--;
  return o;
}

void checkNode(api.Node o) {
  buildCounterNode++;
  if (buildCounterNode < 3) {
    unittest.expect(
      o.buildVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed2599(o.clientFeatures!);
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
    checkUnnamed2600(o.extensions!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed2601(o.listeningAddresses!);
    checkLocality(o.locality!);
    checkUnnamed2602(o.metadata!);
    checkBuildVersion(o.userAgentBuildVersion!);
    unittest.expect(
      o.userAgentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgentVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterNode--;
}

core.List<api.StructMatcher> buildUnnamed2603() => [
      buildStructMatcher(),
      buildStructMatcher(),
    ];

void checkUnnamed2603(core.List<api.StructMatcher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructMatcher(o[0]);
  checkStructMatcher(o[1]);
}

core.int buildCounterNodeMatcher = 0;
api.NodeMatcher buildNodeMatcher() {
  final o = api.NodeMatcher();
  buildCounterNodeMatcher++;
  if (buildCounterNodeMatcher < 3) {
    o.nodeId = buildStringMatcher();
    o.nodeMetadatas = buildUnnamed2603();
  }
  buildCounterNodeMatcher--;
  return o;
}

void checkNodeMatcher(api.NodeMatcher o) {
  buildCounterNodeMatcher++;
  if (buildCounterNodeMatcher < 3) {
    checkStringMatcher(o.nodeId!);
    checkUnnamed2603(o.nodeMetadatas!);
  }
  buildCounterNodeMatcher--;
}

core.int buildCounterNullMatch = 0;
api.NullMatch buildNullMatch() {
  final o = api.NullMatch();
  buildCounterNullMatch++;
  if (buildCounterNullMatch < 3) {}
  buildCounterNullMatch--;
  return o;
}

void checkNullMatch(api.NullMatch o) {
  buildCounterNullMatch++;
  if (buildCounterNullMatch < 3) {}
  buildCounterNullMatch--;
}

core.int buildCounterPathSegment = 0;
api.PathSegment buildPathSegment() {
  final o = api.PathSegment();
  buildCounterPathSegment++;
  if (buildCounterPathSegment < 3) {
    o.key = 'foo';
  }
  buildCounterPathSegment--;
  return o;
}

void checkPathSegment(api.PathSegment o) {
  buildCounterPathSegment++;
  if (buildCounterPathSegment < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterPathSegment--;
}

core.int buildCounterPerXdsConfig = 0;
api.PerXdsConfig buildPerXdsConfig() {
  final o = api.PerXdsConfig();
  buildCounterPerXdsConfig++;
  if (buildCounterPerXdsConfig < 3) {
    o.clusterConfig = buildClustersConfigDump();
    o.listenerConfig = buildListenersConfigDump();
    o.routeConfig = buildRoutesConfigDump();
    o.scopedRouteConfig = buildScopedRoutesConfigDump();
    o.status = 'foo';
  }
  buildCounterPerXdsConfig--;
  return o;
}

void checkPerXdsConfig(api.PerXdsConfig o) {
  buildCounterPerXdsConfig++;
  if (buildCounterPerXdsConfig < 3) {
    checkClustersConfigDump(o.clusterConfig!);
    checkListenersConfigDump(o.listenerConfig!);
    checkRoutesConfigDump(o.routeConfig!);
    checkScopedRoutesConfigDump(o.scopedRouteConfig!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerXdsConfig--;
}

core.int buildCounterPipe = 0;
api.Pipe buildPipe() {
  final o = api.Pipe();
  buildCounterPipe++;
  if (buildCounterPipe < 3) {
    o.mode = 42;
    o.path = 'foo';
  }
  buildCounterPipe--;
  return o;
}

void checkPipe(api.Pipe o) {
  buildCounterPipe++;
  if (buildCounterPipe < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterPipe--;
}

core.int buildCounterRegexMatcher = 0;
api.RegexMatcher buildRegexMatcher() {
  final o = api.RegexMatcher();
  buildCounterRegexMatcher++;
  if (buildCounterRegexMatcher < 3) {
    o.googleRe2 = buildGoogleRE2();
    o.regex = 'foo';
  }
  buildCounterRegexMatcher--;
  return o;
}

void checkRegexMatcher(api.RegexMatcher o) {
  buildCounterRegexMatcher++;
  if (buildCounterRegexMatcher < 3) {
    checkGoogleRE2(o.googleRe2!);
    unittest.expect(
      o.regex!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegexMatcher--;
}

core.List<api.DynamicRouteConfig> buildUnnamed2604() => [
      buildDynamicRouteConfig(),
      buildDynamicRouteConfig(),
    ];

void checkUnnamed2604(core.List<api.DynamicRouteConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicRouteConfig(o[0]);
  checkDynamicRouteConfig(o[1]);
}

core.List<api.StaticRouteConfig> buildUnnamed2605() => [
      buildStaticRouteConfig(),
      buildStaticRouteConfig(),
    ];

void checkUnnamed2605(core.List<api.StaticRouteConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStaticRouteConfig(o[0]);
  checkStaticRouteConfig(o[1]);
}

core.int buildCounterRoutesConfigDump = 0;
api.RoutesConfigDump buildRoutesConfigDump() {
  final o = api.RoutesConfigDump();
  buildCounterRoutesConfigDump++;
  if (buildCounterRoutesConfigDump < 3) {
    o.dynamicRouteConfigs = buildUnnamed2604();
    o.staticRouteConfigs = buildUnnamed2605();
  }
  buildCounterRoutesConfigDump--;
  return o;
}

void checkRoutesConfigDump(api.RoutesConfigDump o) {
  buildCounterRoutesConfigDump++;
  if (buildCounterRoutesConfigDump < 3) {
    checkUnnamed2604(o.dynamicRouteConfigs!);
    checkUnnamed2605(o.staticRouteConfigs!);
  }
  buildCounterRoutesConfigDump--;
}

core.List<api.DynamicScopedRouteConfigs> buildUnnamed2606() => [
      buildDynamicScopedRouteConfigs(),
      buildDynamicScopedRouteConfigs(),
    ];

void checkUnnamed2606(core.List<api.DynamicScopedRouteConfigs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicScopedRouteConfigs(o[0]);
  checkDynamicScopedRouteConfigs(o[1]);
}

core.List<api.InlineScopedRouteConfigs> buildUnnamed2607() => [
      buildInlineScopedRouteConfigs(),
      buildInlineScopedRouteConfigs(),
    ];

void checkUnnamed2607(core.List<api.InlineScopedRouteConfigs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineScopedRouteConfigs(o[0]);
  checkInlineScopedRouteConfigs(o[1]);
}

core.int buildCounterScopedRoutesConfigDump = 0;
api.ScopedRoutesConfigDump buildScopedRoutesConfigDump() {
  final o = api.ScopedRoutesConfigDump();
  buildCounterScopedRoutesConfigDump++;
  if (buildCounterScopedRoutesConfigDump < 3) {
    o.dynamicScopedRouteConfigs = buildUnnamed2606();
    o.inlineScopedRouteConfigs = buildUnnamed2607();
  }
  buildCounterScopedRoutesConfigDump--;
  return o;
}

void checkScopedRoutesConfigDump(api.ScopedRoutesConfigDump o) {
  buildCounterScopedRoutesConfigDump++;
  if (buildCounterScopedRoutesConfigDump < 3) {
    checkUnnamed2606(o.dynamicScopedRouteConfigs!);
    checkUnnamed2607(o.inlineScopedRouteConfigs!);
  }
  buildCounterScopedRoutesConfigDump--;
}

core.int buildCounterSemanticVersion = 0;
api.SemanticVersion buildSemanticVersion() {
  final o = api.SemanticVersion();
  buildCounterSemanticVersion++;
  if (buildCounterSemanticVersion < 3) {
    o.majorNumber = 42;
    o.minorNumber = 42;
    o.patch = 42;
  }
  buildCounterSemanticVersion--;
  return o;
}

void checkSemanticVersion(api.SemanticVersion o) {
  buildCounterSemanticVersion++;
  if (buildCounterSemanticVersion < 3) {
    unittest.expect(
      o.majorNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minorNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.patch!,
      unittest.equals(42),
    );
  }
  buildCounterSemanticVersion--;
}

core.int buildCounterSocketAddress = 0;
api.SocketAddress buildSocketAddress() {
  final o = api.SocketAddress();
  buildCounterSocketAddress++;
  if (buildCounterSocketAddress < 3) {
    o.address = 'foo';
    o.ipv4Compat = true;
    o.namedPort = 'foo';
    o.portValue = 42;
    o.protocol = 'foo';
    o.resolverName = 'foo';
  }
  buildCounterSocketAddress--;
  return o;
}

void checkSocketAddress(api.SocketAddress o) {
  buildCounterSocketAddress++;
  if (buildCounterSocketAddress < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ipv4Compat!, unittest.isTrue);
    unittest.expect(
      o.namedPort!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.portValue!,
      unittest.equals(42),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resolverName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSocketAddress--;
}

core.Map<core.String, core.Object> buildUnnamed2608() => {
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

void checkUnnamed2608(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStaticCluster = 0;
api.StaticCluster buildStaticCluster() {
  final o = api.StaticCluster();
  buildCounterStaticCluster++;
  if (buildCounterStaticCluster < 3) {
    o.cluster = buildUnnamed2608();
    o.lastUpdated = 'foo';
  }
  buildCounterStaticCluster--;
  return o;
}

void checkStaticCluster(api.StaticCluster o) {
  buildCounterStaticCluster++;
  if (buildCounterStaticCluster < 3) {
    checkUnnamed2608(o.cluster!);
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
  }
  buildCounterStaticCluster--;
}

core.Map<core.String, core.Object> buildUnnamed2609() => {
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

void checkUnnamed2609(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStaticListener = 0;
api.StaticListener buildStaticListener() {
  final o = api.StaticListener();
  buildCounterStaticListener++;
  if (buildCounterStaticListener < 3) {
    o.lastUpdated = 'foo';
    o.listener = buildUnnamed2609();
  }
  buildCounterStaticListener--;
  return o;
}

void checkStaticListener(api.StaticListener o) {
  buildCounterStaticListener++;
  if (buildCounterStaticListener < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    checkUnnamed2609(o.listener!);
  }
  buildCounterStaticListener--;
}

core.Map<core.String, core.Object> buildUnnamed2610() => {
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

void checkUnnamed2610(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStaticRouteConfig = 0;
api.StaticRouteConfig buildStaticRouteConfig() {
  final o = api.StaticRouteConfig();
  buildCounterStaticRouteConfig++;
  if (buildCounterStaticRouteConfig < 3) {
    o.lastUpdated = 'foo';
    o.routeConfig = buildUnnamed2610();
  }
  buildCounterStaticRouteConfig--;
  return o;
}

void checkStaticRouteConfig(api.StaticRouteConfig o) {
  buildCounterStaticRouteConfig++;
  if (buildCounterStaticRouteConfig < 3) {
    unittest.expect(
      o.lastUpdated!,
      unittest.equals('foo'),
    );
    checkUnnamed2610(o.routeConfig!);
  }
  buildCounterStaticRouteConfig--;
}

core.int buildCounterStringMatcher = 0;
api.StringMatcher buildStringMatcher() {
  final o = api.StringMatcher();
  buildCounterStringMatcher++;
  if (buildCounterStringMatcher < 3) {
    o.exact = 'foo';
    o.ignoreCase = true;
    o.prefix = 'foo';
    o.regex = 'foo';
    o.safeRegex = buildRegexMatcher();
    o.suffix = 'foo';
  }
  buildCounterStringMatcher--;
  return o;
}

void checkStringMatcher(api.StringMatcher o) {
  buildCounterStringMatcher++;
  if (buildCounterStringMatcher < 3) {
    unittest.expect(
      o.exact!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ignoreCase!, unittest.isTrue);
    unittest.expect(
      o.prefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regex!,
      unittest.equals('foo'),
    );
    checkRegexMatcher(o.safeRegex!);
    unittest.expect(
      o.suffix!,
      unittest.equals('foo'),
    );
  }
  buildCounterStringMatcher--;
}

core.List<api.PathSegment> buildUnnamed2611() => [
      buildPathSegment(),
      buildPathSegment(),
    ];

void checkUnnamed2611(core.List<api.PathSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathSegment(o[0]);
  checkPathSegment(o[1]);
}

core.int buildCounterStructMatcher = 0;
api.StructMatcher buildStructMatcher() {
  final o = api.StructMatcher();
  buildCounterStructMatcher++;
  if (buildCounterStructMatcher < 3) {
    o.path = buildUnnamed2611();
    o.value = buildValueMatcher();
  }
  buildCounterStructMatcher--;
  return o;
}

void checkStructMatcher(api.StructMatcher o) {
  buildCounterStructMatcher++;
  if (buildCounterStructMatcher < 3) {
    checkUnnamed2611(o.path!);
    checkValueMatcher(o.value!);
  }
  buildCounterStructMatcher--;
}

core.Map<core.String, core.Object> buildUnnamed2612() => {
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

void checkUnnamed2612(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterUpdateFailureState = 0;
api.UpdateFailureState buildUpdateFailureState() {
  final o = api.UpdateFailureState();
  buildCounterUpdateFailureState++;
  if (buildCounterUpdateFailureState < 3) {
    o.details = 'foo';
    o.failedConfiguration = buildUnnamed2612();
    o.lastUpdateAttempt = 'foo';
  }
  buildCounterUpdateFailureState--;
  return o;
}

void checkUpdateFailureState(api.UpdateFailureState o) {
  buildCounterUpdateFailureState++;
  if (buildCounterUpdateFailureState < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    checkUnnamed2612(o.failedConfiguration!);
    unittest.expect(
      o.lastUpdateAttempt!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateFailureState--;
}

core.int buildCounterValueMatcher = 0;
api.ValueMatcher buildValueMatcher() {
  final o = api.ValueMatcher();
  buildCounterValueMatcher++;
  if (buildCounterValueMatcher < 3) {
    o.boolMatch = true;
    o.doubleMatch = buildDoubleMatcher();
    o.listMatch = buildListMatcher();
    o.nullMatch = buildNullMatch();
    o.presentMatch = true;
    o.stringMatch = buildStringMatcher();
  }
  buildCounterValueMatcher--;
  return o;
}

void checkValueMatcher(api.ValueMatcher o) {
  buildCounterValueMatcher++;
  if (buildCounterValueMatcher < 3) {
    unittest.expect(o.boolMatch!, unittest.isTrue);
    checkDoubleMatcher(o.doubleMatch!);
    checkListMatcher(o.listMatch!);
    checkNullMatch(o.nullMatch!);
    unittest.expect(o.presentMatch!, unittest.isTrue);
    checkStringMatcher(o.stringMatch!);
  }
  buildCounterValueMatcher--;
}

void main() {
  unittest.group('obj-schema-Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Address.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAddress(od);
    });
  });

  unittest.group('obj-schema-BuildVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildVersion(od);
    });
  });

  unittest.group('obj-schema-ClientConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientConfig(od);
    });
  });

  unittest.group('obj-schema-ClientStatusRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientStatusRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientStatusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientStatusRequest(od);
    });
  });

  unittest.group('obj-schema-ClientStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientStatusResponse(od);
    });
  });

  unittest.group('obj-schema-ClustersConfigDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClustersConfigDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClustersConfigDump.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClustersConfigDump(od);
    });
  });

  unittest.group('obj-schema-DoubleMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleMatcher(od);
    });
  });

  unittest.group('obj-schema-DoubleRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDoubleRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DoubleRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDoubleRange(od);
    });
  });

  unittest.group('obj-schema-DynamicCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicCluster(od);
    });
  });

  unittest.group('obj-schema-DynamicListener', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicListener();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicListener.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicListener(od);
    });
  });

  unittest.group('obj-schema-DynamicListenerState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicListenerState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicListenerState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicListenerState(od);
    });
  });

  unittest.group('obj-schema-DynamicRouteConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicRouteConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicRouteConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicRouteConfig(od);
    });
  });

  unittest.group('obj-schema-DynamicScopedRouteConfigs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicScopedRouteConfigs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicScopedRouteConfigs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicScopedRouteConfigs(od);
    });
  });

  unittest.group('obj-schema-Extension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Extension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExtension(od);
    });
  });

  unittest.group('obj-schema-GoogleRE2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRE2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleRE2.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRE2(od);
    });
  });

  unittest.group('obj-schema-InlineScopedRouteConfigs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineScopedRouteConfigs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineScopedRouteConfigs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineScopedRouteConfigs(od);
    });
  });

  unittest.group('obj-schema-ListMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMatcher(od);
    });
  });

  unittest.group('obj-schema-ListenersConfigDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListenersConfigDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListenersConfigDump.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListenersConfigDump(od);
    });
  });

  unittest.group('obj-schema-Locality', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocality();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Locality.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocality(od);
    });
  });

  unittest.group('obj-schema-Node', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Node.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNode(od);
    });
  });

  unittest.group('obj-schema-NodeMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeMatcher(od);
    });
  });

  unittest.group('obj-schema-NullMatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNullMatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NullMatch.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNullMatch(od);
    });
  });

  unittest.group('obj-schema-PathSegment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathSegment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathSegment(od);
    });
  });

  unittest.group('obj-schema-PerXdsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerXdsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerXdsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerXdsConfig(od);
    });
  });

  unittest.group('obj-schema-Pipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pipe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPipe(od);
    });
  });

  unittest.group('obj-schema-RegexMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegexMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegexMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegexMatcher(od);
    });
  });

  unittest.group('obj-schema-RoutesConfigDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoutesConfigDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoutesConfigDump.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoutesConfigDump(od);
    });
  });

  unittest.group('obj-schema-ScopedRoutesConfigDump', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScopedRoutesConfigDump();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScopedRoutesConfigDump.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScopedRoutesConfigDump(od);
    });
  });

  unittest.group('obj-schema-SemanticVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSemanticVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SemanticVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSemanticVersion(od);
    });
  });

  unittest.group('obj-schema-SocketAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSocketAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SocketAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSocketAddress(od);
    });
  });

  unittest.group('obj-schema-StaticCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticCluster.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStaticCluster(od);
    });
  });

  unittest.group('obj-schema-StaticListener', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticListener();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticListener.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStaticListener(od);
    });
  });

  unittest.group('obj-schema-StaticRouteConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStaticRouteConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StaticRouteConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStaticRouteConfig(od);
    });
  });

  unittest.group('obj-schema-StringMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StringMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStringMatcher(od);
    });
  });

  unittest.group('obj-schema-StructMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructMatcher(od);
    });
  });

  unittest.group('obj-schema-UpdateFailureState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateFailureState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateFailureState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateFailureState(od);
    });
  });

  unittest.group('obj-schema-ValueMatcher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueMatcher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueMatcher.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValueMatcher(od);
    });
  });

  unittest.group('resource-DiscoveryResource', () {
    unittest.test('method--clientStatus', () async {
      final mock = HttpServerMock();
      final res = api.TrafficDirectorServiceApi(mock).discovery;
      final arg_request = buildClientStatusRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClientStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClientStatusRequest(obj);

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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v2/discovery:client_status'),
        );
        pathOffset += 26;

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
        final resp = convert.json.encode(buildClientStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.clientStatus(arg_request, $fields: arg_$fields);
      checkClientStatusResponse(response as api.ClientStatusResponse);
    });
  });
}
