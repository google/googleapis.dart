library googleapis.testing.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/testing/v1.dart' as api;

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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAccount = 0;
buildAccount() {
  var o = new api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.googleAuto = buildGoogleAuto();
  }
  buildCounterAccount--;
  return o;
}

checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkGoogleAuto(o.googleAuto);
  }
  buildCounterAccount--;
}

core.int buildCounterAndroidDevice = 0;
buildAndroidDevice() {
  var o = new api.AndroidDevice();
  buildCounterAndroidDevice++;
  if (buildCounterAndroidDevice < 3) {
    o.androidModelId = "foo";
    o.androidVersionId = "foo";
    o.locale = "foo";
    o.orientation = "foo";
  }
  buildCounterAndroidDevice--;
  return o;
}

checkAndroidDevice(api.AndroidDevice o) {
  buildCounterAndroidDevice++;
  if (buildCounterAndroidDevice < 3) {
    unittest.expect(o.androidModelId, unittest.equals('foo'));
    unittest.expect(o.androidVersionId, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.orientation, unittest.equals('foo'));
  }
  buildCounterAndroidDevice--;
}

buildUnnamed3187() {
  var o = new core.List<api.AndroidModel>();
  o.add(buildAndroidModel());
  o.add(buildAndroidModel());
  return o;
}

checkUnnamed3187(core.List<api.AndroidModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidModel(o[0]);
  checkAndroidModel(o[1]);
}

buildUnnamed3188() {
  var o = new core.List<api.AndroidVersion>();
  o.add(buildAndroidVersion());
  o.add(buildAndroidVersion());
  return o;
}

checkUnnamed3188(core.List<api.AndroidVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidVersion(o[0]);
  checkAndroidVersion(o[1]);
}

core.int buildCounterAndroidDeviceCatalog = 0;
buildAndroidDeviceCatalog() {
  var o = new api.AndroidDeviceCatalog();
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    o.models = buildUnnamed3187();
    o.runtimeConfiguration = buildAndroidRuntimeConfiguration();
    o.versions = buildUnnamed3188();
  }
  buildCounterAndroidDeviceCatalog--;
  return o;
}

checkAndroidDeviceCatalog(api.AndroidDeviceCatalog o) {
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    checkUnnamed3187(o.models);
    checkAndroidRuntimeConfiguration(o.runtimeConfiguration);
    checkUnnamed3188(o.versions);
  }
  buildCounterAndroidDeviceCatalog--;
}

buildUnnamed3189() {
  var o = new core.List<api.AndroidDevice>();
  o.add(buildAndroidDevice());
  o.add(buildAndroidDevice());
  return o;
}

checkUnnamed3189(core.List<api.AndroidDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidDevice(o[0]);
  checkAndroidDevice(o[1]);
}

core.int buildCounterAndroidDeviceList = 0;
buildAndroidDeviceList() {
  var o = new api.AndroidDeviceList();
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    o.androidDevices = buildUnnamed3189();
  }
  buildCounterAndroidDeviceList--;
  return o;
}

checkAndroidDeviceList(api.AndroidDeviceList o) {
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    checkUnnamed3189(o.androidDevices);
  }
  buildCounterAndroidDeviceList--;
}

buildUnnamed3190() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3190(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidInstrumentationTest = 0;
buildAndroidInstrumentationTest() {
  var o = new api.AndroidInstrumentationTest();
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    o.appApk = buildFileReference();
    o.appPackageId = "foo";
    o.orchestratorOption = "foo";
    o.testApk = buildFileReference();
    o.testPackageId = "foo";
    o.testRunnerClass = "foo";
    o.testTargets = buildUnnamed3190();
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    checkFileReference(o.appApk);
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    unittest.expect(o.orchestratorOption, unittest.equals('foo'));
    checkFileReference(o.testApk);
    unittest.expect(o.testPackageId, unittest.equals('foo'));
    unittest.expect(o.testRunnerClass, unittest.equals('foo'));
    checkUnnamed3190(o.testTargets);
  }
  buildCounterAndroidInstrumentationTest--;
}

