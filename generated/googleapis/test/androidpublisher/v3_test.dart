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

import 'package:googleapis/androidpublisher/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterApk = 0;
api.Apk buildApk() {
  final o = api.Apk();
  buildCounterApk++;
  if (buildCounterApk < 3) {
    o.binary = buildApkBinary();
    o.versionCode = 42;
  }
  buildCounterApk--;
  return o;
}

void checkApk(api.Apk o) {
  buildCounterApk++;
  if (buildCounterApk < 3) {
    checkApkBinary(o.binary!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
  }
  buildCounterApk--;
}

core.int buildCounterApkBinary = 0;
api.ApkBinary buildApkBinary() {
  final o = api.ApkBinary();
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    o.sha1 = 'foo';
    o.sha256 = 'foo';
  }
  buildCounterApkBinary--;
  return o;
}

void checkApkBinary(api.ApkBinary o) {
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterApkBinary--;
}

core.int buildCounterApksAddExternallyHostedRequest = 0;
api.ApksAddExternallyHostedRequest buildApksAddExternallyHostedRequest() {
  final o = api.ApksAddExternallyHostedRequest();
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedRequest--;
  return o;
}

void checkApksAddExternallyHostedRequest(api.ApksAddExternallyHostedRequest o) {
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    checkExternallyHostedApk(o.externallyHostedApk!);
  }
  buildCounterApksAddExternallyHostedRequest--;
}

core.int buildCounterApksAddExternallyHostedResponse = 0;
api.ApksAddExternallyHostedResponse buildApksAddExternallyHostedResponse() {
  final o = api.ApksAddExternallyHostedResponse();
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedResponse--;
  return o;
}

void checkApksAddExternallyHostedResponse(
    api.ApksAddExternallyHostedResponse o) {
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    checkExternallyHostedApk(o.externallyHostedApk!);
  }
  buildCounterApksAddExternallyHostedResponse--;
}

core.List<api.Apk> buildUnnamed0() => [
      buildApk(),
      buildApk(),
    ];

void checkUnnamed0(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterApksListResponse = 0;
api.ApksListResponse buildApksListResponse() {
  final o = api.ApksListResponse();
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    o.apks = buildUnnamed0();
    o.kind = 'foo';
  }
  buildCounterApksListResponse--;
  return o;
}

void checkApksListResponse(api.ApksListResponse o) {
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    checkUnnamed0(o.apks!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterApksListResponse--;
}

core.int buildCounterAppDetails = 0;
api.AppDetails buildAppDetails() {
  final o = api.AppDetails();
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    o.contactEmail = 'foo';
    o.contactPhone = 'foo';
    o.contactWebsite = 'foo';
    o.defaultLanguage = 'foo';
  }
  buildCounterAppDetails--;
  return o;
}

void checkAppDetails(api.AppDetails o) {
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactWebsite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppDetails--;
}

core.int buildCounterAppEdit = 0;
api.AppEdit buildAppEdit() {
  final o = api.AppEdit();
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    o.expiryTimeSeconds = 'foo';
    o.id = 'foo';
  }
  buildCounterAppEdit--;
  return o;
}

void checkAppEdit(api.AppEdit o) {
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    unittest.expect(
      o.expiryTimeSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEdit--;
}

core.int buildCounterBundle = 0;
api.Bundle buildBundle() {
  final o = api.Bundle();
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    o.sha1 = 'foo';
    o.sha256 = 'foo';
    o.versionCode = 42;
  }
  buildCounterBundle--;
  return o;
}

void checkBundle(api.Bundle o) {
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
  }
  buildCounterBundle--;
}

core.List<api.Bundle> buildUnnamed1() => [
      buildBundle(),
      buildBundle(),
    ];

void checkUnnamed1(core.List<api.Bundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBundle(o[0]);
  checkBundle(o[1]);
}

core.int buildCounterBundlesListResponse = 0;
api.BundlesListResponse buildBundlesListResponse() {
  final o = api.BundlesListResponse();
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    o.bundles = buildUnnamed1();
    o.kind = 'foo';
  }
  buildCounterBundlesListResponse--;
  return o;
}

void checkBundlesListResponse(api.BundlesListResponse o) {
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    checkUnnamed1(o.bundles!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBundlesListResponse--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.developerComment = buildDeveloperComment();
    o.userComment = buildUserComment();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkDeveloperComment(o.developerComment!);
    checkUserComment(o.userComment!);
  }
  buildCounterComment--;
}

core.int buildCounterConvertRegionPricesRequest = 0;
api.ConvertRegionPricesRequest buildConvertRegionPricesRequest() {
  final o = api.ConvertRegionPricesRequest();
  buildCounterConvertRegionPricesRequest++;
  if (buildCounterConvertRegionPricesRequest < 3) {
    o.price = buildMoney();
  }
  buildCounterConvertRegionPricesRequest--;
  return o;
}

void checkConvertRegionPricesRequest(api.ConvertRegionPricesRequest o) {
  buildCounterConvertRegionPricesRequest++;
  if (buildCounterConvertRegionPricesRequest < 3) {
    checkMoney(o.price!);
  }
  buildCounterConvertRegionPricesRequest--;
}

core.Map<core.String, api.ConvertedRegionPrice> buildUnnamed2() => {
      'x': buildConvertedRegionPrice(),
      'y': buildConvertedRegionPrice(),
    };

void checkUnnamed2(core.Map<core.String, api.ConvertedRegionPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConvertedRegionPrice(o['x']!);
  checkConvertedRegionPrice(o['y']!);
}

core.int buildCounterConvertRegionPricesResponse = 0;
api.ConvertRegionPricesResponse buildConvertRegionPricesResponse() {
  final o = api.ConvertRegionPricesResponse();
  buildCounterConvertRegionPricesResponse++;
  if (buildCounterConvertRegionPricesResponse < 3) {
    o.convertedOtherRegionsPrice = buildConvertedOtherRegionsPrice();
    o.convertedRegionPrices = buildUnnamed2();
  }
  buildCounterConvertRegionPricesResponse--;
  return o;
}

void checkConvertRegionPricesResponse(api.ConvertRegionPricesResponse o) {
  buildCounterConvertRegionPricesResponse++;
  if (buildCounterConvertRegionPricesResponse < 3) {
    checkConvertedOtherRegionsPrice(o.convertedOtherRegionsPrice!);
    checkUnnamed2(o.convertedRegionPrices!);
  }
  buildCounterConvertRegionPricesResponse--;
}

core.int buildCounterConvertedOtherRegionsPrice = 0;
api.ConvertedOtherRegionsPrice buildConvertedOtherRegionsPrice() {
  final o = api.ConvertedOtherRegionsPrice();
  buildCounterConvertedOtherRegionsPrice++;
  if (buildCounterConvertedOtherRegionsPrice < 3) {
    o.eurPrice = buildMoney();
    o.usdPrice = buildMoney();
  }
  buildCounterConvertedOtherRegionsPrice--;
  return o;
}

