// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.androidpublisher.v3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/androidpublisher/v3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterApk = 0;
api.Apk buildApk() {
  var o = api.Apk();
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
    checkApkBinary(o.binary);
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterApk--;
}

core.int buildCounterApkBinary = 0;
api.ApkBinary buildApkBinary() {
  var o = api.ApkBinary();
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
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterApkBinary--;
}

core.int buildCounterApksAddExternallyHostedRequest = 0;
api.ApksAddExternallyHostedRequest buildApksAddExternallyHostedRequest() {
  var o = api.ApksAddExternallyHostedRequest();
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
    checkExternallyHostedApk(o.externallyHostedApk);
  }
  buildCounterApksAddExternallyHostedRequest--;
}

core.int buildCounterApksAddExternallyHostedResponse = 0;
api.ApksAddExternallyHostedResponse buildApksAddExternallyHostedResponse() {
  var o = api.ApksAddExternallyHostedResponse();
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
    checkExternallyHostedApk(o.externallyHostedApk);
  }
  buildCounterApksAddExternallyHostedResponse--;
}

core.List<api.Apk> buildUnnamed1345() {
  var o = <api.Apk>[];
  o.add(buildApk());
  o.add(buildApk());
  return o;
}

void checkUnnamed1345(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterApksListResponse = 0;
api.ApksListResponse buildApksListResponse() {
  var o = api.ApksListResponse();
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    o.apks = buildUnnamed1345();
    o.kind = 'foo';
  }
  buildCounterApksListResponse--;
  return o;
}

void checkApksListResponse(api.ApksListResponse o) {
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    checkUnnamed1345(o.apks);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterApksListResponse--;
}

core.int buildCounterAppDetails = 0;
api.AppDetails buildAppDetails() {
  var o = api.AppDetails();
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
    unittest.expect(o.contactEmail, unittest.equals('foo'));
    unittest.expect(o.contactPhone, unittest.equals('foo'));
    unittest.expect(o.contactWebsite, unittest.equals('foo'));
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
  }
  buildCounterAppDetails--;
}

core.int buildCounterAppEdit = 0;
api.AppEdit buildAppEdit() {
  var o = api.AppEdit();
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
    unittest.expect(o.expiryTimeSeconds, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAppEdit--;
}

core.int buildCounterBundle = 0;
api.Bundle buildBundle() {
  var o = api.Bundle();
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
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterBundle--;
}

core.List<api.Bundle> buildUnnamed1346() {
  var o = <api.Bundle>[];
  o.add(buildBundle());
  o.add(buildBundle());
  return o;
}

void checkUnnamed1346(core.List<api.Bundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBundle(o[0]);
  checkBundle(o[1]);
}

core.int buildCounterBundlesListResponse = 0;
api.BundlesListResponse buildBundlesListResponse() {
  var o = api.BundlesListResponse();
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    o.bundles = buildUnnamed1346();
    o.kind = 'foo';
  }
  buildCounterBundlesListResponse--;
  return o;
}

void checkBundlesListResponse(api.BundlesListResponse o) {
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    checkUnnamed1346(o.bundles);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBundlesListResponse--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  var o = api.Comment();
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
    checkDeveloperComment(o.developerComment);
    checkUserComment(o.userComment);
  }
  buildCounterComment--;
}

core.List<core.String> buildUnnamed1347() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1347(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCountryTargeting = 0;
api.CountryTargeting buildCountryTargeting() {
  var o = api.CountryTargeting();
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    o.countries = buildUnnamed1347();
    o.includeRestOfWorld = true;
  }
  buildCounterCountryTargeting--;
  return o;
}

void checkCountryTargeting(api.CountryTargeting o) {
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    checkUnnamed1347(o.countries);
    unittest.expect(o.includeRestOfWorld, unittest.isTrue);
  }
  buildCounterCountryTargeting--;
}

core.int buildCounterDeobfuscationFile = 0;
api.DeobfuscationFile buildDeobfuscationFile() {
  var o = api.DeobfuscationFile();
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
    unittest.expect(o.symbolType, unittest.equals('foo'));
  }
  buildCounterDeobfuscationFile--;
}

core.int buildCounterDeobfuscationFilesUploadResponse = 0;
api.DeobfuscationFilesUploadResponse buildDeobfuscationFilesUploadResponse() {
  var o = api.DeobfuscationFilesUploadResponse();
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
    checkDeobfuscationFile(o.deobfuscationFile);
  }
  buildCounterDeobfuscationFilesUploadResponse--;
}

core.int buildCounterDeveloperComment = 0;
api.DeveloperComment buildDeveloperComment() {
  var o = api.DeveloperComment();
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
    checkTimestamp(o.lastModified);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterDeveloperComment--;
}

core.int buildCounterDeviceMetadata = 0;
api.DeviceMetadata buildDeviceMetadata() {
  var o = api.DeviceMetadata();
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
    unittest.expect(o.cpuMake, unittest.equals('foo'));
    unittest.expect(o.cpuModel, unittest.equals('foo'));
    unittest.expect(o.deviceClass, unittest.equals('foo'));
    unittest.expect(o.glEsVersion, unittest.equals(42));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.nativePlatform, unittest.equals('foo'));
    unittest.expect(o.productName, unittest.equals('foo'));
    unittest.expect(o.ramMb, unittest.equals(42));
    unittest.expect(o.screenDensityDpi, unittest.equals(42));
    unittest.expect(o.screenHeightPx, unittest.equals(42));
    unittest.expect(o.screenWidthPx, unittest.equals(42));
  }
  buildCounterDeviceMetadata--;
}

core.List<core.String> buildUnnamed1348() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1348(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1349() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1349(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeviceSpec = 0;
api.DeviceSpec buildDeviceSpec() {
  var o = api.DeviceSpec();
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    o.screenDensity = 42;
    o.supportedAbis = buildUnnamed1348();
    o.supportedLocales = buildUnnamed1349();
  }
  buildCounterDeviceSpec--;
  return o;
}

void checkDeviceSpec(api.DeviceSpec o) {
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    unittest.expect(o.screenDensity, unittest.equals(42));
    checkUnnamed1348(o.supportedAbis);
    checkUnnamed1349(o.supportedLocales);
  }
  buildCounterDeviceSpec--;
}

core.int buildCounterExpansionFile = 0;
api.ExpansionFile buildExpansionFile() {
  var o = api.ExpansionFile();
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
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.referencesVersion, unittest.equals(42));
  }
  buildCounterExpansionFile--;
}

