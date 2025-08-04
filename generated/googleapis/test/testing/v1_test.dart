// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/testing/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
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
    checkGoogleAuto(o.googleAuto!);
  }
  buildCounterAccount--;
}

core.int buildCounterAndroidDevice = 0;
api.AndroidDevice buildAndroidDevice() {
  final o = api.AndroidDevice();
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
    unittest.expect(o.androidModelId!, unittest.equals('foo'));
    unittest.expect(o.androidVersionId!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.orientation!, unittest.equals('foo'));
  }
  buildCounterAndroidDevice--;
}

core.List<api.AndroidModel> buildUnnamed0() => [
  buildAndroidModel(),
  buildAndroidModel(),
];

void checkUnnamed0(core.List<api.AndroidModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidModel(o[0]);
  checkAndroidModel(o[1]);
}

core.List<api.AndroidVersion> buildUnnamed1() => [
  buildAndroidVersion(),
  buildAndroidVersion(),
];

void checkUnnamed1(core.List<api.AndroidVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidVersion(o[0]);
  checkAndroidVersion(o[1]);
}

core.int buildCounterAndroidDeviceCatalog = 0;
api.AndroidDeviceCatalog buildAndroidDeviceCatalog() {
  final o = api.AndroidDeviceCatalog();
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    o.models = buildUnnamed0();
    o.runtimeConfiguration = buildAndroidRuntimeConfiguration();
    o.versions = buildUnnamed1();
  }
  buildCounterAndroidDeviceCatalog--;
  return o;
}

void checkAndroidDeviceCatalog(api.AndroidDeviceCatalog o) {
  buildCounterAndroidDeviceCatalog++;
  if (buildCounterAndroidDeviceCatalog < 3) {
    checkUnnamed0(o.models!);
    checkAndroidRuntimeConfiguration(o.runtimeConfiguration!);
    checkUnnamed1(o.versions!);
  }
  buildCounterAndroidDeviceCatalog--;
}

core.List<api.AndroidDevice> buildUnnamed2() => [
  buildAndroidDevice(),
  buildAndroidDevice(),
];

void checkUnnamed2(core.List<api.AndroidDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAndroidDevice(o[0]);
  checkAndroidDevice(o[1]);
}

core.int buildCounterAndroidDeviceList = 0;
api.AndroidDeviceList buildAndroidDeviceList() {
  final o = api.AndroidDeviceList();
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    o.androidDevices = buildUnnamed2();
  }
  buildCounterAndroidDeviceList--;
  return o;
}

void checkAndroidDeviceList(api.AndroidDeviceList o) {
  buildCounterAndroidDeviceList++;
  if (buildCounterAndroidDeviceList < 3) {
    checkUnnamed2(o.androidDevices!);
  }
  buildCounterAndroidDeviceList--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidInstrumentationTest = 0;
api.AndroidInstrumentationTest buildAndroidInstrumentationTest() {
  final o = api.AndroidInstrumentationTest();
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
    o.testTargets = buildUnnamed3();
  }
  buildCounterAndroidInstrumentationTest--;
  return o;
}

void checkAndroidInstrumentationTest(api.AndroidInstrumentationTest o) {
  buildCounterAndroidInstrumentationTest++;
  if (buildCounterAndroidInstrumentationTest < 3) {
    checkFileReference(o.appApk!);
    checkAppBundle(o.appBundle!);
    unittest.expect(o.appPackageId!, unittest.equals('foo'));
    unittest.expect(o.orchestratorOption!, unittest.equals('foo'));
    checkShardingOption(o.shardingOption!);
    checkFileReference(o.testApk!);
    unittest.expect(o.testPackageId!, unittest.equals('foo'));
    unittest.expect(o.testRunnerClass!, unittest.equals('foo'));
    checkUnnamed3(o.testTargets!);
  }
  buildCounterAndroidInstrumentationTest--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6() => ['foo', 'foo'];

void checkUnnamed6(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidMatrix = 0;
api.AndroidMatrix buildAndroidMatrix() {
  final o = api.AndroidMatrix();
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    o.androidModelIds = buildUnnamed4();
    o.androidVersionIds = buildUnnamed5();
    o.locales = buildUnnamed6();
    o.orientations = buildUnnamed7();
  }
  buildCounterAndroidMatrix--;
  return o;
}

void checkAndroidMatrix(api.AndroidMatrix o) {
  buildCounterAndroidMatrix++;
  if (buildCounterAndroidMatrix < 3) {
    checkUnnamed4(o.androidModelIds!);
    checkUnnamed5(o.androidVersionIds!);
    checkUnnamed6(o.locales!);
    checkUnnamed7(o.orientations!);
  }
  buildCounterAndroidMatrix--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PerAndroidVersionInfo> buildUnnamed9() => [
  buildPerAndroidVersionInfo(),
  buildPerAndroidVersionInfo(),
];

void checkUnnamed9(core.List<api.PerAndroidVersionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerAndroidVersionInfo(o[0]);
  checkPerAndroidVersionInfo(o[1]);
}

core.List<core.String> buildUnnamed10() => ['foo', 'foo'];

void checkUnnamed10(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidModel = 0;
api.AndroidModel buildAndroidModel() {
  final o = api.AndroidModel();
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    o.accessDeniedReasons = buildUnnamed8();
    o.brand = 'foo';
    o.codename = 'foo';
    o.form = 'foo';
    o.formFactor = 'foo';
    o.id = 'foo';
    o.labInfo = buildLabInfo();
    o.lowFpsVideoRecording = true;
    o.manufacturer = 'foo';
    o.name = 'foo';
    o.perVersionInfo = buildUnnamed9();
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedAbis = buildUnnamed10();
    o.supportedVersionIds = buildUnnamed11();
    o.tags = buildUnnamed12();
    o.thumbnailUrl = 'foo';
  }
  buildCounterAndroidModel--;
  return o;
}

void checkAndroidModel(api.AndroidModel o) {
  buildCounterAndroidModel++;
  if (buildCounterAndroidModel < 3) {
    checkUnnamed8(o.accessDeniedReasons!);
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.codename!, unittest.equals('foo'));
    unittest.expect(o.form!, unittest.equals('foo'));
    unittest.expect(o.formFactor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkLabInfo(o.labInfo!);
    unittest.expect(o.lowFpsVideoRecording!, unittest.isTrue);
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed9(o.perVersionInfo!);
    unittest.expect(o.screenDensity!, unittest.equals(42));
    unittest.expect(o.screenX!, unittest.equals(42));
    unittest.expect(o.screenY!, unittest.equals(42));
    checkUnnamed10(o.supportedAbis!);
    checkUnnamed11(o.supportedVersionIds!);
    checkUnnamed12(o.tags!);
    unittest.expect(o.thumbnailUrl!, unittest.equals('foo'));
  }
  buildCounterAndroidModel--;
}

core.List<api.RoboDirective> buildUnnamed13() => [
  buildRoboDirective(),
  buildRoboDirective(),
];

void checkUnnamed13(core.List<api.RoboDirective> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboDirective(o[0]);
  checkRoboDirective(o[1]);
}

core.List<api.RoboStartingIntent> buildUnnamed14() => [
  buildRoboStartingIntent(),
  buildRoboStartingIntent(),
];

void checkUnnamed14(core.List<api.RoboStartingIntent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoboStartingIntent(o[0]);
  checkRoboStartingIntent(o[1]);
}

core.int buildCounterAndroidRoboTest = 0;
api.AndroidRoboTest buildAndroidRoboTest() {
  final o = api.AndroidRoboTest();
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    o.appApk = buildFileReference();
    o.appBundle = buildAppBundle();
    o.appInitialActivity = 'foo';
    o.appPackageId = 'foo';
    o.maxDepth = 42;
    o.maxSteps = 42;
    o.roboDirectives = buildUnnamed13();
    o.roboMode = 'foo';
    o.roboScript = buildFileReference();
    o.startingIntents = buildUnnamed14();
  }
  buildCounterAndroidRoboTest--;
  return o;
}

void checkAndroidRoboTest(api.AndroidRoboTest o) {
  buildCounterAndroidRoboTest++;
  if (buildCounterAndroidRoboTest < 3) {
    checkFileReference(o.appApk!);
    checkAppBundle(o.appBundle!);
    unittest.expect(o.appInitialActivity!, unittest.equals('foo'));
    unittest.expect(o.appPackageId!, unittest.equals('foo'));
    unittest.expect(o.maxDepth!, unittest.equals(42));
    unittest.expect(o.maxSteps!, unittest.equals(42));
    checkUnnamed13(o.roboDirectives!);
    unittest.expect(o.roboMode!, unittest.equals('foo'));
    checkFileReference(o.roboScript!);
    checkUnnamed14(o.startingIntents!);
  }
  buildCounterAndroidRoboTest--;
}

core.List<api.Locale> buildUnnamed15() => [buildLocale(), buildLocale()];

void checkUnnamed15(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

core.List<api.Orientation> buildUnnamed16() => [
  buildOrientation(),
  buildOrientation(),
];

void checkUnnamed16(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0]);
  checkOrientation(o[1]);
}