void checkConvertedOtherRegionsPrice(api.ConvertedOtherRegionsPrice o) {
  buildCounterConvertedOtherRegionsPrice++;
  if (buildCounterConvertedOtherRegionsPrice < 3) {
    checkMoney(o.eurPrice!);
    checkMoney(o.usdPrice!);
  }
  buildCounterConvertedOtherRegionsPrice--;
}

core.int buildCounterConvertedRegionPrice = 0;
api.ConvertedRegionPrice buildConvertedRegionPrice() {
  final o = api.ConvertedRegionPrice();
  buildCounterConvertedRegionPrice++;
  if (buildCounterConvertedRegionPrice < 3) {
    o.price = buildMoney();
    o.regionCode = 'foo';
    o.taxAmount = buildMoney();
  }
  buildCounterConvertedRegionPrice--;
  return o;
}

void checkConvertedRegionPrice(api.ConvertedRegionPrice o) {
  buildCounterConvertedRegionPrice++;
  if (buildCounterConvertedRegionPrice < 3) {
    checkMoney(o.price!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    checkMoney(o.taxAmount!);
  }
  buildCounterConvertedRegionPrice--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterCountryTargeting = 0;
api.CountryTargeting buildCountryTargeting() {
  final o = api.CountryTargeting();
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    o.countries = buildUnnamed3();
    o.includeRestOfWorld = true;
  }
  buildCounterCountryTargeting--;
  return o;
}

void checkCountryTargeting(api.CountryTargeting o) {
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    checkUnnamed3(o.countries!);
    unittest.expect(o.includeRestOfWorld!, unittest.isTrue);
  }
  buildCounterCountryTargeting--;
}

core.int buildCounterDeobfuscationFile = 0;
api.DeobfuscationFile buildDeobfuscationFile() {
  final o = api.DeobfuscationFile();
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    o.symbolType = 'foo';
  }
  buildCounterDeobfuscationFile--;
  return o;
}

void checkDeobfuscationFile(api.DeobfuscationFile o) {
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    unittest.expect(
      o.symbolType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeobfuscationFile--;
}

core.int buildCounterDeobfuscationFilesUploadResponse = 0;
api.DeobfuscationFilesUploadResponse buildDeobfuscationFilesUploadResponse() {
  final o = api.DeobfuscationFilesUploadResponse();
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    o.deobfuscationFile = buildDeobfuscationFile();
  }
  buildCounterDeobfuscationFilesUploadResponse--;
  return o;
}

void checkDeobfuscationFilesUploadResponse(
    api.DeobfuscationFilesUploadResponse o) {
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    checkDeobfuscationFile(o.deobfuscationFile!);
  }
  buildCounterDeobfuscationFilesUploadResponse--;
}

core.int buildCounterDeveloperComment = 0;
api.DeveloperComment buildDeveloperComment() {
  final o = api.DeveloperComment();
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    o.lastModified = buildTimestamp();
    o.text = 'foo';
  }
  buildCounterDeveloperComment--;
  return o;
}

void checkDeveloperComment(api.DeveloperComment o) {
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    checkTimestamp(o.lastModified!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeveloperComment--;
}

core.int buildCounterDeviceMetadata = 0;
api.DeviceMetadata buildDeviceMetadata() {
  final o = api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.cpuMake = 'foo';
    o.cpuModel = 'foo';
    o.deviceClass = 'foo';
    o.glEsVersion = 42;
    o.manufacturer = 'foo';
    o.nativePlatform = 'foo';
    o.productName = 'foo';
    o.ramMb = 42;
    o.screenDensityDpi = 42;
    o.screenHeightPx = 42;
    o.screenWidthPx = 42;
  }
  buildCounterDeviceMetadata--;
  return o;
}

void checkDeviceMetadata(api.DeviceMetadata o) {
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    unittest.expect(
      o.cpuMake!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.glEsVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nativePlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ramMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenDensityDpi!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenHeightPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenWidthPx!,
      unittest.equals(42),
    );
  }
  buildCounterDeviceMetadata--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterDeviceSpec = 0;
api.DeviceSpec buildDeviceSpec() {
  final o = api.DeviceSpec();
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    o.screenDensity = 42;
    o.supportedAbis = buildUnnamed4();
    o.supportedLocales = buildUnnamed5();
  }
  buildCounterDeviceSpec--;
  return o;
}

void checkDeviceSpec(api.DeviceSpec o) {
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    unittest.expect(
      o.screenDensity!,
      unittest.equals(42),
    );
    checkUnnamed4(o.supportedAbis!);
    checkUnnamed5(o.supportedLocales!);
  }
  buildCounterDeviceSpec--;
}

core.int buildCounterExpansionFile = 0;
api.ExpansionFile buildExpansionFile() {
  final o = api.ExpansionFile();
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    o.fileSize = 'foo';
    o.referencesVersion = 42;
  }
  buildCounterExpansionFile--;
  return o;
}

void checkExpansionFile(api.ExpansionFile o) {
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referencesVersion!,
      unittest.equals(42),
    );
  }
  buildCounterExpansionFile--;
}

core.int buildCounterExpansionFilesUploadResponse = 0;
api.ExpansionFilesUploadResponse buildExpansionFilesUploadResponse() {
  final o = api.ExpansionFilesUploadResponse();
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    o.expansionFile = buildExpansionFile();
  }
  buildCounterExpansionFilesUploadResponse--;
  return o;
}

void checkExpansionFilesUploadResponse(api.ExpansionFilesUploadResponse o) {
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    checkExpansionFile(o.expansionFile!);
  }
  buildCounterExpansionFilesUploadResponse--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<api.UsesPermission> buildUnnamed9() => [
      buildUsesPermission(),
      buildUsesPermission(),
    ];

void checkUnnamed9(core.List<api.UsesPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsesPermission(o[0]);
  checkUsesPermission(o[1]);
}

core.int buildCounterExternallyHostedApk = 0;
api.ExternallyHostedApk buildExternallyHostedApk() {
  final o = api.ExternallyHostedApk();
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    o.applicationLabel = 'foo';
    o.certificateBase64s = buildUnnamed6();
    o.externallyHostedUrl = 'foo';
    o.fileSha1Base64 = 'foo';
    o.fileSha256Base64 = 'foo';
    o.fileSize = 'foo';
    o.iconBase64 = 'foo';
    o.maximumSdk = 42;
    o.minimumSdk = 42;
    o.nativeCodes = buildUnnamed7();
    o.packageName = 'foo';
    o.usesFeatures = buildUnnamed8();
    o.usesPermissions = buildUnnamed9();
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterExternallyHostedApk--;
  return o;
}