buildUnnamed3191() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3191(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3192() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3192(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3193() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3193(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3194() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidMatrix = 0;
buildAndroidMatrix() {
  var o = new api.AndroidMatrix();
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    o.androidModelIds = buildUnnamed3191();
    o.androidVersionIds = buildUnnamed3192();
    o.locales = buildUnnamed3193();
    o.orientations = buildUnnamed3194();
  }
  buildCounterAndroidMatrix--;
  return o;
}

checkAndroidMatrix(api.AndroidMatrix o) {
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    checkUnnamed3191(o.androidModelIds);
    checkUnnamed3192(o.androidVersionIds);
    checkUnnamed3193(o.locales);
    checkUnnamed3194(o.orientations);
  }
  buildCounterAndroidMatrix--;
}

buildUnnamed3195() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3195(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3196() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3196(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3197() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidModel = 0;
buildAndroidModel() {
  var o = new api.AndroidModel();
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    o.brand = "foo";
    o.codename = "foo";
    o.form = "foo";
    o.id = "foo";
    o.manufacturer = "foo";
    o.name = "foo";
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedAbis = buildUnnamed3195();
    o.supportedVersionIds = buildUnnamed3196();
    o.tags = buildUnnamed3197();
  }
  buildCounterAndroidModel--;
  return o;
}

checkAndroidModel(api.AndroidModel o) {
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    unittest.expect(o.brand, unittest.equals('foo'));
    unittest.expect(o.codename, unittest.equals('foo'));
    unittest.expect(o.form, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.screenDensity, unittest.equals(42));
    unittest.expect(o.screenX, unittest.equals(42));
    unittest.expect(o.screenY, unittest.equals(42));
    checkUnnamed3195(o.supportedAbis);
    checkUnnamed3196(o.supportedVersionIds);
    checkUnnamed3197(o.tags);
  }
  buildCounterAndroidModel--;
}

buildUnnamed3198() {
  var o = new core.List<api.RoboDirective>();
  o.add(buildRoboDirective());
  o.add(buildRoboDirective());
  return o;
}

checkUnnamed3198(core.List<api.RoboDirective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboDirective(o[0]);
  checkRoboDirective(o[1]);
}

buildUnnamed3199() {
  var o = new core.List<api.RoboStartingIntent>();
  o.add(buildRoboStartingIntent());
  o.add(buildRoboStartingIntent());
  return o;
}

checkUnnamed3199(core.List<api.RoboStartingIntent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboStartingIntent(o[0]);
  checkRoboStartingIntent(o[1]);
}

core.int buildCounterAndroidRoboTest = 0;
buildAndroidRoboTest() {
  var o = new api.AndroidRoboTest();
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    o.appApk = buildFileReference();
    o.appInitialActivity = "foo";
    o.appPackageId = "foo";
    o.maxDepth = 42;
    o.maxSteps = 42;
    o.roboDirectives = buildUnnamed3198();
    o.startingIntents = buildUnnamed3199();
  }
  buildCounterAndroidRoboTest--;
  return o;
}

checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    checkFileReference(o.appApk);
    unittest.expect(o.appInitialActivity, unittest.equals('foo'));
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    unittest.expect(o.maxDepth, unittest.equals(42));
    unittest.expect(o.maxSteps, unittest.equals(42));
    checkUnnamed3198(o.roboDirectives);
    checkUnnamed3199(o.startingIntents);
  }
  buildCounterAndroidRoboTest--;
}

buildUnnamed3200() {
  var o = new core.List<api.Locale>();
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

checkUnnamed3200(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

buildUnnamed3201() {
  var o = new core.List<api.Orientation>();
  o.add(buildOrientation());
  o.add(buildOrientation());
  return o;
}

checkUnnamed3201(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0]);
  checkOrientation(o[1]);
}

core.int buildCounterAndroidRuntimeConfiguration = 0;
buildAndroidRuntimeConfiguration() {
  var o = new api.AndroidRuntimeConfiguration();
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    o.locales = buildUnnamed3200();
    o.orientations = buildUnnamed3201();
  }
  buildCounterAndroidRuntimeConfiguration--;
  return o;
}

checkAndroidRuntimeConfiguration(api.AndroidRuntimeConfiguration o) {
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    checkUnnamed3200(o.locales);
    checkUnnamed3201(o.orientations);
  }
  buildCounterAndroidRuntimeConfiguration--;
}

buildUnnamed3202() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3202(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3203() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3203(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterAndroidTestLoop = 0;
buildAndroidTestLoop() {
  var o = new api.AndroidTestLoop();
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    o.appApk = buildFileReference();
    o.appPackageId = "foo";
    o.scenarioLabels = buildUnnamed3202();
    o.scenarios = buildUnnamed3203();
  }
  buildCounterAndroidTestLoop--;
  return o;
}

checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    checkFileReference(o.appApk);
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    checkUnnamed3202(o.scenarioLabels);
    checkUnnamed3203(o.scenarios);
  }
  buildCounterAndroidTestLoop--;
}

buildUnnamed3204() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3204(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidVersion = 0;
buildAndroidVersion() {
  var o = new api.AndroidVersion();
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    o.apiLevel = 42;
    o.codeName = "foo";
    o.distribution = buildDistribution();
    o.id = "foo";
    o.releaseDate = buildDate();
    o.tags = buildUnnamed3204();
    o.versionString = "foo";
  }
  buildCounterAndroidVersion--;
  return o;
}

checkAndroidVersion(api.AndroidVersion o) {
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    unittest.expect(o.apiLevel, unittest.equals(42));
    unittest.expect(o.codeName, unittest.equals('foo'));
    checkDistribution(o.distribution);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDate(o.releaseDate);
    checkUnnamed3204(o.tags);
    unittest.expect(o.versionString, unittest.equals('foo'));
  }
  buildCounterAndroidVersion--;
}

core.int buildCounterCancelTestMatrixResponse = 0;
buildCancelTestMatrixResponse() {
  var o = new api.CancelTestMatrixResponse();
  buildCounterCancelTestMatrixResponse++;
  if (buildCounterCancelTestMatrixResponse < 3) {
    o.testState = "foo";
  }
  buildCounterCancelTestMatrixResponse--;
  return o;
}

