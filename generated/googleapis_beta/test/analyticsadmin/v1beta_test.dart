// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis_beta/analyticsadmin/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAnalyticsAdminV1betaAccount = 0;
api.GoogleAnalyticsAdminV1betaAccount buildGoogleAnalyticsAdminV1betaAccount() {
  final o = api.GoogleAnalyticsAdminV1betaAccount();
  buildCounterGoogleAnalyticsAdminV1betaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccount < 3) {
    o.createTime = 'foo';
    o.deleted = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAccount--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccount(
    api.GoogleAnalyticsAdminV1betaAccount o) {
  buildCounterGoogleAnalyticsAdminV1betaAccount++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccount < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAccount--;
}

core.List<api.GoogleAnalyticsAdminV1betaPropertySummary> buildUnnamed0() => [
      buildGoogleAnalyticsAdminV1betaPropertySummary(),
      buildGoogleAnalyticsAdminV1betaPropertySummary(),
    ];

void checkUnnamed0(core.List<api.GoogleAnalyticsAdminV1betaPropertySummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaPropertySummary(o[0]);
  checkGoogleAnalyticsAdminV1betaPropertySummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaAccountSummary = 0;
api.GoogleAnalyticsAdminV1betaAccountSummary
    buildGoogleAnalyticsAdminV1betaAccountSummary() {
  final o = api.GoogleAnalyticsAdminV1betaAccountSummary();
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccountSummary < 3) {
    o.account = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.propertySummaries = buildUnnamed0();
  }
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAccountSummary(
    api.GoogleAnalyticsAdminV1betaAccountSummary o) {
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaAccountSummary < 3) {
    unittest.expect(
      o.account!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.propertySummaries!);
  }
  buildCounterGoogleAnalyticsAdminV1betaAccountSummary--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest =
    0;
api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
    buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest() {
  final o =
      api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest <
      3) {
    o.acknowledgement = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(
    api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest <
      3) {
    unittest.expect(
      o.acknowledgement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse =
    0;
api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
    buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse() {
  final o =
      api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse();
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(
    api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest =
    0;
api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
    buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest() {
  final o = api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(
    api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest <
      3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest = 0;
api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
    buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest() {
  final o = api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(
    api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest < 3) {}
  buildCounterGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange = 0;
api.GoogleAnalyticsAdminV1betaChangeHistoryChange
    buildGoogleAnalyticsAdminV1betaChangeHistoryChange() {
  final o = api.GoogleAnalyticsAdminV1betaChangeHistoryChange();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange < 3) {
    o.action = 'foo';
    o.resource = 'foo';
    o.resourceAfterChange =
        buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
    o.resourceBeforeChange =
        buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryChange(
    api.GoogleAnalyticsAdminV1betaChangeHistoryChange o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
        o.resourceAfterChange!);
    checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
        o.resourceBeforeChange!);
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChange--;
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource =
    0;
api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
    buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource() {
  final o =
      api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource <
      3) {
    o.account = buildGoogleAnalyticsAdminV1betaAccount();
    o.conversionEvent = buildGoogleAnalyticsAdminV1betaConversionEvent();
    o.dataRetentionSettings =
        buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
    o.dataStream = buildGoogleAnalyticsAdminV1betaDataStream();
    o.firebaseLink = buildGoogleAnalyticsAdminV1betaFirebaseLink();
    o.googleAdsLink = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
    o.measurementProtocolSecret =
        buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
    o.property = buildGoogleAnalyticsAdminV1betaProperty();
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
    api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource <
      3) {
    checkGoogleAnalyticsAdminV1betaAccount(o.account!);
    checkGoogleAnalyticsAdminV1betaConversionEvent(o.conversionEvent!);
    checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
        o.dataRetentionSettings!);
    checkGoogleAnalyticsAdminV1betaDataStream(o.dataStream!);
    checkGoogleAnalyticsAdminV1betaFirebaseLink(o.firebaseLink!);
    checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o.googleAdsLink!);
    checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
        o.measurementProtocolSecret!);
    checkGoogleAnalyticsAdminV1betaProperty(o.property!);
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource--;
}

core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryChange> buildUnnamed1() =>
    [
      buildGoogleAnalyticsAdminV1betaChangeHistoryChange(),
      buildGoogleAnalyticsAdminV1betaChangeHistoryChange(),
    ];

void checkUnnamed1(
    core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaChangeHistoryChange(o[0]);
  checkGoogleAnalyticsAdminV1betaChangeHistoryChange(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent = 0;
api.GoogleAnalyticsAdminV1betaChangeHistoryEvent
    buildGoogleAnalyticsAdminV1betaChangeHistoryEvent() {
  final o = api.GoogleAnalyticsAdminV1betaChangeHistoryEvent();
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent < 3) {
    o.actorType = 'foo';
    o.changeTime = 'foo';
    o.changes = buildUnnamed1();
    o.changesFiltered = true;
    o.id = 'foo';
    o.userActorEmail = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(
    api.GoogleAnalyticsAdminV1betaChangeHistoryEvent o) {
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent < 3) {
    unittest.expect(
      o.actorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeTime!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.changes!);
    unittest.expect(o.changesFiltered!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userActorEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaChangeHistoryEvent--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaConversionEvent = 0;
api.GoogleAnalyticsAdminV1betaConversionEvent
    buildGoogleAnalyticsAdminV1betaConversionEvent() {
  final o = api.GoogleAnalyticsAdminV1betaConversionEvent();
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEvent < 3) {
    o.createTime = 'foo';
    o.custom = true;
    o.deletable = true;
    o.eventName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaConversionEvent(
    api.GoogleAnalyticsAdminV1betaConversionEvent o) {
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent++;
  if (buildCounterGoogleAnalyticsAdminV1betaConversionEvent < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.custom!, unittest.isTrue);
    unittest.expect(o.deletable!, unittest.isTrue);
    unittest.expect(
      o.eventName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaConversionEvent--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaCustomDimension = 0;
api.GoogleAnalyticsAdminV1betaCustomDimension
    buildGoogleAnalyticsAdminV1betaCustomDimension() {
  final o = api.GoogleAnalyticsAdminV1betaCustomDimension();
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomDimension < 3) {
    o.description = 'foo';
    o.disallowAdsPersonalization = true;
    o.displayName = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaCustomDimension(
    api.GoogleAnalyticsAdminV1betaCustomDimension o) {
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomDimension < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disallowAdsPersonalization!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomDimension--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleAnalyticsAdminV1betaCustomMetric = 0;
api.GoogleAnalyticsAdminV1betaCustomMetric
    buildGoogleAnalyticsAdminV1betaCustomMetric() {
  final o = api.GoogleAnalyticsAdminV1betaCustomMetric();
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomMetric < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.measurementUnit = 'foo';
    o.name = 'foo';
    o.parameterName = 'foo';
    o.restrictedMetricType = buildUnnamed2();
    o.scope = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaCustomMetric(
    api.GoogleAnalyticsAdminV1betaCustomMetric o) {
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric++;
  if (buildCounterGoogleAnalyticsAdminV1betaCustomMetric < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameterName!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.restrictedMetricType!);
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaCustomMetric--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings = 0;
api.GoogleAnalyticsAdminV1betaDataRetentionSettings
    buildGoogleAnalyticsAdminV1betaDataRetentionSettings() {
  final o = api.GoogleAnalyticsAdminV1betaDataRetentionSettings();
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings < 3) {
    o.eventDataRetention = 'foo';
    o.name = 'foo';
    o.resetUserDataOnNewActivity = true;
  }
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
    api.GoogleAnalyticsAdminV1betaDataRetentionSettings o) {
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings < 3) {
    unittest.expect(
      o.eventDataRetention!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resetUserDataOnNewActivity!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataRetentionSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings = 0;
api.GoogleAnalyticsAdminV1betaDataSharingSettings
    buildGoogleAnalyticsAdminV1betaDataSharingSettings() {
  final o = api.GoogleAnalyticsAdminV1betaDataSharingSettings();
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings < 3) {
    o.name = 'foo';
    o.sharingWithGoogleAnySalesEnabled = true;
    o.sharingWithGoogleAssignedSalesEnabled = true;
    o.sharingWithGoogleProductsEnabled = true;
    o.sharingWithGoogleSupportEnabled = true;
    o.sharingWithOthersEnabled = true;
  }
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataSharingSettings(
    api.GoogleAnalyticsAdminV1betaDataSharingSettings o) {
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.sharingWithGoogleAnySalesEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleAssignedSalesEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleProductsEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithGoogleSupportEnabled!, unittest.isTrue);
    unittest.expect(o.sharingWithOthersEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataSharingSettings--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStream = 0;
api.GoogleAnalyticsAdminV1betaDataStream
    buildGoogleAnalyticsAdminV1betaDataStream() {
  final o = api.GoogleAnalyticsAdminV1betaDataStream();
  buildCounterGoogleAnalyticsAdminV1betaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStream < 3) {
    o.androidAppStreamData =
        buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.iosAppStreamData =
        buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
    o.name = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.webStreamData = buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData();
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStream--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStream(
    api.GoogleAnalyticsAdminV1betaDataStream o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStream++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStream < 3) {
    checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(
        o.androidAppStreamData!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(
        o.iosAppStreamData!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(o.webStreamData!);
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStream--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData =
    0;
api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData <
      3) {
    o.firebaseAppId = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData <
      3) {
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData = 0;
api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData < 3) {
    o.bundleId = 'foo';
    o.firebaseAppId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData = 0;
api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData
    buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData() {
  final o = api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData();
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData < 3) {
    o.defaultUri = 'foo';
    o.firebaseAppId = 'foo';
    o.measurementId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(
    api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData o) {
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData++;
  if (buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData < 3) {
    unittest.expect(
      o.defaultUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.measurementId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaDataStreamWebStreamData--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaFirebaseLink = 0;
api.GoogleAnalyticsAdminV1betaFirebaseLink
    buildGoogleAnalyticsAdminV1betaFirebaseLink() {
  final o = api.GoogleAnalyticsAdminV1betaFirebaseLink();
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaFirebaseLink < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
    o.project = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaFirebaseLink(
    api.GoogleAnalyticsAdminV1betaFirebaseLink o) {
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaFirebaseLink < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaFirebaseLink--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink = 0;
api.GoogleAnalyticsAdminV1betaGoogleAdsLink
    buildGoogleAnalyticsAdminV1betaGoogleAdsLink() {
  final o = api.GoogleAnalyticsAdminV1betaGoogleAdsLink();
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink < 3) {
    o.adsPersonalizationEnabled = true;
    o.canManageClients = true;
    o.createTime = 'foo';
    o.creatorEmailAddress = 'foo';
    o.customerId = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
    api.GoogleAnalyticsAdminV1betaGoogleAdsLink o) {
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink++;
  if (buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink < 3) {
    unittest.expect(o.adsPersonalizationEnabled!, unittest.isTrue);
    unittest.expect(o.canManageClients!, unittest.isTrue);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorEmailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaGoogleAdsLink--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccountSummary> buildUnnamed3() => [
      buildGoogleAnalyticsAdminV1betaAccountSummary(),
      buildGoogleAnalyticsAdminV1betaAccountSummary(),
    ];

void checkUnnamed3(core.List<api.GoogleAnalyticsAdminV1betaAccountSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccountSummary(o[0]);
  checkGoogleAnalyticsAdminV1betaAccountSummary(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse = 0;
api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse
    buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse();
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse < 3) {
    o.accountSummaries = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(
    api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse < 3) {
    checkUnnamed3(o.accountSummaries!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountSummariesResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaAccount> buildUnnamed4() => [
      buildGoogleAnalyticsAdminV1betaAccount(),
      buildGoogleAnalyticsAdminV1betaAccount(),
    ];

void checkUnnamed4(core.List<api.GoogleAnalyticsAdminV1betaAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaAccount(o[0]);
  checkGoogleAnalyticsAdminV1betaAccount(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse = 0;
api.GoogleAnalyticsAdminV1betaListAccountsResponse
    buildGoogleAnalyticsAdminV1betaListAccountsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListAccountsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse < 3) {
    o.accounts = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListAccountsResponse(
    api.GoogleAnalyticsAdminV1betaListAccountsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse < 3) {
    checkUnnamed4(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListAccountsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaConversionEvent> buildUnnamed5() => [
      buildGoogleAnalyticsAdminV1betaConversionEvent(),
      buildGoogleAnalyticsAdminV1betaConversionEvent(),
    ];

void checkUnnamed5(core.List<api.GoogleAnalyticsAdminV1betaConversionEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaConversionEvent(o[0]);
  checkGoogleAnalyticsAdminV1betaConversionEvent(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse = 0;
api.GoogleAnalyticsAdminV1betaListConversionEventsResponse
    buildGoogleAnalyticsAdminV1betaListConversionEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListConversionEventsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse < 3) {
    o.conversionEvents = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(
    api.GoogleAnalyticsAdminV1betaListConversionEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse < 3) {
    checkUnnamed5(o.conversionEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListConversionEventsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaCustomDimension> buildUnnamed6() => [
      buildGoogleAnalyticsAdminV1betaCustomDimension(),
      buildGoogleAnalyticsAdminV1betaCustomDimension(),
    ];

void checkUnnamed6(core.List<api.GoogleAnalyticsAdminV1betaCustomDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaCustomDimension(o[0]);
  checkGoogleAnalyticsAdminV1betaCustomDimension(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse = 0;
api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
    buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse < 3) {
    o.customDimensions = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(
    api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse < 3) {
    checkUnnamed6(o.customDimensions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomDimensionsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaCustomMetric> buildUnnamed7() => [
      buildGoogleAnalyticsAdminV1betaCustomMetric(),
      buildGoogleAnalyticsAdminV1betaCustomMetric(),
    ];

void checkUnnamed7(core.List<api.GoogleAnalyticsAdminV1betaCustomMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaCustomMetric(o[0]);
  checkGoogleAnalyticsAdminV1betaCustomMetric(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse = 0;
api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse
    buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse < 3) {
    o.customMetrics = buildUnnamed7();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(
    api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse < 3) {
    checkUnnamed7(o.customMetrics!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListCustomMetricsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaDataStream> buildUnnamed8() => [
      buildGoogleAnalyticsAdminV1betaDataStream(),
      buildGoogleAnalyticsAdminV1betaDataStream(),
    ];

void checkUnnamed8(core.List<api.GoogleAnalyticsAdminV1betaDataStream> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaDataStream(o[0]);
  checkGoogleAnalyticsAdminV1betaDataStream(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse = 0;
api.GoogleAnalyticsAdminV1betaListDataStreamsResponse
    buildGoogleAnalyticsAdminV1betaListDataStreamsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListDataStreamsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse < 3) {
    o.dataStreams = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(
    api.GoogleAnalyticsAdminV1betaListDataStreamsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse < 3) {
    checkUnnamed8(o.dataStreams!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListDataStreamsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaFirebaseLink> buildUnnamed9() => [
      buildGoogleAnalyticsAdminV1betaFirebaseLink(),
      buildGoogleAnalyticsAdminV1betaFirebaseLink(),
    ];

void checkUnnamed9(core.List<api.GoogleAnalyticsAdminV1betaFirebaseLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaFirebaseLink(o[0]);
  checkGoogleAnalyticsAdminV1betaFirebaseLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse = 0;
api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
    buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse();
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse < 3) {
    o.firebaseLinks = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(
    api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse < 3) {
    checkUnnamed9(o.firebaseLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListFirebaseLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaGoogleAdsLink> buildUnnamed10() => [
      buildGoogleAnalyticsAdminV1betaGoogleAdsLink(),
      buildGoogleAnalyticsAdminV1betaGoogleAdsLink(),
    ];

void checkUnnamed10(core.List<api.GoogleAnalyticsAdminV1betaGoogleAdsLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o[0]);
  checkGoogleAnalyticsAdminV1betaGoogleAdsLink(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse = 0;
api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
    buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse();
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse < 3) {
    o.googleAdsLinks = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(
    api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse < 3) {
    checkUnnamed10(o.googleAdsLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret>
    buildUnnamed11() => [
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(),
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(),
        ];

void checkUnnamed11(
    core.List<api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(o[0]);
  checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse =
    0;
api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
    buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse() {
  final o =
      api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse();
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse <
      3) {
    o.measurementProtocolSecrets = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(
    api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse <
      3) {
    checkUnnamed11(o.measurementProtocolSecrets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse--;
}

core.List<api.GoogleAnalyticsAdminV1betaProperty> buildUnnamed12() => [
      buildGoogleAnalyticsAdminV1betaProperty(),
      buildGoogleAnalyticsAdminV1betaProperty(),
    ];

void checkUnnamed12(core.List<api.GoogleAnalyticsAdminV1betaProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaProperty(o[0]);
  checkGoogleAnalyticsAdminV1betaProperty(o[1]);
}

core.int buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse = 0;
api.GoogleAnalyticsAdminV1betaListPropertiesResponse
    buildGoogleAnalyticsAdminV1betaListPropertiesResponse() {
  final o = api.GoogleAnalyticsAdminV1betaListPropertiesResponse();
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse < 3) {
    o.nextPageToken = 'foo';
    o.properties = buildUnnamed12();
  }
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaListPropertiesResponse(
    api.GoogleAnalyticsAdminV1betaListPropertiesResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.properties!);
  }
  buildCounterGoogleAnalyticsAdminV1betaListPropertiesResponse--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret = 0;
api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
    buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret() {
  final o = api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.secretValue = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
    api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret o) {
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret++;
  if (buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secretValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaMeasurementProtocolSecret--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProperty = 0;
api.GoogleAnalyticsAdminV1betaProperty
    buildGoogleAnalyticsAdminV1betaProperty() {
  final o = api.GoogleAnalyticsAdminV1betaProperty();
  buildCounterGoogleAnalyticsAdminV1betaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1betaProperty < 3) {
    o.account = 'foo';
    o.createTime = 'foo';
    o.currencyCode = 'foo';
    o.deleteTime = 'foo';
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.industryCategory = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.propertyType = 'foo';
    o.serviceLevel = 'foo';
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProperty--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProperty(
    api.GoogleAnalyticsAdminV1betaProperty o) {
  buildCounterGoogleAnalyticsAdminV1betaProperty++;
  if (buildCounterGoogleAnalyticsAdminV1betaProperty < 3) {
    unittest.expect(
      o.account!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.industryCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProperty--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaPropertySummary = 0;
api.GoogleAnalyticsAdminV1betaPropertySummary
    buildGoogleAnalyticsAdminV1betaPropertySummary() {
  final o = api.GoogleAnalyticsAdminV1betaPropertySummary();
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaPropertySummary < 3) {
    o.displayName = 'foo';
    o.parent = 'foo';
    o.property = 'foo';
    o.propertyType = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaPropertySummary(
    api.GoogleAnalyticsAdminV1betaPropertySummary o) {
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary++;
  if (buildCounterGoogleAnalyticsAdminV1betaPropertySummary < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaPropertySummary--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest =
    0;
api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
    buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest() {
  final o = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest < 3) {
    o.account = buildGoogleAnalyticsAdminV1betaAccount();
    o.redirectUri = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(
    api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest < 3) {
    checkGoogleAnalyticsAdminV1betaAccount(o.account!);
    unittest.expect(
      o.redirectUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest--;
}

core.int buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse =
    0;
api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
    buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse() {
  final o = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse();
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse <
      3) {
    o.accountTicketId = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(
    api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse <
      3) {
    unittest.expect(
      o.accountTicketId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int
    buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest = 0;
api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
    buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest() {
  final o = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest <
      3) {
    o.action = buildUnnamed13();
    o.actorEmail = buildUnnamed14();
    o.earliestChangeTime = 'foo';
    o.latestChangeTime = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.property = 'foo';
    o.resourceType = buildUnnamed15();
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(
    api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest o) {
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest <
      3) {
    checkUnnamed13(o.action!);
    checkUnnamed14(o.actorEmail!);
    unittest.expect(
      o.earliestChangeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestChangeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.property!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.resourceType!);
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest--;
}

core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryEvent> buildUnnamed16() =>
    [
      buildGoogleAnalyticsAdminV1betaChangeHistoryEvent(),
      buildGoogleAnalyticsAdminV1betaChangeHistoryEvent(),
    ];

void checkUnnamed16(
    core.List<api.GoogleAnalyticsAdminV1betaChangeHistoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(o[0]);
  checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(o[1]);
}

core.int
    buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse = 0;
api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
    buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse() {
  final o = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse();
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse <
      3) {
    o.changeHistoryEvents = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse--;
  return o;
}

void checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(
    api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse o) {
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse++;
  if (buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse <
      3) {
    checkUnnamed16(o.changeHistoryEvents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

void main() {
  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaAccountSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaAccountSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaAccountSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAccountSummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryChange',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaChangeHistoryChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaChangeHistoryChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryChange(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource(
          od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaChangeHistoryEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaChangeHistoryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaChangeHistoryEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaChangeHistoryEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaConversionEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaConversionEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaConversionEvent(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaCustomDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaCustomDimension(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaCustomMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaCustomMetric(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataRetentionSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataSharingSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataSharingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataSharingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataSharingSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataStream', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStream();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStream(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamIosAppStreamData(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaDataStreamWebStreamData',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaDataStreamWebStreamData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaDataStreamWebStreamData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaDataStreamWebStreamData(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaFirebaseLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaFirebaseLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaFirebaseLink(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaGoogleAdsLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListAccountSummariesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListAccountsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListAccountsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListConversionEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListConversionEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListConversionEventsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListCustomDimensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListCustomMetricsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListDataStreamsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListDataStreamsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListDataStreamsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListFirebaseLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaListPropertiesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaListPropertiesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaListPropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaListPropertiesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaMeasurementProtocolSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProperty(od);
    });
  });

  unittest.group('obj-schema-GoogleAnalyticsAdminV1betaPropertySummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaPropertySummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaPropertySummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaPropertySummary(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-AccountSummariesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accountSummaries;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1beta/accountSummaries'),
        );
        pathOffset += 23;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListAccountSummariesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListAccountSummariesResponse(response
          as api.GoogleAnalyticsAdminV1betaListAccountSummariesResponse);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAccount(
          response as api.GoogleAnalyticsAdminV1betaAccount);
    });

    unittest.test('method--getDataSharingSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataSharingSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataSharingSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataSharingSettings(
          response as api.GoogleAnalyticsAdminV1betaDataSharingSettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1beta/accounts'),
        );
        pathOffset += 15;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListAccountsResponse(
          response as api.GoogleAnalyticsAdminV1betaListAccountsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request = buildGoogleAnalyticsAdminV1betaAccount();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaAccount(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAccount(
          response as api.GoogleAnalyticsAdminV1betaAccount);
    });

    unittest.test('method--provisionAccountTicket', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProvisionAccountTicketRequest(obj);

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
          path.substring(pathOffset, pathOffset + 38),
          unittest.equals('v1beta/accounts:provisionAccountTicket'),
        );
        pathOffset += 38;

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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionAccountTicket(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProvisionAccountTicketResponse(response
          as api.GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse);
    });

    unittest.test('method--searchChangeHistoryEvents', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).accounts;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchChangeHistoryEvents(
          arg_request, arg_account,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse(response
          as api.GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse);
    });
  });

  unittest.group('resource-PropertiesResource', () {
    unittest.test('method--acknowledgeUserDataCollection', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest();
      final arg_property = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.acknowledgeUserDataCollection(
          arg_request, arg_property,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse(
          response as api
              .GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1betaProperty();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1beta/properties'),
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--getDataRetentionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getDataRetentionSettings(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1betaDataRetentionSettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1beta/properties'),
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
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListPropertiesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListPropertiesResponse(
          response as api.GoogleAnalyticsAdminV1betaListPropertiesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request = buildGoogleAnalyticsAdminV1betaProperty();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaProperty.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaProperty(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaProperty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaProperty(
          response as api.GoogleAnalyticsAdminV1betaProperty);
    });

    unittest.test('method--updateDataRetentionSettings', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaDataRetentionSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaDataRetentionSettings.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataRetentionSettings(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaDataRetentionSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateDataRetentionSettings(
          arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataRetentionSettings(
          response as api.GoogleAnalyticsAdminV1betaDataRetentionSettings);
    });
  });

  unittest.group('resource-PropertiesConversionEventsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_request = buildGoogleAnalyticsAdminV1betaConversionEvent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaConversionEvent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaConversionEvent(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaConversionEvent(
          response as api.GoogleAnalyticsAdminV1betaConversionEvent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaConversionEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaConversionEvent(
          response as api.GoogleAnalyticsAdminV1betaConversionEvent);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.conversionEvents;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListConversionEventsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListConversionEventsResponse(response
          as api.GoogleAnalyticsAdminV1betaListConversionEventsResponse);
    });
  });

  unittest.group('resource-PropertiesCustomDimensionsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.archive(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListCustomDimensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListCustomDimensionsResponse(response
          as api.GoogleAnalyticsAdminV1betaListCustomDimensionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customDimensions;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomDimension();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomDimension.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomDimension(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaCustomDimension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomDimension(
          response as api.GoogleAnalyticsAdminV1betaCustomDimension);
    });
  });

  unittest.group('resource-PropertiesCustomMetricsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaArchiveCustomMetricRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.archive(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListCustomMetricsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListCustomMetricsResponse(
          response as api.GoogleAnalyticsAdminV1betaListCustomMetricsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.customMetrics;
      final arg_request = buildGoogleAnalyticsAdminV1betaCustomMetric();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaCustomMetric.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaCustomMetric(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaCustomMetric());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaCustomMetric(
          response as api.GoogleAnalyticsAdminV1betaCustomMetric);
    });
  });

  unittest.group('resource-PropertiesDataStreamsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1betaDataStream();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListDataStreamsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListDataStreamsResponse(
          response as api.GoogleAnalyticsAdminV1betaListDataStreamsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.dataStreams;
      final arg_request = buildGoogleAnalyticsAdminV1betaDataStream();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaDataStream.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaDataStream(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaDataStream());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaDataStream(
          response as api.GoogleAnalyticsAdminV1betaDataStream);
    });
  });

  unittest.group(
      'resource-PropertiesDataStreamsMeasurementProtocolSecretsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse(
          response as api
              .GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock)
          .properties
          .dataStreams
          .measurementProtocolSecrets;
      final arg_request =
          buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaMeasurementProtocolSecret());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaMeasurementProtocolSecret(
          response as api.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret);
    });
  });

  unittest.group('resource-PropertiesFirebaseLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaFirebaseLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaFirebaseLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaFirebaseLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaFirebaseLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaFirebaseLink(
          response as api.GoogleAnalyticsAdminV1betaFirebaseLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.firebaseLinks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAnalyticsAdminV1betaListFirebaseLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListFirebaseLinksResponse(
          response as api.GoogleAnalyticsAdminV1betaListFirebaseLinksResponse);
    });
  });

  unittest.group('resource-PropertiesGoogleAdsLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1betaGoogleAdsLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse(
          response as api.GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.GoogleAnalyticsAdminApi(mock).properties.googleAdsLinks;
      final arg_request = buildGoogleAnalyticsAdminV1betaGoogleAdsLink();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAnalyticsAdminV1betaGoogleAdsLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAnalyticsAdminV1betaGoogleAdsLink(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAnalyticsAdminV1betaGoogleAdsLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleAnalyticsAdminV1betaGoogleAdsLink(
          response as api.GoogleAnalyticsAdminV1betaGoogleAdsLink);
    });
  });
}
