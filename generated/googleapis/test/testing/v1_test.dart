// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/testing/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  var o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.googleAuto = buildGoogleAuto();
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    checkGoogleAuto(o.googleAuto! as api.GoogleAuto);
  }
  buildCounterAccount--;
}

core.int buildCounterAndroidDevice = 0;
api.AndroidDevice buildAndroidDevice() {
  var o = api.AndroidDevice();
  buildCounterAndroidDevice++;
  if (buildCounterAndroidDevice < 3) {
    o.androidModelId = 'foo';
    o.androidVersionId = 'foo';
    o.locale = 'foo';
    o.orientation = 'foo';
  }
  buildCounterAndroidDevice--;
  return o;
}

void checkAndroidDevice(api.AndroidDevice o) {
  buildCounterAndroidDevice++;
  if (buildCounterAndroidDevice < 3) {
    unittest.expect(
      o.androidModelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidDevice--;
}

core.List<api.AndroidModel> buildUnnamed134() {
  var o = <api.AndroidModel>[];
  o.add(buildAndroidModel());
  o.add(buildAndroidModel());
  return o;
}

void checkUnnamed134(core.List<api.AndroidModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidModel(o[0] as api.AndroidModel);
  checkAndroidModel(o[1] as api.AndroidModel);
}

core.List<api.AndroidVersion> buildUnnamed135() {
  var o = <api.AndroidVersion>[];
  o.add(buildAndroidVersion());
  o.add(buildAndroidVersion());
  return o;
}

void checkUnnamed135(core.List<api.AndroidVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidVersion(o[0] as api.AndroidVersion);
  checkAndroidVersion(o[1] as api.AndroidVersion);
}

core.int buildCounterAndroidDeviceCatalog = 0;
api.AndroidDeviceCatalog buildAndroidDeviceCatalog() {
  var o = api.AndroidDeviceCatalog();
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    o.models = buildUnnamed134();
    o.runtimeConfiguration = buildAndroidRuntimeConfiguration();
    o.versions = buildUnnamed135();
  }
  buildCounterAndroidDeviceCatalog--;
  return o;
}

void checkAndroidDeviceCatalog(api.AndroidDeviceCatalog o) {
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    checkUnnamed134(o.models!);
    checkAndroidRuntimeConfiguration(
        o.runtimeConfiguration! as api.AndroidRuntimeConfiguration);
    checkUnnamed135(o.versions!);
  }
  buildCounterAndroidDeviceCatalog--;
}

core.List<api.AndroidDevice> buildUnnamed136() {
  var o = <api.AndroidDevice>[];
  o.add(buildAndroidDevice());
  o.add(buildAndroidDevice());
  return o;
}

void checkUnnamed136(core.List<api.AndroidDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidDevice(o[0] as api.AndroidDevice);
  checkAndroidDevice(o[1] as api.AndroidDevice);
}

core.int buildCounterAndroidDeviceList = 0;
api.AndroidDeviceList buildAndroidDeviceList() {
  var o = api.AndroidDeviceList();
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    o.androidDevices = buildUnnamed136();
  }
  buildCounterAndroidDeviceList--;
  return o;
}

void checkAndroidDeviceList(api.AndroidDeviceList o) {
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    checkUnnamed136(o.androidDevices!);
  }
  buildCounterAndroidDeviceList--;
}

core.List<core.String> buildUnnamed137() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed137(core.List<core.String> o) {
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

core.int buildCounterAndroidInstrumentationTest = 0;
api.AndroidInstrumentationTest buildAndroidInstrumentationTest() {
  var o = api.AndroidInstrumentationTest();
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    o.appApk = buildFileReference();
    o.appBundle = buildAppBundle();
    o.appPackageId = 'foo';
    o.orchestratorOption = 'foo';
    o.shardingOption = buildShardingOption();
    o.testApk = buildFileReference();
    o.testPackageId = 'foo';
    o.testRunnerClass = 'foo';
    o.testTargets = buildUnnamed137();
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

void checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    checkFileReference(o.appApk! as api.FileReference);
    checkAppBundle(o.appBundle! as api.AppBundle);
    unittest.expect(
      o.appPackageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orchestratorOption!,
      unittest.equals('foo'),
    );
    checkShardingOption(o.shardingOption! as api.ShardingOption);
    checkFileReference(o.testApk! as api.FileReference);
    unittest.expect(
      o.testPackageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testRunnerClass!,
      unittest.equals('foo'),
    );
    checkUnnamed137(o.testTargets!);
  }
  buildCounterAndroidInstrumentationTest--;
}

core.List<core.String> buildUnnamed138() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed138(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed139() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed139(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed140() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed140(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed141() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed141(core.List<core.String> o) {
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

core.int buildCounterAndroidMatrix = 0;
api.AndroidMatrix buildAndroidMatrix() {
  var o = api.AndroidMatrix();
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    o.androidModelIds = buildUnnamed138();
    o.androidVersionIds = buildUnnamed139();
    o.locales = buildUnnamed140();
    o.orientations = buildUnnamed141();
  }
  buildCounterAndroidMatrix--;
  return o;
}

void checkAndroidMatrix(api.AndroidMatrix o) {
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    checkUnnamed138(o.androidModelIds!);
    checkUnnamed139(o.androidVersionIds!);
    checkUnnamed140(o.locales!);
    checkUnnamed141(o.orientations!);
  }
  buildCounterAndroidMatrix--;
}

core.List<core.String> buildUnnamed142() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed142(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed143() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed143(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed144() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed144(core.List<core.String> o) {
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

core.int buildCounterAndroidModel = 0;
api.AndroidModel buildAndroidModel() {
  var o = api.AndroidModel();
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    o.brand = 'foo';
    o.codename = 'foo';
    o.form = 'foo';
    o.formFactor = 'foo';
    o.id = 'foo';
    o.lowFpsVideoRecording = true;
    o.manufacturer = 'foo';
    o.name = 'foo';
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedAbis = buildUnnamed142();
    o.supportedVersionIds = buildUnnamed143();
    o.tags = buildUnnamed144();
    o.thumbnailUrl = 'foo';
  }
  buildCounterAndroidModel--;
  return o;
}

void checkAndroidModel(api.AndroidModel o) {
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.codename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.form!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.lowFpsVideoRecording!, unittest.isTrue);
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenDensity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenX!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenY!,
      unittest.equals(42),
    );
    checkUnnamed142(o.supportedAbis!);
    checkUnnamed143(o.supportedVersionIds!);
    checkUnnamed144(o.tags!);
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidModel--;
}

core.List<api.RoboDirective> buildUnnamed145() {
  var o = <api.RoboDirective>[];
  o.add(buildRoboDirective());
  o.add(buildRoboDirective());
  return o;
}

void checkUnnamed145(core.List<api.RoboDirective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboDirective(o[0] as api.RoboDirective);
  checkRoboDirective(o[1] as api.RoboDirective);
}

core.List<api.RoboStartingIntent> buildUnnamed146() {
  var o = <api.RoboStartingIntent>[];
  o.add(buildRoboStartingIntent());
  o.add(buildRoboStartingIntent());
  return o;
}

void checkUnnamed146(core.List<api.RoboStartingIntent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboStartingIntent(o[0] as api.RoboStartingIntent);
  checkRoboStartingIntent(o[1] as api.RoboStartingIntent);
}

core.int buildCounterAndroidRoboTest = 0;
api.AndroidRoboTest buildAndroidRoboTest() {
  var o = api.AndroidRoboTest();
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    o.appApk = buildFileReference();
    o.appBundle = buildAppBundle();
    o.appInitialActivity = 'foo';
    o.appPackageId = 'foo';
    o.maxDepth = 42;
    o.maxSteps = 42;
    o.roboDirectives = buildUnnamed145();
    o.roboScript = buildFileReference();
    o.startingIntents = buildUnnamed146();
  }
  buildCounterAndroidRoboTest--;
  return o;
}

void checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    checkFileReference(o.appApk! as api.FileReference);
    checkAppBundle(o.appBundle! as api.AppBundle);
    unittest.expect(
      o.appInitialActivity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appPackageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDepth!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxSteps!,
      unittest.equals(42),
    );
    checkUnnamed145(o.roboDirectives!);
    checkFileReference(o.roboScript! as api.FileReference);
    checkUnnamed146(o.startingIntents!);
  }
  buildCounterAndroidRoboTest--;
}

core.List<api.Locale> buildUnnamed147() {
  var o = <api.Locale>[];
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

void checkUnnamed147(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0] as api.Locale);
  checkLocale(o[1] as api.Locale);
}

core.List<api.Orientation> buildUnnamed148() {
  var o = <api.Orientation>[];
  o.add(buildOrientation());
  o.add(buildOrientation());
  return o;
}

void checkUnnamed148(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0] as api.Orientation);
  checkOrientation(o[1] as api.Orientation);
}

core.int buildCounterAndroidRuntimeConfiguration = 0;
api.AndroidRuntimeConfiguration buildAndroidRuntimeConfiguration() {
  var o = api.AndroidRuntimeConfiguration();
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    o.locales = buildUnnamed147();
    o.orientations = buildUnnamed148();
  }
  buildCounterAndroidRuntimeConfiguration--;
  return o;
}

void checkAndroidRuntimeConfiguration(api.AndroidRuntimeConfiguration o) {
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    checkUnnamed147(o.locales!);
    checkUnnamed148(o.orientations!);
  }
  buildCounterAndroidRuntimeConfiguration--;
}

