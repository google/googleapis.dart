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

core.int buildCounterApk = 0;
buildApk() {
  var o = new api.Apk();
  buildCounterApk++;
  if (buildCounterApk < 3) {
    o.binary = buildApkBinary();
    o.versionCode = 42;
  }
  buildCounterApk--;
  return o;
}

checkApk(api.Apk o) {
  buildCounterApk++;
  if (buildCounterApk < 3) {
    checkApkBinary(o.binary);
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterApk--;
}

core.int buildCounterApkBinary = 0;
buildApkBinary() {
  var o = new api.ApkBinary();
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    o.sha1 = "foo";
    o.sha256 = "foo";
  }
  buildCounterApkBinary--;
  return o;
}

checkApkBinary(api.ApkBinary o) {
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterApkBinary--;
}

core.int buildCounterApksAddExternallyHostedRequest = 0;
buildApksAddExternallyHostedRequest() {
  var o = new api.ApksAddExternallyHostedRequest();
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedRequest--;
  return o;
}

checkApksAddExternallyHostedRequest(api.ApksAddExternallyHostedRequest o) {
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    checkExternallyHostedApk(o.externallyHostedApk);
  }
  buildCounterApksAddExternallyHostedRequest--;
}

core.int buildCounterApksAddExternallyHostedResponse = 0;
buildApksAddExternallyHostedResponse() {
  var o = new api.ApksAddExternallyHostedResponse();
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedResponse--;
  return o;
}

checkApksAddExternallyHostedResponse(api.ApksAddExternallyHostedResponse o) {
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    checkExternallyHostedApk(o.externallyHostedApk);
  }
  buildCounterApksAddExternallyHostedResponse--;
}

buildUnnamed1071() {
  var o = new core.List<api.Apk>();
  o.add(buildApk());
  o.add(buildApk());
  return o;
}

checkUnnamed1071(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterApksListResponse = 0;
buildApksListResponse() {
  var o = new api.ApksListResponse();
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    o.apks = buildUnnamed1071();
    o.kind = "foo";
  }
  buildCounterApksListResponse--;
  return o;
}

checkApksListResponse(api.ApksListResponse o) {
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    checkUnnamed1071(o.apks);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterApksListResponse--;
}

core.int buildCounterAppDetails = 0;
buildAppDetails() {
  var o = new api.AppDetails();
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    o.contactEmail = "foo";
    o.contactPhone = "foo";
    o.contactWebsite = "foo";
    o.defaultLanguage = "foo";
  }
  buildCounterAppDetails--;
  return o;
}

checkAppDetails(api.AppDetails o) {
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
buildAppEdit() {
  var o = new api.AppEdit();
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    o.expiryTimeSeconds = "foo";
    o.id = "foo";
  }
  buildCounterAppEdit--;
  return o;
}

checkAppEdit(api.AppEdit o) {
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    unittest.expect(o.expiryTimeSeconds, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterAppEdit--;
}

core.int buildCounterBundle = 0;
buildBundle() {
  var o = new api.Bundle();
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    o.sha1 = "foo";
    o.sha256 = "foo";
    o.versionCode = 42;
  }
  buildCounterBundle--;
  return o;
}

checkBundle(api.Bundle o) {
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
  }
  buildCounterBundle--;
}

buildUnnamed1072() {
  var o = new core.List<api.Bundle>();
  o.add(buildBundle());
  o.add(buildBundle());
  return o;
}

checkUnnamed1072(core.List<api.Bundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBundle(o[0]);
  checkBundle(o[1]);
}

core.int buildCounterBundlesListResponse = 0;
buildBundlesListResponse() {
  var o = new api.BundlesListResponse();
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    o.bundles = buildUnnamed1072();
    o.kind = "foo";
  }
  buildCounterBundlesListResponse--;
  return o;
}

checkBundlesListResponse(api.BundlesListResponse o) {
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    checkUnnamed1072(o.bundles);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBundlesListResponse--;
}

core.int buildCounterComment = 0;
buildComment() {
  var o = new api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.developerComment = buildDeveloperComment();
    o.userComment = buildUserComment();
  }
  buildCounterComment--;
  return o;
}

checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkDeveloperComment(o.developerComment);
    checkUserComment(o.userComment);
  }
  buildCounterComment--;
}

buildUnnamed1073() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCountryTargeting = 0;
buildCountryTargeting() {
  var o = new api.CountryTargeting();
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    o.countries = buildUnnamed1073();
    o.includeRestOfWorld = true;
  }
  buildCounterCountryTargeting--;
  return o;
}

checkCountryTargeting(api.CountryTargeting o) {
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    checkUnnamed1073(o.countries);
    unittest.expect(o.includeRestOfWorld, unittest.isTrue);
  }
  buildCounterCountryTargeting--;
}

core.int buildCounterDeobfuscationFile = 0;
buildDeobfuscationFile() {
  var o = new api.DeobfuscationFile();
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    o.symbolType = "foo";
  }
  buildCounterDeobfuscationFile--;
  return o;
}

checkDeobfuscationFile(api.DeobfuscationFile o) {
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    unittest.expect(o.symbolType, unittest.equals('foo'));
  }
  buildCounterDeobfuscationFile--;
}

core.int buildCounterDeobfuscationFilesUploadResponse = 0;
buildDeobfuscationFilesUploadResponse() {
  var o = new api.DeobfuscationFilesUploadResponse();
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    o.deobfuscationFile = buildDeobfuscationFile();
  }
  buildCounterDeobfuscationFilesUploadResponse--;
  return o;
}

checkDeobfuscationFilesUploadResponse(api.DeobfuscationFilesUploadResponse o) {
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    checkDeobfuscationFile(o.deobfuscationFile);
  }
  buildCounterDeobfuscationFilesUploadResponse--;
}

core.int buildCounterDeveloperComment = 0;
buildDeveloperComment() {
  var o = new api.DeveloperComment();
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    o.lastModified = buildTimestamp();
    o.text = "foo";
  }
  buildCounterDeveloperComment--;
  return o;
}

checkDeveloperComment(api.DeveloperComment o) {
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    checkTimestamp(o.lastModified);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterDeveloperComment--;
}

core.int buildCounterDeviceMetadata = 0;
buildDeviceMetadata() {
  var o = new api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.cpuMake = "foo";
    o.cpuModel = "foo";
    o.deviceClass = "foo";
    o.glEsVersion = 42;
    o.manufacturer = "foo";
    o.nativePlatform = "foo";
    o.productName = "foo";
    o.ramMb = 42;
    o.screenDensityDpi = 42;
    o.screenHeightPx = 42;
    o.screenWidthPx = 42;
  }
  buildCounterDeviceMetadata--;
  return o;
}

checkDeviceMetadata(api.DeviceMetadata o) {
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

core.int buildCounterExpansionFile = 0;
buildExpansionFile() {
  var o = new api.ExpansionFile();
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    o.fileSize = "foo";
    o.referencesVersion = 42;
  }
  buildCounterExpansionFile--;
  return o;
}