checkCancelTestMatrixResponse(api.CancelTestMatrixResponse o) {
  buildCounterCancelTestMatrixResponse++;
  if (buildCounterCancelTestMatrixResponse < 3) {
    unittest.expect(o.testState, unittest.equals('foo'));
  }
  buildCounterCancelTestMatrixResponse--;
}

buildUnnamed3205() {
  var o = new core.List<api.ClientInfoDetail>();
  o.add(buildClientInfoDetail());
  o.add(buildClientInfoDetail());
  return o;
}

checkUnnamed3205(core.List<api.ClientInfoDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientInfoDetail(o[0]);
  checkClientInfoDetail(o[1]);
}

core.int buildCounterClientInfo = 0;
buildClientInfo() {
  var o = new api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientInfoDetails = buildUnnamed3205();
    o.name = "foo";
  }
  buildCounterClientInfo--;
  return o;
}

checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    checkUnnamed3205(o.clientInfoDetails);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterClientInfo--;
}

core.int buildCounterClientInfoDetail = 0;
buildClientInfoDetail() {
  var o = new api.ClientInfoDetail();
  buildCounterClientInfoDetail++;
  if (buildCounterClientInfoDetail < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterClientInfoDetail--;
  return o;
}

checkClientInfoDetail(api.ClientInfoDetail o) {
  buildCounterClientInfoDetail++;
  if (buildCounterClientInfoDetail < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterClientInfoDetail--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeviceFile = 0;
buildDeviceFile() {
  var o = new api.DeviceFile();
  buildCounterDeviceFile++;
  if (buildCounterDeviceFile < 3) {
    o.obbFile = buildObbFile();
  }
  buildCounterDeviceFile--;
  return o;
}

checkDeviceFile(api.DeviceFile o) {
  buildCounterDeviceFile++;
  if (buildCounterDeviceFile < 3) {
    checkObbFile(o.obbFile);
  }
  buildCounterDeviceFile--;
}

core.int buildCounterDistribution = 0;
buildDistribution() {
  var o = new api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.marketShare = 42.0;
    o.measurementTime = "foo";
  }
  buildCounterDistribution--;
  return o;
}

checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    unittest.expect(o.marketShare, unittest.equals(42.0));
    unittest.expect(o.measurementTime, unittest.equals('foo'));
  }
  buildCounterDistribution--;
}

core.int buildCounterEnvironment = 0;
buildEnvironment() {
  var o = new api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.androidDevice = buildAndroidDevice();
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkAndroidDevice(o.androidDevice);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentMatrix = 0;
buildEnvironmentMatrix() {
  var o = new api.EnvironmentMatrix();
  buildCounterEnvironmentMatrix++;
  if (buildCounterEnvironmentMatrix < 3) {
    o.androidDeviceList = buildAndroidDeviceList();
    o.androidMatrix = buildAndroidMatrix();
  }
  buildCounterEnvironmentMatrix--;
  return o;
}

checkEnvironmentMatrix(api.EnvironmentMatrix o) {
  buildCounterEnvironmentMatrix++;
  if (buildCounterEnvironmentMatrix < 3) {
    checkAndroidDeviceList(o.androidDeviceList);
    checkAndroidMatrix(o.androidMatrix);
  }
  buildCounterEnvironmentMatrix--;
}

core.int buildCounterEnvironmentVariable = 0;
buildEnvironmentVariable() {
  var o = new api.EnvironmentVariable();
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterEnvironmentVariable--;
  return o;
}

checkEnvironmentVariable(api.EnvironmentVariable o) {
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEnvironmentVariable--;
}

core.int buildCounterFileReference = 0;
buildFileReference() {
  var o = new api.FileReference();
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    o.gcsPath = "foo";
  }
  buildCounterFileReference--;
  return o;
}

checkFileReference(api.FileReference o) {
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    unittest.expect(o.gcsPath, unittest.equals('foo'));
  }
  buildCounterFileReference--;
}

core.int buildCounterGoogleAuto = 0;
buildGoogleAuto() {
  var o = new api.GoogleAuto();
  buildCounterGoogleAuto++;
  if (buildCounterGoogleAuto < 3) {}
  buildCounterGoogleAuto--;
  return o;
}

checkGoogleAuto(api.GoogleAuto o) {
  buildCounterGoogleAuto++;
  if (buildCounterGoogleAuto < 3) {}
  buildCounterGoogleAuto--;
}

core.int buildCounterGoogleCloudStorage = 0;
buildGoogleCloudStorage() {
  var o = new api.GoogleCloudStorage();
  buildCounterGoogleCloudStorage++;
  if (buildCounterGoogleCloudStorage < 3) {
    o.gcsPath = "foo";
  }
  buildCounterGoogleCloudStorage--;
  return o;
}

checkGoogleCloudStorage(api.GoogleCloudStorage o) {
  buildCounterGoogleCloudStorage++;
  if (buildCounterGoogleCloudStorage < 3) {
    unittest.expect(o.gcsPath, unittest.equals('foo'));
  }
  buildCounterGoogleCloudStorage--;
}

