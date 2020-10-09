library googleapis_beta.firebase.v1beta1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/firebase/v1beta1.dart' as api;

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

core.int buildCounterAddFirebaseRequest = 0;
buildAddFirebaseRequest() {
  var o = new api.AddFirebaseRequest();
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {
    o.locationId = "foo";
    o.regionCode = "foo";
    o.timeZone = "foo";
  }
  buildCounterAddFirebaseRequest--;
  return o;
}

checkAddFirebaseRequest(api.AddFirebaseRequest o) {
  buildCounterAddFirebaseRequest++;
  if (buildCounterAddFirebaseRequest < 3) {
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.timeZone, unittest.equals('foo'));
  }
  buildCounterAddFirebaseRequest--;
}

core.int buildCounterAddGoogleAnalyticsRequest = 0;
buildAddGoogleAnalyticsRequest() {
  var o = new api.AddGoogleAnalyticsRequest();
  buildCounterAddGoogleAnalyticsRequest++;
  if (buildCounterAddGoogleAnalyticsRequest < 3) {
    o.analyticsAccountId = "foo";
    o.analyticsPropertyId = "foo";
  }
  buildCounterAddGoogleAnalyticsRequest--;
  return o;
}

checkAddGoogleAnalyticsRequest(api.AddGoogleAnalyticsRequest o) {
  buildCounterAddGoogleAnalyticsRequest++;
  if (buildCounterAddGoogleAnalyticsRequest < 3) {
    unittest.expect(o.analyticsAccountId, unittest.equals('foo'));
    unittest.expect(o.analyticsPropertyId, unittest.equals('foo'));
  }
  buildCounterAddGoogleAnalyticsRequest--;
}

core.int buildCounterAdminSdkConfig = 0;
buildAdminSdkConfig() {
  var o = new api.AdminSdkConfig();
  buildCounterAdminSdkConfig++;
  if (buildCounterAdminSdkConfig < 3) {
    o.databaseURL = "foo";
    o.locationId = "foo";
    o.projectId = "foo";
    o.storageBucket = "foo";
  }
  buildCounterAdminSdkConfig--;
  return o;
}

checkAdminSdkConfig(api.AdminSdkConfig o) {
  buildCounterAdminSdkConfig++;
  if (buildCounterAdminSdkConfig < 3) {
    unittest.expect(o.databaseURL, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.storageBucket, unittest.equals('foo'));
  }
  buildCounterAdminSdkConfig--;
}

buildUnnamed6593() {
  var o = new core.List<api.StreamMapping>();
  o.add(buildStreamMapping());
  o.add(buildStreamMapping());
  return o;
}

checkUnnamed6593(core.List<api.StreamMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamMapping(o[0]);
  checkStreamMapping(o[1]);
}

core.int buildCounterAnalyticsDetails = 0;
buildAnalyticsDetails() {
  var o = new api.AnalyticsDetails();
  buildCounterAnalyticsDetails++;
  if (buildCounterAnalyticsDetails < 3) {
    o.analyticsProperty = buildAnalyticsProperty();
    o.streamMappings = buildUnnamed6593();
  }
  buildCounterAnalyticsDetails--;
  return o;
}

checkAnalyticsDetails(api.AnalyticsDetails o) {
  buildCounterAnalyticsDetails++;
  if (buildCounterAnalyticsDetails < 3) {
    checkAnalyticsProperty(o.analyticsProperty);
    checkUnnamed6593(o.streamMappings);
  }
  buildCounterAnalyticsDetails--;
}

core.int buildCounterAnalyticsProperty = 0;
buildAnalyticsProperty() {
  var o = new api.AnalyticsProperty();
  buildCounterAnalyticsProperty++;
  if (buildCounterAnalyticsProperty < 3) {
    o.displayName = "foo";
    o.id = "foo";
  }
  buildCounterAnalyticsProperty--;
  return o;
}