core.List<core.String> buildUnnamed149() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed149(core.List<core.String> o) {
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

core.List<core.int> buildUnnamed150() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed150(core.List<core.int> o) {
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

core.int buildCounterAndroidTestLoop = 0;
api.AndroidTestLoop buildAndroidTestLoop() {
  var o = api.AndroidTestLoop();
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    o.appApk = buildFileReference();
    o.appBundle = buildAppBundle();
    o.appPackageId = 'foo';
    o.scenarioLabels = buildUnnamed149();
    o.scenarios = buildUnnamed150();
  }
  buildCounterAndroidTestLoop--;
  return o;
}

void checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    checkFileReference(o.appApk! as api.FileReference);
    checkAppBundle(o.appBundle! as api.AppBundle);
    unittest.expect(
      o.appPackageId!,
      unittest.equals('foo'),
    );
    checkUnnamed149(o.scenarioLabels!);
    checkUnnamed150(o.scenarios!);
  }
  buildCounterAndroidTestLoop--;
}

core.List<core.String> buildUnnamed151() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed151(core.List<core.String> o) {
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

core.int buildCounterAndroidVersion = 0;
api.AndroidVersion buildAndroidVersion() {
  var o = api.AndroidVersion();
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    o.apiLevel = 42;
    o.codeName = 'foo';
    o.distribution = buildDistribution();
    o.id = 'foo';
    o.releaseDate = buildDate();
    o.tags = buildUnnamed151();
    o.versionString = 'foo';
  }
  buildCounterAndroidVersion--;
  return o;
}

void checkAndroidVersion(api.AndroidVersion o) {
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    unittest.expect(
      o.apiLevel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.codeName!,
      unittest.equals('foo'),
    );
    checkDistribution(o.distribution! as api.Distribution);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkDate(o.releaseDate! as api.Date);
    checkUnnamed151(o.tags!);
    unittest.expect(
      o.versionString!,
      unittest.equals('foo'),
    );
  }
  buildCounterAndroidVersion--;
}

core.int buildCounterApk = 0;
api.Apk buildApk() {
  var o = api.Apk();
  buildCounterApk++;
  if (buildCounterApk < 3) {
    o.location = buildFileReference();
    o.packageName = 'foo';
  }
  buildCounterApk--;
  return o;
}

void checkApk(api.Apk o) {
  buildCounterApk++;
  if (buildCounterApk < 3) {
    checkFileReference(o.location! as api.FileReference);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterApk--;
}

core.int buildCounterApkDetail = 0;
api.ApkDetail buildApkDetail() {
  var o = api.ApkDetail();
  buildCounterApkDetail++;
  if (buildCounterApkDetail < 3) {
    o.apkManifest = buildApkManifest();
  }
  buildCounterApkDetail--;
  return o;
}

void checkApkDetail(api.ApkDetail o) {
  buildCounterApkDetail++;
  if (buildCounterApkDetail < 3) {
    checkApkManifest(o.apkManifest! as api.ApkManifest);
  }
  buildCounterApkDetail--;
}

core.List<api.IntentFilter> buildUnnamed152() {
  var o = <api.IntentFilter>[];
  o.add(buildIntentFilter());
  o.add(buildIntentFilter());
  return o;
}

void checkUnnamed152(core.List<api.IntentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentFilter(o[0] as api.IntentFilter);
  checkIntentFilter(o[1] as api.IntentFilter);
}

core.List<core.String> buildUnnamed153() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed153(core.List<core.String> o) {
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

core.int buildCounterApkManifest = 0;
api.ApkManifest buildApkManifest() {
  var o = api.ApkManifest();
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    o.applicationLabel = 'foo';
    o.intentFilters = buildUnnamed152();
    o.maxSdkVersion = 42;
    o.minSdkVersion = 42;
    o.packageName = 'foo';
    o.targetSdkVersion = 42;
    o.usesPermission = buildUnnamed153();
  }
  buildCounterApkManifest--;
  return o;
}

void checkApkManifest(api.ApkManifest o) {
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    unittest.expect(
      o.applicationLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed152(o.intentFilters!);
    unittest.expect(
      o.maxSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetSdkVersion!,
      unittest.equals(42),
    );
    checkUnnamed153(o.usesPermission!);
  }
  buildCounterApkManifest--;
}

core.int buildCounterAppBundle = 0;
api.AppBundle buildAppBundle() {
  var o = api.AppBundle();
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    o.bundleLocation = buildFileReference();
  }
  buildCounterAppBundle--;
  return o;
}

void checkAppBundle(api.AppBundle o) {
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    checkFileReference(o.bundleLocation! as api.FileReference);
  }
  buildCounterAppBundle--;
}

core.int buildCounterCancelTestMatrixResponse = 0;
api.CancelTestMatrixResponse buildCancelTestMatrixResponse() {
  var o = api.CancelTestMatrixResponse();
  buildCounterCancelTestMatrixResponse++;
  if (buildCounterCancelTestMatrixResponse < 3) {
    o.testState = 'foo';
  }
  buildCounterCancelTestMatrixResponse--;
  return o;
}

void checkCancelTestMatrixResponse(api.CancelTestMatrixResponse o) {
  buildCounterCancelTestMatrixResponse++;
  if (buildCounterCancelTestMatrixResponse < 3) {
    unittest.expect(
      o.testState!,
      unittest.equals('foo'),
    );
  }
  buildCounterCancelTestMatrixResponse--;
}

core.List<api.ClientInfoDetail> buildUnnamed154() {
  var o = <api.ClientInfoDetail>[];
  o.add(buildClientInfoDetail());
  o.add(buildClientInfoDetail());
  return o;
}

void checkUnnamed154(core.List<api.ClientInfoDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientInfoDetail(o[0] as api.ClientInfoDetail);
  checkClientInfoDetail(o[1] as api.ClientInfoDetail);
}

core.int buildCounterClientInfo = 0;
api.ClientInfo buildClientInfo() {
  var o = api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientInfoDetails = buildUnnamed154();
    o.name = 'foo';
  }
  buildCounterClientInfo--;
  return o;
}

void checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    checkUnnamed154(o.clientInfoDetails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientInfo--;
}