core.int buildCounterExpansionFilesUploadResponse = 0;
api.ExpansionFilesUploadResponse buildExpansionFilesUploadResponse() {
  var o = api.ExpansionFilesUploadResponse();
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
    checkExpansionFile(o.expansionFile);
  }
  buildCounterExpansionFilesUploadResponse--;
}

core.List<core.String> buildUnnamed1350() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1350(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1351() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1351(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1352() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1352(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UsesPermission> buildUnnamed1353() {
  var o = <api.UsesPermission>[];
  o.add(buildUsesPermission());
  o.add(buildUsesPermission());
  return o;
}

void checkUnnamed1353(core.List<api.UsesPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsesPermission(o[0]);
  checkUsesPermission(o[1]);
}

core.int buildCounterExternallyHostedApk = 0;
api.ExternallyHostedApk buildExternallyHostedApk() {
  var o = api.ExternallyHostedApk();
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    o.applicationLabel = 'foo';
    o.certificateBase64s = buildUnnamed1350();
    o.externallyHostedUrl = 'foo';
    o.fileSha1Base64 = 'foo';
    o.fileSha256Base64 = 'foo';
    o.fileSize = 'foo';
    o.iconBase64 = 'foo';
    o.maximumSdk = 42;
    o.minimumSdk = 42;
    o.nativeCodes = buildUnnamed1351();
    o.packageName = 'foo';
    o.usesFeatures = buildUnnamed1352();
    o.usesPermissions = buildUnnamed1353();
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterExternallyHostedApk--;
  return o;
}

void checkExternallyHostedApk(api.ExternallyHostedApk o) {
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    unittest.expect(o.applicationLabel, unittest.equals('foo'));
    checkUnnamed1350(o.certificateBase64s);
    unittest.expect(o.externallyHostedUrl, unittest.equals('foo'));
    unittest.expect(o.fileSha1Base64, unittest.equals('foo'));
    unittest.expect(o.fileSha256Base64, unittest.equals('foo'));
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.iconBase64, unittest.equals('foo'));
    unittest.expect(o.maximumSdk, unittest.equals(42));
    unittest.expect(o.minimumSdk, unittest.equals(42));
    checkUnnamed1351(o.nativeCodes);
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1352(o.usesFeatures);
    checkUnnamed1353(o.usesPermissions);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterExternallyHostedApk--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  var o = api.Image();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterImage--;
}

core.List<api.Image> buildUnnamed1354() {
  var o = <api.Image>[];
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

void checkUnnamed1354(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesDeleteAllResponse = 0;
api.ImagesDeleteAllResponse buildImagesDeleteAllResponse() {
  var o = api.ImagesDeleteAllResponse();
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    o.deleted = buildUnnamed1354();
  }
  buildCounterImagesDeleteAllResponse--;
  return o;
}

void checkImagesDeleteAllResponse(api.ImagesDeleteAllResponse o) {
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    checkUnnamed1354(o.deleted);
  }
  buildCounterImagesDeleteAllResponse--;
}

core.List<api.Image> buildUnnamed1355() {
  var o = <api.Image>[];
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

void checkUnnamed1355(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesListResponse = 0;
api.ImagesListResponse buildImagesListResponse() {
  var o = api.ImagesListResponse();
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    o.images = buildUnnamed1355();
  }
  buildCounterImagesListResponse--;
  return o;
}

void checkImagesListResponse(api.ImagesListResponse o) {
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    checkUnnamed1355(o.images);
  }
  buildCounterImagesListResponse--;
}

core.int buildCounterImagesUploadResponse = 0;
api.ImagesUploadResponse buildImagesUploadResponse() {
  var o = api.ImagesUploadResponse();
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
    checkImage(o.image);
  }
  buildCounterImagesUploadResponse--;
}

core.Map<core.String, api.InAppProductListing> buildUnnamed1356() {
  var o = <core.String, api.InAppProductListing>{};
  o['x'] = buildInAppProductListing();
  o['y'] = buildInAppProductListing();
  return o;
}

void checkUnnamed1356(core.Map<core.String, api.InAppProductListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProductListing(o['x']);
  checkInAppProductListing(o['y']);
}

core.Map<core.String, api.Price> buildUnnamed1357() {
  var o = <core.String, api.Price>{};
  o['x'] = buildPrice();
  o['y'] = buildPrice();
  return o;
}

void checkUnnamed1357(core.Map<core.String, api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o['x']);
  checkPrice(o['y']);
}

core.int buildCounterInAppProduct = 0;
api.InAppProduct buildInAppProduct() {
  var o = api.InAppProduct();
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    o.defaultLanguage = 'foo';
    o.defaultPrice = buildPrice();
    o.gracePeriod = 'foo';
    o.listings = buildUnnamed1356();
    o.packageName = 'foo';
    o.prices = buildUnnamed1357();
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
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    checkPrice(o.defaultPrice);
    unittest.expect(o.gracePeriod, unittest.equals('foo'));
    checkUnnamed1356(o.listings);
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1357(o.prices);
    unittest.expect(o.purchaseType, unittest.equals('foo'));
    unittest.expect(o.sku, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subscriptionPeriod, unittest.equals('foo'));
    unittest.expect(o.trialPeriod, unittest.equals('foo'));
  }
  buildCounterInAppProduct--;
}

core.List<core.String> buildUnnamed1358() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1358(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInAppProductListing = 0;
api.InAppProductListing buildInAppProductListing() {
  var o = api.InAppProductListing();
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    o.benefits = buildUnnamed1358();
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterInAppProductListing--;
  return o;
}

void checkInAppProductListing(api.InAppProductListing o) {
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    checkUnnamed1358(o.benefits);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterInAppProductListing--;
}

core.List<api.InAppProduct> buildUnnamed1359() {
  var o = <api.InAppProduct>[];
  o.add(buildInAppProduct());
  o.add(buildInAppProduct());
  return o;
}

void checkUnnamed1359(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsListResponse = 0;
api.InappproductsListResponse buildInappproductsListResponse() {
  var o = api.InappproductsListResponse();
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    o.inappproduct = buildUnnamed1359();
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
    checkUnnamed1359(o.inappproduct);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterInappproductsListResponse--;
}

core.int buildCounterInternalAppSharingArtifact = 0;
api.InternalAppSharingArtifact buildInternalAppSharingArtifact() {
  var o = api.InternalAppSharingArtifact();
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
    unittest.expect(o.certificateFingerprint, unittest.equals('foo'));
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterInternalAppSharingArtifact--;
}

core.int buildCounterIntroductoryPriceInfo = 0;
api.IntroductoryPriceInfo buildIntroductoryPriceInfo() {
  var o = api.IntroductoryPriceInfo();
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
    unittest.expect(o.introductoryPriceAmountMicros, unittest.equals('foo'));
    unittest.expect(o.introductoryPriceCurrencyCode, unittest.equals('foo'));
    unittest.expect(o.introductoryPriceCycles, unittest.equals(42));
    unittest.expect(o.introductoryPricePeriod, unittest.equals('foo'));
  }
  buildCounterIntroductoryPriceInfo--;
}

core.int buildCounterListing = 0;
api.Listing buildListing() {
  var o = api.Listing();
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
    unittest.expect(o.fullDescription, unittest.equals('foo'));
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.shortDescription, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.video, unittest.equals('foo'));
  }
  buildCounterListing--;
}

