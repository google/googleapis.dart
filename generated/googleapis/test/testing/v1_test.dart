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

buildUnnamed2151() {
  var o = new core.List<api.AndroidModel>();
  o.add(buildAndroidModel());
  o.add(buildAndroidModel());
  return o;
}

checkUnnamed2151(core.List<api.AndroidModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidModel(o[0]);
  checkAndroidModel(o[1]);
}

buildUnnamed2152() {
  var o = new core.List<api.AndroidVersion>();
  o.add(buildAndroidVersion());
  o.add(buildAndroidVersion());
  return o;
}

checkUnnamed2152(core.List<api.AndroidVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidVersion(o[0]);
  checkAndroidVersion(o[1]);
}

core.int buildCounterAndroidDeviceCatalog = 0;
buildAndroidDeviceCatalog() {
  var o = new api.AndroidDeviceCatalog();
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    o.models = buildUnnamed2151();
    o.runtimeConfiguration = buildAndroidRuntimeConfiguration();
    o.versions = buildUnnamed2152();
  }
  buildCounterAndroidDeviceCatalog--;
  return o;
}

checkAndroidDeviceCatalog(api.AndroidDeviceCatalog o) {
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    checkUnnamed2151(o.models);
    checkAndroidRuntimeConfiguration(o.runtimeConfiguration);
    checkUnnamed2152(o.versions);
  }
  buildCounterAndroidDeviceCatalog--;
}

buildUnnamed2153() {
  var o = new core.List<api.AndroidDevice>();
  o.add(buildAndroidDevice());
  o.add(buildAndroidDevice());
  return o;
}

checkUnnamed2153(core.List<api.AndroidDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidDevice(o[0]);
  checkAndroidDevice(o[1]);
}

core.int buildCounterAndroidDeviceList = 0;
buildAndroidDeviceList() {
  var o = new api.AndroidDeviceList();
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    o.androidDevices = buildUnnamed2153();
  }
  buildCounterAndroidDeviceList--;
  return o;
}

checkAndroidDeviceList(api.AndroidDeviceList o) {
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    checkUnnamed2153(o.androidDevices);
  }
  buildCounterAndroidDeviceList--;
}

buildUnnamed2154() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2154(core.List<core.String> o) {
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
    o.appBundle = buildAppBundle();
    o.appPackageId = "foo";
    o.orchestratorOption = "foo";
    o.testApk = buildFileReference();
    o.testPackageId = "foo";
    o.testRunnerClass = "foo";
    o.testTargets = buildUnnamed2154();
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    checkFileReference(o.appApk);
    checkAppBundle(o.appBundle);
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    unittest.expect(o.orchestratorOption, unittest.equals('foo'));
    checkFileReference(o.testApk);
    unittest.expect(o.testPackageId, unittest.equals('foo'));
    unittest.expect(o.testRunnerClass, unittest.equals('foo'));
    checkUnnamed2154(o.testTargets);
  }
  buildCounterAndroidInstrumentationTest--;
}

buildUnnamed2155() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2156() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2156(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2157() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2157(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2158() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2158(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidMatrix = 0;
buildAndroidMatrix() {
  var o = new api.AndroidMatrix();
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    o.androidModelIds = buildUnnamed2155();
    o.androidVersionIds = buildUnnamed2156();
    o.locales = buildUnnamed2157();
    o.orientations = buildUnnamed2158();
  }
  buildCounterAndroidMatrix--;
  return o;
}

checkAndroidMatrix(api.AndroidMatrix o) {
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    checkUnnamed2155(o.androidModelIds);
    checkUnnamed2156(o.androidVersionIds);
    checkUnnamed2157(o.locales);
    checkUnnamed2158(o.orientations);
  }
  buildCounterAndroidMatrix--;
}

buildUnnamed2159() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2160() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2161() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2161(core.List<core.String> o) {
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
    o.formFactor = "foo";
    o.id = "foo";
    o.lowFpsVideoRecording = true;
    o.manufacturer = "foo";
    o.name = "foo";
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedAbis = buildUnnamed2159();
    o.supportedVersionIds = buildUnnamed2160();
    o.tags = buildUnnamed2161();
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
    unittest.expect(o.formFactor, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lowFpsVideoRecording, unittest.isTrue);
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.screenDensity, unittest.equals(42));
    unittest.expect(o.screenX, unittest.equals(42));
    unittest.expect(o.screenY, unittest.equals(42));
    checkUnnamed2159(o.supportedAbis);
    checkUnnamed2160(o.supportedVersionIds);
    checkUnnamed2161(o.tags);
  }
  buildCounterAndroidModel--;
}