checkExpansionFile(api.ExpansionFile o) {
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.referencesVersion, unittest.equals(42));
  }
  buildCounterExpansionFile--;
}

core.int buildCounterExpansionFilesUploadResponse = 0;
buildExpansionFilesUploadResponse() {
  var o = new api.ExpansionFilesUploadResponse();
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    o.expansionFile = buildExpansionFile();
  }
  buildCounterExpansionFilesUploadResponse--;
  return o;
}

checkExpansionFilesUploadResponse(api.ExpansionFilesUploadResponse o) {
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    checkExpansionFile(o.expansionFile);
  }
  buildCounterExpansionFilesUploadResponse--;
}

buildUnnamed1074() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1075() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1075(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1076() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1077() {
  var o = new core.List<api.ExternallyHostedApkUsesPermission>();
  o.add(buildExternallyHostedApkUsesPermission());
  o.add(buildExternallyHostedApkUsesPermission());
  return o;
}

checkUnnamed1077(core.List<api.ExternallyHostedApkUsesPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternallyHostedApkUsesPermission(o[0]);
  checkExternallyHostedApkUsesPermission(o[1]);
}

core.int buildCounterExternallyHostedApk = 0;
buildExternallyHostedApk() {
  var o = new api.ExternallyHostedApk();
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    o.applicationLabel = "foo";
    o.certificateBase64s = buildUnnamed1074();
    o.externallyHostedUrl = "foo";
    o.fileSha1Base64 = "foo";
    o.fileSha256Base64 = "foo";
    o.fileSize = "foo";
    o.iconBase64 = "foo";
    o.maximumSdk = 42;
    o.minimumSdk = 42;
    o.nativeCodes = buildUnnamed1075();
    o.packageName = "foo";
    o.usesFeatures = buildUnnamed1076();
    o.usesPermissions = buildUnnamed1077();
    o.versionCode = 42;
    o.versionName = "foo";
  }
  buildCounterExternallyHostedApk--;
  return o;
}

checkExternallyHostedApk(api.ExternallyHostedApk o) {
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    unittest.expect(o.applicationLabel, unittest.equals('foo'));
    checkUnnamed1074(o.certificateBase64s);
    unittest.expect(o.externallyHostedUrl, unittest.equals('foo'));
    unittest.expect(o.fileSha1Base64, unittest.equals('foo'));
    unittest.expect(o.fileSha256Base64, unittest.equals('foo'));
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.iconBase64, unittest.equals('foo'));
    unittest.expect(o.maximumSdk, unittest.equals(42));
    unittest.expect(o.minimumSdk, unittest.equals(42));
    checkUnnamed1075(o.nativeCodes);
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1076(o.usesFeatures);
    checkUnnamed1077(o.usesPermissions);
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterExternallyHostedApk--;
}

core.int buildCounterExternallyHostedApkUsesPermission = 0;
buildExternallyHostedApkUsesPermission() {
  var o = new api.ExternallyHostedApkUsesPermission();
  buildCounterExternallyHostedApkUsesPermission++;
  if (buildCounterExternallyHostedApkUsesPermission < 3) {
    o.maxSdkVersion = 42;
    o.name = "foo";
  }
  buildCounterExternallyHostedApkUsesPermission--;
  return o;
}

checkExternallyHostedApkUsesPermission(
    api.ExternallyHostedApkUsesPermission o) {
  buildCounterExternallyHostedApkUsesPermission++;
  if (buildCounterExternallyHostedApkUsesPermission < 3) {
    unittest.expect(o.maxSdkVersion, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterExternallyHostedApkUsesPermission--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.id = "foo";
    o.sha1 = "foo";
    o.url = "foo";
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.sha1, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterImage--;
}

buildUnnamed1078() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed1078(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesDeleteAllResponse = 0;
buildImagesDeleteAllResponse() {
  var o = new api.ImagesDeleteAllResponse();
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    o.deleted = buildUnnamed1078();
  }
  buildCounterImagesDeleteAllResponse--;
  return o;
}

checkImagesDeleteAllResponse(api.ImagesDeleteAllResponse o) {
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    checkUnnamed1078(o.deleted);
  }
  buildCounterImagesDeleteAllResponse--;
}

buildUnnamed1079() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed1079(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesListResponse = 0;
buildImagesListResponse() {
  var o = new api.ImagesListResponse();
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    o.images = buildUnnamed1079();
  }
  buildCounterImagesListResponse--;
  return o;
}

checkImagesListResponse(api.ImagesListResponse o) {
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    checkUnnamed1079(o.images);
  }
  buildCounterImagesListResponse--;
}

core.int buildCounterImagesUploadResponse = 0;
buildImagesUploadResponse() {
  var o = new api.ImagesUploadResponse();
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    o.image = buildImage();
  }
  buildCounterImagesUploadResponse--;
  return o;
}

checkImagesUploadResponse(api.ImagesUploadResponse o) {
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    checkImage(o.image);
  }
  buildCounterImagesUploadResponse--;
}

buildUnnamed1080() {
  var o = new core.Map<core.String, api.InAppProductListing>();
  o["x"] = buildInAppProductListing();
  o["y"] = buildInAppProductListing();
  return o;
}

checkUnnamed1080(core.Map<core.String, api.InAppProductListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProductListing(o["x"]);
  checkInAppProductListing(o["y"]);
}

buildUnnamed1081() {
  var o = new core.Map<core.String, api.Price>();
  o["x"] = buildPrice();
  o["y"] = buildPrice();
  return o;
}

checkUnnamed1081(core.Map<core.String, api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o["x"]);
  checkPrice(o["y"]);
}

core.int buildCounterInAppProduct = 0;
buildInAppProduct() {
  var o = new api.InAppProduct();
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    o.defaultLanguage = "foo";
    o.defaultPrice = buildPrice();
    o.gracePeriod = "foo";
    o.listings = buildUnnamed1080();
    o.packageName = "foo";
    o.prices = buildUnnamed1081();
    o.purchaseType = "foo";
    o.season = buildSeason();
    o.sku = "foo";
    o.status = "foo";
    o.subscriptionPeriod = "foo";
    o.trialPeriod = "foo";
  }
  buildCounterInAppProduct--;
  return o;
}

checkInAppProduct(api.InAppProduct o) {
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    unittest.expect(o.defaultLanguage, unittest.equals('foo'));
    checkPrice(o.defaultPrice);
    unittest.expect(o.gracePeriod, unittest.equals('foo'));
    checkUnnamed1080(o.listings);
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1081(o.prices);
    unittest.expect(o.purchaseType, unittest.equals('foo'));
    checkSeason(o.season);
    unittest.expect(o.sku, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subscriptionPeriod, unittest.equals('foo'));
    unittest.expect(o.trialPeriod, unittest.equals('foo'));
  }
  buildCounterInAppProduct--;
}

core.int buildCounterInAppProductListing = 0;
buildInAppProductListing() {
  var o = new api.InAppProductListing();
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    o.description = "foo";
    o.title = "foo";
  }
  buildCounterInAppProductListing--;
  return o;
}

