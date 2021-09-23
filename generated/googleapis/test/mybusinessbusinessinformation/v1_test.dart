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

import 'package:googleapis/mybusinessbusinessinformation/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdWordsLocationExtensions = 0;
api.AdWordsLocationExtensions buildAdWordsLocationExtensions() {
  final o = api.AdWordsLocationExtensions();
  buildCounterAdWordsLocationExtensions++;
  if (buildCounterAdWordsLocationExtensions < 3) {
    o.adPhone = 'foo';
  }
  buildCounterAdWordsLocationExtensions--;
  return o;
}

void checkAdWordsLocationExtensions(api.AdWordsLocationExtensions o) {
  buildCounterAdWordsLocationExtensions++;
  if (buildCounterAdWordsLocationExtensions < 3) {
    unittest.expect(
      o.adPhone!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdWordsLocationExtensions--;
}

core.int buildCounterAssociateLocationRequest = 0;
api.AssociateLocationRequest buildAssociateLocationRequest() {
  final o = api.AssociateLocationRequest();
  buildCounterAssociateLocationRequest++;
  if (buildCounterAssociateLocationRequest < 3) {
    o.placeId = 'foo';
  }
  buildCounterAssociateLocationRequest--;
  return o;
}

void checkAssociateLocationRequest(api.AssociateLocationRequest o) {
  buildCounterAssociateLocationRequest++;
  if (buildCounterAssociateLocationRequest < 3) {
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssociateLocationRequest--;
}

core.List<api.UriAttributeValue> buildUnnamed0() => [
      buildUriAttributeValue(),
      buildUriAttributeValue(),
    ];

void checkUnnamed0(core.List<api.UriAttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUriAttributeValue(o[0]);
  checkUriAttributeValue(o[1]);
}

core.List<core.Object> buildUnnamed1() => [
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    ];

void checkUnnamed1(core.List<core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o[0]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o[1]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterAttribute = 0;
api.Attribute buildAttribute() {
  final o = api.Attribute();
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    o.name = 'foo';
    o.repeatedEnumValue = buildRepeatedEnumAttributeValue();
    o.uriValues = buildUnnamed0();
    o.valueType = 'foo';
    o.values = buildUnnamed1();
  }
  buildCounterAttribute--;
  return o;
}

void checkAttribute(api.Attribute o) {
  buildCounterAttribute++;
  if (buildCounterAttribute < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRepeatedEnumAttributeValue(o.repeatedEnumValue!);
    checkUnnamed0(o.uriValues!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.values!);
  }
  buildCounterAttribute--;
}

core.List<api.AttributeValueMetadata> buildUnnamed2() => [
      buildAttributeValueMetadata(),
      buildAttributeValueMetadata(),
    ];

void checkUnnamed2(core.List<api.AttributeValueMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeValueMetadata(o[0]);
  checkAttributeValueMetadata(o[1]);
}

core.int buildCounterAttributeMetadata = 0;
api.AttributeMetadata buildAttributeMetadata() {
  final o = api.AttributeMetadata();
  buildCounterAttributeMetadata++;
  if (buildCounterAttributeMetadata < 3) {
    o.deprecated = true;
    o.displayName = 'foo';
    o.groupDisplayName = 'foo';
    o.parent = 'foo';
    o.repeatable = true;
    o.valueMetadata = buildUnnamed2();
    o.valueType = 'foo';
  }
  buildCounterAttributeMetadata--;
  return o;
}

void checkAttributeMetadata(api.AttributeMetadata o) {
  buildCounterAttributeMetadata++;
  if (buildCounterAttributeMetadata < 3) {
    unittest.expect(o.deprecated!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(o.repeatable!, unittest.isTrue);
    checkUnnamed2(o.valueMetadata!);
    unittest.expect(
      o.valueType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttributeMetadata--;
}

core.int buildCounterAttributeValueMetadata = 0;
api.AttributeValueMetadata buildAttributeValueMetadata() {
  final o = api.AttributeValueMetadata();
  buildCounterAttributeValueMetadata++;
  if (buildCounterAttributeValueMetadata < 3) {
    o.displayName = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterAttributeValueMetadata--;
  return o;
}

void checkAttributeValueMetadata(api.AttributeValueMetadata o) {
  buildCounterAttributeValueMetadata++;
  if (buildCounterAttributeValueMetadata < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    var casted3 = (o.value!) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(
      casted3['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted3['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted3['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterAttributeValueMetadata--;
}

core.List<api.Attribute> buildUnnamed3() => [
      buildAttribute(),
      buildAttribute(),
    ];

void checkUnnamed3(core.List<api.Attribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttribute(o[0]);
  checkAttribute(o[1]);
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.attributes = buildUnnamed3();
    o.name = 'foo';
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed3(o.attributes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttributes--;
}

core.List<api.Category> buildUnnamed4() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed4(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.int buildCounterBatchGetCategoriesResponse = 0;
api.BatchGetCategoriesResponse buildBatchGetCategoriesResponse() {
  final o = api.BatchGetCategoriesResponse();
  buildCounterBatchGetCategoriesResponse++;
  if (buildCounterBatchGetCategoriesResponse < 3) {
    o.categories = buildUnnamed4();
  }
  buildCounterBatchGetCategoriesResponse--;
  return o;
}

void checkBatchGetCategoriesResponse(api.BatchGetCategoriesResponse o) {
  buildCounterBatchGetCategoriesResponse++;
  if (buildCounterBatchGetCategoriesResponse < 3) {
    checkUnnamed4(o.categories!);
  }
  buildCounterBatchGetCategoriesResponse--;
}

core.List<api.TimePeriod> buildUnnamed5() => [
      buildTimePeriod(),
      buildTimePeriod(),
    ];

void checkUnnamed5(core.List<api.TimePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimePeriod(o[0]);
  checkTimePeriod(o[1]);
}

core.int buildCounterBusinessHours = 0;
api.BusinessHours buildBusinessHours() {
  final o = api.BusinessHours();
  buildCounterBusinessHours++;
  if (buildCounterBusinessHours < 3) {
    o.periods = buildUnnamed5();
  }
  buildCounterBusinessHours--;
  return o;
}

void checkBusinessHours(api.BusinessHours o) {
  buildCounterBusinessHours++;
  if (buildCounterBusinessHours < 3) {
    checkUnnamed5(o.periods!);
  }
  buildCounterBusinessHours--;
}

core.List<api.Category> buildUnnamed6() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed6(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.int buildCounterCategories = 0;
api.Categories buildCategories() {
  final o = api.Categories();
  buildCounterCategories++;
  if (buildCounterCategories < 3) {
    o.additionalCategories = buildUnnamed6();
    o.primaryCategory = buildCategory();
  }
  buildCounterCategories--;
  return o;
}

void checkCategories(api.Categories o) {
  buildCounterCategories++;
  if (buildCounterCategories < 3) {
    checkUnnamed6(o.additionalCategories!);
    checkCategory(o.primaryCategory!);
  }
  buildCounterCategories--;
}

core.List<api.MoreHoursType> buildUnnamed7() => [
      buildMoreHoursType(),
      buildMoreHoursType(),
    ];

void checkUnnamed7(core.List<api.MoreHoursType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMoreHoursType(o[0]);
  checkMoreHoursType(o[1]);
}

core.List<api.ServiceType> buildUnnamed8() => [
      buildServiceType(),
      buildServiceType(),
    ];

void checkUnnamed8(core.List<api.ServiceType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceType(o[0]);
  checkServiceType(o[1]);
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.displayName = 'foo';
    o.moreHoursTypes = buildUnnamed7();
    o.name = 'foo';
    o.serviceTypes = buildUnnamed8();
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.moreHoursTypes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.serviceTypes!);
  }
  buildCounterCategory--;
}

core.List<api.ChainName> buildUnnamed9() => [
      buildChainName(),
      buildChainName(),
    ];

void checkUnnamed9(core.List<api.ChainName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChainName(o[0]);
  checkChainName(o[1]);
}

core.List<api.ChainUri> buildUnnamed10() => [
      buildChainUri(),
      buildChainUri(),
    ];

void checkUnnamed10(core.List<api.ChainUri> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChainUri(o[0]);
  checkChainUri(o[1]);
}

core.int buildCounterChain = 0;
api.Chain buildChain() {
  final o = api.Chain();
  buildCounterChain++;
  if (buildCounterChain < 3) {
    o.chainNames = buildUnnamed9();
    o.locationCount = 42;
    o.name = 'foo';
    o.websites = buildUnnamed10();
  }
  buildCounterChain--;
  return o;
}

void checkChain(api.Chain o) {
  buildCounterChain++;
  if (buildCounterChain < 3) {
    checkUnnamed9(o.chainNames!);
    unittest.expect(
      o.locationCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.websites!);
  }
  buildCounterChain--;
}

core.int buildCounterChainName = 0;
api.ChainName buildChainName() {
  final o = api.ChainName();
  buildCounterChainName++;
  if (buildCounterChainName < 3) {
    o.displayName = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterChainName--;
  return o;
}

void checkChainName(api.ChainName o) {
  buildCounterChainName++;
  if (buildCounterChainName < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterChainName--;
}

core.int buildCounterChainUri = 0;
api.ChainUri buildChainUri() {
  final o = api.ChainUri();
  buildCounterChainUri++;
  if (buildCounterChainUri < 3) {
    o.uri = 'foo';
  }
  buildCounterChainUri--;
  return o;
}

void checkChainUri(api.ChainUri o) {
  buildCounterChainUri++;
  if (buildCounterChainUri < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterChainUri--;
}

core.int buildCounterClearLocationAssociationRequest = 0;
api.ClearLocationAssociationRequest buildClearLocationAssociationRequest() {
  final o = api.ClearLocationAssociationRequest();
  buildCounterClearLocationAssociationRequest++;
  if (buildCounterClearLocationAssociationRequest < 3) {}
  buildCounterClearLocationAssociationRequest--;
  return o;
}

void checkClearLocationAssociationRequest(
    api.ClearLocationAssociationRequest o) {
  buildCounterClearLocationAssociationRequest++;
  if (buildCounterClearLocationAssociationRequest < 3) {}
  buildCounterClearLocationAssociationRequest--;
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

core.int buildCounterFreeFormServiceItem = 0;
api.FreeFormServiceItem buildFreeFormServiceItem() {
  final o = api.FreeFormServiceItem();
  buildCounterFreeFormServiceItem++;
  if (buildCounterFreeFormServiceItem < 3) {
    o.category = 'foo';
    o.label = buildLabel();
  }
  buildCounterFreeFormServiceItem--;
  return o;
}

void checkFreeFormServiceItem(api.FreeFormServiceItem o) {
  buildCounterFreeFormServiceItem++;
  if (buildCounterFreeFormServiceItem < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkLabel(o.label!);
  }
  buildCounterFreeFormServiceItem--;
}

core.int buildCounterGoogleLocation = 0;
api.GoogleLocation buildGoogleLocation() {
  final o = api.GoogleLocation();
  buildCounterGoogleLocation++;
  if (buildCounterGoogleLocation < 3) {
    o.location = buildLocation();
    o.name = 'foo';
    o.requestAdminRightsUri = 'foo';
  }
  buildCounterGoogleLocation--;
  return o;
}

void checkGoogleLocation(api.GoogleLocation o) {
  buildCounterGoogleLocation++;
  if (buildCounterGoogleLocation < 3) {
    checkLocation(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestAdminRightsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleLocation--;
}

core.int buildCounterGoogleUpdatedLocation = 0;
api.GoogleUpdatedLocation buildGoogleUpdatedLocation() {
  final o = api.GoogleUpdatedLocation();
  buildCounterGoogleUpdatedLocation++;
  if (buildCounterGoogleUpdatedLocation < 3) {
    o.diffMask = 'foo';
    o.location = buildLocation();
    o.pendingMask = 'foo';
  }
  buildCounterGoogleUpdatedLocation--;
  return o;
}

void checkGoogleUpdatedLocation(api.GoogleUpdatedLocation o) {
  buildCounterGoogleUpdatedLocation++;
  if (buildCounterGoogleUpdatedLocation < 3) {
    unittest.expect(
      o.diffMask!,
      unittest.equals('foo'),
    );
    checkLocation(o.location!);
    unittest.expect(
      o.pendingMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleUpdatedLocation--;
}

core.int buildCounterLabel = 0;
api.Label buildLabel() {
  final o = api.Label();
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterLabel--;
  return o;
}

void checkLabel(api.Label o) {
  buildCounterLabel++;
  if (buildCounterLabel < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLabel--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.List<api.AttributeMetadata> buildUnnamed11() => [
      buildAttributeMetadata(),
      buildAttributeMetadata(),
    ];

void checkUnnamed11(core.List<api.AttributeMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttributeMetadata(o[0]);
  checkAttributeMetadata(o[1]);
}

core.int buildCounterListAttributeMetadataResponse = 0;
api.ListAttributeMetadataResponse buildListAttributeMetadataResponse() {
  final o = api.ListAttributeMetadataResponse();
  buildCounterListAttributeMetadataResponse++;
  if (buildCounterListAttributeMetadataResponse < 3) {
    o.attributeMetadata = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttributeMetadataResponse--;
  return o;
}

void checkListAttributeMetadataResponse(api.ListAttributeMetadataResponse o) {
  buildCounterListAttributeMetadataResponse++;
  if (buildCounterListAttributeMetadataResponse < 3) {
    checkUnnamed11(o.attributeMetadata!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAttributeMetadataResponse--;
}

core.List<api.Category> buildUnnamed12() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed12(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.int buildCounterListCategoriesResponse = 0;
api.ListCategoriesResponse buildListCategoriesResponse() {
  final o = api.ListCategoriesResponse();
  buildCounterListCategoriesResponse++;
  if (buildCounterListCategoriesResponse < 3) {
    o.categories = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterListCategoriesResponse--;
  return o;
}

void checkListCategoriesResponse(api.ListCategoriesResponse o) {
  buildCounterListCategoriesResponse++;
  if (buildCounterListCategoriesResponse < 3) {
    checkUnnamed12(o.categories!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCategoriesResponse--;
}

core.List<api.Location> buildUnnamed13() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed13(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed13();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed13(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListLocationsResponse--;
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

core.List<api.MoreHours> buildUnnamed15() => [
      buildMoreHours(),
      buildMoreHours(),
    ];

void checkUnnamed15(core.List<api.MoreHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMoreHours(o[0]);
  checkMoreHours(o[1]);
}

core.List<api.ServiceItem> buildUnnamed16() => [
      buildServiceItem(),
      buildServiceItem(),
    ];

void checkUnnamed16(core.List<api.ServiceItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceItem(o[0]);
  checkServiceItem(o[1]);
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.adWordsLocationExtensions = buildAdWordsLocationExtensions();
    o.categories = buildCategories();
    o.labels = buildUnnamed14();
    o.languageCode = 'foo';
    o.latlng = buildLatLng();
    o.metadata = buildMetadata();
    o.moreHours = buildUnnamed15();
    o.name = 'foo';
    o.openInfo = buildOpenInfo();
    o.phoneNumbers = buildPhoneNumbers();
    o.profile = buildProfile();
    o.regularHours = buildBusinessHours();
    o.relationshipData = buildRelationshipData();
    o.serviceArea = buildServiceAreaBusiness();
    o.serviceItems = buildUnnamed16();
    o.specialHours = buildSpecialHours();
    o.storeCode = 'foo';
    o.storefrontAddress = buildPostalAddress();
    o.title = 'foo';
    o.websiteUri = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkAdWordsLocationExtensions(o.adWordsLocationExtensions!);
    checkCategories(o.categories!);
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkLatLng(o.latlng!);
    checkMetadata(o.metadata!);
    checkUnnamed15(o.moreHours!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOpenInfo(o.openInfo!);
    checkPhoneNumbers(o.phoneNumbers!);
    checkProfile(o.profile!);
    checkBusinessHours(o.regularHours!);
    checkRelationshipData(o.relationshipData!);
    checkServiceAreaBusiness(o.serviceArea!);
    checkUnnamed16(o.serviceItems!);
    checkSpecialHours(o.specialHours!);
    unittest.expect(
      o.storeCode!,
      unittest.equals('foo'),
    );
    checkPostalAddress(o.storefrontAddress!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.canDelete = true;
    o.canHaveFoodMenus = true;
    o.canModifyServiceList = true;
    o.canOperateHealthData = true;
    o.canOperateLocalPost = true;
    o.canOperateLodgingData = true;
    o.duplicateLocation = 'foo';
    o.hasGoogleUpdated = true;
    o.hasPendingEdits = true;
    o.mapsUri = 'foo';
    o.newReviewUri = 'foo';
    o.placeId = 'foo';
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canHaveFoodMenus!, unittest.isTrue);
    unittest.expect(o.canModifyServiceList!, unittest.isTrue);
    unittest.expect(o.canOperateHealthData!, unittest.isTrue);
    unittest.expect(o.canOperateLocalPost!, unittest.isTrue);
    unittest.expect(o.canOperateLodgingData!, unittest.isTrue);
    unittest.expect(
      o.duplicateLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasGoogleUpdated!, unittest.isTrue);
    unittest.expect(o.hasPendingEdits!, unittest.isTrue);
    unittest.expect(
      o.mapsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newReviewUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetadata--;
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

core.List<api.TimePeriod> buildUnnamed17() => [
      buildTimePeriod(),
      buildTimePeriod(),
    ];

void checkUnnamed17(core.List<api.TimePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimePeriod(o[0]);
  checkTimePeriod(o[1]);
}

core.int buildCounterMoreHours = 0;
api.MoreHours buildMoreHours() {
  final o = api.MoreHours();
  buildCounterMoreHours++;
  if (buildCounterMoreHours < 3) {
    o.hoursTypeId = 'foo';
    o.periods = buildUnnamed17();
  }
  buildCounterMoreHours--;
  return o;
}

void checkMoreHours(api.MoreHours o) {
  buildCounterMoreHours++;
  if (buildCounterMoreHours < 3) {
    unittest.expect(
      o.hoursTypeId!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.periods!);
  }
  buildCounterMoreHours--;
}

core.int buildCounterMoreHoursType = 0;
api.MoreHoursType buildMoreHoursType() {
  final o = api.MoreHoursType();
  buildCounterMoreHoursType++;
  if (buildCounterMoreHoursType < 3) {
    o.displayName = 'foo';
    o.hoursTypeId = 'foo';
    o.localizedDisplayName = 'foo';
  }
  buildCounterMoreHoursType--;
  return o;
}

void checkMoreHoursType(api.MoreHoursType o) {
  buildCounterMoreHoursType++;
  if (buildCounterMoreHoursType < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hoursTypeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localizedDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoreHoursType--;
}

core.int buildCounterOpenInfo = 0;
api.OpenInfo buildOpenInfo() {
  final o = api.OpenInfo();
  buildCounterOpenInfo++;
  if (buildCounterOpenInfo < 3) {
    o.canReopen = true;
    o.openingDate = buildDate();
    o.status = 'foo';
  }
  buildCounterOpenInfo--;
  return o;
}

void checkOpenInfo(api.OpenInfo o) {
  buildCounterOpenInfo++;
  if (buildCounterOpenInfo < 3) {
    unittest.expect(o.canReopen!, unittest.isTrue);
    checkDate(o.openingDate!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterOpenInfo--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
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

core.int buildCounterPhoneNumbers = 0;
api.PhoneNumbers buildPhoneNumbers() {
  final o = api.PhoneNumbers();
  buildCounterPhoneNumbers++;
  if (buildCounterPhoneNumbers < 3) {
    o.additionalPhones = buildUnnamed18();
    o.primaryPhone = 'foo';
  }
  buildCounterPhoneNumbers--;
  return o;
}

void checkPhoneNumbers(api.PhoneNumbers o) {
  buildCounterPhoneNumbers++;
  if (buildCounterPhoneNumbers < 3) {
    checkUnnamed18(o.additionalPhones!);
    unittest.expect(
      o.primaryPhone!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoneNumbers--;
}

core.int buildCounterPlaceInfo = 0;
api.PlaceInfo buildPlaceInfo() {
  final o = api.PlaceInfo();
  buildCounterPlaceInfo++;
  if (buildCounterPlaceInfo < 3) {
    o.placeId = 'foo';
    o.placeName = 'foo';
  }
  buildCounterPlaceInfo--;
  return o;
}

void checkPlaceInfo(api.PlaceInfo o) {
  buildCounterPlaceInfo++;
  if (buildCounterPlaceInfo < 3) {
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaceInfo--;
}

core.List<api.PlaceInfo> buildUnnamed19() => [
      buildPlaceInfo(),
      buildPlaceInfo(),
    ];

void checkUnnamed19(core.List<api.PlaceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaceInfo(o[0]);
  checkPlaceInfo(o[1]);
}

core.int buildCounterPlaces = 0;
api.Places buildPlaces() {
  final o = api.Places();
  buildCounterPlaces++;
  if (buildCounterPlaces < 3) {
    o.placeInfos = buildUnnamed19();
  }
  buildCounterPlaces--;
  return o;
}

void checkPlaces(api.Places o) {
  buildCounterPlaces++;
  if (buildCounterPlaces < 3) {
    checkUnnamed19(o.placeInfos!);
  }
  buildCounterPlaces--;
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterPostalAddress = 0;
api.PostalAddress buildPostalAddress() {
  final o = api.PostalAddress();
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    o.addressLines = buildUnnamed20();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed21();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterPostalAddress--;
  return o;
}

void checkPostalAddress(api.PostalAddress o) {
  buildCounterPostalAddress++;
  if (buildCounterPostalAddress < 3) {
    checkUnnamed20(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterPostalAddress--;
}

core.int buildCounterProfile = 0;
api.Profile buildProfile() {
  final o = api.Profile();
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    o.description = 'foo';
  }
  buildCounterProfile--;
  return o;
}

void checkProfile(api.Profile o) {
  buildCounterProfile++;
  if (buildCounterProfile < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterProfile--;
}

core.List<api.RelevantLocation> buildUnnamed22() => [
      buildRelevantLocation(),
      buildRelevantLocation(),
    ];

void checkUnnamed22(core.List<api.RelevantLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelevantLocation(o[0]);
  checkRelevantLocation(o[1]);
}

core.int buildCounterRelationshipData = 0;
api.RelationshipData buildRelationshipData() {
  final o = api.RelationshipData();
  buildCounterRelationshipData++;
  if (buildCounterRelationshipData < 3) {
    o.childrenLocations = buildUnnamed22();
    o.parentChain = 'foo';
    o.parentLocation = buildRelevantLocation();
  }
  buildCounterRelationshipData--;
  return o;
}

void checkRelationshipData(api.RelationshipData o) {
  buildCounterRelationshipData++;
  if (buildCounterRelationshipData < 3) {
    checkUnnamed22(o.childrenLocations!);
    unittest.expect(
      o.parentChain!,
      unittest.equals('foo'),
    );
    checkRelevantLocation(o.parentLocation!);
  }
  buildCounterRelationshipData--;
}

core.int buildCounterRelevantLocation = 0;
api.RelevantLocation buildRelevantLocation() {
  final o = api.RelevantLocation();
  buildCounterRelevantLocation++;
  if (buildCounterRelevantLocation < 3) {
    o.placeId = 'foo';
    o.relationType = 'foo';
  }
  buildCounterRelevantLocation--;
  return o;
}

void checkRelevantLocation(api.RelevantLocation o) {
  buildCounterRelevantLocation++;
  if (buildCounterRelevantLocation < 3) {
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelevantLocation--;
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

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterRepeatedEnumAttributeValue = 0;
api.RepeatedEnumAttributeValue buildRepeatedEnumAttributeValue() {
  final o = api.RepeatedEnumAttributeValue();
  buildCounterRepeatedEnumAttributeValue++;
  if (buildCounterRepeatedEnumAttributeValue < 3) {
    o.setValues = buildUnnamed23();
    o.unsetValues = buildUnnamed24();
  }
  buildCounterRepeatedEnumAttributeValue--;
  return o;
}

void checkRepeatedEnumAttributeValue(api.RepeatedEnumAttributeValue o) {
  buildCounterRepeatedEnumAttributeValue++;
  if (buildCounterRepeatedEnumAttributeValue < 3) {
    checkUnnamed23(o.setValues!);
    checkUnnamed24(o.unsetValues!);
  }
  buildCounterRepeatedEnumAttributeValue--;
}

core.List<api.Chain> buildUnnamed25() => [
      buildChain(),
      buildChain(),
    ];

void checkUnnamed25(core.List<api.Chain> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChain(o[0]);
  checkChain(o[1]);
}

core.int buildCounterSearchChainsResponse = 0;
api.SearchChainsResponse buildSearchChainsResponse() {
  final o = api.SearchChainsResponse();
  buildCounterSearchChainsResponse++;
  if (buildCounterSearchChainsResponse < 3) {
    o.chains = buildUnnamed25();
  }
  buildCounterSearchChainsResponse--;
  return o;
}

void checkSearchChainsResponse(api.SearchChainsResponse o) {
  buildCounterSearchChainsResponse++;
  if (buildCounterSearchChainsResponse < 3) {
    checkUnnamed25(o.chains!);
  }
  buildCounterSearchChainsResponse--;
}

core.int buildCounterSearchGoogleLocationsRequest = 0;
api.SearchGoogleLocationsRequest buildSearchGoogleLocationsRequest() {
  final o = api.SearchGoogleLocationsRequest();
  buildCounterSearchGoogleLocationsRequest++;
  if (buildCounterSearchGoogleLocationsRequest < 3) {
    o.location = buildLocation();
    o.pageSize = 42;
    o.query = 'foo';
  }
  buildCounterSearchGoogleLocationsRequest--;
  return o;
}

void checkSearchGoogleLocationsRequest(api.SearchGoogleLocationsRequest o) {
  buildCounterSearchGoogleLocationsRequest++;
  if (buildCounterSearchGoogleLocationsRequest < 3) {
    checkLocation(o.location!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchGoogleLocationsRequest--;
}

core.List<api.GoogleLocation> buildUnnamed26() => [
      buildGoogleLocation(),
      buildGoogleLocation(),
    ];

void checkUnnamed26(core.List<api.GoogleLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLocation(o[0]);
  checkGoogleLocation(o[1]);
}

core.int buildCounterSearchGoogleLocationsResponse = 0;
api.SearchGoogleLocationsResponse buildSearchGoogleLocationsResponse() {
  final o = api.SearchGoogleLocationsResponse();
  buildCounterSearchGoogleLocationsResponse++;
  if (buildCounterSearchGoogleLocationsResponse < 3) {
    o.googleLocations = buildUnnamed26();
  }
  buildCounterSearchGoogleLocationsResponse--;
  return o;
}

void checkSearchGoogleLocationsResponse(api.SearchGoogleLocationsResponse o) {
  buildCounterSearchGoogleLocationsResponse++;
  if (buildCounterSearchGoogleLocationsResponse < 3) {
    checkUnnamed26(o.googleLocations!);
  }
  buildCounterSearchGoogleLocationsResponse--;
}

core.int buildCounterServiceAreaBusiness = 0;
api.ServiceAreaBusiness buildServiceAreaBusiness() {
  final o = api.ServiceAreaBusiness();
  buildCounterServiceAreaBusiness++;
  if (buildCounterServiceAreaBusiness < 3) {
    o.businessType = 'foo';
    o.places = buildPlaces();
    o.regionCode = 'foo';
  }
  buildCounterServiceAreaBusiness--;
  return o;
}

void checkServiceAreaBusiness(api.ServiceAreaBusiness o) {
  buildCounterServiceAreaBusiness++;
  if (buildCounterServiceAreaBusiness < 3) {
    unittest.expect(
      o.businessType!,
      unittest.equals('foo'),
    );
    checkPlaces(o.places!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAreaBusiness--;
}

core.int buildCounterServiceItem = 0;
api.ServiceItem buildServiceItem() {
  final o = api.ServiceItem();
  buildCounterServiceItem++;
  if (buildCounterServiceItem < 3) {
    o.freeFormServiceItem = buildFreeFormServiceItem();
    o.price = buildMoney();
    o.structuredServiceItem = buildStructuredServiceItem();
  }
  buildCounterServiceItem--;
  return o;
}

void checkServiceItem(api.ServiceItem o) {
  buildCounterServiceItem++;
  if (buildCounterServiceItem < 3) {
    checkFreeFormServiceItem(o.freeFormServiceItem!);
    checkMoney(o.price!);
    checkStructuredServiceItem(o.structuredServiceItem!);
  }
  buildCounterServiceItem--;
}

core.int buildCounterServiceType = 0;
api.ServiceType buildServiceType() {
  final o = api.ServiceType();
  buildCounterServiceType++;
  if (buildCounterServiceType < 3) {
    o.displayName = 'foo';
    o.serviceTypeId = 'foo';
  }
  buildCounterServiceType--;
  return o;
}

void checkServiceType(api.ServiceType o) {
  buildCounterServiceType++;
  if (buildCounterServiceType < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceTypeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceType--;
}

core.int buildCounterSpecialHourPeriod = 0;
api.SpecialHourPeriod buildSpecialHourPeriod() {
  final o = api.SpecialHourPeriod();
  buildCounterSpecialHourPeriod++;
  if (buildCounterSpecialHourPeriod < 3) {
    o.closeTime = buildTimeOfDay();
    o.closed = true;
    o.endDate = buildDate();
    o.openTime = buildTimeOfDay();
    o.startDate = buildDate();
  }
  buildCounterSpecialHourPeriod--;
  return o;
}

void checkSpecialHourPeriod(api.SpecialHourPeriod o) {
  buildCounterSpecialHourPeriod++;
  if (buildCounterSpecialHourPeriod < 3) {
    checkTimeOfDay(o.closeTime!);
    unittest.expect(o.closed!, unittest.isTrue);
    checkDate(o.endDate!);
    checkTimeOfDay(o.openTime!);
    checkDate(o.startDate!);
  }
  buildCounterSpecialHourPeriod--;
}

core.List<api.SpecialHourPeriod> buildUnnamed27() => [
      buildSpecialHourPeriod(),
      buildSpecialHourPeriod(),
    ];

void checkUnnamed27(core.List<api.SpecialHourPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpecialHourPeriod(o[0]);
  checkSpecialHourPeriod(o[1]);
}

core.int buildCounterSpecialHours = 0;
api.SpecialHours buildSpecialHours() {
  final o = api.SpecialHours();
  buildCounterSpecialHours++;
  if (buildCounterSpecialHours < 3) {
    o.specialHourPeriods = buildUnnamed27();
  }
  buildCounterSpecialHours--;
  return o;
}

void checkSpecialHours(api.SpecialHours o) {
  buildCounterSpecialHours++;
  if (buildCounterSpecialHours < 3) {
    checkUnnamed27(o.specialHourPeriods!);
  }
  buildCounterSpecialHours--;
}

core.int buildCounterStructuredServiceItem = 0;
api.StructuredServiceItem buildStructuredServiceItem() {
  final o = api.StructuredServiceItem();
  buildCounterStructuredServiceItem++;
  if (buildCounterStructuredServiceItem < 3) {
    o.description = 'foo';
    o.serviceTypeId = 'foo';
  }
  buildCounterStructuredServiceItem--;
  return o;
}

void checkStructuredServiceItem(api.StructuredServiceItem o) {
  buildCounterStructuredServiceItem++;
  if (buildCounterStructuredServiceItem < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceTypeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStructuredServiceItem--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTimePeriod = 0;
api.TimePeriod buildTimePeriod() {
  final o = api.TimePeriod();
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    o.closeDay = 'foo';
    o.closeTime = buildTimeOfDay();
    o.openDay = 'foo';
    o.openTime = buildTimeOfDay();
  }
  buildCounterTimePeriod--;
  return o;
}

void checkTimePeriod(api.TimePeriod o) {
  buildCounterTimePeriod++;
  if (buildCounterTimePeriod < 3) {
    unittest.expect(
      o.closeDay!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.closeTime!);
    unittest.expect(
      o.openDay!,
      unittest.equals('foo'),
    );
    checkTimeOfDay(o.openTime!);
  }
  buildCounterTimePeriod--;
}

core.int buildCounterUriAttributeValue = 0;
api.UriAttributeValue buildUriAttributeValue() {
  final o = api.UriAttributeValue();
  buildCounterUriAttributeValue++;
  if (buildCounterUriAttributeValue < 3) {
    o.uri = 'foo';
  }
  buildCounterUriAttributeValue--;
  return o;
}

void checkUriAttributeValue(api.UriAttributeValue o) {
  buildCounterUriAttributeValue++;
  if (buildCounterUriAttributeValue < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterUriAttributeValue--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AdWordsLocationExtensions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdWordsLocationExtensions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdWordsLocationExtensions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdWordsLocationExtensions(od);
    });
  });

  unittest.group('obj-schema-AssociateLocationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssociateLocationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssociateLocationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssociateLocationRequest(od);
    });
  });

  unittest.group('obj-schema-Attribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attribute.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttribute(od);
    });
  });

  unittest.group('obj-schema-AttributeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributeMetadata(od);
    });
  });

  unittest.group('obj-schema-AttributeValueMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributeValueMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttributeValueMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttributeValueMetadata(od);
    });
  });

  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attributes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-BatchGetCategoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetCategoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetCategoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetCategoriesResponse(od);
    });
  });

  unittest.group('obj-schema-BusinessHours', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBusinessHours();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BusinessHours.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBusinessHours(od);
    });
  });

  unittest.group('obj-schema-Categories', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategories();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Categories.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategories(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-Chain', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChain();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Chain.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChain(od);
    });
  });

  unittest.group('obj-schema-ChainName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChainName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChainName.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChainName(od);
    });
  });

  unittest.group('obj-schema-ChainUri', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChainUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ChainUri.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkChainUri(od);
    });
  });

  unittest.group('obj-schema-ClearLocationAssociationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearLocationAssociationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearLocationAssociationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClearLocationAssociationRequest(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FreeFormServiceItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreeFormServiceItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreeFormServiceItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreeFormServiceItem(od);
    });
  });

  unittest.group('obj-schema-GoogleLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleUpdatedLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleUpdatedLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleUpdatedLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleUpdatedLocation(od);
    });
  });

  unittest.group('obj-schema-Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Label.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLabel(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-ListAttributeMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttributeMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttributeMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAttributeMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-ListCategoriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCategoriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCategoriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCategoriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
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

  unittest.group('obj-schema-MoreHours', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoreHours();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MoreHours.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoreHours(od);
    });
  });

  unittest.group('obj-schema-MoreHoursType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoreHoursType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoreHoursType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoreHoursType(od);
    });
  });

  unittest.group('obj-schema-OpenInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OpenInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOpenInfo(od);
    });
  });

  unittest.group('obj-schema-PhoneNumbers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhoneNumbers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhoneNumbers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhoneNumbers(od);
    });
  });

  unittest.group('obj-schema-PlaceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PlaceInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlaceInfo(od);
    });
  });

  unittest.group('obj-schema-Places', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaces();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Places.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPlaces(od);
    });
  });

  unittest.group('obj-schema-PostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostalAddress(od);
    });
  });

  unittest.group('obj-schema-Profile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Profile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProfile(od);
    });
  });

  unittest.group('obj-schema-RelationshipData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelationshipData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelationshipData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelationshipData(od);
    });
  });

  unittest.group('obj-schema-RelevantLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelevantLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RelevantLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRelevantLocation(od);
    });
  });

  unittest.group('obj-schema-RepeatedEnumAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepeatedEnumAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepeatedEnumAttributeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRepeatedEnumAttributeValue(od);
    });
  });

  unittest.group('obj-schema-SearchChainsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchChainsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchChainsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchChainsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchGoogleLocationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchGoogleLocationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchGoogleLocationsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchGoogleLocationsRequest(od);
    });
  });

  unittest.group('obj-schema-SearchGoogleLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchGoogleLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchGoogleLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchGoogleLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ServiceAreaBusiness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAreaBusiness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAreaBusiness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAreaBusiness(od);
    });
  });

  unittest.group('obj-schema-ServiceItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceItem(od);
    });
  });

  unittest.group('obj-schema-ServiceType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceType(od);
    });
  });

  unittest.group('obj-schema-SpecialHourPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecialHourPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpecialHourPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpecialHourPeriod(od);
    });
  });

  unittest.group('obj-schema-SpecialHours', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecialHours();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpecialHours.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpecialHours(od);
    });
  });

  unittest.group('obj-schema-StructuredServiceItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredServiceItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredServiceItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredServiceItem(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-TimePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimePeriod.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimePeriod(od);
    });
  });

  unittest.group('obj-schema-UriAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUriAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UriAttributeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUriAttributeValue(od);
    });
  });

  unittest.group('resource-AccountsLocationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).accounts.locations;
      final arg_request = buildLocation();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Location.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLocation(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).accounts.locations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_readMask = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          readMask: arg_readMask,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });
  });

  unittest.group('resource-AttributesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).attributes;
      final arg_categoryName = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_regionCode = 'foo';
      final arg_showAll = true;
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/attributes'),
        );
        pathOffset += 13;

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
          queryMap['categoryName']!.first,
          unittest.equals(arg_categoryName),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['showAll']!.first,
          unittest.equals('$arg_showAll'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAttributeMetadataResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          categoryName: arg_categoryName,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          regionCode: arg_regionCode,
          showAll: arg_showAll,
          $fields: arg_$fields);
      checkListAttributeMetadataResponse(
          response as api.ListAttributeMetadataResponse);
    });
  });

  unittest.group('resource-CategoriesResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).categories;
      final arg_languageCode = 'foo';
      final arg_names = buildUnnamed28();
      final arg_regionCode = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('v1/categories:batchGet'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetCategoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          languageCode: arg_languageCode,
          names: arg_names,
          regionCode: arg_regionCode,
          view: arg_view,
          $fields: arg_$fields);
      checkBatchGetCategoriesResponse(
          response as api.BatchGetCategoriesResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).categories;
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_regionCode = 'foo';
      final arg_view = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/categories'),
        );
        pathOffset += 13;

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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCategoriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          regionCode: arg_regionCode,
          view: arg_view,
          $fields: arg_$fields);
      checkListCategoriesResponse(response as api.ListCategoriesResponse);
    });
  });

  unittest.group('resource-ChainsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).chains;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildChain());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkChain(response as api.Chain);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).chains;
      final arg_chainName = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/chains:search'),
        );
        pathOffset += 16;

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
          queryMap['chainName']!.first,
          unittest.equals(arg_chainName),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchChainsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          chainName: arg_chainName,
          pageSize: arg_pageSize,
          $fields: arg_$fields);
      checkSearchChainsResponse(response as api.SearchChainsResponse);
    });
  });

  unittest.group('resource-GoogleLocationsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).googleLocations;
      final arg_request = buildSearchGoogleLocationsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SearchGoogleLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSearchGoogleLocationsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/googleLocations:search'),
        );
        pathOffset += 25;

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
        final resp = convert.json.encode(buildSearchGoogleLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkSearchGoogleLocationsResponse(
          response as api.SearchGoogleLocationsResponse);
    });
  });

  unittest.group('resource-LocationsResource', () {
    unittest.test('method--associate', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_request = buildAssociateLocationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AssociateLocationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAssociateLocationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.associate(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--clearLocationAssociation', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_request = buildClearLocationAssociationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClearLocationAssociationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClearLocationAssociationRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.clearLocationAssociation(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, readMask: arg_readMask, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getAttributes', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildAttributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAttributes(arg_name, $fields: arg_$fields);
      checkAttributes(response as api.Attributes);
    });

    unittest.test('method--getGoogleUpdated', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleUpdatedLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getGoogleUpdated(arg_name,
          readMask: arg_readMask, $fields: arg_$fields);
      checkGoogleUpdatedLocation(response as api.GoogleUpdatedLocation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_request = buildLocation();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Location.fromJson(json as core.Map<core.String, core.dynamic>);
        checkLocation(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--updateAttributes', () async {
      final mock = HttpServerMock();
      final res = api.MyBusinessBusinessInformationApi(mock).locations;
      final arg_request = buildAttributes();
      final arg_name = 'foo';
      final arg_attributeMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Attributes.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAttributes(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['attributeMask']!.first,
          unittest.equals(arg_attributeMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAttributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateAttributes(arg_request, arg_name,
          attributeMask: arg_attributeMask, $fields: arg_$fields);
      checkAttributes(response as api.Attributes);
    });
  });

  unittest.group('resource-LocationsAttributesResource', () {
    unittest.test('method--getGoogleUpdated', () async {
      final mock = HttpServerMock();
      final res =
          api.MyBusinessBusinessInformationApi(mock).locations.attributes;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        final resp = convert.json.encode(buildAttributes());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getGoogleUpdated(arg_name, $fields: arg_$fields);
      checkAttributes(response as api.Attributes);
    });
  });
}
