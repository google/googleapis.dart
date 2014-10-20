library googleapis.androidpublisher.v2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/androidpublisher/v2.dart' as api;



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
  }
  buildCounterApkBinary--;
  return o;
}

checkApkBinary(api.ApkBinary o) {
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    unittest.expect(o.sha1, unittest.equals('foo'));
  }
  buildCounterApkBinary--;
}

core.int buildCounterApkListing = 0;
buildApkListing() {
  var o = new api.ApkListing();
  buildCounterApkListing++;
  if (buildCounterApkListing < 3) {
    o.language = "foo";
    o.recentChanges = "foo";
  }
  buildCounterApkListing--;
  return o;
}

checkApkListing(api.ApkListing o) {
  buildCounterApkListing++;
  if (buildCounterApkListing < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.recentChanges, unittest.equals('foo'));
  }
  buildCounterApkListing--;
}

buildUnnamed1029() {
  var o = new core.List<api.ApkListing>();
  o.add(buildApkListing());
  o.add(buildApkListing());
  return o;
}

checkUnnamed1029(core.List<api.ApkListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApkListing(o[0]);
  checkApkListing(o[1]);
}

core.int buildCounterApkListingsListResponse = 0;
buildApkListingsListResponse() {
  var o = new api.ApkListingsListResponse();
  buildCounterApkListingsListResponse++;
  if (buildCounterApkListingsListResponse < 3) {
    o.kind = "foo";
    o.listings = buildUnnamed1029();
  }
  buildCounterApkListingsListResponse--;
  return o;
}

checkApkListingsListResponse(api.ApkListingsListResponse o) {
  buildCounterApkListingsListResponse++;
  if (buildCounterApkListingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1029(o.listings);
  }
  buildCounterApkListingsListResponse--;
}

buildUnnamed1030() {
  var o = new core.List<api.Apk>();
  o.add(buildApk());
  o.add(buildApk());
  return o;
}

checkUnnamed1030(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterApksListResponse = 0;
buildApksListResponse() {
  var o = new api.ApksListResponse();
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    o.apks = buildUnnamed1030();
    o.kind = "foo";
  }
  buildCounterApksListResponse--;
  return o;
}

checkApksListResponse(api.ApksListResponse o) {
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    checkUnnamed1030(o.apks);
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

buildUnnamed1031() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed1031(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesDeleteAllResponse = 0;
buildImagesDeleteAllResponse() {
  var o = new api.ImagesDeleteAllResponse();
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    o.deleted = buildUnnamed1031();
  }
  buildCounterImagesDeleteAllResponse--;
  return o;
}

checkImagesDeleteAllResponse(api.ImagesDeleteAllResponse o) {
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    checkUnnamed1031(o.deleted);
  }
  buildCounterImagesDeleteAllResponse--;
}

buildUnnamed1032() {
  var o = new core.List<api.Image>();
  o.add(buildImage());
  o.add(buildImage());
  return o;
}

checkUnnamed1032(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesListResponse = 0;
buildImagesListResponse() {
  var o = new api.ImagesListResponse();
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    o.images = buildUnnamed1032();
  }
  buildCounterImagesListResponse--;
  return o;
}