core.int buildCounterLauncherActivityIntent = 0;
buildLauncherActivityIntent() {
  var o = new api.LauncherActivityIntent();
  buildCounterLauncherActivityIntent++;
  if (buildCounterLauncherActivityIntent < 3) {}
  buildCounterLauncherActivityIntent--;
  return o;
}

checkLauncherActivityIntent(api.LauncherActivityIntent o) {
  buildCounterLauncherActivityIntent++;
  if (buildCounterLauncherActivityIntent < 3) {}
  buildCounterLauncherActivityIntent--;
}

buildUnnamed3206() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3206(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocale = 0;
buildLocale() {
  var o = new api.Locale();
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    o.id = "foo";
    o.name = "foo";
    o.region = "foo";
    o.tags = buildUnnamed3206();
  }
  buildCounterLocale--;
  return o;
}

checkLocale(api.Locale o) {
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.region, unittest.equals('foo'));
    checkUnnamed3206(o.tags);
  }
  buildCounterLocale--;
}

core.int buildCounterNetworkConfiguration = 0;
buildNetworkConfiguration() {
  var o = new api.NetworkConfiguration();
  buildCounterNetworkConfiguration++;
  if (buildCounterNetworkConfiguration < 3) {
    o.downRule = buildTrafficRule();
    o.id = "foo";
    o.upRule = buildTrafficRule();
  }
  buildCounterNetworkConfiguration--;
  return o;
}

checkNetworkConfiguration(api.NetworkConfiguration o) {
  buildCounterNetworkConfiguration++;
  if (buildCounterNetworkConfiguration < 3) {
    checkTrafficRule(o.downRule);
    unittest.expect(o.id, unittest.equals('foo'));
    checkTrafficRule(o.upRule);
  }
  buildCounterNetworkConfiguration--;
}

buildUnnamed3207() {
  var o = new core.List<api.NetworkConfiguration>();
  o.add(buildNetworkConfiguration());
  o.add(buildNetworkConfiguration());
  return o;
}

checkUnnamed3207(core.List<api.NetworkConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfiguration(o[0]);
  checkNetworkConfiguration(o[1]);
}

core.int buildCounterNetworkConfigurationCatalog = 0;
buildNetworkConfigurationCatalog() {
  var o = new api.NetworkConfigurationCatalog();
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    o.configurations = buildUnnamed3207();
  }
  buildCounterNetworkConfigurationCatalog--;
  return o;
}

checkNetworkConfigurationCatalog(api.NetworkConfigurationCatalog o) {
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    checkUnnamed3207(o.configurations);
  }
  buildCounterNetworkConfigurationCatalog--;
}

core.int buildCounterObbFile = 0;
buildObbFile() {
  var o = new api.ObbFile();
  buildCounterObbFile++;
  if (buildCounterObbFile < 3) {
    o.obb = buildFileReference();
    o.obbFileName = "foo";
  }
  buildCounterObbFile--;
  return o;
}

checkObbFile(api.ObbFile o) {
  buildCounterObbFile++;
  if (buildCounterObbFile < 3) {
    checkFileReference(o.obb);
    unittest.expect(o.obbFileName, unittest.equals('foo'));
  }
  buildCounterObbFile--;
}

buildUnnamed3208() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3208(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrientation = 0;
buildOrientation() {
  var o = new api.Orientation();
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    o.id = "foo";
    o.name = "foo";
    o.tags = buildUnnamed3208();
  }
  buildCounterOrientation--;
  return o;
}

checkOrientation(api.Orientation o) {
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3208(o.tags);
  }
  buildCounterOrientation--;
}

core.int buildCounterResultStorage = 0;
buildResultStorage() {
  var o = new api.ResultStorage();
  buildCounterResultStorage++;
  if (buildCounterResultStorage < 3) {
    o.googleCloudStorage = buildGoogleCloudStorage();
    o.toolResultsExecution = buildToolResultsExecution();
    o.toolResultsHistory = buildToolResultsHistory();
  }
  buildCounterResultStorage--;
  return o;
}

checkResultStorage(api.ResultStorage o) {
  buildCounterResultStorage++;
  if (buildCounterResultStorage < 3) {
    checkGoogleCloudStorage(o.googleCloudStorage);
    checkToolResultsExecution(o.toolResultsExecution);
    checkToolResultsHistory(o.toolResultsHistory);
  }
  buildCounterResultStorage--;
}

core.int buildCounterRoboDirective = 0;
buildRoboDirective() {
  var o = new api.RoboDirective();
  buildCounterRoboDirective++;
  if (buildCounterRoboDirective < 3) {
    o.actionType = "foo";
    o.inputText = "foo";
    o.resourceName = "foo";
  }
  buildCounterRoboDirective--;
  return o;
}

checkRoboDirective(api.RoboDirective o) {
  buildCounterRoboDirective++;
  if (buildCounterRoboDirective < 3) {
    unittest.expect(o.actionType, unittest.equals('foo'));
    unittest.expect(o.inputText, unittest.equals('foo'));
    unittest.expect(o.resourceName, unittest.equals('foo'));
  }
  buildCounterRoboDirective--;
}