checkInAppProductListing(api.InAppProductListing o) {
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterInAppProductListing--;
}

buildUnnamed1082() {
  var o = new core.List<api.InAppProduct>();
  o.add(buildInAppProduct());
  o.add(buildInAppProduct());
  return o;
}

checkUnnamed1082(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsListResponse = 0;
buildInappproductsListResponse() {
  var o = new api.InappproductsListResponse();
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    o.inappproduct = buildUnnamed1082();
    o.kind = "foo";
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterInappproductsListResponse--;
  return o;
}

checkInappproductsListResponse(api.InappproductsListResponse o) {
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    checkUnnamed1082(o.inappproduct);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterInappproductsListResponse--;
}

core.int buildCounterInternalAppSharingArtifact = 0;
buildInternalAppSharingArtifact() {
  var o = new api.InternalAppSharingArtifact();
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    o.certificateFingerprint = "foo";
    o.downloadUrl = "foo";
    o.sha256 = "foo";
  }
  buildCounterInternalAppSharingArtifact--;
  return o;
}

checkInternalAppSharingArtifact(api.InternalAppSharingArtifact o) {
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    unittest.expect(o.certificateFingerprint, unittest.equals('foo'));
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.sha256, unittest.equals('foo'));
  }
  buildCounterInternalAppSharingArtifact--;
}

core.int buildCounterIntroductoryPriceInfo = 0;
buildIntroductoryPriceInfo() {
  var o = new api.IntroductoryPriceInfo();
  buildCounterIntroductoryPriceInfo++;
  if (buildCounterIntroductoryPriceInfo < 3) {
    o.introductoryPriceAmountMicros = "foo";
    o.introductoryPriceCurrencyCode = "foo";
    o.introductoryPriceCycles = 42;
    o.introductoryPricePeriod = "foo";
  }
  buildCounterIntroductoryPriceInfo--;
  return o;
}

checkIntroductoryPriceInfo(api.IntroductoryPriceInfo o) {
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
buildListing() {
  var o = new api.Listing();
  buildCounterListing++;
  if (buildCounterListing < 3) {
    o.fullDescription = "foo";
    o.language = "foo";
    o.shortDescription = "foo";
    o.title = "foo";
    o.video = "foo";
  }
  buildCounterListing--;
  return o;
}

checkListing(api.Listing o) {
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

buildUnnamed1083() {
  var o = new core.List<api.Listing>();
  o.add(buildListing());
  o.add(buildListing());
  return o;
}

checkUnnamed1083(core.List<api.Listing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListing(o[0]);
  checkListing(o[1]);
}

core.int buildCounterListingsListResponse = 0;
buildListingsListResponse() {
  var o = new api.ListingsListResponse();
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    o.kind = "foo";
    o.listings = buildUnnamed1083();
  }
  buildCounterListingsListResponse--;
  return o;
}

checkListingsListResponse(api.ListingsListResponse o) {
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1083(o.listings);
  }
  buildCounterListingsListResponse--;
}

core.int buildCounterLocalizedText = 0;
buildLocalizedText() {
  var o = new api.LocalizedText();
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    o.language = "foo";
    o.text = "foo";
  }
  buildCounterLocalizedText--;
  return o;
}

checkLocalizedText(api.LocalizedText o) {
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterLocalizedText--;
}

core.int buildCounterMonthDay = 0;
buildMonthDay() {
  var o = new api.MonthDay();
  buildCounterMonthDay++;
  if (buildCounterMonthDay < 3) {
    o.day = 42;
    o.month = 42;
  }
  buildCounterMonthDay--;
  return o;
}

checkMonthDay(api.MonthDay o) {
  buildCounterMonthDay++;
  if (buildCounterMonthDay < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
  }
  buildCounterMonthDay--;
}

core.int buildCounterPageInfo = 0;
buildPageInfo() {
  var o = new api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultPerPage = 42;
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(o.resultPerPage, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.totalResults, unittest.equals(42));
  }
  buildCounterPageInfo--;
}

core.int buildCounterPrice = 0;
buildPrice() {
  var o = new api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = "foo";
    o.priceMicros = "foo";
  }
  buildCounterPrice--;
  return o;
}

checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.priceMicros, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterProductPurchase = 0;
buildProductPurchase() {
  var o = new api.ProductPurchase();
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    o.acknowledgementState = 42;
    o.consumptionState = 42;
    o.developerPayload = "foo";
    o.kind = "foo";
    o.orderId = "foo";
    o.purchaseState = 42;
    o.purchaseTimeMillis = "foo";
    o.purchaseType = 42;
  }
  buildCounterProductPurchase--;
  return o;
}

checkProductPurchase(api.ProductPurchase o) {
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    unittest.expect(o.acknowledgementState, unittest.equals(42));
    unittest.expect(o.consumptionState, unittest.equals(42));
    unittest.expect(o.developerPayload, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.purchaseState, unittest.equals(42));
    unittest.expect(o.purchaseTimeMillis, unittest.equals('foo'));
    unittest.expect(o.purchaseType, unittest.equals(42));
  }
  buildCounterProductPurchase--;
}

core.int buildCounterProductPurchasesAcknowledgeRequest = 0;
buildProductPurchasesAcknowledgeRequest() {
  var o = new api.ProductPurchasesAcknowledgeRequest();
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = "foo";
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
  return o;
}

checkProductPurchasesAcknowledgeRequest(
    api.ProductPurchasesAcknowledgeRequest o) {
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    unittest.expect(o.developerPayload, unittest.equals('foo'));
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
}

core.int buildCounterProrate = 0;
buildProrate() {
  var o = new api.Prorate();
  buildCounterProrate++;
  if (buildCounterProrate < 3) {
    o.defaultPrice = buildPrice();
    o.start = buildMonthDay();
  }
  buildCounterProrate--;
  return o;
}

checkProrate(api.Prorate o) {
  buildCounterProrate++;
  if (buildCounterProrate < 3) {
    checkPrice(o.defaultPrice);
    checkMonthDay(o.start);
  }
  buildCounterProrate--;
}

buildUnnamed1084() {
  var o = new core.List<api.Comment>();
  o.add(buildComment());
  o.add(buildComment());
  return o;
}

checkUnnamed1084(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterReview = 0;
buildReview() {
  var o = new api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.authorName = "foo";
    o.comments = buildUnnamed1084();
    o.reviewId = "foo";
  }
  buildCounterReview--;
  return o;
}

checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(o.authorName, unittest.equals('foo'));
    checkUnnamed1084(o.comments);
    unittest.expect(o.reviewId, unittest.equals('foo'));
  }
  buildCounterReview--;
}

core.int buildCounterReviewReplyResult = 0;
buildReviewReplyResult() {
  var o = new api.ReviewReplyResult();
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    o.lastEdited = buildTimestamp();
    o.replyText = "foo";
  }
  buildCounterReviewReplyResult--;
  return o;
}