checkImagesListResponse(api.ImagesListResponse o) {
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    checkUnnamed1032(o.images);
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

buildUnnamed1033() {
  var o = new core.Map<core.String, api.InAppProductListing>();
  o["x"] = buildInAppProductListing();
  o["y"] = buildInAppProductListing();
  return o;
}

checkUnnamed1033(core.Map<core.String, api.InAppProductListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProductListing(o["x"]);
  checkInAppProductListing(o["y"]);
}

buildUnnamed1034() {
  var o = new core.Map<core.String, api.Price>();
  o["x"] = buildPrice();
  o["y"] = buildPrice();
  return o;
}

checkUnnamed1034(core.Map<core.String, api.Price> o) {
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
    o.listings = buildUnnamed1033();
    o.packageName = "foo";
    o.prices = buildUnnamed1034();
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
    checkUnnamed1033(o.listings);
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1034(o.prices);
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

buildUnnamed1035() {
  var o = new core.List<api.InappproductsBatchRequestEntry>();
  o.add(buildInappproductsBatchRequestEntry());
  o.add(buildInappproductsBatchRequestEntry());
  return o;
}

checkUnnamed1035(core.List<api.InappproductsBatchRequestEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInappproductsBatchRequestEntry(o[0]);
  checkInappproductsBatchRequestEntry(o[1]);
}

core.int buildCounterInappproductsBatchRequest = 0;
buildInappproductsBatchRequest() {
  var o = new api.InappproductsBatchRequest();
  buildCounterInappproductsBatchRequest++;
  if (buildCounterInappproductsBatchRequest < 3) {
    o.entrys = buildUnnamed1035();
  }
  buildCounterInappproductsBatchRequest--;
  return o;
}

checkInappproductsBatchRequest(api.InappproductsBatchRequest o) {
  buildCounterInappproductsBatchRequest++;
  if (buildCounterInappproductsBatchRequest < 3) {
    checkUnnamed1035(o.entrys);
  }
  buildCounterInappproductsBatchRequest--;
}

core.int buildCounterInappproductsBatchRequestEntry = 0;
buildInappproductsBatchRequestEntry() {
  var o = new api.InappproductsBatchRequestEntry();
  buildCounterInappproductsBatchRequestEntry++;
  if (buildCounterInappproductsBatchRequestEntry < 3) {
    o.batchId = 42;
    o.inappproductsinsertrequest = buildInappproductsInsertRequest();
    o.inappproductsupdaterequest = buildInappproductsUpdateRequest();
    o.methodName = "foo";
  }
  buildCounterInappproductsBatchRequestEntry--;
  return o;
}

checkInappproductsBatchRequestEntry(api.InappproductsBatchRequestEntry o) {
  buildCounterInappproductsBatchRequestEntry++;
  if (buildCounterInappproductsBatchRequestEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkInappproductsInsertRequest(o.inappproductsinsertrequest);
    checkInappproductsUpdateRequest(o.inappproductsupdaterequest);
    unittest.expect(o.methodName, unittest.equals('foo'));
  }
  buildCounterInappproductsBatchRequestEntry--;
}

buildUnnamed1036() {
  var o = new core.List<api.InappproductsBatchResponseEntry>();
  o.add(buildInappproductsBatchResponseEntry());
  o.add(buildInappproductsBatchResponseEntry());
  return o;
}

checkUnnamed1036(core.List<api.InappproductsBatchResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInappproductsBatchResponseEntry(o[0]);
  checkInappproductsBatchResponseEntry(o[1]);
}

core.int buildCounterInappproductsBatchResponse = 0;
buildInappproductsBatchResponse() {
  var o = new api.InappproductsBatchResponse();
  buildCounterInappproductsBatchResponse++;
  if (buildCounterInappproductsBatchResponse < 3) {
    o.entrys = buildUnnamed1036();
    o.kind = "foo";
  }
  buildCounterInappproductsBatchResponse--;
  return o;
}

checkInappproductsBatchResponse(api.InappproductsBatchResponse o) {
  buildCounterInappproductsBatchResponse++;
  if (buildCounterInappproductsBatchResponse < 3) {
    checkUnnamed1036(o.entrys);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterInappproductsBatchResponse--;
}

core.int buildCounterInappproductsBatchResponseEntry = 0;
buildInappproductsBatchResponseEntry() {
  var o = new api.InappproductsBatchResponseEntry();
  buildCounterInappproductsBatchResponseEntry++;
  if (buildCounterInappproductsBatchResponseEntry < 3) {
    o.batchId = 42;
    o.inappproductsinsertresponse = buildInappproductsInsertResponse();
    o.inappproductsupdateresponse = buildInappproductsUpdateResponse();
  }
  buildCounterInappproductsBatchResponseEntry--;
  return o;
}

checkInappproductsBatchResponseEntry(api.InappproductsBatchResponseEntry o) {
  buildCounterInappproductsBatchResponseEntry++;
  if (buildCounterInappproductsBatchResponseEntry < 3) {
    unittest.expect(o.batchId, unittest.equals(42));
    checkInappproductsInsertResponse(o.inappproductsinsertresponse);
    checkInappproductsUpdateResponse(o.inappproductsupdateresponse);
  }
  buildCounterInappproductsBatchResponseEntry--;
}

core.int buildCounterInappproductsInsertRequest = 0;
buildInappproductsInsertRequest() {
  var o = new api.InappproductsInsertRequest();
  buildCounterInappproductsInsertRequest++;
  if (buildCounterInappproductsInsertRequest < 3) {
    o.inappproduct = buildInAppProduct();
  }
  buildCounterInappproductsInsertRequest--;
  return o;
}

checkInappproductsInsertRequest(api.InappproductsInsertRequest o) {
  buildCounterInappproductsInsertRequest++;
  if (buildCounterInappproductsInsertRequest < 3) {
    checkInAppProduct(o.inappproduct);
  }
  buildCounterInappproductsInsertRequest--;
}

core.int buildCounterInappproductsInsertResponse = 0;
buildInappproductsInsertResponse() {
  var o = new api.InappproductsInsertResponse();
  buildCounterInappproductsInsertResponse++;
  if (buildCounterInappproductsInsertResponse < 3) {
    o.inappproduct = buildInAppProduct();
  }
  buildCounterInappproductsInsertResponse--;
  return o;
}

checkInappproductsInsertResponse(api.InappproductsInsertResponse o) {
  buildCounterInappproductsInsertResponse++;
  if (buildCounterInappproductsInsertResponse < 3) {
    checkInAppProduct(o.inappproduct);
  }
  buildCounterInappproductsInsertResponse--;
}

buildUnnamed1037() {
  var o = new core.List<api.InAppProduct>();
  o.add(buildInAppProduct());
  o.add(buildInAppProduct());
  return o;
}

checkUnnamed1037(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsListResponse = 0;
buildInappproductsListResponse() {
  var o = new api.InappproductsListResponse();
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    o.inappproduct = buildUnnamed1037();
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
    checkUnnamed1037(o.inappproduct);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPageInfo(o.pageInfo);
    checkTokenPagination(o.tokenPagination);
  }
  buildCounterInappproductsListResponse--;
}

core.int buildCounterInappproductsUpdateRequest = 0;
buildInappproductsUpdateRequest() {
  var o = new api.InappproductsUpdateRequest();
  buildCounterInappproductsUpdateRequest++;
  if (buildCounterInappproductsUpdateRequest < 3) {
    o.inappproduct = buildInAppProduct();
  }
  buildCounterInappproductsUpdateRequest--;
  return o;
}

checkInappproductsUpdateRequest(api.InappproductsUpdateRequest o) {
  buildCounterInappproductsUpdateRequest++;
  if (buildCounterInappproductsUpdateRequest < 3) {
    checkInAppProduct(o.inappproduct);
  }
  buildCounterInappproductsUpdateRequest--;
}

core.int buildCounterInappproductsUpdateResponse = 0;
buildInappproductsUpdateResponse() {
  var o = new api.InappproductsUpdateResponse();
  buildCounterInappproductsUpdateResponse++;
  if (buildCounterInappproductsUpdateResponse < 3) {
    o.inappproduct = buildInAppProduct();
  }
  buildCounterInappproductsUpdateResponse--;
  return o;
}

checkInappproductsUpdateResponse(api.InappproductsUpdateResponse o) {
  buildCounterInappproductsUpdateResponse++;
  if (buildCounterInappproductsUpdateResponse < 3) {
    checkInAppProduct(o.inappproduct);
  }
  buildCounterInappproductsUpdateResponse--;
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

buildUnnamed1038() {
  var o = new core.List<api.Listing>();
  o.add(buildListing());
  o.add(buildListing());
  return o;
}

checkUnnamed1038(core.List<api.Listing> o) {
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
    o.listings = buildUnnamed1038();
  }
  buildCounterListingsListResponse--;
  return o;
}

checkListingsListResponse(api.ListingsListResponse o) {
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1038(o.listings);
  }
  buildCounterListingsListResponse--;
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
    o.consumptionState = 42;
    o.developerPayload = "foo";
    o.kind = "foo";
    o.purchaseState = 42;
    o.purchaseTimeMillis = "foo";
  }
  buildCounterProductPurchase--;
  return o;
}

checkProductPurchase(api.ProductPurchase o) {
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    unittest.expect(o.consumptionState, unittest.equals(42));
    unittest.expect(o.developerPayload, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.purchaseState, unittest.equals(42));
    unittest.expect(o.purchaseTimeMillis, unittest.equals('foo'));
  }
  buildCounterProductPurchase--;
}