void checkExternallyHostedApk(api.ExternallyHostedApk o) {
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    unittest.expect(
      o.applicationLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.certificateBase64s!);
    unittest.expect(
      o.externallyHostedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSha1Base64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSha256Base64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconBase64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumSdk!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minimumSdk!,
      unittest.equals(42),
    );
    checkUnnamed7(o.nativeCodes!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.usesFeatures!);
    checkUnnamed9(o.usesPermissions!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternallyHostedApk--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.id = 'foo';
    o.sha1 = 'foo';
    o.sha256 = 'foo';
    o.url = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.List<api.Image> buildUnnamed10() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed10(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesDeleteAllResponse = 0;
api.ImagesDeleteAllResponse buildImagesDeleteAllResponse() {
  final o = api.ImagesDeleteAllResponse();
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    o.deleted = buildUnnamed10();
  }
  buildCounterImagesDeleteAllResponse--;
  return o;
}

void checkImagesDeleteAllResponse(api.ImagesDeleteAllResponse o) {
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    checkUnnamed10(o.deleted!);
  }
  buildCounterImagesDeleteAllResponse--;
}

core.List<api.Image> buildUnnamed11() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed11(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesListResponse = 0;
api.ImagesListResponse buildImagesListResponse() {
  final o = api.ImagesListResponse();
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    o.images = buildUnnamed11();
  }
  buildCounterImagesListResponse--;
  return o;
}

void checkImagesListResponse(api.ImagesListResponse o) {
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    checkUnnamed11(o.images!);
  }
  buildCounterImagesListResponse--;
}

core.int buildCounterImagesUploadResponse = 0;
api.ImagesUploadResponse buildImagesUploadResponse() {
  final o = api.ImagesUploadResponse();
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    o.image = buildImage();
  }
  buildCounterImagesUploadResponse--;
  return o;
}

void checkImagesUploadResponse(api.ImagesUploadResponse o) {
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    checkImage(o.image!);
  }
  buildCounterImagesUploadResponse--;
}

core.Map<core.String, api.InAppProductListing> buildUnnamed12() => {
      'x': buildInAppProductListing(),
      'y': buildInAppProductListing(),
    };

void checkUnnamed12(core.Map<core.String, api.InAppProductListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProductListing(o['x']!);
  checkInAppProductListing(o['y']!);
}

core.Map<core.String, api.Price> buildUnnamed13() => {
      'x': buildPrice(),
      'y': buildPrice(),
    };

void checkUnnamed13(core.Map<core.String, api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o['x']!);
  checkPrice(o['y']!);
}

core.int buildCounterInAppProduct = 0;
api.InAppProduct buildInAppProduct() {
  final o = api.InAppProduct();
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    o.defaultLanguage = 'foo';
    o.defaultPrice = buildPrice();
    o.gracePeriod = 'foo';
    o.listings = buildUnnamed12();
    o.packageName = 'foo';
    o.prices = buildUnnamed13();
    o.purchaseType = 'foo';
    o.sku = 'foo';
    o.status = 'foo';
    o.subscriptionPeriod = 'foo';
    o.trialPeriod = 'foo';
  }
  buildCounterInAppProduct--;
  return o;
}