core.int buildCounterClientInfoDetail = 0;
api.ClientInfoDetail buildClientInfoDetail() {
  var o = api.ClientInfoDetail();
  buildCounterClientInfoDetail++;
  if (buildCounterClientInfoDetail < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterClientInfoDetail--;
  return o;
}

void checkClientInfoDetail(api.ClientInfoDetail o) {
  buildCounterClientInfoDetail++;
  if (buildCounterClientInfoDetail < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientInfoDetail--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  var o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.int buildCounterDeviceFile = 0;
api.DeviceFile buildDeviceFile() {
  var o = api.DeviceFile();
  buildCounterDeviceFile++;
  if (buildCounterDeviceFile < 3) {
    o.obbFile = buildObbFile();
    o.regularFile = buildRegularFile();
  }
  buildCounterDeviceFile--;
  return o;
}

void checkDeviceFile(api.DeviceFile o) {
  buildCounterDeviceFile++;
  if (buildCounterDeviceFile < 3) {
    checkObbFile(o.obbFile! as api.ObbFile);
    checkRegularFile(o.regularFile! as api.RegularFile);
  }
  buildCounterDeviceFile--;
}

core.int buildCounterDeviceIpBlock = 0;
api.DeviceIpBlock buildDeviceIpBlock() {
  var o = api.DeviceIpBlock();
  buildCounterDeviceIpBlock++;
  if (buildCounterDeviceIpBlock < 3) {
    o.addedDate = buildDate();
    o.block = 'foo';
    o.form = 'foo';
  }
  buildCounterDeviceIpBlock--;
  return o;
}

void checkDeviceIpBlock(api.DeviceIpBlock o) {
  buildCounterDeviceIpBlock++;
  if (buildCounterDeviceIpBlock < 3) {
    checkDate(o.addedDate! as api.Date);
    unittest.expect(
      o.block!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.form!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceIpBlock--;
}

core.List<api.DeviceIpBlock> buildUnnamed155() {
  var o = <api.DeviceIpBlock>[];
  o.add(buildDeviceIpBlock());
  o.add(buildDeviceIpBlock());
  return o;
}

void checkUnnamed155(core.List<api.DeviceIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceIpBlock(o[0] as api.DeviceIpBlock);
  checkDeviceIpBlock(o[1] as api.DeviceIpBlock);
}

core.int buildCounterDeviceIpBlockCatalog = 0;
api.DeviceIpBlockCatalog buildDeviceIpBlockCatalog() {
  var o = api.DeviceIpBlockCatalog();
  buildCounterDeviceIpBlockCatalog++;
  if (buildCounterDeviceIpBlockCatalog < 3) {
    o.ipBlocks = buildUnnamed155();
  }
  buildCounterDeviceIpBlockCatalog--;
  return o;
}

void checkDeviceIpBlockCatalog(api.DeviceIpBlockCatalog o) {
  buildCounterDeviceIpBlockCatalog++;
  if (buildCounterDeviceIpBlockCatalog < 3) {
    checkUnnamed155(o.ipBlocks!);
  }
  buildCounterDeviceIpBlockCatalog--;
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  var o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.marketShare = 42.0;
    o.measurementTime = 'foo';
  }
  buildCounterDistribution--;
  return o;
}

void checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    unittest.expect(
      o.marketShare!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.measurementTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDistribution--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.androidDevice = buildAndroidDevice();
    o.iosDevice = buildIosDevice();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkAndroidDevice(o.androidDevice! as api.AndroidDevice);
    checkIosDevice(o.iosDevice! as api.IosDevice);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentMatrix = 0;
api.EnvironmentMatrix buildEnvironmentMatrix() {
  var o = api.EnvironmentMatrix();
  buildCounterEnvironmentMatrix++;
  if (buildCounterEnvironmentMatrix < 3) {
    o.androidDeviceList = buildAndroidDeviceList();
    o.androidMatrix = buildAndroidMatrix();
    o.iosDeviceList = buildIosDeviceList();
  }
  buildCounterEnvironmentMatrix--;
  return o;
}

void checkEnvironmentMatrix(api.EnvironmentMatrix o) {
  buildCounterEnvironmentMatrix++;
  if (buildCounterEnvironmentMatrix < 3) {
    checkAndroidDeviceList(o.androidDeviceList! as api.AndroidDeviceList);
    checkAndroidMatrix(o.androidMatrix! as api.AndroidMatrix);
    checkIosDeviceList(o.iosDeviceList! as api.IosDeviceList);
  }
  buildCounterEnvironmentMatrix--;
}

core.int buildCounterEnvironmentVariable = 0;
api.EnvironmentVariable buildEnvironmentVariable() {
  var o = api.EnvironmentVariable();
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterEnvironmentVariable--;
  return o;
}

void checkEnvironmentVariable(api.EnvironmentVariable o) {
  buildCounterEnvironmentVariable++;
  if (buildCounterEnvironmentVariable < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironmentVariable--;
}

core.int buildCounterFileReference = 0;
api.FileReference buildFileReference() {
  var o = api.FileReference();
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    o.gcsPath = 'foo';
  }
  buildCounterFileReference--;
  return o;
}

void checkFileReference(api.FileReference o) {
  buildCounterFileReference++;
  if (buildCounterFileReference < 3) {
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileReference--;
}

core.int buildCounterGetApkDetailsResponse = 0;
api.GetApkDetailsResponse buildGetApkDetailsResponse() {
  var o = api.GetApkDetailsResponse();
  buildCounterGetApkDetailsResponse++;
  if (buildCounterGetApkDetailsResponse < 3) {
    o.apkDetail = buildApkDetail();
  }
  buildCounterGetApkDetailsResponse--;
  return o;
}

void checkGetApkDetailsResponse(api.GetApkDetailsResponse o) {
  buildCounterGetApkDetailsResponse++;
  if (buildCounterGetApkDetailsResponse < 3) {
    checkApkDetail(o.apkDetail! as api.ApkDetail);
  }
  buildCounterGetApkDetailsResponse--;
}

core.int buildCounterGoogleAuto = 0;
api.GoogleAuto buildGoogleAuto() {
  var o = api.GoogleAuto();
  buildCounterGoogleAuto++;
  if (buildCounterGoogleAuto < 3) {}
  buildCounterGoogleAuto--;
  return o;
}

void checkGoogleAuto(api.GoogleAuto o) {
  buildCounterGoogleAuto++;
  if (buildCounterGoogleAuto < 3) {}
  buildCounterGoogleAuto--;
}

core.int buildCounterGoogleCloudStorage = 0;
api.GoogleCloudStorage buildGoogleCloudStorage() {
  var o = api.GoogleCloudStorage();
  buildCounterGoogleCloudStorage++;
  if (buildCounterGoogleCloudStorage < 3) {
    o.gcsPath = 'foo';
  }
  buildCounterGoogleCloudStorage--;
  return o;
}

void checkGoogleCloudStorage(api.GoogleCloudStorage o) {
  buildCounterGoogleCloudStorage++;
  if (buildCounterGoogleCloudStorage < 3) {
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudStorage--;
}

core.List<core.String> buildUnnamed156() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed156(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed157() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed157(core.List<core.String> o) {
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

core.int buildCounterIntentFilter = 0;
api.IntentFilter buildIntentFilter() {
  var o = api.IntentFilter();
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    o.actionNames = buildUnnamed156();
    o.categoryNames = buildUnnamed157();
    o.mimeType = 'foo';
  }
  buildCounterIntentFilter--;
  return o;
}

void checkIntentFilter(api.IntentFilter o) {
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    checkUnnamed156(o.actionNames!);
    checkUnnamed157(o.categoryNames!);
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntentFilter--;
}

core.int buildCounterIosDevice = 0;
api.IosDevice buildIosDevice() {
  var o = api.IosDevice();
  buildCounterIosDevice++;
  if (buildCounterIosDevice < 3) {
    o.iosModelId = 'foo';
    o.iosVersionId = 'foo';
    o.locale = 'foo';
    o.orientation = 'foo';
  }
  buildCounterIosDevice--;
  return o;
}

void checkIosDevice(api.IosDevice o) {
  buildCounterIosDevice++;
  if (buildCounterIosDevice < 3) {
    unittest.expect(
      o.iosModelId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iosVersionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosDevice--;
}

core.List<api.IosModel> buildUnnamed158() {
  var o = <api.IosModel>[];
  o.add(buildIosModel());
  o.add(buildIosModel());
  return o;
}

void checkUnnamed158(core.List<api.IosModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosModel(o[0] as api.IosModel);
  checkIosModel(o[1] as api.IosModel);
}

core.List<api.IosVersion> buildUnnamed159() {
  var o = <api.IosVersion>[];
  o.add(buildIosVersion());
  o.add(buildIosVersion());
  return o;
}

void checkUnnamed159(core.List<api.IosVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosVersion(o[0] as api.IosVersion);
  checkIosVersion(o[1] as api.IosVersion);
}

core.List<api.XcodeVersion> buildUnnamed160() {
  var o = <api.XcodeVersion>[];
  o.add(buildXcodeVersion());
  o.add(buildXcodeVersion());
  return o;
}

void checkUnnamed160(core.List<api.XcodeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkXcodeVersion(o[0] as api.XcodeVersion);
  checkXcodeVersion(o[1] as api.XcodeVersion);
}

core.int buildCounterIosDeviceCatalog = 0;
api.IosDeviceCatalog buildIosDeviceCatalog() {
  var o = api.IosDeviceCatalog();
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    o.models = buildUnnamed158();
    o.runtimeConfiguration = buildIosRuntimeConfiguration();
    o.versions = buildUnnamed159();
    o.xcodeVersions = buildUnnamed160();
  }
  buildCounterIosDeviceCatalog--;
  return o;
}

void checkIosDeviceCatalog(api.IosDeviceCatalog o) {
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    checkUnnamed158(o.models!);
    checkIosRuntimeConfiguration(
        o.runtimeConfiguration! as api.IosRuntimeConfiguration);
    checkUnnamed159(o.versions!);
    checkUnnamed160(o.xcodeVersions!);
  }
  buildCounterIosDeviceCatalog--;
}

core.int buildCounterIosDeviceFile = 0;
api.IosDeviceFile buildIosDeviceFile() {
  var o = api.IosDeviceFile();
  buildCounterIosDeviceFile++;
  if (buildCounterIosDeviceFile < 3) {
    o.bundleId = 'foo';
    o.content = buildFileReference();
    o.devicePath = 'foo';
  }
  buildCounterIosDeviceFile--;
  return o;
}

void checkIosDeviceFile(api.IosDeviceFile o) {
  buildCounterIosDeviceFile++;
  if (buildCounterIosDeviceFile < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    checkFileReference(o.content! as api.FileReference);
    unittest.expect(
      o.devicePath!,
      unittest.equals('foo'),
    );
  }
  buildCounterIosDeviceFile--;
}

core.List<api.IosDevice> buildUnnamed161() {
  var o = <api.IosDevice>[];
  o.add(buildIosDevice());
  o.add(buildIosDevice());
  return o;
}

void checkUnnamed161(core.List<api.IosDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDevice(o[0] as api.IosDevice);
  checkIosDevice(o[1] as api.IosDevice);
}

core.int buildCounterIosDeviceList = 0;
api.IosDeviceList buildIosDeviceList() {
  var o = api.IosDeviceList();
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    o.iosDevices = buildUnnamed161();
  }
  buildCounterIosDeviceList--;
  return o;
}

void checkIosDeviceList(api.IosDeviceList o) {
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    checkUnnamed161(o.iosDevices!);
  }
  buildCounterIosDeviceList--;
}

core.List<core.String> buildUnnamed162() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed162(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed163() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed163(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed164() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed164(core.List<core.String> o) {
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

core.int buildCounterIosModel = 0;
api.IosModel buildIosModel() {
  var o = api.IosModel();
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    o.deviceCapabilities = buildUnnamed162();
    o.formFactor = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedVersionIds = buildUnnamed163();
    o.tags = buildUnnamed164();
  }
  buildCounterIosModel--;
  return o;
}

void checkIosModel(api.IosModel o) {
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    checkUnnamed162(o.deviceCapabilities!);
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenDensity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenX!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenY!,
      unittest.equals(42),
    );
    checkUnnamed163(o.supportedVersionIds!);
    checkUnnamed164(o.tags!);
  }
  buildCounterIosModel--;
}

core.List<api.Locale> buildUnnamed165() {
  var o = <api.Locale>[];
  o.add(buildLocale());
  o.add(buildLocale());
  return o;
}

void checkUnnamed165(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0] as api.Locale);
  checkLocale(o[1] as api.Locale);
}

core.List<api.Orientation> buildUnnamed166() {
  var o = <api.Orientation>[];
  o.add(buildOrientation());
  o.add(buildOrientation());
  return o;
}

void checkUnnamed166(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0] as api.Orientation);
  checkOrientation(o[1] as api.Orientation);
}

core.int buildCounterIosRuntimeConfiguration = 0;
api.IosRuntimeConfiguration buildIosRuntimeConfiguration() {
  var o = api.IosRuntimeConfiguration();
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    o.locales = buildUnnamed165();
    o.orientations = buildUnnamed166();
  }
  buildCounterIosRuntimeConfiguration--;
  return o;
}

void checkIosRuntimeConfiguration(api.IosRuntimeConfiguration o) {
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    checkUnnamed165(o.locales!);
    checkUnnamed166(o.orientations!);
  }
  buildCounterIosRuntimeConfiguration--;
}