core.List<api.Listing> buildUnnamed1360() {
  var o = <api.Listing>[];
  o.add(buildListing());
  o.add(buildListing());
  return o;
}

void checkUnnamed1360(core.List<api.Listing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListing(o[0]);
  checkListing(o[1]);
}

core.int buildCounterListingsListResponse = 0;
api.ListingsListResponse buildListingsListResponse() {
  var o = api.ListingsListResponse();
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    o.kind = 'foo';
    o.listings = buildUnnamed1360();
  }
  buildCounterListingsListResponse--;
  return o;
}

void checkListingsListResponse(api.ListingsListResponse o) {
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1360(o.listings);
  }
  buildCounterListingsListResponse--;
}

core.int buildCounterLocalizedText = 0;
api.LocalizedText buildLocalizedText() {
  var o = api.LocalizedText();
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
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterLocalizedText--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  var o = api.PageInfo();
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
    unittest.expect(o.resultPerPage, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  var o = api.Price();
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
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.priceMicros, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterProductPurchase = 0;
api.ProductPurchase buildProductPurchase() {
  var o = api.ProductPurchase();
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
    unittest.expect(o.acknowledgementState, unittest.equals(42));
    unittest.expect(o.consumptionState, unittest.equals(42));
    unittest.expect(o.developerPayload, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.obfuscatedExternalAccountId, unittest.equals('foo'));
    unittest.expect(o.obfuscatedExternalProfileId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.purchaseState, unittest.equals(42));
    unittest.expect(o.purchaseTimeMillis, unittest.equals('foo'));
    unittest.expect(o.purchaseToken, unittest.equals('foo'));
    unittest.expect(o.purchaseType, unittest.equals(42));
    unittest.expect(o.quantity, unittest.equals(42));
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterProductPurchase--;
}

core.int buildCounterProductPurchasesAcknowledgeRequest = 0;
api.ProductPurchasesAcknowledgeRequest
    buildProductPurchasesAcknowledgeRequest() {
  var o = api.ProductPurchasesAcknowledgeRequest();
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
    unittest.expect(o.developerPayload, unittest.equals('foo'));
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
}

core.List<api.Comment> buildUnnamed1361() {
  var o = <api.Comment>[];
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

void checkUnnamed1361(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  var o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.authorName = 'foo';
    o.comments = buildUnnamed1361();
    o.reviewId = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(o.authorName, unittest.equals('foo'));
    checkUnnamed1361(o.comments);
    unittest.expect(o.reviewId, unittest.equals('foo'));
  }
  buildCounterReview--;
}

core.int buildCounterReviewReplyResult = 0;
api.ReviewReplyResult buildReviewReplyResult() {
  var o = api.ReviewReplyResult();
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
    checkTimestamp(o.lastEdited);
    unittest.expect(o.replyText, unittest.equals('foo'));
  }
  buildCounterReviewReplyResult--;
}

core.List<api.Review> buildUnnamed1362() {
  var o = <api.Review>[];
  o.add(buildReview());
  o.add(buildReview());
  return o;
}

void checkUnnamed1362(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterReviewsListResponse = 0;
api.ReviewsListResponse buildReviewsListResponse() {
  var o = api.ReviewsListResponse();
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.reviews = buildUnnamed1362();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterReviewsListResponse--;
  return o;
}

void checkReviewsListResponse(api.ReviewsListResponse o) {
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    checkPageInfo(o.pageInfo);
    checkUnnamed1362(o.reviews);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterReviewsListResponse--;
}

core.int buildCounterReviewsReplyRequest = 0;
api.ReviewsReplyRequest buildReviewsReplyRequest() {
  var o = api.ReviewsReplyRequest();
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
    unittest.expect(o.replyText, unittest.equals('foo'));
  }
  buildCounterReviewsReplyRequest--;
}

core.int buildCounterReviewsReplyResponse = 0;
api.ReviewsReplyResponse buildReviewsReplyResponse() {
  var o = api.ReviewsReplyResponse();
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
    checkReviewReplyResult(o.result);
  }
  buildCounterReviewsReplyResponse--;
}

core.int buildCounterSubscriptionCancelSurveyResult = 0;
api.SubscriptionCancelSurveyResult buildSubscriptionCancelSurveyResult() {
  var o = api.SubscriptionCancelSurveyResult();
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
    unittest.expect(o.cancelSurveyReason, unittest.equals(42));
    unittest.expect(o.userInputCancelReason, unittest.equals('foo'));
  }
  buildCounterSubscriptionCancelSurveyResult--;
}

core.int buildCounterSubscriptionDeferralInfo = 0;
api.SubscriptionDeferralInfo buildSubscriptionDeferralInfo() {
  var o = api.SubscriptionDeferralInfo();
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
    unittest.expect(o.desiredExpiryTimeMillis, unittest.equals('foo'));
    unittest.expect(o.expectedExpiryTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionDeferralInfo--;
}

core.int buildCounterSubscriptionPriceChange = 0;
api.SubscriptionPriceChange buildSubscriptionPriceChange() {
  var o = api.SubscriptionPriceChange();
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
    checkPrice(o.newPrice);
    unittest.expect(o.state, unittest.equals(42));
  }
  buildCounterSubscriptionPriceChange--;
}