core.int buildCounterSeason = 0;
buildSeason() {
  var o = new api.Season();
  buildCounterSeason++;
  if (buildCounterSeason < 3) {
    o.end = buildMonthDay();
    o.start = buildMonthDay();
  }
  buildCounterSeason--;
  return o;
}

checkSeason(api.Season o) {
  buildCounterSeason++;
  if (buildCounterSeason < 3) {
    checkMonthDay(o.end);
    checkMonthDay(o.start);
  }
  buildCounterSeason--;
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

core.int buildCounterSubscriptionPurchase = 0;
buildSubscriptionPurchase() {
  var o = new api.SubscriptionPurchase();
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    o.autoRenewing = true;
    o.expiryTimeMillis = "foo";
    o.kind = "foo";
    o.startTimeMillis = "foo";
  }
  buildCounterSubscriptionPurchase--;
  return o;
}

checkSubscriptionPurchase(api.SubscriptionPurchase o) {
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    unittest.expect(o.autoRenewing, unittest.isTrue);
    unittest.expect(o.expiryTimeMillis, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchase--;
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

checkSubscriptionPurchasesDeferRequest(api.SubscriptionPurchasesDeferRequest o) {
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

checkSubscriptionPurchasesDeferResponse(api.SubscriptionPurchasesDeferResponse o) {
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    unittest.expect(o.newExpiryTimeMillis, unittest.equals('foo'));
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
}

buildUnnamed1039() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1039(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1040() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1040(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTesters = 0;
buildTesters() {
  var o = new api.Testers();
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    o.googleGroups = buildUnnamed1039();
    o.googlePlusCommunities = buildUnnamed1040();
  }
  buildCounterTesters--;
  return o;
}

checkTesters(api.Testers o) {
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    checkUnnamed1039(o.googleGroups);
    checkUnnamed1040(o.googlePlusCommunities);
  }
  buildCounterTesters--;
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

buildUnnamed1041() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1041(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterTrack = 0;
buildTrack() {
  var o = new api.Track();
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    o.track = "foo";
    o.userFraction = 42.0;
    o.versionCodes = buildUnnamed1041();
  }
  buildCounterTrack--;
  return o;
}

checkTrack(api.Track o) {
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    unittest.expect(o.track, unittest.equals('foo'));
    unittest.expect(o.userFraction, unittest.equals(42.0));
    checkUnnamed1041(o.versionCodes);
  }
  buildCounterTrack--;
}

buildUnnamed1042() {
  var o = new core.List<api.Track>();
  o.add(buildTrack());
  o.add(buildTrack());
  return o;
}

checkUnnamed1042(core.List<api.Track> o) {
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
    o.tracks = buildUnnamed1042();
  }
  buildCounterTracksListResponse--;
  return o;
}

checkTracksListResponse(api.TracksListResponse o) {
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1042(o.tracks);
  }
  buildCounterTracksListResponse--;
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


  unittest.group("obj-schema-ApkListing", () {
    unittest.test("to-json--from-json", () {
      var o = buildApkListing();
      var od = new api.ApkListing.fromJson(o.toJson());
      checkApkListing(od);
    });
  });


  unittest.group("obj-schema-ApkListingsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildApkListingsListResponse();
      var od = new api.ApkListingsListResponse.fromJson(o.toJson());
      checkApkListingsListResponse(od);
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


  unittest.group("obj-schema-InappproductsBatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsBatchRequest();
      var od = new api.InappproductsBatchRequest.fromJson(o.toJson());
      checkInappproductsBatchRequest(od);
    });
  });


  unittest.group("obj-schema-InappproductsBatchRequestEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsBatchRequestEntry();
      var od = new api.InappproductsBatchRequestEntry.fromJson(o.toJson());
      checkInappproductsBatchRequestEntry(od);
    });
  });


  unittest.group("obj-schema-InappproductsBatchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsBatchResponse();
      var od = new api.InappproductsBatchResponse.fromJson(o.toJson());
      checkInappproductsBatchResponse(od);
    });
  });


  unittest.group("obj-schema-InappproductsBatchResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsBatchResponseEntry();
      var od = new api.InappproductsBatchResponseEntry.fromJson(o.toJson());
      checkInappproductsBatchResponseEntry(od);
    });
  });


  unittest.group("obj-schema-InappproductsInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsInsertRequest();
      var od = new api.InappproductsInsertRequest.fromJson(o.toJson());
      checkInappproductsInsertRequest(od);
    });
  });


  unittest.group("obj-schema-InappproductsInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsInsertResponse();
      var od = new api.InappproductsInsertResponse.fromJson(o.toJson());
      checkInappproductsInsertResponse(od);
    });
  });


  unittest.group("obj-schema-InappproductsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsListResponse();
      var od = new api.InappproductsListResponse.fromJson(o.toJson());
      checkInappproductsListResponse(od);
    });
  });


  unittest.group("obj-schema-InappproductsUpdateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsUpdateRequest();
      var od = new api.InappproductsUpdateRequest.fromJson(o.toJson());
      checkInappproductsUpdateRequest(od);
    });
  });


  unittest.group("obj-schema-InappproductsUpdateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInappproductsUpdateResponse();
      var od = new api.InappproductsUpdateResponse.fromJson(o.toJson());
      checkInappproductsUpdateResponse(od);
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


  unittest.group("obj-schema-Season", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeason();
      var od = new api.Season.fromJson(o.toJson());
      checkSeason(od);
    });
  });


  unittest.group("obj-schema-SubscriptionDeferralInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionDeferralInfo();
      var od = new api.SubscriptionDeferralInfo.fromJson(o.toJson());
      checkSubscriptionDeferralInfo(od);
    });
  });


  unittest.group("obj-schema-SubscriptionPurchase", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionPurchase();
      var od = new api.SubscriptionPurchase.fromJson(o.toJson());
      checkSubscriptionPurchase(od);
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


  unittest.group("obj-schema-TracksListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTracksListResponse();
      var od = new api.TracksListResponse.fromJson(o.toJson());
      checkTracksListResponse(od);
    });
  });


  unittest.group("resource-EditsResourceApi", () {
    unittest.test("method--commit", () {

      var mock = new common_test.HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppEdit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.commit(arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppEdit response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_packageName, arg_editId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppEdit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppEdit response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_request = buildAppEdit();
      var arg_packageName = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AppEdit.fromJson(json);
        checkAppEdit(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppEdit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_packageName).then(unittest.expectAsync(((api.AppEdit response) {
        checkAppEdit(response);
      })));
    });

    unittest.test("method--validate", () {

      var mock = new common_test.HttpServerMock();
      api.EditsResourceApi res = new api.AndroidpublisherApi(mock).edits;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppEdit());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.validate(arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppEdit response) {
        checkAppEdit(response);
      })));
    });

  });


  unittest.group("resource-EditsApklistingsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_packageName, arg_editId, arg_apkVersionCode, arg_language).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--deleteall", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deleteall(arg_packageName, arg_editId, arg_apkVersionCode).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApkListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId, arg_apkVersionCode, arg_language).then(unittest.expectAsync(((api.ApkListing response) {
        checkApkListing(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApkListingsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, arg_editId, arg_apkVersionCode).then(unittest.expectAsync(((api.ApkListingsListResponse response) {
        checkApkListingsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_request = buildApkListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ApkListing.fromJson(json);
        checkApkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApkListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId, arg_apkVersionCode, arg_language).then(unittest.expectAsync(((api.ApkListing response) {
        checkApkListing(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApklistingsResourceApi res = new api.AndroidpublisherApi(mock).edits.apklistings;
      var arg_request = buildApkListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ApkListing.fromJson(json);
        checkApkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApkListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId, arg_apkVersionCode, arg_language).then(unittest.expectAsync(((api.ApkListing response) {
        checkApkListing(response);
      })));
    });

  });


  unittest.group("resource-EditsApksResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.EditsApksResourceApi res = new api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApksListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, arg_editId).then(unittest.expectAsync(((api.ApksListResponse response) {
        checkApksListResponse(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.EditsApksResourceApi res = new api.AndroidpublisherApi(mock).edits.apks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildApk());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.upload(arg_packageName, arg_editId).then(unittest.expectAsync(((api.Apk response) {
        checkApk(response);
      })));
    });

  });


  unittest.group("resource-EditsDetailsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsDetailsResourceApi res = new api.AndroidpublisherApi(mock).edits.details;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppDetails());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppDetails response) {
        checkAppDetails(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsDetailsResourceApi res = new api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppDetails());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppDetails response) {
        checkAppDetails(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsDetailsResourceApi res = new api.AndroidpublisherApi(mock).edits.details;
      var arg_request = buildAppDetails();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AppDetails.fromJson(json);
        checkAppDetails(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAppDetails());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId).then(unittest.expectAsync(((api.AppDetails response) {
        checkAppDetails(response);
      })));
    });

  });


  unittest.group("resource-EditsExpansionfilesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsExpansionfilesResourceApi res = new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExpansionFile());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId, arg_apkVersionCode, arg_expansionFileType).then(unittest.expectAsync(((api.ExpansionFile response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsExpansionfilesResourceApi res = new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExpansionFile());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId, arg_apkVersionCode, arg_expansionFileType).then(unittest.expectAsync(((api.ExpansionFile response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsExpansionfilesResourceApi res = new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_request = buildExpansionFile();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExpansionFile.fromJson(json);
        checkExpansionFile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExpansionFile());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId, arg_apkVersionCode, arg_expansionFileType).then(unittest.expectAsync(((api.ExpansionFile response) {
        checkExpansionFile(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.EditsExpansionfilesResourceApi res = new api.AndroidpublisherApi(mock).edits.expansionfiles;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_apkVersionCode = 42;
      var arg_expansionFileType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExpansionFilesUploadResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.upload(arg_packageName, arg_editId, arg_apkVersionCode, arg_expansionFileType).then(unittest.expectAsync(((api.ExpansionFilesUploadResponse response) {
        checkExpansionFilesUploadResponse(response);
      })));
    });

  });


  unittest.group("resource-EditsImagesResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.EditsImagesResourceApi res = new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      var arg_imageId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_packageName, arg_editId, arg_language, arg_imageType, arg_imageId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--deleteall", () {

      var mock = new common_test.HttpServerMock();
      api.EditsImagesResourceApi res = new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImagesDeleteAllResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deleteall(arg_packageName, arg_editId, arg_language, arg_imageType).then(unittest.expectAsync(((api.ImagesDeleteAllResponse response) {
        checkImagesDeleteAllResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.EditsImagesResourceApi res = new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImagesListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, arg_editId, arg_language, arg_imageType).then(unittest.expectAsync(((api.ImagesListResponse response) {
        checkImagesListResponse(response);
      })));
    });

    unittest.test("method--upload", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.EditsImagesResourceApi res = new api.AndroidpublisherApi(mock).edits.images;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      var arg_imageType = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImagesUploadResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.upload(arg_packageName, arg_editId, arg_language, arg_imageType).then(unittest.expectAsync(((api.ImagesUploadResponse response) {
        checkImagesUploadResponse(response);
      })));
    });

  });


  unittest.group("resource-EditsListingsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_packageName, arg_editId, arg_language).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--deleteall", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.deleteall(arg_packageName, arg_editId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId, arg_language).then(unittest.expectAsync(((api.Listing response) {
        checkListing(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListingsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, arg_editId).then(unittest.expectAsync(((api.ListingsListResponse response) {
        checkListingsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId, arg_language).then(unittest.expectAsync(((api.Listing response) {
        checkListing(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsListingsResourceApi res = new api.AndroidpublisherApi(mock).edits.listings;
      var arg_request = buildListing();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_language = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Listing.fromJson(json);
        checkListing(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListing());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId, arg_language).then(unittest.expectAsync(((api.Listing response) {
        checkListing(response);
      })));
    });

  });


  unittest.group("resource-EditsTestersResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTestersResourceApi res = new api.AndroidpublisherApi(mock).edits.testers;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTesters());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Testers response) {
        checkTesters(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTestersResourceApi res = new api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTesters());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Testers response) {
        checkTesters(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTestersResourceApi res = new api.AndroidpublisherApi(mock).edits.testers;
      var arg_request = buildTesters();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Testers.fromJson(json);
        checkTesters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTesters());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Testers response) {
        checkTesters(response);
      })));
    });

  });


  unittest.group("resource-EditsTracksResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTracksResourceApi res = new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTrack());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Track response) {
        checkTrack(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTracksResourceApi res = new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_packageName = "foo";
      var arg_editId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTracksListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, arg_editId).then(unittest.expectAsync(((api.TracksListResponse response) {
        checkTracksListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTracksResourceApi res = new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTrack());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Track response) {
        checkTrack(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.EditsTracksResourceApi res = new api.AndroidpublisherApi(mock).edits.tracks;
      var arg_request = buildTrack();
      var arg_packageName = "foo";
      var arg_editId = "foo";
      var arg_track = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Track.fromJson(json);
        checkTrack(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTrack());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_editId, arg_track).then(unittest.expectAsync(((api.Track response) {
        checkTrack(response);
      })));
    });

  });


  unittest.group("resource-InappproductsResourceApi", () {
    unittest.test("method--batch", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInappproductsBatchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InappproductsBatchRequest.fromJson(json);
        checkInappproductsBatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 33), unittest.equals("androidpublisher/v2/applications/"));
        pathOffset += 33;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("inappproducts/batch"));
        pathOffset += 19;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInappproductsBatchResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batch(arg_request).then(unittest.expectAsync(((api.InappproductsBatchResponse response) {
        checkInappproductsBatchResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_sku = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_packageName, arg_sku).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_sku = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInAppProduct());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_sku).then(unittest.expectAsync(((api.InAppProduct response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--insert", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_autoConvertMissingPrices = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first, unittest.equals("$arg_autoConvertMissingPrices"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInAppProduct());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_request, arg_packageName, autoConvertMissingPrices: arg_autoConvertMissingPrices).then(unittest.expectAsync(((api.InAppProduct response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_packageName = "foo";
      var arg_maxResults = 42;
      var arg_startIndex = 42;
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["startIndex"].first), unittest.equals(arg_startIndex));
        unittest.expect(queryMap["token"].first, unittest.equals(arg_token));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInappproductsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_packageName, maxResults: arg_maxResults, startIndex: arg_startIndex, token: arg_token).then(unittest.expectAsync(((api.InappproductsListResponse response) {
        checkInappproductsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_autoConvertMissingPrices = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first, unittest.equals("$arg_autoConvertMissingPrices"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInAppProduct());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_packageName, arg_sku, autoConvertMissingPrices: arg_autoConvertMissingPrices).then(unittest.expectAsync(((api.InAppProduct response) {
        checkInAppProduct(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.InappproductsResourceApi res = new api.AndroidpublisherApi(mock).inappproducts;
      var arg_request = buildInAppProduct();
      var arg_packageName = "foo";
      var arg_sku = "foo";
      var arg_autoConvertMissingPrices = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.InAppProduct.fromJson(json);
        checkInAppProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["autoConvertMissingPrices"].first, unittest.equals("$arg_autoConvertMissingPrices"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInAppProduct());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_packageName, arg_sku, autoConvertMissingPrices: arg_autoConvertMissingPrices).then(unittest.expectAsync(((api.InAppProduct response) {
        checkInAppProduct(response);
      })));
    });

  });


  unittest.group("resource-PurchasesProductsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesProductsResourceApi res = new api.AndroidpublisherApi(mock).purchases.products;
      var arg_packageName = "foo";
      var arg_productId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProductPurchase());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_productId, arg_token).then(unittest.expectAsync(((api.ProductPurchase response) {
        checkProductPurchase(response);
      })));
    });

  });


  unittest.group("resource-PurchasesSubscriptionsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res = new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_packageName, arg_subscriptionId, arg_token).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--defer", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res = new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_request = buildSubscriptionPurchasesDeferRequest();
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SubscriptionPurchasesDeferRequest.fromJson(json);
        checkSubscriptionPurchasesDeferRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscriptionPurchasesDeferResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.defer(arg_request, arg_packageName, arg_subscriptionId, arg_token).then(unittest.expectAsync(((api.SubscriptionPurchasesDeferResponse response) {
        checkSubscriptionPurchasesDeferResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res = new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSubscriptionPurchase());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_packageName, arg_subscriptionId, arg_token).then(unittest.expectAsync(((api.SubscriptionPurchase response) {
        checkSubscriptionPurchase(response);
      })));
    });

    unittest.test("method--refund", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res = new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.refund(arg_packageName, arg_subscriptionId, arg_token).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--revoke", () {

      var mock = new common_test.HttpServerMock();
      api.PurchasesSubscriptionsResourceApi res = new api.AndroidpublisherApi(mock).purchases.subscriptions;
      var arg_packageName = "foo";
      var arg_subscriptionId = "foo";
      var arg_token = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.revoke(arg_packageName, arg_subscriptionId, arg_token).then(unittest.expectAsync((_) {}));
    });

  });


}