core.List<core.int> buildUnnamed167() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed167(core.List<core.int> o) {
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

core.int buildCounterIosTestLoop = 0;
api.IosTestLoop buildIosTestLoop() {
  var o = api.IosTestLoop();
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    o.appBundleId = 'foo';
    o.appIpa = buildFileReference();
    o.scenarios = buildUnnamed167();
  }
  buildCounterIosTestLoop--;
  return o;
}

void checkIosTestLoop(api.IosTestLoop o) {
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    unittest.expect(
      o.appBundleId!,
      unittest.equals('foo'),
    );
    checkFileReference(o.appIpa! as api.FileReference);
    checkUnnamed167(o.scenarios!);
  }
  buildCounterIosTestLoop--;
}

core.List<api.FileReference> buildUnnamed168() {
  var o = <api.FileReference>[];
  o.add(buildFileReference());
  o.add(buildFileReference());
  return o;
}

void checkUnnamed168(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0] as api.FileReference);
  checkFileReference(o[1] as api.FileReference);
}

core.List<api.IosDeviceFile> buildUnnamed169() {
  var o = <api.IosDeviceFile>[];
  o.add(buildIosDeviceFile());
  o.add(buildIosDeviceFile());
  return o;
}

void checkUnnamed169(core.List<api.IosDeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDeviceFile(o[0] as api.IosDeviceFile);
  checkIosDeviceFile(o[1] as api.IosDeviceFile);
}

core.List<api.IosDeviceFile> buildUnnamed170() {
  var o = <api.IosDeviceFile>[];
  o.add(buildIosDeviceFile());
  o.add(buildIosDeviceFile());
  return o;
}

void checkUnnamed170(core.List<api.IosDeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDeviceFile(o[0] as api.IosDeviceFile);
  checkIosDeviceFile(o[1] as api.IosDeviceFile);
}

core.int buildCounterIosTestSetup = 0;
api.IosTestSetup buildIosTestSetup() {
  var o = api.IosTestSetup();
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    o.additionalIpas = buildUnnamed168();
    o.networkProfile = 'foo';
    o.pullDirectories = buildUnnamed169();
    o.pushFiles = buildUnnamed170();
  }
  buildCounterIosTestSetup--;
  return o;
}

void checkIosTestSetup(api.IosTestSetup o) {
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    checkUnnamed168(o.additionalIpas!);
    unittest.expect(
      o.networkProfile!,
      unittest.equals('foo'),
    );
    checkUnnamed169(o.pullDirectories!);
    checkUnnamed170(o.pushFiles!);
  }
  buildCounterIosTestSetup--;
}

core.List<core.String> buildUnnamed171() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed171(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed172() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed172(core.List<core.String> o) {
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

core.int buildCounterIosVersion = 0;
api.IosVersion buildIosVersion() {
  var o = api.IosVersion();
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    o.id = 'foo';
    o.majorVersion = 42;
    o.minorVersion = 42;
    o.supportedXcodeVersionIds = buildUnnamed171();
    o.tags = buildUnnamed172();
  }
  buildCounterIosVersion--;
  return o;
}

void checkIosVersion(api.IosVersion o) {
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.majorVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minorVersion!,
      unittest.equals(42),
    );
    checkUnnamed171(o.supportedXcodeVersionIds!);
    checkUnnamed172(o.tags!);
  }
  buildCounterIosVersion--;
}

core.int buildCounterIosXcTest = 0;
api.IosXcTest buildIosXcTest() {
  var o = api.IosXcTest();
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    o.appBundleId = 'foo';
    o.testSpecialEntitlements = true;
    o.testsZip = buildFileReference();
    o.xcodeVersion = 'foo';
    o.xctestrun = buildFileReference();
  }
  buildCounterIosXcTest--;
  return o;
}

void checkIosXcTest(api.IosXcTest o) {
  buildCounterIosXcTest++;
  if (buildCounterIosXcTest < 3) {
    unittest.expect(
      o.appBundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.testSpecialEntitlements!, unittest.isTrue);
    checkFileReference(o.testsZip! as api.FileReference);
    unittest.expect(
      o.xcodeVersion!,
      unittest.equals('foo'),
    );
    checkFileReference(o.xctestrun! as api.FileReference);
  }
  buildCounterIosXcTest--;
}

core.int buildCounterLauncherActivityIntent = 0;
api.LauncherActivityIntent buildLauncherActivityIntent() {
  var o = api.LauncherActivityIntent();
  buildCounterLauncherActivityIntent++;
  if (buildCounterLauncherActivityIntent < 3) {}
  buildCounterLauncherActivityIntent--;
  return o;
}

void checkLauncherActivityIntent(api.LauncherActivityIntent o) {
  buildCounterLauncherActivityIntent++;
  if (buildCounterLauncherActivityIntent < 3) {}
  buildCounterLauncherActivityIntent--;
}

core.List<core.String> buildUnnamed173() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed173(core.List<core.String> o) {
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

core.int buildCounterLocale = 0;
api.Locale buildLocale() {
  var o = api.Locale();
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.region = 'foo';
    o.tags = buildUnnamed173();
  }
  buildCounterLocale--;
  return o;
}

void checkLocale(api.Locale o) {
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    checkUnnamed173(o.tags!);
  }
  buildCounterLocale--;
}

core.List<api.TestTargetsForShard> buildUnnamed174() {
  var o = <api.TestTargetsForShard>[];
  o.add(buildTestTargetsForShard());
  o.add(buildTestTargetsForShard());
  return o;
}

void checkUnnamed174(core.List<api.TestTargetsForShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestTargetsForShard(o[0] as api.TestTargetsForShard);
  checkTestTargetsForShard(o[1] as api.TestTargetsForShard);
}

core.int buildCounterManualSharding = 0;
api.ManualSharding buildManualSharding() {
  var o = api.ManualSharding();
  buildCounterManualSharding++;
  if (buildCounterManualSharding < 3) {
    o.testTargetsForShard = buildUnnamed174();
  }
  buildCounterManualSharding--;
  return o;
}

void checkManualSharding(api.ManualSharding o) {
  buildCounterManualSharding++;
  if (buildCounterManualSharding < 3) {
    checkUnnamed174(o.testTargetsForShard!);
  }
  buildCounterManualSharding--;
}

core.int buildCounterNetworkConfiguration = 0;
api.NetworkConfiguration buildNetworkConfiguration() {
  var o = api.NetworkConfiguration();
  buildCounterNetworkConfiguration++;
  if (buildCounterNetworkConfiguration < 3) {
    o.downRule = buildTrafficRule();
    o.id = 'foo';
    o.upRule = buildTrafficRule();
  }
  buildCounterNetworkConfiguration--;
  return o;
}

void checkNetworkConfiguration(api.NetworkConfiguration o) {
  buildCounterNetworkConfiguration++;
  if (buildCounterNetworkConfiguration < 3) {
    checkTrafficRule(o.downRule! as api.TrafficRule);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkTrafficRule(o.upRule! as api.TrafficRule);
  }
  buildCounterNetworkConfiguration--;
}

core.List<api.NetworkConfiguration> buildUnnamed175() {
  var o = <api.NetworkConfiguration>[];
  o.add(buildNetworkConfiguration());
  o.add(buildNetworkConfiguration());
  return o;
}

void checkUnnamed175(core.List<api.NetworkConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfiguration(o[0] as api.NetworkConfiguration);
  checkNetworkConfiguration(o[1] as api.NetworkConfiguration);
}

core.int buildCounterNetworkConfigurationCatalog = 0;
api.NetworkConfigurationCatalog buildNetworkConfigurationCatalog() {
  var o = api.NetworkConfigurationCatalog();
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    o.configurations = buildUnnamed175();
  }
  buildCounterNetworkConfigurationCatalog--;
  return o;
}

void checkNetworkConfigurationCatalog(api.NetworkConfigurationCatalog o) {
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    checkUnnamed175(o.configurations!);
  }
  buildCounterNetworkConfigurationCatalog--;
}

core.int buildCounterObbFile = 0;
api.ObbFile buildObbFile() {
  var o = api.ObbFile();
  buildCounterObbFile++;
  if (buildCounterObbFile < 3) {
    o.obb = buildFileReference();
    o.obbFileName = 'foo';
  }
  buildCounterObbFile--;
  return o;
}