core.int buildCounterSubscriptionPurchase = 0;
api.SubscriptionPurchase buildSubscriptionPurchase() {
  var o = api.SubscriptionPurchase();
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
    unittest.expect(o.acknowledgementState, unittest.equals(42));
    unittest.expect(o.autoRenewing, unittest.isTrue);
    unittest.expect(o.autoResumeTimeMillis, unittest.equals('foo'));
    unittest.expect(o.cancelReason, unittest.equals(42));
    checkSubscriptionCancelSurveyResult(o.cancelSurveyResult);
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.developerPayload, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.expiryTimeMillis, unittest.equals('foo'));
    unittest.expect(o.externalAccountId, unittest.equals('foo'));
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    checkIntroductoryPriceInfo(o.introductoryPriceInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.linkedPurchaseToken, unittest.equals('foo'));
    unittest.expect(o.obfuscatedExternalAccountId, unittest.equals('foo'));
    unittest.expect(o.obfuscatedExternalProfileId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.paymentState, unittest.equals(42));
    unittest.expect(o.priceAmountMicros, unittest.equals('foo'));
    checkSubscriptionPriceChange(o.priceChange);
    unittest.expect(o.priceCurrencyCode, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
    unittest.expect(o.profileName, unittest.equals('foo'));
    unittest.expect(o.promotionCode, unittest.equals('foo'));
    unittest.expect(o.promotionType, unittest.equals(42));
    unittest.expect(o.purchaseType, unittest.equals(42));
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
    unittest.expect(o.userCancellationTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchase--;
}

core.int buildCounterSubscriptionPurchasesAcknowledgeRequest = 0;
api.SubscriptionPurchasesAcknowledgeRequest
    buildSubscriptionPurchasesAcknowledgeRequest() {
  var o = api.SubscriptionPurchasesAcknowledgeRequest();
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
    unittest.expect(o.developerPayload, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferRequest = 0;
api.SubscriptionPurchasesDeferRequest buildSubscriptionPurchasesDeferRequest() {
  var o = api.SubscriptionPurchasesDeferRequest();
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
    checkSubscriptionDeferralInfo(o.deferralInfo);
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferResponse = 0;
api.SubscriptionPurchasesDeferResponse
    buildSubscriptionPurchasesDeferResponse() {
  var o = api.SubscriptionPurchasesDeferResponse();
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
    unittest.expect(o.newExpiryTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
}

core.List<api.Variant> buildUnnamed1363() {
  var o = <api.Variant>[];
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

void checkUnnamed1363(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterSystemApksListResponse = 0;
api.SystemApksListResponse buildSystemApksListResponse() {
  var o = api.SystemApksListResponse();
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    o.variants = buildUnnamed1363();
  }
  buildCounterSystemApksListResponse--;
  return o;
}

void checkSystemApksListResponse(api.SystemApksListResponse o) {
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    checkUnnamed1363(o.variants);
  }
  buildCounterSystemApksListResponse--;
}

core.List<core.String> buildUnnamed1364() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1364(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTesters = 0;
api.Testers buildTesters() {
  var o = api.Testers();
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    o.googleGroups = buildUnnamed1364();
  }
  buildCounterTesters--;
  return o;
}

void checkTesters(api.Testers o) {
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    checkUnnamed1364(o.googleGroups);
  }
  buildCounterTesters--;
}

core.int buildCounterTimestamp = 0;
api.Timestamp buildTimestamp() {
  var o = api.Timestamp();
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
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals('foo'));
  }
  buildCounterTimestamp--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  var o = api.TokenPagination();
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
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterTokenPagination--;
}

core.List<api.TrackRelease> buildUnnamed1365() {
  var o = <api.TrackRelease>[];
  o.add(buildTrackRelease());
  o.add(buildTrackRelease());
  return o;
}

void checkUnnamed1365(core.List<api.TrackRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackRelease(o[0]);
  checkTrackRelease(o[1]);
}

core.int buildCounterTrack = 0;
api.Track buildTrack() {
  var o = api.Track();
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    o.releases = buildUnnamed1365();
    o.track = 'foo';
  }
  buildCounterTrack--;
  return o;
}

void checkTrack(api.Track o) {
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    checkUnnamed1365(o.releases);
    unittest.expect(o.track, unittest.equals('foo'));
  }
  buildCounterTrack--;
}

core.List<api.LocalizedText> buildUnnamed1366() {
  var o = <api.LocalizedText>[];
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

void checkUnnamed1366(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

core.List<core.String> buildUnnamed1367() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed1367(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrackRelease = 0;
api.TrackRelease buildTrackRelease() {
  var o = api.TrackRelease();
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    o.countryTargeting = buildCountryTargeting();
    o.inAppUpdatePriority = 42;
    o.name = 'foo';
    o.releaseNotes = buildUnnamed1366();
    o.status = 'foo';
    o.userFraction = 42.0;
    o.versionCodes = buildUnnamed1367();
  }
  buildCounterTrackRelease--;
  return o;
}

void checkTrackRelease(api.TrackRelease o) {
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    checkCountryTargeting(o.countryTargeting);
    unittest.expect(o.inAppUpdatePriority, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1366(o.releaseNotes);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userFraction, unittest.equals(42.0));
    checkUnnamed1367(o.versionCodes);
  }
  buildCounterTrackRelease--;
}

core.List<api.Track> buildUnnamed1368() {
  var o = <api.Track>[];
  o.add(buildTrack());
  o.add(buildTrack());
  return o;
}

void checkUnnamed1368(core.List<api.Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrack(o[0]);
  checkTrack(o[1]);
}

core.int buildCounterTracksListResponse = 0;
api.TracksListResponse buildTracksListResponse() {
  var o = api.TracksListResponse();
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    o.kind = 'foo';
    o.tracks = buildUnnamed1368();
  }
  buildCounterTracksListResponse--;
  return o;
}

void checkTracksListResponse(api.TracksListResponse o) {
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1368(o.tracks);
  }
  buildCounterTracksListResponse--;
}

core.int buildCounterUserComment = 0;
api.UserComment buildUserComment() {
  var o = api.UserComment();
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
    unittest.expect(o.androidOsVersion, unittest.equals(42));
    unittest.expect(o.appVersionCode, unittest.equals(42));
    unittest.expect(o.appVersionName, unittest.equals('foo'));
    unittest.expect(o.device, unittest.equals('foo'));
    checkDeviceMetadata(o.deviceMetadata);
    checkTimestamp(o.lastModified);
    unittest.expect(o.originalText, unittest.equals('foo'));
    unittest.expect(o.reviewerLanguage, unittest.equals('foo'));
    unittest.expect(o.starRating, unittest.equals(42));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.thumbsDownCount, unittest.equals(42));
    unittest.expect(o.thumbsUpCount, unittest.equals(42));
  }
  buildCounterUserComment--;
}