buildUnnamed2162() {
  var o = new core.List<api.RoboDirective>();
  o.add(buildRoboDirective());
  o.add(buildRoboDirective());
  return o;
}

checkUnnamed2162(core.List<api.RoboDirective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboDirective(o[0]);
  checkRoboDirective(o[1]);
}

buildUnnamed2163() {
  var o = new core.List<api.RoboStartingIntent>();
  o.add(buildRoboStartingIntent());
  o.add(buildRoboStartingIntent());
  return o;
}

checkUnnamed2163(core.List<api.RoboStartingIntent> o) {
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
    o.appBundle = buildAppBundle();
    o.appInitialActivity = "foo";
    o.appPackageId = "foo";
    o.maxDepth = 42;
    o.maxSteps = 42;
    o.roboDirectives = buildUnnamed2162();
    o.roboScript = buildFileReference();
    o.startingIntents = buildUnnamed2163();
  }
  buildCounterAndroidRoboTest--;
  return o;
}

checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    checkFileReference(o.appApk);
    checkAppBundle(o.appBundle);
    unittest.expect(o.appInitialActivity, unittest.equals('foo'));
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    unittest.expect(o.maxDepth, unittest.equals(42));
    unittest.expect(o.maxSteps, unittest.equals(42));
    checkUnnamed2162(o.roboDirectives);
    checkFileReference(o.roboScript);
    checkUnnamed2163(o.startingIntents);
  }
  buildCounterAndroidRoboTest--;
}

buildUnnamed2164() {
  var o = new core.List<api.Locale>();
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

checkUnnamed2164(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

buildUnnamed2165() {
  var o = new core.List<api.Orientation>();
  o.add(buildOrientation());
  o.add(buildOrientation());
  return o;
}

checkUnnamed2165(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0]);
  checkOrientation(o[1]);
}

core.int buildCounterAndroidRuntimeConfiguration = 0;
buildAndroidRuntimeConfiguration() {
  var o = new api.AndroidRuntimeConfiguration();
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    o.locales = buildUnnamed2164();
    o.orientations = buildUnnamed2165();
  }
  buildCounterAndroidRuntimeConfiguration--;
  return o;
}

checkAndroidRuntimeConfiguration(api.AndroidRuntimeConfiguration o) {
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    checkUnnamed2164(o.locales);
    checkUnnamed2165(o.orientations);
  }
  buildCounterAndroidRuntimeConfiguration--;
}

buildUnnamed2166() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2167() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed2167(core.List<core.int> o) {
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
    o.appBundle = buildAppBundle();
    o.appPackageId = "foo";
    o.scenarioLabels = buildUnnamed2166();
    o.scenarios = buildUnnamed2167();
  }
  buildCounterAndroidTestLoop--;
  return o;
}

checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    checkFileReference(o.appApk);
    checkAppBundle(o.appBundle);
    unittest.expect(o.appPackageId, unittest.equals('foo'));
    checkUnnamed2166(o.scenarioLabels);
    checkUnnamed2167(o.scenarios);
  }
  buildCounterAndroidTestLoop--;
}

buildUnnamed2168() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2168(core.List<core.String> o) {
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
    o.tags = buildUnnamed2168();
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
    checkUnnamed2168(o.tags);
    unittest.expect(o.versionString, unittest.equals('foo'));
  }
  buildCounterAndroidVersion--;
}