core.int buildCounterAndroidRuntimeConfiguration = 0;
api.AndroidRuntimeConfiguration buildAndroidRuntimeConfiguration() {
  final o = api.AndroidRuntimeConfiguration();
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    o.locales = buildUnnamed15();
    o.orientations = buildUnnamed16();
  }
  buildCounterAndroidRuntimeConfiguration--;
  return o;
}

void checkAndroidRuntimeConfiguration(api.AndroidRuntimeConfiguration o) {
  buildCounterAndroidRuntimeConfiguration++;
  if (buildCounterAndroidRuntimeConfiguration < 3) {
    checkUnnamed15(o.locales!);
    checkUnnamed16(o.orientations!);
  }
  buildCounterAndroidRuntimeConfiguration--;
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed18() => [42, 42];

void checkUnnamed18(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterAndroidTestLoop = 0;
api.AndroidTestLoop buildAndroidTestLoop() {
  final o = api.AndroidTestLoop();
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    o.appApk = buildFileReference();
    o.appBundle = buildAppBundle();
    o.appPackageId = 'foo';
    o.scenarioLabels = buildUnnamed17();
    o.scenarios = buildUnnamed18();
  }
  buildCounterAndroidTestLoop--;
  return o;
}

void checkAndroidTestLoop(api.AndroidTestLoop o) {
  buildCounterAndroidTestLoop++;
  if (buildCounterAndroidTestLoop < 3) {
    checkFileReference(o.appApk!);
    checkAppBundle(o.appBundle!);
    unittest.expect(o.appPackageId!, unittest.equals('foo'));
    checkUnnamed17(o.scenarioLabels!);
    checkUnnamed18(o.scenarios!);
  }
  buildCounterAndroidTestLoop--;
}

core.List<core.String> buildUnnamed19() => ['foo', 'foo'];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAndroidVersion = 0;
api.AndroidVersion buildAndroidVersion() {
  final o = api.AndroidVersion();
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    o.apiLevel = 42;
    o.codeName = 'foo';
    o.distribution = buildDistribution();
    o.id = 'foo';
    o.releaseDate = buildDate();
    o.tags = buildUnnamed19();
    o.versionString = 'foo';
  }
  buildCounterAndroidVersion--;
  return o;
}

void checkAndroidVersion(api.AndroidVersion o) {
  buildCounterAndroidVersion++;
  if (buildCounterAndroidVersion < 3) {
    unittest.expect(o.apiLevel!, unittest.equals(42));
    unittest.expect(o.codeName!, unittest.equals('foo'));
    checkDistribution(o.distribution!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkDate(o.releaseDate!);
    checkUnnamed19(o.tags!);
    unittest.expect(o.versionString!, unittest.equals('foo'));
  }
  buildCounterAndroidVersion--;
}

core.int buildCounterApk = 0;
api.Apk buildApk() {
  final o = api.Apk();
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
    checkFileReference(o.location!);
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterApk--;
}

core.int buildCounterApkDetail = 0;
api.ApkDetail buildApkDetail() {
  final o = api.ApkDetail();
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
    checkApkManifest(o.apkManifest!);
  }
  buildCounterApkDetail--;
}

core.List<api.IntentFilter> buildUnnamed20() => [
  buildIntentFilter(),
  buildIntentFilter(),
];

void checkUnnamed20(core.List<api.IntentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentFilter(o[0]);
  checkIntentFilter(o[1]);
}

core.List<api.Metadata> buildUnnamed21() => [buildMetadata(), buildMetadata()];

void checkUnnamed21(core.List<api.Metadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadata(o[0]);
  checkMetadata(o[1]);
}

core.List<api.Service> buildUnnamed22() => [buildService(), buildService()];

void checkUnnamed22(core.List<api.Service> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkService(o[0]);
  checkService(o[1]);
}

core.List<api.UsesFeature> buildUnnamed23() => [
  buildUsesFeature(),
  buildUsesFeature(),
];

void checkUnnamed23(core.List<api.UsesFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsesFeature(o[0]);
  checkUsesFeature(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UsesPermissionTag> buildUnnamed25() => [
  buildUsesPermissionTag(),
  buildUsesPermissionTag(),
];

void checkUnnamed25(core.List<api.UsesPermissionTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsesPermissionTag(o[0]);
  checkUsesPermissionTag(o[1]);
}

core.int buildCounterApkManifest = 0;
api.ApkManifest buildApkManifest() {
  final o = api.ApkManifest();
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    o.applicationLabel = 'foo';
    o.intentFilters = buildUnnamed20();
    o.maxSdkVersion = 42;
    o.metadata = buildUnnamed21();
    o.minSdkVersion = 42;
    o.packageName = 'foo';
    o.services = buildUnnamed22();
    o.targetSdkVersion = 42;
    o.usesFeature = buildUnnamed23();
    o.usesPermission = buildUnnamed24();
    o.usesPermissionTags = buildUnnamed25();
    o.versionCode = 'foo';
    o.versionName = 'foo';
  }
  buildCounterApkManifest--;
  return o;
}

void checkApkManifest(api.ApkManifest o) {
  buildCounterApkManifest++;
  if (buildCounterApkManifest < 3) {
    unittest.expect(o.applicationLabel!, unittest.equals('foo'));
    checkUnnamed20(o.intentFilters!);
    unittest.expect(o.maxSdkVersion!, unittest.equals(42));
    checkUnnamed21(o.metadata!);
    unittest.expect(o.minSdkVersion!, unittest.equals(42));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    checkUnnamed22(o.services!);
    unittest.expect(o.targetSdkVersion!, unittest.equals(42));
    checkUnnamed23(o.usesFeature!);
    checkUnnamed24(o.usesPermission!);
    checkUnnamed25(o.usesPermissionTags!);
    unittest.expect(o.versionCode!, unittest.equals('foo'));
    unittest.expect(o.versionName!, unittest.equals('foo'));
  }
  buildCounterApkManifest--;
}

core.List<api.FileReference> buildUnnamed26() => [
  buildFileReference(),
  buildFileReference(),
];

void checkUnnamed26(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.int buildCounterApkSplits = 0;
api.ApkSplits buildApkSplits() {
  final o = api.ApkSplits();
  buildCounterApkSplits++;
  if (buildCounterApkSplits < 3) {
    o.bundleSplits = buildUnnamed26();
  }
  buildCounterApkSplits--;
  return o;
}

void checkApkSplits(api.ApkSplits o) {
  buildCounterApkSplits++;
  if (buildCounterApkSplits < 3) {
    checkUnnamed26(o.bundleSplits!);
  }
  buildCounterApkSplits--;
}

core.int buildCounterAppBundle = 0;
api.AppBundle buildAppBundle() {
  final o = api.AppBundle();
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    o.apks = buildApkSplits();
    o.bundleLocation = buildFileReference();
  }
  buildCounterAppBundle--;
  return o;
}

void checkAppBundle(api.AppBundle o) {
  buildCounterAppBundle++;
  if (buildCounterAppBundle < 3) {
    checkApkSplits(o.apks!);
    checkFileReference(o.bundleLocation!);
  }
  buildCounterAppBundle--;
}

core.int buildCounterCancelDeviceSessionRequest = 0;
api.CancelDeviceSessionRequest buildCancelDeviceSessionRequest() {
  final o = api.CancelDeviceSessionRequest();
  buildCounterCancelDeviceSessionRequest++;
  if (buildCounterCancelDeviceSessionRequest < 3) {}
  buildCounterCancelDeviceSessionRequest--;
  return o;
}

void checkCancelDeviceSessionRequest(api.CancelDeviceSessionRequest o) {
  buildCounterCancelDeviceSessionRequest++;
  if (buildCounterCancelDeviceSessionRequest < 3) {}
  buildCounterCancelDeviceSessionRequest--;
}

core.int buildCounterCancelTestMatrixResponse = 0;
api.CancelTestMatrixResponse buildCancelTestMatrixResponse() {
  final o = api.CancelTestMatrixResponse();
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
    unittest.expect(o.testState!, unittest.equals('foo'));
  }
  buildCounterCancelTestMatrixResponse--;
}

core.List<api.ClientInfoDetail> buildUnnamed27() => [
  buildClientInfoDetail(),
  buildClientInfoDetail(),
];

void checkUnnamed27(core.List<api.ClientInfoDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClientInfoDetail(o[0]);
  checkClientInfoDetail(o[1]);
}

core.int buildCounterClientInfo = 0;
api.ClientInfo buildClientInfo() {
  final o = api.ClientInfo();
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    o.clientInfoDetails = buildUnnamed27();
    o.name = 'foo';
  }
  buildCounterClientInfo--;
  return o;
}