checkReviewReplyResult(api.ReviewReplyResult o) {
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    checkTimestamp(o.lastEdited);
    unittest.expect(o.replyText, unittest.equals('foo'));
  }
  buildCounterReviewReplyResult--;
}

buildUnnamed1085() {
  var o = new core.List<api.Review>();
  o.add(buildReview());
  o.add(buildReview());
  return o;
}

checkUnnamed1085(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterReviewsListResponse = 0;
buildReviewsListResponse() {
  var o = new api.ReviewsListResponse();
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.reviews = buildUnnamed1085();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterReviewsListResponse--;
  return o;
}

checkReviewsListResponse(api.ReviewsListResponse o) {
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    checkPageInfo(o.pageInfo);
    checkUnnamed1085(o.reviews);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterReviewsListResponse--;
}

core.int buildCounterReviewsReplyRequest = 0;
buildReviewsReplyRequest() {
  var o = new api.ReviewsReplyRequest();
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    o.replyText = "foo";
  }
  buildCounterReviewsReplyRequest--;
  return o;
}

checkReviewsReplyRequest(api.ReviewsReplyRequest o) {
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    unittest.expect(o.replyText, unittest.equals('foo'));
  }
  buildCounterReviewsReplyRequest--;
}

core.int buildCounterReviewsReplyResponse = 0;
buildReviewsReplyResponse() {
  var o = new api.ReviewsReplyResponse();
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    o.result = buildReviewReplyResult();
  }
  buildCounterReviewsReplyResponse--;
  return o;
}

checkReviewsReplyResponse(api.ReviewsReplyResponse o) {
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    checkReviewReplyResult(o.result);
  }
  buildCounterReviewsReplyResponse--;
}

buildUnnamed1086() {
  var o = new core.List<api.Prorate>();
  o.add(buildProrate());
  o.add(buildProrate());
  return o;
}

checkUnnamed1086(core.List<api.Prorate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProrate(o[0]);
  checkProrate(o[1]);
}

core.int buildCounterSeason = 0;
buildSeason() {
  var o = new api.Season();
  buildCounterSeason++;
  if (buildCounterSeason < 3) {
    o.end = buildMonthDay();
    o.prorations = buildUnnamed1086();
    o.start = buildMonthDay();
  }
  buildCounterSeason--;
  return o;
}

checkSeason(api.Season o) {
  buildCounterSeason++;
  if (buildCounterSeason < 3) {
    checkMonthDay(o.end);
    checkUnnamed1086(o.prorations);
    checkMonthDay(o.start);
  }
  buildCounterSeason--;
}

core.int buildCounterSubscriptionCancelSurveyResult = 0;
buildSubscriptionCancelSurveyResult() {
  var o = new api.SubscriptionCancelSurveyResult();
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    o.cancelSurveyReason = 42;
    o.userInputCancelReason = "foo";
  }
  buildCounterSubscriptionCancelSurveyResult--;
  return o;
}

checkSubscriptionCancelSurveyResult(api.SubscriptionCancelSurveyResult o) {
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    unittest.expect(o.cancelSurveyReason, unittest.equals(42));
    unittest.expect(o.userInputCancelReason, unittest.equals('foo'));
  }
  buildCounterSubscriptionCancelSurveyResult--;
}

core.int buildCounterSubscriptionDeferralInfo = 0;
buildSubscriptionDeferralInfo() {
  var o = new api.SubscriptionDeferralInfo();
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    o.desiredExpiryTimeMillis = "foo";
    o.expectedExpiryTimeMillis = "foo";
  }
  buildCounterSubscriptionDeferralInfo--;
  return o;
}

checkSubscriptionDeferralInfo(api.SubscriptionDeferralInfo o) {
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    unittest.expect(o.desiredExpiryTimeMillis, unittest.equals('foo'));
    unittest.expect(o.expectedExpiryTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionDeferralInfo--;
}

core.int buildCounterSubscriptionPriceChange = 0;
buildSubscriptionPriceChange() {
  var o = new api.SubscriptionPriceChange();
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    o.newPrice = buildPrice();
    o.state = 42;
  }
  buildCounterSubscriptionPriceChange--;
  return o;
}

checkSubscriptionPriceChange(api.SubscriptionPriceChange o) {
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    checkPrice(o.newPrice);
    unittest.expect(o.state, unittest.equals(42));
  }
  buildCounterSubscriptionPriceChange--;
}

core.int buildCounterSubscriptionPurchase = 0;
buildSubscriptionPurchase() {
  var o = new api.SubscriptionPurchase();
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    o.acknowledgementState = 42;
    o.autoRenewing = true;
    o.autoResumeTimeMillis = "foo";
    o.cancelReason = 42;
    o.cancelSurveyResult = buildSubscriptionCancelSurveyResult();
    o.countryCode = "foo";
    o.developerPayload = "foo";
    o.emailAddress = "foo";
    o.expiryTimeMillis = "foo";
    o.familyName = "foo";
    o.givenName = "foo";
    o.introductoryPriceInfo = buildIntroductoryPriceInfo();
    o.kind = "foo";
    o.linkedPurchaseToken = "foo";
    o.orderId = "foo";
    o.paymentState = 42;
    o.priceAmountMicros = "foo";
    o.priceChange = buildSubscriptionPriceChange();
    o.priceCurrencyCode = "foo";
    o.profileId = "foo";
    o.profileName = "foo";
    o.purchaseType = 42;
    o.startTimeMillis = "foo";
    o.userCancellationTimeMillis = "foo";
  }
  buildCounterSubscriptionPurchase--;
  return o;
}

checkSubscriptionPurchase(api.SubscriptionPurchase o) {
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
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
    checkIntroductoryPriceInfo(o.introductoryPriceInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.linkedPurchaseToken, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.paymentState, unittest.equals(42));
    unittest.expect(o.priceAmountMicros, unittest.equals('foo'));
    checkSubscriptionPriceChange(o.priceChange);
    unittest.expect(o.priceCurrencyCode, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
    unittest.expect(o.profileName, unittest.equals('foo'));
    unittest.expect(o.purchaseType, unittest.equals(42));
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
    unittest.expect(o.userCancellationTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchase--;
}

core.int buildCounterSubscriptionPurchasesAcknowledgeRequest = 0;
buildSubscriptionPurchasesAcknowledgeRequest() {
  var o = new api.SubscriptionPurchasesAcknowledgeRequest();
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = "foo";
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
  return o;
}

checkSubscriptionPurchasesAcknowledgeRequest(
    api.SubscriptionPurchasesAcknowledgeRequest o) {
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    unittest.expect(o.developerPayload, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferRequest = 0;
buildSubscriptionPurchasesDeferRequest() {
  var o = new api.SubscriptionPurchasesDeferRequest();
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    o.deferralInfo = buildSubscriptionDeferralInfo();
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
  return o;
}

checkSubscriptionPurchasesDeferRequest(
    api.SubscriptionPurchasesDeferRequest o) {
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    checkSubscriptionDeferralInfo(o.deferralInfo);
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferResponse = 0;
buildSubscriptionPurchasesDeferResponse() {
  var o = new api.SubscriptionPurchasesDeferResponse();
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    o.newExpiryTimeMillis = "foo";
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
  return o;
}

checkSubscriptionPurchasesDeferResponse(
    api.SubscriptionPurchasesDeferResponse o) {
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    unittest.expect(o.newExpiryTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
}

buildUnnamed1087() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1087(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1088() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1088(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTesters = 0;
buildTesters() {
  var o = new api.Testers();
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    o.googleGroups = buildUnnamed1087();
    o.googlePlusCommunities = buildUnnamed1088();
  }
  buildCounterTesters--;
  return o;
}

checkTesters(api.Testers o) {
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    checkUnnamed1087(o.googleGroups);
    checkUnnamed1088(o.googlePlusCommunities);
  }
  buildCounterTesters--;
}

core.int buildCounterTimestamp = 0;
buildTimestamp() {
  var o = new api.Timestamp();
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    o.nanos = 42;
    o.seconds = "foo";
  }
  buildCounterTimestamp--;
  return o;
}

checkTimestamp(api.Timestamp o) {
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals('foo'));
  }
  buildCounterTimestamp--;
}

core.int buildCounterTokenPagination = 0;
buildTokenPagination() {
  var o = new api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.nextPageToken = "foo";
    o.previousPageToken = "foo";
  }
  buildCounterTokenPagination--;
  return o;
}

checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.previousPageToken, unittest.equals('foo'));
  }
  buildCounterTokenPagination--;
}