void checkObbFile(api.ObbFile o) {
  buildCounterObbFile++;
  if (buildCounterObbFile < 3) {
    checkFileReference(o.obb! as api.FileReference);
    unittest.expect(
      o.obbFileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterObbFile--;
}

core.List<core.String> buildUnnamed176() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed176(core.List<core.String> o) {
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

core.int buildCounterOrientation = 0;
api.Orientation buildOrientation() {
  var o = api.Orientation();
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed176();
  }
  buildCounterOrientation--;
  return o;
}

void checkOrientation(api.Orientation o) {
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed176(o.tags!);
  }
  buildCounterOrientation--;
}

core.int buildCounterProvidedSoftwareCatalog = 0;
api.ProvidedSoftwareCatalog buildProvidedSoftwareCatalog() {
  var o = api.ProvidedSoftwareCatalog();
  buildCounterProvidedSoftwareCatalog++;
  if (buildCounterProvidedSoftwareCatalog < 3) {
    o.androidxOrchestratorVersion = 'foo';
    o.orchestratorVersion = 'foo';
  }
  buildCounterProvidedSoftwareCatalog--;
  return o;
}

void checkProvidedSoftwareCatalog(api.ProvidedSoftwareCatalog o) {
  buildCounterProvidedSoftwareCatalog++;
  if (buildCounterProvidedSoftwareCatalog < 3) {
    unittest.expect(
      o.androidxOrchestratorVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orchestratorVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterProvidedSoftwareCatalog--;
}

core.int buildCounterRegularFile = 0;
api.RegularFile buildRegularFile() {
  var o = api.RegularFile();
  buildCounterRegularFile++;
  if (buildCounterRegularFile < 3) {
    o.content = buildFileReference();
    o.devicePath = 'foo';
  }
  buildCounterRegularFile--;
  return o;
}

void checkRegularFile(api.RegularFile o) {
  buildCounterRegularFile++;
  if (buildCounterRegularFile < 3) {
    checkFileReference(o.content! as api.FileReference);
    unittest.expect(
      o.devicePath!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegularFile--;
}

core.int buildCounterResultStorage = 0;
api.ResultStorage buildResultStorage() {
  var o = api.ResultStorage();
  buildCounterResultStorage++;
  if (buildCounterResultStorage < 3) {
    o.googleCloudStorage = buildGoogleCloudStorage();
    o.resultsUrl = 'foo';
    o.toolResultsExecution = buildToolResultsExecution();
    o.toolResultsHistory = buildToolResultsHistory();
  }
  buildCounterResultStorage--;
  return o;
}

void checkResultStorage(api.ResultStorage o) {
  buildCounterResultStorage++;
  if (buildCounterResultStorage < 3) {
    checkGoogleCloudStorage(o.googleCloudStorage! as api.GoogleCloudStorage);
    unittest.expect(
      o.resultsUrl!,
      unittest.equals('foo'),
    );
    checkToolResultsExecution(
        o.toolResultsExecution! as api.ToolResultsExecution);
    checkToolResultsHistory(o.toolResultsHistory! as api.ToolResultsHistory);
  }
  buildCounterResultStorage--;
}

core.int buildCounterRoboDirective = 0;
api.RoboDirective buildRoboDirective() {
  var o = api.RoboDirective();
  buildCounterRoboDirective++;
  if (buildCounterRoboDirective < 3) {
    o.actionType = 'foo';
    o.inputText = 'foo';
    o.resourceName = 'foo';
  }
  buildCounterRoboDirective--;
  return o;
}

void checkRoboDirective(api.RoboDirective o) {
  buildCounterRoboDirective++;
  if (buildCounterRoboDirective < 3) {
    unittest.expect(
      o.actionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoboDirective--;
}

core.int buildCounterRoboStartingIntent = 0;
api.RoboStartingIntent buildRoboStartingIntent() {
  var o = api.RoboStartingIntent();
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    o.launcherActivity = buildLauncherActivityIntent();
    o.startActivity = buildStartActivityIntent();
    o.timeout = 'foo';
  }
  buildCounterRoboStartingIntent--;
  return o;
}

void checkRoboStartingIntent(api.RoboStartingIntent o) {
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    checkLauncherActivityIntent(
        o.launcherActivity! as api.LauncherActivityIntent);
    checkStartActivityIntent(o.startActivity! as api.StartActivityIntent);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterRoboStartingIntent--;
}

core.int buildCounterShard = 0;
api.Shard buildShard() {
  var o = api.Shard();
  buildCounterShard++;
  if (buildCounterShard < 3) {
    o.numShards = 42;
    o.shardIndex = 42;
    o.testTargetsForShard = buildTestTargetsForShard();
  }
  buildCounterShard--;
  return o;
}

void checkShard(api.Shard o) {
  buildCounterShard++;
  if (buildCounterShard < 3) {
    unittest.expect(
      o.numShards!,
      unittest.equals(42),
    );
    unittest.expect(
      o.shardIndex!,
      unittest.equals(42),
    );
    checkTestTargetsForShard(o.testTargetsForShard! as api.TestTargetsForShard);
  }
  buildCounterShard--;
}

core.int buildCounterShardingOption = 0;
api.ShardingOption buildShardingOption() {
  var o = api.ShardingOption();
  buildCounterShardingOption++;
  if (buildCounterShardingOption < 3) {
    o.manualSharding = buildManualSharding();
    o.uniformSharding = buildUniformSharding();
  }
  buildCounterShardingOption--;
  return o;
}

void checkShardingOption(api.ShardingOption o) {
  buildCounterShardingOption++;
  if (buildCounterShardingOption < 3) {
    checkManualSharding(o.manualSharding! as api.ManualSharding);
    checkUniformSharding(o.uniformSharding! as api.UniformSharding);
  }
  buildCounterShardingOption--;
}

core.List<core.String> buildUnnamed177() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed177(core.List<core.String> o) {
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

core.int buildCounterStartActivityIntent = 0;
api.StartActivityIntent buildStartActivityIntent() {
  var o = api.StartActivityIntent();
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    o.action = 'foo';
    o.categories = buildUnnamed177();
    o.uri = 'foo';
  }
  buildCounterStartActivityIntent--;
  return o;
}

void checkStartActivityIntent(api.StartActivityIntent o) {
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    checkUnnamed177(o.categories!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartActivityIntent--;
}

core.int buildCounterSystraceSetup = 0;
api.SystraceSetup buildSystraceSetup() {
  var o = api.SystraceSetup();
  buildCounterSystraceSetup++;
  if (buildCounterSystraceSetup < 3) {
    o.durationSeconds = 42;
  }
  buildCounterSystraceSetup--;
  return o;
}

void checkSystraceSetup(api.SystraceSetup o) {
  buildCounterSystraceSetup++;
  if (buildCounterSystraceSetup < 3) {
    unittest.expect(
      o.durationSeconds!,
      unittest.equals(42),
    );
  }
  buildCounterSystraceSetup--;
}

core.List<core.String> buildUnnamed178() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed178(core.List<core.String> o) {
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

core.int buildCounterTestDetails = 0;
api.TestDetails buildTestDetails() {
  var o = api.TestDetails();
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    o.errorMessage = 'foo';
    o.progressMessages = buildUnnamed178();
  }
  buildCounterTestDetails--;
  return o;
}

void checkTestDetails(api.TestDetails o) {
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed178(o.progressMessages!);
  }
  buildCounterTestDetails--;
}

core.int buildCounterTestEnvironmentCatalog = 0;
api.TestEnvironmentCatalog buildTestEnvironmentCatalog() {
  var o = api.TestEnvironmentCatalog();
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    o.androidDeviceCatalog = buildAndroidDeviceCatalog();
    o.deviceIpBlockCatalog = buildDeviceIpBlockCatalog();
    o.iosDeviceCatalog = buildIosDeviceCatalog();
    o.networkConfigurationCatalog = buildNetworkConfigurationCatalog();
    o.softwareCatalog = buildProvidedSoftwareCatalog();
  }
  buildCounterTestEnvironmentCatalog--;
  return o;
}

void checkTestEnvironmentCatalog(api.TestEnvironmentCatalog o) {
  buildCounterTestEnvironmentCatalog++;
  if (buildCounterTestEnvironmentCatalog < 3) {
    checkAndroidDeviceCatalog(
        o.androidDeviceCatalog! as api.AndroidDeviceCatalog);
    checkDeviceIpBlockCatalog(
        o.deviceIpBlockCatalog! as api.DeviceIpBlockCatalog);
    checkIosDeviceCatalog(o.iosDeviceCatalog! as api.IosDeviceCatalog);
    checkNetworkConfigurationCatalog(
        o.networkConfigurationCatalog! as api.NetworkConfigurationCatalog);
    checkProvidedSoftwareCatalog(
        o.softwareCatalog! as api.ProvidedSoftwareCatalog);
  }
  buildCounterTestEnvironmentCatalog--;
}

core.int buildCounterTestExecution = 0;
api.TestExecution buildTestExecution() {
  var o = api.TestExecution();
  buildCounterTestExecution++;
  if (buildCounterTestExecution < 3) {
    o.environment = buildEnvironment();
    o.id = 'foo';
    o.matrixId = 'foo';
    o.projectId = 'foo';
    o.shard = buildShard();
    o.state = 'foo';
    o.testDetails = buildTestDetails();
    o.testSpecification = buildTestSpecification();
    o.timestamp = 'foo';
    o.toolResultsStep = buildToolResultsStep();
  }
  buildCounterTestExecution--;
  return o;
}

void checkTestExecution(api.TestExecution o) {
  buildCounterTestExecution++;
  if (buildCounterTestExecution < 3) {
    checkEnvironment(o.environment! as api.Environment);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.matrixId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkShard(o.shard! as api.Shard);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkTestDetails(o.testDetails! as api.TestDetails);
    checkTestSpecification(o.testSpecification! as api.TestSpecification);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    checkToolResultsStep(o.toolResultsStep! as api.ToolResultsStep);
  }
  buildCounterTestExecution--;
}

core.List<api.TestExecution> buildUnnamed179() {
  var o = <api.TestExecution>[];
  o.add(buildTestExecution());
  o.add(buildTestExecution());
  return o;
}

void checkUnnamed179(core.List<api.TestExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestExecution(o[0] as api.TestExecution);
  checkTestExecution(o[1] as api.TestExecution);
}

core.int buildCounterTestMatrix = 0;
api.TestMatrix buildTestMatrix() {
  var o = api.TestMatrix();
  buildCounterTestMatrix++;
  if (buildCounterTestMatrix < 3) {
    o.clientInfo = buildClientInfo();
    o.environmentMatrix = buildEnvironmentMatrix();
    o.failFast = true;
    o.flakyTestAttempts = 42;
    o.invalidMatrixDetails = 'foo';
    o.outcomeSummary = 'foo';
    o.projectId = 'foo';
    o.resultStorage = buildResultStorage();
    o.state = 'foo';
    o.testExecutions = buildUnnamed179();
    o.testMatrixId = 'foo';
    o.testSpecification = buildTestSpecification();
    o.timestamp = 'foo';
  }
  buildCounterTestMatrix--;
  return o;
}

void checkTestMatrix(api.TestMatrix o) {
  buildCounterTestMatrix++;
  if (buildCounterTestMatrix < 3) {
    checkClientInfo(o.clientInfo! as api.ClientInfo);
    checkEnvironmentMatrix(o.environmentMatrix! as api.EnvironmentMatrix);
    unittest.expect(o.failFast!, unittest.isTrue);
    unittest.expect(
      o.flakyTestAttempts!,
      unittest.equals(42),
    );
    unittest.expect(
      o.invalidMatrixDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outcomeSummary!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkResultStorage(o.resultStorage! as api.ResultStorage);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed179(o.testExecutions!);
    unittest.expect(
      o.testMatrixId!,
      unittest.equals('foo'),
    );
    checkTestSpecification(o.testSpecification! as api.TestSpecification);
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestMatrix--;
}

core.List<api.Apk> buildUnnamed180() {
  var o = <api.Apk>[];
  o.add(buildApk());
  o.add(buildApk());
  return o;
}

void checkUnnamed180(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0] as api.Apk);
  checkApk(o[1] as api.Apk);
}

core.List<core.String> buildUnnamed181() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed181(core.List<core.String> o) {
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

core.List<api.EnvironmentVariable> buildUnnamed182() {
  var o = <api.EnvironmentVariable>[];
  o.add(buildEnvironmentVariable());
  o.add(buildEnvironmentVariable());
  return o;
}

void checkUnnamed182(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0] as api.EnvironmentVariable);
  checkEnvironmentVariable(o[1] as api.EnvironmentVariable);
}

core.List<api.DeviceFile> buildUnnamed183() {
  var o = <api.DeviceFile>[];
  o.add(buildDeviceFile());
  o.add(buildDeviceFile());
  return o;
}

void checkUnnamed183(core.List<api.DeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceFile(o[0] as api.DeviceFile);
  checkDeviceFile(o[1] as api.DeviceFile);
}

core.int buildCounterTestSetup = 0;
api.TestSetup buildTestSetup() {
  var o = api.TestSetup();
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    o.account = buildAccount();
    o.additionalApks = buildUnnamed180();
    o.directoriesToPull = buildUnnamed181();
    o.dontAutograntPermissions = true;
    o.environmentVariables = buildUnnamed182();
    o.filesToPush = buildUnnamed183();
    o.networkProfile = 'foo';
    o.systrace = buildSystraceSetup();
  }
  buildCounterTestSetup--;
  return o;
}

void checkTestSetup(api.TestSetup o) {
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    checkAccount(o.account! as api.Account);
    checkUnnamed180(o.additionalApks!);
    checkUnnamed181(o.directoriesToPull!);
    unittest.expect(o.dontAutograntPermissions!, unittest.isTrue);
    checkUnnamed182(o.environmentVariables!);
    checkUnnamed183(o.filesToPush!);
    unittest.expect(
      o.networkProfile!,
      unittest.equals('foo'),
    );
    checkSystraceSetup(o.systrace! as api.SystraceSetup);
  }
  buildCounterTestSetup--;
}

core.int buildCounterTestSpecification = 0;
api.TestSpecification buildTestSpecification() {
  var o = api.TestSpecification();
  buildCounterTestSpecification++;
  if (buildCounterTestSpecification < 3) {
    o.androidInstrumentationTest = buildAndroidInstrumentationTest();
    o.androidRoboTest = buildAndroidRoboTest();
    o.androidTestLoop = buildAndroidTestLoop();
    o.disablePerformanceMetrics = true;
    o.disableVideoRecording = true;
    o.iosTestLoop = buildIosTestLoop();
    o.iosTestSetup = buildIosTestSetup();
    o.iosXcTest = buildIosXcTest();
    o.testSetup = buildTestSetup();
    o.testTimeout = 'foo';
  }
  buildCounterTestSpecification--;
  return o;
}

void checkTestSpecification(api.TestSpecification o) {
  buildCounterTestSpecification++;
  if (buildCounterTestSpecification < 3) {
    checkAndroidInstrumentationTest(
        o.androidInstrumentationTest! as api.AndroidInstrumentationTest);
    checkAndroidRoboTest(o.androidRoboTest! as api.AndroidRoboTest);
    checkAndroidTestLoop(o.androidTestLoop! as api.AndroidTestLoop);
    unittest.expect(o.disablePerformanceMetrics!, unittest.isTrue);
    unittest.expect(o.disableVideoRecording!, unittest.isTrue);
    checkIosTestLoop(o.iosTestLoop! as api.IosTestLoop);
    checkIosTestSetup(o.iosTestSetup! as api.IosTestSetup);
    checkIosXcTest(o.iosXcTest! as api.IosXcTest);
    checkTestSetup(o.testSetup! as api.TestSetup);
    unittest.expect(
      o.testTimeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterTestSpecification--;
}

core.List<core.String> buildUnnamed184() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed184(core.List<core.String> o) {
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

core.int buildCounterTestTargetsForShard = 0;
api.TestTargetsForShard buildTestTargetsForShard() {
  var o = api.TestTargetsForShard();
  buildCounterTestTargetsForShard++;
  if (buildCounterTestTargetsForShard < 3) {
    o.testTargets = buildUnnamed184();
  }
  buildCounterTestTargetsForShard--;
  return o;
}

void checkTestTargetsForShard(api.TestTargetsForShard o) {
  buildCounterTestTargetsForShard++;
  if (buildCounterTestTargetsForShard < 3) {
    checkUnnamed184(o.testTargets!);
  }
  buildCounterTestTargetsForShard--;
}

core.int buildCounterToolResultsExecution = 0;
api.ToolResultsExecution buildToolResultsExecution() {
  var o = api.ToolResultsExecution();
  buildCounterToolResultsExecution++;
  if (buildCounterToolResultsExecution < 3) {
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterToolResultsExecution--;
  return o;
}

void checkToolResultsExecution(api.ToolResultsExecution o) {
  buildCounterToolResultsExecution++;
  if (buildCounterToolResultsExecution < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterToolResultsExecution--;
}

core.int buildCounterToolResultsHistory = 0;
api.ToolResultsHistory buildToolResultsHistory() {
  var o = api.ToolResultsHistory();
  buildCounterToolResultsHistory++;
  if (buildCounterToolResultsHistory < 3) {
    o.historyId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterToolResultsHistory--;
  return o;
}

void checkToolResultsHistory(api.ToolResultsHistory o) {
  buildCounterToolResultsHistory++;
  if (buildCounterToolResultsHistory < 3) {
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterToolResultsHistory--;
}

core.int buildCounterToolResultsStep = 0;
api.ToolResultsStep buildToolResultsStep() {
  var o = api.ToolResultsStep();
  buildCounterToolResultsStep++;
  if (buildCounterToolResultsStep < 3) {
    o.executionId = 'foo';
    o.historyId = 'foo';
    o.projectId = 'foo';
    o.stepId = 'foo';
  }
  buildCounterToolResultsStep--;
  return o;
}

void checkToolResultsStep(api.ToolResultsStep o) {
  buildCounterToolResultsStep++;
  if (buildCounterToolResultsStep < 3) {
    unittest.expect(
      o.executionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.historyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepId!,
      unittest.equals('foo'),
    );
  }
  buildCounterToolResultsStep--;
}

core.int buildCounterTrafficRule = 0;
api.TrafficRule buildTrafficRule() {
  var o = api.TrafficRule();
  buildCounterTrafficRule++;
  if (buildCounterTrafficRule < 3) {
    o.bandwidth = 42.0;
    o.burst = 42.0;
    o.delay = 'foo';
    o.packetDuplicationRatio = 42.0;
    o.packetLossRatio = 42.0;
  }
  buildCounterTrafficRule--;
  return o;
}

void checkTrafficRule(api.TrafficRule o) {
  buildCounterTrafficRule++;
  if (buildCounterTrafficRule < 3) {
    unittest.expect(
      o.bandwidth!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.burst!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.delay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packetDuplicationRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.packetLossRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterTrafficRule--;
}

core.int buildCounterUniformSharding = 0;
api.UniformSharding buildUniformSharding() {
  var o = api.UniformSharding();
  buildCounterUniformSharding++;
  if (buildCounterUniformSharding < 3) {
    o.numShards = 42;
  }
  buildCounterUniformSharding--;
  return o;
}

void checkUniformSharding(api.UniformSharding o) {
  buildCounterUniformSharding++;
  if (buildCounterUniformSharding < 3) {
    unittest.expect(
      o.numShards!,
      unittest.equals(42),
    );
  }
  buildCounterUniformSharding--;
}

core.List<core.String> buildUnnamed185() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed185(core.List<core.String> o) {
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

core.int buildCounterXcodeVersion = 0;
api.XcodeVersion buildXcodeVersion() {
  var o = api.XcodeVersion();
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    o.tags = buildUnnamed185();
    o.version = 'foo';
  }
  buildCounterXcodeVersion--;
  return o;
}

void checkXcodeVersion(api.XcodeVersion o) {
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    checkUnnamed185(o.tags!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterXcodeVersion--;
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccount();
      var od = api.Account.fromJson(o.toJson());
      checkAccount(od as api.Account);
    });
  });

  unittest.group('obj-schema-AndroidDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidDevice();
      var od = api.AndroidDevice.fromJson(o.toJson());
      checkAndroidDevice(od as api.AndroidDevice);
    });
  });

  unittest.group('obj-schema-AndroidDeviceCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidDeviceCatalog();
      var od = api.AndroidDeviceCatalog.fromJson(o.toJson());
      checkAndroidDeviceCatalog(od as api.AndroidDeviceCatalog);
    });
  });

  unittest.group('obj-schema-AndroidDeviceList', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidDeviceList();
      var od = api.AndroidDeviceList.fromJson(o.toJson());
      checkAndroidDeviceList(od as api.AndroidDeviceList);
    });
  });

  unittest.group('obj-schema-AndroidInstrumentationTest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidInstrumentationTest();
      var od = api.AndroidInstrumentationTest.fromJson(o.toJson());
      checkAndroidInstrumentationTest(od as api.AndroidInstrumentationTest);
    });
  });

  unittest.group('obj-schema-AndroidMatrix', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidMatrix();
      var od = api.AndroidMatrix.fromJson(o.toJson());
      checkAndroidMatrix(od as api.AndroidMatrix);
    });
  });

  unittest.group('obj-schema-AndroidModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidModel();
      var od = api.AndroidModel.fromJson(o.toJson());
      checkAndroidModel(od as api.AndroidModel);
    });
  });

  unittest.group('obj-schema-AndroidRoboTest', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidRoboTest();
      var od = api.AndroidRoboTest.fromJson(o.toJson());
      checkAndroidRoboTest(od as api.AndroidRoboTest);
    });
  });

  unittest.group('obj-schema-AndroidRuntimeConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidRuntimeConfiguration();
      var od = api.AndroidRuntimeConfiguration.fromJson(o.toJson());
      checkAndroidRuntimeConfiguration(od as api.AndroidRuntimeConfiguration);
    });
  });

  unittest.group('obj-schema-AndroidTestLoop', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidTestLoop();
      var od = api.AndroidTestLoop.fromJson(o.toJson());
      checkAndroidTestLoop(od as api.AndroidTestLoop);
    });
  });

  unittest.group('obj-schema-AndroidVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildAndroidVersion();
      var od = api.AndroidVersion.fromJson(o.toJson());
      checkAndroidVersion(od as api.AndroidVersion);
    });
  });

  unittest.group('obj-schema-Apk', () {
    unittest.test('to-json--from-json', () {
      var o = buildApk();
      var od = api.Apk.fromJson(o.toJson());
      checkApk(od as api.Apk);
    });
  });

  unittest.group('obj-schema-ApkDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildApkDetail();
      var od = api.ApkDetail.fromJson(o.toJson());
      checkApkDetail(od as api.ApkDetail);
    });
  });

  unittest.group('obj-schema-ApkManifest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApkManifest();
      var od = api.ApkManifest.fromJson(o.toJson());
      checkApkManifest(od as api.ApkManifest);
    });
  });

  unittest.group('obj-schema-AppBundle', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppBundle();
      var od = api.AppBundle.fromJson(o.toJson());
      checkAppBundle(od as api.AppBundle);
    });
  });

  unittest.group('obj-schema-CancelTestMatrixResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCancelTestMatrixResponse();
      var od = api.CancelTestMatrixResponse.fromJson(o.toJson());
      checkCancelTestMatrixResponse(od as api.CancelTestMatrixResponse);
    });
  });

  unittest.group('obj-schema-ClientInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientInfo();
      var od = api.ClientInfo.fromJson(o.toJson());
      checkClientInfo(od as api.ClientInfo);
    });
  });

  unittest.group('obj-schema-ClientInfoDetail', () {
    unittest.test('to-json--from-json', () {
      var o = buildClientInfoDetail();
      var od = api.ClientInfoDetail.fromJson(o.toJson());
      checkClientInfoDetail(od as api.ClientInfoDetail);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () {
      var o = buildDate();
      var od = api.Date.fromJson(o.toJson());
      checkDate(od as api.Date);
    });
  });

  unittest.group('obj-schema-DeviceFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceFile();
      var od = api.DeviceFile.fromJson(o.toJson());
      checkDeviceFile(od as api.DeviceFile);
    });
  });

  unittest.group('obj-schema-DeviceIpBlock', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceIpBlock();
      var od = api.DeviceIpBlock.fromJson(o.toJson());
      checkDeviceIpBlock(od as api.DeviceIpBlock);
    });
  });

  unittest.group('obj-schema-DeviceIpBlockCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceIpBlockCatalog();
      var od = api.DeviceIpBlockCatalog.fromJson(o.toJson());
      checkDeviceIpBlockCatalog(od as api.DeviceIpBlockCatalog);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistribution();
      var od = api.Distribution.fromJson(o.toJson());
      checkDistribution(od as api.Distribution);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-EnvironmentMatrix', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentMatrix();
      var od = api.EnvironmentMatrix.fromJson(o.toJson());
      checkEnvironmentMatrix(od as api.EnvironmentMatrix);
    });
  });

  unittest.group('obj-schema-EnvironmentVariable', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironmentVariable();
      var od = api.EnvironmentVariable.fromJson(o.toJson());
      checkEnvironmentVariable(od as api.EnvironmentVariable);
    });
  });

  unittest.group('obj-schema-FileReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileReference();
      var od = api.FileReference.fromJson(o.toJson());
      checkFileReference(od as api.FileReference);
    });
  });

  unittest.group('obj-schema-GetApkDetailsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetApkDetailsResponse();
      var od = api.GetApkDetailsResponse.fromJson(o.toJson());
      checkGetApkDetailsResponse(od as api.GetApkDetailsResponse);
    });
  });

  unittest.group('obj-schema-GoogleAuto', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleAuto();
      var od = api.GoogleAuto.fromJson(o.toJson());
      checkGoogleAuto(od as api.GoogleAuto);
    });
  });

  unittest.group('obj-schema-GoogleCloudStorage', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudStorage();
      var od = api.GoogleCloudStorage.fromJson(o.toJson());
      checkGoogleCloudStorage(od as api.GoogleCloudStorage);
    });
  });

  unittest.group('obj-schema-IntentFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntentFilter();
      var od = api.IntentFilter.fromJson(o.toJson());
      checkIntentFilter(od as api.IntentFilter);
    });
  });

  unittest.group('obj-schema-IosDevice', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosDevice();
      var od = api.IosDevice.fromJson(o.toJson());
      checkIosDevice(od as api.IosDevice);
    });
  });

  unittest.group('obj-schema-IosDeviceCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosDeviceCatalog();
      var od = api.IosDeviceCatalog.fromJson(o.toJson());
      checkIosDeviceCatalog(od as api.IosDeviceCatalog);
    });
  });

  unittest.group('obj-schema-IosDeviceFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosDeviceFile();
      var od = api.IosDeviceFile.fromJson(o.toJson());
      checkIosDeviceFile(od as api.IosDeviceFile);
    });
  });

  unittest.group('obj-schema-IosDeviceList', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosDeviceList();
      var od = api.IosDeviceList.fromJson(o.toJson());
      checkIosDeviceList(od as api.IosDeviceList);
    });
  });

  unittest.group('obj-schema-IosModel', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosModel();
      var od = api.IosModel.fromJson(o.toJson());
      checkIosModel(od as api.IosModel);
    });
  });

  unittest.group('obj-schema-IosRuntimeConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosRuntimeConfiguration();
      var od = api.IosRuntimeConfiguration.fromJson(o.toJson());
      checkIosRuntimeConfiguration(od as api.IosRuntimeConfiguration);
    });
  });

  unittest.group('obj-schema-IosTestLoop', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosTestLoop();
      var od = api.IosTestLoop.fromJson(o.toJson());
      checkIosTestLoop(od as api.IosTestLoop);
    });
  });

  unittest.group('obj-schema-IosTestSetup', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosTestSetup();
      var od = api.IosTestSetup.fromJson(o.toJson());
      checkIosTestSetup(od as api.IosTestSetup);
    });
  });

  unittest.group('obj-schema-IosVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosVersion();
      var od = api.IosVersion.fromJson(o.toJson());
      checkIosVersion(od as api.IosVersion);
    });
  });

  unittest.group('obj-schema-IosXcTest', () {
    unittest.test('to-json--from-json', () {
      var o = buildIosXcTest();
      var od = api.IosXcTest.fromJson(o.toJson());
      checkIosXcTest(od as api.IosXcTest);
    });
  });

  unittest.group('obj-schema-LauncherActivityIntent', () {
    unittest.test('to-json--from-json', () {
      var o = buildLauncherActivityIntent();
      var od = api.LauncherActivityIntent.fromJson(o.toJson());
      checkLauncherActivityIntent(od as api.LauncherActivityIntent);
    });
  });

  unittest.group('obj-schema-Locale', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocale();
      var od = api.Locale.fromJson(o.toJson());
      checkLocale(od as api.Locale);
    });
  });

  unittest.group('obj-schema-ManualSharding', () {
    unittest.test('to-json--from-json', () {
      var o = buildManualSharding();
      var od = api.ManualSharding.fromJson(o.toJson());
      checkManualSharding(od as api.ManualSharding);
    });
  });

  unittest.group('obj-schema-NetworkConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkConfiguration();
      var od = api.NetworkConfiguration.fromJson(o.toJson());
      checkNetworkConfiguration(od as api.NetworkConfiguration);
    });
  });

  unittest.group('obj-schema-NetworkConfigurationCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildNetworkConfigurationCatalog();
      var od = api.NetworkConfigurationCatalog.fromJson(o.toJson());
      checkNetworkConfigurationCatalog(od as api.NetworkConfigurationCatalog);
    });
  });

  unittest.group('obj-schema-ObbFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildObbFile();
      var od = api.ObbFile.fromJson(o.toJson());
      checkObbFile(od as api.ObbFile);
    });
  });

  unittest.group('obj-schema-Orientation', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrientation();
      var od = api.Orientation.fromJson(o.toJson());
      checkOrientation(od as api.Orientation);
    });
  });

  unittest.group('obj-schema-ProvidedSoftwareCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildProvidedSoftwareCatalog();
      var od = api.ProvidedSoftwareCatalog.fromJson(o.toJson());
      checkProvidedSoftwareCatalog(od as api.ProvidedSoftwareCatalog);
    });
  });

  unittest.group('obj-schema-RegularFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegularFile();
      var od = api.RegularFile.fromJson(o.toJson());
      checkRegularFile(od as api.RegularFile);
    });
  });

  unittest.group('obj-schema-ResultStorage', () {
    unittest.test('to-json--from-json', () {
      var o = buildResultStorage();
      var od = api.ResultStorage.fromJson(o.toJson());
      checkResultStorage(od as api.ResultStorage);
    });
  });

  unittest.group('obj-schema-RoboDirective', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoboDirective();
      var od = api.RoboDirective.fromJson(o.toJson());
      checkRoboDirective(od as api.RoboDirective);
    });
  });

  unittest.group('obj-schema-RoboStartingIntent', () {
    unittest.test('to-json--from-json', () {
      var o = buildRoboStartingIntent();
      var od = api.RoboStartingIntent.fromJson(o.toJson());
      checkRoboStartingIntent(od as api.RoboStartingIntent);
    });
  });

  unittest.group('obj-schema-Shard', () {
    unittest.test('to-json--from-json', () {
      var o = buildShard();
      var od = api.Shard.fromJson(o.toJson());
      checkShard(od as api.Shard);
    });
  });

  unittest.group('obj-schema-ShardingOption', () {
    unittest.test('to-json--from-json', () {
      var o = buildShardingOption();
      var od = api.ShardingOption.fromJson(o.toJson());
      checkShardingOption(od as api.ShardingOption);
    });
  });

  unittest.group('obj-schema-StartActivityIntent', () {
    unittest.test('to-json--from-json', () {
      var o = buildStartActivityIntent();
      var od = api.StartActivityIntent.fromJson(o.toJson());
      checkStartActivityIntent(od as api.StartActivityIntent);
    });
  });

  unittest.group('obj-schema-SystraceSetup', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystraceSetup();
      var od = api.SystraceSetup.fromJson(o.toJson());
      checkSystraceSetup(od as api.SystraceSetup);
    });
  });

  unittest.group('obj-schema-TestDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestDetails();
      var od = api.TestDetails.fromJson(o.toJson());
      checkTestDetails(od as api.TestDetails);
    });
  });

  unittest.group('obj-schema-TestEnvironmentCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestEnvironmentCatalog();
      var od = api.TestEnvironmentCatalog.fromJson(o.toJson());
      checkTestEnvironmentCatalog(od as api.TestEnvironmentCatalog);
    });
  });

  unittest.group('obj-schema-TestExecution', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestExecution();
      var od = api.TestExecution.fromJson(o.toJson());
      checkTestExecution(od as api.TestExecution);
    });
  });

  unittest.group('obj-schema-TestMatrix', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestMatrix();
      var od = api.TestMatrix.fromJson(o.toJson());
      checkTestMatrix(od as api.TestMatrix);
    });
  });

  unittest.group('obj-schema-TestSetup', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestSetup();
      var od = api.TestSetup.fromJson(o.toJson());
      checkTestSetup(od as api.TestSetup);
    });
  });

  unittest.group('obj-schema-TestSpecification', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestSpecification();
      var od = api.TestSpecification.fromJson(o.toJson());
      checkTestSpecification(od as api.TestSpecification);
    });
  });

  unittest.group('obj-schema-TestTargetsForShard', () {
    unittest.test('to-json--from-json', () {
      var o = buildTestTargetsForShard();
      var od = api.TestTargetsForShard.fromJson(o.toJson());
      checkTestTargetsForShard(od as api.TestTargetsForShard);
    });
  });

  unittest.group('obj-schema-ToolResultsExecution', () {
    unittest.test('to-json--from-json', () {
      var o = buildToolResultsExecution();
      var od = api.ToolResultsExecution.fromJson(o.toJson());
      checkToolResultsExecution(od as api.ToolResultsExecution);
    });
  });

  unittest.group('obj-schema-ToolResultsHistory', () {
    unittest.test('to-json--from-json', () {
      var o = buildToolResultsHistory();
      var od = api.ToolResultsHistory.fromJson(o.toJson());
      checkToolResultsHistory(od as api.ToolResultsHistory);
    });
  });

  unittest.group('obj-schema-ToolResultsStep', () {
    unittest.test('to-json--from-json', () {
      var o = buildToolResultsStep();
      var od = api.ToolResultsStep.fromJson(o.toJson());
      checkToolResultsStep(od as api.ToolResultsStep);
    });
  });

  unittest.group('obj-schema-TrafficRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrafficRule();
      var od = api.TrafficRule.fromJson(o.toJson());
      checkTrafficRule(od as api.TrafficRule);
    });
  });

  unittest.group('obj-schema-UniformSharding', () {
    unittest.test('to-json--from-json', () {
      var o = buildUniformSharding();
      var od = api.UniformSharding.fromJson(o.toJson());
      checkUniformSharding(od as api.UniformSharding);
    });
  });

  unittest.group('obj-schema-XcodeVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildXcodeVersion();
      var od = api.XcodeVersion.fromJson(o.toJson());
      checkXcodeVersion(od as api.XcodeVersion);
    });
  });

  unittest.group('resource-ApplicationDetailServiceResource', () {
    unittest.test('method--getApkDetails', () {
      var mock = HttpServerMock();
      var res = api.TestingApi(mock).applicationDetailService;
      var arg_request = buildFileReference();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FileReference.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFileReference(obj as api.FileReference);

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
          path.substring(pathOffset, pathOffset + 41),
          unittest.equals("v1/applicationDetailService/getApkDetails"),
        );
        pathOffset += 41;

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
        var resp = convert.json.encode(buildGetApkDetailsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getApkDetails(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetApkDetailsResponse(response as api.GetApkDetailsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTestMatricesResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.TestingApi(mock).projects.testMatrices;
      var arg_projectId = 'foo';
      var arg_testMatrixId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals("v1/projects/"),
        );
        pathOffset += 12;
        index = path.indexOf('/testMatrices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/testMatrices/"),
        );
        pathOffset += 14;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_testMatrixId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(":cancel"),
        );
        pathOffset += 7;

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
        var resp = convert.json.encode(buildCancelTestMatrixResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCancelTestMatrixResponse(response as api.CancelTestMatrixResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.TestingApi(mock).projects.testMatrices;
      var arg_request = buildTestMatrix();
      var arg_projectId = 'foo';
      var arg_requestId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TestMatrix.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestMatrix(obj as api.TestMatrix);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals("v1/projects/"),
        );
        pathOffset += 12;
        index = path.indexOf('/testMatrices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("/testMatrices"),
        );
        pathOffset += 13;

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
          queryMap["requestId"]!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestMatrix());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              requestId: arg_requestId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestMatrix(response as api.TestMatrix);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.TestingApi(mock).projects.testMatrices;
      var arg_projectId = 'foo';
      var arg_testMatrixId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals("v1/projects/"),
        );
        pathOffset += 12;
        index = path.indexOf('/testMatrices/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/testMatrices/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_testMatrixId'),
        );

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
        var resp = convert.json.encode(buildTestMatrix());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_testMatrixId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestMatrix(response as api.TestMatrix);
      })));
    });
  });

  unittest.group('resource-TestEnvironmentCatalogResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.TestingApi(mock).testEnvironmentCatalog;
      var arg_environmentType = 'foo';
      var arg_projectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals("v1/testEnvironmentCatalog/"),
        );
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_environmentType'),
        );

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
          queryMap["projectId"]!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTestEnvironmentCatalog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_environmentType,
              projectId: arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTestEnvironmentCatalog(response as api.TestEnvironmentCatalog);
      })));
    });
  });
}