void checkClientInfo(api.ClientInfo o) {
  buildCounterClientInfo++;
  if (buildCounterClientInfo < 3) {
    checkUnnamed27(o.clientInfoDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterClientInfo--;
}

core.int buildCounterClientInfoDetail = 0;
api.ClientInfoDetail buildClientInfoDetail() {
  final o = api.ClientInfoDetail();
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterClientInfoDetail--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDeviceFile = 0;
api.DeviceFile buildDeviceFile() {
  final o = api.DeviceFile();
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
    checkObbFile(o.obbFile!);
    checkRegularFile(o.regularFile!);
  }
  buildCounterDeviceFile--;
}

core.int buildCounterDeviceIpBlock = 0;
api.DeviceIpBlock buildDeviceIpBlock() {
  final o = api.DeviceIpBlock();
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
    checkDate(o.addedDate!);
    unittest.expect(o.block!, unittest.equals('foo'));
    unittest.expect(o.form!, unittest.equals('foo'));
  }
  buildCounterDeviceIpBlock--;
}

core.List<api.DeviceIpBlock> buildUnnamed28() => [
  buildDeviceIpBlock(),
  buildDeviceIpBlock(),
];

void checkUnnamed28(core.List<api.DeviceIpBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceIpBlock(o[0]);
  checkDeviceIpBlock(o[1]);
}

core.int buildCounterDeviceIpBlockCatalog = 0;
api.DeviceIpBlockCatalog buildDeviceIpBlockCatalog() {
  final o = api.DeviceIpBlockCatalog();
  buildCounterDeviceIpBlockCatalog++;
  if (buildCounterDeviceIpBlockCatalog < 3) {
    o.ipBlocks = buildUnnamed28();
  }
  buildCounterDeviceIpBlockCatalog--;
  return o;
}

void checkDeviceIpBlockCatalog(api.DeviceIpBlockCatalog o) {
  buildCounterDeviceIpBlockCatalog++;
  if (buildCounterDeviceIpBlockCatalog < 3) {
    checkUnnamed28(o.ipBlocks!);
  }
  buildCounterDeviceIpBlockCatalog--;
}

core.List<api.SessionStateEvent> buildUnnamed29() => [
  buildSessionStateEvent(),
  buildSessionStateEvent(),
];

void checkUnnamed29(core.List<api.SessionStateEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionStateEvent(o[0]);
  checkSessionStateEvent(o[1]);
}

core.int buildCounterDeviceSession = 0;
api.DeviceSession buildDeviceSession() {
  final o = api.DeviceSession();
  buildCounterDeviceSession++;
  if (buildCounterDeviceSession < 3) {
    o.activeStartTime = 'foo';
    o.androidDevice = buildAndroidDevice();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.inactivityTimeout = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.stateHistories = buildUnnamed29();
    o.ttl = 'foo';
  }
  buildCounterDeviceSession--;
  return o;
}

void checkDeviceSession(api.DeviceSession o) {
  buildCounterDeviceSession++;
  if (buildCounterDeviceSession < 3) {
    unittest.expect(o.activeStartTime!, unittest.equals('foo'));
    checkAndroidDevice(o.androidDevice!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.inactivityTimeout!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed29(o.stateHistories!);
    unittest.expect(o.ttl!, unittest.equals('foo'));
  }
  buildCounterDeviceSession--;
}

core.int buildCounterDirectAccessVersionInfo = 0;
api.DirectAccessVersionInfo buildDirectAccessVersionInfo() {
  final o = api.DirectAccessVersionInfo();
  buildCounterDirectAccessVersionInfo++;
  if (buildCounterDirectAccessVersionInfo < 3) {
    o.directAccessSupported = true;
    o.minimumAndroidStudioVersion = 'foo';
  }
  buildCounterDirectAccessVersionInfo--;
  return o;
}

void checkDirectAccessVersionInfo(api.DirectAccessVersionInfo o) {
  buildCounterDirectAccessVersionInfo++;
  if (buildCounterDirectAccessVersionInfo < 3) {
    unittest.expect(o.directAccessSupported!, unittest.isTrue);
    unittest.expect(o.minimumAndroidStudioVersion!, unittest.equals('foo'));
  }
  buildCounterDirectAccessVersionInfo--;
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  final o = api.Distribution();
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
    unittest.expect(o.marketShare!, unittest.equals(42.0));
    unittest.expect(o.measurementTime!, unittest.equals('foo'));
  }
  buildCounterDistribution--;
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

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
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
    checkAndroidDevice(o.androidDevice!);
    checkIosDevice(o.iosDevice!);
  }
  buildCounterEnvironment--;
}

core.int buildCounterEnvironmentMatrix = 0;
api.EnvironmentMatrix buildEnvironmentMatrix() {
  final o = api.EnvironmentMatrix();
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
    checkAndroidDeviceList(o.androidDeviceList!);
    checkAndroidMatrix(o.androidMatrix!);
    checkIosDeviceList(o.iosDeviceList!);
  }
  buildCounterEnvironmentMatrix--;
}

core.int buildCounterEnvironmentVariable = 0;
api.EnvironmentVariable buildEnvironmentVariable() {
  final o = api.EnvironmentVariable();
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
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterEnvironmentVariable--;
}

core.int buildCounterFileReference = 0;
api.FileReference buildFileReference() {
  final o = api.FileReference();
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
    unittest.expect(o.gcsPath!, unittest.equals('foo'));
  }
  buildCounterFileReference--;
}

core.int buildCounterGetApkDetailsResponse = 0;
api.GetApkDetailsResponse buildGetApkDetailsResponse() {
  final o = api.GetApkDetailsResponse();
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
    checkApkDetail(o.apkDetail!);
  }
  buildCounterGetApkDetailsResponse--;
}

core.int buildCounterGoogleAuto = 0;
api.GoogleAuto buildGoogleAuto() {
  final o = api.GoogleAuto();
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
  final o = api.GoogleCloudStorage();
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
    unittest.expect(o.gcsPath!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudStorage--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIntentFilter = 0;
api.IntentFilter buildIntentFilter() {
  final o = api.IntentFilter();
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    o.actionNames = buildUnnamed30();
    o.categoryNames = buildUnnamed31();
    o.mimeType = 'foo';
  }
  buildCounterIntentFilter--;
  return o;
}

void checkIntentFilter(api.IntentFilter o) {
  buildCounterIntentFilter++;
  if (buildCounterIntentFilter < 3) {
    checkUnnamed30(o.actionNames!);
    checkUnnamed31(o.categoryNames!);
    unittest.expect(o.mimeType!, unittest.equals('foo'));
  }
  buildCounterIntentFilter--;
}

core.int buildCounterIosDevice = 0;
api.IosDevice buildIosDevice() {
  final o = api.IosDevice();
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
    unittest.expect(o.iosModelId!, unittest.equals('foo'));
    unittest.expect(o.iosVersionId!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.orientation!, unittest.equals('foo'));
  }
  buildCounterIosDevice--;
}

core.List<api.IosModel> buildUnnamed32() => [buildIosModel(), buildIosModel()];

void checkUnnamed32(core.List<api.IosModel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosModel(o[0]);
  checkIosModel(o[1]);
}

core.List<api.IosVersion> buildUnnamed33() => [
  buildIosVersion(),
  buildIosVersion(),
];

void checkUnnamed33(core.List<api.IosVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosVersion(o[0]);
  checkIosVersion(o[1]);
}

core.List<api.XcodeVersion> buildUnnamed34() => [
  buildXcodeVersion(),
  buildXcodeVersion(),
];

void checkUnnamed34(core.List<api.XcodeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkXcodeVersion(o[0]);
  checkXcodeVersion(o[1]);
}

core.int buildCounterIosDeviceCatalog = 0;
api.IosDeviceCatalog buildIosDeviceCatalog() {
  final o = api.IosDeviceCatalog();
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    o.models = buildUnnamed32();
    o.runtimeConfiguration = buildIosRuntimeConfiguration();
    o.versions = buildUnnamed33();
    o.xcodeVersions = buildUnnamed34();
  }
  buildCounterIosDeviceCatalog--;
  return o;
}

void checkIosDeviceCatalog(api.IosDeviceCatalog o) {
  buildCounterIosDeviceCatalog++;
  if (buildCounterIosDeviceCatalog < 3) {
    checkUnnamed32(o.models!);
    checkIosRuntimeConfiguration(o.runtimeConfiguration!);
    checkUnnamed33(o.versions!);
    checkUnnamed34(o.xcodeVersions!);
  }
  buildCounterIosDeviceCatalog--;
}

core.int buildCounterIosDeviceFile = 0;
api.IosDeviceFile buildIosDeviceFile() {
  final o = api.IosDeviceFile();
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
    unittest.expect(o.bundleId!, unittest.equals('foo'));
    checkFileReference(o.content!);
    unittest.expect(o.devicePath!, unittest.equals('foo'));
  }
  buildCounterIosDeviceFile--;
}

core.List<api.IosDevice> buildUnnamed35() => [
  buildIosDevice(),
  buildIosDevice(),
];

void checkUnnamed35(core.List<api.IosDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDevice(o[0]);
  checkIosDevice(o[1]);
}

core.int buildCounterIosDeviceList = 0;
api.IosDeviceList buildIosDeviceList() {
  final o = api.IosDeviceList();
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    o.iosDevices = buildUnnamed35();
  }
  buildCounterIosDeviceList--;
  return o;
}

