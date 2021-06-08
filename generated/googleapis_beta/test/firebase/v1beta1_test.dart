// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/firebase/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddFirebaseRequest = 0;
api.AddFirebaseRequest buildAddFirebaseRequest() {
  var o = api.AddFirebaseRequest();
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {
    o.locationId = 'foo';
  }
  buildCounterAddFirebaseRequest--;
  return o;
}

void checkAddFirebaseRequest(api.AddFirebaseRequest o) {
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddFirebaseRequest--;
}

core.int buildCounterAddGoogleAnalyticsRequest = 0;
api.AddGoogleAnalyticsRequest buildAddGoogleAnalyticsRequest() {
  var o = api.AddGoogleAnalyticsRequest();
  buildCounterAddGoogleAnalyticsRequest++;
  if (buildCounterAddGoogleAnalyticsRequest < 3) {
    o.analyticsAccountId = 'foo';
    o.analyticsPropertyId = 'foo';
  }
  buildCounterAddGoogleAnalyticsRequest--;
  return o;
}

void checkAddGoogleAnalyticsRequest(api.AddGoogleAnalyticsRequest o) {
  buildCounterAddGoogleAnalyticsRequest++;
  if (buildCounterAddGoogleAnalyticsRequest < 3) {
    unittest.expect(
      o.analyticsAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.analyticsPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddGoogleAnalyticsRequest--;
}

core.int buildCounterAdminSdkConfig = 0;
api.AdminSdkConfig buildAdminSdkConfig() {
  var o = api.AdminSdkConfig();
  buildCounterAdminSdkConfig++;
  if (buildCounterAdminSdkConfig < 3) {
    o.databaseURL = 'foo';
    o.locationId = 'foo';
    o.projectId = 'foo';
    o.storageBucket = 'foo';
  }
  buildCounterAdminSdkConfig--;
  return o;
}

void checkAdminSdkConfig(api.AdminSdkConfig o) {
  buildCounterAdminSdkConfig++;
  if (buildCounterAdminSdkConfig < 3) {
    unittest.expect(
      o.databaseURL!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageBucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdminSdkConfig--;
}

core.List<api.StreamMapping> buildUnnamed8118() {
  var o = <api.StreamMapping>[];
  o.add(buildStreamMapping());
  o.add(buildStreamMapping());
  return o;
}

void checkUnnamed8118(core.List<api.StreamMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamMapping(o[0] as api.StreamMapping);
  checkStreamMapping(o[1] as api.StreamMapping);
}

core.int buildCounterAnalyticsDetails = 0;
api.AnalyticsDetails buildAnalyticsDetails() {
  var o = api.AnalyticsDetails();
  buildCounterAnalyticsDetails++;
  if (buildCounterAnalyticsDetails < 3) {
    o.analyticsProperty = buildAnalyticsProperty();
    o.streamMappings = buildUnnamed8118();
  }
  buildCounterAnalyticsDetails--;
  return o;
}

void checkAnalyticsDetails(api.AnalyticsDetails o) {
  buildCounterAnalyticsDetails++;
  if (buildCounterAnalyticsDetails < 3) {
    checkAnalyticsProperty(o.analyticsProperty! as api.AnalyticsProperty);
    checkUnnamed8118(o.streamMappings!);
  }
  buildCounterAnalyticsDetails--;
}

core.int buildCounterAnalyticsProperty = 0;
api.AnalyticsProperty buildAnalyticsProperty() {
  var o = api.AnalyticsProperty();
  buildCounterAnalyticsProperty++;
  if (buildCounterAnalyticsProperty < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterAnalyticsProperty--;
  return o;
}

void checkAnalyticsProperty(api.AnalyticsProperty o) {
  buildCounterAnalyticsProperty++;
  if (buildCounterAnalyticsProperty < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnalyticsProperty--;
}

core.int buildCounterAndroidApp = 0;
api.AndroidApp buildAndroidApp() {
  var o = api.AndroidApp();
  buildCounterAndroidApp++;
  if (buildCounterAndroidApp < 3) {
    o.appId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
    o.projectId = 'foo';
  }
  buildCounterAndroidApp--;
  return o;
}

void checkAndroidApp(api.AndroidApp o) {
  buildCounterAndroidApp++;
  if (buildCounterAndroidApp < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidApp--;
}

core.int buildCounterAndroidAppConfig = 0;
api.AndroidAppConfig buildAndroidAppConfig() {
  var o = api.AndroidAppConfig();
  buildCounterAndroidAppConfig++;
  if (buildCounterAndroidAppConfig < 3) {
    o.configFileContents = 'foo';
    o.configFilename = 'foo';
  }
  buildCounterAndroidAppConfig--;
  return o;
}

void checkAndroidAppConfig(api.AndroidAppConfig o) {
  buildCounterAndroidAppConfig++;
  if (buildCounterAndroidAppConfig < 3) {
    unittest.expect(
      o.configFileContents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configFilename!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidAppConfig--;
}

core.int buildCounterDefaultResources = 0;
api.DefaultResources buildDefaultResources() {
  var o = api.DefaultResources();
  buildCounterDefaultResources++;
  if (buildCounterDefaultResources < 3) {
    o.hostingSite = 'foo';
    o.locationId = 'foo';
    o.realtimeDatabaseInstance = 'foo';
    o.storageBucket = 'foo';
  }
  buildCounterDefaultResources--;
  return o;
}

void checkDefaultResources(api.DefaultResources o) {
  buildCounterDefaultResources++;
  if (buildCounterDefaultResources < 3) {
    unittest.expect(
      o.hostingSite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.realtimeDatabaseInstance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageBucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterDefaultResources--;
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

core.int buildCounterFinalizeDefaultLocationRequest = 0;
api.FinalizeDefaultLocationRequest buildFinalizeDefaultLocationRequest() {
  var o = api.FinalizeDefaultLocationRequest();
  buildCounterFinalizeDefaultLocationRequest++;
  if (buildCounterFinalizeDefaultLocationRequest < 3) {
    o.locationId = 'foo';
  }
  buildCounterFinalizeDefaultLocationRequest--;
  return o;
}

void checkFinalizeDefaultLocationRequest(api.FinalizeDefaultLocationRequest o) {
  buildCounterFinalizeDefaultLocationRequest++;
  if (buildCounterFinalizeDefaultLocationRequest < 3) {
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFinalizeDefaultLocationRequest--;
}

core.int buildCounterFirebaseAppInfo = 0;
api.FirebaseAppInfo buildFirebaseAppInfo() {
  var o = api.FirebaseAppInfo();
  buildCounterFirebaseAppInfo++;
  if (buildCounterFirebaseAppInfo < 3) {
    o.appId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.namespace = 'foo';
    o.platform = 'foo';
  }
  buildCounterFirebaseAppInfo--;
  return o;
}

void checkFirebaseAppInfo(api.FirebaseAppInfo o) {
  buildCounterFirebaseAppInfo++;
  if (buildCounterFirebaseAppInfo < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
  }
  buildCounterFirebaseAppInfo--;
}

core.int buildCounterFirebaseProject = 0;
api.FirebaseProject buildFirebaseProject() {
  var o = api.FirebaseProject();
  buildCounterFirebaseProject++;
  if (buildCounterFirebaseProject < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.projectNumber = 'foo';
    o.resources = buildDefaultResources();
    o.state = 'foo';
  }
  buildCounterFirebaseProject--;
  return o;
}

void checkFirebaseProject(api.FirebaseProject o) {
  buildCounterFirebaseProject++;
  if (buildCounterFirebaseProject < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    checkDefaultResources(o.resources! as api.DefaultResources);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterFirebaseProject--;
}

core.int buildCounterIosApp = 0;
api.IosApp buildIosApp() {
  var o = api.IosApp();
  buildCounterIosApp++;
  if (buildCounterIosApp < 3) {
    o.appId = 'foo';
    o.appStoreId = 'foo';
    o.bundleId = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
  }
  buildCounterIosApp--;
  return o;
}

void checkIosApp(api.IosApp o) {
  buildCounterIosApp++;
  if (buildCounterIosApp < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appStoreId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosApp--;
}

core.int buildCounterIosAppConfig = 0;
api.IosAppConfig buildIosAppConfig() {
  var o = api.IosAppConfig();
  buildCounterIosAppConfig++;
  if (buildCounterIosAppConfig < 3) {
    o.configFileContents = 'foo';
    o.configFilename = 'foo';
  }
  buildCounterIosAppConfig--;
  return o;
}

void checkIosAppConfig(api.IosAppConfig o) {
  buildCounterIosAppConfig++;
  if (buildCounterIosAppConfig < 3) {
    unittest.expect(
      o.configFileContents!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configFilename!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosAppConfig--;
}

core.List<api.AndroidApp> buildUnnamed8119() {
  var o = <api.AndroidApp>[];
  o.add(buildAndroidApp());
  o.add(buildAndroidApp());
  return o;
}

void checkUnnamed8119(core.List<api.AndroidApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidApp(o[0] as api.AndroidApp);
  checkAndroidApp(o[1] as api.AndroidApp);
}

core.int buildCounterListAndroidAppsResponse = 0;
api.ListAndroidAppsResponse buildListAndroidAppsResponse() {
  var o = api.ListAndroidAppsResponse();
  buildCounterListAndroidAppsResponse++;
  if (buildCounterListAndroidAppsResponse < 3) {
    o.apps = buildUnnamed8119();
    o.nextPageToken = 'foo';
  }
  buildCounterListAndroidAppsResponse--;
  return o;
}

void checkListAndroidAppsResponse(api.ListAndroidAppsResponse o) {
  buildCounterListAndroidAppsResponse++;
  if (buildCounterListAndroidAppsResponse < 3) {
    checkUnnamed8119(o.apps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAndroidAppsResponse--;
}

core.List<api.Location> buildUnnamed8120() {
  var o = <api.Location>[];
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

void checkUnnamed8120(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0] as api.Location);
  checkLocation(o[1] as api.Location);
}

core.int buildCounterListAvailableLocationsResponse = 0;
api.ListAvailableLocationsResponse buildListAvailableLocationsResponse() {
  var o = api.ListAvailableLocationsResponse();
  buildCounterListAvailableLocationsResponse++;
  if (buildCounterListAvailableLocationsResponse < 3) {
    o.locations = buildUnnamed8120();
    o.nextPageToken = 'foo';
  }
  buildCounterListAvailableLocationsResponse--;
  return o;
}

void checkListAvailableLocationsResponse(api.ListAvailableLocationsResponse o) {
  buildCounterListAvailableLocationsResponse++;
  if (buildCounterListAvailableLocationsResponse < 3) {
    checkUnnamed8120(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAvailableLocationsResponse--;
}

core.List<api.ProjectInfo> buildUnnamed8121() {
  var o = <api.ProjectInfo>[];
  o.add(buildProjectInfo());
  o.add(buildProjectInfo());
  return o;
}

void checkUnnamed8121(core.List<api.ProjectInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectInfo(o[0] as api.ProjectInfo);
  checkProjectInfo(o[1] as api.ProjectInfo);
}

core.int buildCounterListAvailableProjectsResponse = 0;
api.ListAvailableProjectsResponse buildListAvailableProjectsResponse() {
  var o = api.ListAvailableProjectsResponse();
  buildCounterListAvailableProjectsResponse++;
  if (buildCounterListAvailableProjectsResponse < 3) {
    o.nextPageToken = 'foo';
    o.projectInfo = buildUnnamed8121();
  }
  buildCounterListAvailableProjectsResponse--;
  return o;
}

void checkListAvailableProjectsResponse(api.ListAvailableProjectsResponse o) {
  buildCounterListAvailableProjectsResponse++;
  if (buildCounterListAvailableProjectsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8121(o.projectInfo!);
  }
  buildCounterListAvailableProjectsResponse--;
}

core.List<api.FirebaseProject> buildUnnamed8122() {
  var o = <api.FirebaseProject>[];
  o.add(buildFirebaseProject());
  o.add(buildFirebaseProject());
  return o;
}

void checkUnnamed8122(core.List<api.FirebaseProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirebaseProject(o[0] as api.FirebaseProject);
  checkFirebaseProject(o[1] as api.FirebaseProject);
}

core.int buildCounterListFirebaseProjectsResponse = 0;
api.ListFirebaseProjectsResponse buildListFirebaseProjectsResponse() {
  var o = api.ListFirebaseProjectsResponse();
  buildCounterListFirebaseProjectsResponse++;
  if (buildCounterListFirebaseProjectsResponse < 3) {
    o.nextPageToken = 'foo';
    o.results = buildUnnamed8122();
  }
  buildCounterListFirebaseProjectsResponse--;
  return o;
}

void checkListFirebaseProjectsResponse(api.ListFirebaseProjectsResponse o) {
  buildCounterListFirebaseProjectsResponse++;
  if (buildCounterListFirebaseProjectsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8122(o.results!);
  }
  buildCounterListFirebaseProjectsResponse--;
}

core.List<api.IosApp> buildUnnamed8123() {
  var o = <api.IosApp>[];
  o.add(buildIosApp());
  o.add(buildIosApp());
  return o;
}

void checkUnnamed8123(core.List<api.IosApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosApp(o[0] as api.IosApp);
  checkIosApp(o[1] as api.IosApp);
}

core.int buildCounterListIosAppsResponse = 0;
api.ListIosAppsResponse buildListIosAppsResponse() {
  var o = api.ListIosAppsResponse();
  buildCounterListIosAppsResponse++;
  if (buildCounterListIosAppsResponse < 3) {
    o.apps = buildUnnamed8123();
    o.nextPageToken = 'foo';
  }
  buildCounterListIosAppsResponse--;
  return o;
}

void checkListIosAppsResponse(api.ListIosAppsResponse o) {
  buildCounterListIosAppsResponse++;
  if (buildCounterListIosAppsResponse < 3) {
    checkUnnamed8123(o.apps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListIosAppsResponse--;
}

core.List<api.ShaCertificate> buildUnnamed8124() {
  var o = <api.ShaCertificate>[];
  o.add(buildShaCertificate());
  o.add(buildShaCertificate());
  return o;
}

void checkUnnamed8124(core.List<api.ShaCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShaCertificate(o[0] as api.ShaCertificate);
  checkShaCertificate(o[1] as api.ShaCertificate);
}

core.int buildCounterListShaCertificatesResponse = 0;
api.ListShaCertificatesResponse buildListShaCertificatesResponse() {
  var o = api.ListShaCertificatesResponse();
  buildCounterListShaCertificatesResponse++;
  if (buildCounterListShaCertificatesResponse < 3) {
    o.certificates = buildUnnamed8124();
  }
  buildCounterListShaCertificatesResponse--;
  return o;
}

void checkListShaCertificatesResponse(api.ListShaCertificatesResponse o) {
  buildCounterListShaCertificatesResponse++;
  if (buildCounterListShaCertificatesResponse < 3) {
    checkUnnamed8124(o.certificates!);
  }
  buildCounterListShaCertificatesResponse--;
}

core.List<api.WebApp> buildUnnamed8125() {
  var o = <api.WebApp>[];
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

void checkUnnamed8125(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0] as api.WebApp);
  checkWebApp(o[1] as api.WebApp);
}

core.int buildCounterListWebAppsResponse = 0;
api.ListWebAppsResponse buildListWebAppsResponse() {
  var o = api.ListWebAppsResponse();
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    o.apps = buildUnnamed8125();
    o.nextPageToken = 'foo';
  }
  buildCounterListWebAppsResponse--;
  return o;
}

void checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    checkUnnamed8125(o.apps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListWebAppsResponse--;
}

core.List<core.String> buildUnnamed8126() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8126(core.List<core.String> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.features = buildUnnamed8126();
    o.locationId = 'foo';
    o.type = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed8126(o.features!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMessageSet = 0;
api.MessageSet buildMessageSet() {
  var o = api.MessageSet();
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {}
  buildCounterMessageSet--;
  return o;
}

void checkMessageSet(api.MessageSet o) {
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {}
  buildCounterMessageSet--;
}

core.Map<core.String, core.Object> buildUnnamed8127() {
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

void checkUnnamed8127(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8128() {
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

void checkUnnamed8128(core.Map<core.String, core.Object> o) {
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
  var o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed8127();
    o.name = 'foo';
    o.response = buildUnnamed8128();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error! as api.Status);
    checkUnnamed8127(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8128(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterProjectInfo = 0;
api.ProjectInfo buildProjectInfo() {
  var o = api.ProjectInfo();
  buildCounterProjectInfo++;
  if (buildCounterProjectInfo < 3) {
    o.displayName = 'foo';
    o.locationId = 'foo';
    o.project = 'foo';
  }
  buildCounterProjectInfo--;
  return o;
}

void checkProjectInfo(api.ProjectInfo o) {
  buildCounterProjectInfo++;
  if (buildCounterProjectInfo < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectInfo--;
}

core.int buildCounterRemoveAnalyticsRequest = 0;
api.RemoveAnalyticsRequest buildRemoveAnalyticsRequest() {
  var o = api.RemoveAnalyticsRequest();
  buildCounterRemoveAnalyticsRequest++;
  if (buildCounterRemoveAnalyticsRequest < 3) {
    o.analyticsPropertyId = 'foo';
  }
  buildCounterRemoveAnalyticsRequest--;
  return o;
}

void checkRemoveAnalyticsRequest(api.RemoveAnalyticsRequest o) {
  buildCounterRemoveAnalyticsRequest++;
  if (buildCounterRemoveAnalyticsRequest < 3) {
    unittest.expect(
      o.analyticsPropertyId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoveAnalyticsRequest--;
}

core.List<api.FirebaseAppInfo> buildUnnamed8129() {
  var o = <api.FirebaseAppInfo>[];
  o.add(buildFirebaseAppInfo());
  o.add(buildFirebaseAppInfo());
  return o;
}

void checkUnnamed8129(core.List<api.FirebaseAppInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirebaseAppInfo(o[0] as api.FirebaseAppInfo);
  checkFirebaseAppInfo(o[1] as api.FirebaseAppInfo);
}

core.int buildCounterSearchFirebaseAppsResponse = 0;
api.SearchFirebaseAppsResponse buildSearchFirebaseAppsResponse() {
  var o = api.SearchFirebaseAppsResponse();
  buildCounterSearchFirebaseAppsResponse++;
  if (buildCounterSearchFirebaseAppsResponse < 3) {
    o.apps = buildUnnamed8129();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchFirebaseAppsResponse--;
  return o;
}

void checkSearchFirebaseAppsResponse(api.SearchFirebaseAppsResponse o) {
  buildCounterSearchFirebaseAppsResponse++;
  if (buildCounterSearchFirebaseAppsResponse < 3) {
    checkUnnamed8129(o.apps!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchFirebaseAppsResponse--;
}

core.int buildCounterShaCertificate = 0;
api.ShaCertificate buildShaCertificate() {
  var o = api.ShaCertificate();
  buildCounterShaCertificate++;
  if (buildCounterShaCertificate < 3) {
    o.certType = 'foo';
    o.name = 'foo';
    o.shaHash = 'foo';
  }
  buildCounterShaCertificate--;
  return o;
}

void checkShaCertificate(api.ShaCertificate o) {
  buildCounterShaCertificate++;
  if (buildCounterShaCertificate < 3) {
    unittest.expect(
      o.certType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shaHash!,
      unittest.equals('foo'),
    );
  }
  buildCounterShaCertificate--;
}

core.Map<core.String, core.Object> buildUnnamed8130() {
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

void checkUnnamed8130(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed8131() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed8130());
  o.add(buildUnnamed8130());
  return o;
}

void checkUnnamed8131(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8130(o[0]);
  checkUnnamed8130(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8131();
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
    checkUnnamed8131(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusProto = 0;
api.StatusProto buildStatusProto() {
  var o = api.StatusProto();
  buildCounterStatusProto++;
  if (buildCounterStatusProto < 3) {
    o.canonicalCode = 42;
    o.code = 42;
    o.message = 'foo';
    o.messageSet = buildMessageSet();
    o.space = 'foo';
  }
  buildCounterStatusProto--;
  return o;
}

void checkStatusProto(api.StatusProto o) {
  buildCounterStatusProto++;
  if (buildCounterStatusProto < 3) {
    unittest.expect(
      o.canonicalCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkMessageSet(o.messageSet! as api.MessageSet);
    unittest.expect(
      o.space!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusProto--;
}

core.int buildCounterStreamMapping = 0;
api.StreamMapping buildStreamMapping() {
  var o = api.StreamMapping();
  buildCounterStreamMapping++;
  if (buildCounterStreamMapping < 3) {
    o.app = 'foo';
    o.measurementId = 'foo';
    o.streamId = 'foo';
  }
  buildCounterStreamMapping--;
  return o;
}

void checkStreamMapping(api.StreamMapping o) {
  buildCounterStreamMapping++;
  if (buildCounterStreamMapping < 3) {
    unittest.expect(
      o.app!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamMapping--;
}

core.List<core.String> buildUnnamed8132() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed8132(core.List<core.String> o) {
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

core.int buildCounterWebApp = 0;
api.WebApp buildWebApp() {
  var o = api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.appId = 'foo';
    o.appUrls = buildUnnamed8132();
    o.displayName = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.webId = 'foo';
  }
  buildCounterWebApp--;
  return o;
}

void checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkUnnamed8132(o.appUrls!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppConfig = 0;
api.WebAppConfig buildWebAppConfig() {
  var o = api.WebAppConfig();
  buildCounterWebAppConfig++;
  if (buildCounterWebAppConfig < 3) {
    o.apiKey = 'foo';
    o.appId = 'foo';
    o.authDomain = 'foo';
    o.databaseURL = 'foo';
    o.locationId = 'foo';
    o.measurementId = 'foo';
    o.messagingSenderId = 'foo';
    o.projectId = 'foo';
    o.storageBucket = 'foo';
  }
  buildCounterWebAppConfig--;
  return o;
}

void checkWebAppConfig(api.WebAppConfig o) {
  buildCounterWebAppConfig++;
  if (buildCounterWebAppConfig < 3) {
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.databaseURL!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messagingSenderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storageBucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebAppConfig--;
}

void main() {
  unittest.group('obj-schema-AddFirebaseRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddFirebaseRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddFirebaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddFirebaseRequest(od as api.AddFirebaseRequest);
    });
  });

  unittest.group('obj-schema-AddGoogleAnalyticsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAddGoogleAnalyticsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AddGoogleAnalyticsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddGoogleAnalyticsRequest(od as api.AddGoogleAnalyticsRequest);
    });
  });

  unittest.group('obj-schema-AdminSdkConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAdminSdkConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AdminSdkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdminSdkConfig(od as api.AdminSdkConfig);
    });
  });

  unittest.group('obj-schema-AnalyticsDetails', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnalyticsDetails();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AnalyticsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyticsDetails(od as api.AnalyticsDetails);
    });
  });

  unittest.group('obj-schema-AnalyticsProperty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnalyticsProperty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AnalyticsProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalyticsProperty(od as api.AnalyticsProperty);
    });
  });

  unittest.group('obj-schema-AndroidApp', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidApp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.AndroidApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAndroidApp(od as api.AndroidApp);
    });
  });

  unittest.group('obj-schema-AndroidAppConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAndroidAppConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AndroidAppConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidAppConfig(od as api.AndroidAppConfig);
    });
  });

  unittest.group('obj-schema-DefaultResources', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDefaultResources();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DefaultResources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultResources(od as api.DefaultResources);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FinalizeDefaultLocationRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFinalizeDefaultLocationRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FinalizeDefaultLocationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinalizeDefaultLocationRequest(
          od as api.FinalizeDefaultLocationRequest);
    });
  });

  unittest.group('obj-schema-FirebaseAppInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFirebaseAppInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FirebaseAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirebaseAppInfo(od as api.FirebaseAppInfo);
    });
  });

  unittest.group('obj-schema-FirebaseProject', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFirebaseProject();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.FirebaseProject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirebaseProject(od as api.FirebaseProject);
    });
  });

  unittest.group('obj-schema-IosApp', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosApp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.IosApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIosApp(od as api.IosApp);
    });
  });

  unittest.group('obj-schema-IosAppConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildIosAppConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.IosAppConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIosAppConfig(od as api.IosAppConfig);
    });
  });

  unittest.group('obj-schema-ListAndroidAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListAndroidAppsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListAndroidAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAndroidAppsResponse(od as api.ListAndroidAppsResponse);
    });
  });

  unittest.group('obj-schema-ListAvailableLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListAvailableLocationsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListAvailableLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAvailableLocationsResponse(
          od as api.ListAvailableLocationsResponse);
    });
  });

  unittest.group('obj-schema-ListAvailableProjectsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListAvailableProjectsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListAvailableProjectsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAvailableProjectsResponse(
          od as api.ListAvailableProjectsResponse);
    });
  });

  unittest.group('obj-schema-ListFirebaseProjectsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListFirebaseProjectsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListFirebaseProjectsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFirebaseProjectsResponse(od as api.ListFirebaseProjectsResponse);
    });
  });

  unittest.group('obj-schema-ListIosAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListIosAppsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListIosAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListIosAppsResponse(od as api.ListIosAppsResponse);
    });
  });

  unittest.group('obj-schema-ListShaCertificatesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListShaCertificatesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListShaCertificatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListShaCertificatesResponse(od as api.ListShaCertificatesResponse);
    });
  });

  unittest.group('obj-schema-ListWebAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListWebAppsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListWebAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWebAppsResponse(od as api.ListWebAppsResponse);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      var o = buildLocation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od as api.Location);
    });
  });

  unittest.group('obj-schema-MessageSet', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMessageSet();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.MessageSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessageSet(od as api.MessageSet);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOperation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od as api.Operation);
    });
  });

  unittest.group('obj-schema-ProjectInfo', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProjectInfo();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProjectInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectInfo(od as api.ProjectInfo);
    });
  });

  unittest.group('obj-schema-RemoveAnalyticsRequest', () {
    unittest.test('to-json--from-json', () async {
      var o = buildRemoveAnalyticsRequest();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.RemoveAnalyticsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveAnalyticsRequest(od as api.RemoveAnalyticsRequest);
    });
  });

  unittest.group('obj-schema-SearchFirebaseAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSearchFirebaseAppsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SearchFirebaseAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchFirebaseAppsResponse(od as api.SearchFirebaseAppsResponse);
    });
  });

  unittest.group('obj-schema-ShaCertificate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildShaCertificate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ShaCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShaCertificate(od as api.ShaCertificate);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatus();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-StatusProto', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStatusProto();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StatusProto.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusProto(od as api.StatusProto);
    });
  });

  unittest.group('obj-schema-StreamMapping', () {
    unittest.test('to-json--from-json', () async {
      var o = buildStreamMapping();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.StreamMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamMapping(od as api.StreamMapping);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebApp();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.WebApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebApp(od as api.WebApp);
    });
  });

  unittest.group('obj-schema-WebAppConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWebAppConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WebAppConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWebAppConfig(od as api.WebAppConfig);
    });
  });

  unittest.group('resource-AvailableProjectsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).availableProjects;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals("v1beta1/availableProjects"),
        );
        pathOffset += 25;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAvailableProjectsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAvailableProjectsResponse(
          response as api.ListAvailableProjectsResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--addFirebase', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_request = buildAddFirebaseRequest();
      var arg_project = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddFirebaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddFirebaseRequest(obj as api.AddFirebaseRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addFirebase(arg_request, arg_project, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--addGoogleAnalytics', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_request = buildAddGoogleAnalyticsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AddGoogleAnalyticsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddGoogleAnalyticsRequest(obj as api.AddGoogleAnalyticsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addGoogleAnalytics(arg_request, arg_parent,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFirebaseProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkFirebaseProject(response as api.FirebaseProject);
    });

    unittest.test('method--getAdminSdkConfig', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdminSdkConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getAdminSdkConfig(arg_name, $fields: arg_$fields);
      checkAdminSdkConfig(response as api.AdminSdkConfig);
    });

    unittest.test('method--getAnalyticsDetails', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAnalyticsDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getAnalyticsDetails(arg_name, $fields: arg_$fields);
      checkAnalyticsDetails(response as api.AnalyticsDetails);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("v1beta1/projects"),
        );
        pathOffset += 16;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListFirebaseProjectsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFirebaseProjectsResponse(
          response as api.ListFirebaseProjectsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_request = buildFirebaseProject();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FirebaseProject.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFirebaseProject(obj as api.FirebaseProject);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFirebaseProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkFirebaseProject(response as api.FirebaseProject);
    });

    unittest.test('method--removeAnalytics', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_request = buildRemoveAnalyticsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemoveAnalyticsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRemoveAnalyticsRequest(obj as api.RemoveAnalyticsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeAnalytics(arg_request, arg_parent,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--searchApps', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects;
      var arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSearchFirebaseAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchApps(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSearchFirebaseAppsResponse(
          response as api.SearchFirebaseAppsResponse);
    });
  });

  unittest.group('resource-ProjectsAndroidAppsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps;
      var arg_request = buildAndroidApp();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AndroidApp.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAndroidApp(obj as api.AndroidApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAndroidApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAndroidApp(response as api.AndroidApp);
    });

    unittest.test('method--getConfig', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAndroidAppConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkAndroidAppConfig(response as api.AndroidAppConfig);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAndroidAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAndroidAppsResponse(response as api.ListAndroidAppsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps;
      var arg_request = buildAndroidApp();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AndroidApp.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAndroidApp(obj as api.AndroidApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAndroidApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAndroidApp(response as api.AndroidApp);
    });
  });

  unittest.group('resource-ProjectsAndroidAppsShaResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps.sha;
      var arg_request = buildShaCertificate();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ShaCertificate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkShaCertificate(obj as api.ShaCertificate);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildShaCertificate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkShaCertificate(response as api.ShaCertificate);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps.sha;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.androidApps.sha;
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListShaCertificatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkListShaCertificatesResponse(
          response as api.ListShaCertificatesResponse);
    });
  });

  unittest.group('resource-ProjectsAvailableLocationsResource', () {
    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.availableLocations;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListAvailableLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAvailableLocationsResponse(
          response as api.ListAvailableLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsDefaultLocationResource', () {
    unittest.test('method--finalize', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.defaultLocation;
      var arg_request = buildFinalizeDefaultLocationRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FinalizeDefaultLocationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFinalizeDefaultLocationRequest(
            obj as api.FinalizeDefaultLocationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.finalize(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsIosAppsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.iosApps;
      var arg_request = buildIosApp();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IosApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkIosApp(obj as api.IosApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.iosApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIosApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkIosApp(response as api.IosApp);
    });

    unittest.test('method--getConfig', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.iosApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIosAppConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkIosAppConfig(response as api.IosAppConfig);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.iosApps;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListIosAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListIosAppsResponse(response as api.ListIosAppsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.iosApps;
      var arg_request = buildIosApp();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.IosApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkIosApp(obj as api.IosApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildIosApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkIosApp(response as api.IosApp);
    });
  });

  unittest.group('resource-ProjectsWebAppsResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.webApps;
      var arg_request = buildWebApp();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.webApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--getConfig', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.webApps;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebAppConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(arg_name, $fields: arg_$fields);
      checkWebAppConfig(response as api.WebAppConfig);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.webApps;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListWebAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWebAppsResponse(response as api.ListWebAppsResponse);
    });

    unittest.test('method--patch', () async {
      var mock = HttpServerMock();
      var res = api.FirebaseManagementApi(mock).projects.webApps;
      var arg_request = buildWebApp();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj as api.WebApp);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("v1beta1/"),
        );
        pathOffset += 8;
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });
  });
}