core.int buildCounterApk = 0;
buildApk() {
  var o = new api.Apk();
  buildCounterApk++;
  if (buildCounterApk < 3) {
    o.location = buildFileReference();
    o.packageName = "foo";
  }
  buildCounterApk--;
  return o;
}

checkApk(api.Apk o) {
  buildCounterApk++;
  if (buildCounterApk < 3) {
    checkFileReference(o.location);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterApk--;
}

core.int buildCounterApkDetail = 0;
buildApkDetail() {
  var o = new api.ApkDetail();
  buildCounterApkDetail++;
  if (buildCounterApkDetail < 3) {
    o.apkManifest = buildApkManifest();
  }
  buildCounterApkDetail--;
  return o;
}

checkApkDetail(api.ApkDetail o) {
  buildCounterApkDetail++;
  if (buildCounterApkDetail < 3) {
    checkApkManifest(o.apkManifest);
  }
  buildCounterApkDetail--;
}

buildUnnamed2169() {
  var o = new core.List<api.IntentFilter>();
  o.add(buildIntentFilter());
  o.add(buildIntentFilter());
  return o;
}

checkUnnamed2169(core.List<api.IntentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentFilter(o[0]);
  checkIntentFilter(o[1]);
}

core.int buildCounterApkManifest = 0;
buildApkManifest() {
  var o = new api.ApkManifest();
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    o.applicationLabel = "foo";
    o.intentFilters = buildUnnamed2169();
    o.maxSdkVersion = 42;
    o.minSdkVersion = 42;
    o.packageName = "foo";
    o.targetSdkVersion = 42;
  }
  buildCounterApkManifest--;
  return o;
}

checkApkManifest(api.ApkManifest o) {
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    unittest.expect(o.applicationLabel, unittest.equals('foo'));
    checkUnnamed2169(o.intentFilters);
    unittest.expect(o.maxSdkVersion, unittest.equals(42));
    unittest.expect(o.minSdkVersion, unittest.equals(42));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.targetSdkVersion, unittest.equals(42));
  }
  buildCounterApkManifest--;
}

core.int buildCounterAppBundle = 0;
buildAppBundle() {
  var o = new api.AppBundle();
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    o.bundleLocation = buildFileReference();
  }
  buildCounterAppBundle--;
  return o;
}

checkAppBundle(api.AppBundle o) {
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    checkFileReference(o.bundleLocation);
  }
  buildCounterAppBundle--;
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

buildUnnamed2170() {
  var o = new core.List<api.ClientInfoDetail>();
  o.add(buildClientInfoDetail());
  o.add(buildClientInfoDetail());
  return o;
}

checkUnnamed2170(core.List<api.ClientInfoDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientInfoDetail(o[0]);
  checkClientInfoDetail(o[1]);
}

core.int buildCounterClientInfo = 0;
buildClientInfo() {
  var o = new api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientInfoDetails = buildUnnamed2170();
    o.name = "foo";
  }
  buildCounterClientInfo--;
  return o;
}

checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    checkUnnamed2170(o.clientInfoDetails);
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
    o.regularFile = buildRegularFile();
  }
  buildCounterDeviceFile--;
  return o;
}

checkDeviceFile(api.DeviceFile o) {
  buildCounterDeviceFile++;
  if (buildCounterDeviceFile < 3) {
    checkObbFile(o.obbFile);
    checkRegularFile(o.regularFile);
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
    o.iosDevice = buildIosDevice();
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkAndroidDevice(o.androidDevice);
    checkIosDevice(o.iosDevice);
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
    o.iosDeviceList = buildIosDeviceList();
  }
  buildCounterEnvironmentMatrix--;
  return o;
}