void checkIosDeviceList(api.IosDeviceList o) {
  buildCounterIosDeviceList++;
  if (buildCounterIosDeviceList < 3) {
    checkUnnamed35(o.iosDevices!);
  }
  buildCounterIosDeviceList--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PerIosVersionInfo> buildUnnamed37() => [
  buildPerIosVersionInfo(),
  buildPerIosVersionInfo(),
];

void checkUnnamed37(core.List<api.PerIosVersionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerIosVersionInfo(o[0]);
  checkPerIosVersionInfo(o[1]);
}

core.List<core.String> buildUnnamed38() => ['foo', 'foo'];

void checkUnnamed38(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIosModel = 0;
api.IosModel buildIosModel() {
  final o = api.IosModel();
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    o.deviceCapabilities = buildUnnamed36();
    o.formFactor = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.perVersionInfo = buildUnnamed37();
    o.screenDensity = 42;
    o.screenX = 42;
    o.screenY = 42;
    o.supportedVersionIds = buildUnnamed38();
    o.tags = buildUnnamed39();
  }
  buildCounterIosModel--;
  return o;
}

void checkIosModel(api.IosModel o) {
  buildCounterIosModel++;
  if (buildCounterIosModel < 3) {
    checkUnnamed36(o.deviceCapabilities!);
    unittest.expect(o.formFactor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed37(o.perVersionInfo!);
    unittest.expect(o.screenDensity!, unittest.equals(42));
    unittest.expect(o.screenX!, unittest.equals(42));
    unittest.expect(o.screenY!, unittest.equals(42));
    checkUnnamed38(o.supportedVersionIds!);
    checkUnnamed39(o.tags!);
  }
  buildCounterIosModel--;
}

core.int buildCounterIosRoboTest = 0;
api.IosRoboTest buildIosRoboTest() {
  final o = api.IosRoboTest();
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {
    o.appBundleId = 'foo';
    o.appIpa = buildFileReference();
    o.roboScript = buildFileReference();
  }
  buildCounterIosRoboTest--;
  return o;
}

void checkIosRoboTest(api.IosRoboTest o) {
  buildCounterIosRoboTest++;
  if (buildCounterIosRoboTest < 3) {
    unittest.expect(o.appBundleId!, unittest.equals('foo'));
    checkFileReference(o.appIpa!);
    checkFileReference(o.roboScript!);
  }
  buildCounterIosRoboTest--;
}

core.List<api.Locale> buildUnnamed40() => [buildLocale(), buildLocale()];

void checkUnnamed40(core.List<api.Locale> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocale(o[0]);
  checkLocale(o[1]);
}

core.List<api.Orientation> buildUnnamed41() => [
  buildOrientation(),
  buildOrientation(),
];

void checkUnnamed41(core.List<api.Orientation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrientation(o[0]);
  checkOrientation(o[1]);
}

core.int buildCounterIosRuntimeConfiguration = 0;
api.IosRuntimeConfiguration buildIosRuntimeConfiguration() {
  final o = api.IosRuntimeConfiguration();
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    o.locales = buildUnnamed40();
    o.orientations = buildUnnamed41();
  }
  buildCounterIosRuntimeConfiguration--;
  return o;
}

void checkIosRuntimeConfiguration(api.IosRuntimeConfiguration o) {
  buildCounterIosRuntimeConfiguration++;
  if (buildCounterIosRuntimeConfiguration < 3) {
    checkUnnamed40(o.locales!);
    checkUnnamed41(o.orientations!);
  }
  buildCounterIosRuntimeConfiguration--;
}

core.List<core.int> buildUnnamed42() => [42, 42];

void checkUnnamed42(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterIosTestLoop = 0;
api.IosTestLoop buildIosTestLoop() {
  final o = api.IosTestLoop();
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    o.appBundleId = 'foo';
    o.appIpa = buildFileReference();
    o.scenarios = buildUnnamed42();
  }
  buildCounterIosTestLoop--;
  return o;
}

void checkIosTestLoop(api.IosTestLoop o) {
  buildCounterIosTestLoop++;
  if (buildCounterIosTestLoop < 3) {
    unittest.expect(o.appBundleId!, unittest.equals('foo'));
    checkFileReference(o.appIpa!);
    checkUnnamed42(o.scenarios!);
  }
  buildCounterIosTestLoop--;
}

core.List<api.FileReference> buildUnnamed43() => [
  buildFileReference(),
  buildFileReference(),
];

void checkUnnamed43(core.List<api.FileReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileReference(o[0]);
  checkFileReference(o[1]);
}

core.List<api.IosDeviceFile> buildUnnamed44() => [
  buildIosDeviceFile(),
  buildIosDeviceFile(),
];

void checkUnnamed44(core.List<api.IosDeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDeviceFile(o[0]);
  checkIosDeviceFile(o[1]);
}

core.List<api.IosDeviceFile> buildUnnamed45() => [
  buildIosDeviceFile(),
  buildIosDeviceFile(),
];

void checkUnnamed45(core.List<api.IosDeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIosDeviceFile(o[0]);
  checkIosDeviceFile(o[1]);
}

core.int buildCounterIosTestSetup = 0;
api.IosTestSetup buildIosTestSetup() {
  final o = api.IosTestSetup();
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    o.additionalIpas = buildUnnamed43();
    o.networkProfile = 'foo';
    o.pullDirectories = buildUnnamed44();
    o.pushFiles = buildUnnamed45();
  }
  buildCounterIosTestSetup--;
  return o;
}

void checkIosTestSetup(api.IosTestSetup o) {
  buildCounterIosTestSetup++;
  if (buildCounterIosTestSetup < 3) {
    checkUnnamed43(o.additionalIpas!);
    unittest.expect(o.networkProfile!, unittest.equals('foo'));
    checkUnnamed44(o.pullDirectories!);
    checkUnnamed45(o.pushFiles!);
  }
  buildCounterIosTestSetup--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIosVersion = 0;
api.IosVersion buildIosVersion() {
  final o = api.IosVersion();
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    o.id = 'foo';
    o.majorVersion = 42;
    o.minorVersion = 42;
    o.supportedXcodeVersionIds = buildUnnamed46();
    o.tags = buildUnnamed47();
  }
  buildCounterIosVersion--;
  return o;
}

void checkIosVersion(api.IosVersion o) {
  buildCounterIosVersion++;
  if (buildCounterIosVersion < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.majorVersion!, unittest.equals(42));
    unittest.expect(o.minorVersion!, unittest.equals(42));
    checkUnnamed46(o.supportedXcodeVersionIds!);
    checkUnnamed47(o.tags!);
  }
  buildCounterIosVersion--;
}

core.int buildCounterIosXcTest = 0;
api.IosXcTest buildIosXcTest() {
  final o = api.IosXcTest();
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
    unittest.expect(o.appBundleId!, unittest.equals('foo'));
    unittest.expect(o.testSpecialEntitlements!, unittest.isTrue);
    checkFileReference(o.testsZip!);
    unittest.expect(o.xcodeVersion!, unittest.equals('foo'));
    checkFileReference(o.xctestrun!);
  }
  buildCounterIosXcTest--;
}