core.int buildCounterRoboStartingIntent = 0;
buildRoboStartingIntent() {
  var o = new api.RoboStartingIntent();
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    o.launcherActivity = buildLauncherActivityIntent();
    o.startActivity = buildStartActivityIntent();
  }
  buildCounterRoboStartingIntent--;
  return o;
}

checkRoboStartingIntent(api.RoboStartingIntent o) {
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    checkLauncherActivityIntent(o.launcherActivity);
    checkStartActivityIntent(o.startActivity);
  }
  buildCounterRoboStartingIntent--;
}

buildUnnamed3209() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStartActivityIntent = 0;
buildStartActivityIntent() {
  var o = new api.StartActivityIntent();
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    o.action = "foo";
    o.categories = buildUnnamed3209();
    o.uri = "foo";
  }
  buildCounterStartActivityIntent--;
  return o;
}

checkStartActivityIntent(api.StartActivityIntent o) {
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed3209(o.categories);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterStartActivityIntent--;
}

buildUnnamed3210() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3210(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestDetails = 0;
buildTestDetails() {
  var o = new api.TestDetails();
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    o.errorMessage = "foo";
    o.progressMessages = buildUnnamed3210();
  }
  buildCounterTestDetails--;
  return o;
}

checkTestDetails(api.TestDetails o) {
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    checkUnnamed3210(o.progressMessages);
  }
  buildCounterTestDetails--;
}

core.int buildCounterTestEnvironmentCatalog = 0;
buildTestEnvironmentCatalog() {
  var o = new api.TestEnvironmentCatalog();
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    o.androidDeviceCatalog = buildAndroidDeviceCatalog();
    o.networkConfigurationCatalog = buildNetworkConfigurationCatalog();
  }
  buildCounterTestEnvironmentCatalog--;
  return o;
}

checkTestEnvironmentCatalog(api.TestEnvironmentCatalog o) {
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    checkAndroidDeviceCatalog(o.androidDeviceCatalog);
    checkNetworkConfigurationCatalog(o.networkConfigurationCatalog);
  }
  buildCounterTestEnvironmentCatalog--;
}

core.int buildCounterTestExecution = 0;
buildTestExecution() {
  var o = new api.TestExecution();
  buildCounterTestExecution++;
  if (buildCounterTestExecution < 3) {
    o.environment = buildEnvironment();
    o.id = "foo";
    o.matrixId = "foo";
    o.projectId = "foo";
    o.state = "foo";
    o.testDetails = buildTestDetails();
    o.testSpecification = buildTestSpecification();
    o.timestamp = "foo";
    o.toolResultsStep = buildToolResultsStep();
  }
  buildCounterTestExecution--;
  return o;
}

checkTestExecution(api.TestExecution o) {
  buildCounterTestExecution++;
  if (buildCounterTestExecution < 3) {
    checkEnvironment(o.environment);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.matrixId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    checkTestDetails(o.testDetails);
    checkTestSpecification(o.testSpecification);
    unittest.expect(o.timestamp, unittest.equals('foo'));
    checkToolResultsStep(o.toolResultsStep);
  }
  buildCounterTestExecution--;
}

buildUnnamed3211() {
  var o = new core.List<api.TestExecution>();
  o.add(buildTestExecution());
  o.add(buildTestExecution());
  return o;
}

checkUnnamed3211(core.List<api.TestExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestExecution(o[0]);
  checkTestExecution(o[1]);
}

core.int buildCounterTestMatrix = 0;
buildTestMatrix() {
  var o = new api.TestMatrix();
  buildCounterTestMatrix++;
  if (buildCounterTestMatrix < 3) {
    o.clientInfo = buildClientInfo();
    o.environmentMatrix = buildEnvironmentMatrix();
    o.invalidMatrixDetails = "foo";
    o.projectId = "foo";
    o.resultStorage = buildResultStorage();
    o.state = "foo";
    o.testExecutions = buildUnnamed3211();
    o.testMatrixId = "foo";
    o.testSpecification = buildTestSpecification();
    o.timestamp = "foo";
  }
  buildCounterTestMatrix--;
  return o;
}