checkEnvironmentMatrix(api.EnvironmentMatrix o) {
  buildCounterEnvironmentMatrix++;
  if (buildCounterEnvironmentMatrix < 3) {
    checkAndroidDeviceList(o.androidDeviceList);
    checkAndroidMatrix(o.androidMatrix);
    checkIosDeviceList(o.iosDeviceList);
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

core.int buildCounterGetApkDetailsResponse = 0;
buildGetApkDetailsResponse() {
  var o = new api.GetApkDetailsResponse();
  buildCounterGetApkDetailsResponse++;
  if (buildCounterGetApkDetailsResponse < 3) {
    o.apkDetail = buildApkDetail();
  }
  buildCounterGetApkDetailsResponse--;
  return o;
}

checkGetApkDetailsResponse(api.GetApkDetailsResponse o) {
  buildCounterGetApkDetailsResponse++;
  if (buildCounterGetApkDetailsResponse < 3) {
    checkApkDetail(o.apkDetail);
  }
  buildCounterGetApkDetailsResponse--;
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

buildUnnamed2171() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2171(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2172() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2172(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentFilter = 0;
buildIntentFilter() {
  var o = new api.IntentFilter();
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    o.actionNames = buildUnnamed2171();
    o.categoryNames = buildUnnamed2172();
    o.mimeType = "foo";
  }
  buildCounterIntentFilter--;
  return o;
}

checkIntentFilter(api.IntentFilter o) {
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    checkUnnamed2171(o.actionNames);
    checkUnnamed2172(o.categoryNames);
    unittest.expect(o.mimeType, unittest.equals('foo'));
  }
  buildCounterIntentFilter--;
}

core.int buildCounterIosDevice = 0;
buildIosDevice() {
  var o = new api.IosDevice();
  buildCounterIosDevice++;
  if (buildCounterIosDevice < 3) {
    o.iosModelId = "foo";
    o.iosVersionId = "foo";
    o.locale = "foo";
    o.orientation = "foo";
  }
  buildCounterIosDevice--;
  return o;
}

checkIosDevice(api.IosDevice o) {
  buildCounterIosDevice++;
  if (buildCounterIosDevice < 3) {
    unittest.expect(o.iosModelId, unittest.equals('foo'));
    unittest.expect(o.iosVersionId, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.orientation, unittest.equals('foo'));
  }
  buildCounterIosDevice--;
}

buildUnnamed2173() {
  var o = new core.List<api.IosModel>();
  o.add(buildIosModel());
  o.add(buildIosModel());
  return o;
}

checkUnnamed2173(core.List<api.IosModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosModel(o[0]);
  checkIosModel(o[1]);
}

buildUnnamed2174() {
  var o = new core.List<api.IosVersion>();
  o.add(buildIosVersion());
  o.add(buildIosVersion());
  return o;
}

checkUnnamed2174(core.List<api.IosVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosVersion(o[0]);
  checkIosVersion(o[1]);
}

buildUnnamed2175() {
  var o = new core.List<api.XcodeVersion>();
  o.add(buildXcodeVersion());
  o.add(buildXcodeVersion());
  return o;
}

checkUnnamed2175(core.List<api.XcodeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkXcodeVersion(o[0]);
  checkXcodeVersion(o[1]);
}

core.int buildCounterIosDeviceCatalog = 0;
buildIosDeviceCatalog() {
  var o = new api.IosDeviceCatalog();
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    o.models = buildUnnamed2173();
    o.runtimeConfiguration = buildIosRuntimeConfiguration();
    o.versions = buildUnnamed2174();
    o.xcodeVersions = buildUnnamed2175();
  }
  buildCounterIosDeviceCatalog--;
  return o;
}

checkIosDeviceCatalog(api.IosDeviceCatalog o) {
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    checkUnnamed2173(o.models);
    checkIosRuntimeConfiguration(o.runtimeConfiguration);
    checkUnnamed2174(o.versions);
    checkUnnamed2175(o.xcodeVersions);
  }
  buildCounterIosDeviceCatalog--;
}

buildUnnamed2176() {
  var o = new core.List<api.IosDevice>();
  o.add(buildIosDevice());
  o.add(buildIosDevice());
  return o;
}

checkUnnamed2176(core.List<api.IosDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDevice(o[0]);
  checkIosDevice(o[1]);
}

core.int buildCounterIosDeviceList = 0;
buildIosDeviceList() {
  var o = new api.IosDeviceList();
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    o.iosDevices = buildUnnamed2176();
  }
  buildCounterIosDeviceList--;
  return o;
}