void checkInAppProduct(api.InAppProduct o) {
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    checkPrice(o.defaultPrice!);
    unittest.expect(
      o.gracePeriod!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.listings!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.prices!);
    unittest.expect(
      o.purchaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trialPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterInAppProduct--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterInAppProductListing = 0;
api.InAppProductListing buildInAppProductListing() {
  final o = api.InAppProductListing();
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    o.benefits = buildUnnamed14();
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterInAppProductListing--;
  return o;
}

void checkInAppProductListing(api.InAppProductListing o) {
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    checkUnnamed14(o.benefits!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterInAppProductListing--;
}

core.List<api.InAppProduct> buildUnnamed15() => [
      buildInAppProduct(),
      buildInAppProduct(),
    ];

void checkUnnamed15(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsListResponse = 0;
api.InappproductsListResponse buildInappproductsListResponse() {
  final o = api.InappproductsListResponse();
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    o.inappproduct = buildUnnamed15();
    o.kind = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterInappproductsListResponse--;
  return o;
}

void checkInappproductsListResponse(api.InappproductsListResponse o) {
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    checkUnnamed15(o.inappproduct!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
  }
  buildCounterInappproductsListResponse--;
}

core.int buildCounterInternalAppSharingArtifact = 0;
api.InternalAppSharingArtifact buildInternalAppSharingArtifact() {
  final o = api.InternalAppSharingArtifact();
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    o.certificateFingerprint = 'foo';
    o.downloadUrl = 'foo';
    o.sha256 = 'foo';
  }
  buildCounterInternalAppSharingArtifact--;
  return o;
}

void checkInternalAppSharingArtifact(api.InternalAppSharingArtifact o) {
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    unittest.expect(
      o.certificateFingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterInternalAppSharingArtifact--;
}

core.int buildCounterIntroductoryPriceInfo = 0;
api.IntroductoryPriceInfo buildIntroductoryPriceInfo() {
  final o = api.IntroductoryPriceInfo();
  buildCounterIntroductoryPriceInfo++;
  if (buildCounterIntroductoryPriceInfo < 3) {
    o.introductoryPriceAmountMicros = 'foo';
    o.introductoryPriceCurrencyCode = 'foo';
    o.introductoryPriceCycles = 42;
    o.introductoryPricePeriod = 'foo';
  }
  buildCounterIntroductoryPriceInfo--;
  return o;
}

void checkIntroductoryPriceInfo(api.IntroductoryPriceInfo o) {
  buildCounterIntroductoryPriceInfo++;
  if (buildCounterIntroductoryPriceInfo < 3) {
    unittest.expect(
      o.introductoryPriceAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.introductoryPriceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.introductoryPriceCycles!,
      unittest.equals(42),
    );
    unittest.expect(
      o.introductoryPricePeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntroductoryPriceInfo--;
}

core.int buildCounterListing = 0;
api.Listing buildListing() {
  final o = api.Listing();
  buildCounterListing++;
  if (buildCounterListing < 3) {
    o.fullDescription = 'foo';
    o.language = 'foo';
    o.shortDescription = 'foo';
    o.title = 'foo';
    o.video = 'foo';
  }
  buildCounterListing--;
  return o;
}

void checkListing(api.Listing o) {
  buildCounterListing++;
  if (buildCounterListing < 3) {
    unittest.expect(
      o.fullDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.video!,
      unittest.equals('foo'),
    );
  }
  buildCounterListing--;
}

core.List<api.Listing> buildUnnamed16() => [
      buildListing(),
      buildListing(),
    ];

void checkUnnamed16(core.List<api.Listing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListing(o[0]);
  checkListing(o[1]);
}

core.int buildCounterListingsListResponse = 0;
api.ListingsListResponse buildListingsListResponse() {
  final o = api.ListingsListResponse();
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    o.kind = 'foo';
    o.listings = buildUnnamed16();
  }
  buildCounterListingsListResponse--;
  return o;
}

void checkListingsListResponse(api.ListingsListResponse o) {
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.listings!);
  }
  buildCounterListingsListResponse--;
}

core.int buildCounterLocalizedText = 0;
api.LocalizedText buildLocalizedText() {
  final o = api.LocalizedText();
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    o.language = 'foo';
    o.text = 'foo';
  }
  buildCounterLocalizedText--;
  return o;
}

void checkLocalizedText(api.LocalizedText o) {
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedText--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  final o = api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultPerPage = 42;
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

void checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(
      o.resultPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterPageInfo--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = 'foo';
    o.priceMicros = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.int buildCounterProductPurchase = 0;
api.ProductPurchase buildProductPurchase() {
  final o = api.ProductPurchase();
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    o.acknowledgementState = 42;
    o.consumptionState = 42;
    o.developerPayload = 'foo';
    o.kind = 'foo';
    o.obfuscatedExternalAccountId = 'foo';
    o.obfuscatedExternalProfileId = 'foo';
    o.orderId = 'foo';
    o.productId = 'foo';
    o.purchaseState = 42;
    o.purchaseTimeMillis = 'foo';
    o.purchaseToken = 'foo';
    o.purchaseType = 42;
    o.quantity = 42;
    o.regionCode = 'foo';
  }
  buildCounterProductPurchase--;
  return o;
}

void checkProductPurchase(api.ProductPurchase o) {
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    unittest.expect(
      o.acknowledgementState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.consumptionState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.purchaseTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPurchase--;
}

core.int buildCounterProductPurchasesAcknowledgeRequest = 0;
api.ProductPurchasesAcknowledgeRequest
    buildProductPurchasesAcknowledgeRequest() {
  final o = api.ProductPurchasesAcknowledgeRequest();
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = 'foo';
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
  return o;
}

void checkProductPurchasesAcknowledgeRequest(
    api.ProductPurchasesAcknowledgeRequest o) {
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
}

core.List<api.Comment> buildUnnamed17() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed17(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.authorName = 'foo';
    o.comments = buildUnnamed17();
    o.reviewId = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(
      o.authorName!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.comments!);
    unittest.expect(
      o.reviewId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReview--;
}

core.int buildCounterReviewReplyResult = 0;
api.ReviewReplyResult buildReviewReplyResult() {
  final o = api.ReviewReplyResult();
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    o.lastEdited = buildTimestamp();
    o.replyText = 'foo';
  }
  buildCounterReviewReplyResult--;
  return o;
}

void checkReviewReplyResult(api.ReviewReplyResult o) {
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    checkTimestamp(o.lastEdited!);
    unittest.expect(
      o.replyText!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewReplyResult--;
}

core.List<api.Review> buildUnnamed18() => [
      buildReview(),
      buildReview(),
    ];

void checkUnnamed18(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterReviewsListResponse = 0;
api.ReviewsListResponse buildReviewsListResponse() {
  final o = api.ReviewsListResponse();
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.reviews = buildUnnamed18();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterReviewsListResponse--;
  return o;
}

void checkReviewsListResponse(api.ReviewsListResponse o) {
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    checkPageInfo(o.pageInfo!);
    checkUnnamed18(o.reviews!);
    checkTokenPagination(o.tokenPagination!);
  }
  buildCounterReviewsListResponse--;
}

core.int buildCounterReviewsReplyRequest = 0;
api.ReviewsReplyRequest buildReviewsReplyRequest() {
  final o = api.ReviewsReplyRequest();
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    o.replyText = 'foo';
  }
  buildCounterReviewsReplyRequest--;
  return o;
}

void checkReviewsReplyRequest(api.ReviewsReplyRequest o) {
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    unittest.expect(
      o.replyText!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewsReplyRequest--;
}

core.int buildCounterReviewsReplyResponse = 0;
api.ReviewsReplyResponse buildReviewsReplyResponse() {
  final o = api.ReviewsReplyResponse();
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    o.result = buildReviewReplyResult();
  }
  buildCounterReviewsReplyResponse--;
  return o;
}

void checkReviewsReplyResponse(api.ReviewsReplyResponse o) {
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    checkReviewReplyResult(o.result!);
  }
  buildCounterReviewsReplyResponse--;
}

core.int buildCounterSubscriptionCancelSurveyResult = 0;
api.SubscriptionCancelSurveyResult buildSubscriptionCancelSurveyResult() {
  final o = api.SubscriptionCancelSurveyResult();
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    o.cancelSurveyReason = 42;
    o.userInputCancelReason = 'foo';
  }
  buildCounterSubscriptionCancelSurveyResult--;
  return o;
}

void checkSubscriptionCancelSurveyResult(api.SubscriptionCancelSurveyResult o) {
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    unittest.expect(
      o.cancelSurveyReason!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userInputCancelReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionCancelSurveyResult--;
}

core.int buildCounterSubscriptionDeferralInfo = 0;
api.SubscriptionDeferralInfo buildSubscriptionDeferralInfo() {
  final o = api.SubscriptionDeferralInfo();
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    o.desiredExpiryTimeMillis = 'foo';
    o.expectedExpiryTimeMillis = 'foo';
  }
  buildCounterSubscriptionDeferralInfo--;
  return o;
}

void checkSubscriptionDeferralInfo(api.SubscriptionDeferralInfo o) {
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    unittest.expect(
      o.desiredExpiryTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedExpiryTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionDeferralInfo--;
}

core.int buildCounterSubscriptionPriceChange = 0;
api.SubscriptionPriceChange buildSubscriptionPriceChange() {
  final o = api.SubscriptionPriceChange();
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    o.newPrice = buildPrice();
    o.state = 42;
  }
  buildCounterSubscriptionPriceChange--;
  return o;
}

void checkSubscriptionPriceChange(api.SubscriptionPriceChange o) {
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    checkPrice(o.newPrice!);
    unittest.expect(
      o.state!,
      unittest.equals(42),
    );
  }
  buildCounterSubscriptionPriceChange--;
}

core.int buildCounterSubscriptionPurchase = 0;
api.SubscriptionPurchase buildSubscriptionPurchase() {
  final o = api.SubscriptionPurchase();
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    o.acknowledgementState = 42;
    o.autoRenewing = true;
    o.autoResumeTimeMillis = 'foo';
    o.cancelReason = 42;
    o.cancelSurveyResult = buildSubscriptionCancelSurveyResult();
    o.countryCode = 'foo';
    o.developerPayload = 'foo';
    o.emailAddress = 'foo';
    o.expiryTimeMillis = 'foo';
    o.externalAccountId = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.introductoryPriceInfo = buildIntroductoryPriceInfo();
    o.kind = 'foo';
    o.linkedPurchaseToken = 'foo';
    o.obfuscatedExternalAccountId = 'foo';
    o.obfuscatedExternalProfileId = 'foo';
    o.orderId = 'foo';
    o.paymentState = 42;
    o.priceAmountMicros = 'foo';
    o.priceChange = buildSubscriptionPriceChange();
    o.priceCurrencyCode = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
    o.promotionCode = 'foo';
    o.promotionType = 42;
    o.purchaseType = 42;
    o.startTimeMillis = 'foo';
    o.userCancellationTimeMillis = 'foo';
  }
  buildCounterSubscriptionPurchase--;
  return o;
}