checkAnalyticsProperty(api.AnalyticsProperty o) {
  buildCounterAnalyticsProperty++;
  if (buildCounterAnalyticsProperty < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAnalyticsProperty--;
}

core.int buildCounterAndroidApp = 0;
buildAndroidApp() {
  var o = new api.AndroidApp();
  buildCounterAndroidApp++;
  if (buildCounterAndroidApp < 3) {
    o.appId = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.packageName = "foo";
    o.projectId = "foo";
  }
  buildCounterAndroidApp--;
  return o;
}

checkAndroidApp(api.AndroidApp o) {
  buildCounterAndroidApp++;
  if (buildCounterAndroidApp < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterAndroidApp--;
}

core.int buildCounterAndroidAppConfig = 0;
buildAndroidAppConfig() {
  var o = new api.AndroidAppConfig();
  buildCounterAndroidAppConfig++;
  if (buildCounterAndroidAppConfig < 3) {
    o.configFileContents = "foo";
    o.configFilename = "foo";
  }
  buildCounterAndroidAppConfig--;
  return o;
}

checkAndroidAppConfig(api.AndroidAppConfig o) {
  buildCounterAndroidAppConfig++;
  if (buildCounterAndroidAppConfig < 3) {
    unittest.expect(o.configFileContents, unittest.equals('foo'));
    unittest.expect(o.configFilename, unittest.equals('foo'));
  }
  buildCounterAndroidAppConfig--;
}

core.int buildCounterDefaultResources = 0;
buildDefaultResources() {
  var o = new api.DefaultResources();
  buildCounterDefaultResources++;
  if (buildCounterDefaultResources < 3) {
    o.hostingSite = "foo";
    o.locationId = "foo";
    o.realtimeDatabaseInstance = "foo";
    o.storageBucket = "foo";
  }
  buildCounterDefaultResources--;
  return o;
}

checkDefaultResources(api.DefaultResources o) {
  buildCounterDefaultResources++;
  if (buildCounterDefaultResources < 3) {
    unittest.expect(o.hostingSite, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.realtimeDatabaseInstance, unittest.equals('foo'));
    unittest.expect(o.storageBucket, unittest.equals('foo'));
  }
  buildCounterDefaultResources--;
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

core.int buildCounterFinalizeDefaultLocationRequest = 0;
buildFinalizeDefaultLocationRequest() {
  var o = new api.FinalizeDefaultLocationRequest();
  buildCounterFinalizeDefaultLocationRequest++;
  if (buildCounterFinalizeDefaultLocationRequest < 3) {
    o.locationId = "foo";
  }
  buildCounterFinalizeDefaultLocationRequest--;
  return o;
}

checkFinalizeDefaultLocationRequest(api.FinalizeDefaultLocationRequest o) {
  buildCounterFinalizeDefaultLocationRequest++;
  if (buildCounterFinalizeDefaultLocationRequest < 3) {
    unittest.expect(o.locationId, unittest.equals('foo'));
  }
  buildCounterFinalizeDefaultLocationRequest--;
}

core.int buildCounterFirebaseAppInfo = 0;
buildFirebaseAppInfo() {
  var o = new api.FirebaseAppInfo();
  buildCounterFirebaseAppInfo++;
  if (buildCounterFirebaseAppInfo < 3) {
    o.appId = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.namespace = "foo";
    o.platform = "foo";
  }
  buildCounterFirebaseAppInfo--;
  return o;
}

checkFirebaseAppInfo(api.FirebaseAppInfo o) {
  buildCounterFirebaseAppInfo++;
  if (buildCounterFirebaseAppInfo < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
    unittest.expect(o.platform, unittest.equals('foo'));
  }
  buildCounterFirebaseAppInfo--;
}

core.int buildCounterFirebaseProject = 0;
buildFirebaseProject() {
  var o = new api.FirebaseProject();
  buildCounterFirebaseProject++;
  if (buildCounterFirebaseProject < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.projectNumber = "foo";
    o.resources = buildDefaultResources();
    o.state = "foo";
  }
  buildCounterFirebaseProject--;
  return o;
}

checkFirebaseProject(api.FirebaseProject o) {
  buildCounterFirebaseProject++;
  if (buildCounterFirebaseProject < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkDefaultResources(o.resources);
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterFirebaseProject--;
}

core.int buildCounterIosApp = 0;
buildIosApp() {
  var o = new api.IosApp();
  buildCounterIosApp++;
  if (buildCounterIosApp < 3) {
    o.appId = "foo";
    o.appStoreId = "foo";
    o.bundleId = "foo";
    o.displayName = "foo";
    o.name = "foo";
    o.projectId = "foo";
  }
  buildCounterIosApp--;
  return o;
}

checkIosApp(api.IosApp o) {
  buildCounterIosApp++;
  if (buildCounterIosApp < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.appStoreId, unittest.equals('foo'));
    unittest.expect(o.bundleId, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterIosApp--;
}

core.int buildCounterIosAppConfig = 0;
buildIosAppConfig() {
  var o = new api.IosAppConfig();
  buildCounterIosAppConfig++;
  if (buildCounterIosAppConfig < 3) {
    o.configFileContents = "foo";
    o.configFilename = "foo";
  }
  buildCounterIosAppConfig--;
  return o;
}

checkIosAppConfig(api.IosAppConfig o) {
  buildCounterIosAppConfig++;
  if (buildCounterIosAppConfig < 3) {
    unittest.expect(o.configFileContents, unittest.equals('foo'));
    unittest.expect(o.configFilename, unittest.equals('foo'));
  }
  buildCounterIosAppConfig--;
}

buildUnnamed6594() {
  var o = new core.List<api.AndroidApp>();
  o.add(buildAndroidApp());
  o.add(buildAndroidApp());
  return o;
}

checkUnnamed6594(core.List<api.AndroidApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidApp(o[0]);
  checkAndroidApp(o[1]);
}

core.int buildCounterListAndroidAppsResponse = 0;
buildListAndroidAppsResponse() {
  var o = new api.ListAndroidAppsResponse();
  buildCounterListAndroidAppsResponse++;
  if (buildCounterListAndroidAppsResponse < 3) {
    o.apps = buildUnnamed6594();
    o.nextPageToken = "foo";
  }
  buildCounterListAndroidAppsResponse--;
  return o;
}

checkListAndroidAppsResponse(api.ListAndroidAppsResponse o) {
  buildCounterListAndroidAppsResponse++;
  if (buildCounterListAndroidAppsResponse < 3) {
    checkUnnamed6594(o.apps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAndroidAppsResponse--;
}

buildUnnamed6595() {
  var o = new core.List<api.Location>();
  o.add(buildLocation());
  o.add(buildLocation());
  return o;
}

checkUnnamed6595(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListAvailableLocationsResponse = 0;
buildListAvailableLocationsResponse() {
  var o = new api.ListAvailableLocationsResponse();
  buildCounterListAvailableLocationsResponse++;
  if (buildCounterListAvailableLocationsResponse < 3) {
    o.locations = buildUnnamed6595();
    o.nextPageToken = "foo";
  }
  buildCounterListAvailableLocationsResponse--;
  return o;
}

checkListAvailableLocationsResponse(api.ListAvailableLocationsResponse o) {
  buildCounterListAvailableLocationsResponse++;
  if (buildCounterListAvailableLocationsResponse < 3) {
    checkUnnamed6595(o.locations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAvailableLocationsResponse--;
}

buildUnnamed6596() {
  var o = new core.List<api.ProjectInfo>();
  o.add(buildProjectInfo());
  o.add(buildProjectInfo());
  return o;
}

checkUnnamed6596(core.List<api.ProjectInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProjectInfo(o[0]);
  checkProjectInfo(o[1]);
}

core.int buildCounterListAvailableProjectsResponse = 0;
buildListAvailableProjectsResponse() {
  var o = new api.ListAvailableProjectsResponse();
  buildCounterListAvailableProjectsResponse++;
  if (buildCounterListAvailableProjectsResponse < 3) {
    o.nextPageToken = "foo";
    o.projectInfo = buildUnnamed6596();
  }
  buildCounterListAvailableProjectsResponse--;
  return o;
}

checkListAvailableProjectsResponse(api.ListAvailableProjectsResponse o) {
  buildCounterListAvailableProjectsResponse++;
  if (buildCounterListAvailableProjectsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6596(o.projectInfo);
  }
  buildCounterListAvailableProjectsResponse--;
}

buildUnnamed6597() {
  var o = new core.List<api.FirebaseProject>();
  o.add(buildFirebaseProject());
  o.add(buildFirebaseProject());
  return o;
}

checkUnnamed6597(core.List<api.FirebaseProject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirebaseProject(o[0]);
  checkFirebaseProject(o[1]);
}

core.int buildCounterListFirebaseProjectsResponse = 0;
buildListFirebaseProjectsResponse() {
  var o = new api.ListFirebaseProjectsResponse();
  buildCounterListFirebaseProjectsResponse++;
  if (buildCounterListFirebaseProjectsResponse < 3) {
    o.nextPageToken = "foo";
    o.results = buildUnnamed6597();
  }
  buildCounterListFirebaseProjectsResponse--;
  return o;
}

checkListFirebaseProjectsResponse(api.ListFirebaseProjectsResponse o) {
  buildCounterListFirebaseProjectsResponse++;
  if (buildCounterListFirebaseProjectsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6597(o.results);
  }
  buildCounterListFirebaseProjectsResponse--;
}

buildUnnamed6598() {
  var o = new core.List<api.IosApp>();
  o.add(buildIosApp());
  o.add(buildIosApp());
  return o;
}

checkUnnamed6598(core.List<api.IosApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosApp(o[0]);
  checkIosApp(o[1]);
}

core.int buildCounterListIosAppsResponse = 0;
buildListIosAppsResponse() {
  var o = new api.ListIosAppsResponse();
  buildCounterListIosAppsResponse++;
  if (buildCounterListIosAppsResponse < 3) {
    o.apps = buildUnnamed6598();
    o.nextPageToken = "foo";
  }
  buildCounterListIosAppsResponse--;
  return o;
}

checkListIosAppsResponse(api.ListIosAppsResponse o) {
  buildCounterListIosAppsResponse++;
  if (buildCounterListIosAppsResponse < 3) {
    checkUnnamed6598(o.apps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListIosAppsResponse--;
}

buildUnnamed6599() {
  var o = new core.List<api.ShaCertificate>();
  o.add(buildShaCertificate());
  o.add(buildShaCertificate());
  return o;
}

checkUnnamed6599(core.List<api.ShaCertificate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkShaCertificate(o[0]);
  checkShaCertificate(o[1]);
}

core.int buildCounterListShaCertificatesResponse = 0;
buildListShaCertificatesResponse() {
  var o = new api.ListShaCertificatesResponse();
  buildCounterListShaCertificatesResponse++;
  if (buildCounterListShaCertificatesResponse < 3) {
    o.certificates = buildUnnamed6599();
  }
  buildCounterListShaCertificatesResponse--;
  return o;
}

checkListShaCertificatesResponse(api.ListShaCertificatesResponse o) {
  buildCounterListShaCertificatesResponse++;
  if (buildCounterListShaCertificatesResponse < 3) {
    checkUnnamed6599(o.certificates);
  }
  buildCounterListShaCertificatesResponse--;
}

buildUnnamed6600() {
  var o = new core.List<api.WebApp>();
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

checkUnnamed6600(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0]);
  checkWebApp(o[1]);
}

core.int buildCounterListWebAppsResponse = 0;
buildListWebAppsResponse() {
  var o = new api.ListWebAppsResponse();
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    o.apps = buildUnnamed6600();
    o.nextPageToken = "foo";
  }
  buildCounterListWebAppsResponse--;
  return o;
}

checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    checkUnnamed6600(o.apps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListWebAppsResponse--;
}

buildUnnamed6601() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6601(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.features = buildUnnamed6601();
    o.locationId = "foo";
    o.type = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed6601(o.features);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMessageSet = 0;
buildMessageSet() {
  var o = new api.MessageSet();
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {}
  buildCounterMessageSet--;
  return o;
}

checkMessageSet(api.MessageSet o) {
  buildCounterMessageSet++;
  if (buildCounterMessageSet < 3) {}
  buildCounterMessageSet--;
}

buildUnnamed6602() {
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

checkUnnamed6602(core.Map<core.String, core.Object> o) {
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

buildUnnamed6603() {
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

checkUnnamed6603(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed6602();
    o.name = "foo";
    o.response = buildUnnamed6603();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed6602(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6603(o.response);
  }
  buildCounterOperation--;
}

core.int buildCounterProjectInfo = 0;
buildProjectInfo() {
  var o = new api.ProjectInfo();
  buildCounterProjectInfo++;
  if (buildCounterProjectInfo < 3) {
    o.displayName = "foo";
    o.locationId = "foo";
    o.project = "foo";
  }
  buildCounterProjectInfo--;
  return o;
}

checkProjectInfo(api.ProjectInfo o) {
  buildCounterProjectInfo++;
  if (buildCounterProjectInfo < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.project, unittest.equals('foo'));
  }
  buildCounterProjectInfo--;
}

core.int buildCounterRemoveAnalyticsRequest = 0;
buildRemoveAnalyticsRequest() {
  var o = new api.RemoveAnalyticsRequest();
  buildCounterRemoveAnalyticsRequest++;
  if (buildCounterRemoveAnalyticsRequest < 3) {
    o.analyticsPropertyId = "foo";
  }
  buildCounterRemoveAnalyticsRequest--;
  return o;
}

checkRemoveAnalyticsRequest(api.RemoveAnalyticsRequest o) {
  buildCounterRemoveAnalyticsRequest++;
  if (buildCounterRemoveAnalyticsRequest < 3) {
    unittest.expect(o.analyticsPropertyId, unittest.equals('foo'));
  }
  buildCounterRemoveAnalyticsRequest--;
}

buildUnnamed6604() {
  var o = new core.List<api.FirebaseAppInfo>();
  o.add(buildFirebaseAppInfo());
  o.add(buildFirebaseAppInfo());
  return o;
}

checkUnnamed6604(core.List<api.FirebaseAppInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFirebaseAppInfo(o[0]);
  checkFirebaseAppInfo(o[1]);
}

core.int buildCounterSearchFirebaseAppsResponse = 0;
buildSearchFirebaseAppsResponse() {
  var o = new api.SearchFirebaseAppsResponse();
  buildCounterSearchFirebaseAppsResponse++;
  if (buildCounterSearchFirebaseAppsResponse < 3) {
    o.apps = buildUnnamed6604();
    o.nextPageToken = "foo";
  }
  buildCounterSearchFirebaseAppsResponse--;
  return o;
}

checkSearchFirebaseAppsResponse(api.SearchFirebaseAppsResponse o) {
  buildCounterSearchFirebaseAppsResponse++;
  if (buildCounterSearchFirebaseAppsResponse < 3) {
    checkUnnamed6604(o.apps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchFirebaseAppsResponse--;
}

core.int buildCounterShaCertificate = 0;
buildShaCertificate() {
  var o = new api.ShaCertificate();
  buildCounterShaCertificate++;
  if (buildCounterShaCertificate < 3) {
    o.certType = "foo";
    o.name = "foo";
    o.shaHash = "foo";
  }
  buildCounterShaCertificate--;
  return o;
}

checkShaCertificate(api.ShaCertificate o) {
  buildCounterShaCertificate++;
  if (buildCounterShaCertificate < 3) {
    unittest.expect(o.certType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.shaHash, unittest.equals('foo'));
  }
  buildCounterShaCertificate--;
}

buildUnnamed6605() {
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

checkUnnamed6605(core.Map<core.String, core.Object> o) {
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

buildUnnamed6606() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6605());
  o.add(buildUnnamed6605());
  return o;
}

checkUnnamed6606(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6605(o[0]);
  checkUnnamed6605(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6606();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6606(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusProto = 0;
buildStatusProto() {
  var o = new api.StatusProto();
  buildCounterStatusProto++;
  if (buildCounterStatusProto < 3) {
    o.canonicalCode = 42;
    o.code = 42;
    o.message = "foo";
    o.messageSet = buildMessageSet();
    o.space = "foo";
  }
  buildCounterStatusProto--;
  return o;
}

checkStatusProto(api.StatusProto o) {
  buildCounterStatusProto++;
  if (buildCounterStatusProto < 3) {
    unittest.expect(o.canonicalCode, unittest.equals(42));
    unittest.expect(o.code, unittest.equals(42));
    unittest.expect(o.message, unittest.equals('foo'));
    checkMessageSet(o.messageSet);
    unittest.expect(o.space, unittest.equals('foo'));
  }
  buildCounterStatusProto--;
}

core.int buildCounterStreamMapping = 0;
buildStreamMapping() {
  var o = new api.StreamMapping();
  buildCounterStreamMapping++;
  if (buildCounterStreamMapping < 3) {
    o.app = "foo";
    o.measurementId = "foo";
    o.streamId = "foo";
  }
  buildCounterStreamMapping--;
  return o;
}

checkStreamMapping(api.StreamMapping o) {
  buildCounterStreamMapping++;
  if (buildCounterStreamMapping < 3) {
    unittest.expect(o.app, unittest.equals('foo'));
    unittest.expect(o.measurementId, unittest.equals('foo'));
    unittest.expect(o.streamId, unittest.equals('foo'));
  }
  buildCounterStreamMapping--;
}

buildUnnamed6607() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6607(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebApp = 0;
buildWebApp() {
  var o = new api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.appId = "foo";
    o.appUrls = buildUnnamed6607();
    o.displayName = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.webId = "foo";
  }
  buildCounterWebApp--;
  return o;
}

checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(o.appId, unittest.equals('foo'));
    checkUnnamed6607(o.appUrls);
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.webId, unittest.equals('foo'));
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppConfig = 0;
buildWebAppConfig() {
  var o = new api.WebAppConfig();
  buildCounterWebAppConfig++;
  if (buildCounterWebAppConfig < 3) {
    o.apiKey = "foo";
    o.appId = "foo";
    o.authDomain = "foo";
    o.databaseURL = "foo";
    o.locationId = "foo";
    o.measurementId = "foo";
    o.messagingSenderId = "foo";
    o.projectId = "foo";
    o.storageBucket = "foo";
  }
  buildCounterWebAppConfig--;
  return o;
}

checkWebAppConfig(api.WebAppConfig o) {
  buildCounterWebAppConfig++;
  if (buildCounterWebAppConfig < 3) {
    unittest.expect(o.apiKey, unittest.equals('foo'));
    unittest.expect(o.appId, unittest.equals('foo'));
    unittest.expect(o.authDomain, unittest.equals('foo'));
    unittest.expect(o.databaseURL, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.measurementId, unittest.equals('foo'));
    unittest.expect(o.messagingSenderId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.storageBucket, unittest.equals('foo'));
  }
  buildCounterWebAppConfig--;
}

main() {
  unittest.group("obj-schema-AddFirebaseRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddFirebaseRequest();
      var od = new api.AddFirebaseRequest.fromJson(o.toJson());
      checkAddFirebaseRequest(od);
    });
  });

  unittest.group("obj-schema-AddGoogleAnalyticsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAddGoogleAnalyticsRequest();
      var od = new api.AddGoogleAnalyticsRequest.fromJson(o.toJson());
      checkAddGoogleAnalyticsRequest(od);
    });
  });

  unittest.group("obj-schema-AdminSdkConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdminSdkConfig();
      var od = new api.AdminSdkConfig.fromJson(o.toJson());
      checkAdminSdkConfig(od);
    });
  });

  unittest.group("obj-schema-AnalyticsDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyticsDetails();
      var od = new api.AnalyticsDetails.fromJson(o.toJson());
      checkAnalyticsDetails(od);
    });
  });

  unittest.group("obj-schema-AnalyticsProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnalyticsProperty();
      var od = new api.AnalyticsProperty.fromJson(o.toJson());
      checkAnalyticsProperty(od);
    });
  });

  unittest.group("obj-schema-AndroidApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidApp();
      var od = new api.AndroidApp.fromJson(o.toJson());
      checkAndroidApp(od);
    });
  });

  unittest.group("obj-schema-AndroidAppConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidAppConfig();
      var od = new api.AndroidAppConfig.fromJson(o.toJson());
      checkAndroidAppConfig(od);
    });
  });

  unittest.group("obj-schema-DefaultResources", () {
    unittest.test("to-json--from-json", () {
      var o = buildDefaultResources();
      var od = new api.DefaultResources.fromJson(o.toJson());
      checkDefaultResources(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-FinalizeDefaultLocationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFinalizeDefaultLocationRequest();
      var od = new api.FinalizeDefaultLocationRequest.fromJson(o.toJson());
      checkFinalizeDefaultLocationRequest(od);
    });
  });

  unittest.group("obj-schema-FirebaseAppInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirebaseAppInfo();
      var od = new api.FirebaseAppInfo.fromJson(o.toJson());
      checkFirebaseAppInfo(od);
    });
  });

  unittest.group("obj-schema-FirebaseProject", () {
    unittest.test("to-json--from-json", () {
      var o = buildFirebaseProject();
      var od = new api.FirebaseProject.fromJson(o.toJson());
      checkFirebaseProject(od);
    });
  });

  unittest.group("obj-schema-IosApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosApp();
      var od = new api.IosApp.fromJson(o.toJson());
      checkIosApp(od);
    });
  });

  unittest.group("obj-schema-IosAppConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosAppConfig();
      var od = new api.IosAppConfig.fromJson(o.toJson());
      checkIosAppConfig(od);
    });
  });

  unittest.group("obj-schema-ListAndroidAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAndroidAppsResponse();
      var od = new api.ListAndroidAppsResponse.fromJson(o.toJson());
      checkListAndroidAppsResponse(od);
    });
  });

  unittest.group("obj-schema-ListAvailableLocationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAvailableLocationsResponse();
      var od = new api.ListAvailableLocationsResponse.fromJson(o.toJson());
      checkListAvailableLocationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListAvailableProjectsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAvailableProjectsResponse();
      var od = new api.ListAvailableProjectsResponse.fromJson(o.toJson());
      checkListAvailableProjectsResponse(od);
    });
  });

  unittest.group("obj-schema-ListFirebaseProjectsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListFirebaseProjectsResponse();
      var od = new api.ListFirebaseProjectsResponse.fromJson(o.toJson());
      checkListFirebaseProjectsResponse(od);
    });
  });

  unittest.group("obj-schema-ListIosAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListIosAppsResponse();
      var od = new api.ListIosAppsResponse.fromJson(o.toJson());
      checkListIosAppsResponse(od);
    });
  });

  unittest.group("obj-schema-ListShaCertificatesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListShaCertificatesResponse();
      var od = new api.ListShaCertificatesResponse.fromJson(o.toJson());
      checkListShaCertificatesResponse(od);
    });
  });

  unittest.group("obj-schema-ListWebAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListWebAppsResponse();
      var od = new api.ListWebAppsResponse.fromJson(o.toJson());
      checkListWebAppsResponse(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-MessageSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessageSet();
      var od = new api.MessageSet.fromJson(o.toJson());
      checkMessageSet(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-ProjectInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectInfo();
      var od = new api.ProjectInfo.fromJson(o.toJson());
      checkProjectInfo(od);
    });
  });

  unittest.group("obj-schema-RemoveAnalyticsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRemoveAnalyticsRequest();
      var od = new api.RemoveAnalyticsRequest.fromJson(o.toJson());
      checkRemoveAnalyticsRequest(od);
    });
  });

  unittest.group("obj-schema-SearchFirebaseAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchFirebaseAppsResponse();
      var od = new api.SearchFirebaseAppsResponse.fromJson(o.toJson());
      checkSearchFirebaseAppsResponse(od);
    });
  });

  unittest.group("obj-schema-ShaCertificate", () {
    unittest.test("to-json--from-json", () {
      var o = buildShaCertificate();
      var od = new api.ShaCertificate.fromJson(o.toJson());
      checkShaCertificate(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StatusProto", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusProto();
      var od = new api.StatusProto.fromJson(o.toJson());
      checkStatusProto(od);
    });
  });

  unittest.group("obj-schema-StreamMapping", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamMapping();
      var od = new api.StreamMapping.fromJson(o.toJson());
      checkStreamMapping(od);
    });
  });

  unittest.group("obj-schema-WebApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebApp();
      var od = new api.WebApp.fromJson(o.toJson());
      checkWebApp(od);
    });
  });

  unittest.group("obj-schema-WebAppConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAppConfig();
      var od = new api.WebAppConfig.fromJson(o.toJson());
      checkWebAppConfig(od);
    });
  });

  unittest.group("resource-AvailableProjectsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.AvailableProjectsResourceApi res =
          new api.FirebaseApi(mock).availableProjects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("v1beta1/availableProjects"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildListAvailableProjectsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAvailableProjectsResponse(response);
      })));
    });
  });

  unittest.group("resource-OperationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.OperationsResourceApi res = new api.FirebaseApi(mock).operations;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--addFirebase", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
      var arg_request = buildAddFirebaseRequest();
      var arg_project = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddFirebaseRequest.fromJson(json);
        checkAddFirebaseRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .addFirebase(arg_request, arg_project, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--addGoogleAnalytics", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
      var arg_request = buildAddGoogleAnalyticsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AddGoogleAnalyticsRequest.fromJson(json);
        checkAddGoogleAnalyticsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .addGoogleAnalytics(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildFirebaseProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFirebaseProject(response);
      })));
    });

    unittest.test("method--getAdminSdkConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAdminSdkConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAdminSdkConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdminSdkConfig(response);
      })));
    });

    unittest.test("method--getAnalyticsDetails", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAnalyticsDetails());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAnalyticsDetails(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAnalyticsDetails(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1beta1/projects"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildListFirebaseProjectsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListFirebaseProjectsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
      var arg_request = buildFirebaseProject();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FirebaseProject.fromJson(json);
        checkFirebaseProject(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildFirebaseProject());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFirebaseProject(response);
      })));
    });

    unittest.test("method--removeAnalytics", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
      var arg_request = buildRemoveAnalyticsRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RemoveAnalyticsRequest.fromJson(json);
        checkRemoveAnalyticsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .removeAnalytics(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--searchApps", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.FirebaseApi(mock).projects;
      var arg_parent = "foo";
      var arg_filter = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSearchFirebaseAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchApps(arg_parent,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSearchFirebaseAppsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAndroidAppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps;
      var arg_request = buildAndroidApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AndroidApp.fromJson(json);
        checkAndroidApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAndroidApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAndroidApp(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildAndroidAppConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAndroidAppConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAndroidAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAndroidAppsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps;
      var arg_request = buildAndroidApp();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AndroidApp.fromJson(json);
        checkAndroidApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAndroidApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAndroidApp(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAndroidAppsShaResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsShaResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps.sha;
      var arg_request = buildShaCertificate();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ShaCertificate.fromJson(json);
        checkShaCertificate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildShaCertificate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkShaCertificate(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsShaResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps.sha;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAndroidAppsShaResourceApi res =
          new api.FirebaseApi(mock).projects.androidApps.sha;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildListShaCertificatesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListShaCertificatesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsAvailableLocationsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsAvailableLocationsResourceApi res =
          new api.FirebaseApi(mock).projects.availableLocations;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListAvailableLocationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListAvailableLocationsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsDefaultLocationResourceApi", () {
    unittest.test("method--finalize", () {
      var mock = new HttpServerMock();
      api.ProjectsDefaultLocationResourceApi res =
          new api.FirebaseApi(mock).projects.defaultLocation;
      var arg_request = buildFinalizeDefaultLocationRequest();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FinalizeDefaultLocationRequest.fromJson(json);
        checkFinalizeDefaultLocationRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
          .finalize(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });
  });

  unittest.group("resource-ProjectsIosAppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsIosAppsResourceApi res =
          new api.FirebaseApi(mock).projects.iosApps;
      var arg_request = buildIosApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.IosApp.fromJson(json);
        checkIosApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsIosAppsResourceApi res =
          new api.FirebaseApi(mock).projects.iosApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildIosApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIosApp(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsIosAppsResourceApi res =
          new api.FirebaseApi(mock).projects.iosApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildIosAppConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIosAppConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsIosAppsResourceApi res =
          new api.FirebaseApi(mock).projects.iosApps;
      var arg_parent = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListIosAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListIosAppsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsIosAppsResourceApi res =
          new api.FirebaseApi(mock).projects.iosApps;
      var arg_request = buildIosApp();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.IosApp.fromJson(json);
        checkIosApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildIosApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkIosApp(response);
      })));
    });
  });

  unittest.group("resource-ProjectsWebAppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsWebAppsResourceApi res =
          new api.FirebaseApi(mock).projects.webApps;
      var arg_request = buildWebApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsWebAppsResourceApi res =
          new api.FirebaseApi(mock).projects.webApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsWebAppsResourceApi res =
          new api.FirebaseApi(mock).projects.webApps;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        var resp = convert.json.encode(buildWebAppConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebAppConfig(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsWebAppsResourceApi res =
          new api.FirebaseApi(mock).projects.webApps;
      var arg_parent = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListWebAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListWebAppsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.ProjectsWebAppsResourceApi res =
          new api.FirebaseApi(mock).projects.webApps;
      var arg_request = buildWebApp();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1beta1/"));
        pathOffset += 8;
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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });
  });
}