checkIosDeviceList(api.IosDeviceList o) {
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    checkUnnamed2176(o.iosDevices);
  }
  buildCounterIosDeviceList--;
}

buildUnnamed2177() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2178() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2178(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2179() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2179(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIosModel = 0;
buildIosModel() {
  var o = new api.IosModel();
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    o.deviceCapabilities = buildUnnamed2177();
    o.formFactor = "foo";
    o.id = "foo";
    o.name = "foo";
    o.supportedVersionIds = buildUnnamed2178();
    o.tags = buildUnnamed2179();
  }
  buildCounterIosModel--;
  return o;
}

checkIosModel(api.IosModel o) {
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    checkUnnamed2177(o.deviceCapabilities);
    unittest.expect(o.formFactor, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2178(o.supportedVersionIds);
    checkUnnamed2179(o.tags);
  }
  buildCounterIosModel--;
}

buildUnnamed2180() {
  var o = new core.List<api.Locale>();
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

checkUnnamed2180(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

buildUnnamed2181() {
  var o = new core.List<api.Orientation>();
  o.add(buildOrientation());
  o.add(buildOrientation());
  return o;
}

checkUnnamed2181(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0]);
  checkOrientation(o[1]);
}

core.int buildCounterIosRuntimeConfiguration = 0;
buildIosRuntimeConfiguration() {
  var o = new api.IosRuntimeConfiguration();
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    o.locales = buildUnnamed2180();
    o.orientations = buildUnnamed2181();
  }
  buildCounterIosRuntimeConfiguration--;
  return o;
}

checkIosRuntimeConfiguration(api.IosRuntimeConfiguration o) {
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    checkUnnamed2180(o.locales);
    checkUnnamed2181(o.orientations);
  }
  buildCounterIosRuntimeConfiguration--;
}

core.int buildCounterIosTestSetup = 0;
buildIosTestSetup() {
  var o = new api.IosTestSetup();
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    o.networkProfile = "foo";
  }
  buildCounterIosTestSetup--;
  return o;
}

checkIosTestSetup(api.IosTestSetup o) {
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    unittest.expect(o.networkProfile, unittest.equals('foo'));
  }
  buildCounterIosTestSetup--;
}

buildUnnamed2182() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2182(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2183() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2183(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIosVersion = 0;
buildIosVersion() {
  var o = new api.IosVersion();
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    o.id = "foo";
    o.majorVersion = 42;
    o.minorVersion = 42;
    o.supportedXcodeVersionIds = buildUnnamed2182();
    o.tags = buildUnnamed2183();
  }
  buildCounterIosVersion--;
  return o;
}

checkIosVersion(api.IosVersion o) {
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.majorVersion, unittest.equals(42));
    unittest.expect(o.minorVersion, unittest.equals(42));
    checkUnnamed2182(o.supportedXcodeVersionIds);
    checkUnnamed2183(o.tags);
  }
  buildCounterIosVersion--;
}

core.int buildCounterIosXcTest = 0;
buildIosXcTest() {
  var o = new api.IosXcTest();
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    o.appBundleId = "foo";
    o.testsZip = buildFileReference();
    o.xcodeVersion = "foo";
    o.xctestrun = buildFileReference();
  }
  buildCounterIosXcTest--;
  return o;
}

checkIosXcTest(api.IosXcTest o) {
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    unittest.expect(o.appBundleId, unittest.equals('foo'));
    checkFileReference(o.testsZip);
    unittest.expect(o.xcodeVersion, unittest.equals('foo'));
    checkFileReference(o.xctestrun);
  }
  buildCounterIosXcTest--;
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

buildUnnamed2184() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2184(core.List<core.String> o) {
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
    o.tags = buildUnnamed2184();
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
    checkUnnamed2184(o.tags);
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

buildUnnamed2185() {
  var o = new core.List<api.NetworkConfiguration>();
  o.add(buildNetworkConfiguration());
  o.add(buildNetworkConfiguration());
  return o;
}

checkUnnamed2185(core.List<api.NetworkConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfiguration(o[0]);
  checkNetworkConfiguration(o[1]);
}

core.int buildCounterNetworkConfigurationCatalog = 0;
buildNetworkConfigurationCatalog() {
  var o = new api.NetworkConfigurationCatalog();
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    o.configurations = buildUnnamed2185();
  }
  buildCounterNetworkConfigurationCatalog--;
  return o;
}