checkTestMatrix(api.TestMatrix o) {
  buildCounterTestMatrix++;
  if (buildCounterTestMatrix < 3) {
    checkClientInfo(o.clientInfo);
    checkEnvironmentMatrix(o.environmentMatrix);
    unittest.expect(o.invalidMatrixDetails, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkResultStorage(o.resultStorage);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed3211(o.testExecutions);
    unittest.expect(o.testMatrixId, unittest.equals('foo'));
    checkTestSpecification(o.testSpecification);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterTestMatrix--;
}

buildUnnamed3212() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3212(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3213() {
  var o = new core.List<api.EnvironmentVariable>();
  o.add(buildEnvironmentVariable());
  o.add(buildEnvironmentVariable());
  return o;
}

checkUnnamed3213(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

buildUnnamed3214() {
  var o = new core.List<api.DeviceFile>();
  o.add(buildDeviceFile());
  o.add(buildDeviceFile());
  return o;
}

checkUnnamed3214(core.List<api.DeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceFile(o[0]);
  checkDeviceFile(o[1]);
}

core.int buildCounterTestSetup = 0;
buildTestSetup() {
  var o = new api.TestSetup();
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    o.account = buildAccount();
    o.directoriesToPull = buildUnnamed3212();
    o.environmentVariables = buildUnnamed3213();
    o.filesToPush = buildUnnamed3214();
    o.networkProfile = "foo";
  }
  buildCounterTestSetup--;
  return o;
}

checkTestSetup(api.TestSetup o) {
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    checkAccount(o.account);
    checkUnnamed3212(o.directoriesToPull);
    checkUnnamed3213(o.environmentVariables);
    checkUnnamed3214(o.filesToPush);
    unittest.expect(o.networkProfile, unittest.equals('foo'));
  }
  buildCounterTestSetup--;
}

core.int buildCounterTestSpecification = 0;
buildTestSpecification() {
  var o = new api.TestSpecification();
  buildCounterTestSpecification++;
  if (buildCounterTestSpecification < 3) {
    o.androidInstrumentationTest = buildAndroidInstrumentationTest();
    o.androidRoboTest = buildAndroidRoboTest();
    o.androidTestLoop = buildAndroidTestLoop();
    o.autoGoogleLogin = true;
    o.disablePerformanceMetrics = true;
    o.disableVideoRecording = true;
    o.testSetup = buildTestSetup();
    o.testTimeout = "foo";
  }
  buildCounterTestSpecification--;
  return o;
}

checkTestSpecification(api.TestSpecification o) {
  buildCounterTestSpecification++;
  if (buildCounterTestSpecification < 3) {
    checkAndroidInstrumentationTest(o.androidInstrumentationTest);
    checkAndroidRoboTest(o.androidRoboTest);
    checkAndroidTestLoop(o.androidTestLoop);
    unittest.expect(o.autoGoogleLogin, unittest.isTrue);
    unittest.expect(o.disablePerformanceMetrics, unittest.isTrue);
    unittest.expect(o.disableVideoRecording, unittest.isTrue);
    checkTestSetup(o.testSetup);
    unittest.expect(o.testTimeout, unittest.equals('foo'));
  }
  buildCounterTestSpecification--;
}

core.int buildCounterToolResultsExecution = 0;
buildToolResultsExecution() {
  var o = new api.ToolResultsExecution();
  buildCounterToolResultsExecution++;
  if (buildCounterToolResultsExecution < 3) {
    o.executionId = "foo";
    o.historyId = "foo";
    o.projectId = "foo";
  }
  buildCounterToolResultsExecution--;
  return o;
}

checkToolResultsExecution(api.ToolResultsExecution o) {
  buildCounterToolResultsExecution++;
  if (buildCounterToolResultsExecution < 3) {
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterToolResultsExecution--;
}

core.int buildCounterToolResultsHistory = 0;
buildToolResultsHistory() {
  var o = new api.ToolResultsHistory();
  buildCounterToolResultsHistory++;
  if (buildCounterToolResultsHistory < 3) {
    o.historyId = "foo";
    o.projectId = "foo";
  }
  buildCounterToolResultsHistory--;
  return o;
}

checkToolResultsHistory(api.ToolResultsHistory o) {
  buildCounterToolResultsHistory++;
  if (buildCounterToolResultsHistory < 3) {
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterToolResultsHistory--;
}

core.int buildCounterToolResultsStep = 0;
buildToolResultsStep() {
  var o = new api.ToolResultsStep();
  buildCounterToolResultsStep++;
  if (buildCounterToolResultsStep < 3) {
    o.executionId = "foo";
    o.historyId = "foo";
    o.projectId = "foo";
    o.stepId = "foo";
  }
  buildCounterToolResultsStep--;
  return o;
}

checkToolResultsStep(api.ToolResultsStep o) {
  buildCounterToolResultsStep++;
  if (buildCounterToolResultsStep < 3) {
    unittest.expect(o.executionId, unittest.equals('foo'));
    unittest.expect(o.historyId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.stepId, unittest.equals('foo'));
  }
  buildCounterToolResultsStep--;
}

core.int buildCounterTrafficRule = 0;
buildTrafficRule() {
  var o = new api.TrafficRule();
  buildCounterTrafficRule++;
  if (buildCounterTrafficRule < 3) {
    o.bandwidth = 42.0;
    o.burst = 42.0;
    o.delay = "foo";
    o.packetDuplicationRatio = 42.0;
    o.packetLossRatio = 42.0;
  }
  buildCounterTrafficRule--;
  return o;
}

checkTrafficRule(api.TrafficRule o) {
  buildCounterTrafficRule++;
  if (buildCounterTrafficRule < 3) {
    unittest.expect(o.bandwidth, unittest.equals(42.0));
    unittest.expect(o.burst, unittest.equals(42.0));
    unittest.expect(o.delay, unittest.equals('foo'));
    unittest.expect(o.packetDuplicationRatio, unittest.equals(42.0));
    unittest.expect(o.packetLossRatio, unittest.equals(42.0));
  }
  buildCounterTrafficRule--;
}

main() {
  unittest.group("obj-schema-Account", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccount();
      var od = new api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group("obj-schema-AndroidDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidDevice();
      var od = new api.AndroidDevice.fromJson(o.toJson());
      checkAndroidDevice(od);
    });
  });

  unittest.group("obj-schema-AndroidDeviceCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidDeviceCatalog();
      var od = new api.AndroidDeviceCatalog.fromJson(o.toJson());
      checkAndroidDeviceCatalog(od);
    });
  });

  unittest.group("obj-schema-AndroidDeviceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidDeviceList();
      var od = new api.AndroidDeviceList.fromJson(o.toJson());
      checkAndroidDeviceList(od);
    });
  });

  unittest.group("obj-schema-AndroidInstrumentationTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidInstrumentationTest();
      var od = new api.AndroidInstrumentationTest.fromJson(o.toJson());
      checkAndroidInstrumentationTest(od);
    });
  });

  unittest.group("obj-schema-AndroidMatrix", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidMatrix();
      var od = new api.AndroidMatrix.fromJson(o.toJson());
      checkAndroidMatrix(od);
    });
  });

  unittest.group("obj-schema-AndroidModel", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidModel();
      var od = new api.AndroidModel.fromJson(o.toJson());
      checkAndroidModel(od);
    });
  });

  unittest.group("obj-schema-AndroidRoboTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidRoboTest();
      var od = new api.AndroidRoboTest.fromJson(o.toJson());
      checkAndroidRoboTest(od);
    });
  });

  unittest.group("obj-schema-AndroidRuntimeConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidRuntimeConfiguration();
      var od = new api.AndroidRuntimeConfiguration.fromJson(o.toJson());
      checkAndroidRuntimeConfiguration(od);
    });
  });

  unittest.group("obj-schema-AndroidTestLoop", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidTestLoop();
      var od = new api.AndroidTestLoop.fromJson(o.toJson());
      checkAndroidTestLoop(od);
    });
  });

  unittest.group("obj-schema-AndroidVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildAndroidVersion();
      var od = new api.AndroidVersion.fromJson(o.toJson());
      checkAndroidVersion(od);
    });
  });

  unittest.group("obj-schema-CancelTestMatrixResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCancelTestMatrixResponse();
      var od = new api.CancelTestMatrixResponse.fromJson(o.toJson());
      checkCancelTestMatrixResponse(od);
    });
  });

  unittest.group("obj-schema-ClientInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientInfo();
      var od = new api.ClientInfo.fromJson(o.toJson());
      checkClientInfo(od);
    });
  });

  unittest.group("obj-schema-ClientInfoDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildClientInfoDetail();
      var od = new api.ClientInfoDetail.fromJson(o.toJson());
      checkClientInfoDetail(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DeviceFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceFile();
      var od = new api.DeviceFile.fromJson(o.toJson());
      checkDeviceFile(od);
    });
  });

  unittest.group("obj-schema-Distribution", () {
    unittest.test("to-json--from-json", () {
      var o = buildDistribution();
      var od = new api.Distribution.fromJson(o.toJson());
      checkDistribution(od);
    });
  });

  unittest.group("obj-schema-Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironment();
      var od = new api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group("obj-schema-EnvironmentMatrix", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironmentMatrix();
      var od = new api.EnvironmentMatrix.fromJson(o.toJson());
      checkEnvironmentMatrix(od);
    });
  });

  unittest.group("obj-schema-EnvironmentVariable", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironmentVariable();
      var od = new api.EnvironmentVariable.fromJson(o.toJson());
      checkEnvironmentVariable(od);
    });
  });

  unittest.group("obj-schema-FileReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileReference();
      var od = new api.FileReference.fromJson(o.toJson());
      checkFileReference(od);
    });
  });

  unittest.group("obj-schema-GoogleAuto", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleAuto();
      var od = new api.GoogleAuto.fromJson(o.toJson());
      checkGoogleAuto(od);
    });
  });

  unittest.group("obj-schema-GoogleCloudStorage", () {
    unittest.test("to-json--from-json", () {
      var o = buildGoogleCloudStorage();
      var od = new api.GoogleCloudStorage.fromJson(o.toJson());
      checkGoogleCloudStorage(od);
    });
  });

  unittest.group("obj-schema-LauncherActivityIntent", () {
    unittest.test("to-json--from-json", () {
      var o = buildLauncherActivityIntent();
      var od = new api.LauncherActivityIntent.fromJson(o.toJson());
      checkLauncherActivityIntent(od);
    });
  });

  unittest.group("obj-schema-Locale", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocale();
      var od = new api.Locale.fromJson(o.toJson());
      checkLocale(od);
    });
  });

  unittest.group("obj-schema-NetworkConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkConfiguration();
      var od = new api.NetworkConfiguration.fromJson(o.toJson());
      checkNetworkConfiguration(od);
    });
  });

  unittest.group("obj-schema-NetworkConfigurationCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkConfigurationCatalog();
      var od = new api.NetworkConfigurationCatalog.fromJson(o.toJson());
      checkNetworkConfigurationCatalog(od);
    });
  });

  unittest.group("obj-schema-ObbFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildObbFile();
      var od = new api.ObbFile.fromJson(o.toJson());
      checkObbFile(od);
    });
  });

  unittest.group("obj-schema-Orientation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrientation();
      var od = new api.Orientation.fromJson(o.toJson());
      checkOrientation(od);
    });
  });

  unittest.group("obj-schema-ResultStorage", () {
    unittest.test("to-json--from-json", () {
      var o = buildResultStorage();
      var od = new api.ResultStorage.fromJson(o.toJson());
      checkResultStorage(od);
    });
  });

  unittest.group("obj-schema-RoboDirective", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoboDirective();
      var od = new api.RoboDirective.fromJson(o.toJson());
      checkRoboDirective(od);
    });
  });

  unittest.group("obj-schema-RoboStartingIntent", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoboStartingIntent();
      var od = new api.RoboStartingIntent.fromJson(o.toJson());
      checkRoboStartingIntent(od);
    });
  });

  unittest.group("obj-schema-StartActivityIntent", () {
    unittest.test("to-json--from-json", () {
      var o = buildStartActivityIntent();
      var od = new api.StartActivityIntent.fromJson(o.toJson());
      checkStartActivityIntent(od);
    });
  });

  unittest.group("obj-schema-TestDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestDetails();
      var od = new api.TestDetails.fromJson(o.toJson());
      checkTestDetails(od);
    });
  });

  unittest.group("obj-schema-TestEnvironmentCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestEnvironmentCatalog();
      var od = new api.TestEnvironmentCatalog.fromJson(o.toJson());
      checkTestEnvironmentCatalog(od);
    });
  });

  unittest.group("obj-schema-TestExecution", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestExecution();
      var od = new api.TestExecution.fromJson(o.toJson());
      checkTestExecution(od);
    });
  });

  unittest.group("obj-schema-TestMatrix", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestMatrix();
      var od = new api.TestMatrix.fromJson(o.toJson());
      checkTestMatrix(od);
    });
  });

  unittest.group("obj-schema-TestSetup", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestSetup();
      var od = new api.TestSetup.fromJson(o.toJson());
      checkTestSetup(od);
    });
  });

  unittest.group("obj-schema-TestSpecification", () {
    unittest.test("to-json--from-json", () {
      var o = buildTestSpecification();
      var od = new api.TestSpecification.fromJson(o.toJson());
      checkTestSpecification(od);
    });
  });

  unittest.group("obj-schema-ToolResultsExecution", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolResultsExecution();
      var od = new api.ToolResultsExecution.fromJson(o.toJson());
      checkToolResultsExecution(od);
    });
  });

  unittest.group("obj-schema-ToolResultsHistory", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolResultsHistory();
      var od = new api.ToolResultsHistory.fromJson(o.toJson());
      checkToolResultsHistory(od);
    });
  });

  unittest.group("obj-schema-ToolResultsStep", () {
    unittest.test("to-json--from-json", () {
      var o = buildToolResultsStep();
      var od = new api.ToolResultsStep.fromJson(o.toJson());
      checkToolResultsStep(od);
    });
  });

  unittest.group("obj-schema-TrafficRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrafficRule();
      var od = new api.TrafficRule.fromJson(o.toJson());
      checkTrafficRule(od);
    });
  });

  unittest.group("resource-ProjectsTestMatricesResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.ProjectsTestMatricesResourceApi res =
          new api.TestingApi(mock).projects.testMatrices;
      var arg_projectId = "foo";
      var arg_testMatrixId = "foo";
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
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/testMatrices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/testMatrices/"));
        pathOffset += 14;
        index = path.indexOf(":cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_testMatrixId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCancelTestMatrixResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CancelTestMatrixResponse response) {
        checkCancelTestMatrixResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsTestMatricesResourceApi res =
          new api.TestingApi(mock).projects.testMatrices;
      var arg_request = buildTestMatrix();
      var arg_projectId = "foo";
      var arg_requestId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TestMatrix.fromJson(json);
        checkTestMatrix(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/testMatrices", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/testMatrices"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestMatrix());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.TestMatrix response) {
        checkTestMatrix(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsTestMatricesResourceApi res =
          new api.TestingApi(mock).projects.testMatrices;
      var arg_projectId = "foo";
      var arg_testMatrixId = "foo";
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
            unittest.equals("v1/projects/"));
        pathOffset += 12;
        index = path.indexOf("/testMatrices/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/testMatrices/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_testMatrixId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildTestMatrix());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.TestMatrix response) {
        checkTestMatrix(response);
      })));
    });
  });

  unittest.group("resource-TestEnvironmentCatalogResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.TestEnvironmentCatalogResourceApi res =
          new api.TestingApi(mock).testEnvironmentCatalog;
      var arg_environmentType = "foo";
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("v1/testEnvironmentCatalog/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_environmentType"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTestEnvironmentCatalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_environmentType,
              projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.TestEnvironmentCatalog response) {
        checkTestEnvironmentCatalog(response);
      })));
    });
  });
}