void checkSubscriptionPurchase(api.SubscriptionPurchase o) {
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    unittest.expect(
      o.acknowledgementState!,
      unittest.equals(42),
    );
    unittest.expect(o.autoRenewing!, unittest.isTrue);
    unittest.expect(
      o.autoResumeTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cancelReason!,
      unittest.equals(42),
    );
    checkSubscriptionCancelSurveyResult(o.cancelSurveyResult!);
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiryTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
    checkIntroductoryPriceInfo(o.introductoryPriceInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedPurchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priceAmountMicros!,
      unittest.equals('foo'),
    );
    checkSubscriptionPriceChange(o.priceChange!);
    unittest.expect(
      o.priceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.purchaseType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userCancellationTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchase--;
}

core.int buildCounterSubscriptionPurchasesAcknowledgeRequest = 0;
api.SubscriptionPurchasesAcknowledgeRequest
    buildSubscriptionPurchasesAcknowledgeRequest() {
  final o = api.SubscriptionPurchasesAcknowledgeRequest();
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = 'foo';
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
  return o;
}

void checkSubscriptionPurchasesAcknowledgeRequest(
    api.SubscriptionPurchasesAcknowledgeRequest o) {
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferRequest = 0;
api.SubscriptionPurchasesDeferRequest buildSubscriptionPurchasesDeferRequest() {
  final o = api.SubscriptionPurchasesDeferRequest();
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    o.deferralInfo = buildSubscriptionDeferralInfo();
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
  return o;
}

void checkSubscriptionPurchasesDeferRequest(
    api.SubscriptionPurchasesDeferRequest o) {
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    checkSubscriptionDeferralInfo(o.deferralInfo!);
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferResponse = 0;
api.SubscriptionPurchasesDeferResponse
    buildSubscriptionPurchasesDeferResponse() {
  final o = api.SubscriptionPurchasesDeferResponse();
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    o.newExpiryTimeMillis = 'foo';
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
  return o;
}

void checkSubscriptionPurchasesDeferResponse(
    api.SubscriptionPurchasesDeferResponse o) {
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    unittest.expect(
      o.newExpiryTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
}

core.List<api.Variant> buildUnnamed19() => [
      buildVariant(),
      buildVariant(),
    ];

void checkUnnamed19(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterSystemApksListResponse = 0;
api.SystemApksListResponse buildSystemApksListResponse() {
  final o = api.SystemApksListResponse();
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    o.variants = buildUnnamed19();
  }
  buildCounterSystemApksListResponse--;
  return o;
}

void checkSystemApksListResponse(api.SystemApksListResponse o) {
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    checkUnnamed19(o.variants!);
  }
  buildCounterSystemApksListResponse--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.int buildCounterTesters = 0;
api.Testers buildTesters() {
  final o = api.Testers();
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    o.googleGroups = buildUnnamed20();
  }
  buildCounterTesters--;
  return o;
}

void checkTesters(api.Testers o) {
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    checkUnnamed20(o.googleGroups!);
  }
  buildCounterTesters--;
}

core.int buildCounterTimestamp = 0;
api.Timestamp buildTimestamp() {
  final o = api.Timestamp();
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    o.nanos = 42;
    o.seconds = 'foo';
  }
  buildCounterTimestamp--;
  return o;
}

void checkTimestamp(api.Timestamp o) {
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimestamp--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  final o = api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.nextPageToken = 'foo';
    o.previousPageToken = 'foo';
  }
  buildCounterTokenPagination--;
  return o;
}

void checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterTokenPagination--;
}

core.List<api.TrackRelease> buildUnnamed21() => [
      buildTrackRelease(),
      buildTrackRelease(),
    ];

void checkUnnamed21(core.List<api.TrackRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackRelease(o[0]);
  checkTrackRelease(o[1]);
}

core.int buildCounterTrack = 0;
api.Track buildTrack() {
  final o = api.Track();
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    o.releases = buildUnnamed21();
    o.track = 'foo';
  }
  buildCounterTrack--;
  return o;
}

void checkTrack(api.Track o) {
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    checkUnnamed21(o.releases!);
    unittest.expect(
      o.track!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrack--;
}

core.List<api.LocalizedText> buildUnnamed22() => [
      buildLocalizedText(),
      buildLocalizedText(),
    ];

void checkUnnamed22(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int buildCounterTrackRelease = 0;
api.TrackRelease buildTrackRelease() {
  final o = api.TrackRelease();
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    o.countryTargeting = buildCountryTargeting();
    o.inAppUpdatePriority = 42;
    o.name = 'foo';
    o.releaseNotes = buildUnnamed22();
    o.status = 'foo';
    o.userFraction = 42.0;
    o.versionCodes = buildUnnamed23();
  }
  buildCounterTrackRelease--;
  return o;
}

void checkTrackRelease(api.TrackRelease o) {
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    checkCountryTargeting(o.countryTargeting!);
    unittest.expect(
      o.inAppUpdatePriority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.releaseNotes!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userFraction!,
      unittest.equals(42.0),
    );
    checkUnnamed23(o.versionCodes!);
  }
  buildCounterTrackRelease--;
}

core.List<api.Track> buildUnnamed24() => [
      buildTrack(),
      buildTrack(),
    ];

void checkUnnamed24(core.List<api.Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrack(o[0]);
  checkTrack(o[1]);
}

core.int buildCounterTracksListResponse = 0;
api.TracksListResponse buildTracksListResponse() {
  final o = api.TracksListResponse();
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    o.kind = 'foo';
    o.tracks = buildUnnamed24();
  }
  buildCounterTracksListResponse--;
  return o;
}

void checkTracksListResponse(api.TracksListResponse o) {
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.tracks!);
  }
  buildCounterTracksListResponse--;
}