buildUnnamed1089() {
  var o = new core.List<api.TrackRelease>();
  o.add(buildTrackRelease());
  o.add(buildTrackRelease());
  return o;
}

checkUnnamed1089(core.List<api.TrackRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackRelease(o[0]);
  checkTrackRelease(o[1]);
}

core.int buildCounterTrack = 0;
buildTrack() {
  var o = new api.Track();
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    o.releases = buildUnnamed1089();
    o.track = "foo";
  }
  buildCounterTrack--;
  return o;
}

checkTrack(api.Track o) {
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    checkUnnamed1089(o.releases);
    unittest.expect(o.track, unittest.equals('foo'));
  }
  buildCounterTrack--;
}

buildUnnamed1090() {
  var o = new core.List<api.LocalizedText>();
  o.add(buildLocalizedText());
  o.add(buildLocalizedText());
  return o;
}

checkUnnamed1090(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

buildUnnamed1091() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1091(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTrackRelease = 0;
buildTrackRelease() {
  var o = new api.TrackRelease();
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    o.countryTargeting = buildCountryTargeting();
    o.name = "foo";
    o.releaseNotes = buildUnnamed1090();
    o.status = "foo";
    o.userFraction = 42.0;
    o.versionCodes = buildUnnamed1091();
  }
  buildCounterTrackRelease--;
  return o;
}

checkTrackRelease(api.TrackRelease o) {
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    checkCountryTargeting(o.countryTargeting);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1090(o.releaseNotes);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.userFraction, unittest.equals(42.0));
    checkUnnamed1091(o.versionCodes);
  }
  buildCounterTrackRelease--;
}

buildUnnamed1092() {
  var o = new core.List<api.Track>();
  o.add(buildTrack());
  o.add(buildTrack());
  return o;
}

checkUnnamed1092(core.List<api.Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrack(o[0]);
  checkTrack(o[1]);
}

core.int buildCounterTracksListResponse = 0;
buildTracksListResponse() {
  var o = new api.TracksListResponse();
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    o.kind = "foo";
    o.tracks = buildUnnamed1092();
  }
  buildCounterTracksListResponse--;
  return o;
}

checkTracksListResponse(api.TracksListResponse o) {
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1092(o.tracks);
  }
  buildCounterTracksListResponse--;
}

core.int buildCounterUserComment = 0;
buildUserComment() {
  var o = new api.UserComment();
  buildCounterUserComment++;
  if (buildCounterUserComment < 3) {
    o.androidOsVersion = 42;
    o.appVersionCode = 42;
    o.appVersionName = "foo";
    o.device = "foo";
    o.deviceMetadata = buildDeviceMetadata();
    o.lastModified = buildTimestamp();
    o.originalText = "foo";
    o.reviewerLanguage = "foo";
    o.starRating = 42;
    o.text = "foo";
    o.thumbsDownCount = 42;
    o.thumbsUpCount = 42;
  }
  buildCounterUserComment--;
  return o;
}

checkUserComment(api.UserComment o) {
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

core.int buildCounterVoidedPurchase = 0;
buildVoidedPurchase() {
  var o = new api.VoidedPurchase();
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    o.kind = "foo";
    o.purchaseTimeMillis = "foo";
    o.purchaseToken = "foo";
    o.voidedTimeMillis = "foo";
  }
  buildCounterVoidedPurchase--;
  return o;
}

checkVoidedPurchase(api.VoidedPurchase o) {
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.purchaseTimeMillis, unittest.equals('foo'));
    unittest.expect(o.purchaseToken, unittest.equals('foo'));
    unittest.expect(o.voidedTimeMillis, unittest.equals('foo'));
  }
  buildCounterVoidedPurchase--;
}

buildUnnamed1093() {
  var o = new core.List<api.VoidedPurchase>();
  o.add(buildVoidedPurchase());
  o.add(buildVoidedPurchase());
  return o;
}

checkUnnamed1093(core.List<api.VoidedPurchase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoidedPurchase(o[0]);
  checkVoidedPurchase(o[1]);
}

core.int buildCounterVoidedPurchasesListResponse = 0;
buildVoidedPurchasesListResponse() {
  var o = new api.VoidedPurchasesListResponse();
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.voidedPurchases = buildUnnamed1093();
  }
  buildCounterVoidedPurchasesListResponse--;
  return o;
}

checkVoidedPurchasesListResponse(api.VoidedPurchasesListResponse o) {
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
    checkUnnamed1093(o.voidedPurchases);
  }
  buildCounterVoidedPurchasesListResponse--;
}