core.int buildCounterLabInfo = 0;
api.LabInfo buildLabInfo() {
  final o = api.LabInfo();
  buildCounterLabInfo++;
  if (buildCounterLabInfo < 3) {
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLabInfo--;
  return o;
}

void checkLabInfo(api.LabInfo o) {
  buildCounterLabInfo++;
  if (buildCounterLabInfo < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterLabInfo--;
}

core.int buildCounterLauncherActivityIntent = 0;
api.LauncherActivityIntent buildLauncherActivityIntent() {
  final o = api.LauncherActivityIntent();
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

core.List<api.DeviceSession> buildUnnamed48() => [
  buildDeviceSession(),
  buildDeviceSession(),
];

void checkUnnamed48(core.List<api.DeviceSession> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceSession(o[0]);
  checkDeviceSession(o[1]);
}

core.int buildCounterListDeviceSessionsResponse = 0;
api.ListDeviceSessionsResponse buildListDeviceSessionsResponse() {
  final o = api.ListDeviceSessionsResponse();
  buildCounterListDeviceSessionsResponse++;
  if (buildCounterListDeviceSessionsResponse < 3) {
    o.deviceSessions = buildUnnamed48();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeviceSessionsResponse--;
  return o;
}

void checkListDeviceSessionsResponse(api.ListDeviceSessionsResponse o) {
  buildCounterListDeviceSessionsResponse++;
  if (buildCounterListDeviceSessionsResponse < 3) {
    checkUnnamed48(o.deviceSessions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDeviceSessionsResponse--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocale = 0;
api.Locale buildLocale() {
  final o = api.Locale();
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.region = 'foo';
    o.tags = buildUnnamed49();
  }
  buildCounterLocale--;
  return o;
}

void checkLocale(api.Locale o) {
  buildCounterLocale++;
  if (buildCounterLocale < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.region!, unittest.equals('foo'));
    checkUnnamed49(o.tags!);
  }
  buildCounterLocale--;
}

core.List<api.TestTargetsForShard> buildUnnamed50() => [
  buildTestTargetsForShard(),
  buildTestTargetsForShard(),
];

void checkUnnamed50(core.List<api.TestTargetsForShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestTargetsForShard(o[0]);
  checkTestTargetsForShard(o[1]);
}

core.int buildCounterManualSharding = 0;
api.ManualSharding buildManualSharding() {
  final o = api.ManualSharding();
  buildCounterManualSharding++;
  if (buildCounterManualSharding < 3) {
    o.testTargetsForShard = buildUnnamed50();
  }
  buildCounterManualSharding--;
  return o;
}

void checkManualSharding(api.ManualSharding o) {
  buildCounterManualSharding++;
  if (buildCounterManualSharding < 3) {
    checkUnnamed50(o.testTargetsForShard!);
  }
  buildCounterManualSharding--;
}

core.int buildCounterMatrixErrorDetail = 0;
api.MatrixErrorDetail buildMatrixErrorDetail() {
  final o = api.MatrixErrorDetail();
  buildCounterMatrixErrorDetail++;
  if (buildCounterMatrixErrorDetail < 3) {
    o.message = 'foo';
    o.reason = 'foo';
  }
  buildCounterMatrixErrorDetail--;
  return o;
}

void checkMatrixErrorDetail(api.MatrixErrorDetail o) {
  buildCounterMatrixErrorDetail++;
  if (buildCounterMatrixErrorDetail < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterMatrixErrorDetail--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterNetworkConfiguration = 0;
api.NetworkConfiguration buildNetworkConfiguration() {
  final o = api.NetworkConfiguration();
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
    checkTrafficRule(o.downRule!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkTrafficRule(o.upRule!);
  }
  buildCounterNetworkConfiguration--;
}

core.List<api.NetworkConfiguration> buildUnnamed51() => [
  buildNetworkConfiguration(),
  buildNetworkConfiguration(),
];

void checkUnnamed51(core.List<api.NetworkConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConfiguration(o[0]);
  checkNetworkConfiguration(o[1]);
}

core.int buildCounterNetworkConfigurationCatalog = 0;
api.NetworkConfigurationCatalog buildNetworkConfigurationCatalog() {
  final o = api.NetworkConfigurationCatalog();
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    o.configurations = buildUnnamed51();
  }
  buildCounterNetworkConfigurationCatalog--;
  return o;
}

void checkNetworkConfigurationCatalog(api.NetworkConfigurationCatalog o) {
  buildCounterNetworkConfigurationCatalog++;
  if (buildCounterNetworkConfigurationCatalog < 3) {
    checkUnnamed51(o.configurations!);
  }
  buildCounterNetworkConfigurationCatalog--;
}

core.int buildCounterNoActivityIntent = 0;
api.NoActivityIntent buildNoActivityIntent() {
  final o = api.NoActivityIntent();
  buildCounterNoActivityIntent++;
  if (buildCounterNoActivityIntent < 3) {}
  buildCounterNoActivityIntent--;
  return o;
}

void checkNoActivityIntent(api.NoActivityIntent o) {
  buildCounterNoActivityIntent++;
  if (buildCounterNoActivityIntent < 3) {}
  buildCounterNoActivityIntent--;
}

core.int buildCounterObbFile = 0;
api.ObbFile buildObbFile() {
  final o = api.ObbFile();
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
    checkFileReference(o.obb!);
    unittest.expect(o.obbFileName!, unittest.equals('foo'));
  }
  buildCounterObbFile--;
}

core.List<core.String> buildUnnamed52() => ['foo', 'foo'];

void checkUnnamed52(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrientation = 0;
api.Orientation buildOrientation() {
  final o = api.Orientation();
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.tags = buildUnnamed52();
  }
  buildCounterOrientation--;
  return o;
}

void checkOrientation(api.Orientation o) {
  buildCounterOrientation++;
  if (buildCounterOrientation < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed52(o.tags!);
  }
  buildCounterOrientation--;
}

core.int buildCounterPerAndroidVersionInfo = 0;
api.PerAndroidVersionInfo buildPerAndroidVersionInfo() {
  final o = api.PerAndroidVersionInfo();
  buildCounterPerAndroidVersionInfo++;
  if (buildCounterPerAndroidVersionInfo < 3) {
    o.deviceCapacity = 'foo';
    o.directAccessVersionInfo = buildDirectAccessVersionInfo();
    o.interactiveDeviceAvailabilityEstimate = 'foo';
    o.versionId = 'foo';
  }
  buildCounterPerAndroidVersionInfo--;
  return o;
}

void checkPerAndroidVersionInfo(api.PerAndroidVersionInfo o) {
  buildCounterPerAndroidVersionInfo++;
  if (buildCounterPerAndroidVersionInfo < 3) {
    unittest.expect(o.deviceCapacity!, unittest.equals('foo'));
    checkDirectAccessVersionInfo(o.directAccessVersionInfo!);
    unittest.expect(
      o.interactiveDeviceAvailabilityEstimate!,
      unittest.equals('foo'),
    );
    unittest.expect(o.versionId!, unittest.equals('foo'));
  }
  buildCounterPerAndroidVersionInfo--;
}

core.int buildCounterPerIosVersionInfo = 0;
api.PerIosVersionInfo buildPerIosVersionInfo() {
  final o = api.PerIosVersionInfo();
  buildCounterPerIosVersionInfo++;
  if (buildCounterPerIosVersionInfo < 3) {
    o.deviceCapacity = 'foo';
    o.versionId = 'foo';
  }
  buildCounterPerIosVersionInfo--;
  return o;
}

void checkPerIosVersionInfo(api.PerIosVersionInfo o) {
  buildCounterPerIosVersionInfo++;
  if (buildCounterPerIosVersionInfo < 3) {
    unittest.expect(o.deviceCapacity!, unittest.equals('foo'));
    unittest.expect(o.versionId!, unittest.equals('foo'));
  }
  buildCounterPerIosVersionInfo--;
}

core.int buildCounterProvidedSoftwareCatalog = 0;
api.ProvidedSoftwareCatalog buildProvidedSoftwareCatalog() {
  final o = api.ProvidedSoftwareCatalog();
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
    unittest.expect(o.androidxOrchestratorVersion!, unittest.equals('foo'));
    unittest.expect(o.orchestratorVersion!, unittest.equals('foo'));
  }
  buildCounterProvidedSoftwareCatalog--;
}

core.int buildCounterRegularFile = 0;
api.RegularFile buildRegularFile() {
  final o = api.RegularFile();
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
    checkFileReference(o.content!);
    unittest.expect(o.devicePath!, unittest.equals('foo'));
  }
  buildCounterRegularFile--;
}

core.int buildCounterResultStorage = 0;
api.ResultStorage buildResultStorage() {
  final o = api.ResultStorage();
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
    checkGoogleCloudStorage(o.googleCloudStorage!);
    unittest.expect(o.resultsUrl!, unittest.equals('foo'));
    checkToolResultsExecution(o.toolResultsExecution!);
    checkToolResultsHistory(o.toolResultsHistory!);
  }
  buildCounterResultStorage--;
}

core.int buildCounterRoboDirective = 0;
api.RoboDirective buildRoboDirective() {
  final o = api.RoboDirective();
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
    unittest.expect(o.actionType!, unittest.equals('foo'));
    unittest.expect(o.inputText!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterRoboDirective--;
}

core.int buildCounterRoboStartingIntent = 0;
api.RoboStartingIntent buildRoboStartingIntent() {
  final o = api.RoboStartingIntent();
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    o.launcherActivity = buildLauncherActivityIntent();
    o.noActivity = buildNoActivityIntent();
    o.startActivity = buildStartActivityIntent();
    o.timeout = 'foo';
  }
  buildCounterRoboStartingIntent--;
  return o;
}

void checkRoboStartingIntent(api.RoboStartingIntent o) {
  buildCounterRoboStartingIntent++;
  if (buildCounterRoboStartingIntent < 3) {
    checkLauncherActivityIntent(o.launcherActivity!);
    checkNoActivityIntent(o.noActivity!);
    checkStartActivityIntent(o.startActivity!);
    unittest.expect(o.timeout!, unittest.equals('foo'));
  }
  buildCounterRoboStartingIntent--;
}

core.List<api.IntentFilter> buildUnnamed53() => [
  buildIntentFilter(),
  buildIntentFilter(),
];

void checkUnnamed53(core.List<api.IntentFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIntentFilter(o[0]);
  checkIntentFilter(o[1]);
}

core.int buildCounterService = 0;
api.Service buildService() {
  final o = api.Service();
  buildCounterService++;
  if (buildCounterService < 3) {
    o.intentFilter = buildUnnamed53();
    o.name = 'foo';
  }
  buildCounterService--;
  return o;
}

void checkService(api.Service o) {
  buildCounterService++;
  if (buildCounterService < 3) {
    checkUnnamed53(o.intentFilter!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterService--;
}

core.int buildCounterSessionStateEvent = 0;
api.SessionStateEvent buildSessionStateEvent() {
  final o = api.SessionStateEvent();
  buildCounterSessionStateEvent++;
  if (buildCounterSessionStateEvent < 3) {
    o.eventTime = 'foo';
    o.sessionState = 'foo';
    o.stateMessage = 'foo';
  }
  buildCounterSessionStateEvent--;
  return o;
}

void checkSessionStateEvent(api.SessionStateEvent o) {
  buildCounterSessionStateEvent++;
  if (buildCounterSessionStateEvent < 3) {
    unittest.expect(o.eventTime!, unittest.equals('foo'));
    unittest.expect(o.sessionState!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
  }
  buildCounterSessionStateEvent--;
}

core.int buildCounterShard = 0;
api.Shard buildShard() {
  final o = api.Shard();
  buildCounterShard++;
  if (buildCounterShard < 3) {
    o.estimatedShardDuration = 'foo';
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
    unittest.expect(o.estimatedShardDuration!, unittest.equals('foo'));
    unittest.expect(o.numShards!, unittest.equals(42));
    unittest.expect(o.shardIndex!, unittest.equals(42));
    checkTestTargetsForShard(o.testTargetsForShard!);
  }
  buildCounterShard--;
}

core.int buildCounterShardingOption = 0;
api.ShardingOption buildShardingOption() {
  final o = api.ShardingOption();
  buildCounterShardingOption++;
  if (buildCounterShardingOption < 3) {
    o.manualSharding = buildManualSharding();
    o.smartSharding = buildSmartSharding();
    o.uniformSharding = buildUniformSharding();
  }
  buildCounterShardingOption--;
  return o;
}

void checkShardingOption(api.ShardingOption o) {
  buildCounterShardingOption++;
  if (buildCounterShardingOption < 3) {
    checkManualSharding(o.manualSharding!);
    checkSmartSharding(o.smartSharding!);
    checkUniformSharding(o.uniformSharding!);
  }
  buildCounterShardingOption--;
}

core.int buildCounterSmartSharding = 0;
api.SmartSharding buildSmartSharding() {
  final o = api.SmartSharding();
  buildCounterSmartSharding++;
  if (buildCounterSmartSharding < 3) {
    o.targetedShardDuration = 'foo';
  }
  buildCounterSmartSharding--;
  return o;
}

void checkSmartSharding(api.SmartSharding o) {
  buildCounterSmartSharding++;
  if (buildCounterSmartSharding < 3) {
    unittest.expect(o.targetedShardDuration!, unittest.equals('foo'));
  }
  buildCounterSmartSharding--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStartActivityIntent = 0;
api.StartActivityIntent buildStartActivityIntent() {
  final o = api.StartActivityIntent();
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    o.action = 'foo';
    o.categories = buildUnnamed54();
    o.uri = 'foo';
  }
  buildCounterStartActivityIntent--;
  return o;
}

void checkStartActivityIntent(api.StartActivityIntent o) {
  buildCounterStartActivityIntent++;
  if (buildCounterStartActivityIntent < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkUnnamed54(o.categories!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterStartActivityIntent--;
}

core.int buildCounterSystraceSetup = 0;
api.SystraceSetup buildSystraceSetup() {
  final o = api.SystraceSetup();
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
    unittest.expect(o.durationSeconds!, unittest.equals(42));
  }
  buildCounterSystraceSetup--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestDetails = 0;
api.TestDetails buildTestDetails() {
  final o = api.TestDetails();
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    o.errorMessage = 'foo';
    o.progressMessages = buildUnnamed55();
  }
  buildCounterTestDetails--;
  return o;
}

void checkTestDetails(api.TestDetails o) {
  buildCounterTestDetails++;
  if (buildCounterTestDetails < 3) {
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    checkUnnamed55(o.progressMessages!);
  }
  buildCounterTestDetails--;
}

core.int buildCounterTestEnvironmentCatalog = 0;
api.TestEnvironmentCatalog buildTestEnvironmentCatalog() {
  final o = api.TestEnvironmentCatalog();
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
    checkAndroidDeviceCatalog(o.androidDeviceCatalog!);
    checkDeviceIpBlockCatalog(o.deviceIpBlockCatalog!);
    checkIosDeviceCatalog(o.iosDeviceCatalog!);
    checkNetworkConfigurationCatalog(o.networkConfigurationCatalog!);
    checkProvidedSoftwareCatalog(o.softwareCatalog!);
  }
  buildCounterTestEnvironmentCatalog--;
}

core.int buildCounterTestExecution = 0;
api.TestExecution buildTestExecution() {
  final o = api.TestExecution();
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
    checkEnvironment(o.environment!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.matrixId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkShard(o.shard!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkTestDetails(o.testDetails!);
    checkTestSpecification(o.testSpecification!);
    unittest.expect(o.timestamp!, unittest.equals('foo'));
    checkToolResultsStep(o.toolResultsStep!);
  }
  buildCounterTestExecution--;
}

core.List<api.MatrixErrorDetail> buildUnnamed56() => [
  buildMatrixErrorDetail(),
  buildMatrixErrorDetail(),
];

void checkUnnamed56(core.List<api.MatrixErrorDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMatrixErrorDetail(o[0]);
  checkMatrixErrorDetail(o[1]);
}

core.List<api.TestExecution> buildUnnamed57() => [
  buildTestExecution(),
  buildTestExecution(),
];

void checkUnnamed57(core.List<api.TestExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTestExecution(o[0]);
  checkTestExecution(o[1]);
}

core.int buildCounterTestMatrix = 0;
api.TestMatrix buildTestMatrix() {
  final o = api.TestMatrix();
  buildCounterTestMatrix++;
  if (buildCounterTestMatrix < 3) {
    o.clientInfo = buildClientInfo();
    o.environmentMatrix = buildEnvironmentMatrix();
    o.extendedInvalidMatrixDetails = buildUnnamed56();
    o.failFast = true;
    o.flakyTestAttempts = 42;
    o.invalidMatrixDetails = 'foo';
    o.outcomeSummary = 'foo';
    o.projectId = 'foo';
    o.resultStorage = buildResultStorage();
    o.state = 'foo';
    o.testExecutions = buildUnnamed57();
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
    checkClientInfo(o.clientInfo!);
    checkEnvironmentMatrix(o.environmentMatrix!);
    checkUnnamed56(o.extendedInvalidMatrixDetails!);
    unittest.expect(o.failFast!, unittest.isTrue);
    unittest.expect(o.flakyTestAttempts!, unittest.equals(42));
    unittest.expect(o.invalidMatrixDetails!, unittest.equals('foo'));
    unittest.expect(o.outcomeSummary!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkResultStorage(o.resultStorage!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed57(o.testExecutions!);
    unittest.expect(o.testMatrixId!, unittest.equals('foo'));
    checkTestSpecification(o.testSpecification!);
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterTestMatrix--;
}

core.List<api.Apk> buildUnnamed58() => [buildApk(), buildApk()];

void checkUnnamed58(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EnvironmentVariable> buildUnnamed60() => [
  buildEnvironmentVariable(),
  buildEnvironmentVariable(),
];

void checkUnnamed60(core.List<api.EnvironmentVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironmentVariable(o[0]);
  checkEnvironmentVariable(o[1]);
}

core.List<api.DeviceFile> buildUnnamed61() => [
  buildDeviceFile(),
  buildDeviceFile(),
];

void checkUnnamed61(core.List<api.DeviceFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceFile(o[0]);
  checkDeviceFile(o[1]);
}

core.List<api.Apk> buildUnnamed62() => [buildApk(), buildApk()];

void checkUnnamed62(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterTestSetup = 0;
api.TestSetup buildTestSetup() {
  final o = api.TestSetup();
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    o.account = buildAccount();
    o.additionalApks = buildUnnamed58();
    o.directoriesToPull = buildUnnamed59();
    o.dontAutograntPermissions = true;
    o.environmentVariables = buildUnnamed60();
    o.filesToPush = buildUnnamed61();
    o.initialSetupApks = buildUnnamed62();
    o.networkProfile = 'foo';
    o.systrace = buildSystraceSetup();
  }
  buildCounterTestSetup--;
  return o;
}

void checkTestSetup(api.TestSetup o) {
  buildCounterTestSetup++;
  if (buildCounterTestSetup < 3) {
    checkAccount(o.account!);
    checkUnnamed58(o.additionalApks!);
    checkUnnamed59(o.directoriesToPull!);
    unittest.expect(o.dontAutograntPermissions!, unittest.isTrue);
    checkUnnamed60(o.environmentVariables!);
    checkUnnamed61(o.filesToPush!);
    checkUnnamed62(o.initialSetupApks!);
    unittest.expect(o.networkProfile!, unittest.equals('foo'));
    checkSystraceSetup(o.systrace!);
  }
  buildCounterTestSetup--;
}

core.int buildCounterTestSpecification = 0;
api.TestSpecification buildTestSpecification() {
  final o = api.TestSpecification();
  buildCounterTestSpecification++;
  if (buildCounterTestSpecification < 3) {
    o.androidInstrumentationTest = buildAndroidInstrumentationTest();
    o.androidRoboTest = buildAndroidRoboTest();
    o.androidTestLoop = buildAndroidTestLoop();
    o.disablePerformanceMetrics = true;
    o.disableVideoRecording = true;
    o.iosRoboTest = buildIosRoboTest();
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
    checkAndroidInstrumentationTest(o.androidInstrumentationTest!);
    checkAndroidRoboTest(o.androidRoboTest!);
    checkAndroidTestLoop(o.androidTestLoop!);
    unittest.expect(o.disablePerformanceMetrics!, unittest.isTrue);
    unittest.expect(o.disableVideoRecording!, unittest.isTrue);
    checkIosRoboTest(o.iosRoboTest!);
    checkIosTestLoop(o.iosTestLoop!);
    checkIosTestSetup(o.iosTestSetup!);
    checkIosXcTest(o.iosXcTest!);
    checkTestSetup(o.testSetup!);
    unittest.expect(o.testTimeout!, unittest.equals('foo'));
  }
  buildCounterTestSpecification--;
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestTargetsForShard = 0;
api.TestTargetsForShard buildTestTargetsForShard() {
  final o = api.TestTargetsForShard();
  buildCounterTestTargetsForShard++;
  if (buildCounterTestTargetsForShard < 3) {
    o.testTargets = buildUnnamed63();
  }
  buildCounterTestTargetsForShard--;
  return o;
}

void checkTestTargetsForShard(api.TestTargetsForShard o) {
  buildCounterTestTargetsForShard++;
  if (buildCounterTestTargetsForShard < 3) {
    checkUnnamed63(o.testTargets!);
  }
  buildCounterTestTargetsForShard--;
}

core.int buildCounterToolResultsExecution = 0;
api.ToolResultsExecution buildToolResultsExecution() {
  final o = api.ToolResultsExecution();
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
    unittest.expect(o.executionId!, unittest.equals('foo'));
    unittest.expect(o.historyId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterToolResultsExecution--;
}

core.int buildCounterToolResultsHistory = 0;
api.ToolResultsHistory buildToolResultsHistory() {
  final o = api.ToolResultsHistory();
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
    unittest.expect(o.historyId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterToolResultsHistory--;
}

core.int buildCounterToolResultsStep = 0;
api.ToolResultsStep buildToolResultsStep() {
  final o = api.ToolResultsStep();
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
    unittest.expect(o.executionId!, unittest.equals('foo'));
    unittest.expect(o.historyId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
    unittest.expect(o.stepId!, unittest.equals('foo'));
  }
  buildCounterToolResultsStep--;
}

core.int buildCounterTrafficRule = 0;
api.TrafficRule buildTrafficRule() {
  final o = api.TrafficRule();
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
    unittest.expect(o.bandwidth!, unittest.equals(42.0));
    unittest.expect(o.burst!, unittest.equals(42.0));
    unittest.expect(o.delay!, unittest.equals('foo'));
    unittest.expect(o.packetDuplicationRatio!, unittest.equals(42.0));
    unittest.expect(o.packetLossRatio!, unittest.equals(42.0));
  }
  buildCounterTrafficRule--;
}

core.int buildCounterUniformSharding = 0;
api.UniformSharding buildUniformSharding() {
  final o = api.UniformSharding();
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
    unittest.expect(o.numShards!, unittest.equals(42));
  }
  buildCounterUniformSharding--;
}

core.int buildCounterUsesFeature = 0;
api.UsesFeature buildUsesFeature() {
  final o = api.UsesFeature();
  buildCounterUsesFeature++;
  if (buildCounterUsesFeature < 3) {
    o.isRequired = true;
    o.name = 'foo';
  }
  buildCounterUsesFeature--;
  return o;
}

void checkUsesFeature(api.UsesFeature o) {
  buildCounterUsesFeature++;
  if (buildCounterUsesFeature < 3) {
    unittest.expect(o.isRequired!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterUsesFeature--;
}

core.int buildCounterUsesPermissionTag = 0;
api.UsesPermissionTag buildUsesPermissionTag() {
  final o = api.UsesPermissionTag();
  buildCounterUsesPermissionTag++;
  if (buildCounterUsesPermissionTag < 3) {
    o.maxSdkVersion = 42;
    o.name = 'foo';
  }
  buildCounterUsesPermissionTag--;
  return o;
}

void checkUsesPermissionTag(api.UsesPermissionTag o) {
  buildCounterUsesPermissionTag++;
  if (buildCounterUsesPermissionTag < 3) {
    unittest.expect(o.maxSdkVersion!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterUsesPermissionTag--;
}

core.List<core.String> buildUnnamed64() => ['foo', 'foo'];

void checkUnnamed64(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterXcodeVersion = 0;
api.XcodeVersion buildXcodeVersion() {
  final o = api.XcodeVersion();
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    o.tags = buildUnnamed64();
    o.version = 'foo';
  }
  buildCounterXcodeVersion--;
  return o;
}

void checkXcodeVersion(api.XcodeVersion o) {
  buildCounterXcodeVersion++;
  if (buildCounterXcodeVersion < 3) {
    checkUnnamed64(o.tags!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterXcodeVersion--;
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Account.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AndroidDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidDevice(od);
    });
  });

  unittest.group('obj-schema-AndroidDeviceCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidDeviceCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidDeviceCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidDeviceCatalog(od);
    });
  });

  unittest.group('obj-schema-AndroidDeviceList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidDeviceList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidDeviceList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidDeviceList(od);
    });
  });

  unittest.group('obj-schema-AndroidInstrumentationTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidInstrumentationTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidInstrumentationTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidInstrumentationTest(od);
    });
  });

  unittest.group('obj-schema-AndroidMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidMatrix.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidMatrix(od);
    });
  });

  unittest.group('obj-schema-AndroidModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidModel(od);
    });
  });

  unittest.group('obj-schema-AndroidRoboTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidRoboTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidRoboTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidRoboTest(od);
    });
  });

  unittest.group('obj-schema-AndroidRuntimeConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidRuntimeConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidRuntimeConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidRuntimeConfiguration(od);
    });
  });

  unittest.group('obj-schema-AndroidTestLoop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidTestLoop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidTestLoop.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidTestLoop(od);
    });
  });

  unittest.group('obj-schema-AndroidVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidVersion(od);
    });
  });

  unittest.group('obj-schema-Apk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Apk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApk(od);
    });
  });

  unittest.group('obj-schema-ApkDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApkDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApkDetail(od);
    });
  });

  unittest.group('obj-schema-ApkManifest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkManifest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApkManifest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApkManifest(od);
    });
  });

  unittest.group('obj-schema-ApkSplits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkSplits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApkSplits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApkSplits(od);
    });
  });

  unittest.group('obj-schema-AppBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppBundle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppBundle(od);
    });
  });

  unittest.group('obj-schema-CancelDeviceSessionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelDeviceSessionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelDeviceSessionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelDeviceSessionRequest(od);
    });
  });

  unittest.group('obj-schema-CancelTestMatrixResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelTestMatrixResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelTestMatrixResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelTestMatrixResponse(od);
    });
  });

  unittest.group('obj-schema-ClientInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientInfo(od);
    });
  });

  unittest.group('obj-schema-ClientInfoDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientInfoDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientInfoDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientInfoDetail(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DeviceFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceFile(od);
    });
  });

  unittest.group('obj-schema-DeviceIpBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceIpBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceIpBlock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceIpBlock(od);
    });
  });

  unittest.group('obj-schema-DeviceIpBlockCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceIpBlockCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceIpBlockCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceIpBlockCatalog(od);
    });
  });

  unittest.group('obj-schema-DeviceSession', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceSession.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceSession(od);
    });
  });

  unittest.group('obj-schema-DirectAccessVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDirectAccessVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DirectAccessVersionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDirectAccessVersionInfo(od);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDistribution(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-EnvironmentMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentMatrix.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentMatrix(od);
    });
  });

  unittest.group('obj-schema-EnvironmentVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentVariable(od);
    });
  });

  unittest.group('obj-schema-FileReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileReference(od);
    });
  });

  unittest.group('obj-schema-GetApkDetailsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetApkDetailsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetApkDetailsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetApkDetailsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAuto', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAuto();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAuto.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAuto(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudStorage(od);
    });
  });

  unittest.group('obj-schema-IntentFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntentFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntentFilter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIntentFilter(od);
    });
  });

  unittest.group('obj-schema-IosDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosDevice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosDevice(od);
    });
  });

  unittest.group('obj-schema-IosDeviceCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosDeviceCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosDeviceCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosDeviceCatalog(od);
    });
  });

  unittest.group('obj-schema-IosDeviceFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosDeviceFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosDeviceFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosDeviceFile(od);
    });
  });

  unittest.group('obj-schema-IosDeviceList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosDeviceList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosDeviceList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosDeviceList(od);
    });
  });

  unittest.group('obj-schema-IosModel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosModel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosModel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosModel(od);
    });
  });

  unittest.group('obj-schema-IosRoboTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosRoboTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosRoboTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosRoboTest(od);
    });
  });

  unittest.group('obj-schema-IosRuntimeConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosRuntimeConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosRuntimeConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosRuntimeConfiguration(od);
    });
  });

  unittest.group('obj-schema-IosTestLoop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosTestLoop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosTestLoop.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosTestLoop(od);
    });
  });

  unittest.group('obj-schema-IosTestSetup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosTestSetup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosTestSetup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosTestSetup(od);
    });
  });

  unittest.group('obj-schema-IosVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosVersion(od);
    });
  });

  unittest.group('obj-schema-IosXcTest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIosXcTest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IosXcTest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIosXcTest(od);
    });
  });

  unittest.group('obj-schema-LabInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabInfo(od);
    });
  });

  unittest.group('obj-schema-LauncherActivityIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLauncherActivityIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LauncherActivityIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLauncherActivityIntent(od);
    });
  });

  unittest.group('obj-schema-ListDeviceSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceSessionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeviceSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-Locale', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocale();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Locale.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocale(od);
    });
  });

  unittest.group('obj-schema-ManualSharding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManualSharding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManualSharding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManualSharding(od);
    });
  });

  unittest.group('obj-schema-MatrixErrorDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMatrixErrorDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MatrixErrorDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMatrixErrorDetail(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Metadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-NetworkConfiguration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfiguration.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfiguration(od);
    });
  });

  unittest.group('obj-schema-NetworkConfigurationCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfigurationCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfigurationCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConfigurationCatalog(od);
    });
  });

  unittest.group('obj-schema-NoActivityIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNoActivityIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NoActivityIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNoActivityIntent(od);
    });
  });

  unittest.group('obj-schema-ObbFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObbFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObbFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObbFile(od);
    });
  });

  unittest.group('obj-schema-Orientation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrientation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Orientation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrientation(od);
    });
  });

  unittest.group('obj-schema-PerAndroidVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerAndroidVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerAndroidVersionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerAndroidVersionInfo(od);
    });
  });

  unittest.group('obj-schema-PerIosVersionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerIosVersionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerIosVersionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerIosVersionInfo(od);
    });
  });

  unittest.group('obj-schema-ProvidedSoftwareCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvidedSoftwareCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvidedSoftwareCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvidedSoftwareCatalog(od);
    });
  });

  unittest.group('obj-schema-RegularFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegularFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegularFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegularFile(od);
    });
  });

  unittest.group('obj-schema-ResultStorage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResultStorage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResultStorage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResultStorage(od);
    });
  });

  unittest.group('obj-schema-RoboDirective', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoboDirective();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoboDirective.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRoboDirective(od);
    });
  });

  unittest.group('obj-schema-RoboStartingIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoboStartingIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoboStartingIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRoboStartingIntent(od);
    });
  });

  unittest.group('obj-schema-Service', () {
    unittest.test('to-json--from-json', () async {
      final o = buildService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Service.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkService(od);
    });
  });

  unittest.group('obj-schema-SessionStateEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionStateEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionStateEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionStateEvent(od);
    });
  });

  unittest.group('obj-schema-Shard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Shard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShard(od);
    });
  });

  unittest.group('obj-schema-ShardingOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShardingOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShardingOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShardingOption(od);
    });
  });

  unittest.group('obj-schema-SmartSharding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSmartSharding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SmartSharding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSmartSharding(od);
    });
  });

  unittest.group('obj-schema-StartActivityIntent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartActivityIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartActivityIntent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartActivityIntent(od);
    });
  });

  unittest.group('obj-schema-SystraceSetup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystraceSetup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystraceSetup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSystraceSetup(od);
    });
  });

  unittest.group('obj-schema-TestDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestDetails(od);
    });
  });

  unittest.group('obj-schema-TestEnvironmentCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestEnvironmentCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestEnvironmentCatalog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestEnvironmentCatalog(od);
    });
  });

  unittest.group('obj-schema-TestExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestExecution(od);
    });
  });

  unittest.group('obj-schema-TestMatrix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestMatrix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestMatrix.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestMatrix(od);
    });
  });

  unittest.group('obj-schema-TestSetup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestSetup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestSetup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestSetup(od);
    });
  });

  unittest.group('obj-schema-TestSpecification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestSpecification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestSpecification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestSpecification(od);
    });
  });

  unittest.group('obj-schema-TestTargetsForShard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestTargetsForShard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestTargetsForShard.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestTargetsForShard(od);
    });
  });

  unittest.group('obj-schema-ToolResultsExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolResultsExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolResultsExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolResultsExecution(od);
    });
  });

  unittest.group('obj-schema-ToolResultsHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolResultsHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolResultsHistory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolResultsHistory(od);
    });
  });

  unittest.group('obj-schema-ToolResultsStep', () {
    unittest.test('to-json--from-json', () async {
      final o = buildToolResultsStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ToolResultsStep.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkToolResultsStep(od);
    });
  });

  unittest.group('obj-schema-TrafficRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrafficRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrafficRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrafficRule(od);
    });
  });

  unittest.group('obj-schema-UniformSharding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUniformSharding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UniformSharding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUniformSharding(od);
    });
  });

  unittest.group('obj-schema-UsesFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsesFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsesFeature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsesFeature(od);
    });
  });

  unittest.group('obj-schema-UsesPermissionTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsesPermissionTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsesPermissionTag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsesPermissionTag(od);
    });
  });

  unittest.group('obj-schema-XcodeVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildXcodeVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.XcodeVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkXcodeVersion(od);
    });
  });

  unittest.group('resource-ApplicationDetailServiceResource', () {
    unittest.test('method--getApkDetails', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).applicationDetailService;
      final arg_request = buildFileReference();
      final arg_bundleLocation_gcsPath = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FileReference.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFileReference(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 41),
            unittest.equals('v1/applicationDetailService/getApkDetails'),
          );
          pathOffset += 41;

          final query = req.url.query;
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
            queryMap['bundleLocation.gcsPath']!.first,
            unittest.equals(arg_bundleLocation_gcsPath),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGetApkDetailsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getApkDetails(
        arg_request,
        bundleLocation_gcsPath: arg_bundleLocation_gcsPath,
        $fields: arg_$fields,
      );
      checkGetApkDetailsResponse(response as api.GetApkDetailsResponse);
    });
  });

  unittest.group('resource-ProjectsDeviceSessionsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.deviceSessions;
      final arg_request = buildCancelDeviceSessionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelDeviceSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelDeviceSessionRequest(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.deviceSessions;
      final arg_request = buildDeviceSession();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeviceSession.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeviceSession(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeviceSession());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkDeviceSession(response as api.DeviceSession);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.deviceSessions;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeviceSession());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDeviceSession(response as api.DeviceSession);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.deviceSessions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDeviceSessionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeviceSessionsResponse(
        response as api.ListDeviceSessionsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.deviceSessions;
      final arg_request = buildDeviceSession();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DeviceSession.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDeviceSession(obj);

          final path = req.url.path;
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

          final query = req.url.query;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeviceSession());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkDeviceSession(response as api.DeviceSession);
    });
  });

  unittest.group('resource-ProjectsTestMatricesResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.testMatrices;
      final arg_projectId = 'foo';
      final arg_testMatrixId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/testMatrices/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/testMatrices/'),
          );
          pathOffset += 14;
          index = path.indexOf(':cancel', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_testMatrixId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals(':cancel'),
          );
          pathOffset += 7;

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCancelTestMatrixResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_projectId,
        arg_testMatrixId,
        $fields: arg_$fields,
      );
      checkCancelTestMatrixResponse(response as api.CancelTestMatrixResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.testMatrices;
      final arg_request = buildTestMatrix();
      final arg_projectId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestMatrix.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestMatrix(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/testMatrices', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('/testMatrices'),
          );
          pathOffset += 13;

          final query = req.url.query;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestMatrix());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_projectId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkTestMatrix(response as api.TestMatrix);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).projects.testMatrices;
      final arg_projectId = 'foo';
      final arg_testMatrixId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/testMatrices/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/testMatrices/'),
          );
          pathOffset += 14;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_testMatrixId'));

          final query = req.url.query;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestMatrix());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_projectId,
        arg_testMatrixId,
        $fields: arg_$fields,
      );
      checkTestMatrix(response as api.TestMatrix);
    });
  });

  unittest.group('resource-TestEnvironmentCatalogResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.TestingApi(mock).testEnvironmentCatalog;
      final arg_environmentType = 'foo';
      final arg_includeViewableModels = true;
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final path = req.url.path;
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
            unittest.equals('v1/testEnvironmentCatalog/'),
          );
          pathOffset += 26;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_environmentType'));

          final query = req.url.query;
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
            queryMap['includeViewableModels']!.first,
            unittest.equals('$arg_includeViewableModels'),
          );
          unittest.expect(
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestEnvironmentCatalog());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_environmentType,
        includeViewableModels: arg_includeViewableModels,
        projectId: arg_projectId,
        $fields: arg_$fields,
      );
      checkTestEnvironmentCatalog(response as api.TestEnvironmentCatalog);
    });
  });
}