core.int buildCounterUserComment = 0;
api.UserComment buildUserComment() {
  final o = api.UserComment();
  buildCounterUserComment++;
  if (buildCounterUserComment < 3) {
    o.androidOsVersion = 42;
    o.appVersionCode = 42;
    o.appVersionName = 'foo';
    o.device = 'foo';
    o.deviceMetadata = buildDeviceMetadata();
    o.lastModified = buildTimestamp();
    o.originalText = 'foo';
    o.reviewerLanguage = 'foo';
    o.starRating = 42;
    o.text = 'foo';
    o.thumbsDownCount = 42;
    o.thumbsUpCount = 42;
  }
  buildCounterUserComment--;
  return o;
}

void checkUserComment(api.UserComment o) {
  buildCounterUserComment++;
  if (buildCounterUserComment < 3) {
    unittest.expect(
      o.androidOsVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.appVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.appVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.device!,
      unittest.equals('foo'),
    );
    checkDeviceMetadata(o.deviceMetadata!);
    checkTimestamp(o.lastModified!);
    unittest.expect(
      o.originalText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewerLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.starRating!,
      unittest.equals(42),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbsDownCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.thumbsUpCount!,
      unittest.equals(42),
    );
  }
  buildCounterUserComment--;
}

core.int buildCounterUsesPermission = 0;
api.UsesPermission buildUsesPermission() {
  final o = api.UsesPermission();
  buildCounterUsesPermission++;
  if (buildCounterUsesPermission < 3) {
    o.maxSdkVersion = 42;
    o.name = 'foo';
  }
  buildCounterUsesPermission--;
  return o;
}

void checkUsesPermission(api.UsesPermission o) {
  buildCounterUsesPermission++;
  if (buildCounterUsesPermission < 3) {
    unittest.expect(
      o.maxSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsesPermission--;
}

core.int buildCounterVariant = 0;
api.Variant buildVariant() {
  final o = api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.deviceSpec = buildDeviceSpec();
    o.variantId = 42;
  }
  buildCounterVariant--;
  return o;
}

void checkVariant(api.Variant o) {
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    checkDeviceSpec(o.deviceSpec!);
    unittest.expect(
      o.variantId!,
      unittest.equals(42),
    );
  }
  buildCounterVariant--;
}

core.int buildCounterVoidedPurchase = 0;
api.VoidedPurchase buildVoidedPurchase() {
  final o = api.VoidedPurchase();
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    o.kind = 'foo';
    o.orderId = 'foo';
    o.purchaseTimeMillis = 'foo';
    o.purchaseToken = 'foo';
    o.voidedReason = 42;
    o.voidedSource = 42;
    o.voidedTimeMillis = 'foo';
  }
  buildCounterVoidedPurchase--;
  return o;
}

void checkVoidedPurchase(api.VoidedPurchase o) {
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voidedReason!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voidedSource!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voidedTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterVoidedPurchase--;
}

core.List<api.VoidedPurchase> buildUnnamed25() => [
      buildVoidedPurchase(),
      buildVoidedPurchase(),
    ];

void checkUnnamed25(core.List<api.VoidedPurchase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoidedPurchase(o[0]);
  checkVoidedPurchase(o[1]);
}

core.int buildCounterVoidedPurchasesListResponse = 0;
api.VoidedPurchasesListResponse buildVoidedPurchasesListResponse() {
  final o = api.VoidedPurchasesListResponse();
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.voidedPurchases = buildUnnamed25();
  }
  buildCounterVoidedPurchasesListResponse--;
  return o;
}

void checkVoidedPurchasesListResponse(api.VoidedPurchasesListResponse o) {
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    checkUnnamed25(o.voidedPurchases!);
  }
  buildCounterVoidedPurchasesListResponse--;
}