core.int buildCounterUsesPermission = 0;
api.UsesPermission buildUsesPermission() {
  var o = api.UsesPermission();
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
    unittest.expect(o.maxSdkVersion, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterUsesPermission--;
}

core.int buildCounterVariant = 0;
api.Variant buildVariant() {
  var o = api.Variant();
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
    checkDeviceSpec(o.deviceSpec);
    unittest.expect(o.variantId, unittest.equals(42));
  }
  buildCounterVariant--;
}

core.int buildCounterVoidedPurchase = 0;
api.VoidedPurchase buildVoidedPurchase() {
  var o = api.VoidedPurchase();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.purchaseTimeMillis, unittest.equals('foo'));
    unittest.expect(o.purchaseToken, unittest.equals('foo'));
    unittest.expect(o.voidedReason, unittest.equals(42));
    unittest.expect(o.voidedSource, unittest.equals(42));
    unittest.expect(o.voidedTimeMillis, unittest.equals('foo'));
  }
  buildCounterVoidedPurchase--;
}

core.List<api.VoidedPurchase> buildUnnamed1369() {
  var o = <api.VoidedPurchase>[];
  o.add(buildVoidedPurchase());
  o.add(buildVoidedPurchase());
  return o;
}

void checkUnnamed1369(core.List<api.VoidedPurchase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoidedPurchase(o[0]);
  checkVoidedPurchase(o[1]);
}

core.int buildCounterVoidedPurchasesListResponse = 0;
api.VoidedPurchasesListResponse buildVoidedPurchasesListResponse() {
  var o = api.VoidedPurchasesListResponse();
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.voidedPurchases = buildUnnamed1369();
  }
  buildCounterVoidedPurchasesListResponse--;
  return o;
}

void checkVoidedPurchasesListResponse(api.VoidedPurchasesListResponse o) {
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    checkUnnamed1369(o.voidedPurchases);
  }
  buildCounterVoidedPurchasesListResponse--;
}