main() {
  unittest.group("obj-schema-Apk", () {
    unittest.test("to-json--from-json", () {
      var o = buildApk();
      var od = new api.Apk.fromJson(o.toJson());
      checkApk(od);
    });
  });

  unittest.group("obj-schema-ApkBinary", () {
    unittest.test("to-json--from-json", () {
      var o = buildApkBinary();
      var od = new api.ApkBinary.fromJson(o.toJson());
      checkApkBinary(od);
    });
  });

  unittest.group("obj-schema-ApksAddExternallyHostedRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildApksAddExternallyHostedRequest();
      var od = new api.ApksAddExternallyHostedRequest.fromJson(o.toJson());
      checkApksAddExternallyHostedRequest(od);
    });
  });

  unittest.group("obj-schema-ApksAddExternallyHostedResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildApksAddExternallyHostedResponse();
      var od = new api.ApksAddExternallyHostedResponse.fromJson(o.toJson());
      checkApksAddExternallyHostedResponse(od);
    });
  });

  unittest.group("obj-schema-ApksListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildApksListResponse();
      var od = new api.ApksListResponse.fromJson(o.toJson());
      checkApksListResponse(od);
    });
  });

  unittest.group("obj-schema-AppDetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppDetails();
      var od = new api.AppDetails.fromJson(o.toJson());
      checkAppDetails(od);
    });
  });

  unittest.group("obj-schema-AppEdit", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppEdit();
      var od = new api.AppEdit.fromJson(o.toJson());
      checkAppEdit(od);
    });
  });

  unittest.group("obj-schema-Bundle", () {
    unittest.test("to-json--from-json", () {
      var o = buildBundle();
      var od = new api.Bundle.fromJson(o.toJson());
      checkBundle(od);
    });
  });

  unittest.group("obj-schema-BundlesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBundlesListResponse();
      var od = new api.BundlesListResponse.fromJson(o.toJson());
      checkBundlesListResponse(od);
    });
  });

  unittest.group("obj-schema-Comment", () {
    unittest.test("to-json--from-json", () {
      var o = buildComment();
      var od = new api.Comment.fromJson(o.toJson());
      checkComment(od);
    });
  });

  unittest.group("obj-schema-CountryTargeting", () {
    unittest.test("to-json--from-json", () {
      var o = buildCountryTargeting();
      var od = new api.CountryTargeting.fromJson(o.toJson());
      checkCountryTargeting(od);
    });
  });

  unittest.group("obj-schema-DeobfuscationFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeobfuscationFile();
      var od = new api.DeobfuscationFile.fromJson(o.toJson());
      checkDeobfuscationFile(od);
    });
  });

  unittest.group("obj-schema-DeobfuscationFilesUploadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeobfuscationFilesUploadResponse();
      var od = new api.DeobfuscationFilesUploadResponse.fromJson(o.toJson());
      checkDeobfuscationFilesUploadResponse(od);
    });
  });

  unittest.group("obj-schema-DeveloperComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeveloperComment();
      var od = new api.DeveloperComment.fromJson(o.toJson());
      checkDeveloperComment(od);
    });
  });

  unittest.group("obj-schema-DeviceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceMetadata();
      var od = new api.DeviceMetadata.fromJson(o.toJson());
      checkDeviceMetadata(od);
    });
  });

  unittest.group("obj-schema-ExpansionFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpansionFile();
      var od = new api.ExpansionFile.fromJson(o.toJson());
      checkExpansionFile(od);
    });
  });

  unittest.group("obj-schema-ExpansionFilesUploadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExpansionFilesUploadResponse();
      var od = new api.ExpansionFilesUploadResponse.fromJson(o.toJson());
      checkExpansionFilesUploadResponse(od);
    });
  });

  unittest.group("obj-schema-ExternallyHostedApk", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternallyHostedApk();
      var od = new api.ExternallyHostedApk.fromJson(o.toJson());
      checkExternallyHostedApk(od);
    });
  });

  unittest.group("obj-schema-ExternallyHostedApkUsesPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternallyHostedApkUsesPermission();
      var od = new api.ExternallyHostedApkUsesPermission.fromJson(o.toJson());
      checkExternallyHostedApkUsesPermission(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-ImagesDeleteAllResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImagesDeleteAllResponse();
      var od = new api.ImagesDeleteAllResponse.fromJson(o.toJson());
      checkImagesDeleteAllResponse(od);
    });
  });

  unittest.group("obj-schema-ImagesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImagesListResponse();
      var od = new api.ImagesListResponse.fromJson(o.toJson());
      checkImagesListResponse(od);
    });
  });

  unittest.group("obj-schema-ImagesUploadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImagesUploadResponse();
      var od = new api.ImagesUploadResponse.fromJson(o.toJson());
      checkImagesUploadResponse(od);
    });
  });

  unittest.group("obj-schema-InAppProduct", () {
    unittest.test("to-json--from-json", () {
      var o = buildInAppProduct();
      var od = new api.InAppProduct.fromJson(o.toJson());
      checkInAppProduct(od);
    });
  });

  unittest.group("obj-schema-InAppProductListing", () {
    unittest.test("to-json--from-json", () {
      var o = buildInAppProductListing();
      var od = new api.InAppProductListing.fromJson(o.toJson());
      checkInAppProductListing(od);
    });
  });

  unittest.group("obj-schema-InappproductsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsListResponse();
      var od = new api.InappproductsListResponse.fromJson(o.toJson());
      checkInappproductsListResponse(od);
    });
  });

  unittest.group("obj-schema-InternalAppSharingArtifact", () {
    unittest.test("to-json--from-json", () {
      var o = buildInternalAppSharingArtifact();
      var od = new api.InternalAppSharingArtifact.fromJson(o.toJson());
      checkInternalAppSharingArtifact(od);
    });
  });

  unittest.group("obj-schema-IntroductoryPriceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntroductoryPriceInfo();
      var od = new api.IntroductoryPriceInfo.fromJson(o.toJson());
      checkIntroductoryPriceInfo(od);
    });
  });

  unittest.group("obj-schema-Listing", () {
    unittest.test("to-json--from-json", () {
      var o = buildListing();
      var od = new api.Listing.fromJson(o.toJson());
      checkListing(od);
    });
  });

  unittest.group("obj-schema-ListingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListingsListResponse();
      var od = new api.ListingsListResponse.fromJson(o.toJson());
      checkListingsListResponse(od);
    });
  });

  unittest.group("obj-schema-LocalizedText", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocalizedText();
      var od = new api.LocalizedText.fromJson(o.toJson());
      checkLocalizedText(od);
    });
  });

  unittest.group("obj-schema-MonthDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildMonthDay();
      var od = new api.MonthDay.fromJson(o.toJson());
      checkMonthDay(od);
    });
  });

  unittest.group("obj-schema-PageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPageInfo();
      var od = new api.PageInfo.fromJson(o.toJson());
      checkPageInfo(od);
    });
  });

  unittest.group("obj-schema-Price", () {
    unittest.test("to-json--from-json", () {
      var o = buildPrice();
      var od = new api.Price.fromJson(o.toJson());
      checkPrice(od);
    });
  });

  unittest.group("obj-schema-ProductPurchase", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPurchase();
      var od = new api.ProductPurchase.fromJson(o.toJson());
      checkProductPurchase(od);
    });
  });

  unittest.group("obj-schema-ProductPurchasesAcknowledgeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPurchasesAcknowledgeRequest();
      var od = new api.ProductPurchasesAcknowledgeRequest.fromJson(o.toJson());
      checkProductPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group("obj-schema-Prorate", () {
    unittest.test("to-json--from-json", () {
      var o = buildProrate();
      var od = new api.Prorate.fromJson(o.toJson());
      checkProrate(od);
    });
  });

  unittest.group("obj-schema-Review", () {
    unittest.test("to-json--from-json", () {
      var o = buildReview();
      var od = new api.Review.fromJson(o.toJson());
      checkReview(od);
    });
  });

  unittest.group("obj-schema-ReviewReplyResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildReviewReplyResult();
      var od = new api.ReviewReplyResult.fromJson(o.toJson());
      checkReviewReplyResult(od);
    });
  });

  unittest.group("obj-schema-ReviewsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReviewsListResponse();
      var od = new api.ReviewsListResponse.fromJson(o.toJson());
      checkReviewsListResponse(od);
    });
  });

  unittest.group("obj-schema-ReviewsReplyRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReviewsReplyRequest();
      var od = new api.ReviewsReplyRequest.fromJson(o.toJson());
      checkReviewsReplyRequest(od);
    });
  });

  unittest.group("obj-schema-ReviewsReplyResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReviewsReplyResponse();
      var od = new api.ReviewsReplyResponse.fromJson(o.toJson());
      checkReviewsReplyResponse(od);
    });
  });

  unittest.group("obj-schema-Season", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeason();
      var od = new api.Season.fromJson(o.toJson());
      checkSeason(od);
    });
  });

  unittest.group("obj-schema-SubscriptionCancelSurveyResult", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionCancelSurveyResult();
      var od = new api.SubscriptionCancelSurveyResult.fromJson(o.toJson());
      checkSubscriptionCancelSurveyResult(od);
    });
  });

  unittest.group("obj-schema-SubscriptionDeferralInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionDeferralInfo();
      var od = new api.SubscriptionDeferralInfo.fromJson(o.toJson());
      checkSubscriptionDeferralInfo(od);
    });
  });

  unittest.group("obj-schema-SubscriptionPriceChange", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPriceChange();
      var od = new api.SubscriptionPriceChange.fromJson(o.toJson());
      checkSubscriptionPriceChange(od);
    });
  });

  unittest.group("obj-schema-SubscriptionPurchase", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPurchase();
      var od = new api.SubscriptionPurchase.fromJson(o.toJson());
      checkSubscriptionPurchase(od);
    });
  });

  unittest.group("obj-schema-SubscriptionPurchasesAcknowledgeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPurchasesAcknowledgeRequest();
      var od =
          new api.SubscriptionPurchasesAcknowledgeRequest.fromJson(o.toJson());
      checkSubscriptionPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group("obj-schema-SubscriptionPurchasesDeferRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPurchasesDeferRequest();
      var od = new api.SubscriptionPurchasesDeferRequest.fromJson(o.toJson());
      checkSubscriptionPurchasesDeferRequest(od);
    });
  });

  unittest.group("obj-schema-SubscriptionPurchasesDeferResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPurchasesDeferResponse();
      var od = new api.SubscriptionPurchasesDeferResponse.fromJson(o.toJson());
      checkSubscriptionPurchasesDeferResponse(od);
    });
  });

  unittest.group("obj-schema-Testers", () {
    unittest.test("to-json--from-json", () {
      var o = buildTesters();
      var od = new api.Testers.fromJson(o.toJson());
      checkTesters(od);
    });
  });

  unittest.group("obj-schema-Timestamp", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimestamp();
      var od = new api.Timestamp.fromJson(o.toJson());
      checkTimestamp(od);
    });
  });

  unittest.group("obj-schema-TokenPagination", () {
    unittest.test("to-json--from-json", () {
      var o = buildTokenPagination();
      var od = new api.TokenPagination.fromJson(o.toJson());
      checkTokenPagination(od);
    });
  });

  unittest.group("obj-schema-Track", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrack();
      var od = new api.Track.fromJson(o.toJson());
      checkTrack(od);
    });
  });

  unittest.group("obj-schema-TrackRelease", () {
    unittest.test("to-json--from-json", () {
      var o = buildTrackRelease();
      var od = new api.TrackRelease.fromJson(o.toJson());
      checkTrackRelease(od);
    });
  });

  unittest.group("obj-schema-TracksListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTracksListResponse();
      var od = new api.TracksListResponse.fromJson(o.toJson());
      checkTracksListResponse(od);
    });
  });

  unittest.group("obj-schema-UserComment", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserComment();
      var od = new api.UserComment.fromJson(o.toJson());
      checkUserComment(od);
    });
  });

  unittest.group("obj-schema-VoidedPurchase", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoidedPurchase();
      var od = new api.VoidedPurchase.fromJson(o.toJson());
      checkVoidedPurchase(od);
    });
  });

  unittest.group("obj-schema-VoidedPurchasesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildVoidedPurchasesListResponse();
      var od = new api.VoidedPurchasesListResponse.fromJson(o.toJson());
      checkVoidedPurchasesListResponse(od);
    });
  });

  unittest.group("resource-EditsResourceApi", () {
    unittest.test("method--commit", () {
      var mock = new HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppEdit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppEdit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_request = buildAppEdit();
      var arg_packageName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AppEdit.fromJson(json);
        checkAppEdit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppEdit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--validate", () {
      var mock = new HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppEdit());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppEdit(response);
      })));
    });
  });

  unittest.group("resource-EditsApksResourceApi", () {
    unittest.test("method--addexternallyhosted", () {
      var mock = new HttpServerMock();
      api.EditsApksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.apks;
      var arg_request = buildApksAddExternallyHostedRequest();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ApksAddExternallyHostedRequest.fromJson(json);
        checkApksAddExternallyHostedRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildApksAddExternallyHostedResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .addexternallyhosted(arg_request, arg_packageName, arg_editId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApksAddExternallyHostedResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EditsApksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildApksListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApksListResponse(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.EditsApksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildApk());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApk(response);
      })));
    });
  });

  unittest.group("resource-EditsBundlesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EditsBundlesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.bundles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildBundlesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBundlesListResponse(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.EditsBundlesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.bundles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_ackBundleInstallationWarning = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["ackBundleInstallationWarning"].first,
            unittest.equals("$arg_ackBundleInstallationWarning"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBundle());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-EditsDeobfuscationfilesResourceApi", () {
    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.EditsDeobfuscationfilesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.deobfuscationfiles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_deobfuscationFileType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildDeobfuscationFilesUploadResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-EditsDetailsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsDetailsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.details;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppDetails());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EditsDetailsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppDetails());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EditsDetailsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildAppDetails());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAppDetails(response);
      })));
    });
  });

  unittest.group("resource-EditsExpansionfilesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildExpansionFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildExpansionFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildExpansionFile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_apkVersionCode,
              arg_expansionFileType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.EditsExpansionfilesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildExpansionFilesUploadResponse());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-EditsImagesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EditsImagesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      var arg_imageId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, arg_language, arg_imageType,
              arg_imageId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--deleteall", () {
      var mock = new HttpServerMock();
      api.EditsImagesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildImagesDeleteAllResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteall(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesDeleteAllResponse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EditsImagesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildImagesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesListResponse(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.EditsImagesResourceApi res =
          new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildImagesUploadResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .upload(arg_packageName, arg_editId, arg_language, arg_imageType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkImagesUploadResponse(response);
      })));
    });
  });

  unittest.group("resource-EditsListingsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--deleteall", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteall(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildListing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_language, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildListingsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListingsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildListing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EditsListingsResourceApi res =
          new api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildListing());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_language,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListing(response);
      })));
    });
  });

  unittest.group("resource-EditsTestersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsTestersResourceApi res =
          new api.AndroidpublisherApi(mock).edits.testers;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTesters());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_track, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EditsTestersResourceApi res =
          new api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTesters());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EditsTestersResourceApi res =
          new api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTesters());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTesters(response);
      })));
    });
  });

  unittest.group("resource-EditsTracksResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EditsTracksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTrack());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_editId, arg_track, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EditsTracksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTracksListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName, arg_editId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTracksListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EditsTracksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTrack());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.EditsTracksResourceApi res =
          new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildTrack());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_packageName, arg_editId, arg_track,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTrack(response);
      })));
    });
  });

  unittest.group("resource-InappproductsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_packageName, arg_sku, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildInAppProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_sku, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--insert", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInAppProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_packageName,
              autoConvertMissingPrices: arg_autoConvertMissingPrices,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_maxResults = 42;
      var arg_startIndex = 42;
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInappproductsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              maxResults: arg_maxResults,
              startIndex: arg_startIndex,
              token: arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInappproductsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInAppProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_packageName, arg_sku,
              autoConvertMissingPrices: arg_autoConvertMissingPrices,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.InappproductsResourceApi res =
          new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_autoConvertMissingPrices = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["autoConvertMissingPrices"].first,
            unittest.equals("$arg_autoConvertMissingPrices"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInAppProduct());
        return new async.Future.value(stringResponse(200, h, resp));
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

  unittest.group("resource-InternalappsharingartifactsResourceApi", () {
    unittest.test("method--uploadapk", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.InternalappsharingartifactsResourceApi res =
          new api.AndroidpublisherApi(mock).internalappsharingartifacts;
      var arg_packageName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("internalappsharing/"));
        pathOffset += 19;
        index = path.indexOf("/artifacts/apk", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_packageName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/artifacts/apk"));
        pathOffset += 14;

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
        var resp = convert.json.encode(buildInternalAppSharingArtifact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadapk(arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInternalAppSharingArtifact(response);
      })));
    });

    unittest.test("method--uploadbundle", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.InternalappsharingartifactsResourceApi res =
          new api.AndroidpublisherApi(mock).internalappsharingartifacts;
      var arg_packageName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("androidpublisher/v3/applications/"));
        pathOffset += 33;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("internalappsharing/"));
        pathOffset += 19;
        index = path.indexOf("/artifacts/bundle", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_packageName"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/artifacts/bundle"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildInternalAppSharingArtifact());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .uploadbundle(arg_packageName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInternalAppSharingArtifact(response);
      })));
    });
  });

  unittest.group("resource-OrdersResourceApi", () {
    unittest.test("method--refund", () {
      var mock = new HttpServerMock();
      api.OrdersResourceApi res = new api.AndroidpublisherApi(mock).orders;
      var arg_packageName = "foo";
      var arg_orderId = "foo";
      var arg_revoke = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["revoke"].first, unittest.equals("$arg_revoke"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refund(arg_packageName, arg_orderId,
              revoke: arg_revoke, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-PurchasesProductsResourceApi", () {
    unittest.test("method--acknowledge", () {
      var mock = new HttpServerMock();
      api.PurchasesProductsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.products;
      var arg_request = buildProductPurchasesAcknowledgeRequest();
      var arg_packageName = "foo";
      var arg_productId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ProductPurchasesAcknowledgeRequest.fromJson(json);
        checkProductPurchasesAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(arg_request, arg_packageName, arg_productId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PurchasesProductsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.products;
      var arg_packageName = "foo";
      var arg_productId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildProductPurchase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_productId, arg_token, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductPurchase(response);
      })));
    });
  });

  unittest.group("resource-PurchasesSubscriptionsResourceApi", () {
    unittest.test("method--acknowledge", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_request = buildSubscriptionPurchasesAcknowledgeRequest();
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            new api.SubscriptionPurchasesAcknowledgeRequest.fromJson(json);
        checkSubscriptionPurchasesAcknowledgeRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .acknowledge(
              arg_request, arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--defer", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_request = buildSubscriptionPurchasesDeferRequest();
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SubscriptionPurchasesDeferRequest.fromJson(json);
        checkSubscriptionPurchasesDeferRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp =
            convert.json.encode(buildSubscriptionPurchasesDeferResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .defer(arg_request, arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionPurchasesDeferResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildSubscriptionPurchase());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionPurchase(response);
      })));
    });

    unittest.test("method--refund", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .refund(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--revoke", () {
      var mock = new HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .revoke(arg_packageName, arg_subscriptionId, arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });
  });

  unittest.group("resource-PurchasesVoidedpurchasesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.PurchasesVoidedpurchasesResourceApi res =
          new api.AndroidpublisherApi(mock).purchases.voidedpurchases;
      var arg_packageName = "foo";
      var arg_endTime = "foo";
      var arg_maxResults = 42;
      var arg_startIndex = 42;
      var arg_startTime = "foo";
      var arg_token = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildVoidedPurchasesListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              endTime: arg_endTime,
              maxResults: arg_maxResults,
              startIndex: arg_startIndex,
              startTime: arg_startTime,
              token: arg_token,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVoidedPurchasesListResponse(response);
      })));
    });
  });

  unittest.group("resource-ReviewsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ReviewsResourceApi res = new api.AndroidpublisherApi(mock).reviews;
      var arg_packageName = "foo";
      var arg_reviewId = "foo";
      var arg_translationLanguage = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["translationLanguage"].first,
            unittest.equals(arg_translationLanguage));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReview());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_packageName, arg_reviewId,
              translationLanguage: arg_translationLanguage,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReview(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ReviewsResourceApi res = new api.AndroidpublisherApi(mock).reviews;
      var arg_packageName = "foo";
      var arg_maxResults = 42;
      var arg_startIndex = 42;
      var arg_token = "foo";
      var arg_translationLanguage = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["startIndex"].first),
            unittest.equals(arg_startIndex));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));
        unittest.expect(queryMap["translationLanguage"].first,
            unittest.equals(arg_translationLanguage));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReviewsListResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_packageName,
              maxResults: arg_maxResults,
              startIndex: arg_startIndex,
              token: arg_token,
              translationLanguage: arg_translationLanguage,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReviewsListResponse(response);
      })));
    });

    unittest.test("method--reply", () {
      var mock = new HttpServerMock();
      api.ReviewsResourceApi res = new api.AndroidpublisherApi(mock).reviews;
      var arg_request = buildReviewsReplyRequest();
      var arg_packageName = "foo";
      var arg_reviewId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReviewsReplyRequest.fromJson(json);
        checkReviewsReplyRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.json.encode(buildReviewsReplyResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reply(arg_request, arg_packageName, arg_reviewId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReviewsReplyResponse(response);
      })));
    });
  });
}