checkNetworkConfigurationCatalog(api.NetworkConfigurationCatalog o) {
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    checkUnnamed2185(o.configurations);
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

buildUnnamed2186() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2186(core.List<core.String> o) {
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
    o.tags = buildUnnamed2186();
  }
  buildCounterOrientation--;
  return o;
}

checkOrientation(api.Orientation o) {
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2186(o.tags);
  }
  buildCounterOrientation--;
}

core.int buildCounterProvidedSoftwareCatalog = 0;
buildProvidedSoftwareCatalog() {
  var o = new api.ProvidedSoftwareCatalog();
  buildCounterProvidedSoftwareCatalog++;
  if (buildCounterProvidedSoftwareCatalog < 3) {
    o.orchestratorVersion = "foo";
  }
  buildCounterProvidedSoftwareCatalog--;
  return o;
}

checkProvidedSoftwareCatalog(api.ProvidedSoftwareCatalog o) {
  buildCounterProvidedSoftwareCatalog++;
  if (buildCounterProvidedSoftwareCatalog < 3) {
    unittest.expect(o.orchestratorVersion, unittest.equals('foo'));
  }
  buildCounterProvidedSoftwareCatalog--;
}

core.int buildCounterRegularFile = 0;
buildRegularFile() {
  var o = new api.RegularFile();
  buildCounterRegularFile++;
  if (buildCounterRegularFile < 3) {
    o.content = buildFileReference();
    o.devicePath = "foo";
  }
  buildCounterRegularFile--;
  return o;
}

checkRegularFile(api.RegularFile o) {
  buildCounterRegularFile++;
  if (buildCounterRegularFile < 3) {
    checkFileReference(o.content);
    unittest.expect(o.devicePath, unittest.equals('foo'));
  }
  buildCounterRegularFile--;
}

core.int buildCounterResultStorage = 0;
buildResultStorage() {
  var o = new api.ResultStorage();
  buildCounterResultStorage++;
  if (buildCounterResultStorage < 3) {
    o.googleCloudStorage = buildGoogleCloudStorage();
    o.resultsUrl = "foo";
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
    unittest.expect(o.resultsUrl, unittest.equals('foo'));
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
    o.timeout = "foo";
  }
  buildCounterRoboStartingIntent--;
  return o;
}

checkRoboStartingIntent(api.RoboStartingIntent o) {
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    checkLauncherActivityIntent(o.launcherActivity);
    checkStartActivityIntent(o.startActivity);
    unittest.expect(o.timeout, unittest.equals('foo'));
  }
  buildCounterRoboStartingIntent--;
}

buildUnnamed2187() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2187(core.List<core.String> o) {
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
    o.categories = buildUnnamed2187();
    o.uri = "foo";
  }
  buildCounterStartActivityIntent--;
  return o;
}

checkStartActivityIntent(api.StartActivityIntent o) {
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    unittest.expect(o.action, unittest.equals('foo'));
    checkUnnamed2187(o.categories);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterStartActivityIntent--;
}

buildUnnamed2188() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2188(core.List<core.String> o) {
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
    o.progressMessages = buildUnnamed2188();
  }
  buildCounterTestDetails--;
  return o;
}

checkTestDetails(api.TestDetails o) {
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    checkUnnamed2188(o.progressMessages);
  }
  buildCounterTestDetails--;
}

core.int buildCounterTestEnvironmentCatalog = 0;
buildTestEnvironmentCatalog() {
  var o = new api.TestEnvironmentCatalog();
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    o.androidDeviceCatalog = buildAndroidDeviceCatalog();
    o.iosDeviceCatalog = buildIosDeviceCatalog();
    o.networkConfigurationCatalog = buildNetworkConfigurationCatalog();
    o.softwareCatalog = buildProvidedSoftwareCatalog();
  }
  buildCounterTestEnvironmentCatalog--;
  return o;
}

