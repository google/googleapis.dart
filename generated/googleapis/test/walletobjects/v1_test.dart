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

import 'package:googleapis/walletobjects/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActivationOptions = 0;
api.ActivationOptions buildActivationOptions() {
  final o = api.ActivationOptions();
  buildCounterActivationOptions++;
  if (buildCounterActivationOptions < 3) {
    o.activationUrl = 'foo';
    o.allowReactivation = true;
  }
  buildCounterActivationOptions--;
  return o;
}

void checkActivationOptions(api.ActivationOptions o) {
  buildCounterActivationOptions++;
  if (buildCounterActivationOptions < 3) {
    unittest.expect(o.activationUrl!, unittest.equals('foo'));
    unittest.expect(o.allowReactivation!, unittest.isTrue);
  }
  buildCounterActivationOptions--;
}

core.int buildCounterActivationStatus = 0;
api.ActivationStatus buildActivationStatus() {
  final o = api.ActivationStatus();
  buildCounterActivationStatus++;
  if (buildCounterActivationStatus < 3) {
    o.state = 'foo';
  }
  buildCounterActivationStatus--;
  return o;
}

void checkActivationStatus(api.ActivationStatus o) {
  buildCounterActivationStatus++;
  if (buildCounterActivationStatus < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterActivationStatus--;
}

core.int buildCounterAddMessageRequest = 0;
api.AddMessageRequest buildAddMessageRequest() {
  final o = api.AddMessageRequest();
  buildCounterAddMessageRequest++;
  if (buildCounterAddMessageRequest < 3) {
    o.message = buildMessage();
  }
  buildCounterAddMessageRequest--;
  return o;
}

void checkAddMessageRequest(api.AddMessageRequest o) {
  buildCounterAddMessageRequest++;
  if (buildCounterAddMessageRequest < 3) {
    checkMessage(o.message!);
  }
  buildCounterAddMessageRequest--;
}

core.int buildCounterAirportInfo = 0;
api.AirportInfo buildAirportInfo() {
  final o = api.AirportInfo();
  buildCounterAirportInfo++;
  if (buildCounterAirportInfo < 3) {
    o.airportIataCode = 'foo';
    o.airportNameOverride = buildLocalizedString();
    o.gate = 'foo';
    o.kind = 'foo';
    o.terminal = 'foo';
  }
  buildCounterAirportInfo--;
  return o;
}

void checkAirportInfo(api.AirportInfo o) {
  buildCounterAirportInfo++;
  if (buildCounterAirportInfo < 3) {
    unittest.expect(o.airportIataCode!, unittest.equals('foo'));
    checkLocalizedString(o.airportNameOverride!);
    unittest.expect(o.gate!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.terminal!, unittest.equals('foo'));
  }
  buildCounterAirportInfo--;
}

core.int buildCounterAppLinkData = 0;
api.AppLinkData buildAppLinkData() {
  final o = api.AppLinkData();
  buildCounterAppLinkData++;
  if (buildCounterAppLinkData < 3) {
    o.androidAppLinkInfo = buildAppLinkDataAppLinkInfo();
    o.displayText = buildLocalizedString();
    o.iosAppLinkInfo = buildAppLinkDataAppLinkInfo();
    o.webAppLinkInfo = buildAppLinkDataAppLinkInfo();
  }
  buildCounterAppLinkData--;
  return o;
}

void checkAppLinkData(api.AppLinkData o) {
  buildCounterAppLinkData++;
  if (buildCounterAppLinkData < 3) {
    checkAppLinkDataAppLinkInfo(o.androidAppLinkInfo!);
    checkLocalizedString(o.displayText!);
    checkAppLinkDataAppLinkInfo(o.iosAppLinkInfo!);
    checkAppLinkDataAppLinkInfo(o.webAppLinkInfo!);
  }
  buildCounterAppLinkData--;
}

core.int buildCounterAppLinkDataAppLinkInfo = 0;
api.AppLinkDataAppLinkInfo buildAppLinkDataAppLinkInfo() {
  final o = api.AppLinkDataAppLinkInfo();
  buildCounterAppLinkDataAppLinkInfo++;
  if (buildCounterAppLinkDataAppLinkInfo < 3) {
    o.appLogoImage = buildImage();
    o.appTarget = buildAppLinkDataAppLinkInfoAppTarget();
    o.description = buildLocalizedString();
    o.title = buildLocalizedString();
  }
  buildCounterAppLinkDataAppLinkInfo--;
  return o;
}

void checkAppLinkDataAppLinkInfo(api.AppLinkDataAppLinkInfo o) {
  buildCounterAppLinkDataAppLinkInfo++;
  if (buildCounterAppLinkDataAppLinkInfo < 3) {
    checkImage(o.appLogoImage!);
    checkAppLinkDataAppLinkInfoAppTarget(o.appTarget!);
    checkLocalizedString(o.description!);
    checkLocalizedString(o.title!);
  }
  buildCounterAppLinkDataAppLinkInfo--;
}

core.int buildCounterAppLinkDataAppLinkInfoAppTarget = 0;
api.AppLinkDataAppLinkInfoAppTarget buildAppLinkDataAppLinkInfoAppTarget() {
  final o = api.AppLinkDataAppLinkInfoAppTarget();
  buildCounterAppLinkDataAppLinkInfoAppTarget++;
  if (buildCounterAppLinkDataAppLinkInfoAppTarget < 3) {
    o.packageName = 'foo';
    o.targetUri = buildUri();
  }
  buildCounterAppLinkDataAppLinkInfoAppTarget--;
  return o;
}

void checkAppLinkDataAppLinkInfoAppTarget(
  api.AppLinkDataAppLinkInfoAppTarget o,
) {
  buildCounterAppLinkDataAppLinkInfoAppTarget++;
  if (buildCounterAppLinkDataAppLinkInfoAppTarget < 3) {
    unittest.expect(o.packageName!, unittest.equals('foo'));
    checkUri(o.targetUri!);
  }
  buildCounterAppLinkDataAppLinkInfoAppTarget--;
}

core.int buildCounterAuthenticationKey = 0;
api.AuthenticationKey buildAuthenticationKey() {
  final o = api.AuthenticationKey();
  buildCounterAuthenticationKey++;
  if (buildCounterAuthenticationKey < 3) {
    o.id = 42;
    o.publicKeyPem = 'foo';
  }
  buildCounterAuthenticationKey--;
  return o;
}

void checkAuthenticationKey(api.AuthenticationKey o) {
  buildCounterAuthenticationKey++;
  if (buildCounterAuthenticationKey < 3) {
    unittest.expect(o.id!, unittest.equals(42));
    unittest.expect(o.publicKeyPem!, unittest.equals('foo'));
  }
  buildCounterAuthenticationKey--;
}

core.int buildCounterBarcode = 0;
api.Barcode buildBarcode() {
  final o = api.Barcode();
  buildCounterBarcode++;
  if (buildCounterBarcode < 3) {
    o.alternateText = 'foo';
    o.kind = 'foo';
    o.renderEncoding = 'foo';
    o.showCodeText = buildLocalizedString();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterBarcode--;
  return o;
}

void checkBarcode(api.Barcode o) {
  buildCounterBarcode++;
  if (buildCounterBarcode < 3) {
    unittest.expect(o.alternateText!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.renderEncoding!, unittest.equals('foo'));
    checkLocalizedString(o.showCodeText!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterBarcode--;
}

core.int buildCounterBarcodeSectionDetail = 0;
api.BarcodeSectionDetail buildBarcodeSectionDetail() {
  final o = api.BarcodeSectionDetail();
  buildCounterBarcodeSectionDetail++;
  if (buildCounterBarcodeSectionDetail < 3) {
    o.fieldSelector = buildFieldSelector();
  }
  buildCounterBarcodeSectionDetail--;
  return o;
}

void checkBarcodeSectionDetail(api.BarcodeSectionDetail o) {
  buildCounterBarcodeSectionDetail++;
  if (buildCounterBarcodeSectionDetail < 3) {
    checkFieldSelector(o.fieldSelector!);
  }
  buildCounterBarcodeSectionDetail--;
}

core.int buildCounterBlobstore2Info = 0;
api.Blobstore2Info buildBlobstore2Info() {
  final o = api.Blobstore2Info();
  buildCounterBlobstore2Info++;
  if (buildCounterBlobstore2Info < 3) {
    o.blobGeneration = 'foo';
    o.blobId = 'foo';
    o.downloadExternalReadToken = 'foo';
    o.downloadReadHandle = 'foo';
    o.readToken = 'foo';
    o.uploadFragmentListCreationInfo = 'foo';
    o.uploadMetadataContainer = 'foo';
  }
  buildCounterBlobstore2Info--;
  return o;
}

void checkBlobstore2Info(api.Blobstore2Info o) {
  buildCounterBlobstore2Info++;
  if (buildCounterBlobstore2Info < 3) {
    unittest.expect(o.blobGeneration!, unittest.equals('foo'));
    unittest.expect(o.blobId!, unittest.equals('foo'));
    unittest.expect(o.downloadExternalReadToken!, unittest.equals('foo'));
    unittest.expect(o.downloadReadHandle!, unittest.equals('foo'));
    unittest.expect(o.readToken!, unittest.equals('foo'));
    unittest.expect(o.uploadFragmentListCreationInfo!, unittest.equals('foo'));
    unittest.expect(o.uploadMetadataContainer!, unittest.equals('foo'));
  }
  buildCounterBlobstore2Info--;
}

core.int buildCounterBoardingAndSeatingInfo = 0;
api.BoardingAndSeatingInfo buildBoardingAndSeatingInfo() {
  final o = api.BoardingAndSeatingInfo();
  buildCounterBoardingAndSeatingInfo++;
  if (buildCounterBoardingAndSeatingInfo < 3) {
    o.boardingDoor = 'foo';
    o.boardingGroup = 'foo';
    o.boardingPosition = 'foo';
    o.boardingPrivilegeImage = buildImage();
    o.kind = 'foo';
    o.seatAssignment = buildLocalizedString();
    o.seatClass = 'foo';
    o.seatNumber = 'foo';
    o.sequenceNumber = 'foo';
  }
  buildCounterBoardingAndSeatingInfo--;
  return o;
}

void checkBoardingAndSeatingInfo(api.BoardingAndSeatingInfo o) {
  buildCounterBoardingAndSeatingInfo++;
  if (buildCounterBoardingAndSeatingInfo < 3) {
    unittest.expect(o.boardingDoor!, unittest.equals('foo'));
    unittest.expect(o.boardingGroup!, unittest.equals('foo'));
    unittest.expect(o.boardingPosition!, unittest.equals('foo'));
    checkImage(o.boardingPrivilegeImage!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLocalizedString(o.seatAssignment!);
    unittest.expect(o.seatClass!, unittest.equals('foo'));
    unittest.expect(o.seatNumber!, unittest.equals('foo'));
    unittest.expect(o.sequenceNumber!, unittest.equals('foo'));
  }
  buildCounterBoardingAndSeatingInfo--;
}

core.int buildCounterBoardingAndSeatingPolicy = 0;
api.BoardingAndSeatingPolicy buildBoardingAndSeatingPolicy() {
  final o = api.BoardingAndSeatingPolicy();
  buildCounterBoardingAndSeatingPolicy++;
  if (buildCounterBoardingAndSeatingPolicy < 3) {
    o.boardingPolicy = 'foo';
    o.kind = 'foo';
    o.seatClassPolicy = 'foo';
  }
  buildCounterBoardingAndSeatingPolicy--;
  return o;
}

void checkBoardingAndSeatingPolicy(api.BoardingAndSeatingPolicy o) {
  buildCounterBoardingAndSeatingPolicy++;
  if (buildCounterBoardingAndSeatingPolicy < 3) {
    unittest.expect(o.boardingPolicy!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.seatClassPolicy!, unittest.equals('foo'));
  }
  buildCounterBoardingAndSeatingPolicy--;
}

core.int buildCounterCallbackOptions = 0;
api.CallbackOptions buildCallbackOptions() {
  final o = api.CallbackOptions();
  buildCounterCallbackOptions++;
  if (buildCounterCallbackOptions < 3) {
    o.updateRequestUrl = 'foo';
    o.url = 'foo';
  }
  buildCounterCallbackOptions--;
  return o;
}

void checkCallbackOptions(api.CallbackOptions o) {
  buildCounterCallbackOptions++;
  if (buildCounterCallbackOptions < 3) {
    unittest.expect(o.updateRequestUrl!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterCallbackOptions--;
}

core.int buildCounterCardBarcodeSectionDetails = 0;
api.CardBarcodeSectionDetails buildCardBarcodeSectionDetails() {
  final o = api.CardBarcodeSectionDetails();
  buildCounterCardBarcodeSectionDetails++;
  if (buildCounterCardBarcodeSectionDetails < 3) {
    o.firstBottomDetail = buildBarcodeSectionDetail();
    o.firstTopDetail = buildBarcodeSectionDetail();
    o.secondTopDetail = buildBarcodeSectionDetail();
  }
  buildCounterCardBarcodeSectionDetails--;
  return o;
}

void checkCardBarcodeSectionDetails(api.CardBarcodeSectionDetails o) {
  buildCounterCardBarcodeSectionDetails++;
  if (buildCounterCardBarcodeSectionDetails < 3) {
    checkBarcodeSectionDetail(o.firstBottomDetail!);
    checkBarcodeSectionDetail(o.firstTopDetail!);
    checkBarcodeSectionDetail(o.secondTopDetail!);
  }
  buildCounterCardBarcodeSectionDetails--;
}

core.int buildCounterCardRowOneItem = 0;
api.CardRowOneItem buildCardRowOneItem() {
  final o = api.CardRowOneItem();
  buildCounterCardRowOneItem++;
  if (buildCounterCardRowOneItem < 3) {
    o.item = buildTemplateItem();
  }
  buildCounterCardRowOneItem--;
  return o;
}

void checkCardRowOneItem(api.CardRowOneItem o) {
  buildCounterCardRowOneItem++;
  if (buildCounterCardRowOneItem < 3) {
    checkTemplateItem(o.item!);
  }
  buildCounterCardRowOneItem--;
}

core.int buildCounterCardRowTemplateInfo = 0;
api.CardRowTemplateInfo buildCardRowTemplateInfo() {
  final o = api.CardRowTemplateInfo();
  buildCounterCardRowTemplateInfo++;
  if (buildCounterCardRowTemplateInfo < 3) {
    o.oneItem = buildCardRowOneItem();
    o.threeItems = buildCardRowThreeItems();
    o.twoItems = buildCardRowTwoItems();
  }
  buildCounterCardRowTemplateInfo--;
  return o;
}

void checkCardRowTemplateInfo(api.CardRowTemplateInfo o) {
  buildCounterCardRowTemplateInfo++;
  if (buildCounterCardRowTemplateInfo < 3) {
    checkCardRowOneItem(o.oneItem!);
    checkCardRowThreeItems(o.threeItems!);
    checkCardRowTwoItems(o.twoItems!);
  }
  buildCounterCardRowTemplateInfo--;
}

core.int buildCounterCardRowThreeItems = 0;
api.CardRowThreeItems buildCardRowThreeItems() {
  final o = api.CardRowThreeItems();
  buildCounterCardRowThreeItems++;
  if (buildCounterCardRowThreeItems < 3) {
    o.endItem = buildTemplateItem();
    o.middleItem = buildTemplateItem();
    o.startItem = buildTemplateItem();
  }
  buildCounterCardRowThreeItems--;
  return o;
}

void checkCardRowThreeItems(api.CardRowThreeItems o) {
  buildCounterCardRowThreeItems++;
  if (buildCounterCardRowThreeItems < 3) {
    checkTemplateItem(o.endItem!);
    checkTemplateItem(o.middleItem!);
    checkTemplateItem(o.startItem!);
  }
  buildCounterCardRowThreeItems--;
}

core.int buildCounterCardRowTwoItems = 0;
api.CardRowTwoItems buildCardRowTwoItems() {
  final o = api.CardRowTwoItems();
  buildCounterCardRowTwoItems++;
  if (buildCounterCardRowTwoItems < 3) {
    o.endItem = buildTemplateItem();
    o.startItem = buildTemplateItem();
  }
  buildCounterCardRowTwoItems--;
  return o;
}

void checkCardRowTwoItems(api.CardRowTwoItems o) {
  buildCounterCardRowTwoItems++;
  if (buildCounterCardRowTwoItems < 3) {
    checkTemplateItem(o.endItem!);
    checkTemplateItem(o.startItem!);
  }
  buildCounterCardRowTwoItems--;
}

core.List<api.CardRowTemplateInfo> buildUnnamed0() => [
  buildCardRowTemplateInfo(),
  buildCardRowTemplateInfo(),
];

void checkUnnamed0(core.List<api.CardRowTemplateInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardRowTemplateInfo(o[0]);
  checkCardRowTemplateInfo(o[1]);
}

core.int buildCounterCardTemplateOverride = 0;
api.CardTemplateOverride buildCardTemplateOverride() {
  final o = api.CardTemplateOverride();
  buildCounterCardTemplateOverride++;
  if (buildCounterCardTemplateOverride < 3) {
    o.cardRowTemplateInfos = buildUnnamed0();
  }
  buildCounterCardTemplateOverride--;
  return o;
}

void checkCardTemplateOverride(api.CardTemplateOverride o) {
  buildCounterCardTemplateOverride++;
  if (buildCounterCardTemplateOverride < 3) {
    checkUnnamed0(o.cardRowTemplateInfos!);
  }
  buildCounterCardTemplateOverride--;
}

core.int buildCounterClassTemplateInfo = 0;
api.ClassTemplateInfo buildClassTemplateInfo() {
  final o = api.ClassTemplateInfo();
  buildCounterClassTemplateInfo++;
  if (buildCounterClassTemplateInfo < 3) {
    o.cardBarcodeSectionDetails = buildCardBarcodeSectionDetails();
    o.cardTemplateOverride = buildCardTemplateOverride();
    o.detailsTemplateOverride = buildDetailsTemplateOverride();
    o.listTemplateOverride = buildListTemplateOverride();
  }
  buildCounterClassTemplateInfo--;
  return o;
}

void checkClassTemplateInfo(api.ClassTemplateInfo o) {
  buildCounterClassTemplateInfo++;
  if (buildCounterClassTemplateInfo < 3) {
    checkCardBarcodeSectionDetails(o.cardBarcodeSectionDetails!);
    checkCardTemplateOverride(o.cardTemplateOverride!);
    checkDetailsTemplateOverride(o.detailsTemplateOverride!);
    checkListTemplateOverride(o.listTemplateOverride!);
  }
  buildCounterClassTemplateInfo--;
}

core.int buildCounterCompositeMedia = 0;
api.CompositeMedia buildCompositeMedia() {
  final o = api.CompositeMedia();
  buildCounterCompositeMedia++;
  if (buildCounterCompositeMedia < 3) {
    o.blobRef = 'foo';
    o.blobstore2Info = buildBlobstore2Info();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.inline = 'foo';
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.objectId = buildObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
  }
  buildCounterCompositeMedia--;
  return o;
}

void checkCompositeMedia(api.CompositeMedia o) {
  buildCounterCompositeMedia++;
  if (buildCounterCompositeMedia < 3) {
    unittest.expect(o.blobRef!, unittest.equals('foo'));
    checkBlobstore2Info(o.blobstore2Info!);
    unittest.expect(o.cosmoBinaryReference!, unittest.equals('foo'));
    unittest.expect(o.crc32cHash!, unittest.equals(42));
    unittest.expect(o.inline!, unittest.equals('foo'));
    unittest.expect(o.length!, unittest.equals('foo'));
    unittest.expect(o.md5Hash!, unittest.equals('foo'));
    checkObjectId(o.objectId!);
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.referenceType!, unittest.equals('foo'));
    unittest.expect(o.sha1Hash!, unittest.equals('foo'));
  }
  buildCounterCompositeMedia--;
}

core.int buildCounterContentTypeInfo = 0;
api.ContentTypeInfo buildContentTypeInfo() {
  final o = api.ContentTypeInfo();
  buildCounterContentTypeInfo++;
  if (buildCounterContentTypeInfo < 3) {
    o.bestGuess = 'foo';
    o.fromBytes = 'foo';
    o.fromFileName = 'foo';
    o.fromHeader = 'foo';
    o.fromUrlPath = 'foo';
  }
  buildCounterContentTypeInfo--;
  return o;
}

void checkContentTypeInfo(api.ContentTypeInfo o) {
  buildCounterContentTypeInfo++;
  if (buildCounterContentTypeInfo < 3) {
    unittest.expect(o.bestGuess!, unittest.equals('foo'));
    unittest.expect(o.fromBytes!, unittest.equals('foo'));
    unittest.expect(o.fromFileName!, unittest.equals('foo'));
    unittest.expect(o.fromHeader!, unittest.equals('foo'));
    unittest.expect(o.fromUrlPath!, unittest.equals('foo'));
  }
  buildCounterContentTypeInfo--;
}

core.int buildCounterDateTime = 0;
api.DateTime buildDateTime() {
  final o = api.DateTime();
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    o.date = 'foo';
  }
  buildCounterDateTime--;
  return o;
}

void checkDateTime(api.DateTime o) {
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    unittest.expect(o.date!, unittest.equals('foo'));
  }
  buildCounterDateTime--;
}

core.int buildCounterDetailsItemInfo = 0;
api.DetailsItemInfo buildDetailsItemInfo() {
  final o = api.DetailsItemInfo();
  buildCounterDetailsItemInfo++;
  if (buildCounterDetailsItemInfo < 3) {
    o.item = buildTemplateItem();
  }
  buildCounterDetailsItemInfo--;
  return o;
}

void checkDetailsItemInfo(api.DetailsItemInfo o) {
  buildCounterDetailsItemInfo++;
  if (buildCounterDetailsItemInfo < 3) {
    checkTemplateItem(o.item!);
  }
  buildCounterDetailsItemInfo--;
}

core.List<api.DetailsItemInfo> buildUnnamed1() => [
  buildDetailsItemInfo(),
  buildDetailsItemInfo(),
];

void checkUnnamed1(core.List<api.DetailsItemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetailsItemInfo(o[0]);
  checkDetailsItemInfo(o[1]);
}

core.int buildCounterDetailsTemplateOverride = 0;
api.DetailsTemplateOverride buildDetailsTemplateOverride() {
  final o = api.DetailsTemplateOverride();
  buildCounterDetailsTemplateOverride++;
  if (buildCounterDetailsTemplateOverride < 3) {
    o.detailsItemInfos = buildUnnamed1();
  }
  buildCounterDetailsTemplateOverride--;
  return o;
}

void checkDetailsTemplateOverride(api.DetailsTemplateOverride o) {
  buildCounterDetailsTemplateOverride++;
  if (buildCounterDetailsTemplateOverride < 3) {
    checkUnnamed1(o.detailsItemInfos!);
  }
  buildCounterDetailsTemplateOverride--;
}

core.int buildCounterDeviceContext = 0;
api.DeviceContext buildDeviceContext() {
  final o = api.DeviceContext();
  buildCounterDeviceContext++;
  if (buildCounterDeviceContext < 3) {
    o.deviceToken = 'foo';
  }
  buildCounterDeviceContext--;
  return o;
}

void checkDeviceContext(api.DeviceContext o) {
  buildCounterDeviceContext++;
  if (buildCounterDeviceContext < 3) {
    unittest.expect(o.deviceToken!, unittest.equals('foo'));
  }
  buildCounterDeviceContext--;
}

core.int buildCounterDiffChecksumsResponse = 0;
api.DiffChecksumsResponse buildDiffChecksumsResponse() {
  final o = api.DiffChecksumsResponse();
  buildCounterDiffChecksumsResponse++;
  if (buildCounterDiffChecksumsResponse < 3) {
    o.checksumsLocation = buildCompositeMedia();
    o.chunkSizeBytes = 'foo';
    o.objectLocation = buildCompositeMedia();
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterDiffChecksumsResponse--;
  return o;
}

void checkDiffChecksumsResponse(api.DiffChecksumsResponse o) {
  buildCounterDiffChecksumsResponse++;
  if (buildCounterDiffChecksumsResponse < 3) {
    checkCompositeMedia(o.checksumsLocation!);
    unittest.expect(o.chunkSizeBytes!, unittest.equals('foo'));
    checkCompositeMedia(o.objectLocation!);
    unittest.expect(o.objectSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.objectVersion!, unittest.equals('foo'));
  }
  buildCounterDiffChecksumsResponse--;
}

core.int buildCounterDiffDownloadResponse = 0;
api.DiffDownloadResponse buildDiffDownloadResponse() {
  final o = api.DiffDownloadResponse();
  buildCounterDiffDownloadResponse++;
  if (buildCounterDiffDownloadResponse < 3) {
    o.objectLocation = buildCompositeMedia();
  }
  buildCounterDiffDownloadResponse--;
  return o;
}

void checkDiffDownloadResponse(api.DiffDownloadResponse o) {
  buildCounterDiffDownloadResponse++;
  if (buildCounterDiffDownloadResponse < 3) {
    checkCompositeMedia(o.objectLocation!);
  }
  buildCounterDiffDownloadResponse--;
}

core.int buildCounterDiffUploadRequest = 0;
api.DiffUploadRequest buildDiffUploadRequest() {
  final o = api.DiffUploadRequest();
  buildCounterDiffUploadRequest++;
  if (buildCounterDiffUploadRequest < 3) {
    o.checksumsInfo = buildCompositeMedia();
    o.objectInfo = buildCompositeMedia();
    o.objectVersion = 'foo';
  }
  buildCounterDiffUploadRequest--;
  return o;
}

void checkDiffUploadRequest(api.DiffUploadRequest o) {
  buildCounterDiffUploadRequest++;
  if (buildCounterDiffUploadRequest < 3) {
    checkCompositeMedia(o.checksumsInfo!);
    checkCompositeMedia(o.objectInfo!);
    unittest.expect(o.objectVersion!, unittest.equals('foo'));
  }
  buildCounterDiffUploadRequest--;
}

core.int buildCounterDiffUploadResponse = 0;
api.DiffUploadResponse buildDiffUploadResponse() {
  final o = api.DiffUploadResponse();
  buildCounterDiffUploadResponse++;
  if (buildCounterDiffUploadResponse < 3) {
    o.objectVersion = 'foo';
    o.originalObject = buildCompositeMedia();
  }
  buildCounterDiffUploadResponse--;
  return o;
}

void checkDiffUploadResponse(api.DiffUploadResponse o) {
  buildCounterDiffUploadResponse++;
  if (buildCounterDiffUploadResponse < 3) {
    unittest.expect(o.objectVersion!, unittest.equals('foo'));
    checkCompositeMedia(o.originalObject!);
  }
  buildCounterDiffUploadResponse--;
}

core.int buildCounterDiffVersionResponse = 0;
api.DiffVersionResponse buildDiffVersionResponse() {
  final o = api.DiffVersionResponse();
  buildCounterDiffVersionResponse++;
  if (buildCounterDiffVersionResponse < 3) {
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterDiffVersionResponse--;
  return o;
}

void checkDiffVersionResponse(api.DiffVersionResponse o) {
  buildCounterDiffVersionResponse++;
  if (buildCounterDiffVersionResponse < 3) {
    unittest.expect(o.objectSizeBytes!, unittest.equals('foo'));
    unittest.expect(o.objectVersion!, unittest.equals('foo'));
  }
  buildCounterDiffVersionResponse--;
}

core.int buildCounterDiscoverableProgram = 0;
api.DiscoverableProgram buildDiscoverableProgram() {
  final o = api.DiscoverableProgram();
  buildCounterDiscoverableProgram++;
  if (buildCounterDiscoverableProgram < 3) {
    o.merchantSigninInfo = buildDiscoverableProgramMerchantSigninInfo();
    o.merchantSignupInfo = buildDiscoverableProgramMerchantSignupInfo();
    o.state = 'foo';
  }
  buildCounterDiscoverableProgram--;
  return o;
}

void checkDiscoverableProgram(api.DiscoverableProgram o) {
  buildCounterDiscoverableProgram++;
  if (buildCounterDiscoverableProgram < 3) {
    checkDiscoverableProgramMerchantSigninInfo(o.merchantSigninInfo!);
    checkDiscoverableProgramMerchantSignupInfo(o.merchantSignupInfo!);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterDiscoverableProgram--;
}

core.int buildCounterDiscoverableProgramMerchantSigninInfo = 0;
api.DiscoverableProgramMerchantSigninInfo
buildDiscoverableProgramMerchantSigninInfo() {
  final o = api.DiscoverableProgramMerchantSigninInfo();
  buildCounterDiscoverableProgramMerchantSigninInfo++;
  if (buildCounterDiscoverableProgramMerchantSigninInfo < 3) {
    o.signinWebsite = buildUri();
  }
  buildCounterDiscoverableProgramMerchantSigninInfo--;
  return o;
}

void checkDiscoverableProgramMerchantSigninInfo(
  api.DiscoverableProgramMerchantSigninInfo o,
) {
  buildCounterDiscoverableProgramMerchantSigninInfo++;
  if (buildCounterDiscoverableProgramMerchantSigninInfo < 3) {
    checkUri(o.signinWebsite!);
  }
  buildCounterDiscoverableProgramMerchantSigninInfo--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDiscoverableProgramMerchantSignupInfo = 0;
api.DiscoverableProgramMerchantSignupInfo
buildDiscoverableProgramMerchantSignupInfo() {
  final o = api.DiscoverableProgramMerchantSignupInfo();
  buildCounterDiscoverableProgramMerchantSignupInfo++;
  if (buildCounterDiscoverableProgramMerchantSignupInfo < 3) {
    o.signupSharedDatas = buildUnnamed2();
    o.signupWebsite = buildUri();
  }
  buildCounterDiscoverableProgramMerchantSignupInfo--;
  return o;
}

void checkDiscoverableProgramMerchantSignupInfo(
  api.DiscoverableProgramMerchantSignupInfo o,
) {
  buildCounterDiscoverableProgramMerchantSignupInfo++;
  if (buildCounterDiscoverableProgramMerchantSignupInfo < 3) {
    checkUnnamed2(o.signupSharedDatas!);
    checkUri(o.signupWebsite!);
  }
  buildCounterDiscoverableProgramMerchantSignupInfo--;
}

core.int buildCounterDownloadParameters = 0;
api.DownloadParameters buildDownloadParameters() {
  final o = api.DownloadParameters();
  buildCounterDownloadParameters++;
  if (buildCounterDownloadParameters < 3) {
    o.allowGzipCompression = true;
    o.ignoreRange = true;
  }
  buildCounterDownloadParameters--;
  return o;
}

void checkDownloadParameters(api.DownloadParameters o) {
  buildCounterDownloadParameters++;
  if (buildCounterDownloadParameters < 3) {
    unittest.expect(o.allowGzipCompression!, unittest.isTrue);
    unittest.expect(o.ignoreRange!, unittest.isTrue);
  }
  buildCounterDownloadParameters--;
}

core.int buildCounterEventDateTime = 0;
api.EventDateTime buildEventDateTime() {
  final o = api.EventDateTime();
  buildCounterEventDateTime++;
  if (buildCounterEventDateTime < 3) {
    o.customDoorsOpenLabel = buildLocalizedString();
    o.doorsOpen = 'foo';
    o.doorsOpenLabel = 'foo';
    o.end = 'foo';
    o.kind = 'foo';
    o.start = 'foo';
  }
  buildCounterEventDateTime--;
  return o;
}

void checkEventDateTime(api.EventDateTime o) {
  buildCounterEventDateTime++;
  if (buildCounterEventDateTime < 3) {
    checkLocalizedString(o.customDoorsOpenLabel!);
    unittest.expect(o.doorsOpen!, unittest.equals('foo'));
    unittest.expect(o.doorsOpenLabel!, unittest.equals('foo'));
    unittest.expect(o.end!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.start!, unittest.equals('foo'));
  }
  buildCounterEventDateTime--;
}

core.int buildCounterEventReservationInfo = 0;
api.EventReservationInfo buildEventReservationInfo() {
  final o = api.EventReservationInfo();
  buildCounterEventReservationInfo++;
  if (buildCounterEventReservationInfo < 3) {
    o.confirmationCode = 'foo';
    o.kind = 'foo';
  }
  buildCounterEventReservationInfo--;
  return o;
}

void checkEventReservationInfo(api.EventReservationInfo o) {
  buildCounterEventReservationInfo++;
  if (buildCounterEventReservationInfo < 3) {
    unittest.expect(o.confirmationCode!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterEventReservationInfo--;
}

core.int buildCounterEventSeat = 0;
api.EventSeat buildEventSeat() {
  final o = api.EventSeat();
  buildCounterEventSeat++;
  if (buildCounterEventSeat < 3) {
    o.gate = buildLocalizedString();
    o.kind = 'foo';
    o.row = buildLocalizedString();
    o.seat = buildLocalizedString();
    o.section = buildLocalizedString();
  }
  buildCounterEventSeat--;
  return o;
}

void checkEventSeat(api.EventSeat o) {
  buildCounterEventSeat++;
  if (buildCounterEventSeat < 3) {
    checkLocalizedString(o.gate!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLocalizedString(o.row!);
    checkLocalizedString(o.seat!);
    checkLocalizedString(o.section!);
  }
  buildCounterEventSeat--;
}

core.List<api.ImageModuleData> buildUnnamed3() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed3(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed4() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed4(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed5() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed5(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed6() => [buildMessage(), buildMessage()];

void checkUnnamed6(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed8() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed8(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed9() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed9(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterEventTicketClass = 0;
api.EventTicketClass buildEventTicketClass() {
  final o = api.EventTicketClass();
  buildCounterEventTicketClass++;
  if (buildCounterEventTicketClass < 3) {
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.confirmationCodeLabel = 'foo';
    o.countryCode = 'foo';
    o.customConfirmationCodeLabel = buildLocalizedString();
    o.customGateLabel = buildLocalizedString();
    o.customRowLabel = buildLocalizedString();
    o.customSeatLabel = buildLocalizedString();
    o.customSectionLabel = buildLocalizedString();
    o.dateTime = buildEventDateTime();
    o.enableSmartTap = true;
    o.eventId = 'foo';
    o.eventName = buildLocalizedString();
    o.finePrint = buildLocalizedString();
    o.gateLabel = 'foo';
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed3();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.kind = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localizedIssuerName = buildLocalizedString();
    o.locations = buildUnnamed4();
    o.logo = buildImage();
    o.merchantLocations = buildUnnamed5();
    o.messages = buildUnnamed6();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.redemptionIssuers = buildUnnamed7();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.rowLabel = 'foo';
    o.seatLabel = 'foo';
    o.sectionLabel = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed8();
    o.valueAddedModuleData = buildUnnamed9();
    o.venue = buildEventVenue();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.wideLogo = buildImage();
    o.wordMark = buildImage();
  }
  buildCounterEventTicketClass--;
  return o;
}

void checkEventTicketClass(api.EventTicketClass o) {
  buildCounterEventTicketClass++;
  if (buildCounterEventTicketClass < 3) {
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.confirmationCodeLabel!, unittest.equals('foo'));
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    checkLocalizedString(o.customConfirmationCodeLabel!);
    checkLocalizedString(o.customGateLabel!);
    checkLocalizedString(o.customRowLabel!);
    checkLocalizedString(o.customSeatLabel!);
    checkLocalizedString(o.customSectionLabel!);
    checkEventDateTime(o.dateTime!);
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    unittest.expect(o.eventId!, unittest.equals('foo'));
    checkLocalizedString(o.eventName!);
    checkLocalizedString(o.finePrint!);
    unittest.expect(o.gateLabel!, unittest.equals('foo'));
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed3(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    checkLocalizedString(o.localizedIssuerName!);
    checkUnnamed4(o.locations!);
    checkImage(o.logo!);
    checkUnnamed5(o.merchantLocations!);
    checkUnnamed6(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkUnnamed7(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    unittest.expect(o.rowLabel!, unittest.equals('foo'));
    unittest.expect(o.seatLabel!, unittest.equals('foo'));
    unittest.expect(o.sectionLabel!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed8(o.textModulesData!);
    checkUnnamed9(o.valueAddedModuleData!);
    checkEventVenue(o.venue!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.wideLogo!);
    checkImage(o.wordMark!);
  }
  buildCounterEventTicketClass--;
}

core.int buildCounterEventTicketClassAddMessageResponse = 0;
api.EventTicketClassAddMessageResponse
buildEventTicketClassAddMessageResponse() {
  final o = api.EventTicketClassAddMessageResponse();
  buildCounterEventTicketClassAddMessageResponse++;
  if (buildCounterEventTicketClassAddMessageResponse < 3) {
    o.resource = buildEventTicketClass();
  }
  buildCounterEventTicketClassAddMessageResponse--;
  return o;
}

void checkEventTicketClassAddMessageResponse(
  api.EventTicketClassAddMessageResponse o,
) {
  buildCounterEventTicketClassAddMessageResponse++;
  if (buildCounterEventTicketClassAddMessageResponse < 3) {
    checkEventTicketClass(o.resource!);
  }
  buildCounterEventTicketClassAddMessageResponse--;
}

core.List<api.EventTicketClass> buildUnnamed10() => [
  buildEventTicketClass(),
  buildEventTicketClass(),
];

void checkUnnamed10(core.List<api.EventTicketClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTicketClass(o[0]);
  checkEventTicketClass(o[1]);
}

core.int buildCounterEventTicketClassListResponse = 0;
api.EventTicketClassListResponse buildEventTicketClassListResponse() {
  final o = api.EventTicketClassListResponse();
  buildCounterEventTicketClassListResponse++;
  if (buildCounterEventTicketClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed10();
  }
  buildCounterEventTicketClassListResponse--;
  return o;
}

void checkEventTicketClassListResponse(api.EventTicketClassListResponse o) {
  buildCounterEventTicketClassListResponse++;
  if (buildCounterEventTicketClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed10(o.resources!);
  }
  buildCounterEventTicketClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed11() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed11(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed14() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed14(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed15() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed15(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed16() => [buildMessage(), buildMessage()];

void checkUnnamed16(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed17() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed17(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed18() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed18(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterEventTicketObject = 0;
api.EventTicketObject buildEventTicketObject() {
  final o = api.EventTicketObject();
  buildCounterEventTicketObject++;
  if (buildCounterEventTicketObject < 3) {
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.classId = 'foo';
    o.classReference = buildEventTicketClass();
    o.disableExpirationNotification = true;
    o.faceValue = buildMoney();
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.id = 'foo';
    o.imageModulesData = buildUnnamed11();
    o.infoModuleData = buildInfoModuleData();
    o.kind = 'foo';
    o.linkedObjectIds = buildUnnamed12();
    o.linkedOfferIds = buildUnnamed13();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed14();
    o.merchantLocations = buildUnnamed15();
    o.messages = buildUnnamed16();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.reservationInfo = buildEventReservationInfo();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.seatInfo = buildEventSeat();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed17();
    o.ticketHolderName = 'foo';
    o.ticketNumber = 'foo';
    o.ticketType = buildLocalizedString();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed18();
    o.version = 'foo';
  }
  buildCounterEventTicketObject--;
  return o;
}

void checkEventTicketObject(api.EventTicketObject o) {
  buildCounterEventTicketObject++;
  if (buildCounterEventTicketObject < 3) {
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkEventTicketClass(o.classReference!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    checkMoney(o.faceValue!);
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed11(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed12(o.linkedObjectIds!);
    checkUnnamed13(o.linkedOfferIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed14(o.locations!);
    checkUnnamed15(o.merchantLocations!);
    checkUnnamed16(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    checkEventReservationInfo(o.reservationInfo!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    checkEventSeat(o.seatInfo!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed17(o.textModulesData!);
    unittest.expect(o.ticketHolderName!, unittest.equals('foo'));
    unittest.expect(o.ticketNumber!, unittest.equals('foo'));
    checkLocalizedString(o.ticketType!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed18(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterEventTicketObject--;
}

core.int buildCounterEventTicketObjectAddMessageResponse = 0;
api.EventTicketObjectAddMessageResponse
buildEventTicketObjectAddMessageResponse() {
  final o = api.EventTicketObjectAddMessageResponse();
  buildCounterEventTicketObjectAddMessageResponse++;
  if (buildCounterEventTicketObjectAddMessageResponse < 3) {
    o.resource = buildEventTicketObject();
  }
  buildCounterEventTicketObjectAddMessageResponse--;
  return o;
}

void checkEventTicketObjectAddMessageResponse(
  api.EventTicketObjectAddMessageResponse o,
) {
  buildCounterEventTicketObjectAddMessageResponse++;
  if (buildCounterEventTicketObjectAddMessageResponse < 3) {
    checkEventTicketObject(o.resource!);
  }
  buildCounterEventTicketObjectAddMessageResponse--;
}

core.List<api.EventTicketObject> buildUnnamed19() => [
  buildEventTicketObject(),
  buildEventTicketObject(),
];

void checkUnnamed19(core.List<api.EventTicketObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTicketObject(o[0]);
  checkEventTicketObject(o[1]);
}

core.int buildCounterEventTicketObjectListResponse = 0;
api.EventTicketObjectListResponse buildEventTicketObjectListResponse() {
  final o = api.EventTicketObjectListResponse();
  buildCounterEventTicketObjectListResponse++;
  if (buildCounterEventTicketObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed19();
  }
  buildCounterEventTicketObjectListResponse--;
  return o;
}

void checkEventTicketObjectListResponse(api.EventTicketObjectListResponse o) {
  buildCounterEventTicketObjectListResponse++;
  if (buildCounterEventTicketObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed19(o.resources!);
  }
  buildCounterEventTicketObjectListResponse--;
}

core.int buildCounterEventVenue = 0;
api.EventVenue buildEventVenue() {
  final o = api.EventVenue();
  buildCounterEventVenue++;
  if (buildCounterEventVenue < 3) {
    o.address = buildLocalizedString();
    o.kind = 'foo';
    o.name = buildLocalizedString();
  }
  buildCounterEventVenue--;
  return o;
}

void checkEventVenue(api.EventVenue o) {
  buildCounterEventVenue++;
  if (buildCounterEventVenue < 3) {
    checkLocalizedString(o.address!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLocalizedString(o.name!);
  }
  buildCounterEventVenue--;
}

core.int buildCounterExpiryNotification = 0;
api.ExpiryNotification buildExpiryNotification() {
  final o = api.ExpiryNotification();
  buildCounterExpiryNotification++;
  if (buildCounterExpiryNotification < 3) {
    o.enableNotification = true;
  }
  buildCounterExpiryNotification--;
  return o;
}

void checkExpiryNotification(api.ExpiryNotification o) {
  buildCounterExpiryNotification++;
  if (buildCounterExpiryNotification < 3) {
    unittest.expect(o.enableNotification!, unittest.isTrue);
  }
  buildCounterExpiryNotification--;
}

core.int buildCounterFieldReference = 0;
api.FieldReference buildFieldReference() {
  final o = api.FieldReference();
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    o.dateFormat = 'foo';
    o.fieldPath = 'foo';
  }
  buildCounterFieldReference--;
  return o;
}

void checkFieldReference(api.FieldReference o) {
  buildCounterFieldReference++;
  if (buildCounterFieldReference < 3) {
    unittest.expect(o.dateFormat!, unittest.equals('foo'));
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
  }
  buildCounterFieldReference--;
}

core.List<api.FieldReference> buildUnnamed20() => [
  buildFieldReference(),
  buildFieldReference(),
];

void checkUnnamed20(core.List<api.FieldReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldReference(o[0]);
  checkFieldReference(o[1]);
}

core.int buildCounterFieldSelector = 0;
api.FieldSelector buildFieldSelector() {
  final o = api.FieldSelector();
  buildCounterFieldSelector++;
  if (buildCounterFieldSelector < 3) {
    o.fields = buildUnnamed20();
  }
  buildCounterFieldSelector--;
  return o;
}

void checkFieldSelector(api.FieldSelector o) {
  buildCounterFieldSelector++;
  if (buildCounterFieldSelector < 3) {
    checkUnnamed20(o.fields!);
  }
  buildCounterFieldSelector--;
}

core.int buildCounterFirstRowOption = 0;
api.FirstRowOption buildFirstRowOption() {
  final o = api.FirstRowOption();
  buildCounterFirstRowOption++;
  if (buildCounterFirstRowOption < 3) {
    o.fieldOption = buildFieldSelector();
    o.transitOption = 'foo';
  }
  buildCounterFirstRowOption--;
  return o;
}

void checkFirstRowOption(api.FirstRowOption o) {
  buildCounterFirstRowOption++;
  if (buildCounterFirstRowOption < 3) {
    checkFieldSelector(o.fieldOption!);
    unittest.expect(o.transitOption!, unittest.equals('foo'));
  }
  buildCounterFirstRowOption--;
}

core.int buildCounterFlightCarrier = 0;
api.FlightCarrier buildFlightCarrier() {
  final o = api.FlightCarrier();
  buildCounterFlightCarrier++;
  if (buildCounterFlightCarrier < 3) {
    o.airlineAllianceLogo = buildImage();
    o.airlineLogo = buildImage();
    o.airlineName = buildLocalizedString();
    o.carrierIataCode = 'foo';
    o.carrierIcaoCode = 'foo';
    o.kind = 'foo';
    o.wideAirlineLogo = buildImage();
  }
  buildCounterFlightCarrier--;
  return o;
}

void checkFlightCarrier(api.FlightCarrier o) {
  buildCounterFlightCarrier++;
  if (buildCounterFlightCarrier < 3) {
    checkImage(o.airlineAllianceLogo!);
    checkImage(o.airlineLogo!);
    checkLocalizedString(o.airlineName!);
    unittest.expect(o.carrierIataCode!, unittest.equals('foo'));
    unittest.expect(o.carrierIcaoCode!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkImage(o.wideAirlineLogo!);
  }
  buildCounterFlightCarrier--;
}

core.List<api.ImageModuleData> buildUnnamed21() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed21(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed22() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed22(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed23() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed23(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed24() => [buildMessage(), buildMessage()];

void checkUnnamed24(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed26() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed26(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed27() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed27(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterFlightClass = 0;
api.FlightClass buildFlightClass() {
  final o = api.FlightClass();
  buildCounterFlightClass++;
  if (buildCounterFlightClass < 3) {
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.boardingAndSeatingPolicy = buildBoardingAndSeatingPolicy();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.countryCode = 'foo';
    o.destination = buildAirportInfo();
    o.enableSmartTap = true;
    o.flightHeader = buildFlightHeader();
    o.flightStatus = 'foo';
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed21();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.kind = 'foo';
    o.languageOverride = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localBoardingDateTime = 'foo';
    o.localEstimatedOrActualArrivalDateTime = 'foo';
    o.localEstimatedOrActualDepartureDateTime = 'foo';
    o.localGateClosingDateTime = 'foo';
    o.localScheduledArrivalDateTime = 'foo';
    o.localScheduledDepartureDateTime = 'foo';
    o.localizedIssuerName = buildLocalizedString();
    o.locations = buildUnnamed22();
    o.merchantLocations = buildUnnamed23();
    o.messages = buildUnnamed24();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.origin = buildAirportInfo();
    o.redemptionIssuers = buildUnnamed25();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed26();
    o.valueAddedModuleData = buildUnnamed27();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.wordMark = buildImage();
  }
  buildCounterFlightClass--;
  return o;
}

void checkFlightClass(api.FlightClass o) {
  buildCounterFlightClass++;
  if (buildCounterFlightClass < 3) {
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkBoardingAndSeatingPolicy(o.boardingAndSeatingPolicy!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    checkAirportInfo(o.destination!);
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    checkFlightHeader(o.flightHeader!);
    unittest.expect(o.flightStatus!, unittest.equals('foo'));
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed21(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.languageOverride!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    unittest.expect(o.localBoardingDateTime!, unittest.equals('foo'));
    unittest.expect(
      o.localEstimatedOrActualArrivalDateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localEstimatedOrActualDepartureDateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.localGateClosingDateTime!, unittest.equals('foo'));
    unittest.expect(o.localScheduledArrivalDateTime!, unittest.equals('foo'));
    unittest.expect(o.localScheduledDepartureDateTime!, unittest.equals('foo'));
    checkLocalizedString(o.localizedIssuerName!);
    checkUnnamed22(o.locations!);
    checkUnnamed23(o.merchantLocations!);
    checkUnnamed24(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkAirportInfo(o.origin!);
    checkUnnamed25(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed26(o.textModulesData!);
    checkUnnamed27(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.wordMark!);
  }
  buildCounterFlightClass--;
}

core.int buildCounterFlightClassAddMessageResponse = 0;
api.FlightClassAddMessageResponse buildFlightClassAddMessageResponse() {
  final o = api.FlightClassAddMessageResponse();
  buildCounterFlightClassAddMessageResponse++;
  if (buildCounterFlightClassAddMessageResponse < 3) {
    o.resource = buildFlightClass();
  }
  buildCounterFlightClassAddMessageResponse--;
  return o;
}

void checkFlightClassAddMessageResponse(api.FlightClassAddMessageResponse o) {
  buildCounterFlightClassAddMessageResponse++;
  if (buildCounterFlightClassAddMessageResponse < 3) {
    checkFlightClass(o.resource!);
  }
  buildCounterFlightClassAddMessageResponse--;
}

core.List<api.FlightClass> buildUnnamed28() => [
  buildFlightClass(),
  buildFlightClass(),
];

void checkUnnamed28(core.List<api.FlightClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlightClass(o[0]);
  checkFlightClass(o[1]);
}

core.int buildCounterFlightClassListResponse = 0;
api.FlightClassListResponse buildFlightClassListResponse() {
  final o = api.FlightClassListResponse();
  buildCounterFlightClassListResponse++;
  if (buildCounterFlightClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed28();
  }
  buildCounterFlightClassListResponse--;
  return o;
}

void checkFlightClassListResponse(api.FlightClassListResponse o) {
  buildCounterFlightClassListResponse++;
  if (buildCounterFlightClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed28(o.resources!);
  }
  buildCounterFlightClassListResponse--;
}

core.int buildCounterFlightHeader = 0;
api.FlightHeader buildFlightHeader() {
  final o = api.FlightHeader();
  buildCounterFlightHeader++;
  if (buildCounterFlightHeader < 3) {
    o.carrier = buildFlightCarrier();
    o.flightNumber = 'foo';
    o.flightNumberDisplayOverride = 'foo';
    o.kind = 'foo';
    o.operatingCarrier = buildFlightCarrier();
    o.operatingFlightNumber = 'foo';
  }
  buildCounterFlightHeader--;
  return o;
}

void checkFlightHeader(api.FlightHeader o) {
  buildCounterFlightHeader++;
  if (buildCounterFlightHeader < 3) {
    checkFlightCarrier(o.carrier!);
    unittest.expect(o.flightNumber!, unittest.equals('foo'));
    unittest.expect(o.flightNumberDisplayOverride!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkFlightCarrier(o.operatingCarrier!);
    unittest.expect(o.operatingFlightNumber!, unittest.equals('foo'));
  }
  buildCounterFlightHeader--;
}

core.List<api.ImageModuleData> buildUnnamed29() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed29(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed31() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed31(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed32() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed32(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed33() => [buildMessage(), buildMessage()];

void checkUnnamed33(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed34() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed34(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed35() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed35(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterFlightObject = 0;
api.FlightObject buildFlightObject() {
  final o = api.FlightObject();
  buildCounterFlightObject++;
  if (buildCounterFlightObject < 3) {
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.boardingAndSeatingInfo = buildBoardingAndSeatingInfo();
    o.classId = 'foo';
    o.classReference = buildFlightClass();
    o.disableExpirationNotification = true;
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.id = 'foo';
    o.imageModulesData = buildUnnamed29();
    o.infoModuleData = buildInfoModuleData();
    o.kind = 'foo';
    o.linkedObjectIds = buildUnnamed30();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed31();
    o.merchantLocations = buildUnnamed32();
    o.messages = buildUnnamed33();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.passengerName = 'foo';
    o.reservationInfo = buildReservationInfo();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.securityProgramLogo = buildImage();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed34();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed35();
    o.version = 'foo';
  }
  buildCounterFlightObject--;
  return o;
}

void checkFlightObject(api.FlightObject o) {
  buildCounterFlightObject++;
  if (buildCounterFlightObject < 3) {
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    checkBoardingAndSeatingInfo(o.boardingAndSeatingInfo!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkFlightClass(o.classReference!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed29(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed30(o.linkedObjectIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed31(o.locations!);
    checkUnnamed32(o.merchantLocations!);
    checkUnnamed33(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    unittest.expect(o.passengerName!, unittest.equals('foo'));
    checkReservationInfo(o.reservationInfo!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    checkImage(o.securityProgramLogo!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed34(o.textModulesData!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed35(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterFlightObject--;
}

core.int buildCounterFlightObjectAddMessageResponse = 0;
api.FlightObjectAddMessageResponse buildFlightObjectAddMessageResponse() {
  final o = api.FlightObjectAddMessageResponse();
  buildCounterFlightObjectAddMessageResponse++;
  if (buildCounterFlightObjectAddMessageResponse < 3) {
    o.resource = buildFlightObject();
  }
  buildCounterFlightObjectAddMessageResponse--;
  return o;
}

void checkFlightObjectAddMessageResponse(api.FlightObjectAddMessageResponse o) {
  buildCounterFlightObjectAddMessageResponse++;
  if (buildCounterFlightObjectAddMessageResponse < 3) {
    checkFlightObject(o.resource!);
  }
  buildCounterFlightObjectAddMessageResponse--;
}

core.List<api.FlightObject> buildUnnamed36() => [
  buildFlightObject(),
  buildFlightObject(),
];

void checkUnnamed36(core.List<api.FlightObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlightObject(o[0]);
  checkFlightObject(o[1]);
}

core.int buildCounterFlightObjectListResponse = 0;
api.FlightObjectListResponse buildFlightObjectListResponse() {
  final o = api.FlightObjectListResponse();
  buildCounterFlightObjectListResponse++;
  if (buildCounterFlightObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed36();
  }
  buildCounterFlightObjectListResponse--;
  return o;
}

void checkFlightObjectListResponse(api.FlightObjectListResponse o) {
  buildCounterFlightObjectListResponse++;
  if (buildCounterFlightObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed36(o.resources!);
  }
  buildCounterFlightObjectListResponse--;
}

core.int buildCounterFrequentFlyerInfo = 0;
api.FrequentFlyerInfo buildFrequentFlyerInfo() {
  final o = api.FrequentFlyerInfo();
  buildCounterFrequentFlyerInfo++;
  if (buildCounterFrequentFlyerInfo < 3) {
    o.frequentFlyerNumber = 'foo';
    o.frequentFlyerProgramName = buildLocalizedString();
    o.kind = 'foo';
  }
  buildCounterFrequentFlyerInfo--;
  return o;
}

void checkFrequentFlyerInfo(api.FrequentFlyerInfo o) {
  buildCounterFrequentFlyerInfo++;
  if (buildCounterFrequentFlyerInfo < 3) {
    unittest.expect(o.frequentFlyerNumber!, unittest.equals('foo'));
    checkLocalizedString(o.frequentFlyerProgramName!);
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterFrequentFlyerInfo--;
}

core.List<api.ImageModuleData> buildUnnamed37() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed37(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed38() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed38(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed39() => [buildMessage(), buildMessage()];

void checkUnnamed39(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed40() => ['foo', 'foo'];

void checkUnnamed40(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed41() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed41(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed42() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed42(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterGenericClass = 0;
api.GenericClass buildGenericClass() {
  final o = api.GenericClass();
  buildCounterGenericClass++;
  if (buildCounterGenericClass < 3) {
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.enableSmartTap = true;
    o.id = 'foo';
    o.imageModulesData = buildUnnamed37();
    o.linksModuleData = buildLinksModuleData();
    o.merchantLocations = buildUnnamed38();
    o.messages = buildUnnamed39();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.redemptionIssuers = buildUnnamed40();
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed41();
    o.valueAddedModuleData = buildUnnamed42();
    o.viewUnlockRequirement = 'foo';
  }
  buildCounterGenericClass--;
  return o;
}

void checkGenericClass(api.GenericClass o) {
  buildCounterGenericClass++;
  if (buildCounterGenericClass < 3) {
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed37(o.imageModulesData!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed38(o.merchantLocations!);
    checkUnnamed39(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.redemptionIssuers!);
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed41(o.textModulesData!);
    checkUnnamed42(o.valueAddedModuleData!);
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
  }
  buildCounterGenericClass--;
}

core.int buildCounterGenericClassAddMessageResponse = 0;
api.GenericClassAddMessageResponse buildGenericClassAddMessageResponse() {
  final o = api.GenericClassAddMessageResponse();
  buildCounterGenericClassAddMessageResponse++;
  if (buildCounterGenericClassAddMessageResponse < 3) {
    o.resource = buildGenericClass();
  }
  buildCounterGenericClassAddMessageResponse--;
  return o;
}

void checkGenericClassAddMessageResponse(api.GenericClassAddMessageResponse o) {
  buildCounterGenericClassAddMessageResponse++;
  if (buildCounterGenericClassAddMessageResponse < 3) {
    checkGenericClass(o.resource!);
  }
  buildCounterGenericClassAddMessageResponse--;
}

core.List<api.GenericClass> buildUnnamed43() => [
  buildGenericClass(),
  buildGenericClass(),
];

void checkUnnamed43(core.List<api.GenericClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGenericClass(o[0]);
  checkGenericClass(o[1]);
}

core.int buildCounterGenericClassListResponse = 0;
api.GenericClassListResponse buildGenericClassListResponse() {
  final o = api.GenericClassListResponse();
  buildCounterGenericClassListResponse++;
  if (buildCounterGenericClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed43();
  }
  buildCounterGenericClassListResponse--;
  return o;
}

void checkGenericClassListResponse(api.GenericClassListResponse o) {
  buildCounterGenericClassListResponse++;
  if (buildCounterGenericClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed43(o.resources!);
  }
  buildCounterGenericClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed44() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed44(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.MerchantLocation> buildUnnamed46() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed46(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed47() => [buildMessage(), buildMessage()];

void checkUnnamed47(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed48() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed48(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed49() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed49(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterGenericObject = 0;
api.GenericObject buildGenericObject() {
  final o = api.GenericObject();
  buildCounterGenericObject++;
  if (buildCounterGenericObject < 3) {
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.cardTitle = buildLocalizedString();
    o.classId = 'foo';
    o.genericType = 'foo';
    o.groupingInfo = buildGroupingInfo();
    o.hasUsers = true;
    o.header = buildLocalizedString();
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.id = 'foo';
    o.imageModulesData = buildUnnamed44();
    o.linkedObjectIds = buildUnnamed45();
    o.linksModuleData = buildLinksModuleData();
    o.logo = buildImage();
    o.merchantLocations = buildUnnamed46();
    o.messages = buildUnnamed47();
    o.notifications = buildNotifications();
    o.passConstraints = buildPassConstraints();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.subheader = buildLocalizedString();
    o.textModulesData = buildUnnamed48();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed49();
    o.wideLogo = buildImage();
  }
  buildCounterGenericObject--;
  return o;
}

void checkGenericObject(api.GenericObject o) {
  buildCounterGenericObject++;
  if (buildCounterGenericObject < 3) {
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    checkLocalizedString(o.cardTitle!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    unittest.expect(o.genericType!, unittest.equals('foo'));
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkLocalizedString(o.header!);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed44(o.imageModulesData!);
    checkUnnamed45(o.linkedObjectIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkImage(o.logo!);
    checkUnnamed46(o.merchantLocations!);
    checkUnnamed47(o.messages!);
    checkNotifications(o.notifications!);
    checkPassConstraints(o.passConstraints!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkLocalizedString(o.subheader!);
    checkUnnamed48(o.textModulesData!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed49(o.valueAddedModuleData!);
    checkImage(o.wideLogo!);
  }
  buildCounterGenericObject--;
}

core.int buildCounterGenericObjectAddMessageResponse = 0;
api.GenericObjectAddMessageResponse buildGenericObjectAddMessageResponse() {
  final o = api.GenericObjectAddMessageResponse();
  buildCounterGenericObjectAddMessageResponse++;
  if (buildCounterGenericObjectAddMessageResponse < 3) {
    o.resource = buildGenericObject();
  }
  buildCounterGenericObjectAddMessageResponse--;
  return o;
}

void checkGenericObjectAddMessageResponse(
  api.GenericObjectAddMessageResponse o,
) {
  buildCounterGenericObjectAddMessageResponse++;
  if (buildCounterGenericObjectAddMessageResponse < 3) {
    checkGenericObject(o.resource!);
  }
  buildCounterGenericObjectAddMessageResponse--;
}

core.List<api.GenericObject> buildUnnamed50() => [
  buildGenericObject(),
  buildGenericObject(),
];

void checkUnnamed50(core.List<api.GenericObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGenericObject(o[0]);
  checkGenericObject(o[1]);
}

core.int buildCounterGenericObjectListResponse = 0;
api.GenericObjectListResponse buildGenericObjectListResponse() {
  final o = api.GenericObjectListResponse();
  buildCounterGenericObjectListResponse++;
  if (buildCounterGenericObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed50();
  }
  buildCounterGenericObjectListResponse--;
  return o;
}

void checkGenericObjectListResponse(api.GenericObjectListResponse o) {
  buildCounterGenericObjectListResponse++;
  if (buildCounterGenericObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed50(o.resources!);
  }
  buildCounterGenericObjectListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed51() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed51(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed52() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed52(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed53() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed53(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed54() => [buildMessage(), buildMessage()];

void checkUnnamed54(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed56() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed56(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed57() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed57(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterGiftCardClass = 0;
api.GiftCardClass buildGiftCardClass() {
  final o = api.GiftCardClass();
  buildCounterGiftCardClass++;
  if (buildCounterGiftCardClass < 3) {
    o.allowBarcodeRedemption = true;
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.cardNumberLabel = 'foo';
    o.classTemplateInfo = buildClassTemplateInfo();
    o.countryCode = 'foo';
    o.enableSmartTap = true;
    o.eventNumberLabel = 'foo';
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed51();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.kind = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localizedCardNumberLabel = buildLocalizedString();
    o.localizedEventNumberLabel = buildLocalizedString();
    o.localizedIssuerName = buildLocalizedString();
    o.localizedMerchantName = buildLocalizedString();
    o.localizedPinLabel = buildLocalizedString();
    o.locations = buildUnnamed52();
    o.merchantLocations = buildUnnamed53();
    o.merchantName = 'foo';
    o.messages = buildUnnamed54();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.pinLabel = 'foo';
    o.programLogo = buildImage();
    o.redemptionIssuers = buildUnnamed55();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed56();
    o.valueAddedModuleData = buildUnnamed57();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.wideProgramLogo = buildImage();
    o.wordMark = buildImage();
  }
  buildCounterGiftCardClass--;
  return o;
}

void checkGiftCardClass(api.GiftCardClass o) {
  buildCounterGiftCardClass++;
  if (buildCounterGiftCardClass < 3) {
    unittest.expect(o.allowBarcodeRedemption!, unittest.isTrue);
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    unittest.expect(o.cardNumberLabel!, unittest.equals('foo'));
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    unittest.expect(o.eventNumberLabel!, unittest.equals('foo'));
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed51(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    checkLocalizedString(o.localizedCardNumberLabel!);
    checkLocalizedString(o.localizedEventNumberLabel!);
    checkLocalizedString(o.localizedIssuerName!);
    checkLocalizedString(o.localizedMerchantName!);
    checkLocalizedString(o.localizedPinLabel!);
    checkUnnamed52(o.locations!);
    checkUnnamed53(o.merchantLocations!);
    unittest.expect(o.merchantName!, unittest.equals('foo'));
    checkUnnamed54(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    unittest.expect(o.pinLabel!, unittest.equals('foo'));
    checkImage(o.programLogo!);
    checkUnnamed55(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed56(o.textModulesData!);
    checkUnnamed57(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.wideProgramLogo!);
    checkImage(o.wordMark!);
  }
  buildCounterGiftCardClass--;
}

core.int buildCounterGiftCardClassAddMessageResponse = 0;
api.GiftCardClassAddMessageResponse buildGiftCardClassAddMessageResponse() {
  final o = api.GiftCardClassAddMessageResponse();
  buildCounterGiftCardClassAddMessageResponse++;
  if (buildCounterGiftCardClassAddMessageResponse < 3) {
    o.resource = buildGiftCardClass();
  }
  buildCounterGiftCardClassAddMessageResponse--;
  return o;
}

void checkGiftCardClassAddMessageResponse(
  api.GiftCardClassAddMessageResponse o,
) {
  buildCounterGiftCardClassAddMessageResponse++;
  if (buildCounterGiftCardClassAddMessageResponse < 3) {
    checkGiftCardClass(o.resource!);
  }
  buildCounterGiftCardClassAddMessageResponse--;
}

core.List<api.GiftCardClass> buildUnnamed58() => [
  buildGiftCardClass(),
  buildGiftCardClass(),
];

void checkUnnamed58(core.List<api.GiftCardClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiftCardClass(o[0]);
  checkGiftCardClass(o[1]);
}

core.int buildCounterGiftCardClassListResponse = 0;
api.GiftCardClassListResponse buildGiftCardClassListResponse() {
  final o = api.GiftCardClassListResponse();
  buildCounterGiftCardClassListResponse++;
  if (buildCounterGiftCardClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed58();
  }
  buildCounterGiftCardClassListResponse--;
  return o;
}

void checkGiftCardClassListResponse(api.GiftCardClassListResponse o) {
  buildCounterGiftCardClassListResponse++;
  if (buildCounterGiftCardClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed58(o.resources!);
  }
  buildCounterGiftCardClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed59() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed59(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed60() => ['foo', 'foo'];

void checkUnnamed60(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed61() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed61(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed62() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed62(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed63() => [buildMessage(), buildMessage()];

void checkUnnamed63(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed64() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed64(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed65() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed65(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterGiftCardObject = 0;
api.GiftCardObject buildGiftCardObject() {
  final o = api.GiftCardObject();
  buildCounterGiftCardObject++;
  if (buildCounterGiftCardObject < 3) {
    o.appLinkData = buildAppLinkData();
    o.balance = buildMoney();
    o.balanceUpdateTime = buildDateTime();
    o.barcode = buildBarcode();
    o.cardNumber = 'foo';
    o.classId = 'foo';
    o.classReference = buildGiftCardClass();
    o.disableExpirationNotification = true;
    o.eventNumber = 'foo';
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed59();
    o.infoModuleData = buildInfoModuleData();
    o.kind = 'foo';
    o.linkedObjectIds = buildUnnamed60();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed61();
    o.merchantLocations = buildUnnamed62();
    o.messages = buildUnnamed63();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.pin = 'foo';
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed64();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed65();
    o.version = 'foo';
  }
  buildCounterGiftCardObject--;
  return o;
}

void checkGiftCardObject(api.GiftCardObject o) {
  buildCounterGiftCardObject++;
  if (buildCounterGiftCardObject < 3) {
    checkAppLinkData(o.appLinkData!);
    checkMoney(o.balance!);
    checkDateTime(o.balanceUpdateTime!);
    checkBarcode(o.barcode!);
    unittest.expect(o.cardNumber!, unittest.equals('foo'));
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkGiftCardClass(o.classReference!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    unittest.expect(o.eventNumber!, unittest.equals('foo'));
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed59(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed60(o.linkedObjectIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed61(o.locations!);
    checkUnnamed62(o.merchantLocations!);
    checkUnnamed63(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    unittest.expect(o.pin!, unittest.equals('foo'));
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed64(o.textModulesData!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed65(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGiftCardObject--;
}

core.int buildCounterGiftCardObjectAddMessageResponse = 0;
api.GiftCardObjectAddMessageResponse buildGiftCardObjectAddMessageResponse() {
  final o = api.GiftCardObjectAddMessageResponse();
  buildCounterGiftCardObjectAddMessageResponse++;
  if (buildCounterGiftCardObjectAddMessageResponse < 3) {
    o.resource = buildGiftCardObject();
  }
  buildCounterGiftCardObjectAddMessageResponse--;
  return o;
}

void checkGiftCardObjectAddMessageResponse(
  api.GiftCardObjectAddMessageResponse o,
) {
  buildCounterGiftCardObjectAddMessageResponse++;
  if (buildCounterGiftCardObjectAddMessageResponse < 3) {
    checkGiftCardObject(o.resource!);
  }
  buildCounterGiftCardObjectAddMessageResponse--;
}

core.List<api.GiftCardObject> buildUnnamed66() => [
  buildGiftCardObject(),
  buildGiftCardObject(),
];

void checkUnnamed66(core.List<api.GiftCardObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiftCardObject(o[0]);
  checkGiftCardObject(o[1]);
}

core.int buildCounterGiftCardObjectListResponse = 0;
api.GiftCardObjectListResponse buildGiftCardObjectListResponse() {
  final o = api.GiftCardObjectListResponse();
  buildCounterGiftCardObjectListResponse++;
  if (buildCounterGiftCardObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed66();
  }
  buildCounterGiftCardObjectListResponse--;
  return o;
}

void checkGiftCardObjectListResponse(api.GiftCardObjectListResponse o) {
  buildCounterGiftCardObjectListResponse++;
  if (buildCounterGiftCardObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed66(o.resources!);
  }
  buildCounterGiftCardObjectListResponse--;
}

core.int buildCounterGroupingInfo = 0;
api.GroupingInfo buildGroupingInfo() {
  final o = api.GroupingInfo();
  buildCounterGroupingInfo++;
  if (buildCounterGroupingInfo < 3) {
    o.groupingId = 'foo';
    o.sortIndex = 42;
  }
  buildCounterGroupingInfo--;
  return o;
}

void checkGroupingInfo(api.GroupingInfo o) {
  buildCounterGroupingInfo++;
  if (buildCounterGroupingInfo < 3) {
    unittest.expect(o.groupingId!, unittest.equals('foo'));
    unittest.expect(o.sortIndex!, unittest.equals(42));
  }
  buildCounterGroupingInfo--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.contentDescription = buildLocalizedString();
    o.kind = 'foo';
    o.privateImageId = 'foo';
    o.sourceUri = buildImageUri();
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    checkLocalizedString(o.contentDescription!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.privateImageId!, unittest.equals('foo'));
    checkImageUri(o.sourceUri!);
  }
  buildCounterImage--;
}

core.int buildCounterImageModuleData = 0;
api.ImageModuleData buildImageModuleData() {
  final o = api.ImageModuleData();
  buildCounterImageModuleData++;
  if (buildCounterImageModuleData < 3) {
    o.id = 'foo';
    o.mainImage = buildImage();
  }
  buildCounterImageModuleData--;
  return o;
}

void checkImageModuleData(api.ImageModuleData o) {
  buildCounterImageModuleData++;
  if (buildCounterImageModuleData < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkImage(o.mainImage!);
  }
  buildCounterImageModuleData--;
}

core.int buildCounterImageUri = 0;
api.ImageUri buildImageUri() {
  final o = api.ImageUri();
  buildCounterImageUri++;
  if (buildCounterImageUri < 3) {
    o.description = 'foo';
    o.localizedDescription = buildLocalizedString();
    o.uri = 'foo';
  }
  buildCounterImageUri--;
  return o;
}

void checkImageUri(api.ImageUri o) {
  buildCounterImageUri++;
  if (buildCounterImageUri < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkLocalizedString(o.localizedDescription!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterImageUri--;
}

core.List<api.LabelValueRow> buildUnnamed67() => [
  buildLabelValueRow(),
  buildLabelValueRow(),
];

void checkUnnamed67(core.List<api.LabelValueRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelValueRow(o[0]);
  checkLabelValueRow(o[1]);
}

core.int buildCounterInfoModuleData = 0;
api.InfoModuleData buildInfoModuleData() {
  final o = api.InfoModuleData();
  buildCounterInfoModuleData++;
  if (buildCounterInfoModuleData < 3) {
    o.labelValueRows = buildUnnamed67();
    o.showLastUpdateTime = true;
  }
  buildCounterInfoModuleData--;
  return o;
}

void checkInfoModuleData(api.InfoModuleData o) {
  buildCounterInfoModuleData++;
  if (buildCounterInfoModuleData < 3) {
    checkUnnamed67(o.labelValueRows!);
    unittest.expect(o.showLastUpdateTime!, unittest.isTrue);
  }
  buildCounterInfoModuleData--;
}

core.int buildCounterIssuer = 0;
api.Issuer buildIssuer() {
  final o = api.Issuer();
  buildCounterIssuer++;
  if (buildCounterIssuer < 3) {
    o.callbackOptions = buildCallbackOptions();
    o.contactInfo = buildIssuerContactInfo();
    o.homepageUrl = 'foo';
    o.issuerId = 'foo';
    o.name = 'foo';
    o.smartTapMerchantData = buildSmartTapMerchantData();
  }
  buildCounterIssuer--;
  return o;
}

void checkIssuer(api.Issuer o) {
  buildCounterIssuer++;
  if (buildCounterIssuer < 3) {
    checkCallbackOptions(o.callbackOptions!);
    checkIssuerContactInfo(o.contactInfo!);
    unittest.expect(o.homepageUrl!, unittest.equals('foo'));
    unittest.expect(o.issuerId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSmartTapMerchantData(o.smartTapMerchantData!);
  }
  buildCounterIssuer--;
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIssuerContactInfo = 0;
api.IssuerContactInfo buildIssuerContactInfo() {
  final o = api.IssuerContactInfo();
  buildCounterIssuerContactInfo++;
  if (buildCounterIssuerContactInfo < 3) {
    o.alertsEmails = buildUnnamed68();
    o.email = 'foo';
    o.name = 'foo';
    o.phone = 'foo';
  }
  buildCounterIssuerContactInfo--;
  return o;
}

void checkIssuerContactInfo(api.IssuerContactInfo o) {
  buildCounterIssuerContactInfo++;
  if (buildCounterIssuerContactInfo < 3) {
    checkUnnamed68(o.alertsEmails!);
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.phone!, unittest.equals('foo'));
  }
  buildCounterIssuerContactInfo--;
}

core.List<api.Issuer> buildUnnamed69() => [buildIssuer(), buildIssuer()];

void checkUnnamed69(core.List<api.Issuer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssuer(o[0]);
  checkIssuer(o[1]);
}

core.int buildCounterIssuerListResponse = 0;
api.IssuerListResponse buildIssuerListResponse() {
  final o = api.IssuerListResponse();
  buildCounterIssuerListResponse++;
  if (buildCounterIssuerListResponse < 3) {
    o.resources = buildUnnamed69();
  }
  buildCounterIssuerListResponse--;
  return o;
}

void checkIssuerListResponse(api.IssuerListResponse o) {
  buildCounterIssuerListResponse++;
  if (buildCounterIssuerListResponse < 3) {
    checkUnnamed69(o.resources!);
  }
  buildCounterIssuerListResponse--;
}

core.int buildCounterIssuerToUserInfo = 0;
api.IssuerToUserInfo buildIssuerToUserInfo() {
  final o = api.IssuerToUserInfo();
  buildCounterIssuerToUserInfo++;
  if (buildCounterIssuerToUserInfo < 3) {
    o.action = 'foo';
    o.signUpInfo = buildSignUpInfo();
    o.url = 'foo';
    o.value = 'foo';
  }
  buildCounterIssuerToUserInfo--;
  return o;
}

void checkIssuerToUserInfo(api.IssuerToUserInfo o) {
  buildCounterIssuerToUserInfo++;
  if (buildCounterIssuerToUserInfo < 3) {
    unittest.expect(o.action!, unittest.equals('foo'));
    checkSignUpInfo(o.signUpInfo!);
    unittest.expect(o.url!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterIssuerToUserInfo--;
}

core.int buildCounterJwtInsertResponse = 0;
api.JwtInsertResponse buildJwtInsertResponse() {
  final o = api.JwtInsertResponse();
  buildCounterJwtInsertResponse++;
  if (buildCounterJwtInsertResponse < 3) {
    o.resources = buildResources();
    o.saveUri = 'foo';
  }
  buildCounterJwtInsertResponse--;
  return o;
}

void checkJwtInsertResponse(api.JwtInsertResponse o) {
  buildCounterJwtInsertResponse++;
  if (buildCounterJwtInsertResponse < 3) {
    checkResources(o.resources!);
    unittest.expect(o.saveUri!, unittest.equals('foo'));
  }
  buildCounterJwtInsertResponse--;
}

core.int buildCounterJwtResource = 0;
api.JwtResource buildJwtResource() {
  final o = api.JwtResource();
  buildCounterJwtResource++;
  if (buildCounterJwtResource < 3) {
    o.jwt = 'foo';
  }
  buildCounterJwtResource--;
  return o;
}

void checkJwtResource(api.JwtResource o) {
  buildCounterJwtResource++;
  if (buildCounterJwtResource < 3) {
    unittest.expect(o.jwt!, unittest.equals('foo'));
  }
  buildCounterJwtResource--;
}

core.int buildCounterLabelValue = 0;
api.LabelValue buildLabelValue() {
  final o = api.LabelValue();
  buildCounterLabelValue++;
  if (buildCounterLabelValue < 3) {
    o.label = 'foo';
    o.localizedLabel = buildLocalizedString();
    o.localizedValue = buildLocalizedString();
    o.value = 'foo';
  }
  buildCounterLabelValue--;
  return o;
}

void checkLabelValue(api.LabelValue o) {
  buildCounterLabelValue++;
  if (buildCounterLabelValue < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    checkLocalizedString(o.localizedLabel!);
    checkLocalizedString(o.localizedValue!);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterLabelValue--;
}

core.List<api.LabelValue> buildUnnamed70() => [
  buildLabelValue(),
  buildLabelValue(),
];

void checkUnnamed70(core.List<api.LabelValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLabelValue(o[0]);
  checkLabelValue(o[1]);
}

core.int buildCounterLabelValueRow = 0;
api.LabelValueRow buildLabelValueRow() {
  final o = api.LabelValueRow();
  buildCounterLabelValueRow++;
  if (buildCounterLabelValueRow < 3) {
    o.columns = buildUnnamed70();
  }
  buildCounterLabelValueRow--;
  return o;
}

void checkLabelValueRow(api.LabelValueRow o) {
  buildCounterLabelValueRow++;
  if (buildCounterLabelValueRow < 3) {
    checkUnnamed70(o.columns!);
  }
  buildCounterLabelValueRow--;
}

core.int buildCounterLatLongPoint = 0;
api.LatLongPoint buildLatLongPoint() {
  final o = api.LatLongPoint();
  buildCounterLatLongPoint++;
  if (buildCounterLatLongPoint < 3) {
    o.kind = 'foo';
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLongPoint--;
  return o;
}

void checkLatLongPoint(api.LatLongPoint o) {
  buildCounterLatLongPoint++;
  if (buildCounterLatLongPoint < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterLatLongPoint--;
}

core.List<api.Uri> buildUnnamed71() => [buildUri(), buildUri()];

void checkUnnamed71(core.List<api.Uri> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUri(o[0]);
  checkUri(o[1]);
}

core.int buildCounterLinksModuleData = 0;
api.LinksModuleData buildLinksModuleData() {
  final o = api.LinksModuleData();
  buildCounterLinksModuleData++;
  if (buildCounterLinksModuleData < 3) {
    o.uris = buildUnnamed71();
  }
  buildCounterLinksModuleData--;
  return o;
}

void checkLinksModuleData(api.LinksModuleData o) {
  buildCounterLinksModuleData++;
  if (buildCounterLinksModuleData < 3) {
    checkUnnamed71(o.uris!);
  }
  buildCounterLinksModuleData--;
}

core.int buildCounterListTemplateOverride = 0;
api.ListTemplateOverride buildListTemplateOverride() {
  final o = api.ListTemplateOverride();
  buildCounterListTemplateOverride++;
  if (buildCounterListTemplateOverride < 3) {
    o.firstRowOption = buildFirstRowOption();
    o.secondRowOption = buildFieldSelector();
    o.thirdRowOption = buildFieldSelector();
  }
  buildCounterListTemplateOverride--;
  return o;
}

void checkListTemplateOverride(api.ListTemplateOverride o) {
  buildCounterListTemplateOverride++;
  if (buildCounterListTemplateOverride < 3) {
    checkFirstRowOption(o.firstRowOption!);
    checkFieldSelector(o.secondRowOption!);
    checkFieldSelector(o.thirdRowOption!);
  }
  buildCounterListTemplateOverride--;
}

core.List<api.TranslatedString> buildUnnamed72() => [
  buildTranslatedString(),
  buildTranslatedString(),
];

void checkUnnamed72(core.List<api.TranslatedString> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranslatedString(o[0]);
  checkTranslatedString(o[1]);
}

core.int buildCounterLocalizedString = 0;
api.LocalizedString buildLocalizedString() {
  final o = api.LocalizedString();
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    o.defaultValue = buildTranslatedString();
    o.kind = 'foo';
    o.translatedValues = buildUnnamed72();
  }
  buildCounterLocalizedString--;
  return o;
}

void checkLocalizedString(api.LocalizedString o) {
  buildCounterLocalizedString++;
  if (buildCounterLocalizedString < 3) {
    checkTranslatedString(o.defaultValue!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed72(o.translatedValues!);
  }
  buildCounterLocalizedString--;
}

core.List<api.ImageModuleData> buildUnnamed73() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed73(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed74() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed74(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed75() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed75(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed76() => [buildMessage(), buildMessage()];

void checkUnnamed76(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed78() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed78(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed79() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed79(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterLoyaltyClass = 0;
api.LoyaltyClass buildLoyaltyClass() {
  final o = api.LoyaltyClass();
  buildCounterLoyaltyClass++;
  if (buildCounterLoyaltyClass < 3) {
    o.accountIdLabel = 'foo';
    o.accountNameLabel = 'foo';
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.countryCode = 'foo';
    o.discoverableProgram = buildDiscoverableProgram();
    o.enableSmartTap = true;
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed73();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.kind = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localizedAccountIdLabel = buildLocalizedString();
    o.localizedAccountNameLabel = buildLocalizedString();
    o.localizedIssuerName = buildLocalizedString();
    o.localizedProgramName = buildLocalizedString();
    o.localizedRewardsTier = buildLocalizedString();
    o.localizedRewardsTierLabel = buildLocalizedString();
    o.localizedSecondaryRewardsTier = buildLocalizedString();
    o.localizedSecondaryRewardsTierLabel = buildLocalizedString();
    o.locations = buildUnnamed74();
    o.merchantLocations = buildUnnamed75();
    o.messages = buildUnnamed76();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.programLogo = buildImage();
    o.programName = 'foo';
    o.redemptionIssuers = buildUnnamed77();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.rewardsTier = 'foo';
    o.rewardsTierLabel = 'foo';
    o.secondaryRewardsTier = 'foo';
    o.secondaryRewardsTierLabel = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed78();
    o.valueAddedModuleData = buildUnnamed79();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.wideProgramLogo = buildImage();
    o.wordMark = buildImage();
  }
  buildCounterLoyaltyClass--;
  return o;
}

void checkLoyaltyClass(api.LoyaltyClass o) {
  buildCounterLoyaltyClass++;
  if (buildCounterLoyaltyClass < 3) {
    unittest.expect(o.accountIdLabel!, unittest.equals('foo'));
    unittest.expect(o.accountNameLabel!, unittest.equals('foo'));
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    checkDiscoverableProgram(o.discoverableProgram!);
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed73(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    checkLocalizedString(o.localizedAccountIdLabel!);
    checkLocalizedString(o.localizedAccountNameLabel!);
    checkLocalizedString(o.localizedIssuerName!);
    checkLocalizedString(o.localizedProgramName!);
    checkLocalizedString(o.localizedRewardsTier!);
    checkLocalizedString(o.localizedRewardsTierLabel!);
    checkLocalizedString(o.localizedSecondaryRewardsTier!);
    checkLocalizedString(o.localizedSecondaryRewardsTierLabel!);
    checkUnnamed74(o.locations!);
    checkUnnamed75(o.merchantLocations!);
    checkUnnamed76(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkImage(o.programLogo!);
    unittest.expect(o.programName!, unittest.equals('foo'));
    checkUnnamed77(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    unittest.expect(o.rewardsTier!, unittest.equals('foo'));
    unittest.expect(o.rewardsTierLabel!, unittest.equals('foo'));
    unittest.expect(o.secondaryRewardsTier!, unittest.equals('foo'));
    unittest.expect(o.secondaryRewardsTierLabel!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed78(o.textModulesData!);
    checkUnnamed79(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.wideProgramLogo!);
    checkImage(o.wordMark!);
  }
  buildCounterLoyaltyClass--;
}

core.int buildCounterLoyaltyClassAddMessageResponse = 0;
api.LoyaltyClassAddMessageResponse buildLoyaltyClassAddMessageResponse() {
  final o = api.LoyaltyClassAddMessageResponse();
  buildCounterLoyaltyClassAddMessageResponse++;
  if (buildCounterLoyaltyClassAddMessageResponse < 3) {
    o.resource = buildLoyaltyClass();
  }
  buildCounterLoyaltyClassAddMessageResponse--;
  return o;
}

void checkLoyaltyClassAddMessageResponse(api.LoyaltyClassAddMessageResponse o) {
  buildCounterLoyaltyClassAddMessageResponse++;
  if (buildCounterLoyaltyClassAddMessageResponse < 3) {
    checkLoyaltyClass(o.resource!);
  }
  buildCounterLoyaltyClassAddMessageResponse--;
}

core.List<api.LoyaltyClass> buildUnnamed80() => [
  buildLoyaltyClass(),
  buildLoyaltyClass(),
];

void checkUnnamed80(core.List<api.LoyaltyClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyClass(o[0]);
  checkLoyaltyClass(o[1]);
}

core.int buildCounterLoyaltyClassListResponse = 0;
api.LoyaltyClassListResponse buildLoyaltyClassListResponse() {
  final o = api.LoyaltyClassListResponse();
  buildCounterLoyaltyClassListResponse++;
  if (buildCounterLoyaltyClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed80();
  }
  buildCounterLoyaltyClassListResponse--;
  return o;
}

void checkLoyaltyClassListResponse(api.LoyaltyClassListResponse o) {
  buildCounterLoyaltyClassListResponse++;
  if (buildCounterLoyaltyClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed80(o.resources!);
  }
  buildCounterLoyaltyClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed81() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed81(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed83() => ['foo', 'foo'];

void checkUnnamed83(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed84() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed84(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed85() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed85(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed86() => [buildMessage(), buildMessage()];

void checkUnnamed86(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed87() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed87(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed88() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed88(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterLoyaltyObject = 0;
api.LoyaltyObject buildLoyaltyObject() {
  final o = api.LoyaltyObject();
  buildCounterLoyaltyObject++;
  if (buildCounterLoyaltyObject < 3) {
    o.accountId = 'foo';
    o.accountName = 'foo';
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.classId = 'foo';
    o.classReference = buildLoyaltyClass();
    o.disableExpirationNotification = true;
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed81();
    o.infoModuleData = buildInfoModuleData();
    o.kind = 'foo';
    o.linkedObjectIds = buildUnnamed82();
    o.linkedOfferIds = buildUnnamed83();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed84();
    o.loyaltyPoints = buildLoyaltyPoints();
    o.merchantLocations = buildUnnamed85();
    o.messages = buildUnnamed86();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.secondaryLoyaltyPoints = buildLoyaltyPoints();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed87();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed88();
    o.version = 'foo';
  }
  buildCounterLoyaltyObject--;
  return o;
}

void checkLoyaltyObject(api.LoyaltyObject o) {
  buildCounterLoyaltyObject++;
  if (buildCounterLoyaltyObject < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.accountName!, unittest.equals('foo'));
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkLoyaltyClass(o.classReference!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed81(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed82(o.linkedObjectIds!);
    checkUnnamed83(o.linkedOfferIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed84(o.locations!);
    checkLoyaltyPoints(o.loyaltyPoints!);
    checkUnnamed85(o.merchantLocations!);
    checkUnnamed86(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    checkLoyaltyPoints(o.secondaryLoyaltyPoints!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed87(o.textModulesData!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed88(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterLoyaltyObject--;
}

core.int buildCounterLoyaltyObjectAddMessageResponse = 0;
api.LoyaltyObjectAddMessageResponse buildLoyaltyObjectAddMessageResponse() {
  final o = api.LoyaltyObjectAddMessageResponse();
  buildCounterLoyaltyObjectAddMessageResponse++;
  if (buildCounterLoyaltyObjectAddMessageResponse < 3) {
    o.resource = buildLoyaltyObject();
  }
  buildCounterLoyaltyObjectAddMessageResponse--;
  return o;
}

void checkLoyaltyObjectAddMessageResponse(
  api.LoyaltyObjectAddMessageResponse o,
) {
  buildCounterLoyaltyObjectAddMessageResponse++;
  if (buildCounterLoyaltyObjectAddMessageResponse < 3) {
    checkLoyaltyObject(o.resource!);
  }
  buildCounterLoyaltyObjectAddMessageResponse--;
}

core.List<api.LoyaltyObject> buildUnnamed89() => [
  buildLoyaltyObject(),
  buildLoyaltyObject(),
];

void checkUnnamed89(core.List<api.LoyaltyObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyObject(o[0]);
  checkLoyaltyObject(o[1]);
}

core.int buildCounterLoyaltyObjectListResponse = 0;
api.LoyaltyObjectListResponse buildLoyaltyObjectListResponse() {
  final o = api.LoyaltyObjectListResponse();
  buildCounterLoyaltyObjectListResponse++;
  if (buildCounterLoyaltyObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed89();
  }
  buildCounterLoyaltyObjectListResponse--;
  return o;
}

void checkLoyaltyObjectListResponse(api.LoyaltyObjectListResponse o) {
  buildCounterLoyaltyObjectListResponse++;
  if (buildCounterLoyaltyObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed89(o.resources!);
  }
  buildCounterLoyaltyObjectListResponse--;
}

core.int buildCounterLoyaltyPoints = 0;
api.LoyaltyPoints buildLoyaltyPoints() {
  final o = api.LoyaltyPoints();
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    o.balance = buildLoyaltyPointsBalance();
    o.label = 'foo';
    o.localizedLabel = buildLocalizedString();
  }
  buildCounterLoyaltyPoints--;
  return o;
}

void checkLoyaltyPoints(api.LoyaltyPoints o) {
  buildCounterLoyaltyPoints++;
  if (buildCounterLoyaltyPoints < 3) {
    checkLoyaltyPointsBalance(o.balance!);
    unittest.expect(o.label!, unittest.equals('foo'));
    checkLocalizedString(o.localizedLabel!);
  }
  buildCounterLoyaltyPoints--;
}

core.int buildCounterLoyaltyPointsBalance = 0;
api.LoyaltyPointsBalance buildLoyaltyPointsBalance() {
  final o = api.LoyaltyPointsBalance();
  buildCounterLoyaltyPointsBalance++;
  if (buildCounterLoyaltyPointsBalance < 3) {
    o.double = 42.0;
    o.int = 42;
    o.money = buildMoney();
    o.string = 'foo';
  }
  buildCounterLoyaltyPointsBalance--;
  return o;
}

void checkLoyaltyPointsBalance(api.LoyaltyPointsBalance o) {
  buildCounterLoyaltyPointsBalance++;
  if (buildCounterLoyaltyPointsBalance < 3) {
    unittest.expect(o.double!, unittest.equals(42.0));
    unittest.expect(o.int!, unittest.equals(42));
    checkMoney(o.money!);
    unittest.expect(o.string!, unittest.equals('foo'));
  }
  buildCounterLoyaltyPointsBalance--;
}

core.List<api.CompositeMedia> buildUnnamed90() => [
  buildCompositeMedia(),
  buildCompositeMedia(),
];

void checkUnnamed90(core.List<api.CompositeMedia> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompositeMedia(o[0]);
  checkCompositeMedia(o[1]);
}

core.int buildCounterMedia = 0;
api.Media buildMedia() {
  final o = api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.algorithm = 'foo';
    o.bigstoreObjectRef = 'foo';
    o.blobRef = 'foo';
    o.blobstore2Info = buildBlobstore2Info();
    o.compositeMedia = buildUnnamed90();
    o.contentType = 'foo';
    o.contentTypeInfo = buildContentTypeInfo();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.diffChecksumsResponse = buildDiffChecksumsResponse();
    o.diffDownloadResponse = buildDiffDownloadResponse();
    o.diffUploadRequest = buildDiffUploadRequest();
    o.diffUploadResponse = buildDiffUploadResponse();
    o.diffVersionResponse = buildDiffVersionResponse();
    o.downloadParameters = buildDownloadParameters();
    o.filename = 'foo';
    o.hash = 'foo';
    o.hashVerified = true;
    o.inline = 'foo';
    o.isPotentialRetry = true;
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.mediaId = 'foo';
    o.objectId = buildObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
    o.sha256Hash = 'foo';
    o.timestamp = 'foo';
    o.token = 'foo';
  }
  buildCounterMedia--;
  return o;
}

void checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    unittest.expect(o.algorithm!, unittest.equals('foo'));
    unittest.expect(o.bigstoreObjectRef!, unittest.equals('foo'));
    unittest.expect(o.blobRef!, unittest.equals('foo'));
    checkBlobstore2Info(o.blobstore2Info!);
    checkUnnamed90(o.compositeMedia!);
    unittest.expect(o.contentType!, unittest.equals('foo'));
    checkContentTypeInfo(o.contentTypeInfo!);
    unittest.expect(o.cosmoBinaryReference!, unittest.equals('foo'));
    unittest.expect(o.crc32cHash!, unittest.equals(42));
    checkDiffChecksumsResponse(o.diffChecksumsResponse!);
    checkDiffDownloadResponse(o.diffDownloadResponse!);
    checkDiffUploadRequest(o.diffUploadRequest!);
    checkDiffUploadResponse(o.diffUploadResponse!);
    checkDiffVersionResponse(o.diffVersionResponse!);
    checkDownloadParameters(o.downloadParameters!);
    unittest.expect(o.filename!, unittest.equals('foo'));
    unittest.expect(o.hash!, unittest.equals('foo'));
    unittest.expect(o.hashVerified!, unittest.isTrue);
    unittest.expect(o.inline!, unittest.equals('foo'));
    unittest.expect(o.isPotentialRetry!, unittest.isTrue);
    unittest.expect(o.length!, unittest.equals('foo'));
    unittest.expect(o.md5Hash!, unittest.equals('foo'));
    unittest.expect(o.mediaId!, unittest.equals('foo'));
    checkObjectId(o.objectId!);
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.referenceType!, unittest.equals('foo'));
    unittest.expect(o.sha1Hash!, unittest.equals('foo'));
    unittest.expect(o.sha256Hash!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
    unittest.expect(o.token!, unittest.equals('foo'));
  }
  buildCounterMedia--;
}

core.int buildCounterMediaRequestInfo = 0;
api.MediaRequestInfo buildMediaRequestInfo() {
  final o = api.MediaRequestInfo();
  buildCounterMediaRequestInfo++;
  if (buildCounterMediaRequestInfo < 3) {
    o.currentBytes = 'foo';
    o.customData = 'foo';
    o.diffObjectVersion = 'foo';
    o.finalStatus = 42;
    o.notificationType = 'foo';
    o.physicalHeaders = 'foo';
    o.requestId = 'foo';
    o.requestReceivedParamsServingInfo = 'foo';
    o.totalBytes = 'foo';
    o.totalBytesIsEstimated = true;
  }
  buildCounterMediaRequestInfo--;
  return o;
}

void checkMediaRequestInfo(api.MediaRequestInfo o) {
  buildCounterMediaRequestInfo++;
  if (buildCounterMediaRequestInfo < 3) {
    unittest.expect(o.currentBytes!, unittest.equals('foo'));
    unittest.expect(o.customData!, unittest.equals('foo'));
    unittest.expect(o.diffObjectVersion!, unittest.equals('foo'));
    unittest.expect(o.finalStatus!, unittest.equals(42));
    unittest.expect(o.notificationType!, unittest.equals('foo'));
    unittest.expect(o.physicalHeaders!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(
      o.requestReceivedParamsServingInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(o.totalBytes!, unittest.equals('foo'));
    unittest.expect(o.totalBytesIsEstimated!, unittest.isTrue);
  }
  buildCounterMediaRequestInfo--;
}

core.int buildCounterMerchantLocation = 0;
api.MerchantLocation buildMerchantLocation() {
  final o = api.MerchantLocation();
  buildCounterMerchantLocation++;
  if (buildCounterMerchantLocation < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterMerchantLocation--;
  return o;
}

void checkMerchantLocation(api.MerchantLocation o) {
  buildCounterMerchantLocation++;
  if (buildCounterMerchantLocation < 3) {
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
  }
  buildCounterMerchantLocation--;
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.body = 'foo';
    o.displayInterval = buildTimeInterval();
    o.header = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizedBody = buildLocalizedString();
    o.localizedHeader = buildLocalizedString();
    o.messageType = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    checkTimeInterval(o.displayInterval!);
    unittest.expect(o.header!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLocalizedString(o.localizedBody!);
    checkLocalizedString(o.localizedHeader!);
    unittest.expect(o.messageType!, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyLinkedOfferObjects = 0;
api.ModifyLinkedOfferObjects buildModifyLinkedOfferObjects() {
  final o = api.ModifyLinkedOfferObjects();
  buildCounterModifyLinkedOfferObjects++;
  if (buildCounterModifyLinkedOfferObjects < 3) {
    o.addLinkedOfferObjectIds = buildUnnamed91();
    o.removeLinkedOfferObjectIds = buildUnnamed92();
  }
  buildCounterModifyLinkedOfferObjects--;
  return o;
}

void checkModifyLinkedOfferObjects(api.ModifyLinkedOfferObjects o) {
  buildCounterModifyLinkedOfferObjects++;
  if (buildCounterModifyLinkedOfferObjects < 3) {
    checkUnnamed91(o.addLinkedOfferObjectIds!);
    checkUnnamed92(o.removeLinkedOfferObjectIds!);
  }
  buildCounterModifyLinkedOfferObjects--;
}

core.int buildCounterModifyLinkedOfferObjectsRequest = 0;
api.ModifyLinkedOfferObjectsRequest buildModifyLinkedOfferObjectsRequest() {
  final o = api.ModifyLinkedOfferObjectsRequest();
  buildCounterModifyLinkedOfferObjectsRequest++;
  if (buildCounterModifyLinkedOfferObjectsRequest < 3) {
    o.linkedOfferObjectIds = buildModifyLinkedOfferObjects();
  }
  buildCounterModifyLinkedOfferObjectsRequest--;
  return o;
}

void checkModifyLinkedOfferObjectsRequest(
  api.ModifyLinkedOfferObjectsRequest o,
) {
  buildCounterModifyLinkedOfferObjectsRequest++;
  if (buildCounterModifyLinkedOfferObjectsRequest < 3) {
    checkModifyLinkedOfferObjects(o.linkedOfferObjectIds!);
  }
  buildCounterModifyLinkedOfferObjectsRequest--;
}

core.int buildCounterModuleViewConstraints = 0;
api.ModuleViewConstraints buildModuleViewConstraints() {
  final o = api.ModuleViewConstraints();
  buildCounterModuleViewConstraints++;
  if (buildCounterModuleViewConstraints < 3) {
    o.displayInterval = buildTimeInterval();
  }
  buildCounterModuleViewConstraints--;
  return o;
}

void checkModuleViewConstraints(api.ModuleViewConstraints o) {
  buildCounterModuleViewConstraints++;
  if (buildCounterModuleViewConstraints < 3) {
    checkTimeInterval(o.displayInterval!);
  }
  buildCounterModuleViewConstraints--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.kind = 'foo';
    o.micros = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.micros!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterNotifications = 0;
api.Notifications buildNotifications() {
  final o = api.Notifications();
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    o.expiryNotification = buildExpiryNotification();
    o.upcomingNotification = buildUpcomingNotification();
  }
  buildCounterNotifications--;
  return o;
}

void checkNotifications(api.Notifications o) {
  buildCounterNotifications++;
  if (buildCounterNotifications < 3) {
    checkExpiryNotification(o.expiryNotification!);
    checkUpcomingNotification(o.upcomingNotification!);
  }
  buildCounterNotifications--;
}

core.int buildCounterObjectId = 0;
api.ObjectId buildObjectId() {
  final o = api.ObjectId();
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    o.bucketName = 'foo';
    o.generation = 'foo';
    o.objectName = 'foo';
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    unittest.expect(o.bucketName!, unittest.equals('foo'));
    unittest.expect(o.generation!, unittest.equals('foo'));
    unittest.expect(o.objectName!, unittest.equals('foo'));
  }
  buildCounterObjectId--;
}

core.List<api.ImageModuleData> buildUnnamed93() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed93(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed94() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed94(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed95() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed95(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed96() => [buildMessage(), buildMessage()];

void checkUnnamed96(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed98() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed98(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed99() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed99(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterOfferClass = 0;
api.OfferClass buildOfferClass() {
  final o = api.OfferClass();
  buildCounterOfferClass++;
  if (buildCounterOfferClass < 3) {
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.countryCode = 'foo';
    o.details = 'foo';
    o.enableSmartTap = true;
    o.finePrint = 'foo';
    o.helpUri = buildUri();
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed93();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.kind = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localizedDetails = buildLocalizedString();
    o.localizedFinePrint = buildLocalizedString();
    o.localizedIssuerName = buildLocalizedString();
    o.localizedProvider = buildLocalizedString();
    o.localizedShortTitle = buildLocalizedString();
    o.localizedTitle = buildLocalizedString();
    o.locations = buildUnnamed94();
    o.merchantLocations = buildUnnamed95();
    o.messages = buildUnnamed96();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.provider = 'foo';
    o.redemptionChannel = 'foo';
    o.redemptionIssuers = buildUnnamed97();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.shortTitle = 'foo';
    o.textModulesData = buildUnnamed98();
    o.title = 'foo';
    o.titleImage = buildImage();
    o.valueAddedModuleData = buildUnnamed99();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.wideTitleImage = buildImage();
    o.wordMark = buildImage();
  }
  buildCounterOfferClass--;
  return o;
}

void checkOfferClass(api.OfferClass o) {
  buildCounterOfferClass++;
  if (buildCounterOfferClass < 3) {
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    unittest.expect(o.finePrint!, unittest.equals('foo'));
    checkUri(o.helpUri!);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed93(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    checkLocalizedString(o.localizedDetails!);
    checkLocalizedString(o.localizedFinePrint!);
    checkLocalizedString(o.localizedIssuerName!);
    checkLocalizedString(o.localizedProvider!);
    checkLocalizedString(o.localizedShortTitle!);
    checkLocalizedString(o.localizedTitle!);
    checkUnnamed94(o.locations!);
    checkUnnamed95(o.merchantLocations!);
    checkUnnamed96(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.redemptionChannel!, unittest.equals('foo'));
    checkUnnamed97(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    unittest.expect(o.shortTitle!, unittest.equals('foo'));
    checkUnnamed98(o.textModulesData!);
    unittest.expect(o.title!, unittest.equals('foo'));
    checkImage(o.titleImage!);
    checkUnnamed99(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.wideTitleImage!);
    checkImage(o.wordMark!);
  }
  buildCounterOfferClass--;
}

core.int buildCounterOfferClassAddMessageResponse = 0;
api.OfferClassAddMessageResponse buildOfferClassAddMessageResponse() {
  final o = api.OfferClassAddMessageResponse();
  buildCounterOfferClassAddMessageResponse++;
  if (buildCounterOfferClassAddMessageResponse < 3) {
    o.resource = buildOfferClass();
  }
  buildCounterOfferClassAddMessageResponse--;
  return o;
}

void checkOfferClassAddMessageResponse(api.OfferClassAddMessageResponse o) {
  buildCounterOfferClassAddMessageResponse++;
  if (buildCounterOfferClassAddMessageResponse < 3) {
    checkOfferClass(o.resource!);
  }
  buildCounterOfferClassAddMessageResponse--;
}

core.List<api.OfferClass> buildUnnamed100() => [
  buildOfferClass(),
  buildOfferClass(),
];

void checkUnnamed100(core.List<api.OfferClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferClass(o[0]);
  checkOfferClass(o[1]);
}

core.int buildCounterOfferClassListResponse = 0;
api.OfferClassListResponse buildOfferClassListResponse() {
  final o = api.OfferClassListResponse();
  buildCounterOfferClassListResponse++;
  if (buildCounterOfferClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed100();
  }
  buildCounterOfferClassListResponse--;
  return o;
}

void checkOfferClassListResponse(api.OfferClassListResponse o) {
  buildCounterOfferClassListResponse++;
  if (buildCounterOfferClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed100(o.resources!);
  }
  buildCounterOfferClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed101() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed101(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed103() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed103(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed104() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed104(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed105() => [buildMessage(), buildMessage()];

void checkUnnamed105(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed106() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed106(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed107() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed107(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterOfferObject = 0;
api.OfferObject buildOfferObject() {
  final o = api.OfferObject();
  buildCounterOfferObject++;
  if (buildCounterOfferObject < 3) {
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.classId = 'foo';
    o.classReference = buildOfferClass();
    o.disableExpirationNotification = true;
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed101();
    o.infoModuleData = buildInfoModuleData();
    o.kind = 'foo';
    o.linkedObjectIds = buildUnnamed102();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed103();
    o.merchantLocations = buildUnnamed104();
    o.messages = buildUnnamed105();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed106();
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed107();
    o.version = 'foo';
  }
  buildCounterOfferObject--;
  return o;
}

void checkOfferObject(api.OfferObject o) {
  buildCounterOfferObject++;
  if (buildCounterOfferObject < 3) {
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkOfferClass(o.classReference!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed101(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkUnnamed102(o.linkedObjectIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed103(o.locations!);
    checkUnnamed104(o.merchantLocations!);
    checkUnnamed105(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed106(o.textModulesData!);
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed107(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterOfferObject--;
}

core.int buildCounterOfferObjectAddMessageResponse = 0;
api.OfferObjectAddMessageResponse buildOfferObjectAddMessageResponse() {
  final o = api.OfferObjectAddMessageResponse();
  buildCounterOfferObjectAddMessageResponse++;
  if (buildCounterOfferObjectAddMessageResponse < 3) {
    o.resource = buildOfferObject();
  }
  buildCounterOfferObjectAddMessageResponse--;
  return o;
}

void checkOfferObjectAddMessageResponse(api.OfferObjectAddMessageResponse o) {
  buildCounterOfferObjectAddMessageResponse++;
  if (buildCounterOfferObjectAddMessageResponse < 3) {
    checkOfferObject(o.resource!);
  }
  buildCounterOfferObjectAddMessageResponse--;
}

core.List<api.OfferObject> buildUnnamed108() => [
  buildOfferObject(),
  buildOfferObject(),
];

void checkUnnamed108(core.List<api.OfferObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferObject(o[0]);
  checkOfferObject(o[1]);
}

core.int buildCounterOfferObjectListResponse = 0;
api.OfferObjectListResponse buildOfferObjectListResponse() {
  final o = api.OfferObjectListResponse();
  buildCounterOfferObjectListResponse++;
  if (buildCounterOfferObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed108();
  }
  buildCounterOfferObjectListResponse--;
  return o;
}

void checkOfferObjectListResponse(api.OfferObjectListResponse o) {
  buildCounterOfferObjectListResponse++;
  if (buildCounterOfferObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed108(o.resources!);
  }
  buildCounterOfferObjectListResponse--;
}

core.int buildCounterPagination = 0;
api.Pagination buildPagination() {
  final o = api.Pagination();
  buildCounterPagination++;
  if (buildCounterPagination < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.resultsPerPage = 42;
  }
  buildCounterPagination--;
  return o;
}

void checkPagination(api.Pagination o) {
  buildCounterPagination++;
  if (buildCounterPagination < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.resultsPerPage!, unittest.equals(42));
  }
  buildCounterPagination--;
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPassConstraints = 0;
api.PassConstraints buildPassConstraints() {
  final o = api.PassConstraints();
  buildCounterPassConstraints++;
  if (buildCounterPassConstraints < 3) {
    o.nfcConstraint = buildUnnamed109();
    o.screenshotEligibility = 'foo';
  }
  buildCounterPassConstraints--;
  return o;
}

void checkPassConstraints(api.PassConstraints o) {
  buildCounterPassConstraints++;
  if (buildCounterPassConstraints < 3) {
    checkUnnamed109(o.nfcConstraint!);
    unittest.expect(o.screenshotEligibility!, unittest.equals('foo'));
  }
  buildCounterPassConstraints--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.emailAddress = 'foo';
    o.role = 'foo';
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterPermission--;
}

core.List<api.Permission> buildUnnamed110() => [
  buildPermission(),
  buildPermission(),
];

void checkUnnamed110(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterPermissions = 0;
api.Permissions buildPermissions() {
  final o = api.Permissions();
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    o.issuerId = 'foo';
    o.permissions = buildUnnamed110();
  }
  buildCounterPermissions--;
  return o;
}

void checkPermissions(api.Permissions o) {
  buildCounterPermissions++;
  if (buildCounterPermissions < 3) {
    unittest.expect(o.issuerId!, unittest.equals('foo'));
    checkUnnamed110(o.permissions!);
  }
  buildCounterPermissions--;
}

core.int buildCounterPurchaseDetails = 0;
api.PurchaseDetails buildPurchaseDetails() {
  final o = api.PurchaseDetails();
  buildCounterPurchaseDetails++;
  if (buildCounterPurchaseDetails < 3) {
    o.accountId = 'foo';
    o.confirmationCode = 'foo';
    o.purchaseDateTime = 'foo';
    o.purchaseReceiptNumber = 'foo';
    o.ticketCost = buildTicketCost();
  }
  buildCounterPurchaseDetails--;
  return o;
}

void checkPurchaseDetails(api.PurchaseDetails o) {
  buildCounterPurchaseDetails++;
  if (buildCounterPurchaseDetails < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.confirmationCode!, unittest.equals('foo'));
    unittest.expect(o.purchaseDateTime!, unittest.equals('foo'));
    unittest.expect(o.purchaseReceiptNumber!, unittest.equals('foo'));
    checkTicketCost(o.ticketCost!);
  }
  buildCounterPurchaseDetails--;
}

core.int buildCounterReservationInfo = 0;
api.ReservationInfo buildReservationInfo() {
  final o = api.ReservationInfo();
  buildCounterReservationInfo++;
  if (buildCounterReservationInfo < 3) {
    o.confirmationCode = 'foo';
    o.eticketNumber = 'foo';
    o.frequentFlyerInfo = buildFrequentFlyerInfo();
    o.kind = 'foo';
  }
  buildCounterReservationInfo--;
  return o;
}

void checkReservationInfo(api.ReservationInfo o) {
  buildCounterReservationInfo++;
  if (buildCounterReservationInfo < 3) {
    unittest.expect(o.confirmationCode!, unittest.equals('foo'));
    unittest.expect(o.eticketNumber!, unittest.equals('foo'));
    checkFrequentFlyerInfo(o.frequentFlyerInfo!);
    unittest.expect(o.kind!, unittest.equals('foo'));
  }
  buildCounterReservationInfo--;
}

core.List<api.EventTicketClass> buildUnnamed111() => [
  buildEventTicketClass(),
  buildEventTicketClass(),
];

void checkUnnamed111(core.List<api.EventTicketClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTicketClass(o[0]);
  checkEventTicketClass(o[1]);
}

core.List<api.EventTicketObject> buildUnnamed112() => [
  buildEventTicketObject(),
  buildEventTicketObject(),
];

void checkUnnamed112(core.List<api.EventTicketObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTicketObject(o[0]);
  checkEventTicketObject(o[1]);
}

core.List<api.FlightClass> buildUnnamed113() => [
  buildFlightClass(),
  buildFlightClass(),
];

void checkUnnamed113(core.List<api.FlightClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlightClass(o[0]);
  checkFlightClass(o[1]);
}

core.List<api.FlightObject> buildUnnamed114() => [
  buildFlightObject(),
  buildFlightObject(),
];

void checkUnnamed114(core.List<api.FlightObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlightObject(o[0]);
  checkFlightObject(o[1]);
}

core.List<api.GenericClass> buildUnnamed115() => [
  buildGenericClass(),
  buildGenericClass(),
];

void checkUnnamed115(core.List<api.GenericClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGenericClass(o[0]);
  checkGenericClass(o[1]);
}

core.List<api.GenericObject> buildUnnamed116() => [
  buildGenericObject(),
  buildGenericObject(),
];

void checkUnnamed116(core.List<api.GenericObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGenericObject(o[0]);
  checkGenericObject(o[1]);
}

core.List<api.GiftCardClass> buildUnnamed117() => [
  buildGiftCardClass(),
  buildGiftCardClass(),
];

void checkUnnamed117(core.List<api.GiftCardClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiftCardClass(o[0]);
  checkGiftCardClass(o[1]);
}

core.List<api.GiftCardObject> buildUnnamed118() => [
  buildGiftCardObject(),
  buildGiftCardObject(),
];

void checkUnnamed118(core.List<api.GiftCardObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGiftCardObject(o[0]);
  checkGiftCardObject(o[1]);
}

core.List<api.LoyaltyClass> buildUnnamed119() => [
  buildLoyaltyClass(),
  buildLoyaltyClass(),
];

void checkUnnamed119(core.List<api.LoyaltyClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyClass(o[0]);
  checkLoyaltyClass(o[1]);
}

core.List<api.LoyaltyObject> buildUnnamed120() => [
  buildLoyaltyObject(),
  buildLoyaltyObject(),
];

void checkUnnamed120(core.List<api.LoyaltyObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLoyaltyObject(o[0]);
  checkLoyaltyObject(o[1]);
}

core.List<api.OfferClass> buildUnnamed121() => [
  buildOfferClass(),
  buildOfferClass(),
];

void checkUnnamed121(core.List<api.OfferClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferClass(o[0]);
  checkOfferClass(o[1]);
}

core.List<api.OfferObject> buildUnnamed122() => [
  buildOfferObject(),
  buildOfferObject(),
];

void checkUnnamed122(core.List<api.OfferObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferObject(o[0]);
  checkOfferObject(o[1]);
}

core.List<api.TransitClass> buildUnnamed123() => [
  buildTransitClass(),
  buildTransitClass(),
];

void checkUnnamed123(core.List<api.TransitClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitClass(o[0]);
  checkTransitClass(o[1]);
}

core.List<api.TransitObject> buildUnnamed124() => [
  buildTransitObject(),
  buildTransitObject(),
];

void checkUnnamed124(core.List<api.TransitObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitObject(o[0]);
  checkTransitObject(o[1]);
}

core.int buildCounterResources = 0;
api.Resources buildResources() {
  final o = api.Resources();
  buildCounterResources++;
  if (buildCounterResources < 3) {
    o.eventTicketClasses = buildUnnamed111();
    o.eventTicketObjects = buildUnnamed112();
    o.flightClasses = buildUnnamed113();
    o.flightObjects = buildUnnamed114();
    o.genericClasses = buildUnnamed115();
    o.genericObjects = buildUnnamed116();
    o.giftCardClasses = buildUnnamed117();
    o.giftCardObjects = buildUnnamed118();
    o.loyaltyClasses = buildUnnamed119();
    o.loyaltyObjects = buildUnnamed120();
    o.offerClasses = buildUnnamed121();
    o.offerObjects = buildUnnamed122();
    o.transitClasses = buildUnnamed123();
    o.transitObjects = buildUnnamed124();
  }
  buildCounterResources--;
  return o;
}

void checkResources(api.Resources o) {
  buildCounterResources++;
  if (buildCounterResources < 3) {
    checkUnnamed111(o.eventTicketClasses!);
    checkUnnamed112(o.eventTicketObjects!);
    checkUnnamed113(o.flightClasses!);
    checkUnnamed114(o.flightObjects!);
    checkUnnamed115(o.genericClasses!);
    checkUnnamed116(o.genericObjects!);
    checkUnnamed117(o.giftCardClasses!);
    checkUnnamed118(o.giftCardObjects!);
    checkUnnamed119(o.loyaltyClasses!);
    checkUnnamed120(o.loyaltyObjects!);
    checkUnnamed121(o.offerClasses!);
    checkUnnamed122(o.offerObjects!);
    checkUnnamed123(o.transitClasses!);
    checkUnnamed124(o.transitObjects!);
  }
  buildCounterResources--;
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.comments = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(o.comments!, unittest.equals('foo'));
  }
  buildCounterReview--;
}

core.int buildCounterRotatingBarcode = 0;
api.RotatingBarcode buildRotatingBarcode() {
  final o = api.RotatingBarcode();
  buildCounterRotatingBarcode++;
  if (buildCounterRotatingBarcode < 3) {
    o.alternateText = 'foo';
    o.initialRotatingBarcodeValues = buildRotatingBarcodeValues();
    o.renderEncoding = 'foo';
    o.showCodeText = buildLocalizedString();
    o.totpDetails = buildRotatingBarcodeTotpDetails();
    o.type = 'foo';
    o.valuePattern = 'foo';
  }
  buildCounterRotatingBarcode--;
  return o;
}

void checkRotatingBarcode(api.RotatingBarcode o) {
  buildCounterRotatingBarcode++;
  if (buildCounterRotatingBarcode < 3) {
    unittest.expect(o.alternateText!, unittest.equals('foo'));
    checkRotatingBarcodeValues(o.initialRotatingBarcodeValues!);
    unittest.expect(o.renderEncoding!, unittest.equals('foo'));
    checkLocalizedString(o.showCodeText!);
    checkRotatingBarcodeTotpDetails(o.totpDetails!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.valuePattern!, unittest.equals('foo'));
  }
  buildCounterRotatingBarcode--;
}

core.List<api.RotatingBarcodeTotpDetailsTotpParameters> buildUnnamed125() => [
  buildRotatingBarcodeTotpDetailsTotpParameters(),
  buildRotatingBarcodeTotpDetailsTotpParameters(),
];

void checkUnnamed125(
  core.List<api.RotatingBarcodeTotpDetailsTotpParameters> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkRotatingBarcodeTotpDetailsTotpParameters(o[0]);
  checkRotatingBarcodeTotpDetailsTotpParameters(o[1]);
}

core.int buildCounterRotatingBarcodeTotpDetails = 0;
api.RotatingBarcodeTotpDetails buildRotatingBarcodeTotpDetails() {
  final o = api.RotatingBarcodeTotpDetails();
  buildCounterRotatingBarcodeTotpDetails++;
  if (buildCounterRotatingBarcodeTotpDetails < 3) {
    o.algorithm = 'foo';
    o.parameters = buildUnnamed125();
    o.periodMillis = 'foo';
  }
  buildCounterRotatingBarcodeTotpDetails--;
  return o;
}

void checkRotatingBarcodeTotpDetails(api.RotatingBarcodeTotpDetails o) {
  buildCounterRotatingBarcodeTotpDetails++;
  if (buildCounterRotatingBarcodeTotpDetails < 3) {
    unittest.expect(o.algorithm!, unittest.equals('foo'));
    checkUnnamed125(o.parameters!);
    unittest.expect(o.periodMillis!, unittest.equals('foo'));
  }
  buildCounterRotatingBarcodeTotpDetails--;
}

core.int buildCounterRotatingBarcodeTotpDetailsTotpParameters = 0;
api.RotatingBarcodeTotpDetailsTotpParameters
buildRotatingBarcodeTotpDetailsTotpParameters() {
  final o = api.RotatingBarcodeTotpDetailsTotpParameters();
  buildCounterRotatingBarcodeTotpDetailsTotpParameters++;
  if (buildCounterRotatingBarcodeTotpDetailsTotpParameters < 3) {
    o.key = 'foo';
    o.valueLength = 42;
  }
  buildCounterRotatingBarcodeTotpDetailsTotpParameters--;
  return o;
}

void checkRotatingBarcodeTotpDetailsTotpParameters(
  api.RotatingBarcodeTotpDetailsTotpParameters o,
) {
  buildCounterRotatingBarcodeTotpDetailsTotpParameters++;
  if (buildCounterRotatingBarcodeTotpDetailsTotpParameters < 3) {
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.valueLength!, unittest.equals(42));
  }
  buildCounterRotatingBarcodeTotpDetailsTotpParameters--;
}

core.List<core.String> buildUnnamed126() => ['foo', 'foo'];

void checkUnnamed126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRotatingBarcodeValues = 0;
api.RotatingBarcodeValues buildRotatingBarcodeValues() {
  final o = api.RotatingBarcodeValues();
  buildCounterRotatingBarcodeValues++;
  if (buildCounterRotatingBarcodeValues < 3) {
    o.periodMillis = 'foo';
    o.startDateTime = 'foo';
    o.values = buildUnnamed126();
  }
  buildCounterRotatingBarcodeValues--;
  return o;
}

void checkRotatingBarcodeValues(api.RotatingBarcodeValues o) {
  buildCounterRotatingBarcodeValues++;
  if (buildCounterRotatingBarcodeValues < 3) {
    unittest.expect(o.periodMillis!, unittest.equals('foo'));
    unittest.expect(o.startDateTime!, unittest.equals('foo'));
    checkUnnamed126(o.values!);
  }
  buildCounterRotatingBarcodeValues--;
}

core.int buildCounterSaveRestrictions = 0;
api.SaveRestrictions buildSaveRestrictions() {
  final o = api.SaveRestrictions();
  buildCounterSaveRestrictions++;
  if (buildCounterSaveRestrictions < 3) {
    o.restrictToEmailSha256 = 'foo';
  }
  buildCounterSaveRestrictions--;
  return o;
}

void checkSaveRestrictions(api.SaveRestrictions o) {
  buildCounterSaveRestrictions++;
  if (buildCounterSaveRestrictions < 3) {
    unittest.expect(o.restrictToEmailSha256!, unittest.equals('foo'));
  }
  buildCounterSaveRestrictions--;
}

core.int buildCounterSecurityAnimation = 0;
api.SecurityAnimation buildSecurityAnimation() {
  final o = api.SecurityAnimation();
  buildCounterSecurityAnimation++;
  if (buildCounterSecurityAnimation < 3) {
    o.animationType = 'foo';
  }
  buildCounterSecurityAnimation--;
  return o;
}

void checkSecurityAnimation(api.SecurityAnimation o) {
  buildCounterSecurityAnimation++;
  if (buildCounterSecurityAnimation < 3) {
    unittest.expect(o.animationType!, unittest.equals('foo'));
  }
  buildCounterSecurityAnimation--;
}

core.int buildCounterSetPassUpdateNoticeRequest = 0;
api.SetPassUpdateNoticeRequest buildSetPassUpdateNoticeRequest() {
  final o = api.SetPassUpdateNoticeRequest();
  buildCounterSetPassUpdateNoticeRequest++;
  if (buildCounterSetPassUpdateNoticeRequest < 3) {
    o.externalPassId = 'foo';
    o.updateUri = 'foo';
    o.updatedPassJwtSignature = 'foo';
  }
  buildCounterSetPassUpdateNoticeRequest--;
  return o;
}

void checkSetPassUpdateNoticeRequest(api.SetPassUpdateNoticeRequest o) {
  buildCounterSetPassUpdateNoticeRequest++;
  if (buildCounterSetPassUpdateNoticeRequest < 3) {
    unittest.expect(o.externalPassId!, unittest.equals('foo'));
    unittest.expect(o.updateUri!, unittest.equals('foo'));
    unittest.expect(o.updatedPassJwtSignature!, unittest.equals('foo'));
  }
  buildCounterSetPassUpdateNoticeRequest--;
}

core.int buildCounterSetPassUpdateNoticeResponse = 0;
api.SetPassUpdateNoticeResponse buildSetPassUpdateNoticeResponse() {
  final o = api.SetPassUpdateNoticeResponse();
  buildCounterSetPassUpdateNoticeResponse++;
  if (buildCounterSetPassUpdateNoticeResponse < 3) {}
  buildCounterSetPassUpdateNoticeResponse--;
  return o;
}

void checkSetPassUpdateNoticeResponse(api.SetPassUpdateNoticeResponse o) {
  buildCounterSetPassUpdateNoticeResponse++;
  if (buildCounterSetPassUpdateNoticeResponse < 3) {}
  buildCounterSetPassUpdateNoticeResponse--;
}

core.int buildCounterSignUpInfo = 0;
api.SignUpInfo buildSignUpInfo() {
  final o = api.SignUpInfo();
  buildCounterSignUpInfo++;
  if (buildCounterSignUpInfo < 3) {
    o.classId = 'foo';
  }
  buildCounterSignUpInfo--;
  return o;
}

void checkSignUpInfo(api.SignUpInfo o) {
  buildCounterSignUpInfo++;
  if (buildCounterSignUpInfo < 3) {
    unittest.expect(o.classId!, unittest.equals('foo'));
  }
  buildCounterSignUpInfo--;
}

core.List<api.IssuerToUserInfo> buildUnnamed127() => [
  buildIssuerToUserInfo(),
  buildIssuerToUserInfo(),
];

void checkUnnamed127(core.List<api.IssuerToUserInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssuerToUserInfo(o[0]);
  checkIssuerToUserInfo(o[1]);
}

core.int buildCounterSmartTap = 0;
api.SmartTap buildSmartTap() {
  final o = api.SmartTap();
  buildCounterSmartTap++;
  if (buildCounterSmartTap < 3) {
    o.id = 'foo';
    o.infos = buildUnnamed127();
    o.kind = 'foo';
    o.merchantId = 'foo';
  }
  buildCounterSmartTap--;
  return o;
}

void checkSmartTap(api.SmartTap o) {
  buildCounterSmartTap++;
  if (buildCounterSmartTap < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed127(o.infos!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
  }
  buildCounterSmartTap--;
}

core.List<api.AuthenticationKey> buildUnnamed128() => [
  buildAuthenticationKey(),
  buildAuthenticationKey(),
];

void checkUnnamed128(core.List<api.AuthenticationKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthenticationKey(o[0]);
  checkAuthenticationKey(o[1]);
}

core.int buildCounterSmartTapMerchantData = 0;
api.SmartTapMerchantData buildSmartTapMerchantData() {
  final o = api.SmartTapMerchantData();
  buildCounterSmartTapMerchantData++;
  if (buildCounterSmartTapMerchantData < 3) {
    o.authenticationKeys = buildUnnamed128();
    o.smartTapMerchantId = 'foo';
  }
  buildCounterSmartTapMerchantData--;
  return o;
}

void checkSmartTapMerchantData(api.SmartTapMerchantData o) {
  buildCounterSmartTapMerchantData++;
  if (buildCounterSmartTapMerchantData < 3) {
    checkUnnamed128(o.authenticationKeys!);
    unittest.expect(o.smartTapMerchantId!, unittest.equals('foo'));
  }
  buildCounterSmartTapMerchantData--;
}

core.int buildCounterTemplateItem = 0;
api.TemplateItem buildTemplateItem() {
  final o = api.TemplateItem();
  buildCounterTemplateItem++;
  if (buildCounterTemplateItem < 3) {
    o.firstValue = buildFieldSelector();
    o.predefinedItem = 'foo';
    o.secondValue = buildFieldSelector();
  }
  buildCounterTemplateItem--;
  return o;
}

void checkTemplateItem(api.TemplateItem o) {
  buildCounterTemplateItem++;
  if (buildCounterTemplateItem < 3) {
    checkFieldSelector(o.firstValue!);
    unittest.expect(o.predefinedItem!, unittest.equals('foo'));
    checkFieldSelector(o.secondValue!);
  }
  buildCounterTemplateItem--;
}

core.int buildCounterTextModuleData = 0;
api.TextModuleData buildTextModuleData() {
  final o = api.TextModuleData();
  buildCounterTextModuleData++;
  if (buildCounterTextModuleData < 3) {
    o.body = 'foo';
    o.header = 'foo';
    o.id = 'foo';
    o.localizedBody = buildLocalizedString();
    o.localizedHeader = buildLocalizedString();
  }
  buildCounterTextModuleData--;
  return o;
}

void checkTextModuleData(api.TextModuleData o) {
  buildCounterTextModuleData++;
  if (buildCounterTextModuleData < 3) {
    unittest.expect(o.body!, unittest.equals('foo'));
    unittest.expect(o.header!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkLocalizedString(o.localizedBody!);
    checkLocalizedString(o.localizedHeader!);
  }
  buildCounterTextModuleData--;
}

core.int buildCounterTicketCost = 0;
api.TicketCost buildTicketCost() {
  final o = api.TicketCost();
  buildCounterTicketCost++;
  if (buildCounterTicketCost < 3) {
    o.discountMessage = buildLocalizedString();
    o.faceValue = buildMoney();
    o.purchasePrice = buildMoney();
  }
  buildCounterTicketCost--;
  return o;
}

void checkTicketCost(api.TicketCost o) {
  buildCounterTicketCost++;
  if (buildCounterTicketCost < 3) {
    checkLocalizedString(o.discountMessage!);
    checkMoney(o.faceValue!);
    checkMoney(o.purchasePrice!);
  }
  buildCounterTicketCost--;
}

core.List<api.TicketSeat> buildUnnamed129() => [
  buildTicketSeat(),
  buildTicketSeat(),
];

void checkUnnamed129(core.List<api.TicketSeat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTicketSeat(o[0]);
  checkTicketSeat(o[1]);
}

core.int buildCounterTicketLeg = 0;
api.TicketLeg buildTicketLeg() {
  final o = api.TicketLeg();
  buildCounterTicketLeg++;
  if (buildCounterTicketLeg < 3) {
    o.arrivalDateTime = 'foo';
    o.carriage = 'foo';
    o.departureDateTime = 'foo';
    o.destinationName = buildLocalizedString();
    o.destinationStationCode = 'foo';
    o.fareName = buildLocalizedString();
    o.originName = buildLocalizedString();
    o.originStationCode = 'foo';
    o.platform = 'foo';
    o.ticketSeat = buildTicketSeat();
    o.ticketSeats = buildUnnamed129();
    o.transitOperatorName = buildLocalizedString();
    o.transitTerminusName = buildLocalizedString();
    o.zone = 'foo';
  }
  buildCounterTicketLeg--;
  return o;
}

void checkTicketLeg(api.TicketLeg o) {
  buildCounterTicketLeg++;
  if (buildCounterTicketLeg < 3) {
    unittest.expect(o.arrivalDateTime!, unittest.equals('foo'));
    unittest.expect(o.carriage!, unittest.equals('foo'));
    unittest.expect(o.departureDateTime!, unittest.equals('foo'));
    checkLocalizedString(o.destinationName!);
    unittest.expect(o.destinationStationCode!, unittest.equals('foo'));
    checkLocalizedString(o.fareName!);
    checkLocalizedString(o.originName!);
    unittest.expect(o.originStationCode!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    checkTicketSeat(o.ticketSeat!);
    checkUnnamed129(o.ticketSeats!);
    checkLocalizedString(o.transitOperatorName!);
    checkLocalizedString(o.transitTerminusName!);
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterTicketLeg--;
}

core.int buildCounterTicketRestrictions = 0;
api.TicketRestrictions buildTicketRestrictions() {
  final o = api.TicketRestrictions();
  buildCounterTicketRestrictions++;
  if (buildCounterTicketRestrictions < 3) {
    o.otherRestrictions = buildLocalizedString();
    o.routeRestrictions = buildLocalizedString();
    o.routeRestrictionsDetails = buildLocalizedString();
    o.timeRestrictions = buildLocalizedString();
  }
  buildCounterTicketRestrictions--;
  return o;
}

void checkTicketRestrictions(api.TicketRestrictions o) {
  buildCounterTicketRestrictions++;
  if (buildCounterTicketRestrictions < 3) {
    checkLocalizedString(o.otherRestrictions!);
    checkLocalizedString(o.routeRestrictions!);
    checkLocalizedString(o.routeRestrictionsDetails!);
    checkLocalizedString(o.timeRestrictions!);
  }
  buildCounterTicketRestrictions--;
}

core.int buildCounterTicketSeat = 0;
api.TicketSeat buildTicketSeat() {
  final o = api.TicketSeat();
  buildCounterTicketSeat++;
  if (buildCounterTicketSeat < 3) {
    o.coach = 'foo';
    o.customFareClass = buildLocalizedString();
    o.fareClass = 'foo';
    o.seat = 'foo';
    o.seatAssignment = buildLocalizedString();
  }
  buildCounterTicketSeat--;
  return o;
}

void checkTicketSeat(api.TicketSeat o) {
  buildCounterTicketSeat++;
  if (buildCounterTicketSeat < 3) {
    unittest.expect(o.coach!, unittest.equals('foo'));
    checkLocalizedString(o.customFareClass!);
    unittest.expect(o.fareClass!, unittest.equals('foo'));
    unittest.expect(o.seat!, unittest.equals('foo'));
    checkLocalizedString(o.seatAssignment!);
  }
  buildCounterTicketSeat--;
}

core.int buildCounterTimeInterval = 0;
api.TimeInterval buildTimeInterval() {
  final o = api.TimeInterval();
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    o.end = buildDateTime();
    o.kind = 'foo';
    o.start = buildDateTime();
  }
  buildCounterTimeInterval--;
  return o;
}

void checkTimeInterval(api.TimeInterval o) {
  buildCounterTimeInterval++;
  if (buildCounterTimeInterval < 3) {
    checkDateTime(o.end!);
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkDateTime(o.start!);
  }
  buildCounterTimeInterval--;
}

core.List<api.ImageModuleData> buildUnnamed130() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed130(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<api.LatLongPoint> buildUnnamed131() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed131(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed132() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed132(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed133() => [buildMessage(), buildMessage()];

void checkUnnamed133(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<core.String> buildUnnamed134() => ['foo', 'foo'];

void checkUnnamed134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TextModuleData> buildUnnamed135() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed135(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed136() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed136(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterTransitClass = 0;
api.TransitClass buildTransitClass() {
  final o = api.TransitClass();
  buildCounterTransitClass++;
  if (buildCounterTransitClass < 3) {
    o.activationOptions = buildActivationOptions();
    o.allowMultipleUsersPerObject = true;
    o.appLinkData = buildAppLinkData();
    o.callbackOptions = buildCallbackOptions();
    o.classTemplateInfo = buildClassTemplateInfo();
    o.countryCode = 'foo';
    o.customCarriageLabel = buildLocalizedString();
    o.customCoachLabel = buildLocalizedString();
    o.customConcessionCategoryLabel = buildLocalizedString();
    o.customConfirmationCodeLabel = buildLocalizedString();
    o.customDiscountMessageLabel = buildLocalizedString();
    o.customFareClassLabel = buildLocalizedString();
    o.customFareNameLabel = buildLocalizedString();
    o.customOtherRestrictionsLabel = buildLocalizedString();
    o.customPlatformLabel = buildLocalizedString();
    o.customPurchaseFaceValueLabel = buildLocalizedString();
    o.customPurchasePriceLabel = buildLocalizedString();
    o.customPurchaseReceiptNumberLabel = buildLocalizedString();
    o.customRouteRestrictionsDetailsLabel = buildLocalizedString();
    o.customRouteRestrictionsLabel = buildLocalizedString();
    o.customSeatLabel = buildLocalizedString();
    o.customTicketNumberLabel = buildLocalizedString();
    o.customTimeRestrictionsLabel = buildLocalizedString();
    o.customTransitTerminusNameLabel = buildLocalizedString();
    o.customZoneLabel = buildLocalizedString();
    o.enableSingleLegItinerary = true;
    o.enableSmartTap = true;
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.homepageUri = buildUri();
    o.id = 'foo';
    o.imageModulesData = buildUnnamed130();
    o.infoModuleData = buildInfoModuleData();
    o.issuerName = 'foo';
    o.languageOverride = 'foo';
    o.linksModuleData = buildLinksModuleData();
    o.localizedIssuerName = buildLocalizedString();
    o.locations = buildUnnamed131();
    o.logo = buildImage();
    o.merchantLocations = buildUnnamed132();
    o.messages = buildUnnamed133();
    o.multipleDevicesAndHoldersAllowedStatus = 'foo';
    o.notifyPreference = 'foo';
    o.redemptionIssuers = buildUnnamed134();
    o.review = buildReview();
    o.reviewStatus = 'foo';
    o.securityAnimation = buildSecurityAnimation();
    o.textModulesData = buildUnnamed135();
    o.transitOperatorName = buildLocalizedString();
    o.transitType = 'foo';
    o.valueAddedModuleData = buildUnnamed136();
    o.version = 'foo';
    o.viewUnlockRequirement = 'foo';
    o.watermark = buildImage();
    o.wideLogo = buildImage();
    o.wordMark = buildImage();
  }
  buildCounterTransitClass--;
  return o;
}

void checkTransitClass(api.TransitClass o) {
  buildCounterTransitClass++;
  if (buildCounterTransitClass < 3) {
    checkActivationOptions(o.activationOptions!);
    unittest.expect(o.allowMultipleUsersPerObject!, unittest.isTrue);
    checkAppLinkData(o.appLinkData!);
    checkCallbackOptions(o.callbackOptions!);
    checkClassTemplateInfo(o.classTemplateInfo!);
    unittest.expect(o.countryCode!, unittest.equals('foo'));
    checkLocalizedString(o.customCarriageLabel!);
    checkLocalizedString(o.customCoachLabel!);
    checkLocalizedString(o.customConcessionCategoryLabel!);
    checkLocalizedString(o.customConfirmationCodeLabel!);
    checkLocalizedString(o.customDiscountMessageLabel!);
    checkLocalizedString(o.customFareClassLabel!);
    checkLocalizedString(o.customFareNameLabel!);
    checkLocalizedString(o.customOtherRestrictionsLabel!);
    checkLocalizedString(o.customPlatformLabel!);
    checkLocalizedString(o.customPurchaseFaceValueLabel!);
    checkLocalizedString(o.customPurchasePriceLabel!);
    checkLocalizedString(o.customPurchaseReceiptNumberLabel!);
    checkLocalizedString(o.customRouteRestrictionsDetailsLabel!);
    checkLocalizedString(o.customRouteRestrictionsLabel!);
    checkLocalizedString(o.customSeatLabel!);
    checkLocalizedString(o.customTicketNumberLabel!);
    checkLocalizedString(o.customTimeRestrictionsLabel!);
    checkLocalizedString(o.customTransitTerminusNameLabel!);
    checkLocalizedString(o.customZoneLabel!);
    unittest.expect(o.enableSingleLegItinerary!, unittest.isTrue);
    unittest.expect(o.enableSmartTap!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    checkUri(o.homepageUri!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed130(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    unittest.expect(o.issuerName!, unittest.equals('foo'));
    unittest.expect(o.languageOverride!, unittest.equals('foo'));
    checkLinksModuleData(o.linksModuleData!);
    checkLocalizedString(o.localizedIssuerName!);
    checkUnnamed131(o.locations!);
    checkImage(o.logo!);
    checkUnnamed132(o.merchantLocations!);
    checkUnnamed133(o.messages!);
    unittest.expect(
      o.multipleDevicesAndHoldersAllowedStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkUnnamed134(o.redemptionIssuers!);
    checkReview(o.review!);
    unittest.expect(o.reviewStatus!, unittest.equals('foo'));
    checkSecurityAnimation(o.securityAnimation!);
    checkUnnamed135(o.textModulesData!);
    checkLocalizedString(o.transitOperatorName!);
    unittest.expect(o.transitType!, unittest.equals('foo'));
    checkUnnamed136(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.viewUnlockRequirement!, unittest.equals('foo'));
    checkImage(o.watermark!);
    checkImage(o.wideLogo!);
    checkImage(o.wordMark!);
  }
  buildCounterTransitClass--;
}

core.int buildCounterTransitClassAddMessageResponse = 0;
api.TransitClassAddMessageResponse buildTransitClassAddMessageResponse() {
  final o = api.TransitClassAddMessageResponse();
  buildCounterTransitClassAddMessageResponse++;
  if (buildCounterTransitClassAddMessageResponse < 3) {
    o.resource = buildTransitClass();
  }
  buildCounterTransitClassAddMessageResponse--;
  return o;
}

void checkTransitClassAddMessageResponse(api.TransitClassAddMessageResponse o) {
  buildCounterTransitClassAddMessageResponse++;
  if (buildCounterTransitClassAddMessageResponse < 3) {
    checkTransitClass(o.resource!);
  }
  buildCounterTransitClassAddMessageResponse--;
}

core.List<api.TransitClass> buildUnnamed137() => [
  buildTransitClass(),
  buildTransitClass(),
];

void checkUnnamed137(core.List<api.TransitClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitClass(o[0]);
  checkTransitClass(o[1]);
}

core.int buildCounterTransitClassListResponse = 0;
api.TransitClassListResponse buildTransitClassListResponse() {
  final o = api.TransitClassListResponse();
  buildCounterTransitClassListResponse++;
  if (buildCounterTransitClassListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed137();
  }
  buildCounterTransitClassListResponse--;
  return o;
}

void checkTransitClassListResponse(api.TransitClassListResponse o) {
  buildCounterTransitClassListResponse++;
  if (buildCounterTransitClassListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed137(o.resources!);
  }
  buildCounterTransitClassListResponse--;
}

core.List<api.ImageModuleData> buildUnnamed138() => [
  buildImageModuleData(),
  buildImageModuleData(),
];

void checkUnnamed138(core.List<api.ImageModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImageModuleData(o[0]);
  checkImageModuleData(o[1]);
}

core.List<core.String> buildUnnamed139() => ['foo', 'foo'];

void checkUnnamed139(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.LatLongPoint> buildUnnamed140() => [
  buildLatLongPoint(),
  buildLatLongPoint(),
];

void checkUnnamed140(core.List<api.LatLongPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLongPoint(o[0]);
  checkLatLongPoint(o[1]);
}

core.List<api.MerchantLocation> buildUnnamed141() => [
  buildMerchantLocation(),
  buildMerchantLocation(),
];

void checkUnnamed141(core.List<api.MerchantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMerchantLocation(o[0]);
  checkMerchantLocation(o[1]);
}

core.List<api.Message> buildUnnamed142() => [buildMessage(), buildMessage()];

void checkUnnamed142(core.List<api.Message> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMessage(o[0]);
  checkMessage(o[1]);
}

core.List<api.TextModuleData> buildUnnamed143() => [
  buildTextModuleData(),
  buildTextModuleData(),
];

void checkUnnamed143(core.List<api.TextModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextModuleData(o[0]);
  checkTextModuleData(o[1]);
}

core.List<api.TicketLeg> buildUnnamed144() => [
  buildTicketLeg(),
  buildTicketLeg(),
];

void checkUnnamed144(core.List<api.TicketLeg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTicketLeg(o[0]);
  checkTicketLeg(o[1]);
}

core.List<api.ValueAddedModuleData> buildUnnamed145() => [
  buildValueAddedModuleData(),
  buildValueAddedModuleData(),
];

void checkUnnamed145(core.List<api.ValueAddedModuleData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkValueAddedModuleData(o[0]);
  checkValueAddedModuleData(o[1]);
}

core.int buildCounterTransitObject = 0;
api.TransitObject buildTransitObject() {
  final o = api.TransitObject();
  buildCounterTransitObject++;
  if (buildCounterTransitObject < 3) {
    o.activationStatus = buildActivationStatus();
    o.appLinkData = buildAppLinkData();
    o.barcode = buildBarcode();
    o.classId = 'foo';
    o.classReference = buildTransitClass();
    o.concessionCategory = 'foo';
    o.customConcessionCategory = buildLocalizedString();
    o.customTicketStatus = buildLocalizedString();
    o.deviceContext = buildDeviceContext();
    o.disableExpirationNotification = true;
    o.groupingInfo = buildGroupingInfo();
    o.hasLinkedDevice = true;
    o.hasUsers = true;
    o.heroImage = buildImage();
    o.hexBackgroundColor = 'foo';
    o.id = 'foo';
    o.imageModulesData = buildUnnamed138();
    o.infoModuleData = buildInfoModuleData();
    o.linkedObjectIds = buildUnnamed139();
    o.linksModuleData = buildLinksModuleData();
    o.locations = buildUnnamed140();
    o.merchantLocations = buildUnnamed141();
    o.messages = buildUnnamed142();
    o.notifyPreference = 'foo';
    o.passConstraints = buildPassConstraints();
    o.passengerNames = 'foo';
    o.passengerType = 'foo';
    o.purchaseDetails = buildPurchaseDetails();
    o.rotatingBarcode = buildRotatingBarcode();
    o.saveRestrictions = buildSaveRestrictions();
    o.smartTapRedemptionValue = 'foo';
    o.state = 'foo';
    o.textModulesData = buildUnnamed143();
    o.ticketLeg = buildTicketLeg();
    o.ticketLegs = buildUnnamed144();
    o.ticketNumber = 'foo';
    o.ticketRestrictions = buildTicketRestrictions();
    o.ticketStatus = 'foo';
    o.tripId = 'foo';
    o.tripType = 'foo';
    o.validTimeInterval = buildTimeInterval();
    o.valueAddedModuleData = buildUnnamed145();
    o.version = 'foo';
  }
  buildCounterTransitObject--;
  return o;
}

void checkTransitObject(api.TransitObject o) {
  buildCounterTransitObject++;
  if (buildCounterTransitObject < 3) {
    checkActivationStatus(o.activationStatus!);
    checkAppLinkData(o.appLinkData!);
    checkBarcode(o.barcode!);
    unittest.expect(o.classId!, unittest.equals('foo'));
    checkTransitClass(o.classReference!);
    unittest.expect(o.concessionCategory!, unittest.equals('foo'));
    checkLocalizedString(o.customConcessionCategory!);
    checkLocalizedString(o.customTicketStatus!);
    checkDeviceContext(o.deviceContext!);
    unittest.expect(o.disableExpirationNotification!, unittest.isTrue);
    checkGroupingInfo(o.groupingInfo!);
    unittest.expect(o.hasLinkedDevice!, unittest.isTrue);
    unittest.expect(o.hasUsers!, unittest.isTrue);
    checkImage(o.heroImage!);
    unittest.expect(o.hexBackgroundColor!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed138(o.imageModulesData!);
    checkInfoModuleData(o.infoModuleData!);
    checkUnnamed139(o.linkedObjectIds!);
    checkLinksModuleData(o.linksModuleData!);
    checkUnnamed140(o.locations!);
    checkUnnamed141(o.merchantLocations!);
    checkUnnamed142(o.messages!);
    unittest.expect(o.notifyPreference!, unittest.equals('foo'));
    checkPassConstraints(o.passConstraints!);
    unittest.expect(o.passengerNames!, unittest.equals('foo'));
    unittest.expect(o.passengerType!, unittest.equals('foo'));
    checkPurchaseDetails(o.purchaseDetails!);
    checkRotatingBarcode(o.rotatingBarcode!);
    checkSaveRestrictions(o.saveRestrictions!);
    unittest.expect(o.smartTapRedemptionValue!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed143(o.textModulesData!);
    checkTicketLeg(o.ticketLeg!);
    checkUnnamed144(o.ticketLegs!);
    unittest.expect(o.ticketNumber!, unittest.equals('foo'));
    checkTicketRestrictions(o.ticketRestrictions!);
    unittest.expect(o.ticketStatus!, unittest.equals('foo'));
    unittest.expect(o.tripId!, unittest.equals('foo'));
    unittest.expect(o.tripType!, unittest.equals('foo'));
    checkTimeInterval(o.validTimeInterval!);
    checkUnnamed145(o.valueAddedModuleData!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTransitObject--;
}

core.int buildCounterTransitObjectAddMessageResponse = 0;
api.TransitObjectAddMessageResponse buildTransitObjectAddMessageResponse() {
  final o = api.TransitObjectAddMessageResponse();
  buildCounterTransitObjectAddMessageResponse++;
  if (buildCounterTransitObjectAddMessageResponse < 3) {
    o.resource = buildTransitObject();
  }
  buildCounterTransitObjectAddMessageResponse--;
  return o;
}

void checkTransitObjectAddMessageResponse(
  api.TransitObjectAddMessageResponse o,
) {
  buildCounterTransitObjectAddMessageResponse++;
  if (buildCounterTransitObjectAddMessageResponse < 3) {
    checkTransitObject(o.resource!);
  }
  buildCounterTransitObjectAddMessageResponse--;
}

core.List<api.TransitObject> buildUnnamed146() => [
  buildTransitObject(),
  buildTransitObject(),
];

void checkUnnamed146(core.List<api.TransitObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitObject(o[0]);
  checkTransitObject(o[1]);
}

core.int buildCounterTransitObjectListResponse = 0;
api.TransitObjectListResponse buildTransitObjectListResponse() {
  final o = api.TransitObjectListResponse();
  buildCounterTransitObjectListResponse++;
  if (buildCounterTransitObjectListResponse < 3) {
    o.pagination = buildPagination();
    o.resources = buildUnnamed146();
  }
  buildCounterTransitObjectListResponse--;
  return o;
}

void checkTransitObjectListResponse(api.TransitObjectListResponse o) {
  buildCounterTransitObjectListResponse++;
  if (buildCounterTransitObjectListResponse < 3) {
    checkPagination(o.pagination!);
    checkUnnamed146(o.resources!);
  }
  buildCounterTransitObjectListResponse--;
}

core.int buildCounterTransitObjectUploadRotatingBarcodeValuesRequest = 0;
api.TransitObjectUploadRotatingBarcodeValuesRequest
buildTransitObjectUploadRotatingBarcodeValuesRequest() {
  final o = api.TransitObjectUploadRotatingBarcodeValuesRequest();
  buildCounterTransitObjectUploadRotatingBarcodeValuesRequest++;
  if (buildCounterTransitObjectUploadRotatingBarcodeValuesRequest < 3) {
    o.blob = buildMedia();
    o.mediaRequestInfo = buildMediaRequestInfo();
  }
  buildCounterTransitObjectUploadRotatingBarcodeValuesRequest--;
  return o;
}

void checkTransitObjectUploadRotatingBarcodeValuesRequest(
  api.TransitObjectUploadRotatingBarcodeValuesRequest o,
) {
  buildCounterTransitObjectUploadRotatingBarcodeValuesRequest++;
  if (buildCounterTransitObjectUploadRotatingBarcodeValuesRequest < 3) {
    checkMedia(o.blob!);
    checkMediaRequestInfo(o.mediaRequestInfo!);
  }
  buildCounterTransitObjectUploadRotatingBarcodeValuesRequest--;
}

core.int buildCounterTransitObjectUploadRotatingBarcodeValuesResponse = 0;
api.TransitObjectUploadRotatingBarcodeValuesResponse
buildTransitObjectUploadRotatingBarcodeValuesResponse() {
  final o = api.TransitObjectUploadRotatingBarcodeValuesResponse();
  buildCounterTransitObjectUploadRotatingBarcodeValuesResponse++;
  if (buildCounterTransitObjectUploadRotatingBarcodeValuesResponse < 3) {}
  buildCounterTransitObjectUploadRotatingBarcodeValuesResponse--;
  return o;
}

void checkTransitObjectUploadRotatingBarcodeValuesResponse(
  api.TransitObjectUploadRotatingBarcodeValuesResponse o,
) {
  buildCounterTransitObjectUploadRotatingBarcodeValuesResponse++;
  if (buildCounterTransitObjectUploadRotatingBarcodeValuesResponse < 3) {}
  buildCounterTransitObjectUploadRotatingBarcodeValuesResponse--;
}

core.int buildCounterTranslatedString = 0;
api.TranslatedString buildTranslatedString() {
  final o = api.TranslatedString();
  buildCounterTranslatedString++;
  if (buildCounterTranslatedString < 3) {
    o.kind = 'foo';
    o.language = 'foo';
    o.value = 'foo';
  }
  buildCounterTranslatedString--;
  return o;
}

void checkTranslatedString(api.TranslatedString o) {
  buildCounterTranslatedString++;
  if (buildCounterTranslatedString < 3) {
    unittest.expect(o.kind!, unittest.equals('foo'));
    unittest.expect(o.language!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterTranslatedString--;
}

core.int buildCounterUpcomingNotification = 0;
api.UpcomingNotification buildUpcomingNotification() {
  final o = api.UpcomingNotification();
  buildCounterUpcomingNotification++;
  if (buildCounterUpcomingNotification < 3) {
    o.enableNotification = true;
  }
  buildCounterUpcomingNotification--;
  return o;
}

void checkUpcomingNotification(api.UpcomingNotification o) {
  buildCounterUpcomingNotification++;
  if (buildCounterUpcomingNotification < 3) {
    unittest.expect(o.enableNotification!, unittest.isTrue);
  }
  buildCounterUpcomingNotification--;
}

core.int buildCounterUri = 0;
api.Uri buildUri() {
  final o = api.Uri();
  buildCounterUri++;
  if (buildCounterUri < 3) {
    o.description = 'foo';
    o.id = 'foo';
    o.kind = 'foo';
    o.localizedDescription = buildLocalizedString();
    o.uri = 'foo';
  }
  buildCounterUri--;
  return o;
}

void checkUri(api.Uri o) {
  buildCounterUri++;
  if (buildCounterUri < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.kind!, unittest.equals('foo'));
    checkLocalizedString(o.localizedDescription!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterUri--;
}

core.int buildCounterValueAddedModuleData = 0;
api.ValueAddedModuleData buildValueAddedModuleData() {
  final o = api.ValueAddedModuleData();
  buildCounterValueAddedModuleData++;
  if (buildCounterValueAddedModuleData < 3) {
    o.body = buildLocalizedString();
    o.header = buildLocalizedString();
    o.image = buildImage();
    o.sortIndex = 42;
    o.uri = 'foo';
    o.viewConstraints = buildModuleViewConstraints();
  }
  buildCounterValueAddedModuleData--;
  return o;
}

void checkValueAddedModuleData(api.ValueAddedModuleData o) {
  buildCounterValueAddedModuleData++;
  if (buildCounterValueAddedModuleData < 3) {
    checkLocalizedString(o.body!);
    checkLocalizedString(o.header!);
    checkImage(o.image!);
    unittest.expect(o.sortIndex!, unittest.equals(42));
    unittest.expect(o.uri!, unittest.equals('foo'));
    checkModuleViewConstraints(o.viewConstraints!);
  }
  buildCounterValueAddedModuleData--;
}

void main() {
  unittest.group('obj-schema-ActivationOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivationOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivationOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivationOptions(od);
    });
  });

  unittest.group('obj-schema-ActivationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActivationStatus(od);
    });
  });

  unittest.group('obj-schema-AddMessageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddMessageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddMessageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddMessageRequest(od);
    });
  });

  unittest.group('obj-schema-AirportInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAirportInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AirportInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAirportInfo(od);
    });
  });

  unittest.group('obj-schema-AppLinkData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppLinkData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppLinkData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppLinkData(od);
    });
  });

  unittest.group('obj-schema-AppLinkDataAppLinkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppLinkDataAppLinkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppLinkDataAppLinkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppLinkDataAppLinkInfo(od);
    });
  });

  unittest.group('obj-schema-AppLinkDataAppLinkInfoAppTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppLinkDataAppLinkInfoAppTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppLinkDataAppLinkInfoAppTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppLinkDataAppLinkInfoAppTarget(od);
    });
  });

  unittest.group('obj-schema-AuthenticationKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticationKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticationKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthenticationKey(od);
    });
  });

  unittest.group('obj-schema-Barcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBarcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Barcode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBarcode(od);
    });
  });

  unittest.group('obj-schema-BarcodeSectionDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBarcodeSectionDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BarcodeSectionDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBarcodeSectionDetail(od);
    });
  });

  unittest.group('obj-schema-Blobstore2Info', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlobstore2Info();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Blobstore2Info.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlobstore2Info(od);
    });
  });

  unittest.group('obj-schema-BoardingAndSeatingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoardingAndSeatingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoardingAndSeatingInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBoardingAndSeatingInfo(od);
    });
  });

  unittest.group('obj-schema-BoardingAndSeatingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoardingAndSeatingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoardingAndSeatingPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBoardingAndSeatingPolicy(od);
    });
  });

  unittest.group('obj-schema-CallbackOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallbackOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CallbackOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCallbackOptions(od);
    });
  });

  unittest.group('obj-schema-CardBarcodeSectionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardBarcodeSectionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardBarcodeSectionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardBarcodeSectionDetails(od);
    });
  });

  unittest.group('obj-schema-CardRowOneItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardRowOneItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardRowOneItem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardRowOneItem(od);
    });
  });

  unittest.group('obj-schema-CardRowTemplateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardRowTemplateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardRowTemplateInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardRowTemplateInfo(od);
    });
  });

  unittest.group('obj-schema-CardRowThreeItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardRowThreeItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardRowThreeItems.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardRowThreeItems(od);
    });
  });

  unittest.group('obj-schema-CardRowTwoItems', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardRowTwoItems();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardRowTwoItems.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardRowTwoItems(od);
    });
  });

  unittest.group('obj-schema-CardTemplateOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardTemplateOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardTemplateOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCardTemplateOverride(od);
    });
  });

  unittest.group('obj-schema-ClassTemplateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClassTemplateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClassTemplateInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClassTemplateInfo(od);
    });
  });

  unittest.group('obj-schema-CompositeMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeMedia.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeMedia(od);
    });
  });

  unittest.group('obj-schema-ContentTypeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentTypeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentTypeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentTypeInfo(od);
    });
  });

  unittest.group('obj-schema-DateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateTime(od);
    });
  });

  unittest.group('obj-schema-DetailsItemInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetailsItemInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetailsItemInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetailsItemInfo(od);
    });
  });

  unittest.group('obj-schema-DetailsTemplateOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetailsTemplateOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetailsTemplateOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetailsTemplateOverride(od);
    });
  });

  unittest.group('obj-schema-DeviceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceContext(od);
    });
  });

  unittest.group('obj-schema-DiffChecksumsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffChecksumsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffChecksumsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffChecksumsResponse(od);
    });
  });

  unittest.group('obj-schema-DiffDownloadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffDownloadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffDownloadResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffDownloadResponse(od);
    });
  });

  unittest.group('obj-schema-DiffUploadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffUploadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffUploadRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffUploadRequest(od);
    });
  });

  unittest.group('obj-schema-DiffUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffUploadResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffUploadResponse(od);
    });
  });

  unittest.group('obj-schema-DiffVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffVersionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiffVersionResponse(od);
    });
  });

  unittest.group('obj-schema-DiscoverableProgram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoverableProgram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoverableProgram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscoverableProgram(od);
    });
  });

  unittest.group('obj-schema-DiscoverableProgramMerchantSigninInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoverableProgramMerchantSigninInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoverableProgramMerchantSigninInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscoverableProgramMerchantSigninInfo(od);
    });
  });

  unittest.group('obj-schema-DiscoverableProgramMerchantSignupInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoverableProgramMerchantSignupInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoverableProgramMerchantSignupInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscoverableProgramMerchantSignupInfo(od);
    });
  });

  unittest.group('obj-schema-DownloadParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDownloadParameters(od);
    });
  });

  unittest.group('obj-schema-EventDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventDateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventDateTime(od);
    });
  });

  unittest.group('obj-schema-EventReservationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventReservationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventReservationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventReservationInfo(od);
    });
  });

  unittest.group('obj-schema-EventSeat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventSeat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventSeat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventSeat(od);
    });
  });

  unittest.group('obj-schema-EventTicketClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketClass(od);
    });
  });

  unittest.group('obj-schema-EventTicketClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-EventTicketClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketClassListResponse(od);
    });
  });

  unittest.group('obj-schema-EventTicketObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketObject(od);
    });
  });

  unittest.group('obj-schema-EventTicketObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-EventTicketObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventTicketObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventTicketObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventTicketObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-EventVenue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventVenue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventVenue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventVenue(od);
    });
  });

  unittest.group('obj-schema-ExpiryNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpiryNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpiryNotification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpiryNotification(od);
    });
  });

  unittest.group('obj-schema-FieldReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldReference(od);
    });
  });

  unittest.group('obj-schema-FieldSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldSelector(od);
    });
  });

  unittest.group('obj-schema-FirstRowOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirstRowOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirstRowOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFirstRowOption(od);
    });
  });

  unittest.group('obj-schema-FlightCarrier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightCarrier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightCarrier.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightCarrier(od);
    });
  });

  unittest.group('obj-schema-FlightClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightClass(od);
    });
  });

  unittest.group('obj-schema-FlightClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-FlightClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightClassListResponse(od);
    });
  });

  unittest.group('obj-schema-FlightHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightHeader.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightHeader(od);
    });
  });

  unittest.group('obj-schema-FlightObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightObject(od);
    });
  });

  unittest.group('obj-schema-FlightObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-FlightObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlightObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-FrequentFlyerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrequentFlyerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrequentFlyerInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFrequentFlyerInfo(od);
    });
  });

  unittest.group('obj-schema-GenericClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericClass(od);
    });
  });

  unittest.group('obj-schema-GenericClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-GenericClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericClassListResponse(od);
    });
  });

  unittest.group('obj-schema-GenericObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericObject(od);
    });
  });

  unittest.group('obj-schema-GenericObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-GenericObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-GiftCardClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardClass(od);
    });
  });

  unittest.group('obj-schema-GiftCardClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-GiftCardClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardClassListResponse(od);
    });
  });

  unittest.group('obj-schema-GiftCardObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardObject(od);
    });
  });

  unittest.group('obj-schema-GiftCardObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-GiftCardObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGiftCardObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GiftCardObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGiftCardObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-GroupingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupingInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupingInfo(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Image.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageModuleData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageModuleData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageModuleData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageModuleData(od);
    });
  });

  unittest.group('obj-schema-ImageUri', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageUri.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageUri(od);
    });
  });

  unittest.group('obj-schema-InfoModuleData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInfoModuleData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InfoModuleData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInfoModuleData(od);
    });
  });

  unittest.group('obj-schema-Issuer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Issuer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssuer(od);
    });
  });

  unittest.group('obj-schema-IssuerContactInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuerContactInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssuerContactInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssuerContactInfo(od);
    });
  });

  unittest.group('obj-schema-IssuerListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuerListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssuerListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssuerListResponse(od);
    });
  });

  unittest.group('obj-schema-IssuerToUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssuerToUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssuerToUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssuerToUserInfo(od);
    });
  });

  unittest.group('obj-schema-JwtInsertResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtInsertResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JwtInsertResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJwtInsertResponse(od);
    });
  });

  unittest.group('obj-schema-JwtResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwtResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JwtResource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJwtResource(od);
    });
  });

  unittest.group('obj-schema-LabelValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabelValue(od);
    });
  });

  unittest.group('obj-schema-LabelValueRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabelValueRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LabelValueRow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLabelValueRow(od);
    });
  });

  unittest.group('obj-schema-LatLongPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLongPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LatLongPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLatLongPoint(od);
    });
  });

  unittest.group('obj-schema-LinksModuleData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinksModuleData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinksModuleData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinksModuleData(od);
    });
  });

  unittest.group('obj-schema-ListTemplateOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTemplateOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTemplateOverride.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListTemplateOverride(od);
    });
  });

  unittest.group('obj-schema-LocalizedString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedString.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocalizedString(od);
    });
  });

  unittest.group('obj-schema-LoyaltyClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyClass(od);
    });
  });

  unittest.group('obj-schema-LoyaltyClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-LoyaltyClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyClassListResponse(od);
    });
  });

  unittest.group('obj-schema-LoyaltyObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyObject(od);
    });
  });

  unittest.group('obj-schema-LoyaltyObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-LoyaltyObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-LoyaltyPoints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyPoints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyPoints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyPoints(od);
    });
  });

  unittest.group('obj-schema-LoyaltyPointsBalance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoyaltyPointsBalance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoyaltyPointsBalance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoyaltyPointsBalance(od);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Media.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMedia(od);
    });
  });

  unittest.group('obj-schema-MediaRequestInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaRequestInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaRequestInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMediaRequestInfo(od);
    });
  });

  unittest.group('obj-schema-MerchantLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMerchantLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MerchantLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMerchantLocation(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Message.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-ModifyLinkedOfferObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyLinkedOfferObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyLinkedOfferObjects.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyLinkedOfferObjects(od);
    });
  });

  unittest.group('obj-schema-ModifyLinkedOfferObjectsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyLinkedOfferObjectsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyLinkedOfferObjectsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyLinkedOfferObjectsRequest(od);
    });
  });

  unittest.group('obj-schema-ModuleViewConstraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModuleViewConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModuleViewConstraints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModuleViewConstraints(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-Notifications', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotifications();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Notifications.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNotifications(od);
    });
  });

  unittest.group('obj-schema-ObjectId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObjectId(od);
    });
  });

  unittest.group('obj-schema-OfferClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferClass(od);
    });
  });

  unittest.group('obj-schema-OfferClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-OfferClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferClassListResponse(od);
    });
  });

  unittest.group('obj-schema-OfferObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferObject(od);
    });
  });

  unittest.group('obj-schema-OfferObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-OfferObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOfferObjectListResponse(od);
    });
  });

  unittest.group('obj-schema-Pagination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPagination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Pagination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPagination(od);
    });
  });

  unittest.group('obj-schema-PassConstraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPassConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PassConstraints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPassConstraints(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Permission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPermission(od);
    });
  });

  unittest.group('obj-schema-Permissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Permissions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPermissions(od);
    });
  });

  unittest.group('obj-schema-PurchaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPurchaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PurchaseDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPurchaseDetails(od);
    });
  });

  unittest.group('obj-schema-ReservationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReservationInfo(od);
    });
  });

  unittest.group('obj-schema-Resources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Resources.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResources(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Review.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReview(od);
    });
  });

  unittest.group('obj-schema-RotatingBarcode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotatingBarcode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotatingBarcode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRotatingBarcode(od);
    });
  });

  unittest.group('obj-schema-RotatingBarcodeTotpDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotatingBarcodeTotpDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotatingBarcodeTotpDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRotatingBarcodeTotpDetails(od);
    });
  });

  unittest.group('obj-schema-RotatingBarcodeTotpDetailsTotpParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotatingBarcodeTotpDetailsTotpParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotatingBarcodeTotpDetailsTotpParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRotatingBarcodeTotpDetailsTotpParameters(od);
    });
  });

  unittest.group('obj-schema-RotatingBarcodeValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRotatingBarcodeValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RotatingBarcodeValues.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRotatingBarcodeValues(od);
    });
  });

  unittest.group('obj-schema-SaveRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSaveRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SaveRestrictions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSaveRestrictions(od);
    });
  });

  unittest.group('obj-schema-SecurityAnimation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityAnimation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityAnimation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityAnimation(od);
    });
  });

  unittest.group('obj-schema-SetPassUpdateNoticeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPassUpdateNoticeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPassUpdateNoticeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPassUpdateNoticeRequest(od);
    });
  });

  unittest.group('obj-schema-SetPassUpdateNoticeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetPassUpdateNoticeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetPassUpdateNoticeResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetPassUpdateNoticeResponse(od);
    });
  });

  unittest.group('obj-schema-SignUpInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignUpInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignUpInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignUpInfo(od);
    });
  });

  unittest.group('obj-schema-SmartTap', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSmartTap();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SmartTap.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSmartTap(od);
    });
  });

  unittest.group('obj-schema-SmartTapMerchantData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSmartTapMerchantData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SmartTapMerchantData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSmartTapMerchantData(od);
    });
  });

  unittest.group('obj-schema-TemplateItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateItem.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateItem(od);
    });
  });

  unittest.group('obj-schema-TextModuleData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextModuleData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextModuleData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextModuleData(od);
    });
  });

  unittest.group('obj-schema-TicketCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTicketCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TicketCost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTicketCost(od);
    });
  });

  unittest.group('obj-schema-TicketLeg', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTicketLeg();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TicketLeg.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTicketLeg(od);
    });
  });

  unittest.group('obj-schema-TicketRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTicketRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TicketRestrictions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTicketRestrictions(od);
    });
  });

  unittest.group('obj-schema-TicketSeat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTicketSeat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TicketSeat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTicketSeat(od);
    });
  });

  unittest.group('obj-schema-TimeInterval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeInterval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeInterval(od);
    });
  });

  unittest.group('obj-schema-TransitClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitClass.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitClass(od);
    });
  });

  unittest.group('obj-schema-TransitClassAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitClassAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitClassAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitClassAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-TransitClassListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitClassListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitClassListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitClassListResponse(od);
    });
  });

  unittest.group('obj-schema-TransitObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitObject(od);
    });
  });

  unittest.group('obj-schema-TransitObjectAddMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitObjectAddMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitObjectAddMessageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitObjectAddMessageResponse(od);
    });
  });

  unittest.group('obj-schema-TransitObjectListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitObjectListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitObjectListResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitObjectListResponse(od);
    });
  });

  unittest.group(
    'obj-schema-TransitObjectUploadRotatingBarcodeValuesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildTransitObjectUploadRotatingBarcodeValuesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.TransitObjectUploadRotatingBarcodeValuesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkTransitObjectUploadRotatingBarcodeValuesRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-TransitObjectUploadRotatingBarcodeValuesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildTransitObjectUploadRotatingBarcodeValuesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .TransitObjectUploadRotatingBarcodeValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkTransitObjectUploadRotatingBarcodeValuesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-TranslatedString', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTranslatedString();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TranslatedString.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTranslatedString(od);
    });
  });

  unittest.group('obj-schema-UpcomingNotification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpcomingNotification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpcomingNotification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpcomingNotification(od);
    });
  });

  unittest.group('obj-schema-Uri', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Uri.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUri(od);
    });
  });

  unittest.group('obj-schema-ValueAddedModuleData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueAddedModuleData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueAddedModuleData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValueAddedModuleData(od);
    });
  });

  unittest.group('resource-EventticketclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketClass/'),
          );
          pathOffset += 34;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildEventTicketClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketClassAddMessageResponse(
        response as api.EventTicketClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketClass/'),
          );
          pathOffset += 34;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkEventTicketClass(response as api.EventTicketClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_request = buildEventTicketClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketClass(obj);

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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('walletobjects/v1/eventTicketClass'),
          );
          pathOffset += 33;

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
          final resp = convert.json.encode(buildEventTicketClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkEventTicketClass(response as api.EventTicketClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 33),
            unittest.equals('walletobjects/v1/eventTicketClass'),
          );
          pathOffset += 33;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEventTicketClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkEventTicketClassListResponse(
        response as api.EventTicketClassListResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_request = buildEventTicketClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketClass(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketClass/'),
          );
          pathOffset += 34;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketClass(response as api.EventTicketClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketclass;
      final arg_request = buildEventTicketClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketClass(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketClass/'),
          );
          pathOffset += 34;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketClass(response as api.EventTicketClass);
    });
  });

  unittest.group('resource-EventticketobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('walletobjects/v1/eventTicketObject/'),
          );
          pathOffset += 35;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildEventTicketObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketObjectAddMessageResponse(
        response as api.EventTicketObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('walletobjects/v1/eventTicketObject/'),
          );
          pathOffset += 35;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkEventTicketObject(response as api.EventTicketObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_request = buildEventTicketObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketObject(obj);

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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketObject'),
          );
          pathOffset += 34;

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
          final resp = convert.json.encode(buildEventTicketObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkEventTicketObject(response as api.EventTicketObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 34),
            unittest.equals('walletobjects/v1/eventTicketObject'),
          );
          pathOffset += 34;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildEventTicketObjectListResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkEventTicketObjectListResponse(
        response as api.EventTicketObjectListResponse,
      );
    });

    unittest.test('method--modifylinkedofferobjects', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_request = buildModifyLinkedOfferObjectsRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyLinkedOfferObjectsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyLinkedOfferObjectsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('walletobjects/v1/eventTicketObject/'),
          );
          pathOffset += 35;
          index = path.indexOf('/modifyLinkedOfferObjects', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('/modifyLinkedOfferObjects'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildEventTicketObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifylinkedofferobjects(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketObject(response as api.EventTicketObject);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_request = buildEventTicketObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketObject(obj);

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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('walletobjects/v1/eventTicketObject/'),
          );
          pathOffset += 35;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketObject(response as api.EventTicketObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).eventticketobject;
      final arg_request = buildEventTicketObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EventTicketObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEventTicketObject(obj);

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
            path.substring(pathOffset, pathOffset + 35),
            unittest.equals('walletobjects/v1/eventTicketObject/'),
          );
          pathOffset += 35;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildEventTicketObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkEventTicketObject(response as api.EventTicketObject);
    });
  });

  unittest.group('resource-FlightclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightClass/'),
          );
          pathOffset += 29;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildFlightClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightClassAddMessageResponse(
        response as api.FlightClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightClass/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkFlightClass(response as api.FlightClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_request = buildFlightClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightClass(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/flightClass'),
          );
          pathOffset += 28;

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
          final resp = convert.json.encode(buildFlightClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkFlightClass(response as api.FlightClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/flightClass'),
          );
          pathOffset += 28;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFlightClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkFlightClassListResponse(response as api.FlightClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_request = buildFlightClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightClass(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightClass/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightClass(response as api.FlightClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightclass;
      final arg_request = buildFlightClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightClass(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightClass/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightClass(response as api.FlightClass);
    });
  });

  unittest.group('resource-FlightobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/flightObject/'),
          );
          pathOffset += 30;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildFlightObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightObjectAddMessageResponse(
        response as api.FlightObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/flightObject/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkFlightObject(response as api.FlightObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_request = buildFlightObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightObject(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightObject'),
          );
          pathOffset += 29;

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
          final resp = convert.json.encode(buildFlightObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkFlightObject(response as api.FlightObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/flightObject'),
          );
          pathOffset += 29;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildFlightObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkFlightObjectListResponse(response as api.FlightObjectListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_request = buildFlightObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightObject(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/flightObject/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightObject(response as api.FlightObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).flightobject;
      final arg_request = buildFlightObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.FlightObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFlightObject(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/flightObject/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildFlightObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkFlightObject(response as api.FlightObject);
    });
  });

  unittest.group('resource-GenericclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericClass/'),
          );
          pathOffset += 30;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildGenericClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericClassAddMessageResponse(
        response as api.GenericClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkGenericClass(response as api.GenericClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_request = buildGenericClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericClass(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/genericClass'),
          );
          pathOffset += 29;

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
          final resp = convert.json.encode(buildGenericClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkGenericClass(response as api.GenericClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/genericClass'),
          );
          pathOffset += 29;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGenericClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkGenericClassListResponse(response as api.GenericClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_request = buildGenericClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericClass(response as api.GenericClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericclass;
      final arg_request = buildGenericClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericClass(response as api.GenericClass);
    });
  });

  unittest.group('resource-GenericobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/genericObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildGenericObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericObjectAddMessageResponse(
        response as api.GenericObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/genericObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkGenericObject(response as api.GenericObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_request = buildGenericObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericObject(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericObject'),
          );
          pathOffset += 30;

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
          final resp = convert.json.encode(buildGenericObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkGenericObject(response as api.GenericObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/genericObject'),
          );
          pathOffset += 30;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGenericObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkGenericObjectListResponse(response as api.GenericObjectListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_request = buildGenericObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/genericObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericObject(response as api.GenericObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).genericobject;
      final arg_request = buildGenericObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenericObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenericObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/genericObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGenericObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGenericObject(response as api.GenericObject);
    });
  });

  unittest.group('resource-GiftcardclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardClass/'),
          );
          pathOffset += 31;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildGiftCardClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardClassAddMessageResponse(
        response as api.GiftCardClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardClass/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkGiftCardClass(response as api.GiftCardClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_request = buildGiftCardClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/giftCardClass'),
          );
          pathOffset += 30;

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
          final resp = convert.json.encode(buildGiftCardClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkGiftCardClass(response as api.GiftCardClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/giftCardClass'),
          );
          pathOffset += 30;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGiftCardClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkGiftCardClassListResponse(response as api.GiftCardClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_request = buildGiftCardClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardClass(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardClass/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardClass(response as api.GiftCardClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardclass;
      final arg_request = buildGiftCardClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardClass(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardClass/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardClass(response as api.GiftCardClass);
    });
  });

  unittest.group('resource-GiftcardobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('walletobjects/v1/giftCardObject/'),
          );
          pathOffset += 32;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildGiftCardObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardObjectAddMessageResponse(
        response as api.GiftCardObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('walletobjects/v1/giftCardObject/'),
          );
          pathOffset += 32;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkGiftCardObject(response as api.GiftCardObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_request = buildGiftCardObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardObject'),
          );
          pathOffset += 31;

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
          final resp = convert.json.encode(buildGiftCardObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkGiftCardObject(response as api.GiftCardObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/giftCardObject'),
          );
          pathOffset += 31;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGiftCardObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkGiftCardObjectListResponse(
        response as api.GiftCardObjectListResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_request = buildGiftCardObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardObject(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('walletobjects/v1/giftCardObject/'),
          );
          pathOffset += 32;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardObject(response as api.GiftCardObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).giftcardobject;
      final arg_request = buildGiftCardObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GiftCardObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGiftCardObject(obj);

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
            path.substring(pathOffset, pathOffset + 32),
            unittest.equals('walletobjects/v1/giftCardObject/'),
          );
          pathOffset += 32;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildGiftCardObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkGiftCardObject(response as api.GiftCardObject);
    });
  });

  unittest.group('resource-IssuerResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).issuer;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('walletobjects/v1/issuer/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildIssuer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkIssuer(response as api.Issuer);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).issuer;
      final arg_request = buildIssuer();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Issuer.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIssuer(obj);

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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('walletobjects/v1/issuer'),
          );
          pathOffset += 23;

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
          final resp = convert.json.encode(buildIssuer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkIssuer(response as api.Issuer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).issuer;
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('walletobjects/v1/issuer'),
          );
          pathOffset += 23;

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
          final resp = convert.json.encode(buildIssuerListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list($fields: arg_$fields);
      checkIssuerListResponse(response as api.IssuerListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).issuer;
      final arg_request = buildIssuer();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Issuer.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIssuer(obj);

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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('walletobjects/v1/issuer/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildIssuer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkIssuer(response as api.Issuer);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).issuer;
      final arg_request = buildIssuer();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Issuer.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIssuer(obj);

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
            path.substring(pathOffset, pathOffset + 24),
            unittest.equals('walletobjects/v1/issuer/'),
          );
          pathOffset += 24;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildIssuer());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkIssuer(response as api.Issuer);
    });
  });

  unittest.group('resource-JwtResource_1', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).jwt;
      final arg_request = buildJwtResource();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.JwtResource.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkJwtResource(obj);

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
            path.substring(pathOffset, pathOffset + 20),
            unittest.equals('walletobjects/v1/jwt'),
          );
          pathOffset += 20;

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
          final resp = convert.json.encode(buildJwtInsertResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkJwtInsertResponse(response as api.JwtInsertResponse);
    });
  });

  unittest.group('resource-LoyaltyclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyClass/'),
          );
          pathOffset += 30;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildLoyaltyClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyClassAddMessageResponse(
        response as api.LoyaltyClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkLoyaltyClass(response as api.LoyaltyClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_request = buildLoyaltyClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyClass(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/loyaltyClass'),
          );
          pathOffset += 29;

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
          final resp = convert.json.encode(buildLoyaltyClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkLoyaltyClass(response as api.LoyaltyClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/loyaltyClass'),
          );
          pathOffset += 29;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLoyaltyClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkLoyaltyClassListResponse(response as api.LoyaltyClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_request = buildLoyaltyClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyClass(response as api.LoyaltyClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyclass;
      final arg_request = buildLoyaltyClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyClass(response as api.LoyaltyClass);
    });
  });

  unittest.group('resource-LoyaltyobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/loyaltyObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildLoyaltyObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyObjectAddMessageResponse(
        response as api.LoyaltyObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/loyaltyObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkLoyaltyObject(response as api.LoyaltyObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_request = buildLoyaltyObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyObject(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyObject'),
          );
          pathOffset += 30;

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
          final resp = convert.json.encode(buildLoyaltyObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkLoyaltyObject(response as api.LoyaltyObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/loyaltyObject'),
          );
          pathOffset += 30;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLoyaltyObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkLoyaltyObjectListResponse(response as api.LoyaltyObjectListResponse);
    });

    unittest.test('method--modifylinkedofferobjects', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_request = buildModifyLinkedOfferObjectsRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyLinkedOfferObjectsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyLinkedOfferObjectsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/loyaltyObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/modifyLinkedOfferObjects', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('/modifyLinkedOfferObjects'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildLoyaltyObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifylinkedofferobjects(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyObject(response as api.LoyaltyObject);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_request = buildLoyaltyObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/loyaltyObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyObject(response as api.LoyaltyObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).loyaltyobject;
      final arg_request = buildLoyaltyObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.LoyaltyObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkLoyaltyObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/loyaltyObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildLoyaltyObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkLoyaltyObject(response as api.LoyaltyObject);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).media;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/downloadRotatingBarcodeValues', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('/downloadRotatingBarcodeValues'),
          );
          pathOffset += 30;

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
          final resp = convert.json.encode(buildMedia());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.download(arg_resourceId, $fields: arg_$fields);
      checkMedia(response as api.Media);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).media;
      final arg_request =
          buildTransitObjectUploadRotatingBarcodeValuesRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .TransitObjectUploadRotatingBarcodeValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitObjectUploadRotatingBarcodeValuesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/uploadRotatingBarcodeValues', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('/uploadRotatingBarcodeValues'),
          );
          pathOffset += 28;

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
          final resp = convert.json.encode(
            buildTransitObjectUploadRotatingBarcodeValuesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.upload(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitObjectUploadRotatingBarcodeValuesResponse(
        response as api.TransitObjectUploadRotatingBarcodeValuesResponse,
      );
    });
  });

  unittest.group('resource-OfferclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerClass/'),
          );
          pathOffset += 28;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(buildOfferClassAddMessageResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferClassAddMessageResponse(
        response as api.OfferClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerClass/'),
          );
          pathOffset += 28;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkOfferClass(response as api.OfferClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_request = buildOfferClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferClass(obj);

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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('walletobjects/v1/offerClass'),
          );
          pathOffset += 27;

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
          final resp = convert.json.encode(buildOfferClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkOfferClass(response as api.OfferClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 27),
            unittest.equals('walletobjects/v1/offerClass'),
          );
          pathOffset += 27;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOfferClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkOfferClassListResponse(response as api.OfferClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_request = buildOfferClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferClass(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerClass/'),
          );
          pathOffset += 28;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferClass(response as api.OfferClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerclass;
      final arg_request = buildOfferClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferClass(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerClass/'),
          );
          pathOffset += 28;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferClass(response as api.OfferClass);
    });
  });

  unittest.group('resource-OfferobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/offerObject/'),
          );
          pathOffset += 29;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildOfferObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferObjectAddMessageResponse(
        response as api.OfferObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/offerObject/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkOfferObject(response as api.OfferObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_request = buildOfferObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferObject(obj);

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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerObject'),
          );
          pathOffset += 28;

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
          final resp = convert.json.encode(buildOfferObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkOfferObject(response as api.OfferObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 28),
            unittest.equals('walletobjects/v1/offerObject'),
          );
          pathOffset += 28;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOfferObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkOfferObjectListResponse(response as api.OfferObjectListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_request = buildOfferObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferObject(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/offerObject/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferObject(response as api.OfferObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).offerobject;
      final arg_request = buildOfferObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.OfferObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkOfferObject(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/offerObject/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildOfferObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkOfferObject(response as api.OfferObject);
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).permissions;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/permissions/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildPermissions());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkPermissions(response as api.Permissions);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).permissions;
      final arg_request = buildPermissions();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Permissions.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPermissions(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/permissions/'),
          );
          pathOffset += 29;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildPermissions());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkPermissions(response as api.Permissions);
    });
  });

  unittest.group('resource-SmarttapResource', () {
    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).smarttap;
      final arg_request = buildSmartTap();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SmartTap.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSmartTap(obj);

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
            path.substring(pathOffset, pathOffset + 25),
            unittest.equals('walletobjects/v1/smartTap'),
          );
          pathOffset += 25;

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
          final resp = convert.json.encode(buildSmartTap());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkSmartTap(response as api.SmartTap);
    });
  });

  unittest.group('resource-TransitclassResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitClass/'),
          );
          pathOffset += 30;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildTransitClassAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitClassAddMessageResponse(
        response as api.TransitClassAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkTransitClass(response as api.TransitClass);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_request = buildTransitClass();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitClass(obj);

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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/transitClass'),
          );
          pathOffset += 29;

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
          final resp = convert.json.encode(buildTransitClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkTransitClass(response as api.TransitClass);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_issuerId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('walletobjects/v1/transitClass'),
          );
          pathOffset += 29;

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
            queryMap['issuerId']!.first,
            unittest.equals(arg_issuerId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTransitClassListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        issuerId: arg_issuerId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkTransitClassListResponse(response as api.TransitClassListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_request = buildTransitClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitClass(response as api.TransitClass);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitclass;
      final arg_request = buildTransitClass();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitClass.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitClass(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitClass/'),
          );
          pathOffset += 30;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitClass());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitClass(response as api.TransitClass);
    });
  });

  unittest.group('resource-TransitobjectResource', () {
    unittest.test('method--addmessage', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_request = buildAddMessageRequest();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddMessageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddMessageRequest(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          index = path.indexOf('/addMessage', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 11),
            unittest.equals('/addMessage'),
          );
          pathOffset += 11;

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
          final resp = convert.json.encode(
            buildTransitObjectAddMessageResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.addmessage(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitObjectAddMessageResponse(
        response as api.TransitObjectAddMessageResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_resourceId = 'foo';
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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_resourceId, $fields: arg_$fields);
      checkTransitObject(response as api.TransitObject);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_request = buildTransitObject();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitObject(obj);

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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitObject'),
          );
          pathOffset += 30;

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
          final resp = convert.json.encode(buildTransitObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(arg_request, $fields: arg_$fields);
      checkTransitObject(response as api.TransitObject);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_classId = 'foo';
      final arg_maxResults = 42;
      final arg_token = 'foo';
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('walletobjects/v1/transitObject'),
          );
          pathOffset += 30;

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
            queryMap['classId']!.first,
            unittest.equals(arg_classId),
          );
          unittest.expect(
            core.int.parse(queryMap['maxResults']!.first),
            unittest.equals(arg_maxResults),
          );
          unittest.expect(queryMap['token']!.first, unittest.equals(arg_token));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTransitObjectListResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        classId: arg_classId,
        maxResults: arg_maxResults,
        token: arg_token,
        $fields: arg_$fields,
      );
      checkTransitObjectListResponse(response as api.TransitObjectListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_request = buildTransitObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitObject(response as api.TransitObject);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).transitobject;
      final arg_request = buildTransitObject();
      final arg_resourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TransitObject.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTransitObject(obj);

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
            path.substring(pathOffset, pathOffset + 31),
            unittest.equals('walletobjects/v1/transitObject/'),
          );
          pathOffset += 31;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_resourceId'));

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
          final resp = convert.json.encode(buildTransitObject());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_resourceId,
        $fields: arg_$fields,
      );
      checkTransitObject(response as api.TransitObject);
    });
  });

  unittest.group('resource-WalletobjectsV1PrivateContentResource', () {
    unittest.test('method--setPassUpdateNotice', () async {
      final mock = HttpServerMock();
      final res = api.WalletobjectsApi(mock).walletobjects.v1.privateContent;
      final arg_request = buildSetPassUpdateNoticeRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetPassUpdateNoticeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetPassUpdateNoticeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 51),
            unittest.equals(
              'walletobjects/v1/privateContent/setPassUpdateNotice',
            ),
          );
          pathOffset += 51;

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
          final resp = convert.json.encode(buildSetPassUpdateNoticeResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setPassUpdateNotice(
        arg_request,
        $fields: arg_$fields,
      );
      checkSetPassUpdateNoticeResponse(
        response as api.SetPassUpdateNoticeResponse,
      );
    });
  });
}