void main() {
  unittest.group('obj-schema-Apk', () {
    unittest.test('to-json--from-json', () {
      var o = buildApk();
      var od = api.Apk.fromJson(o.toJson());
      checkApk(od);
    });
  });

  unittest.group('obj-schema-ApkBinary', () {
    unittest.test('to-json--from-json', () {
      var o = buildApkBinary();
      var od = api.ApkBinary.fromJson(o.toJson());
      checkApkBinary(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApksAddExternallyHostedRequest();
      var od = api.ApksAddExternallyHostedRequest.fromJson(o.toJson());
      checkApksAddExternallyHostedRequest(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApksAddExternallyHostedResponse();
      var od = api.ApksAddExternallyHostedResponse.fromJson(o.toJson());
      checkApksAddExternallyHostedResponse(od);
    });
  });

  unittest.group('obj-schema-ApksListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildApksListResponse();
      var od = api.ApksListResponse.fromJson(o.toJson());
      checkApksListResponse(od);
    });
  });

  unittest.group('obj-schema-AppDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppDetails();
      var od = api.AppDetails.fromJson(o.toJson());
      checkAppDetails(od);
    });
  });

  unittest.group('obj-schema-AppEdit', () {
    unittest.test('to-json--from-json', () {
      var o = buildAppEdit();
      var od = api.AppEdit.fromJson(o.toJson());
      checkAppEdit(od);
    });
  });

  unittest.group('obj-schema-Bundle', () {
    unittest.test('to-json--from-json', () {
      var o = buildBundle();
      var od = api.Bundle.fromJson(o.toJson());
      checkBundle(od);
    });
  });

  unittest.group('obj-schema-BundlesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBundlesListResponse();
      var od = api.BundlesListResponse.fromJson(o.toJson());
      checkBundlesListResponse(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () {
      var o = buildComment();
      var od = api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CountryTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCountryTargeting();
      var od = api.CountryTargeting.fromJson(o.toJson());
      checkCountryTargeting(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeobfuscationFile();
      var od = api.DeobfuscationFile.fromJson(o.toJson());
      checkDeobfuscationFile(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFilesUploadResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeobfuscationFilesUploadResponse();
      var od = api.DeobfuscationFilesUploadResponse.fromJson(o.toJson());
      checkDeobfuscationFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-DeveloperComment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeveloperComment();
      var od = api.DeveloperComment.fromJson(o.toJson());
      checkDeveloperComment(od);
    });
  });

  unittest.group('obj-schema-DeviceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceMetadata();
      var od = api.DeviceMetadata.fromJson(o.toJson());
      checkDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-DeviceSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeviceSpec();
      var od = api.DeviceSpec.fromJson(o.toJson());
      checkDeviceSpec(od);
    });
  });

  unittest.group('obj-schema-ExpansionFile', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpansionFile();
      var od = api.ExpansionFile.fromJson(o.toJson());
      checkExpansionFile(od);
    });
  });

  unittest.group('obj-schema-ExpansionFilesUploadResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildExpansionFilesUploadResponse();
      var od = api.ExpansionFilesUploadResponse.fromJson(o.toJson());
      checkExpansionFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-ExternallyHostedApk', () {
    unittest.test('to-json--from-json', () {
      var o = buildExternallyHostedApk();
      var od = api.ExternallyHostedApk.fromJson(o.toJson());
      checkExternallyHostedApk(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () {
      var o = buildImage();
      var od = api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImagesDeleteAllResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildImagesDeleteAllResponse();
      var od = api.ImagesDeleteAllResponse.fromJson(o.toJson());
      checkImagesDeleteAllResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildImagesListResponse();
      var od = api.ImagesListResponse.fromJson(o.toJson());
      checkImagesListResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesUploadResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildImagesUploadResponse();
      var od = api.ImagesUploadResponse.fromJson(o.toJson());
      checkImagesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-InAppProduct', () {
    unittest.test('to-json--from-json', () {
      var o = buildInAppProduct();
      var od = api.InAppProduct.fromJson(o.toJson());
      checkInAppProduct(od);
    });
  });

  unittest.group('obj-schema-InAppProductListing', () {
    unittest.test('to-json--from-json', () {
      var o = buildInAppProductListing();
      var od = api.InAppProductListing.fromJson(o.toJson());
      checkInAppProductListing(od);
    });
  });

  unittest.group('obj-schema-InappproductsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildInappproductsListResponse();
      var od = api.InappproductsListResponse.fromJson(o.toJson());
      checkInappproductsListResponse(od);
    });
  });

  unittest.group('obj-schema-InternalAppSharingArtifact', () {
    unittest.test('to-json--from-json', () {
      var o = buildInternalAppSharingArtifact();
      var od = api.InternalAppSharingArtifact.fromJson(o.toJson());
      checkInternalAppSharingArtifact(od);
    });
  });

  unittest.group('obj-schema-IntroductoryPriceInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntroductoryPriceInfo();
      var od = api.IntroductoryPriceInfo.fromJson(o.toJson());
      checkIntroductoryPriceInfo(od);
    });
  });

  unittest.group('obj-schema-Listing', () {
    unittest.test('to-json--from-json', () {
      var o = buildListing();
      var od = api.Listing.fromJson(o.toJson());
      checkListing(od);
    });
  });

  unittest.group('obj-schema-ListingsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListingsListResponse();
      var od = api.ListingsListResponse.fromJson(o.toJson());
      checkListingsListResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizedText', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocalizedText();
      var od = api.LocalizedText.fromJson(o.toJson());
      checkLocalizedText(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageInfo();
      var od = api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () {
      var o = buildPrice();
      var od = api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-ProductPurchase', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductPurchase();
      var od = api.ProductPurchase.fromJson(o.toJson());
      checkProductPurchase(od);
    });
  });

  unittest.group('obj-schema-ProductPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildProductPurchasesAcknowledgeRequest();
      var od = api.ProductPurchasesAcknowledgeRequest.fromJson(o.toJson());
      checkProductPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () {
      var o = buildReview();
      var od = api.Review.fromJson(o.toJson());
      checkReview(od);
    });
  });

  unittest.group('obj-schema-ReviewReplyResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewReplyResult();
      var od = api.ReviewReplyResult.fromJson(o.toJson());
      checkReviewReplyResult(od);
    });
  });

  unittest.group('obj-schema-ReviewsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewsListResponse();
      var od = api.ReviewsListResponse.fromJson(o.toJson());
      checkReviewsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewsReplyRequest();
      var od = api.ReviewsReplyRequest.fromJson(o.toJson());
      checkReviewsReplyRequest(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReviewsReplyResponse();
      var od = api.ReviewsReplyResponse.fromJson(o.toJson());
      checkReviewsReplyResponse(od);
    });
  });

  unittest.group('obj-schema-SubscriptionCancelSurveyResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionCancelSurveyResult();
      var od = api.SubscriptionCancelSurveyResult.fromJson(o.toJson());
      checkSubscriptionCancelSurveyResult(od);
    });
  });

  unittest.group('obj-schema-SubscriptionDeferralInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionDeferralInfo();
      var od = api.SubscriptionDeferralInfo.fromJson(o.toJson());
      checkSubscriptionDeferralInfo(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPriceChange', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionPriceChange();
      var od = api.SubscriptionPriceChange.fromJson(o.toJson());
      checkSubscriptionPriceChange(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchase', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionPurchase();
      var od = api.SubscriptionPurchase.fromJson(o.toJson());
      checkSubscriptionPurchase(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionPurchasesAcknowledgeRequest();
      var od = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(o.toJson());
      checkSubscriptionPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionPurchasesDeferRequest();
      var od = api.SubscriptionPurchasesDeferRequest.fromJson(o.toJson());
      checkSubscriptionPurchasesDeferRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubscriptionPurchasesDeferResponse();
      var od = api.SubscriptionPurchasesDeferResponse.fromJson(o.toJson());
      checkSubscriptionPurchasesDeferResponse(od);
    });
  });

  unittest.group('obj-schema-SystemApksListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSystemApksListResponse();
      var od = api.SystemApksListResponse.fromJson(o.toJson());
      checkSystemApksListResponse(od);
    });
  });

  unittest.group('obj-schema-Testers', () {
    unittest.test('to-json--from-json', () {
      var o = buildTesters();
      var od = api.Testers.fromJson(o.toJson());
      checkTesters(od);
    });
  });

  unittest.group('obj-schema-Timestamp', () {
    unittest.test('to-json--from-json', () {
      var o = buildTimestamp();
      var od = api.Timestamp.fromJson(o.toJson());
      checkTimestamp(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () {
      var o = buildTokenPagination();
      var od = api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-Track', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrack();
      var od = api.Track.fromJson(o.toJson());
      checkTrack(od);
    });
  });

  unittest.group('obj-schema-TrackRelease', () {
    unittest.test('to-json--from-json', () {
      var o = buildTrackRelease();
      var od = api.TrackRelease.fromJson(o.toJson());
      checkTrackRelease(od);
    });
  });

  unittest.group('obj-schema-TracksListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTracksListResponse();
      var od = api.TracksListResponse.fromJson(o.toJson());
      checkTracksListResponse(od);
    });
  });

  unittest.group('obj-schema-UserComment', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserComment();
      var od = api.UserComment.fromJson(o.toJson());
      checkUserComment(od);
    });
  });

  unittest.group('obj-schema-UsesPermission', () {
    unittest.test('to-json--from-json', () {
      var o = buildUsesPermission();
      var od = api.UsesPermission.fromJson(o.toJson());
      checkUsesPermission(od);
    });
  });

  unittest.group('obj-schema-Variant', () {
    unittest.test('to-json--from-json', () {
      var o = buildVariant();
      var od = api.Variant.fromJson(o.toJson());
      checkVariant(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchase', () {
    unittest.test('to-json--from-json', () {
      var o = buildVoidedPurchase();
      var od = api.VoidedPurchase.fromJson(o.toJson());
      checkVoidedPurchase(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchasesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVoidedPurchasesListResponse();
      var od = api.VoidedPurchasesListResponse.fromJson(o.toJson());
      checkVoidedPurchasesListResponse(od);
    });
  });

  unittest.group('resource-EditsResourceApi', () {
    unittest.test('method--commit', () {
      var mock = HttpServerMock();
      api.EditsResourceApi res = api.AndroidpublisherApi(mock).edits;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf(':commit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":commit"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.EditsResourceApi res = api.AndroidpublisherApi(mock).edits;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_editId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsResourceApi res = api.AndroidpublisherApi(mock).edits;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_editId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.EditsResourceApi res = api.AndroidpublisherApi(mock).edits;
      var arg_request = buildAppEdit();
      var arg_packageName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AppEdit.fromJson(json);
        checkAppEdit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/edits"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      api.EditsResourceApi res = api.AndroidpublisherApi(mock).edits;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf(':validate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":validate"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });
  });

  unittest.group('resource-EditsApksResourceApi', () {
    unittest.test('method--addexternallyhosted', () {
      var mock = HttpServerMock();
      api.EditsApksResourceApi res = api.AndroidpublisherApi(mock).edits.apks;
      var arg_request = buildApksAddExternallyHostedRequest();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ApksAddExternallyHostedRequest.fromJson(json);
        checkApksAddExternallyHostedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/externallyHosted', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/apks/externallyHosted"));
        pathOffset += 22;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApksAddExternallyHostedResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addexternallyhosted(arg_request, arg_packageName, arg_editId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApksAddExternallyHostedResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EditsApksResourceApi res = api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/apks"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApksListResponse(response);
      })));
    });

    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.EditsApksResourceApi res = api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/apks"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildApk());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApk(response);
      })));
    });
  });

  unittest.group('resource-EditsBundlesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EditsBundlesResourceApi res =
          api.AndroidpublisherApi(mock).edits.bundles;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/bundles"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBundlesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBundlesListResponse(response);
      })));
    });

    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.EditsBundlesResourceApi res =
          api.AndroidpublisherApi(mock).edits.bundles;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_ackBundleInstallationWarning = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/bundles"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["ackBundleInstallationWarning"].first,
            unittest.equals("$arg_ackBundleInstallationWarning"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBundle());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId,
              ackBundleInstallationWarning: arg_ackBundleInstallationWarning,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBundle(response);
      })));
    });
  });

  unittest.group('resource-EditsDeobfuscationfilesResourceApi', () {
    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.EditsDeobfuscationfilesResourceApi res =
          api.AndroidpublisherApi(mock).edits.deobfuscationfiles;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_apkVersionCode = 42;
      var arg_deobfuscationFileType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/apks/"));
        pathOffset += 6;
        index = path.indexOf('/deobfuscationFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_apkVersionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/deobfuscationFiles/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_deobfuscationFileType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeobfuscationFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, arg_apkVersionCode,
              arg_deobfuscationFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeobfuscationFilesUploadResponse(response);
      })));
    });
  });

  unittest.group('resource-EditsDetailsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsDetailsResourceApi res =
          api.AndroidpublisherApi(mock).edits.details;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/details"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EditsDetailsResourceApi res =
          api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/details"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EditsDetailsResourceApi res =
          api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/details"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });
  });

  unittest.group('resource-EditsExpansionfilesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/apks/"));
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_apkVersionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/expansionFiles/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_expansionFileType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/apks/"));
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_apkVersionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/expansionFiles/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_expansionFileType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/apks/"));
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_apkVersionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/expansionFiles/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_expansionFileType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/apks/"));
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_apkVersionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/expansionFiles/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_expansionFileType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildExpansionFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFilesUploadResponse(response);
      })));
    });
  });

  unittest.group('resource-EditsImagesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.EditsImagesResourceApi res =
          api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_imageType = 'foo';
      var arg_imageId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_language'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_imageType'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_imageId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, arg_language, arg_imageType,
              arg_imageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--deleteall', () {
      var mock = HttpServerMock();
      api.EditsImagesResourceApi res =
          api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_imageType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_language'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_imageType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildImagesDeleteAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteall(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesDeleteAllResponse(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EditsImagesResourceApi res =
          api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_imageType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_language'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_imageType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildImagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesListResponse(response);
      })));
    });

    unittest.test('method--upload', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.EditsImagesResourceApi res =
          api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_imageType = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_language'));
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_imageType'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildImagesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesUploadResponse(response);
      })));
    });
  });

  unittest.group('resource-EditsListingsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_language'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--deleteall', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/listings"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteall(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_language'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/listings"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListingsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_language'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EditsListingsResourceApi res =
          api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_language = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/listings/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_language'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });
  });

  unittest.group('resource-EditsTestersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsTestersResourceApi res =
          api.AndroidpublisherApi(mock).edits.testers;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/testers/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_track, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EditsTestersResourceApi res =
          api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/testers/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EditsTestersResourceApi res =
          api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/testers/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });
  });

  unittest.group('resource-EditsTracksResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EditsTracksResourceApi res =
          api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tracks/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_track, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EditsTracksResourceApi res =
          api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/tracks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/tracks"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTracksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTracksListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EditsTracksResourceApi res =
          api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tracks/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EditsTracksResourceApi res =
          api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = 'foo';
      var arg_editId = 'foo';
      var arg_track = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/edits/"));
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_editId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tracks/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_track'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });
  });

  unittest.group('resource-InappproductsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = 'foo';
      var arg_sku = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/inappproducts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_sku'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_sku, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = 'foo';
      var arg_sku = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/inappproducts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_sku'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_sku, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = 'foo';
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/inappproducts"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_packageName,
              autoConvertMissingPrices: arg_autoConvertMissingPrices,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = 'foo';
      var arg_token = 'foo';
      var arg_maxResults = 42;
      var arg_startIndex = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/inappproducts"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInappproductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              token: arg_token,
              maxResults: arg_maxResults,
              startIndex: arg_startIndex,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInappproductsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = 'foo';
      var arg_sku = 'foo';
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/inappproducts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_sku'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_sku,
              autoConvertMissingPrices: arg_autoConvertMissingPrices,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.InappproductsResourceApi res =
          api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = 'foo';
      var arg_sku = 'foo';
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/inappproducts/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_sku'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_sku,
              autoConvertMissingPrices: arg_autoConvertMissingPrices,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });
  });

  unittest.group('resource-InternalappsharingartifactsResourceApi', () {
    unittest.test('method--uploadapk', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.InternalappsharingartifactsResourceApi res =
          api.AndroidpublisherApi(mock).internalappsharingartifacts;
      var arg_packageName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 52),
            unittest.equals(
                "androidpublisher/v3/applications/internalappsharing/"));
        pathOffset += 52;
        index = path.indexOf('/artifacts/apk', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/artifacts/apk"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadapk(arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInternalAppSharingArtifact(response);
      })));
    });

    unittest.test('method--uploadbundle', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.InternalappsharingartifactsResourceApi res =
          api.AndroidpublisherApi(mock).internalappsharingartifacts;
      var arg_packageName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 52),
            unittest.equals(
                "androidpublisher/v3/applications/internalappsharing/"));
        pathOffset += 52;
        index = path.indexOf('/artifacts/bundle', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/artifacts/bundle"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadbundle(arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInternalAppSharingArtifact(response);
      })));
    });
  });

  unittest.group('resource-OrdersResourceApi', () {
    unittest.test('method--refund', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.AndroidpublisherApi(mock).orders;
      var arg_packageName = 'foo';
      var arg_orderId = 'foo';
      var arg_revoke = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_orderId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":refund"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["revoke"].first, unittest.equals("$arg_revoke"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refund(arg_packageName, arg_orderId,
              revoke: arg_revoke, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-PurchasesProductsResourceApi', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      api.PurchasesProductsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.products;
      var arg_request = buildProductPurchasesAcknowledgeRequest();
      var arg_packageName = 'foo';
      var arg_productId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductPurchasesAcknowledgeRequest.fromJson(json);
        checkProductPurchasesAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/purchases/products/"));
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":acknowledge"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_packageName, arg_productId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PurchasesProductsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.products;
      var arg_packageName = 'foo';
      var arg_productId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/purchases/products/"));
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_productId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_token'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProductPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_productId, arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductPurchase(response);
      })));
    });
  });

  unittest.group('resource-PurchasesSubscriptionsResourceApi', () {
    unittest.test('method--acknowledge', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_request = buildSubscriptionPurchasesAcknowledgeRequest();
      var arg_packageName = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(json);
        checkSubscriptionPurchasesAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/purchases/subscriptions/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_subscriptionId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":acknowledge"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(
              arg_request, arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("/purchases/subscriptions/tokens/"));
        pathOffset += 32;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_packageName, arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--defer', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_request = buildSubscriptionPurchasesDeferRequest();
      var arg_packageName = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SubscriptionPurchasesDeferRequest.fromJson(json);
        checkSubscriptionPurchasesDeferRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/purchases/subscriptions/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_subscriptionId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        index = path.indexOf(':defer', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":defer"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildSubscriptionPurchasesDeferResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .defer(arg_request, arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionPurchasesDeferResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/purchases/subscriptions/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_subscriptionId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_token'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubscriptionPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionPurchase(response);
      })));
    });

    unittest.test('method--refund', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/purchases/subscriptions/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_subscriptionId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":refund"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refund(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--revoke', () {
      var mock = HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = 'foo';
      var arg_subscriptionId = 'foo';
      var arg_token = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/purchases/subscriptions/"));
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_subscriptionId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/tokens/"));
        pathOffset += 8;
        index = path.indexOf(':revoke', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_token'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":revoke"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revoke(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group('resource-PurchasesVoidedpurchasesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PurchasesVoidedpurchasesResourceApi res =
          api.AndroidpublisherApi(mock).purchases.voidedpurchases;
      var arg_packageName = 'foo';
      var arg_startIndex = 42;
      var arg_maxResults = 42;
      var arg_token = 'foo';
      var arg_startTime = 'foo';
      var arg_endTime = 'foo';
      var arg_type = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/purchases/voidedpurchases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/purchases/voidedpurchases"));
        pathOffset += 26;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(
            core.int.parse(queryMap["type"].first), unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVoidedPurchasesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              startIndex: arg_startIndex,
              maxResults: arg_maxResults,
              token: arg_token,
              startTime: arg_startTime,
              endTime: arg_endTime,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVoidedPurchasesListResponse(response);
      })));
    });
  });

  unittest.group('resource-ReviewsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ReviewsResourceApi res = api.AndroidpublisherApi(mock).reviews;
      var arg_packageName = 'foo';
      var arg_reviewId = 'foo';
      var arg_translationLanguage = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reviews/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_reviewId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["translationLanguage"].first,
            unittest.equals(arg_translationLanguage));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReview());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_reviewId,
              translationLanguage: arg_translationLanguage,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReview(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ReviewsResourceApi res = api.AndroidpublisherApi(mock).reviews;
      var arg_packageName = 'foo';
      var arg_translationLanguage = 'foo';
      var arg_startIndex = 42;
      var arg_token = 'foo';
      var arg_maxResults = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/reviews', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reviews"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["translationLanguage"].first,
            unittest.equals(arg_translationLanguage));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReviewsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              translationLanguage: arg_translationLanguage,
              startIndex: arg_startIndex,
              token: arg_token,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReviewsListResponse(response);
      })));
    });

    unittest.test('method--reply', () {
      var mock = HttpServerMock();
      api.ReviewsResourceApi res = api.AndroidpublisherApi(mock).reviews;
      var arg_request = buildReviewsReplyRequest();
      var arg_packageName = 'foo';
      var arg_reviewId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReviewsReplyRequest.fromJson(json);
        checkReviewsReplyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reviews/"));
        pathOffset += 9;
        index = path.indexOf(':reply', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_reviewId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals(":reply"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReviewsReplyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reply(arg_request, arg_packageName, arg_reviewId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReviewsReplyResponse(response);
      })));
    });
  });

  unittest.group('resource-SystemapksVariantsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.SystemapksVariantsResourceApi res =
          api.AndroidpublisherApi(mock).systemapks.variants;
      var arg_request = buildVariant();
      var arg_packageName = 'foo';
      var arg_versionCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Variant.fromJson(json);
        checkVariant(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/systemApks/"));
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_versionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/variants"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_packageName, arg_versionCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVariant(response);
      })));
    });

    unittest.test('method--download', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.SystemapksVariantsResourceApi res =
          api.AndroidpublisherApi(mock).systemapks.variants;
      var arg_packageName = 'foo';
      var arg_versionCode = 'foo';
      var arg_variantId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/systemApks/"));
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_versionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/variants/"));
        pathOffset += 10;
        index = path.indexOf(':download', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_variantId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":download"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .download(arg_packageName, arg_versionCode, arg_variantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SystemapksVariantsResourceApi res =
          api.AndroidpublisherApi(mock).systemapks.variants;
      var arg_packageName = 'foo';
      var arg_versionCode = 'foo';
      var arg_variantId = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/systemApks/"));
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_versionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/variants/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_variantId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_versionCode, arg_variantId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVariant(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SystemapksVariantsResourceApi res =
          api.AndroidpublisherApi(mock).systemapks.variants;
      var arg_packageName = 'foo';
      var arg_versionCode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_packageName'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/systemApks/"));
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_versionCode'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/variants"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSystemApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_versionCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSystemApksListResponse(response);
      })));
    });
  });
}