checkTestEnvironmentCatalog(api.TestEnvironmentCatalog o) {
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    checkAndroidDeviceCatalog(o.androidDeviceCatalog);
    checkIosDeviceCatalog(o.iosDeviceCatalog);
    checkNetworkConfigurationCatalog(o.networkConfigurationCatalog);
    checkProvidedSoftwareCatalog(o.softwareCatalog);
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

buildUnnamed2189() {
  var o = new core.List<api.TestExecution>();
  o.add(buildTestExecution());
  o.add(buildTestExecution());
  return o;
}

checkUnnamed2189(core.List<api.TestExecution> o) {
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
    o.flakyTestAttempts = 42;
    o.invalidMatrixDetails = "foo";
    o.outcomeSummary = "foo";
    o.projectId = "foo";
    o.resultStorage = buildResultStorage();
    o.state = "foo";
    o.testExecutions = buildUnnamed2189();
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
    unittest.expect(o.flakyTestAttempts, unittest.equals(42));
    unittest.expect(o.invalidMatrixDetails, unittest.equals('foo'));
    unittest.expect(o.outcomeSummary, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkResultStorage(o.resultStorage);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed2189(o.testExecutions);
    unittest.expect(o.testMatrixId, unittest.equals('foo'));
    checkTestSpecification(o.testSpecification);
    unittest.expect(o.timestamp, unittest.equals('foo'));
  }
  buildCounterTestMatrix--;
}

buildUnnamed2190() {
  var o = new core.List<api.Apk>();
  o.add(buildApk());
  o.add(buildApk());
  return o;
}

checkUnnamed2190(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

buildUnnamed2191() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2191(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2192() {
  var o = new core.List<api.EnvironmentVariable>();
  o.add(buildEnvironmentVariable());
  o.add(buildEnvironmentVariable());
  return o;
}

checkUnnamed2192(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

buildUnnamed2193() {
  var o = new core.List<api.DeviceFile>();
  o.add(buildDeviceFile());
  o.add(buildDeviceFile());
  return o;
}

checkUnnamed2193(core.List<api.DeviceFile> o) {
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
    o.additionalApks = buildUnnamed2190();
    o.directoriesToPull = buildUnnamed2191();
    o.environmentVariables = buildUnnamed2192();
    o.filesToPush = buildUnnamed2193();
    o.networkProfile = "foo";
  }
  buildCounterTestSetup--;
  return o;
}

checkTestSetup(api.TestSetup o) {
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    checkAccount(o.account);
    checkUnnamed2190(o.additionalApks);
    checkUnnamed2191(o.directoriesToPull);
    checkUnnamed2192(o.environmentVariables);
    checkUnnamed2193(o.filesToPush);
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
    o.disablePerformanceMetrics = true;
    o.disableVideoRecording = true;
    o.iosTestSetup = buildIosTestSetup();
    o.iosXcTest = buildIosXcTest();
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
    unittest.expect(o.disablePerformanceMetrics, unittest.isTrue);
    unittest.expect(o.disableVideoRecording, unittest.isTrue);
    checkIosTestSetup(o.iosTestSetup);
    checkIosXcTest(o.iosXcTest);
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

buildUnnamed2194() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterXcodeVersion = 0;
buildXcodeVersion() {
  var o = new api.XcodeVersion();
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    o.tags = buildUnnamed2194();
    o.version = "foo";
  }
  buildCounterXcodeVersion--;
  return o;
}

checkXcodeVersion(api.XcodeVersion o) {
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    checkUnnamed2194(o.tags);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterXcodeVersion--;
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

  unittest.group("obj-schema-Apk", () {
    unittest.test("to-json--from-json", () {
      var o = buildApk();
      var od = new api.Apk.fromJson(o.toJson());
      checkApk(od);
    });
  });

  unittest.group("obj-schema-ApkDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildApkDetail();
      var od = new api.ApkDetail.fromJson(o.toJson());
      checkApkDetail(od);
    });
  });

  unittest.group("obj-schema-ApkManifest", () {
    unittest.test("to-json--from-json", () {
      var o = buildApkManifest();
      var od = new api.ApkManifest.fromJson(o.toJson());
      checkApkManifest(od);
    });
  });

  unittest.group("obj-schema-AppBundle", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppBundle();
      var od = new api.AppBundle.fromJson(o.toJson());
      checkAppBundle(od);
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

  unittest.group("obj-schema-GetApkDetailsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetApkDetailsResponse();
      var od = new api.GetApkDetailsResponse.fromJson(o.toJson());
      checkGetApkDetailsResponse(od);
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

  unittest.group("obj-schema-IntentFilter", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntentFilter();
      var od = new api.IntentFilter.fromJson(o.toJson());
      checkIntentFilter(od);
    });
  });

  unittest.group("obj-schema-IosDevice", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosDevice();
      var od = new api.IosDevice.fromJson(o.toJson());
      checkIosDevice(od);
    });
  });

  unittest.group("obj-schema-IosDeviceCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosDeviceCatalog();
      var od = new api.IosDeviceCatalog.fromJson(o.toJson());
      checkIosDeviceCatalog(od);
    });
  });

  unittest.group("obj-schema-IosDeviceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosDeviceList();
      var od = new api.IosDeviceList.fromJson(o.toJson());
      checkIosDeviceList(od);
    });
  });

  unittest.group("obj-schema-IosModel", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosModel();
      var od = new api.IosModel.fromJson(o.toJson());
      checkIosModel(od);
    });
  });

  unittest.group("obj-schema-IosRuntimeConfiguration", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosRuntimeConfiguration();
      var od = new api.IosRuntimeConfiguration.fromJson(o.toJson());
      checkIosRuntimeConfiguration(od);
    });
  });

  unittest.group("obj-schema-IosTestSetup", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosTestSetup();
      var od = new api.IosTestSetup.fromJson(o.toJson());
      checkIosTestSetup(od);
    });
  });

  unittest.group("obj-schema-IosVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosVersion();
      var od = new api.IosVersion.fromJson(o.toJson());
      checkIosVersion(od);
    });
  });

  unittest.group("obj-schema-IosXcTest", () {
    unittest.test("to-json--from-json", () {
      var o = buildIosXcTest();
      var od = new api.IosXcTest.fromJson(o.toJson());
      checkIosXcTest(od);
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

  unittest.group("obj-schema-ProvidedSoftwareCatalog", () {
    unittest.test("to-json--from-json", () {
      var o = buildProvidedSoftwareCatalog();
      var od = new api.ProvidedSoftwareCatalog.fromJson(o.toJson());
      checkProvidedSoftwareCatalog(od);
    });
  });

  unittest.group("obj-schema-RegularFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegularFile();
      var od = new api.RegularFile.fromJson(o.toJson());
      checkRegularFile(od);
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

  unittest.group("obj-schema-XcodeVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildXcodeVersion();
      var od = new api.XcodeVersion.fromJson(o.toJson());
      checkXcodeVersion(od);
    });
  });

  unittest.group("resource-ApplicationDetailServiceResourceApi", () {
    unittest.test("method--getApkDetails", () {
      var mock = new HttpServerMock();
      api.ApplicationDetailServiceResourceApi res =
          new api.TestingApi(mock).applicationDetailService;
      var arg_request = buildFileReference();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.FileReference.fromJson(json);
        checkFileReference(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 41),
            unittest.equals("v1/applicationDetailService/getApkDetails"));
        pathOffset += 41;

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
        var resp = convert.json.encode(buildGetApkDetailsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getApkDetails(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetApkDetailsResponse(response);
      })));
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
        var resp = convert.json.encode(buildCancelTestMatrixResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
            queryMap["requestId"].first, unittest.equals(arg_requestId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestMatrix());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
        var resp = convert.json.encode(buildTestMatrix());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
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
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildTestEnvironmentCatalog());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_environmentType,
              projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestEnvironmentCatalog(response);
      })));
    });
  });
}