void main() {
  unittest.group('obj-schema-Apk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Apk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApk(od);
    });
  });

  unittest.group('obj-schema-ApkBinary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkBinary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApkBinary.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApkBinary(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksAddExternallyHostedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksAddExternallyHostedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksAddExternallyHostedRequest(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksAddExternallyHostedResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksAddExternallyHostedResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksAddExternallyHostedResponse(od);
    });
  });

  unittest.group('obj-schema-ApksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksListResponse(od);
    });
  });

  unittest.group('obj-schema-AppDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppDetails.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppDetails(od);
    });
  });

  unittest.group('obj-schema-AppEdit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEdit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppEdit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppEdit(od);
    });
  });

  unittest.group('obj-schema-Bundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Bundle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBundle(od);
    });
  });

  unittest.group('obj-schema-BundlesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBundlesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BundlesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBundlesListResponse(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Comment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkComment(od);
    });
  });

  unittest.group('obj-schema-ConvertRegionPricesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertRegionPricesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertRegionPricesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertRegionPricesRequest(od);
    });
  });

  unittest.group('obj-schema-ConvertRegionPricesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertRegionPricesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertRegionPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertRegionPricesResponse(od);
    });
  });

  unittest.group('obj-schema-ConvertedOtherRegionsPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertedOtherRegionsPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertedOtherRegionsPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertedOtherRegionsPrice(od);
    });
  });

  unittest.group('obj-schema-ConvertedRegionPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertedRegionPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertedRegionPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertedRegionPrice(od);
    });
  });

  unittest.group('obj-schema-CountryTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountryTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CountryTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCountryTargeting(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeobfuscationFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeobfuscationFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeobfuscationFile(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFilesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeobfuscationFilesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeobfuscationFilesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeobfuscationFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-DeveloperComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperComment(od);
    });
  });

  unittest.group('obj-schema-DeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-DeviceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSpec(od);
    });
  });

  unittest.group('obj-schema-ExpansionFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpansionFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpansionFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpansionFile(od);
    });
  });

  unittest.group('obj-schema-ExpansionFilesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpansionFilesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpansionFilesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpansionFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-ExternallyHostedApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternallyHostedApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternallyHostedApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternallyHostedApk(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImagesDeleteAllResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesDeleteAllResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesDeleteAllResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesDeleteAllResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesListResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-InAppProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInAppProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InAppProduct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppProduct(od);
    });
  });

  unittest.group('obj-schema-InAppProductListing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInAppProductListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InAppProductListing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppProductListing(od);
    });
  });

  unittest.group('obj-schema-InappproductsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsListResponse(od);
    });
  });

  unittest.group('obj-schema-InternalAppSharingArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInternalAppSharingArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InternalAppSharingArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInternalAppSharingArtifact(od);
    });
  });

  unittest.group('obj-schema-IntroductoryPriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntroductoryPriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntroductoryPriceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntroductoryPriceInfo(od);
    });
  });

  unittest.group('obj-schema-Listing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Listing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListing(od);
    });
  });

  unittest.group('obj-schema-ListingsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListingsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListingsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListingsListResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedText(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Price.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-ProductPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPurchase(od);
    });
  });

  unittest.group('obj-schema-ProductPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPurchasesAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPurchasesAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Review.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReview(od);
    });
  });

  unittest.group('obj-schema-ReviewReplyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewReplyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewReplyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewReplyResult(od);
    });
  });

  unittest.group('obj-schema-ReviewsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsReplyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsReplyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsReplyRequest(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsReplyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsReplyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsReplyResponse(od);
    });
  });

  unittest.group('obj-schema-SubscriptionCancelSurveyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionCancelSurveyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionCancelSurveyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionCancelSurveyResult(od);
    });
  });

  unittest.group('obj-schema-SubscriptionDeferralInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionDeferralInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionDeferralInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionDeferralInfo(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPriceChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPriceChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPriceChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPriceChange(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchase(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesDeferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesDeferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesDeferRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesDeferResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesDeferResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesDeferResponse(od);
    });
  });

  unittest.group('obj-schema-SystemApksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemApksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemApksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemApksListResponse(od);
    });
  });

  unittest.group('obj-schema-Testers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTesters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Testers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTesters(od);
    });
  });

  unittest.group('obj-schema-Timestamp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestamp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Timestamp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimestamp(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPagination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPagination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Track.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrack(od);
    });
  });

  unittest.group('obj-schema-TrackRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackRelease.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackRelease(od);
    });
  });

  unittest.group('obj-schema-TracksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTracksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TracksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTracksListResponse(od);
    });
  });

  unittest.group('obj-schema-UserComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserComment(od);
    });
  });

  unittest.group('obj-schema-UsesPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsesPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsesPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsesPermission(od);
    });
  });

  unittest.group('obj-schema-Variant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Variant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVariant(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoidedPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoidedPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoidedPurchase(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchasesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoidedPurchasesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoidedPurchasesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoidedPurchasesListResponse(od);
    });
  });

  unittest.group('resource-ApplicationsPricingResource', () {
    unittest.test('method--convertRegionPrices', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).applications.pricing;
      final arg_request = buildConvertRegionPricesRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConvertRegionPricesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConvertRegionPricesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/pricing:convertRegionPrices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('/pricing:convertRegionPrices'),
        );
        pathOffset += 28;

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
        final resp = convert.json.encode(buildConvertRegionPricesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.convertRegionPrices(
          arg_request, arg_packageName,
          $fields: arg_$fields);
      checkConvertRegionPricesResponse(
          response as api.ConvertRegionPricesResponse);
    });
  });

  unittest.group('resource-EditsResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_changesNotSentForReview = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf(':commit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':commit'),
        );
        pathOffset += 7;

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
          queryMap['changesNotSentForReview']!.first,
          unittest.equals('$arg_changesNotSentForReview'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.commit(arg_packageName, arg_editId,
          changesNotSentForReview: arg_changesNotSentForReview,
          $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_packageName, arg_editId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );

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
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_request = buildAppEdit();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AppEdit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAppEdit(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/edits'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_packageName, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf(':validate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':validate'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });
  });

  unittest.group('resource-EditsApksResource', () {
    unittest.test('method--addexternallyhosted', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_request = buildApksAddExternallyHostedRequest();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApksAddExternallyHostedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApksAddExternallyHostedRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/externallyHosted', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/apks/externallyHosted'),
        );
        pathOffset += 22;

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
        final resp =
            convert.json.encode(buildApksAddExternallyHostedResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addexternallyhosted(
          arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkApksAddExternallyHostedResponse(
          response as api.ApksAddExternallyHostedResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/apks'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkApksListResponse(response as api.ApksListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/apks'),
        );
        pathOffset += 5;

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
        final resp = convert.json.encode(buildApk());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_packageName, arg_editId, $fields: arg_$fields);
      checkApk(response as api.Apk);
    });
  });

  unittest.group('resource-EditsBundlesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.bundles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/bundles'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildBundlesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkBundlesListResponse(response as api.BundlesListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.bundles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_ackBundleInstallationWarning = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/bundles'),
        );
        pathOffset += 8;

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
          queryMap['ackBundleInstallationWarning']!.first,
          unittest.equals('$arg_ackBundleInstallationWarning'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBundle());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          ackBundleInstallationWarning: arg_ackBundleInstallationWarning,
          $fields: arg_$fields);
      checkBundle(response as api.Bundle);
    });
  });

  unittest.group('resource-EditsDeobfuscationfilesResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.deobfuscationfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_deobfuscationFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/deobfuscationFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/deobfuscationFiles/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deobfuscationFileType'),
        );

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
        final resp =
            convert.json.encode(buildDeobfuscationFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_deobfuscationFileType,
          $fields: arg_$fields);
      checkDeobfuscationFilesUploadResponse(
          response as api.DeobfuscationFilesUploadResponse);
    });
  });

  unittest.group('resource-EditsDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_request = buildAppDetails();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppDetails.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppDetails(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_request = buildAppDetails();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppDetails.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppDetails(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });
  });

  unittest.group('resource-EditsExpansionfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
        );

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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_request = buildExpansionFile();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExpansionFile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExpansionFile(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
        );

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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_request = buildExpansionFile();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExpansionFile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExpansionFile(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
        );

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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_packageName,
          arg_editId, arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
        );

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
        final resp = convert.json.encode(buildExpansionFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFilesUploadResponse(
          response as api.ExpansionFilesUploadResponse);
    });
  });

  unittest.group('resource-EditsImagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
      final arg_imageId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageId'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(
          arg_packageName, arg_editId, arg_language, arg_imageType, arg_imageId,
          $fields: arg_$fields);
    });

    unittest.test('method--deleteall', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
        );

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
        final resp = convert.json.encode(buildImagesDeleteAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteall(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesDeleteAllResponse(response as api.ImagesDeleteAllResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
        );

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
        final resp = convert.json.encode(buildImagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesListResponse(response as api.ImagesListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
        );

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
        final resp = convert.json.encode(buildImagesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesUploadResponse(response as api.ImagesUploadResponse);
    });
  });

  unittest.group('resource-EditsListingsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
    });

    unittest.test('method--deleteall', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/listings'),
        );
        pathOffset += 9;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.deleteall(arg_packageName, arg_editId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );

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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/listings'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildListingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkListingsListResponse(response as api.ListingsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_request = buildListing();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );

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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_request = buildListing();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );

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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });
  });

  unittest.group('resource-EditsTestersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_request = buildTesters();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Testers.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTesters(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_request = buildTesters();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Testers.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTesters(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });
  });

  unittest.group('resource-EditsTracksResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tracks'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildTracksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkTracksListResponse(response as api.TracksListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_request = buildTrack();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Track.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrack(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_request = buildTrack();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Track.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrack(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
        );

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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });
  });

  unittest.group('resource-InappproductsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
        );

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_packageName, arg_sku, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
        );

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
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_sku, $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_autoConvertMissingPrices = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/inappproducts'),
        );
        pathOffset += 14;

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
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_packageName,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/inappproducts'),
        );
        pathOffset += 14;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInappproductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          token: arg_token,
          $fields: arg_$fields);
      checkInappproductsListResponse(response as api.InappproductsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_autoConvertMissingPrices = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
        );

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
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_sku,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_allowMissing = true;
      final arg_autoConvertMissingPrices = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
        );

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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_packageName, arg_sku,
          allowMissing: arg_allowMissing,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });
  });

  unittest.group('resource-InternalappsharingartifactsResource', () {
    unittest.test('method--uploadapk', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).internalappsharingartifacts;
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('androidpublisher/v3/applications/internalappsharing/'),
        );
        pathOffset += 52;
        index = path.indexOf('/artifacts/apk', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/artifacts/apk'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.uploadapk(arg_packageName, $fields: arg_$fields);
      checkInternalAppSharingArtifact(
          response as api.InternalAppSharingArtifact);
    });

    unittest.test('method--uploadbundle', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).internalappsharingartifacts;
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('androidpublisher/v3/applications/internalappsharing/'),
        );
        pathOffset += 52;
        index = path.indexOf('/artifacts/bundle', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/artifacts/bundle'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.uploadbundle(arg_packageName, $fields: arg_$fields);
      checkInternalAppSharingArtifact(
          response as api.InternalAppSharingArtifact);
    });
  });

  unittest.group('resource-OrdersResource', () {
    unittest.test('method--refund', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).orders;
      final arg_packageName = 'foo';
      final arg_orderId = 'foo';
      final arg_revoke = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/orders/'),
        );
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_orderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':refund'),
        );
        pathOffset += 7;

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
          queryMap['revoke']!.first,
          unittest.equals('$arg_revoke'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.refund(arg_packageName, arg_orderId,
          revoke: arg_revoke, $fields: arg_$fields);
    });
  });

  unittest.group('resource-PurchasesProductsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.products;
      final arg_request = buildProductPurchasesAcknowledgeRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductPurchasesAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductPurchasesAcknowledgeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/purchases/products/'),
        );
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':acknowledge'),
        );
        pathOffset += 12;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.acknowledge(
          arg_request, arg_packageName, arg_productId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.products;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/purchases/products/'),
        );
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );

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
        final resp = convert.json.encode(buildProductPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_productId, arg_token,
          $fields: arg_$fields);
      checkProductPurchase(response as api.ProductPurchase);
    });
  });

  unittest.group('resource-PurchasesSubscriptionsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_request = buildSubscriptionPurchasesAcknowledgeRequest();
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionPurchasesAcknowledgeRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':acknowledge'),
        );
        pathOffset += 12;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.acknowledge(
          arg_request, arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.cancel(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--defer', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_request = buildSubscriptionPurchasesDeferRequest();
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionPurchasesDeferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionPurchasesDeferRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':defer', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':defer'),
        );
        pathOffset += 6;

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
        final resp =
            convert.json.encode(buildSubscriptionPurchasesDeferResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.defer(
          arg_request, arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
      checkSubscriptionPurchasesDeferResponse(
          response as api.SubscriptionPurchasesDeferResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );

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
        final resp = convert.json.encode(buildSubscriptionPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
      checkSubscriptionPurchase(response as api.SubscriptionPurchase);
    });

    unittest.test('method--refund', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':refund'),
        );
        pathOffset += 7;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.refund(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':revoke', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':revoke'),
        );
        pathOffset += 7;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.revoke(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-PurchasesVoidedpurchasesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.voidedpurchases;
      final arg_packageName = 'foo';
      final arg_endTime = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_startTime = 'foo';
      final arg_token = 'foo';
      final arg_type = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/voidedpurchases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/purchases/voidedpurchases'),
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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          core.int.parse(queryMap['type']!.first),
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVoidedPurchasesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          endTime: arg_endTime,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          startTime: arg_startTime,
          token: arg_token,
          type: arg_type,
          $fields: arg_$fields);
      checkVoidedPurchasesListResponse(
          response as api.VoidedPurchasesListResponse);
    });
  });

  unittest.group('resource-ReviewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_packageName = 'foo';
      final arg_reviewId = 'foo';
      final arg_translationLanguage = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reviews/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reviewId'),
        );

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
          queryMap['translationLanguage']!.first,
          unittest.equals(arg_translationLanguage),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReview());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_reviewId,
          translationLanguage: arg_translationLanguage, $fields: arg_$fields);
      checkReview(response as api.Review);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_packageName = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_token = 'foo';
      final arg_translationLanguage = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reviews'),
        );
        pathOffset += 8;

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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['translationLanguage']!.first,
          unittest.equals(arg_translationLanguage),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReviewsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          token: arg_token,
          translationLanguage: arg_translationLanguage,
          $fields: arg_$fields);
      checkReviewsListResponse(response as api.ReviewsListResponse);
    });

    unittest.test('method--reply', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_request = buildReviewsReplyRequest();
      final arg_packageName = 'foo';
      final arg_reviewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReviewsReplyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReviewsReplyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reviews/'),
        );
        pathOffset += 9;
        index = path.indexOf(':reply', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reviewId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':reply'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildReviewsReplyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reply(
          arg_request, arg_packageName, arg_reviewId,
          $fields: arg_$fields);
      checkReviewsReplyResponse(response as api.ReviewsReplyResponse);
    });
  });

  unittest.group('resource-SystemapksVariantsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_request = buildVariant();
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Variant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVariant(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/variants'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_packageName, arg_versionCode,
          $fields: arg_$fields);
      checkVariant(response as api.Variant);
    });

    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_variantId = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variants/'),
        );
        pathOffset += 10;
        index = path.indexOf(':download', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variantId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':download'),
        );
        pathOffset += 9;

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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.download(arg_packageName, arg_versionCode, arg_variantId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_variantId = 42;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variants/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variantId'),
        );

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
        final resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_packageName, arg_versionCode, arg_variantId,
          $fields: arg_$fields);
      checkVariant(response as api.Variant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/variants'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildSystemApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName, arg_versionCode,
          $fields: arg_$fields);
      checkSystemApksListResponse(response as api.SystemApksListResponse);
    });
  });
}
