// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/dlp/v2.dart' as api;

import '../test_shared.dart';

core.int buildCounterGooglePrivacyDlpV2Action = 0;
api.GooglePrivacyDlpV2Action buildGooglePrivacyDlpV2Action() {
  var o = api.GooglePrivacyDlpV2Action();
  buildCounterGooglePrivacyDlpV2Action++;
  if (buildCounterGooglePrivacyDlpV2Action < 3) {
    o.jobNotificationEmails = buildGooglePrivacyDlpV2JobNotificationEmails();
    o.pubSub = buildGooglePrivacyDlpV2PublishToPubSub();
    o.publishFindingsToCloudDataCatalog =
        buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
    o.publishSummaryToCscc = buildGooglePrivacyDlpV2PublishSummaryToCscc();
    o.publishToStackdriver = buildGooglePrivacyDlpV2PublishToStackdriver();
    o.saveFindings = buildGooglePrivacyDlpV2SaveFindings();
  }
  buildCounterGooglePrivacyDlpV2Action--;
  return o;
}

void checkGooglePrivacyDlpV2Action(api.GooglePrivacyDlpV2Action o) {
  buildCounterGooglePrivacyDlpV2Action++;
  if (buildCounterGooglePrivacyDlpV2Action < 3) {
    checkGooglePrivacyDlpV2JobNotificationEmails(
        o.jobNotificationEmails as api.GooglePrivacyDlpV2JobNotificationEmails);
    checkGooglePrivacyDlpV2PublishToPubSub(
        o.pubSub as api.GooglePrivacyDlpV2PublishToPubSub);
    checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
        o.publishFindingsToCloudDataCatalog
            as api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog);
    checkGooglePrivacyDlpV2PublishSummaryToCscc(
        o.publishSummaryToCscc as api.GooglePrivacyDlpV2PublishSummaryToCscc);
    checkGooglePrivacyDlpV2PublishToStackdriver(
        o.publishToStackdriver as api.GooglePrivacyDlpV2PublishToStackdriver);
    checkGooglePrivacyDlpV2SaveFindings(
        o.saveFindings as api.GooglePrivacyDlpV2SaveFindings);
  }
  buildCounterGooglePrivacyDlpV2Action--;
}

core.int buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2ActivateJobTriggerRequest
    buildGooglePrivacyDlpV2ActivateJobTriggerRequest() {
  var o = api.GooglePrivacyDlpV2ActivateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest < 3) {}
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest--;
  return o;
}

void checkGooglePrivacyDlpV2ActivateJobTriggerRequest(
    api.GooglePrivacyDlpV2ActivateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest < 3) {}
  buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails = 0;
api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails
    buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails() {
  var o = api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails < 3) {
    o.categoricalStatsResult = buildGooglePrivacyDlpV2CategoricalStatsResult();
    o.deltaPresenceEstimationResult =
        buildGooglePrivacyDlpV2DeltaPresenceEstimationResult();
    o.kAnonymityResult = buildGooglePrivacyDlpV2KAnonymityResult();
    o.kMapEstimationResult = buildGooglePrivacyDlpV2KMapEstimationResult();
    o.lDiversityResult = buildGooglePrivacyDlpV2LDiversityResult();
    o.numericalStatsResult = buildGooglePrivacyDlpV2NumericalStatsResult();
    o.requestedOptions = buildGooglePrivacyDlpV2RequestedRiskAnalysisOptions();
    o.requestedPrivacyMetric = buildGooglePrivacyDlpV2PrivacyMetric();
    o.requestedSourceTable = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails--;
  return o;
}

void checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(
    api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails o) {
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails++;
  if (buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails < 3) {
    checkGooglePrivacyDlpV2CategoricalStatsResult(o.categoricalStatsResult
        as api.GooglePrivacyDlpV2CategoricalStatsResult);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
        o.deltaPresenceEstimationResult
            as api.GooglePrivacyDlpV2DeltaPresenceEstimationResult);
    checkGooglePrivacyDlpV2KAnonymityResult(
        o.kAnonymityResult as api.GooglePrivacyDlpV2KAnonymityResult);
    checkGooglePrivacyDlpV2KMapEstimationResult(
        o.kMapEstimationResult as api.GooglePrivacyDlpV2KMapEstimationResult);
    checkGooglePrivacyDlpV2LDiversityResult(
        o.lDiversityResult as api.GooglePrivacyDlpV2LDiversityResult);
    checkGooglePrivacyDlpV2NumericalStatsResult(
        o.numericalStatsResult as api.GooglePrivacyDlpV2NumericalStatsResult);
    checkGooglePrivacyDlpV2RequestedRiskAnalysisOptions(o.requestedOptions
        as api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions);
    checkGooglePrivacyDlpV2PrivacyMetric(
        o.requestedPrivacyMetric as api.GooglePrivacyDlpV2PrivacyMetric);
    checkGooglePrivacyDlpV2BigQueryTable(
        o.requestedSourceTable as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails--;
}

core.List<api.GooglePrivacyDlpV2QuasiIdField> buildUnnamed2877() {
  var o = <api.GooglePrivacyDlpV2QuasiIdField>[];
  o.add(buildGooglePrivacyDlpV2QuasiIdField());
  o.add(buildGooglePrivacyDlpV2QuasiIdField());
  return o;
}

void checkUnnamed2877(core.List<api.GooglePrivacyDlpV2QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdField(
      o[0] as api.GooglePrivacyDlpV2QuasiIdField);
  checkGooglePrivacyDlpV2QuasiIdField(
      o[1] as api.GooglePrivacyDlpV2QuasiIdField);
}

core.int buildCounterGooglePrivacyDlpV2AuxiliaryTable = 0;
api.GooglePrivacyDlpV2AuxiliaryTable buildGooglePrivacyDlpV2AuxiliaryTable() {
  var o = api.GooglePrivacyDlpV2AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed2877();
    o.relativeFrequency = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2AuxiliaryTable--;
  return o;
}

void checkGooglePrivacyDlpV2AuxiliaryTable(
    api.GooglePrivacyDlpV2AuxiliaryTable o) {
  buildCounterGooglePrivacyDlpV2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2AuxiliaryTable < 3) {
    checkUnnamed2877(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(
        o.relativeFrequency as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2BigQueryTable(
        o.table as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2AuxiliaryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryField = 0;
api.GooglePrivacyDlpV2BigQueryField buildGooglePrivacyDlpV2BigQueryField() {
  var o = api.GooglePrivacyDlpV2BigQueryField();
  buildCounterGooglePrivacyDlpV2BigQueryField++;
  if (buildCounterGooglePrivacyDlpV2BigQueryField < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryField--;
  return o;
}

void checkGooglePrivacyDlpV2BigQueryField(
    api.GooglePrivacyDlpV2BigQueryField o) {
  buildCounterGooglePrivacyDlpV2BigQueryField++;
  if (buildCounterGooglePrivacyDlpV2BigQueryField < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2BigQueryTable(
        o.table as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2BigQueryField--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryKey = 0;
api.GooglePrivacyDlpV2BigQueryKey buildGooglePrivacyDlpV2BigQueryKey() {
  var o = api.GooglePrivacyDlpV2BigQueryKey();
  buildCounterGooglePrivacyDlpV2BigQueryKey++;
  if (buildCounterGooglePrivacyDlpV2BigQueryKey < 3) {
    o.rowNumber = 'foo';
    o.tableReference = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryKey--;
  return o;
}

void checkGooglePrivacyDlpV2BigQueryKey(api.GooglePrivacyDlpV2BigQueryKey o) {
  buildCounterGooglePrivacyDlpV2BigQueryKey++;
  if (buildCounterGooglePrivacyDlpV2BigQueryKey < 3) {
    unittest.expect(o.rowNumber, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(
        o.tableReference as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2BigQueryKey--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2878() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2878(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2879() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2879(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.int buildCounterGooglePrivacyDlpV2BigQueryOptions = 0;
api.GooglePrivacyDlpV2BigQueryOptions buildGooglePrivacyDlpV2BigQueryOptions() {
  var o = api.GooglePrivacyDlpV2BigQueryOptions();
  buildCounterGooglePrivacyDlpV2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2BigQueryOptions < 3) {
    o.excludedFields = buildUnnamed2878();
    o.identifyingFields = buildUnnamed2879();
    o.rowsLimit = 'foo';
    o.rowsLimitPercent = 42;
    o.sampleMethod = 'foo';
    o.tableReference = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2BigQueryOptions--;
  return o;
}

void checkGooglePrivacyDlpV2BigQueryOptions(
    api.GooglePrivacyDlpV2BigQueryOptions o) {
  buildCounterGooglePrivacyDlpV2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2BigQueryOptions < 3) {
    checkUnnamed2878(o.excludedFields);
    checkUnnamed2879(o.identifyingFields);
    unittest.expect(o.rowsLimit, unittest.equals('foo'));
    unittest.expect(o.rowsLimitPercent, unittest.equals(42));
    unittest.expect(o.sampleMethod, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(
        o.tableReference as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2BigQueryOptions--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryTable = 0;
api.GooglePrivacyDlpV2BigQueryTable buildGooglePrivacyDlpV2BigQueryTable() {
  var o = api.GooglePrivacyDlpV2BigQueryTable();
  buildCounterGooglePrivacyDlpV2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2BigQueryTable < 3) {
    o.datasetId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2BigQueryTable--;
  return o;
}

void checkGooglePrivacyDlpV2BigQueryTable(
    api.GooglePrivacyDlpV2BigQueryTable o) {
  buildCounterGooglePrivacyDlpV2BigQueryTable++;
  if (buildCounterGooglePrivacyDlpV2BigQueryTable < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2BigQueryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BoundingBox = 0;
api.GooglePrivacyDlpV2BoundingBox buildGooglePrivacyDlpV2BoundingBox() {
  var o = api.GooglePrivacyDlpV2BoundingBox();
  buildCounterGooglePrivacyDlpV2BoundingBox++;
  if (buildCounterGooglePrivacyDlpV2BoundingBox < 3) {
    o.height = 42;
    o.left = 42;
    o.top = 42;
    o.width = 42;
  }
  buildCounterGooglePrivacyDlpV2BoundingBox--;
  return o;
}

void checkGooglePrivacyDlpV2BoundingBox(api.GooglePrivacyDlpV2BoundingBox o) {
  buildCounterGooglePrivacyDlpV2BoundingBox++;
  if (buildCounterGooglePrivacyDlpV2BoundingBox < 3) {
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2BoundingBox--;
}

core.int buildCounterGooglePrivacyDlpV2Bucket = 0;
api.GooglePrivacyDlpV2Bucket buildGooglePrivacyDlpV2Bucket() {
  var o = api.GooglePrivacyDlpV2Bucket();
  buildCounterGooglePrivacyDlpV2Bucket++;
  if (buildCounterGooglePrivacyDlpV2Bucket < 3) {
    o.max = buildGooglePrivacyDlpV2Value();
    o.min = buildGooglePrivacyDlpV2Value();
    o.replacementValue = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2Bucket--;
  return o;
}

void checkGooglePrivacyDlpV2Bucket(api.GooglePrivacyDlpV2Bucket o) {
  buildCounterGooglePrivacyDlpV2Bucket++;
  if (buildCounterGooglePrivacyDlpV2Bucket < 3) {
    checkGooglePrivacyDlpV2Value(o.max as api.GooglePrivacyDlpV2Value);
    checkGooglePrivacyDlpV2Value(o.min as api.GooglePrivacyDlpV2Value);
    checkGooglePrivacyDlpV2Value(
        o.replacementValue as api.GooglePrivacyDlpV2Value);
  }
  buildCounterGooglePrivacyDlpV2Bucket--;
}

core.List<api.GooglePrivacyDlpV2Bucket> buildUnnamed2880() {
  var o = <api.GooglePrivacyDlpV2Bucket>[];
  o.add(buildGooglePrivacyDlpV2Bucket());
  o.add(buildGooglePrivacyDlpV2Bucket());
  return o;
}

void checkUnnamed2880(core.List<api.GooglePrivacyDlpV2Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Bucket(o[0] as api.GooglePrivacyDlpV2Bucket);
  checkGooglePrivacyDlpV2Bucket(o[1] as api.GooglePrivacyDlpV2Bucket);
}

core.int buildCounterGooglePrivacyDlpV2BucketingConfig = 0;
api.GooglePrivacyDlpV2BucketingConfig buildGooglePrivacyDlpV2BucketingConfig() {
  var o = api.GooglePrivacyDlpV2BucketingConfig();
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    o.buckets = buildUnnamed2880();
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
  return o;
}

void checkGooglePrivacyDlpV2BucketingConfig(
    api.GooglePrivacyDlpV2BucketingConfig o) {
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    checkUnnamed2880(o.buckets);
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ByteContentItem = 0;
api.GooglePrivacyDlpV2ByteContentItem buildGooglePrivacyDlpV2ByteContentItem() {
  var o = api.GooglePrivacyDlpV2ByteContentItem();
  buildCounterGooglePrivacyDlpV2ByteContentItem++;
  if (buildCounterGooglePrivacyDlpV2ByteContentItem < 3) {
    o.data = 'foo';
    o.type = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ByteContentItem--;
  return o;
}

void checkGooglePrivacyDlpV2ByteContentItem(
    api.GooglePrivacyDlpV2ByteContentItem o) {
  buildCounterGooglePrivacyDlpV2ByteContentItem++;
  if (buildCounterGooglePrivacyDlpV2ByteContentItem < 3) {
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ByteContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2CancelDlpJobRequest = 0;
api.GooglePrivacyDlpV2CancelDlpJobRequest
    buildGooglePrivacyDlpV2CancelDlpJobRequest() {
  var o = api.GooglePrivacyDlpV2CancelDlpJobRequest();
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CancelDlpJobRequest(
    api.GooglePrivacyDlpV2CancelDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CancelDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2CancelDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsConfig = 0;
api.GooglePrivacyDlpV2CategoricalStatsConfig
    buildGooglePrivacyDlpV2CategoricalStatsConfig() {
  var o = api.GooglePrivacyDlpV2CategoricalStatsConfig();
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig--;
  return o;
}

void checkGooglePrivacyDlpV2CategoricalStatsConfig(
    api.GooglePrivacyDlpV2CategoricalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig--;
}

core.List<api.GooglePrivacyDlpV2ValueFrequency> buildUnnamed2881() {
  var o = <api.GooglePrivacyDlpV2ValueFrequency>[];
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  return o;
}

void checkUnnamed2881(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(
      o[0] as api.GooglePrivacyDlpV2ValueFrequency);
  checkGooglePrivacyDlpV2ValueFrequency(
      o[1] as api.GooglePrivacyDlpV2ValueFrequency);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket = 0;
api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket() {
  var o = api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket();
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed2881();
    o.valueFrequencyLowerBound = 'foo';
    o.valueFrequencyUpperBound = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket--;
  return o;
}

void checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(
    api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed2881(o.bucketValues);
    unittest.expect(o.valueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(o.valueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket>
    buildUnnamed2882() {
  var o = <api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket>[];
  o.add(buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket());
  o.add(buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket());
  return o;
}

void checkUnnamed2882(
    core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(
      o[0] as api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket);
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(
      o[1] as api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsResult = 0;
api.GooglePrivacyDlpV2CategoricalStatsResult
    buildGooglePrivacyDlpV2CategoricalStatsResult() {
  var o = api.GooglePrivacyDlpV2CategoricalStatsResult();
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    o.valueFrequencyHistogramBuckets = buildUnnamed2882();
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
  return o;
}

void checkGooglePrivacyDlpV2CategoricalStatsResult(
    api.GooglePrivacyDlpV2CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    checkUnnamed2882(o.valueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
}

core.List<api.GooglePrivacyDlpV2CharsToIgnore> buildUnnamed2883() {
  var o = <api.GooglePrivacyDlpV2CharsToIgnore>[];
  o.add(buildGooglePrivacyDlpV2CharsToIgnore());
  o.add(buildGooglePrivacyDlpV2CharsToIgnore());
  return o;
}

void checkUnnamed2883(core.List<api.GooglePrivacyDlpV2CharsToIgnore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CharsToIgnore(
      o[0] as api.GooglePrivacyDlpV2CharsToIgnore);
  checkGooglePrivacyDlpV2CharsToIgnore(
      o[1] as api.GooglePrivacyDlpV2CharsToIgnore);
}

core.int buildCounterGooglePrivacyDlpV2CharacterMaskConfig = 0;
api.GooglePrivacyDlpV2CharacterMaskConfig
    buildGooglePrivacyDlpV2CharacterMaskConfig() {
  var o = api.GooglePrivacyDlpV2CharacterMaskConfig();
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2CharacterMaskConfig < 3) {
    o.charactersToIgnore = buildUnnamed2883();
    o.maskingCharacter = 'foo';
    o.numberToMask = 42;
    o.reverseOrder = true;
  }
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig--;
  return o;
}

void checkGooglePrivacyDlpV2CharacterMaskConfig(
    api.GooglePrivacyDlpV2CharacterMaskConfig o) {
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2CharacterMaskConfig < 3) {
    checkUnnamed2883(o.charactersToIgnore);
    unittest.expect(o.maskingCharacter, unittest.equals('foo'));
    unittest.expect(o.numberToMask, unittest.equals(42));
    unittest.expect(o.reverseOrder, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CharsToIgnore = 0;
api.GooglePrivacyDlpV2CharsToIgnore buildGooglePrivacyDlpV2CharsToIgnore() {
  var o = api.GooglePrivacyDlpV2CharsToIgnore();
  buildCounterGooglePrivacyDlpV2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2CharsToIgnore < 3) {
    o.charactersToSkip = 'foo';
    o.commonCharactersToIgnore = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CharsToIgnore--;
  return o;
}

void checkGooglePrivacyDlpV2CharsToIgnore(
    api.GooglePrivacyDlpV2CharsToIgnore o) {
  buildCounterGooglePrivacyDlpV2CharsToIgnore++;
  if (buildCounterGooglePrivacyDlpV2CharsToIgnore < 3) {
    unittest.expect(o.charactersToSkip, unittest.equals('foo'));
    unittest.expect(o.commonCharactersToIgnore, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CharsToIgnore--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageFileSet = 0;
api.GooglePrivacyDlpV2CloudStorageFileSet
    buildGooglePrivacyDlpV2CloudStorageFileSet() {
  var o = api.GooglePrivacyDlpV2CloudStorageFileSet();
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageFileSet < 3) {
    o.url = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet--;
  return o;
}

void checkGooglePrivacyDlpV2CloudStorageFileSet(
    api.GooglePrivacyDlpV2CloudStorageFileSet o) {
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageFileSet < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet--;
}

core.List<core.String> buildUnnamed2884() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2884(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageOptions = 0;
api.GooglePrivacyDlpV2CloudStorageOptions
    buildGooglePrivacyDlpV2CloudStorageOptions() {
  var o = api.GooglePrivacyDlpV2CloudStorageOptions();
  buildCounterGooglePrivacyDlpV2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageOptions < 3) {
    o.bytesLimitPerFile = 'foo';
    o.bytesLimitPerFilePercent = 42;
    o.fileSet = buildGooglePrivacyDlpV2FileSet();
    o.fileTypes = buildUnnamed2884();
    o.filesLimitPercent = 42;
    o.sampleMethod = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CloudStorageOptions--;
  return o;
}

void checkGooglePrivacyDlpV2CloudStorageOptions(
    api.GooglePrivacyDlpV2CloudStorageOptions o) {
  buildCounterGooglePrivacyDlpV2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageOptions < 3) {
    unittest.expect(o.bytesLimitPerFile, unittest.equals('foo'));
    unittest.expect(o.bytesLimitPerFilePercent, unittest.equals(42));
    checkGooglePrivacyDlpV2FileSet(o.fileSet as api.GooglePrivacyDlpV2FileSet);
    checkUnnamed2884(o.fileTypes);
    unittest.expect(o.filesLimitPercent, unittest.equals(42));
    unittest.expect(o.sampleMethod, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStorageOptions--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStoragePath = 0;
api.GooglePrivacyDlpV2CloudStoragePath
    buildGooglePrivacyDlpV2CloudStoragePath() {
  var o = api.GooglePrivacyDlpV2CloudStoragePath();
  buildCounterGooglePrivacyDlpV2CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2CloudStoragePath < 3) {
    o.path = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CloudStoragePath--;
  return o;
}

void checkGooglePrivacyDlpV2CloudStoragePath(
    api.GooglePrivacyDlpV2CloudStoragePath o) {
  buildCounterGooglePrivacyDlpV2CloudStoragePath++;
  if (buildCounterGooglePrivacyDlpV2CloudStoragePath < 3) {
    unittest.expect(o.path, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CloudStoragePath--;
}

core.List<core.String> buildUnnamed2885() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2885(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2886() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2886(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet = 0;
api.GooglePrivacyDlpV2CloudStorageRegexFileSet
    buildGooglePrivacyDlpV2CloudStorageRegexFileSet() {
  var o = api.GooglePrivacyDlpV2CloudStorageRegexFileSet();
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    o.bucketName = 'foo';
    o.excludeRegex = buildUnnamed2885();
    o.includeRegex = buildUnnamed2886();
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
  return o;
}

void checkGooglePrivacyDlpV2CloudStorageRegexFileSet(
    api.GooglePrivacyDlpV2CloudStorageRegexFileSet o) {
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    checkUnnamed2885(o.excludeRegex);
    checkUnnamed2886(o.includeRegex);
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
}

core.int buildCounterGooglePrivacyDlpV2Color = 0;
api.GooglePrivacyDlpV2Color buildGooglePrivacyDlpV2Color() {
  var o = api.GooglePrivacyDlpV2Color();
  buildCounterGooglePrivacyDlpV2Color++;
  if (buildCounterGooglePrivacyDlpV2Color < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGooglePrivacyDlpV2Color--;
  return o;
}

void checkGooglePrivacyDlpV2Color(api.GooglePrivacyDlpV2Color o) {
  buildCounterGooglePrivacyDlpV2Color++;
  if (buildCounterGooglePrivacyDlpV2Color < 3) {
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2Color--;
}

core.int buildCounterGooglePrivacyDlpV2Condition = 0;
api.GooglePrivacyDlpV2Condition buildGooglePrivacyDlpV2Condition() {
  var o = api.GooglePrivacyDlpV2Condition();
  buildCounterGooglePrivacyDlpV2Condition++;
  if (buildCounterGooglePrivacyDlpV2Condition < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.operator = 'foo';
    o.value = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2Condition--;
  return o;
}

void checkGooglePrivacyDlpV2Condition(api.GooglePrivacyDlpV2Condition o) {
  buildCounterGooglePrivacyDlpV2Condition++;
  if (buildCounterGooglePrivacyDlpV2Condition < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
    unittest.expect(o.operator, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Value(o.value as api.GooglePrivacyDlpV2Value);
  }
  buildCounterGooglePrivacyDlpV2Condition--;
}

core.List<api.GooglePrivacyDlpV2Condition> buildUnnamed2887() {
  var o = <api.GooglePrivacyDlpV2Condition>[];
  o.add(buildGooglePrivacyDlpV2Condition());
  o.add(buildGooglePrivacyDlpV2Condition());
  return o;
}

void checkUnnamed2887(core.List<api.GooglePrivacyDlpV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Condition(o[0] as api.GooglePrivacyDlpV2Condition);
  checkGooglePrivacyDlpV2Condition(o[1] as api.GooglePrivacyDlpV2Condition);
}

core.int buildCounterGooglePrivacyDlpV2Conditions = 0;
api.GooglePrivacyDlpV2Conditions buildGooglePrivacyDlpV2Conditions() {
  var o = api.GooglePrivacyDlpV2Conditions();
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    o.conditions = buildUnnamed2887();
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
  return o;
}

void checkGooglePrivacyDlpV2Conditions(api.GooglePrivacyDlpV2Conditions o) {
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    checkUnnamed2887(o.conditions);
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
}

core.int buildCounterGooglePrivacyDlpV2Container = 0;
api.GooglePrivacyDlpV2Container buildGooglePrivacyDlpV2Container() {
  var o = api.GooglePrivacyDlpV2Container();
  buildCounterGooglePrivacyDlpV2Container++;
  if (buildCounterGooglePrivacyDlpV2Container < 3) {
    o.fullPath = 'foo';
    o.projectId = 'foo';
    o.relativePath = 'foo';
    o.rootPath = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Container--;
  return o;
}

void checkGooglePrivacyDlpV2Container(api.GooglePrivacyDlpV2Container o) {
  buildCounterGooglePrivacyDlpV2Container++;
  if (buildCounterGooglePrivacyDlpV2Container < 3) {
    unittest.expect(o.fullPath, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.relativePath, unittest.equals('foo'));
    unittest.expect(o.rootPath, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Container--;
}

core.int buildCounterGooglePrivacyDlpV2ContentItem = 0;
api.GooglePrivacyDlpV2ContentItem buildGooglePrivacyDlpV2ContentItem() {
  var o = api.GooglePrivacyDlpV2ContentItem();
  buildCounterGooglePrivacyDlpV2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2ContentItem < 3) {
    o.byteItem = buildGooglePrivacyDlpV2ByteContentItem();
    o.table = buildGooglePrivacyDlpV2Table();
    o.value = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ContentItem--;
  return o;
}

void checkGooglePrivacyDlpV2ContentItem(api.GooglePrivacyDlpV2ContentItem o) {
  buildCounterGooglePrivacyDlpV2ContentItem++;
  if (buildCounterGooglePrivacyDlpV2ContentItem < 3) {
    checkGooglePrivacyDlpV2ByteContentItem(
        o.byteItem as api.GooglePrivacyDlpV2ByteContentItem);
    checkGooglePrivacyDlpV2Table(o.table as api.GooglePrivacyDlpV2Table);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2ContentLocation = 0;
api.GooglePrivacyDlpV2ContentLocation buildGooglePrivacyDlpV2ContentLocation() {
  var o = api.GooglePrivacyDlpV2ContentLocation();
  buildCounterGooglePrivacyDlpV2ContentLocation++;
  if (buildCounterGooglePrivacyDlpV2ContentLocation < 3) {
    o.containerName = 'foo';
    o.containerTimestamp = 'foo';
    o.containerVersion = 'foo';
    o.documentLocation = buildGooglePrivacyDlpV2DocumentLocation();
    o.imageLocation = buildGooglePrivacyDlpV2ImageLocation();
    o.metadataLocation = buildGooglePrivacyDlpV2MetadataLocation();
    o.recordLocation = buildGooglePrivacyDlpV2RecordLocation();
  }
  buildCounterGooglePrivacyDlpV2ContentLocation--;
  return o;
}

void checkGooglePrivacyDlpV2ContentLocation(
    api.GooglePrivacyDlpV2ContentLocation o) {
  buildCounterGooglePrivacyDlpV2ContentLocation++;
  if (buildCounterGooglePrivacyDlpV2ContentLocation < 3) {
    unittest.expect(o.containerName, unittest.equals('foo'));
    unittest.expect(o.containerTimestamp, unittest.equals('foo'));
    unittest.expect(o.containerVersion, unittest.equals('foo'));
    checkGooglePrivacyDlpV2DocumentLocation(
        o.documentLocation as api.GooglePrivacyDlpV2DocumentLocation);
    checkGooglePrivacyDlpV2ImageLocation(
        o.imageLocation as api.GooglePrivacyDlpV2ImageLocation);
    checkGooglePrivacyDlpV2MetadataLocation(
        o.metadataLocation as api.GooglePrivacyDlpV2MetadataLocation);
    checkGooglePrivacyDlpV2RecordLocation(
        o.recordLocation as api.GooglePrivacyDlpV2RecordLocation);
  }
  buildCounterGooglePrivacyDlpV2ContentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest = 0;
api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest() {
  var o = api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2DeidentifyTemplate();
    o.locationId = 'foo';
    o.templateId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyTemplate(
        o.deidentifyTemplate as api.GooglePrivacyDlpV2DeidentifyTemplate);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDlpJobRequest = 0;
api.GooglePrivacyDlpV2CreateDlpJobRequest
    buildGooglePrivacyDlpV2CreateDlpJobRequest() {
  var o = api.GooglePrivacyDlpV2CreateDlpJobRequest();
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDlpJobRequest < 3) {
    o.inspectJob = buildGooglePrivacyDlpV2InspectJobConfig();
    o.jobId = 'foo';
    o.locationId = 'foo';
    o.riskJob = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
  }
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CreateDlpJobRequest(
    api.GooglePrivacyDlpV2CreateDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateDlpJobRequest < 3) {
    checkGooglePrivacyDlpV2InspectJobConfig(
        o.inspectJob as api.GooglePrivacyDlpV2InspectJobConfig);
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkGooglePrivacyDlpV2RiskAnalysisJobConfig(
        o.riskJob as api.GooglePrivacyDlpV2RiskAnalysisJobConfig);
  }
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest = 0;
api.GooglePrivacyDlpV2CreateInspectTemplateRequest
    buildGooglePrivacyDlpV2CreateInspectTemplateRequest() {
  var o = api.GooglePrivacyDlpV2CreateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
    o.locationId = 'foo';
    o.templateId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
    api.GooglePrivacyDlpV2CreateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2InspectTemplate(
        o.inspectTemplate as api.GooglePrivacyDlpV2InspectTemplate);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2CreateJobTriggerRequest
    buildGooglePrivacyDlpV2CreateJobTriggerRequest() {
  var o = api.GooglePrivacyDlpV2CreateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2JobTrigger();
    o.locationId = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CreateJobTriggerRequest(
    api.GooglePrivacyDlpV2CreateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2JobTrigger(
        o.jobTrigger as api.GooglePrivacyDlpV2JobTrigger);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.triggerId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest = 0;
api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest() {
  var o = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest();
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.locationId = 'foo';
    o.storedInfoTypeId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest--;
  return o;
}

void checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
    api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest o) {
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(
        o.config as api.GooglePrivacyDlpV2StoredInfoTypeConfig);
    unittest.expect(o.locationId, unittest.equals('foo'));
    unittest.expect(o.storedInfoTypeId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig = 0;
api.GooglePrivacyDlpV2CryptoDeterministicConfig
    buildGooglePrivacyDlpV2CryptoDeterministicConfig() {
  var o = api.GooglePrivacyDlpV2CryptoDeterministicConfig();
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig < 3) {
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.surrogateInfoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig--;
  return o;
}

void checkGooglePrivacyDlpV2CryptoDeterministicConfig(
    api.GooglePrivacyDlpV2CryptoDeterministicConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.context as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2CryptoKey(
        o.cryptoKey as api.GooglePrivacyDlpV2CryptoKey);
    checkGooglePrivacyDlpV2InfoType(
        o.surrogateInfoType as api.GooglePrivacyDlpV2InfoType);
  }
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoHashConfig = 0;
api.GooglePrivacyDlpV2CryptoHashConfig
    buildGooglePrivacyDlpV2CryptoHashConfig() {
  var o = api.GooglePrivacyDlpV2CryptoHashConfig();
  buildCounterGooglePrivacyDlpV2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoHashConfig < 3) {
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
  }
  buildCounterGooglePrivacyDlpV2CryptoHashConfig--;
  return o;
}

void checkGooglePrivacyDlpV2CryptoHashConfig(
    api.GooglePrivacyDlpV2CryptoHashConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoHashConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoHashConfig < 3) {
    checkGooglePrivacyDlpV2CryptoKey(
        o.cryptoKey as api.GooglePrivacyDlpV2CryptoKey);
  }
  buildCounterGooglePrivacyDlpV2CryptoHashConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoKey = 0;
api.GooglePrivacyDlpV2CryptoKey buildGooglePrivacyDlpV2CryptoKey() {
  var o = api.GooglePrivacyDlpV2CryptoKey();
  buildCounterGooglePrivacyDlpV2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2CryptoKey < 3) {
    o.kmsWrapped = buildGooglePrivacyDlpV2KmsWrappedCryptoKey();
    o.transient = buildGooglePrivacyDlpV2TransientCryptoKey();
    o.unwrapped = buildGooglePrivacyDlpV2UnwrappedCryptoKey();
  }
  buildCounterGooglePrivacyDlpV2CryptoKey--;
  return o;
}

void checkGooglePrivacyDlpV2CryptoKey(api.GooglePrivacyDlpV2CryptoKey o) {
  buildCounterGooglePrivacyDlpV2CryptoKey++;
  if (buildCounterGooglePrivacyDlpV2CryptoKey < 3) {
    checkGooglePrivacyDlpV2KmsWrappedCryptoKey(
        o.kmsWrapped as api.GooglePrivacyDlpV2KmsWrappedCryptoKey);
    checkGooglePrivacyDlpV2TransientCryptoKey(
        o.transient as api.GooglePrivacyDlpV2TransientCryptoKey);
    checkGooglePrivacyDlpV2UnwrappedCryptoKey(
        o.unwrapped as api.GooglePrivacyDlpV2UnwrappedCryptoKey);
  }
  buildCounterGooglePrivacyDlpV2CryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = 0;
api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig() {
  var o = api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig < 3) {
    o.commonAlphabet = 'foo';
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.customAlphabet = 'foo';
    o.radix = 42;
    o.surrogateInfoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig--;
  return o;
}

void checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(
    api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig o) {
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig++;
  if (buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig < 3) {
    unittest.expect(o.commonAlphabet, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.context as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2CryptoKey(
        o.cryptoKey as api.GooglePrivacyDlpV2CryptoKey);
    unittest.expect(o.customAlphabet, unittest.equals('foo'));
    unittest.expect(o.radix, unittest.equals(42));
    checkGooglePrivacyDlpV2InfoType(
        o.surrogateInfoType as api.GooglePrivacyDlpV2InfoType);
  }
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig--;
}

core.List<api.GooglePrivacyDlpV2DetectionRule> buildUnnamed2888() {
  var o = <api.GooglePrivacyDlpV2DetectionRule>[];
  o.add(buildGooglePrivacyDlpV2DetectionRule());
  o.add(buildGooglePrivacyDlpV2DetectionRule());
  return o;
}

void checkUnnamed2888(core.List<api.GooglePrivacyDlpV2DetectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DetectionRule(
      o[0] as api.GooglePrivacyDlpV2DetectionRule);
  checkGooglePrivacyDlpV2DetectionRule(
      o[1] as api.GooglePrivacyDlpV2DetectionRule);
}

core.int buildCounterGooglePrivacyDlpV2CustomInfoType = 0;
api.GooglePrivacyDlpV2CustomInfoType buildGooglePrivacyDlpV2CustomInfoType() {
  var o = api.GooglePrivacyDlpV2CustomInfoType();
  buildCounterGooglePrivacyDlpV2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2CustomInfoType < 3) {
    o.detectionRules = buildUnnamed2888();
    o.dictionary = buildGooglePrivacyDlpV2Dictionary();
    o.exclusionType = 'foo';
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.likelihood = 'foo';
    o.regex = buildGooglePrivacyDlpV2Regex();
    o.storedType = buildGooglePrivacyDlpV2StoredType();
    o.surrogateType = buildGooglePrivacyDlpV2SurrogateType();
  }
  buildCounterGooglePrivacyDlpV2CustomInfoType--;
  return o;
}

void checkGooglePrivacyDlpV2CustomInfoType(
    api.GooglePrivacyDlpV2CustomInfoType o) {
  buildCounterGooglePrivacyDlpV2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2CustomInfoType < 3) {
    checkUnnamed2888(o.detectionRules);
    checkGooglePrivacyDlpV2Dictionary(
        o.dictionary as api.GooglePrivacyDlpV2Dictionary);
    unittest.expect(o.exclusionType, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Regex(o.regex as api.GooglePrivacyDlpV2Regex);
    checkGooglePrivacyDlpV2StoredType(
        o.storedType as api.GooglePrivacyDlpV2StoredType);
    checkGooglePrivacyDlpV2SurrogateType(
        o.surrogateType as api.GooglePrivacyDlpV2SurrogateType);
  }
  buildCounterGooglePrivacyDlpV2CustomInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreKey = 0;
api.GooglePrivacyDlpV2DatastoreKey buildGooglePrivacyDlpV2DatastoreKey() {
  var o = api.GooglePrivacyDlpV2DatastoreKey();
  buildCounterGooglePrivacyDlpV2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2DatastoreKey < 3) {
    o.entityKey = buildGooglePrivacyDlpV2Key();
  }
  buildCounterGooglePrivacyDlpV2DatastoreKey--;
  return o;
}

void checkGooglePrivacyDlpV2DatastoreKey(api.GooglePrivacyDlpV2DatastoreKey o) {
  buildCounterGooglePrivacyDlpV2DatastoreKey++;
  if (buildCounterGooglePrivacyDlpV2DatastoreKey < 3) {
    checkGooglePrivacyDlpV2Key(o.entityKey as api.GooglePrivacyDlpV2Key);
  }
  buildCounterGooglePrivacyDlpV2DatastoreKey--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreOptions = 0;
api.GooglePrivacyDlpV2DatastoreOptions
    buildGooglePrivacyDlpV2DatastoreOptions() {
  var o = api.GooglePrivacyDlpV2DatastoreOptions();
  buildCounterGooglePrivacyDlpV2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2DatastoreOptions < 3) {
    o.kind = buildGooglePrivacyDlpV2KindExpression();
    o.partitionId = buildGooglePrivacyDlpV2PartitionId();
  }
  buildCounterGooglePrivacyDlpV2DatastoreOptions--;
  return o;
}

void checkGooglePrivacyDlpV2DatastoreOptions(
    api.GooglePrivacyDlpV2DatastoreOptions o) {
  buildCounterGooglePrivacyDlpV2DatastoreOptions++;
  if (buildCounterGooglePrivacyDlpV2DatastoreOptions < 3) {
    checkGooglePrivacyDlpV2KindExpression(
        o.kind as api.GooglePrivacyDlpV2KindExpression);
    checkGooglePrivacyDlpV2PartitionId(
        o.partitionId as api.GooglePrivacyDlpV2PartitionId);
  }
  buildCounterGooglePrivacyDlpV2DatastoreOptions--;
}

core.int buildCounterGooglePrivacyDlpV2DateShiftConfig = 0;
api.GooglePrivacyDlpV2DateShiftConfig buildGooglePrivacyDlpV2DateShiftConfig() {
  var o = api.GooglePrivacyDlpV2DateShiftConfig();
  buildCounterGooglePrivacyDlpV2DateShiftConfig++;
  if (buildCounterGooglePrivacyDlpV2DateShiftConfig < 3) {
    o.context = buildGooglePrivacyDlpV2FieldId();
    o.cryptoKey = buildGooglePrivacyDlpV2CryptoKey();
    o.lowerBoundDays = 42;
    o.upperBoundDays = 42;
  }
  buildCounterGooglePrivacyDlpV2DateShiftConfig--;
  return o;
}

void checkGooglePrivacyDlpV2DateShiftConfig(
    api.GooglePrivacyDlpV2DateShiftConfig o) {
  buildCounterGooglePrivacyDlpV2DateShiftConfig++;
  if (buildCounterGooglePrivacyDlpV2DateShiftConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.context as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2CryptoKey(
        o.cryptoKey as api.GooglePrivacyDlpV2CryptoKey);
    unittest.expect(o.lowerBoundDays, unittest.equals(42));
    unittest.expect(o.upperBoundDays, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2DateShiftConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DateTime = 0;
api.GooglePrivacyDlpV2DateTime buildGooglePrivacyDlpV2DateTime() {
  var o = api.GooglePrivacyDlpV2DateTime();
  buildCounterGooglePrivacyDlpV2DateTime++;
  if (buildCounterGooglePrivacyDlpV2DateTime < 3) {
    o.date = buildGoogleTypeDate();
    o.dayOfWeek = 'foo';
    o.time = buildGoogleTypeTimeOfDay();
    o.timeZone = buildGooglePrivacyDlpV2TimeZone();
  }
  buildCounterGooglePrivacyDlpV2DateTime--;
  return o;
}

void checkGooglePrivacyDlpV2DateTime(api.GooglePrivacyDlpV2DateTime o) {
  buildCounterGooglePrivacyDlpV2DateTime++;
  if (buildCounterGooglePrivacyDlpV2DateTime < 3) {
    checkGoogleTypeDate(o.date as api.GoogleTypeDate);
    unittest.expect(o.dayOfWeek, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.time as api.GoogleTypeTimeOfDay);
    checkGooglePrivacyDlpV2TimeZone(
        o.timeZone as api.GooglePrivacyDlpV2TimeZone);
  }
  buildCounterGooglePrivacyDlpV2DateTime--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyConfig = 0;
api.GooglePrivacyDlpV2DeidentifyConfig
    buildGooglePrivacyDlpV2DeidentifyConfig() {
  var o = api.GooglePrivacyDlpV2DeidentifyConfig();
  buildCounterGooglePrivacyDlpV2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyConfig < 3) {
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2InfoTypeTransformations();
    o.recordTransformations = buildGooglePrivacyDlpV2RecordTransformations();
    o.transformationErrorHandling =
        buildGooglePrivacyDlpV2TransformationErrorHandling();
  }
  buildCounterGooglePrivacyDlpV2DeidentifyConfig--;
  return o;
}

void checkGooglePrivacyDlpV2DeidentifyConfig(
    api.GooglePrivacyDlpV2DeidentifyConfig o) {
  buildCounterGooglePrivacyDlpV2DeidentifyConfig++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyConfig < 3) {
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations
        as api.GooglePrivacyDlpV2InfoTypeTransformations);
    checkGooglePrivacyDlpV2RecordTransformations(
        o.recordTransformations as api.GooglePrivacyDlpV2RecordTransformations);
    checkGooglePrivacyDlpV2TransformationErrorHandling(
        o.transformationErrorHandling
            as api.GooglePrivacyDlpV2TransformationErrorHandling);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentRequest = 0;
api.GooglePrivacyDlpV2DeidentifyContentRequest
    buildGooglePrivacyDlpV2DeidentifyContentRequest() {
  var o = api.GooglePrivacyDlpV2DeidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentRequest < 3) {
    o.deidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.deidentifyTemplateName = 'foo';
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = 'foo';
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.locationId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest--;
  return o;
}

void checkGooglePrivacyDlpV2DeidentifyContentRequest(
    api.GooglePrivacyDlpV2DeidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyConfig(
        o.deidentifyConfig as api.GooglePrivacyDlpV2DeidentifyConfig);
    unittest.expect(o.deidentifyTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
    unittest.expect(o.locationId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentResponse = 0;
api.GooglePrivacyDlpV2DeidentifyContentResponse
    buildGooglePrivacyDlpV2DeidentifyContentResponse() {
  var o = api.GooglePrivacyDlpV2DeidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.overview = buildGooglePrivacyDlpV2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse--;
  return o;
}

void checkGooglePrivacyDlpV2DeidentifyContentResponse(
    api.GooglePrivacyDlpV2DeidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
    checkGooglePrivacyDlpV2TransformationOverview(
        o.overview as api.GooglePrivacyDlpV2TransformationOverview);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyTemplate = 0;
api.GooglePrivacyDlpV2DeidentifyTemplate
    buildGooglePrivacyDlpV2DeidentifyTemplate() {
  var o = api.GooglePrivacyDlpV2DeidentifyTemplate();
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyTemplate < 3) {
    o.createTime = 'foo';
    o.deidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate--;
  return o;
}

void checkGooglePrivacyDlpV2DeidentifyTemplate(
    api.GooglePrivacyDlpV2DeidentifyTemplate o) {
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate++;
  if (buildCounterGooglePrivacyDlpV2DeidentifyTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2DeidentifyConfig(
        o.deidentifyConfig as api.GooglePrivacyDlpV2DeidentifyConfig);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate--;
}

core.List<api.GooglePrivacyDlpV2StatisticalTable> buildUnnamed2889() {
  var o = <api.GooglePrivacyDlpV2StatisticalTable>[];
  o.add(buildGooglePrivacyDlpV2StatisticalTable());
  o.add(buildGooglePrivacyDlpV2StatisticalTable());
  return o;
}

void checkUnnamed2889(core.List<api.GooglePrivacyDlpV2StatisticalTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StatisticalTable(
      o[0] as api.GooglePrivacyDlpV2StatisticalTable);
  checkGooglePrivacyDlpV2StatisticalTable(
      o[1] as api.GooglePrivacyDlpV2StatisticalTable);
}

core.List<api.GooglePrivacyDlpV2QuasiId> buildUnnamed2890() {
  var o = <api.GooglePrivacyDlpV2QuasiId>[];
  o.add(buildGooglePrivacyDlpV2QuasiId());
  o.add(buildGooglePrivacyDlpV2QuasiId());
  return o;
}

void checkUnnamed2890(core.List<api.GooglePrivacyDlpV2QuasiId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiId(o[0] as api.GooglePrivacyDlpV2QuasiId);
  checkGooglePrivacyDlpV2QuasiId(o[1] as api.GooglePrivacyDlpV2QuasiId);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig() {
  var o = api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed2889();
    o.quasiIds = buildUnnamed2890();
    o.regionCode = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    checkUnnamed2889(o.auxiliaryTables);
    checkUnnamed2890(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
}

core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>
    buildUnnamed2891() {
  var o = <api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>[];
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues());
  return o;
}

void checkUnnamed2891(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
      o[0] as api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
      o[1] as api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
    0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket() {
  var o = api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket <
      3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed2891();
    o.maxProbability = 42.0;
    o.minProbability = 42.0;
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket <
      3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed2891(o.bucketValues);
    unittest.expect(o.maxProbability, unittest.equals(42.0));
    unittest.expect(o.minProbability, unittest.equals(42.0));
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2892() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2892(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues() {
  var o = api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    o.estimatedProbability = 42.0;
    o.quasiIdsValues = buildUnnamed2892();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedProbability, unittest.equals(42.0));
    checkUnnamed2892(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
}

core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>
    buildUnnamed2893() {
  var o = <api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>[];
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket());
  return o;
}

void checkUnnamed2893(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(
      o[0] as api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(
      o[1] as api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationResult
    buildGooglePrivacyDlpV2DeltaPresenceEstimationResult() {
  var o = api.GooglePrivacyDlpV2DeltaPresenceEstimationResult();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    o.deltaPresenceEstimationHistogram = buildUnnamed2893();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationResult o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    checkUnnamed2893(o.deltaPresenceEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
}

core.int buildCounterGooglePrivacyDlpV2DetectionRule = 0;
api.GooglePrivacyDlpV2DetectionRule buildGooglePrivacyDlpV2DetectionRule() {
  var o = api.GooglePrivacyDlpV2DetectionRule();
  buildCounterGooglePrivacyDlpV2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2DetectionRule < 3) {
    o.hotwordRule = buildGooglePrivacyDlpV2HotwordRule();
  }
  buildCounterGooglePrivacyDlpV2DetectionRule--;
  return o;
}

void checkGooglePrivacyDlpV2DetectionRule(
    api.GooglePrivacyDlpV2DetectionRule o) {
  buildCounterGooglePrivacyDlpV2DetectionRule++;
  if (buildCounterGooglePrivacyDlpV2DetectionRule < 3) {
    checkGooglePrivacyDlpV2HotwordRule(
        o.hotwordRule as api.GooglePrivacyDlpV2HotwordRule);
  }
  buildCounterGooglePrivacyDlpV2DetectionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Dictionary = 0;
api.GooglePrivacyDlpV2Dictionary buildGooglePrivacyDlpV2Dictionary() {
  var o = api.GooglePrivacyDlpV2Dictionary();
  buildCounterGooglePrivacyDlpV2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2Dictionary < 3) {
    o.cloudStoragePath = buildGooglePrivacyDlpV2CloudStoragePath();
    o.wordList = buildGooglePrivacyDlpV2WordList();
  }
  buildCounterGooglePrivacyDlpV2Dictionary--;
  return o;
}

void checkGooglePrivacyDlpV2Dictionary(api.GooglePrivacyDlpV2Dictionary o) {
  buildCounterGooglePrivacyDlpV2Dictionary++;
  if (buildCounterGooglePrivacyDlpV2Dictionary < 3) {
    checkGooglePrivacyDlpV2CloudStoragePath(
        o.cloudStoragePath as api.GooglePrivacyDlpV2CloudStoragePath);
    checkGooglePrivacyDlpV2WordList(
        o.wordList as api.GooglePrivacyDlpV2WordList);
  }
  buildCounterGooglePrivacyDlpV2Dictionary--;
}

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed2894() {
  var o = <api.GooglePrivacyDlpV2Error>[];
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

void checkUnnamed2894(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0] as api.GooglePrivacyDlpV2Error);
  checkGooglePrivacyDlpV2Error(o[1] as api.GooglePrivacyDlpV2Error);
}

core.int buildCounterGooglePrivacyDlpV2DlpJob = 0;
api.GooglePrivacyDlpV2DlpJob buildGooglePrivacyDlpV2DlpJob() {
  var o = api.GooglePrivacyDlpV2DlpJob();
  buildCounterGooglePrivacyDlpV2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2DlpJob < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.errors = buildUnnamed2894();
    o.inspectDetails = buildGooglePrivacyDlpV2InspectDataSourceDetails();
    o.jobTriggerName = 'foo';
    o.name = 'foo';
    o.riskDetails = buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
    o.startTime = 'foo';
    o.state = 'foo';
    o.type = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DlpJob--;
  return o;
}

void checkGooglePrivacyDlpV2DlpJob(api.GooglePrivacyDlpV2DlpJob o) {
  buildCounterGooglePrivacyDlpV2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2DlpJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed2894(o.errors);
    checkGooglePrivacyDlpV2InspectDataSourceDetails(
        o.inspectDetails as api.GooglePrivacyDlpV2InspectDataSourceDetails);
    unittest.expect(o.jobTriggerName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(
        o.riskDetails as api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DlpJob--;
}

core.int buildCounterGooglePrivacyDlpV2DocumentLocation = 0;
api.GooglePrivacyDlpV2DocumentLocation
    buildGooglePrivacyDlpV2DocumentLocation() {
  var o = api.GooglePrivacyDlpV2DocumentLocation();
  buildCounterGooglePrivacyDlpV2DocumentLocation++;
  if (buildCounterGooglePrivacyDlpV2DocumentLocation < 3) {
    o.fileOffset = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DocumentLocation--;
  return o;
}

void checkGooglePrivacyDlpV2DocumentLocation(
    api.GooglePrivacyDlpV2DocumentLocation o) {
  buildCounterGooglePrivacyDlpV2DocumentLocation++;
  if (buildCounterGooglePrivacyDlpV2DocumentLocation < 3) {
    unittest.expect(o.fileOffset, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2DocumentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2EntityId = 0;
api.GooglePrivacyDlpV2EntityId buildGooglePrivacyDlpV2EntityId() {
  var o = api.GooglePrivacyDlpV2EntityId();
  buildCounterGooglePrivacyDlpV2EntityId++;
  if (buildCounterGooglePrivacyDlpV2EntityId < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2EntityId--;
  return o;
}

void checkGooglePrivacyDlpV2EntityId(api.GooglePrivacyDlpV2EntityId o) {
  buildCounterGooglePrivacyDlpV2EntityId++;
  if (buildCounterGooglePrivacyDlpV2EntityId < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2EntityId--;
}

core.List<core.String> buildUnnamed2895() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2895(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2Error = 0;
api.GooglePrivacyDlpV2Error buildGooglePrivacyDlpV2Error() {
  var o = api.GooglePrivacyDlpV2Error();
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    o.details = buildGoogleRpcStatus();
    o.timestamps = buildUnnamed2895();
  }
  buildCounterGooglePrivacyDlpV2Error--;
  return o;
}

void checkGooglePrivacyDlpV2Error(api.GooglePrivacyDlpV2Error o) {
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    checkGoogleRpcStatus(o.details as api.GoogleRpcStatus);
    checkUnnamed2895(o.timestamps);
  }
  buildCounterGooglePrivacyDlpV2Error--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed2896() {
  var o = <api.GooglePrivacyDlpV2InfoType>[];
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

void checkUnnamed2896(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0] as api.GooglePrivacyDlpV2InfoType);
  checkGooglePrivacyDlpV2InfoType(o[1] as api.GooglePrivacyDlpV2InfoType);
}

core.int buildCounterGooglePrivacyDlpV2ExcludeInfoTypes = 0;
api.GooglePrivacyDlpV2ExcludeInfoTypes
    buildGooglePrivacyDlpV2ExcludeInfoTypes() {
  var o = api.GooglePrivacyDlpV2ExcludeInfoTypes();
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    o.infoTypes = buildUnnamed2896();
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
  return o;
}

void checkGooglePrivacyDlpV2ExcludeInfoTypes(
    api.GooglePrivacyDlpV2ExcludeInfoTypes o) {
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    checkUnnamed2896(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
}

core.int buildCounterGooglePrivacyDlpV2ExclusionRule = 0;
api.GooglePrivacyDlpV2ExclusionRule buildGooglePrivacyDlpV2ExclusionRule() {
  var o = api.GooglePrivacyDlpV2ExclusionRule();
  buildCounterGooglePrivacyDlpV2ExclusionRule++;
  if (buildCounterGooglePrivacyDlpV2ExclusionRule < 3) {
    o.dictionary = buildGooglePrivacyDlpV2Dictionary();
    o.excludeInfoTypes = buildGooglePrivacyDlpV2ExcludeInfoTypes();
    o.matchingType = 'foo';
    o.regex = buildGooglePrivacyDlpV2Regex();
  }
  buildCounterGooglePrivacyDlpV2ExclusionRule--;
  return o;
}

void checkGooglePrivacyDlpV2ExclusionRule(
    api.GooglePrivacyDlpV2ExclusionRule o) {
  buildCounterGooglePrivacyDlpV2ExclusionRule++;
  if (buildCounterGooglePrivacyDlpV2ExclusionRule < 3) {
    checkGooglePrivacyDlpV2Dictionary(
        o.dictionary as api.GooglePrivacyDlpV2Dictionary);
    checkGooglePrivacyDlpV2ExcludeInfoTypes(
        o.excludeInfoTypes as api.GooglePrivacyDlpV2ExcludeInfoTypes);
    unittest.expect(o.matchingType, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Regex(o.regex as api.GooglePrivacyDlpV2Regex);
  }
  buildCounterGooglePrivacyDlpV2ExclusionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Expressions = 0;
api.GooglePrivacyDlpV2Expressions buildGooglePrivacyDlpV2Expressions() {
  var o = api.GooglePrivacyDlpV2Expressions();
  buildCounterGooglePrivacyDlpV2Expressions++;
  if (buildCounterGooglePrivacyDlpV2Expressions < 3) {
    o.conditions = buildGooglePrivacyDlpV2Conditions();
    o.logicalOperator = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Expressions--;
  return o;
}

void checkGooglePrivacyDlpV2Expressions(api.GooglePrivacyDlpV2Expressions o) {
  buildCounterGooglePrivacyDlpV2Expressions++;
  if (buildCounterGooglePrivacyDlpV2Expressions < 3) {
    checkGooglePrivacyDlpV2Conditions(
        o.conditions as api.GooglePrivacyDlpV2Conditions);
    unittest.expect(o.logicalOperator, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Expressions--;
}

core.int buildCounterGooglePrivacyDlpV2FieldId = 0;
api.GooglePrivacyDlpV2FieldId buildGooglePrivacyDlpV2FieldId() {
  var o = api.GooglePrivacyDlpV2FieldId();
  buildCounterGooglePrivacyDlpV2FieldId++;
  if (buildCounterGooglePrivacyDlpV2FieldId < 3) {
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2FieldId--;
  return o;
}

void checkGooglePrivacyDlpV2FieldId(api.GooglePrivacyDlpV2FieldId o) {
  buildCounterGooglePrivacyDlpV2FieldId++;
  if (buildCounterGooglePrivacyDlpV2FieldId < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2FieldId--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2897() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2897(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.int buildCounterGooglePrivacyDlpV2FieldTransformation = 0;
api.GooglePrivacyDlpV2FieldTransformation
    buildGooglePrivacyDlpV2FieldTransformation() {
  var o = api.GooglePrivacyDlpV2FieldTransformation();
  buildCounterGooglePrivacyDlpV2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2FieldTransformation < 3) {
    o.condition = buildGooglePrivacyDlpV2RecordCondition();
    o.fields = buildUnnamed2897();
    o.infoTypeTransformations =
        buildGooglePrivacyDlpV2InfoTypeTransformations();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2FieldTransformation--;
  return o;
}

void checkGooglePrivacyDlpV2FieldTransformation(
    api.GooglePrivacyDlpV2FieldTransformation o) {
  buildCounterGooglePrivacyDlpV2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2FieldTransformation < 3) {
    checkGooglePrivacyDlpV2RecordCondition(
        o.condition as api.GooglePrivacyDlpV2RecordCondition);
    checkUnnamed2897(o.fields);
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations
        as api.GooglePrivacyDlpV2InfoTypeTransformations);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation
        as api.GooglePrivacyDlpV2PrimitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2FieldTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2FileSet = 0;
api.GooglePrivacyDlpV2FileSet buildGooglePrivacyDlpV2FileSet() {
  var o = api.GooglePrivacyDlpV2FileSet();
  buildCounterGooglePrivacyDlpV2FileSet++;
  if (buildCounterGooglePrivacyDlpV2FileSet < 3) {
    o.regexFileSet = buildGooglePrivacyDlpV2CloudStorageRegexFileSet();
    o.url = 'foo';
  }
  buildCounterGooglePrivacyDlpV2FileSet--;
  return o;
}

void checkGooglePrivacyDlpV2FileSet(api.GooglePrivacyDlpV2FileSet o) {
  buildCounterGooglePrivacyDlpV2FileSet++;
  if (buildCounterGooglePrivacyDlpV2FileSet < 3) {
    checkGooglePrivacyDlpV2CloudStorageRegexFileSet(
        o.regexFileSet as api.GooglePrivacyDlpV2CloudStorageRegexFileSet);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2FileSet--;
}

core.Map<core.String, core.String> buildUnnamed2898() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2898(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2Finding = 0;
api.GooglePrivacyDlpV2Finding buildGooglePrivacyDlpV2Finding() {
  var o = api.GooglePrivacyDlpV2Finding();
  buildCounterGooglePrivacyDlpV2Finding++;
  if (buildCounterGooglePrivacyDlpV2Finding < 3) {
    o.createTime = 'foo';
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.jobCreateTime = 'foo';
    o.jobName = 'foo';
    o.labels = buildUnnamed2898();
    o.likelihood = 'foo';
    o.location = buildGooglePrivacyDlpV2Location();
    o.name = 'foo';
    o.quote = 'foo';
    o.quoteInfo = buildGooglePrivacyDlpV2QuoteInfo();
    o.resourceName = 'foo';
    o.triggerName = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Finding--;
  return o;
}

void checkGooglePrivacyDlpV2Finding(api.GooglePrivacyDlpV2Finding o) {
  buildCounterGooglePrivacyDlpV2Finding++;
  if (buildCounterGooglePrivacyDlpV2Finding < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
    unittest.expect(o.jobCreateTime, unittest.equals('foo'));
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed2898(o.labels);
    unittest.expect(o.likelihood, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Location(
        o.location as api.GooglePrivacyDlpV2Location);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.quote, unittest.equals('foo'));
    checkGooglePrivacyDlpV2QuoteInfo(
        o.quoteInfo as api.GooglePrivacyDlpV2QuoteInfo);
    unittest.expect(o.resourceName, unittest.equals('foo'));
    unittest.expect(o.triggerName, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Finding--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeLimit> buildUnnamed2899() {
  var o = <api.GooglePrivacyDlpV2InfoTypeLimit>[];
  o.add(buildGooglePrivacyDlpV2InfoTypeLimit());
  o.add(buildGooglePrivacyDlpV2InfoTypeLimit());
  return o;
}

void checkUnnamed2899(core.List<api.GooglePrivacyDlpV2InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeLimit(
      o[0] as api.GooglePrivacyDlpV2InfoTypeLimit);
  checkGooglePrivacyDlpV2InfoTypeLimit(
      o[1] as api.GooglePrivacyDlpV2InfoTypeLimit);
}

core.int buildCounterGooglePrivacyDlpV2FindingLimits = 0;
api.GooglePrivacyDlpV2FindingLimits buildGooglePrivacyDlpV2FindingLimits() {
  var o = api.GooglePrivacyDlpV2FindingLimits();
  buildCounterGooglePrivacyDlpV2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2FindingLimits < 3) {
    o.maxFindingsPerInfoType = buildUnnamed2899();
    o.maxFindingsPerItem = 42;
    o.maxFindingsPerRequest = 42;
  }
  buildCounterGooglePrivacyDlpV2FindingLimits--;
  return o;
}

void checkGooglePrivacyDlpV2FindingLimits(
    api.GooglePrivacyDlpV2FindingLimits o) {
  buildCounterGooglePrivacyDlpV2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2FindingLimits < 3) {
    checkUnnamed2899(o.maxFindingsPerInfoType);
    unittest.expect(o.maxFindingsPerItem, unittest.equals(42));
    unittest.expect(o.maxFindingsPerRequest, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2FindingLimits--;
}

core.int buildCounterGooglePrivacyDlpV2FinishDlpJobRequest = 0;
api.GooglePrivacyDlpV2FinishDlpJobRequest
    buildGooglePrivacyDlpV2FinishDlpJobRequest() {
  var o = api.GooglePrivacyDlpV2FinishDlpJobRequest();
  buildCounterGooglePrivacyDlpV2FinishDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2FinishDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2FinishDlpJobRequest--;
  return o;
}

void checkGooglePrivacyDlpV2FinishDlpJobRequest(
    api.GooglePrivacyDlpV2FinishDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2FinishDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2FinishDlpJobRequest < 3) {}
  buildCounterGooglePrivacyDlpV2FinishDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig = 0;
api.GooglePrivacyDlpV2FixedSizeBucketingConfig
    buildGooglePrivacyDlpV2FixedSizeBucketingConfig() {
  var o = api.GooglePrivacyDlpV2FixedSizeBucketingConfig();
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig < 3) {
    o.bucketSize = 42.0;
    o.lowerBound = buildGooglePrivacyDlpV2Value();
    o.upperBound = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig--;
  return o;
}

void checkGooglePrivacyDlpV2FixedSizeBucketingConfig(
    api.GooglePrivacyDlpV2FixedSizeBucketingConfig o) {
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig < 3) {
    unittest.expect(o.bucketSize, unittest.equals(42.0));
    checkGooglePrivacyDlpV2Value(o.lowerBound as api.GooglePrivacyDlpV2Value);
    checkGooglePrivacyDlpV2Value(o.upperBound as api.GooglePrivacyDlpV2Value);
  }
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2HotwordRule = 0;
api.GooglePrivacyDlpV2HotwordRule buildGooglePrivacyDlpV2HotwordRule() {
  var o = api.GooglePrivacyDlpV2HotwordRule();
  buildCounterGooglePrivacyDlpV2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2HotwordRule < 3) {
    o.hotwordRegex = buildGooglePrivacyDlpV2Regex();
    o.likelihoodAdjustment = buildGooglePrivacyDlpV2LikelihoodAdjustment();
    o.proximity = buildGooglePrivacyDlpV2Proximity();
  }
  buildCounterGooglePrivacyDlpV2HotwordRule--;
  return o;
}

void checkGooglePrivacyDlpV2HotwordRule(api.GooglePrivacyDlpV2HotwordRule o) {
  buildCounterGooglePrivacyDlpV2HotwordRule++;
  if (buildCounterGooglePrivacyDlpV2HotwordRule < 3) {
    checkGooglePrivacyDlpV2Regex(o.hotwordRegex as api.GooglePrivacyDlpV2Regex);
    checkGooglePrivacyDlpV2LikelihoodAdjustment(
        o.likelihoodAdjustment as api.GooglePrivacyDlpV2LikelihoodAdjustment);
    checkGooglePrivacyDlpV2Proximity(
        o.proximity as api.GooglePrivacyDlpV2Proximity);
  }
  buildCounterGooglePrivacyDlpV2HotwordRule--;
}

core.int buildCounterGooglePrivacyDlpV2HybridContentItem = 0;
api.GooglePrivacyDlpV2HybridContentItem
    buildGooglePrivacyDlpV2HybridContentItem() {
  var o = api.GooglePrivacyDlpV2HybridContentItem();
  buildCounterGooglePrivacyDlpV2HybridContentItem++;
  if (buildCounterGooglePrivacyDlpV2HybridContentItem < 3) {
    o.findingDetails = buildGooglePrivacyDlpV2HybridFindingDetails();
    o.item = buildGooglePrivacyDlpV2ContentItem();
  }
  buildCounterGooglePrivacyDlpV2HybridContentItem--;
  return o;
}

void checkGooglePrivacyDlpV2HybridContentItem(
    api.GooglePrivacyDlpV2HybridContentItem o) {
  buildCounterGooglePrivacyDlpV2HybridContentItem++;
  if (buildCounterGooglePrivacyDlpV2HybridContentItem < 3) {
    checkGooglePrivacyDlpV2HybridFindingDetails(
        o.findingDetails as api.GooglePrivacyDlpV2HybridFindingDetails);
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
  }
  buildCounterGooglePrivacyDlpV2HybridContentItem--;
}

core.Map<core.String, core.String> buildUnnamed2900() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2900(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2HybridFindingDetails = 0;
api.GooglePrivacyDlpV2HybridFindingDetails
    buildGooglePrivacyDlpV2HybridFindingDetails() {
  var o = api.GooglePrivacyDlpV2HybridFindingDetails();
  buildCounterGooglePrivacyDlpV2HybridFindingDetails++;
  if (buildCounterGooglePrivacyDlpV2HybridFindingDetails < 3) {
    o.containerDetails = buildGooglePrivacyDlpV2Container();
    o.fileOffset = 'foo';
    o.labels = buildUnnamed2900();
    o.rowOffset = 'foo';
    o.tableOptions = buildGooglePrivacyDlpV2TableOptions();
  }
  buildCounterGooglePrivacyDlpV2HybridFindingDetails--;
  return o;
}

void checkGooglePrivacyDlpV2HybridFindingDetails(
    api.GooglePrivacyDlpV2HybridFindingDetails o) {
  buildCounterGooglePrivacyDlpV2HybridFindingDetails++;
  if (buildCounterGooglePrivacyDlpV2HybridFindingDetails < 3) {
    checkGooglePrivacyDlpV2Container(
        o.containerDetails as api.GooglePrivacyDlpV2Container);
    unittest.expect(o.fileOffset, unittest.equals('foo'));
    checkUnnamed2900(o.labels);
    unittest.expect(o.rowOffset, unittest.equals('foo'));
    checkGooglePrivacyDlpV2TableOptions(
        o.tableOptions as api.GooglePrivacyDlpV2TableOptions);
  }
  buildCounterGooglePrivacyDlpV2HybridFindingDetails--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest = 0;
api.GooglePrivacyDlpV2HybridInspectDlpJobRequest
    buildGooglePrivacyDlpV2HybridInspectDlpJobRequest() {
  var o = api.GooglePrivacyDlpV2HybridInspectDlpJobRequest();
  buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest < 3) {
    o.hybridItem = buildGooglePrivacyDlpV2HybridContentItem();
  }
  buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest--;
  return o;
}

void checkGooglePrivacyDlpV2HybridInspectDlpJobRequest(
    api.GooglePrivacyDlpV2HybridInspectDlpJobRequest o) {
  buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest < 3) {
    checkGooglePrivacyDlpV2HybridContentItem(
        o.hybridItem as api.GooglePrivacyDlpV2HybridContentItem);
  }
  buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest = 0;
api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest() {
  var o = api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest < 3) {
    o.hybridItem = buildGooglePrivacyDlpV2HybridContentItem();
  }
  buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest--;
  return o;
}

void checkGooglePrivacyDlpV2HybridInspectJobTriggerRequest(
    api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2HybridContentItem(
        o.hybridItem as api.GooglePrivacyDlpV2HybridContentItem);
  }
  buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectResponse = 0;
api.GooglePrivacyDlpV2HybridInspectResponse
    buildGooglePrivacyDlpV2HybridInspectResponse() {
  var o = api.GooglePrivacyDlpV2HybridInspectResponse();
  buildCounterGooglePrivacyDlpV2HybridInspectResponse++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectResponse < 3) {}
  buildCounterGooglePrivacyDlpV2HybridInspectResponse--;
  return o;
}

void checkGooglePrivacyDlpV2HybridInspectResponse(
    api.GooglePrivacyDlpV2HybridInspectResponse o) {
  buildCounterGooglePrivacyDlpV2HybridInspectResponse++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectResponse < 3) {}
  buildCounterGooglePrivacyDlpV2HybridInspectResponse--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectStatistics = 0;
api.GooglePrivacyDlpV2HybridInspectStatistics
    buildGooglePrivacyDlpV2HybridInspectStatistics() {
  var o = api.GooglePrivacyDlpV2HybridInspectStatistics();
  buildCounterGooglePrivacyDlpV2HybridInspectStatistics++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectStatistics < 3) {
    o.abortedCount = 'foo';
    o.pendingCount = 'foo';
    o.processedCount = 'foo';
  }
  buildCounterGooglePrivacyDlpV2HybridInspectStatistics--;
  return o;
}

void checkGooglePrivacyDlpV2HybridInspectStatistics(
    api.GooglePrivacyDlpV2HybridInspectStatistics o) {
  buildCounterGooglePrivacyDlpV2HybridInspectStatistics++;
  if (buildCounterGooglePrivacyDlpV2HybridInspectStatistics < 3) {
    unittest.expect(o.abortedCount, unittest.equals('foo'));
    unittest.expect(o.pendingCount, unittest.equals('foo'));
    unittest.expect(o.processedCount, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2HybridInspectStatistics--;
}

core.Map<core.String, core.String> buildUnnamed2901() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed2901(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed2902() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2902(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2HybridOptions = 0;
api.GooglePrivacyDlpV2HybridOptions buildGooglePrivacyDlpV2HybridOptions() {
  var o = api.GooglePrivacyDlpV2HybridOptions();
  buildCounterGooglePrivacyDlpV2HybridOptions++;
  if (buildCounterGooglePrivacyDlpV2HybridOptions < 3) {
    o.description = 'foo';
    o.labels = buildUnnamed2901();
    o.requiredFindingLabelKeys = buildUnnamed2902();
    o.tableOptions = buildGooglePrivacyDlpV2TableOptions();
  }
  buildCounterGooglePrivacyDlpV2HybridOptions--;
  return o;
}

void checkGooglePrivacyDlpV2HybridOptions(
    api.GooglePrivacyDlpV2HybridOptions o) {
  buildCounterGooglePrivacyDlpV2HybridOptions++;
  if (buildCounterGooglePrivacyDlpV2HybridOptions < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed2901(o.labels);
    checkUnnamed2902(o.requiredFindingLabelKeys);
    checkGooglePrivacyDlpV2TableOptions(
        o.tableOptions as api.GooglePrivacyDlpV2TableOptions);
  }
  buildCounterGooglePrivacyDlpV2HybridOptions--;
}

core.List<api.GooglePrivacyDlpV2BoundingBox> buildUnnamed2903() {
  var o = <api.GooglePrivacyDlpV2BoundingBox>[];
  o.add(buildGooglePrivacyDlpV2BoundingBox());
  o.add(buildGooglePrivacyDlpV2BoundingBox());
  return o;
}

void checkUnnamed2903(core.List<api.GooglePrivacyDlpV2BoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2BoundingBox(o[0] as api.GooglePrivacyDlpV2BoundingBox);
  checkGooglePrivacyDlpV2BoundingBox(o[1] as api.GooglePrivacyDlpV2BoundingBox);
}

core.int buildCounterGooglePrivacyDlpV2ImageLocation = 0;
api.GooglePrivacyDlpV2ImageLocation buildGooglePrivacyDlpV2ImageLocation() {
  var o = api.GooglePrivacyDlpV2ImageLocation();
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    o.boundingBoxes = buildUnnamed2903();
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
  return o;
}

void checkGooglePrivacyDlpV2ImageLocation(
    api.GooglePrivacyDlpV2ImageLocation o) {
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    checkUnnamed2903(o.boundingBoxes);
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
}

core.int buildCounterGooglePrivacyDlpV2ImageRedactionConfig = 0;
api.GooglePrivacyDlpV2ImageRedactionConfig
    buildGooglePrivacyDlpV2ImageRedactionConfig() {
  var o = api.GooglePrivacyDlpV2ImageRedactionConfig();
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2ImageRedactionConfig < 3) {
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.redactAllText = true;
    o.redactionColor = buildGooglePrivacyDlpV2Color();
  }
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig--;
  return o;
}

void checkGooglePrivacyDlpV2ImageRedactionConfig(
    api.GooglePrivacyDlpV2ImageRedactionConfig o) {
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig++;
  if (buildCounterGooglePrivacyDlpV2ImageRedactionConfig < 3) {
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
    unittest.expect(o.redactAllText, unittest.isTrue);
    checkGooglePrivacyDlpV2Color(
        o.redactionColor as api.GooglePrivacyDlpV2Color);
  }
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InfoType = 0;
api.GooglePrivacyDlpV2InfoType buildGooglePrivacyDlpV2InfoType() {
  var o = api.GooglePrivacyDlpV2InfoType();
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
  return o;
}

void checkGooglePrivacyDlpV2InfoType(api.GooglePrivacyDlpV2InfoType o) {
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
}

core.List<core.String> buildUnnamed2904() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2904(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeDescription = 0;
api.GooglePrivacyDlpV2InfoTypeDescription
    buildGooglePrivacyDlpV2InfoTypeDescription() {
  var o = api.GooglePrivacyDlpV2InfoTypeDescription();
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.supportedBy = buildUnnamed2904();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeDescription(
    api.GooglePrivacyDlpV2InfoTypeDescription o) {
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2904(o.supportedBy);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeLimit = 0;
api.GooglePrivacyDlpV2InfoTypeLimit buildGooglePrivacyDlpV2InfoTypeLimit() {
  var o = api.GooglePrivacyDlpV2InfoTypeLimit();
  buildCounterGooglePrivacyDlpV2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeLimit < 3) {
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.maxFindings = 42;
  }
  buildCounterGooglePrivacyDlpV2InfoTypeLimit--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeLimit(
    api.GooglePrivacyDlpV2InfoTypeLimit o) {
  buildCounterGooglePrivacyDlpV2InfoTypeLimit++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeLimit < 3) {
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
    unittest.expect(o.maxFindings, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2InfoTypeLimit--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeStats = 0;
api.GooglePrivacyDlpV2InfoTypeStats buildGooglePrivacyDlpV2InfoTypeStats() {
  var o = api.GooglePrivacyDlpV2InfoTypeStats();
  buildCounterGooglePrivacyDlpV2InfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeStats < 3) {
    o.count = 'foo';
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeStats--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeStats(
    api.GooglePrivacyDlpV2InfoTypeStats o) {
  buildCounterGooglePrivacyDlpV2InfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeStats < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeStats--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed2905() {
  var o = <api.GooglePrivacyDlpV2InfoType>[];
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

void checkUnnamed2905(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0] as api.GooglePrivacyDlpV2InfoType);
  checkGooglePrivacyDlpV2InfoType(o[1] as api.GooglePrivacyDlpV2InfoType);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformation = 0;
api.GooglePrivacyDlpV2InfoTypeTransformation
    buildGooglePrivacyDlpV2InfoTypeTransformation() {
  var o = api.GooglePrivacyDlpV2InfoTypeTransformation();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformation < 3) {
    o.infoTypes = buildUnnamed2905();
    o.primitiveTransformation =
        buildGooglePrivacyDlpV2PrimitiveTransformation();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeTransformation(
    api.GooglePrivacyDlpV2InfoTypeTransformation o) {
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformation < 3) {
    checkUnnamed2905(o.infoTypes);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation
        as api.GooglePrivacyDlpV2PrimitiveTransformation);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeTransformation> buildUnnamed2906() {
  var o = <api.GooglePrivacyDlpV2InfoTypeTransformation>[];
  o.add(buildGooglePrivacyDlpV2InfoTypeTransformation());
  o.add(buildGooglePrivacyDlpV2InfoTypeTransformation());
  return o;
}

void checkUnnamed2906(
    core.List<api.GooglePrivacyDlpV2InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeTransformation(
      o[0] as api.GooglePrivacyDlpV2InfoTypeTransformation);
  checkGooglePrivacyDlpV2InfoTypeTransformation(
      o[1] as api.GooglePrivacyDlpV2InfoTypeTransformation);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformations = 0;
api.GooglePrivacyDlpV2InfoTypeTransformations
    buildGooglePrivacyDlpV2InfoTypeTransformations() {
  var o = api.GooglePrivacyDlpV2InfoTypeTransformations();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    o.transformations = buildUnnamed2906();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeTransformations(
    api.GooglePrivacyDlpV2InfoTypeTransformations o) {
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    checkUnnamed2906(o.transformations);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
}

core.List<core.String> buildUnnamed2907() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2907(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.GooglePrivacyDlpV2CustomInfoType> buildUnnamed2908() {
  var o = <api.GooglePrivacyDlpV2CustomInfoType>[];
  o.add(buildGooglePrivacyDlpV2CustomInfoType());
  o.add(buildGooglePrivacyDlpV2CustomInfoType());
  return o;
}

void checkUnnamed2908(core.List<api.GooglePrivacyDlpV2CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CustomInfoType(
      o[0] as api.GooglePrivacyDlpV2CustomInfoType);
  checkGooglePrivacyDlpV2CustomInfoType(
      o[1] as api.GooglePrivacyDlpV2CustomInfoType);
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed2909() {
  var o = <api.GooglePrivacyDlpV2InfoType>[];
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

void checkUnnamed2909(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0] as api.GooglePrivacyDlpV2InfoType);
  checkGooglePrivacyDlpV2InfoType(o[1] as api.GooglePrivacyDlpV2InfoType);
}

core.List<api.GooglePrivacyDlpV2InspectionRuleSet> buildUnnamed2910() {
  var o = <api.GooglePrivacyDlpV2InspectionRuleSet>[];
  o.add(buildGooglePrivacyDlpV2InspectionRuleSet());
  o.add(buildGooglePrivacyDlpV2InspectionRuleSet());
  return o;
}

void checkUnnamed2910(core.List<api.GooglePrivacyDlpV2InspectionRuleSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRuleSet(
      o[0] as api.GooglePrivacyDlpV2InspectionRuleSet);
  checkGooglePrivacyDlpV2InspectionRuleSet(
      o[1] as api.GooglePrivacyDlpV2InspectionRuleSet);
}

core.int buildCounterGooglePrivacyDlpV2InspectConfig = 0;
api.GooglePrivacyDlpV2InspectConfig buildGooglePrivacyDlpV2InspectConfig() {
  var o = api.GooglePrivacyDlpV2InspectConfig();
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    o.contentOptions = buildUnnamed2907();
    o.customInfoTypes = buildUnnamed2908();
    o.excludeInfoTypes = true;
    o.includeQuote = true;
    o.infoTypes = buildUnnamed2909();
    o.limits = buildGooglePrivacyDlpV2FindingLimits();
    o.minLikelihood = 'foo';
    o.ruleSet = buildUnnamed2910();
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
  return o;
}

void checkGooglePrivacyDlpV2InspectConfig(
    api.GooglePrivacyDlpV2InspectConfig o) {
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    checkUnnamed2907(o.contentOptions);
    checkUnnamed2908(o.customInfoTypes);
    unittest.expect(o.excludeInfoTypes, unittest.isTrue);
    unittest.expect(o.includeQuote, unittest.isTrue);
    checkUnnamed2909(o.infoTypes);
    checkGooglePrivacyDlpV2FindingLimits(
        o.limits as api.GooglePrivacyDlpV2FindingLimits);
    unittest.expect(o.minLikelihood, unittest.equals('foo'));
    checkUnnamed2910(o.ruleSet);
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentRequest = 0;
api.GooglePrivacyDlpV2InspectContentRequest
    buildGooglePrivacyDlpV2InspectContentRequest() {
  var o = api.GooglePrivacyDlpV2InspectContentRequest();
  buildCounterGooglePrivacyDlpV2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2InspectContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = 'foo';
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.locationId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2InspectContentRequest--;
  return o;
}

void checkGooglePrivacyDlpV2InspectContentRequest(
    api.GooglePrivacyDlpV2InspectContentRequest o) {
  buildCounterGooglePrivacyDlpV2InspectContentRequest++;
  if (buildCounterGooglePrivacyDlpV2InspectContentRequest < 3) {
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
    unittest.expect(o.locationId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2InspectContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentResponse = 0;
api.GooglePrivacyDlpV2InspectContentResponse
    buildGooglePrivacyDlpV2InspectContentResponse() {
  var o = api.GooglePrivacyDlpV2InspectContentResponse();
  buildCounterGooglePrivacyDlpV2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2InspectContentResponse < 3) {
    o.result = buildGooglePrivacyDlpV2InspectResult();
  }
  buildCounterGooglePrivacyDlpV2InspectContentResponse--;
  return o;
}

void checkGooglePrivacyDlpV2InspectContentResponse(
    api.GooglePrivacyDlpV2InspectContentResponse o) {
  buildCounterGooglePrivacyDlpV2InspectContentResponse++;
  if (buildCounterGooglePrivacyDlpV2InspectContentResponse < 3) {
    checkGooglePrivacyDlpV2InspectResult(
        o.result as api.GooglePrivacyDlpV2InspectResult);
  }
  buildCounterGooglePrivacyDlpV2InspectContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2InspectDataSourceDetails = 0;
api.GooglePrivacyDlpV2InspectDataSourceDetails
    buildGooglePrivacyDlpV2InspectDataSourceDetails() {
  var o = api.GooglePrivacyDlpV2InspectDataSourceDetails();
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2InspectDataSourceDetails < 3) {
    o.requestedOptions = buildGooglePrivacyDlpV2RequestedOptions();
    o.result = buildGooglePrivacyDlpV2Result();
  }
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails--;
  return o;
}

void checkGooglePrivacyDlpV2InspectDataSourceDetails(
    api.GooglePrivacyDlpV2InspectDataSourceDetails o) {
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails++;
  if (buildCounterGooglePrivacyDlpV2InspectDataSourceDetails < 3) {
    checkGooglePrivacyDlpV2RequestedOptions(
        o.requestedOptions as api.GooglePrivacyDlpV2RequestedOptions);
    checkGooglePrivacyDlpV2Result(o.result as api.GooglePrivacyDlpV2Result);
  }
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails--;
}

core.List<api.GooglePrivacyDlpV2Action> buildUnnamed2911() {
  var o = <api.GooglePrivacyDlpV2Action>[];
  o.add(buildGooglePrivacyDlpV2Action());
  o.add(buildGooglePrivacyDlpV2Action());
  return o;
}

void checkUnnamed2911(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0] as api.GooglePrivacyDlpV2Action);
  checkGooglePrivacyDlpV2Action(o[1] as api.GooglePrivacyDlpV2Action);
}

core.int buildCounterGooglePrivacyDlpV2InspectJobConfig = 0;
api.GooglePrivacyDlpV2InspectJobConfig
    buildGooglePrivacyDlpV2InspectJobConfig() {
  var o = api.GooglePrivacyDlpV2InspectJobConfig();
  buildCounterGooglePrivacyDlpV2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectJobConfig < 3) {
    o.actions = buildUnnamed2911();
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = 'foo';
    o.storageConfig = buildGooglePrivacyDlpV2StorageConfig();
  }
  buildCounterGooglePrivacyDlpV2InspectJobConfig--;
  return o;
}

void checkGooglePrivacyDlpV2InspectJobConfig(
    api.GooglePrivacyDlpV2InspectJobConfig o) {
  buildCounterGooglePrivacyDlpV2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectJobConfig < 3) {
    checkUnnamed2911(o.actions);
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2StorageConfig(
        o.storageConfig as api.GooglePrivacyDlpV2StorageConfig);
  }
  buildCounterGooglePrivacyDlpV2InspectJobConfig--;
}

core.List<api.GooglePrivacyDlpV2Finding> buildUnnamed2912() {
  var o = <api.GooglePrivacyDlpV2Finding>[];
  o.add(buildGooglePrivacyDlpV2Finding());
  o.add(buildGooglePrivacyDlpV2Finding());
  return o;
}

void checkUnnamed2912(core.List<api.GooglePrivacyDlpV2Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Finding(o[0] as api.GooglePrivacyDlpV2Finding);
  checkGooglePrivacyDlpV2Finding(o[1] as api.GooglePrivacyDlpV2Finding);
}

core.int buildCounterGooglePrivacyDlpV2InspectResult = 0;
api.GooglePrivacyDlpV2InspectResult buildGooglePrivacyDlpV2InspectResult() {
  var o = api.GooglePrivacyDlpV2InspectResult();
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    o.findings = buildUnnamed2912();
    o.findingsTruncated = true;
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
  return o;
}

void checkGooglePrivacyDlpV2InspectResult(
    api.GooglePrivacyDlpV2InspectResult o) {
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    checkUnnamed2912(o.findings);
    unittest.expect(o.findingsTruncated, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
}

core.int buildCounterGooglePrivacyDlpV2InspectTemplate = 0;
api.GooglePrivacyDlpV2InspectTemplate buildGooglePrivacyDlpV2InspectTemplate() {
  var o = api.GooglePrivacyDlpV2InspectTemplate();
  buildCounterGooglePrivacyDlpV2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2InspectTemplate < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGooglePrivacyDlpV2InspectTemplate--;
  return o;
}

void checkGooglePrivacyDlpV2InspectTemplate(
    api.GooglePrivacyDlpV2InspectTemplate o) {
  buildCounterGooglePrivacyDlpV2InspectTemplate++;
  if (buildCounterGooglePrivacyDlpV2InspectTemplate < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2InspectTemplate--;
}

core.int buildCounterGooglePrivacyDlpV2InspectionRule = 0;
api.GooglePrivacyDlpV2InspectionRule buildGooglePrivacyDlpV2InspectionRule() {
  var o = api.GooglePrivacyDlpV2InspectionRule();
  buildCounterGooglePrivacyDlpV2InspectionRule++;
  if (buildCounterGooglePrivacyDlpV2InspectionRule < 3) {
    o.exclusionRule = buildGooglePrivacyDlpV2ExclusionRule();
    o.hotwordRule = buildGooglePrivacyDlpV2HotwordRule();
  }
  buildCounterGooglePrivacyDlpV2InspectionRule--;
  return o;
}

void checkGooglePrivacyDlpV2InspectionRule(
    api.GooglePrivacyDlpV2InspectionRule o) {
  buildCounterGooglePrivacyDlpV2InspectionRule++;
  if (buildCounterGooglePrivacyDlpV2InspectionRule < 3) {
    checkGooglePrivacyDlpV2ExclusionRule(
        o.exclusionRule as api.GooglePrivacyDlpV2ExclusionRule);
    checkGooglePrivacyDlpV2HotwordRule(
        o.hotwordRule as api.GooglePrivacyDlpV2HotwordRule);
  }
  buildCounterGooglePrivacyDlpV2InspectionRule--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed2913() {
  var o = <api.GooglePrivacyDlpV2InfoType>[];
  o.add(buildGooglePrivacyDlpV2InfoType());
  o.add(buildGooglePrivacyDlpV2InfoType());
  return o;
}

void checkUnnamed2913(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0] as api.GooglePrivacyDlpV2InfoType);
  checkGooglePrivacyDlpV2InfoType(o[1] as api.GooglePrivacyDlpV2InfoType);
}

core.List<api.GooglePrivacyDlpV2InspectionRule> buildUnnamed2914() {
  var o = <api.GooglePrivacyDlpV2InspectionRule>[];
  o.add(buildGooglePrivacyDlpV2InspectionRule());
  o.add(buildGooglePrivacyDlpV2InspectionRule());
  return o;
}

void checkUnnamed2914(core.List<api.GooglePrivacyDlpV2InspectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRule(
      o[0] as api.GooglePrivacyDlpV2InspectionRule);
  checkGooglePrivacyDlpV2InspectionRule(
      o[1] as api.GooglePrivacyDlpV2InspectionRule);
}

core.int buildCounterGooglePrivacyDlpV2InspectionRuleSet = 0;
api.GooglePrivacyDlpV2InspectionRuleSet
    buildGooglePrivacyDlpV2InspectionRuleSet() {
  var o = api.GooglePrivacyDlpV2InspectionRuleSet();
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    o.infoTypes = buildUnnamed2913();
    o.rules = buildUnnamed2914();
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
  return o;
}

void checkGooglePrivacyDlpV2InspectionRuleSet(
    api.GooglePrivacyDlpV2InspectionRuleSet o) {
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    checkUnnamed2913(o.infoTypes);
    checkUnnamed2914(o.rules);
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
}

core.int buildCounterGooglePrivacyDlpV2JobNotificationEmails = 0;
api.GooglePrivacyDlpV2JobNotificationEmails
    buildGooglePrivacyDlpV2JobNotificationEmails() {
  var o = api.GooglePrivacyDlpV2JobNotificationEmails();
  buildCounterGooglePrivacyDlpV2JobNotificationEmails++;
  if (buildCounterGooglePrivacyDlpV2JobNotificationEmails < 3) {}
  buildCounterGooglePrivacyDlpV2JobNotificationEmails--;
  return o;
}

void checkGooglePrivacyDlpV2JobNotificationEmails(
    api.GooglePrivacyDlpV2JobNotificationEmails o) {
  buildCounterGooglePrivacyDlpV2JobNotificationEmails++;
  if (buildCounterGooglePrivacyDlpV2JobNotificationEmails < 3) {}
  buildCounterGooglePrivacyDlpV2JobNotificationEmails--;
}

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed2915() {
  var o = <api.GooglePrivacyDlpV2Error>[];
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

void checkUnnamed2915(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0] as api.GooglePrivacyDlpV2Error);
  checkGooglePrivacyDlpV2Error(o[1] as api.GooglePrivacyDlpV2Error);
}

core.List<api.GooglePrivacyDlpV2Trigger> buildUnnamed2916() {
  var o = <api.GooglePrivacyDlpV2Trigger>[];
  o.add(buildGooglePrivacyDlpV2Trigger());
  o.add(buildGooglePrivacyDlpV2Trigger());
  return o;
}

void checkUnnamed2916(core.List<api.GooglePrivacyDlpV2Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Trigger(o[0] as api.GooglePrivacyDlpV2Trigger);
  checkGooglePrivacyDlpV2Trigger(o[1] as api.GooglePrivacyDlpV2Trigger);
}

core.int buildCounterGooglePrivacyDlpV2JobTrigger = 0;
api.GooglePrivacyDlpV2JobTrigger buildGooglePrivacyDlpV2JobTrigger() {
  var o = api.GooglePrivacyDlpV2JobTrigger();
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed2915();
    o.inspectJob = buildGooglePrivacyDlpV2InspectJobConfig();
    o.lastRunTime = 'foo';
    o.name = 'foo';
    o.status = 'foo';
    o.triggers = buildUnnamed2916();
    o.updateTime = 'foo';
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
  return o;
}

void checkGooglePrivacyDlpV2JobTrigger(api.GooglePrivacyDlpV2JobTrigger o) {
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed2915(o.errors);
    checkGooglePrivacyDlpV2InspectJobConfig(
        o.inspectJob as api.GooglePrivacyDlpV2InspectJobConfig);
    unittest.expect(o.lastRunTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed2916(o.triggers);
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2917() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2917(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityConfig = 0;
api.GooglePrivacyDlpV2KAnonymityConfig
    buildGooglePrivacyDlpV2KAnonymityConfig() {
  var o = api.GooglePrivacyDlpV2KAnonymityConfig();
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    o.entityId = buildGooglePrivacyDlpV2EntityId();
    o.quasiIds = buildUnnamed2917();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityConfig(
    api.GooglePrivacyDlpV2KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2EntityId(
        o.entityId as api.GooglePrivacyDlpV2EntityId);
    checkUnnamed2917(o.quasiIds);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2918() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2918(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass = 0;
api.GooglePrivacyDlpV2KAnonymityEquivalenceClass
    buildGooglePrivacyDlpV2KAnonymityEquivalenceClass() {
  var o = api.GooglePrivacyDlpV2KAnonymityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    o.equivalenceClassSize = 'foo';
    o.quasiIdsValues = buildUnnamed2918();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    checkUnnamed2918(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
}

core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass> buildUnnamed2919() {
  var o = <api.GooglePrivacyDlpV2KAnonymityEquivalenceClass>[];
  o.add(buildGooglePrivacyDlpV2KAnonymityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2KAnonymityEquivalenceClass());
  return o;
}

void checkUnnamed2919(
    core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
      o[0] as api.GooglePrivacyDlpV2KAnonymityEquivalenceClass);
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
      o[1] as api.GooglePrivacyDlpV2KAnonymityEquivalenceClass);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket = 0;
api.GooglePrivacyDlpV2KAnonymityHistogramBucket
    buildGooglePrivacyDlpV2KAnonymityHistogramBucket() {
  var o = api.GooglePrivacyDlpV2KAnonymityHistogramBucket();
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed2919();
    o.equivalenceClassSizeLowerBound = 'foo';
    o.equivalenceClassSizeUpperBound = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityHistogramBucket(
    api.GooglePrivacyDlpV2KAnonymityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed2919(o.bucketValues);
    unittest.expect(o.equivalenceClassSizeLowerBound, unittest.equals('foo'));
    unittest.expect(o.equivalenceClassSizeUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket> buildUnnamed2920() {
  var o = <api.GooglePrivacyDlpV2KAnonymityHistogramBucket>[];
  o.add(buildGooglePrivacyDlpV2KAnonymityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2KAnonymityHistogramBucket());
  return o;
}

void checkUnnamed2920(
    core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(
      o[0] as api.GooglePrivacyDlpV2KAnonymityHistogramBucket);
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(
      o[1] as api.GooglePrivacyDlpV2KAnonymityHistogramBucket);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityResult = 0;
api.GooglePrivacyDlpV2KAnonymityResult
    buildGooglePrivacyDlpV2KAnonymityResult() {
  var o = api.GooglePrivacyDlpV2KAnonymityResult();
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    o.equivalenceClassHistogramBuckets = buildUnnamed2920();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityResult(
    api.GooglePrivacyDlpV2KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    checkUnnamed2920(o.equivalenceClassHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
}

core.List<api.GooglePrivacyDlpV2AuxiliaryTable> buildUnnamed2921() {
  var o = <api.GooglePrivacyDlpV2AuxiliaryTable>[];
  o.add(buildGooglePrivacyDlpV2AuxiliaryTable());
  o.add(buildGooglePrivacyDlpV2AuxiliaryTable());
  return o;
}

void checkUnnamed2921(core.List<api.GooglePrivacyDlpV2AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2AuxiliaryTable(
      o[0] as api.GooglePrivacyDlpV2AuxiliaryTable);
  checkGooglePrivacyDlpV2AuxiliaryTable(
      o[1] as api.GooglePrivacyDlpV2AuxiliaryTable);
}

core.List<api.GooglePrivacyDlpV2TaggedField> buildUnnamed2922() {
  var o = <api.GooglePrivacyDlpV2TaggedField>[];
  o.add(buildGooglePrivacyDlpV2TaggedField());
  o.add(buildGooglePrivacyDlpV2TaggedField());
  return o;
}

void checkUnnamed2922(core.List<api.GooglePrivacyDlpV2TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TaggedField(o[0] as api.GooglePrivacyDlpV2TaggedField);
  checkGooglePrivacyDlpV2TaggedField(o[1] as api.GooglePrivacyDlpV2TaggedField);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationConfig = 0;
api.GooglePrivacyDlpV2KMapEstimationConfig
    buildGooglePrivacyDlpV2KMapEstimationConfig() {
  var o = api.GooglePrivacyDlpV2KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed2921();
    o.quasiIds = buildUnnamed2922();
    o.regionCode = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationConfig(
    api.GooglePrivacyDlpV2KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    checkUnnamed2921(o.auxiliaryTables);
    checkUnnamed2922(o.quasiIds);
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
}

core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues>
    buildUnnamed2923() {
  var o = <api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues>[];
  o.add(buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues());
  o.add(buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues());
  return o;
}

void checkUnnamed2923(
    core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
      o[0] as api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues);
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
      o[1] as api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket = 0;
api.GooglePrivacyDlpV2KMapEstimationHistogramBucket
    buildGooglePrivacyDlpV2KMapEstimationHistogramBucket() {
  var o = api.GooglePrivacyDlpV2KMapEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed2923();
    o.maxAnonymity = 'foo';
    o.minAnonymity = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(
    api.GooglePrivacyDlpV2KMapEstimationHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed2923(o.bucketValues);
    unittest.expect(o.maxAnonymity, unittest.equals('foo'));
    unittest.expect(o.minAnonymity, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2924() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2924(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues = 0;
api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues() {
  var o = api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    o.estimatedAnonymity = 'foo';
    o.quasiIdsValues = buildUnnamed2924();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    unittest.expect(o.estimatedAnonymity, unittest.equals('foo'));
    checkUnnamed2924(o.quasiIdsValues);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
}

core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket>
    buildUnnamed2925() {
  var o = <api.GooglePrivacyDlpV2KMapEstimationHistogramBucket>[];
  o.add(buildGooglePrivacyDlpV2KMapEstimationHistogramBucket());
  o.add(buildGooglePrivacyDlpV2KMapEstimationHistogramBucket());
  return o;
}

void checkUnnamed2925(
    core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(
      o[0] as api.GooglePrivacyDlpV2KMapEstimationHistogramBucket);
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(
      o[1] as api.GooglePrivacyDlpV2KMapEstimationHistogramBucket);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationResult = 0;
api.GooglePrivacyDlpV2KMapEstimationResult
    buildGooglePrivacyDlpV2KMapEstimationResult() {
  var o = api.GooglePrivacyDlpV2KMapEstimationResult();
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    o.kMapEstimationHistogram = buildUnnamed2925();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationResult(
    api.GooglePrivacyDlpV2KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    checkUnnamed2925(o.kMapEstimationHistogram);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
}

core.List<api.GooglePrivacyDlpV2PathElement> buildUnnamed2926() {
  var o = <api.GooglePrivacyDlpV2PathElement>[];
  o.add(buildGooglePrivacyDlpV2PathElement());
  o.add(buildGooglePrivacyDlpV2PathElement());
  return o;
}

void checkUnnamed2926(core.List<api.GooglePrivacyDlpV2PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2PathElement(o[0] as api.GooglePrivacyDlpV2PathElement);
  checkGooglePrivacyDlpV2PathElement(o[1] as api.GooglePrivacyDlpV2PathElement);
}

core.int buildCounterGooglePrivacyDlpV2Key = 0;
api.GooglePrivacyDlpV2Key buildGooglePrivacyDlpV2Key() {
  var o = api.GooglePrivacyDlpV2Key();
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    o.partitionId = buildGooglePrivacyDlpV2PartitionId();
    o.path = buildUnnamed2926();
  }
  buildCounterGooglePrivacyDlpV2Key--;
  return o;
}

void checkGooglePrivacyDlpV2Key(api.GooglePrivacyDlpV2Key o) {
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    checkGooglePrivacyDlpV2PartitionId(
        o.partitionId as api.GooglePrivacyDlpV2PartitionId);
    checkUnnamed2926(o.path);
  }
  buildCounterGooglePrivacyDlpV2Key--;
}

core.int buildCounterGooglePrivacyDlpV2KindExpression = 0;
api.GooglePrivacyDlpV2KindExpression buildGooglePrivacyDlpV2KindExpression() {
  var o = api.GooglePrivacyDlpV2KindExpression();
  buildCounterGooglePrivacyDlpV2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2KindExpression < 3) {
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KindExpression--;
  return o;
}

void checkGooglePrivacyDlpV2KindExpression(
    api.GooglePrivacyDlpV2KindExpression o) {
  buildCounterGooglePrivacyDlpV2KindExpression++;
  if (buildCounterGooglePrivacyDlpV2KindExpression < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KindExpression--;
}

core.int buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey = 0;
api.GooglePrivacyDlpV2KmsWrappedCryptoKey
    buildGooglePrivacyDlpV2KmsWrappedCryptoKey() {
  var o = api.GooglePrivacyDlpV2KmsWrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey < 3) {
    o.cryptoKeyName = 'foo';
    o.wrappedKey = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey--;
  return o;
}

void checkGooglePrivacyDlpV2KmsWrappedCryptoKey(
    api.GooglePrivacyDlpV2KmsWrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey < 3) {
    unittest.expect(o.cryptoKeyName, unittest.equals('foo'));
    unittest.expect(o.wrappedKey, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2927() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2927(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityConfig = 0;
api.GooglePrivacyDlpV2LDiversityConfig
    buildGooglePrivacyDlpV2LDiversityConfig() {
  var o = api.GooglePrivacyDlpV2LDiversityConfig();
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed2927();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityConfig(
    api.GooglePrivacyDlpV2LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    checkUnnamed2927(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(
        o.sensitiveAttribute as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2928() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2928(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.List<api.GooglePrivacyDlpV2ValueFrequency> buildUnnamed2929() {
  var o = <api.GooglePrivacyDlpV2ValueFrequency>[];
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  o.add(buildGooglePrivacyDlpV2ValueFrequency());
  return o;
}

void checkUnnamed2929(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(
      o[0] as api.GooglePrivacyDlpV2ValueFrequency);
  checkGooglePrivacyDlpV2ValueFrequency(
      o[1] as api.GooglePrivacyDlpV2ValueFrequency);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass = 0;
api.GooglePrivacyDlpV2LDiversityEquivalenceClass
    buildGooglePrivacyDlpV2LDiversityEquivalenceClass() {
  var o = api.GooglePrivacyDlpV2LDiversityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    o.equivalenceClassSize = 'foo';
    o.numDistinctSensitiveValues = 'foo';
    o.quasiIdsValues = buildUnnamed2928();
    o.topSensitiveValues = buildUnnamed2929();
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
    api.GooglePrivacyDlpV2LDiversityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    unittest.expect(o.equivalenceClassSize, unittest.equals('foo'));
    unittest.expect(o.numDistinctSensitiveValues, unittest.equals('foo'));
    checkUnnamed2928(o.quasiIdsValues);
    checkUnnamed2929(o.topSensitiveValues);
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
}

core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass> buildUnnamed2930() {
  var o = <api.GooglePrivacyDlpV2LDiversityEquivalenceClass>[];
  o.add(buildGooglePrivacyDlpV2LDiversityEquivalenceClass());
  o.add(buildGooglePrivacyDlpV2LDiversityEquivalenceClass());
  return o;
}

void checkUnnamed2930(
    core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
      o[0] as api.GooglePrivacyDlpV2LDiversityEquivalenceClass);
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
      o[1] as api.GooglePrivacyDlpV2LDiversityEquivalenceClass);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket = 0;
api.GooglePrivacyDlpV2LDiversityHistogramBucket
    buildGooglePrivacyDlpV2LDiversityHistogramBucket() {
  var o = api.GooglePrivacyDlpV2LDiversityHistogramBucket();
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed2930();
    o.sensitiveValueFrequencyLowerBound = 'foo';
    o.sensitiveValueFrequencyUpperBound = 'foo';
  }
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityHistogramBucket(
    api.GooglePrivacyDlpV2LDiversityHistogramBucket o) {
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket < 3) {
    unittest.expect(o.bucketSize, unittest.equals('foo'));
    unittest.expect(o.bucketValueCount, unittest.equals('foo'));
    checkUnnamed2930(o.bucketValues);
    unittest.expect(
        o.sensitiveValueFrequencyLowerBound, unittest.equals('foo'));
    unittest.expect(
        o.sensitiveValueFrequencyUpperBound, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket> buildUnnamed2931() {
  var o = <api.GooglePrivacyDlpV2LDiversityHistogramBucket>[];
  o.add(buildGooglePrivacyDlpV2LDiversityHistogramBucket());
  o.add(buildGooglePrivacyDlpV2LDiversityHistogramBucket());
  return o;
}

void checkUnnamed2931(
    core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(
      o[0] as api.GooglePrivacyDlpV2LDiversityHistogramBucket);
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(
      o[1] as api.GooglePrivacyDlpV2LDiversityHistogramBucket);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityResult = 0;
api.GooglePrivacyDlpV2LDiversityResult
    buildGooglePrivacyDlpV2LDiversityResult() {
  var o = api.GooglePrivacyDlpV2LDiversityResult();
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed2931();
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityResult(
    api.GooglePrivacyDlpV2LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    checkUnnamed2931(o.sensitiveValueFrequencyHistogramBuckets);
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig = 0;
api.GooglePrivacyDlpV2LargeCustomDictionaryConfig
    buildGooglePrivacyDlpV2LargeCustomDictionaryConfig() {
  var o = api.GooglePrivacyDlpV2LargeCustomDictionaryConfig();
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig < 3) {
    o.bigQueryField = buildGooglePrivacyDlpV2BigQueryField();
    o.cloudStorageFileSet = buildGooglePrivacyDlpV2CloudStorageFileSet();
    o.outputPath = buildGooglePrivacyDlpV2CloudStoragePath();
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig--;
  return o;
}

void checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(
    api.GooglePrivacyDlpV2LargeCustomDictionaryConfig o) {
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig < 3) {
    checkGooglePrivacyDlpV2BigQueryField(
        o.bigQueryField as api.GooglePrivacyDlpV2BigQueryField);
    checkGooglePrivacyDlpV2CloudStorageFileSet(
        o.cloudStorageFileSet as api.GooglePrivacyDlpV2CloudStorageFileSet);
    checkGooglePrivacyDlpV2CloudStoragePath(
        o.outputPath as api.GooglePrivacyDlpV2CloudStoragePath);
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats = 0;
api.GooglePrivacyDlpV2LargeCustomDictionaryStats
    buildGooglePrivacyDlpV2LargeCustomDictionaryStats() {
  var o = api.GooglePrivacyDlpV2LargeCustomDictionaryStats();
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats < 3) {
    o.approxNumPhrases = 'foo';
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats--;
  return o;
}

void checkGooglePrivacyDlpV2LargeCustomDictionaryStats(
    api.GooglePrivacyDlpV2LargeCustomDictionaryStats o) {
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats++;
  if (buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats < 3) {
    unittest.expect(o.approxNumPhrases, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats--;
}

core.int buildCounterGooglePrivacyDlpV2LeaveUntransformed = 0;
api.GooglePrivacyDlpV2LeaveUntransformed
    buildGooglePrivacyDlpV2LeaveUntransformed() {
  var o = api.GooglePrivacyDlpV2LeaveUntransformed();
  buildCounterGooglePrivacyDlpV2LeaveUntransformed++;
  if (buildCounterGooglePrivacyDlpV2LeaveUntransformed < 3) {}
  buildCounterGooglePrivacyDlpV2LeaveUntransformed--;
  return o;
}

void checkGooglePrivacyDlpV2LeaveUntransformed(
    api.GooglePrivacyDlpV2LeaveUntransformed o) {
  buildCounterGooglePrivacyDlpV2LeaveUntransformed++;
  if (buildCounterGooglePrivacyDlpV2LeaveUntransformed < 3) {}
  buildCounterGooglePrivacyDlpV2LeaveUntransformed--;
}

core.int buildCounterGooglePrivacyDlpV2LikelihoodAdjustment = 0;
api.GooglePrivacyDlpV2LikelihoodAdjustment
    buildGooglePrivacyDlpV2LikelihoodAdjustment() {
  var o = api.GooglePrivacyDlpV2LikelihoodAdjustment();
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2LikelihoodAdjustment < 3) {
    o.fixedLikelihood = 'foo';
    o.relativeLikelihood = 42;
  }
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment--;
  return o;
}

void checkGooglePrivacyDlpV2LikelihoodAdjustment(
    api.GooglePrivacyDlpV2LikelihoodAdjustment o) {
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment++;
  if (buildCounterGooglePrivacyDlpV2LikelihoodAdjustment < 3) {
    unittest.expect(o.fixedLikelihood, unittest.equals('foo'));
    unittest.expect(o.relativeLikelihood, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment--;
}

core.List<api.GooglePrivacyDlpV2DeidentifyTemplate> buildUnnamed2932() {
  var o = <api.GooglePrivacyDlpV2DeidentifyTemplate>[];
  o.add(buildGooglePrivacyDlpV2DeidentifyTemplate());
  o.add(buildGooglePrivacyDlpV2DeidentifyTemplate());
  return o;
}

void checkUnnamed2932(core.List<api.GooglePrivacyDlpV2DeidentifyTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeidentifyTemplate(
      o[0] as api.GooglePrivacyDlpV2DeidentifyTemplate);
  checkGooglePrivacyDlpV2DeidentifyTemplate(
      o[1] as api.GooglePrivacyDlpV2DeidentifyTemplate);
}

core.int buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse = 0;
api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse() {
  var o = api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    o.deidentifyTemplates = buildUnnamed2932();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
    api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    checkUnnamed2932(o.deidentifyTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
}

core.List<api.GooglePrivacyDlpV2DlpJob> buildUnnamed2933() {
  var o = <api.GooglePrivacyDlpV2DlpJob>[];
  o.add(buildGooglePrivacyDlpV2DlpJob());
  o.add(buildGooglePrivacyDlpV2DlpJob());
  return o;
}

void checkUnnamed2933(core.List<api.GooglePrivacyDlpV2DlpJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DlpJob(o[0] as api.GooglePrivacyDlpV2DlpJob);
  checkGooglePrivacyDlpV2DlpJob(o[1] as api.GooglePrivacyDlpV2DlpJob);
}

core.int buildCounterGooglePrivacyDlpV2ListDlpJobsResponse = 0;
api.GooglePrivacyDlpV2ListDlpJobsResponse
    buildGooglePrivacyDlpV2ListDlpJobsResponse() {
  var o = api.GooglePrivacyDlpV2ListDlpJobsResponse();
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    o.jobs = buildUnnamed2933();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListDlpJobsResponse(
    api.GooglePrivacyDlpV2ListDlpJobsResponse o) {
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    checkUnnamed2933(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeDescription> buildUnnamed2934() {
  var o = <api.GooglePrivacyDlpV2InfoTypeDescription>[];
  o.add(buildGooglePrivacyDlpV2InfoTypeDescription());
  o.add(buildGooglePrivacyDlpV2InfoTypeDescription());
  return o;
}

void checkUnnamed2934(core.List<api.GooglePrivacyDlpV2InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeDescription(
      o[0] as api.GooglePrivacyDlpV2InfoTypeDescription);
  checkGooglePrivacyDlpV2InfoTypeDescription(
      o[1] as api.GooglePrivacyDlpV2InfoTypeDescription);
}

core.int buildCounterGooglePrivacyDlpV2ListInfoTypesResponse = 0;
api.GooglePrivacyDlpV2ListInfoTypesResponse
    buildGooglePrivacyDlpV2ListInfoTypesResponse() {
  var o = api.GooglePrivacyDlpV2ListInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed2934();
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListInfoTypesResponse(
    api.GooglePrivacyDlpV2ListInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    checkUnnamed2934(o.infoTypes);
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
}

core.List<api.GooglePrivacyDlpV2InspectTemplate> buildUnnamed2935() {
  var o = <api.GooglePrivacyDlpV2InspectTemplate>[];
  o.add(buildGooglePrivacyDlpV2InspectTemplate());
  o.add(buildGooglePrivacyDlpV2InspectTemplate());
  return o;
}

void checkUnnamed2935(core.List<api.GooglePrivacyDlpV2InspectTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectTemplate(
      o[0] as api.GooglePrivacyDlpV2InspectTemplate);
  checkGooglePrivacyDlpV2InspectTemplate(
      o[1] as api.GooglePrivacyDlpV2InspectTemplate);
}

core.int buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse = 0;
api.GooglePrivacyDlpV2ListInspectTemplatesResponse
    buildGooglePrivacyDlpV2ListInspectTemplatesResponse() {
  var o = api.GooglePrivacyDlpV2ListInspectTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    o.inspectTemplates = buildUnnamed2935();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
    api.GooglePrivacyDlpV2ListInspectTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    checkUnnamed2935(o.inspectTemplates);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
}

core.List<api.GooglePrivacyDlpV2JobTrigger> buildUnnamed2936() {
  var o = <api.GooglePrivacyDlpV2JobTrigger>[];
  o.add(buildGooglePrivacyDlpV2JobTrigger());
  o.add(buildGooglePrivacyDlpV2JobTrigger());
  return o;
}

void checkUnnamed2936(core.List<api.GooglePrivacyDlpV2JobTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2JobTrigger(o[0] as api.GooglePrivacyDlpV2JobTrigger);
  checkGooglePrivacyDlpV2JobTrigger(o[1] as api.GooglePrivacyDlpV2JobTrigger);
}

core.int buildCounterGooglePrivacyDlpV2ListJobTriggersResponse = 0;
api.GooglePrivacyDlpV2ListJobTriggersResponse
    buildGooglePrivacyDlpV2ListJobTriggersResponse() {
  var o = api.GooglePrivacyDlpV2ListJobTriggersResponse();
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    o.jobTriggers = buildUnnamed2936();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListJobTriggersResponse(
    api.GooglePrivacyDlpV2ListJobTriggersResponse o) {
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    checkUnnamed2936(o.jobTriggers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
}

core.List<api.GooglePrivacyDlpV2StoredInfoType> buildUnnamed2937() {
  var o = <api.GooglePrivacyDlpV2StoredInfoType>[];
  o.add(buildGooglePrivacyDlpV2StoredInfoType());
  o.add(buildGooglePrivacyDlpV2StoredInfoType());
  return o;
}

void checkUnnamed2937(core.List<api.GooglePrivacyDlpV2StoredInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoType(
      o[0] as api.GooglePrivacyDlpV2StoredInfoType);
  checkGooglePrivacyDlpV2StoredInfoType(
      o[1] as api.GooglePrivacyDlpV2StoredInfoType);
}

core.int buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse = 0;
api.GooglePrivacyDlpV2ListStoredInfoTypesResponse
    buildGooglePrivacyDlpV2ListStoredInfoTypesResponse() {
  var o = api.GooglePrivacyDlpV2ListStoredInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.storedInfoTypes = buildUnnamed2937();
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
    api.GooglePrivacyDlpV2ListStoredInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2937(o.storedInfoTypes);
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
}

core.List<api.GooglePrivacyDlpV2ContentLocation> buildUnnamed2938() {
  var o = <api.GooglePrivacyDlpV2ContentLocation>[];
  o.add(buildGooglePrivacyDlpV2ContentLocation());
  o.add(buildGooglePrivacyDlpV2ContentLocation());
  return o;
}

void checkUnnamed2938(core.List<api.GooglePrivacyDlpV2ContentLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ContentLocation(
      o[0] as api.GooglePrivacyDlpV2ContentLocation);
  checkGooglePrivacyDlpV2ContentLocation(
      o[1] as api.GooglePrivacyDlpV2ContentLocation);
}

core.int buildCounterGooglePrivacyDlpV2Location = 0;
api.GooglePrivacyDlpV2Location buildGooglePrivacyDlpV2Location() {
  var o = api.GooglePrivacyDlpV2Location();
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    o.byteRange = buildGooglePrivacyDlpV2Range();
    o.codepointRange = buildGooglePrivacyDlpV2Range();
    o.container = buildGooglePrivacyDlpV2Container();
    o.contentLocations = buildUnnamed2938();
  }
  buildCounterGooglePrivacyDlpV2Location--;
  return o;
}

void checkGooglePrivacyDlpV2Location(api.GooglePrivacyDlpV2Location o) {
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    checkGooglePrivacyDlpV2Range(o.byteRange as api.GooglePrivacyDlpV2Range);
    checkGooglePrivacyDlpV2Range(
        o.codepointRange as api.GooglePrivacyDlpV2Range);
    checkGooglePrivacyDlpV2Container(
        o.container as api.GooglePrivacyDlpV2Container);
    checkUnnamed2938(o.contentLocations);
  }
  buildCounterGooglePrivacyDlpV2Location--;
}

core.int buildCounterGooglePrivacyDlpV2Manual = 0;
api.GooglePrivacyDlpV2Manual buildGooglePrivacyDlpV2Manual() {
  var o = api.GooglePrivacyDlpV2Manual();
  buildCounterGooglePrivacyDlpV2Manual++;
  if (buildCounterGooglePrivacyDlpV2Manual < 3) {}
  buildCounterGooglePrivacyDlpV2Manual--;
  return o;
}

void checkGooglePrivacyDlpV2Manual(api.GooglePrivacyDlpV2Manual o) {
  buildCounterGooglePrivacyDlpV2Manual++;
  if (buildCounterGooglePrivacyDlpV2Manual < 3) {}
  buildCounterGooglePrivacyDlpV2Manual--;
}

core.int buildCounterGooglePrivacyDlpV2MetadataLocation = 0;
api.GooglePrivacyDlpV2MetadataLocation
    buildGooglePrivacyDlpV2MetadataLocation() {
  var o = api.GooglePrivacyDlpV2MetadataLocation();
  buildCounterGooglePrivacyDlpV2MetadataLocation++;
  if (buildCounterGooglePrivacyDlpV2MetadataLocation < 3) {
    o.storageLabel = buildGooglePrivacyDlpV2StorageMetadataLabel();
    o.type = 'foo';
  }
  buildCounterGooglePrivacyDlpV2MetadataLocation--;
  return o;
}

void checkGooglePrivacyDlpV2MetadataLocation(
    api.GooglePrivacyDlpV2MetadataLocation o) {
  buildCounterGooglePrivacyDlpV2MetadataLocation++;
  if (buildCounterGooglePrivacyDlpV2MetadataLocation < 3) {
    checkGooglePrivacyDlpV2StorageMetadataLabel(
        o.storageLabel as api.GooglePrivacyDlpV2StorageMetadataLabel);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2MetadataLocation--;
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsConfig = 0;
api.GooglePrivacyDlpV2NumericalStatsConfig
    buildGooglePrivacyDlpV2NumericalStatsConfig() {
  var o = api.GooglePrivacyDlpV2NumericalStatsConfig();
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsConfig < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig--;
  return o;
}

void checkGooglePrivacyDlpV2NumericalStatsConfig(
    api.GooglePrivacyDlpV2NumericalStatsConfig o) {
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsConfig < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2939() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2939(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsResult = 0;
api.GooglePrivacyDlpV2NumericalStatsResult
    buildGooglePrivacyDlpV2NumericalStatsResult() {
  var o = api.GooglePrivacyDlpV2NumericalStatsResult();
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    o.maxValue = buildGooglePrivacyDlpV2Value();
    o.minValue = buildGooglePrivacyDlpV2Value();
    o.quantileValues = buildUnnamed2939();
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
  return o;
}

void checkGooglePrivacyDlpV2NumericalStatsResult(
    api.GooglePrivacyDlpV2NumericalStatsResult o) {
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    checkGooglePrivacyDlpV2Value(o.maxValue as api.GooglePrivacyDlpV2Value);
    checkGooglePrivacyDlpV2Value(o.minValue as api.GooglePrivacyDlpV2Value);
    checkUnnamed2939(o.quantileValues);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2OutputStorageConfig = 0;
api.GooglePrivacyDlpV2OutputStorageConfig
    buildGooglePrivacyDlpV2OutputStorageConfig() {
  var o = api.GooglePrivacyDlpV2OutputStorageConfig();
  buildCounterGooglePrivacyDlpV2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2OutputStorageConfig < 3) {
    o.outputSchema = 'foo';
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2OutputStorageConfig--;
  return o;
}

void checkGooglePrivacyDlpV2OutputStorageConfig(
    api.GooglePrivacyDlpV2OutputStorageConfig o) {
  buildCounterGooglePrivacyDlpV2OutputStorageConfig++;
  if (buildCounterGooglePrivacyDlpV2OutputStorageConfig < 3) {
    unittest.expect(o.outputSchema, unittest.equals('foo'));
    checkGooglePrivacyDlpV2BigQueryTable(
        o.table as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2OutputStorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2PartitionId = 0;
api.GooglePrivacyDlpV2PartitionId buildGooglePrivacyDlpV2PartitionId() {
  var o = api.GooglePrivacyDlpV2PartitionId();
  buildCounterGooglePrivacyDlpV2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2PartitionId < 3) {
    o.namespaceId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2PartitionId--;
  return o;
}

void checkGooglePrivacyDlpV2PartitionId(api.GooglePrivacyDlpV2PartitionId o) {
  buildCounterGooglePrivacyDlpV2PartitionId++;
  if (buildCounterGooglePrivacyDlpV2PartitionId < 3) {
    unittest.expect(o.namespaceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PartitionId--;
}

core.int buildCounterGooglePrivacyDlpV2PathElement = 0;
api.GooglePrivacyDlpV2PathElement buildGooglePrivacyDlpV2PathElement() {
  var o = api.GooglePrivacyDlpV2PathElement();
  buildCounterGooglePrivacyDlpV2PathElement++;
  if (buildCounterGooglePrivacyDlpV2PathElement < 3) {
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2PathElement--;
  return o;
}

void checkGooglePrivacyDlpV2PathElement(api.GooglePrivacyDlpV2PathElement o) {
  buildCounterGooglePrivacyDlpV2PathElement++;
  if (buildCounterGooglePrivacyDlpV2PathElement < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PathElement--;
}

core.int buildCounterGooglePrivacyDlpV2PrimitiveTransformation = 0;
api.GooglePrivacyDlpV2PrimitiveTransformation
    buildGooglePrivacyDlpV2PrimitiveTransformation() {
  var o = api.GooglePrivacyDlpV2PrimitiveTransformation();
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2PrimitiveTransformation < 3) {
    o.bucketingConfig = buildGooglePrivacyDlpV2BucketingConfig();
    o.characterMaskConfig = buildGooglePrivacyDlpV2CharacterMaskConfig();
    o.cryptoDeterministicConfig =
        buildGooglePrivacyDlpV2CryptoDeterministicConfig();
    o.cryptoHashConfig = buildGooglePrivacyDlpV2CryptoHashConfig();
    o.cryptoReplaceFfxFpeConfig =
        buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
    o.dateShiftConfig = buildGooglePrivacyDlpV2DateShiftConfig();
    o.fixedSizeBucketingConfig =
        buildGooglePrivacyDlpV2FixedSizeBucketingConfig();
    o.redactConfig = buildGooglePrivacyDlpV2RedactConfig();
    o.replaceConfig = buildGooglePrivacyDlpV2ReplaceValueConfig();
    o.replaceWithInfoTypeConfig =
        buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
    o.timePartConfig = buildGooglePrivacyDlpV2TimePartConfig();
  }
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation--;
  return o;
}

void checkGooglePrivacyDlpV2PrimitiveTransformation(
    api.GooglePrivacyDlpV2PrimitiveTransformation o) {
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation++;
  if (buildCounterGooglePrivacyDlpV2PrimitiveTransformation < 3) {
    checkGooglePrivacyDlpV2BucketingConfig(
        o.bucketingConfig as api.GooglePrivacyDlpV2BucketingConfig);
    checkGooglePrivacyDlpV2CharacterMaskConfig(
        o.characterMaskConfig as api.GooglePrivacyDlpV2CharacterMaskConfig);
    checkGooglePrivacyDlpV2CryptoDeterministicConfig(o.cryptoDeterministicConfig
        as api.GooglePrivacyDlpV2CryptoDeterministicConfig);
    checkGooglePrivacyDlpV2CryptoHashConfig(
        o.cryptoHashConfig as api.GooglePrivacyDlpV2CryptoHashConfig);
    checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(o.cryptoReplaceFfxFpeConfig
        as api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig);
    checkGooglePrivacyDlpV2DateShiftConfig(
        o.dateShiftConfig as api.GooglePrivacyDlpV2DateShiftConfig);
    checkGooglePrivacyDlpV2FixedSizeBucketingConfig(o.fixedSizeBucketingConfig
        as api.GooglePrivacyDlpV2FixedSizeBucketingConfig);
    checkGooglePrivacyDlpV2RedactConfig(
        o.redactConfig as api.GooglePrivacyDlpV2RedactConfig);
    checkGooglePrivacyDlpV2ReplaceValueConfig(
        o.replaceConfig as api.GooglePrivacyDlpV2ReplaceValueConfig);
    checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(o.replaceWithInfoTypeConfig
        as api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig);
    checkGooglePrivacyDlpV2TimePartConfig(
        o.timePartConfig as api.GooglePrivacyDlpV2TimePartConfig);
  }
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2PrivacyMetric = 0;
api.GooglePrivacyDlpV2PrivacyMetric buildGooglePrivacyDlpV2PrivacyMetric() {
  var o = api.GooglePrivacyDlpV2PrivacyMetric();
  buildCounterGooglePrivacyDlpV2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2PrivacyMetric < 3) {
    o.categoricalStatsConfig = buildGooglePrivacyDlpV2CategoricalStatsConfig();
    o.deltaPresenceEstimationConfig =
        buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig();
    o.kAnonymityConfig = buildGooglePrivacyDlpV2KAnonymityConfig();
    o.kMapEstimationConfig = buildGooglePrivacyDlpV2KMapEstimationConfig();
    o.lDiversityConfig = buildGooglePrivacyDlpV2LDiversityConfig();
    o.numericalStatsConfig = buildGooglePrivacyDlpV2NumericalStatsConfig();
  }
  buildCounterGooglePrivacyDlpV2PrivacyMetric--;
  return o;
}

void checkGooglePrivacyDlpV2PrivacyMetric(
    api.GooglePrivacyDlpV2PrivacyMetric o) {
  buildCounterGooglePrivacyDlpV2PrivacyMetric++;
  if (buildCounterGooglePrivacyDlpV2PrivacyMetric < 3) {
    checkGooglePrivacyDlpV2CategoricalStatsConfig(o.categoricalStatsConfig
        as api.GooglePrivacyDlpV2CategoricalStatsConfig);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
        o.deltaPresenceEstimationConfig
            as api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig);
    checkGooglePrivacyDlpV2KAnonymityConfig(
        o.kAnonymityConfig as api.GooglePrivacyDlpV2KAnonymityConfig);
    checkGooglePrivacyDlpV2KMapEstimationConfig(
        o.kMapEstimationConfig as api.GooglePrivacyDlpV2KMapEstimationConfig);
    checkGooglePrivacyDlpV2LDiversityConfig(
        o.lDiversityConfig as api.GooglePrivacyDlpV2LDiversityConfig);
    checkGooglePrivacyDlpV2NumericalStatsConfig(
        o.numericalStatsConfig as api.GooglePrivacyDlpV2NumericalStatsConfig);
  }
  buildCounterGooglePrivacyDlpV2PrivacyMetric--;
}

core.int buildCounterGooglePrivacyDlpV2Proximity = 0;
api.GooglePrivacyDlpV2Proximity buildGooglePrivacyDlpV2Proximity() {
  var o = api.GooglePrivacyDlpV2Proximity();
  buildCounterGooglePrivacyDlpV2Proximity++;
  if (buildCounterGooglePrivacyDlpV2Proximity < 3) {
    o.windowAfter = 42;
    o.windowBefore = 42;
  }
  buildCounterGooglePrivacyDlpV2Proximity--;
  return o;
}

void checkGooglePrivacyDlpV2Proximity(api.GooglePrivacyDlpV2Proximity o) {
  buildCounterGooglePrivacyDlpV2Proximity++;
  if (buildCounterGooglePrivacyDlpV2Proximity < 3) {
    unittest.expect(o.windowAfter, unittest.equals(42));
    unittest.expect(o.windowBefore, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2Proximity--;
}

core.int buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = 0;
api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog() {
  var o = api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog++;
  if (buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog < 3) {}
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog--;
  return o;
}

void checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
    api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog o) {
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog++;
  if (buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog < 3) {}
  buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog--;
}

core.int buildCounterGooglePrivacyDlpV2PublishSummaryToCscc = 0;
api.GooglePrivacyDlpV2PublishSummaryToCscc
    buildGooglePrivacyDlpV2PublishSummaryToCscc() {
  var o = api.GooglePrivacyDlpV2PublishSummaryToCscc();
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc++;
  if (buildCounterGooglePrivacyDlpV2PublishSummaryToCscc < 3) {}
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc--;
  return o;
}

void checkGooglePrivacyDlpV2PublishSummaryToCscc(
    api.GooglePrivacyDlpV2PublishSummaryToCscc o) {
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc++;
  if (buildCounterGooglePrivacyDlpV2PublishSummaryToCscc < 3) {}
  buildCounterGooglePrivacyDlpV2PublishSummaryToCscc--;
}

core.int buildCounterGooglePrivacyDlpV2PublishToPubSub = 0;
api.GooglePrivacyDlpV2PublishToPubSub buildGooglePrivacyDlpV2PublishToPubSub() {
  var o = api.GooglePrivacyDlpV2PublishToPubSub();
  buildCounterGooglePrivacyDlpV2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2PublishToPubSub < 3) {
    o.topic = 'foo';
  }
  buildCounterGooglePrivacyDlpV2PublishToPubSub--;
  return o;
}

void checkGooglePrivacyDlpV2PublishToPubSub(
    api.GooglePrivacyDlpV2PublishToPubSub o) {
  buildCounterGooglePrivacyDlpV2PublishToPubSub++;
  if (buildCounterGooglePrivacyDlpV2PublishToPubSub < 3) {
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2PublishToPubSub--;
}

core.int buildCounterGooglePrivacyDlpV2PublishToStackdriver = 0;
api.GooglePrivacyDlpV2PublishToStackdriver
    buildGooglePrivacyDlpV2PublishToStackdriver() {
  var o = api.GooglePrivacyDlpV2PublishToStackdriver();
  buildCounterGooglePrivacyDlpV2PublishToStackdriver++;
  if (buildCounterGooglePrivacyDlpV2PublishToStackdriver < 3) {}
  buildCounterGooglePrivacyDlpV2PublishToStackdriver--;
  return o;
}

void checkGooglePrivacyDlpV2PublishToStackdriver(
    api.GooglePrivacyDlpV2PublishToStackdriver o) {
  buildCounterGooglePrivacyDlpV2PublishToStackdriver++;
  if (buildCounterGooglePrivacyDlpV2PublishToStackdriver < 3) {}
  buildCounterGooglePrivacyDlpV2PublishToStackdriver--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiId = 0;
api.GooglePrivacyDlpV2QuasiId buildGooglePrivacyDlpV2QuasiId() {
  var o = api.GooglePrivacyDlpV2QuasiId();
  buildCounterGooglePrivacyDlpV2QuasiId++;
  if (buildCounterGooglePrivacyDlpV2QuasiId < 3) {
    o.customTag = 'foo';
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2QuasiId--;
  return o;
}

void checkGooglePrivacyDlpV2QuasiId(api.GooglePrivacyDlpV2QuasiId o) {
  buildCounterGooglePrivacyDlpV2QuasiId++;
  if (buildCounterGooglePrivacyDlpV2QuasiId < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
    checkGoogleProtobufEmpty(o.inferred as api.GoogleProtobufEmpty);
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
  }
  buildCounterGooglePrivacyDlpV2QuasiId--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdField = 0;
api.GooglePrivacyDlpV2QuasiIdField buildGooglePrivacyDlpV2QuasiIdField() {
  var o = api.GooglePrivacyDlpV2QuasiIdField();
  buildCounterGooglePrivacyDlpV2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdField < 3) {
    o.customTag = 'foo';
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2QuasiIdField--;
  return o;
}

void checkGooglePrivacyDlpV2QuasiIdField(api.GooglePrivacyDlpV2QuasiIdField o) {
  buildCounterGooglePrivacyDlpV2QuasiIdField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdField--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdentifierField = 0;
api.GooglePrivacyDlpV2QuasiIdentifierField
    buildGooglePrivacyDlpV2QuasiIdentifierField() {
  var o = api.GooglePrivacyDlpV2QuasiIdentifierField();
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdentifierField < 3) {
    o.customTag = 'foo';
    o.field = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField--;
  return o;
}

void checkGooglePrivacyDlpV2QuasiIdentifierField(
    api.GooglePrivacyDlpV2QuasiIdentifierField o) {
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField++;
  if (buildCounterGooglePrivacyDlpV2QuasiIdentifierField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField--;
}

core.int buildCounterGooglePrivacyDlpV2QuoteInfo = 0;
api.GooglePrivacyDlpV2QuoteInfo buildGooglePrivacyDlpV2QuoteInfo() {
  var o = api.GooglePrivacyDlpV2QuoteInfo();
  buildCounterGooglePrivacyDlpV2QuoteInfo++;
  if (buildCounterGooglePrivacyDlpV2QuoteInfo < 3) {
    o.dateTime = buildGooglePrivacyDlpV2DateTime();
  }
  buildCounterGooglePrivacyDlpV2QuoteInfo--;
  return o;
}

void checkGooglePrivacyDlpV2QuoteInfo(api.GooglePrivacyDlpV2QuoteInfo o) {
  buildCounterGooglePrivacyDlpV2QuoteInfo++;
  if (buildCounterGooglePrivacyDlpV2QuoteInfo < 3) {
    checkGooglePrivacyDlpV2DateTime(
        o.dateTime as api.GooglePrivacyDlpV2DateTime);
  }
  buildCounterGooglePrivacyDlpV2QuoteInfo--;
}

core.int buildCounterGooglePrivacyDlpV2Range = 0;
api.GooglePrivacyDlpV2Range buildGooglePrivacyDlpV2Range() {
  var o = api.GooglePrivacyDlpV2Range();
  buildCounterGooglePrivacyDlpV2Range++;
  if (buildCounterGooglePrivacyDlpV2Range < 3) {
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Range--;
  return o;
}

void checkGooglePrivacyDlpV2Range(api.GooglePrivacyDlpV2Range o) {
  buildCounterGooglePrivacyDlpV2Range++;
  if (buildCounterGooglePrivacyDlpV2Range < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Range--;
}

core.int buildCounterGooglePrivacyDlpV2RecordCondition = 0;
api.GooglePrivacyDlpV2RecordCondition buildGooglePrivacyDlpV2RecordCondition() {
  var o = api.GooglePrivacyDlpV2RecordCondition();
  buildCounterGooglePrivacyDlpV2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2RecordCondition < 3) {
    o.expressions = buildGooglePrivacyDlpV2Expressions();
  }
  buildCounterGooglePrivacyDlpV2RecordCondition--;
  return o;
}

void checkGooglePrivacyDlpV2RecordCondition(
    api.GooglePrivacyDlpV2RecordCondition o) {
  buildCounterGooglePrivacyDlpV2RecordCondition++;
  if (buildCounterGooglePrivacyDlpV2RecordCondition < 3) {
    checkGooglePrivacyDlpV2Expressions(
        o.expressions as api.GooglePrivacyDlpV2Expressions);
  }
  buildCounterGooglePrivacyDlpV2RecordCondition--;
}

core.List<core.String> buildUnnamed2940() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2940(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2RecordKey = 0;
api.GooglePrivacyDlpV2RecordKey buildGooglePrivacyDlpV2RecordKey() {
  var o = api.GooglePrivacyDlpV2RecordKey();
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    o.bigQueryKey = buildGooglePrivacyDlpV2BigQueryKey();
    o.datastoreKey = buildGooglePrivacyDlpV2DatastoreKey();
    o.idValues = buildUnnamed2940();
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
  return o;
}

void checkGooglePrivacyDlpV2RecordKey(api.GooglePrivacyDlpV2RecordKey o) {
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    checkGooglePrivacyDlpV2BigQueryKey(
        o.bigQueryKey as api.GooglePrivacyDlpV2BigQueryKey);
    checkGooglePrivacyDlpV2DatastoreKey(
        o.datastoreKey as api.GooglePrivacyDlpV2DatastoreKey);
    checkUnnamed2940(o.idValues);
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
}

core.int buildCounterGooglePrivacyDlpV2RecordLocation = 0;
api.GooglePrivacyDlpV2RecordLocation buildGooglePrivacyDlpV2RecordLocation() {
  var o = api.GooglePrivacyDlpV2RecordLocation();
  buildCounterGooglePrivacyDlpV2RecordLocation++;
  if (buildCounterGooglePrivacyDlpV2RecordLocation < 3) {
    o.fieldId = buildGooglePrivacyDlpV2FieldId();
    o.recordKey = buildGooglePrivacyDlpV2RecordKey();
    o.tableLocation = buildGooglePrivacyDlpV2TableLocation();
  }
  buildCounterGooglePrivacyDlpV2RecordLocation--;
  return o;
}

void checkGooglePrivacyDlpV2RecordLocation(
    api.GooglePrivacyDlpV2RecordLocation o) {
  buildCounterGooglePrivacyDlpV2RecordLocation++;
  if (buildCounterGooglePrivacyDlpV2RecordLocation < 3) {
    checkGooglePrivacyDlpV2FieldId(o.fieldId as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2RecordKey(
        o.recordKey as api.GooglePrivacyDlpV2RecordKey);
    checkGooglePrivacyDlpV2TableLocation(
        o.tableLocation as api.GooglePrivacyDlpV2TableLocation);
  }
  buildCounterGooglePrivacyDlpV2RecordLocation--;
}

core.int buildCounterGooglePrivacyDlpV2RecordSuppression = 0;
api.GooglePrivacyDlpV2RecordSuppression
    buildGooglePrivacyDlpV2RecordSuppression() {
  var o = api.GooglePrivacyDlpV2RecordSuppression();
  buildCounterGooglePrivacyDlpV2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2RecordSuppression < 3) {
    o.condition = buildGooglePrivacyDlpV2RecordCondition();
  }
  buildCounterGooglePrivacyDlpV2RecordSuppression--;
  return o;
}

void checkGooglePrivacyDlpV2RecordSuppression(
    api.GooglePrivacyDlpV2RecordSuppression o) {
  buildCounterGooglePrivacyDlpV2RecordSuppression++;
  if (buildCounterGooglePrivacyDlpV2RecordSuppression < 3) {
    checkGooglePrivacyDlpV2RecordCondition(
        o.condition as api.GooglePrivacyDlpV2RecordCondition);
  }
  buildCounterGooglePrivacyDlpV2RecordSuppression--;
}

core.List<api.GooglePrivacyDlpV2FieldTransformation> buildUnnamed2941() {
  var o = <api.GooglePrivacyDlpV2FieldTransformation>[];
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  return o;
}

void checkUnnamed2941(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(
      o[0] as api.GooglePrivacyDlpV2FieldTransformation);
  checkGooglePrivacyDlpV2FieldTransformation(
      o[1] as api.GooglePrivacyDlpV2FieldTransformation);
}

core.List<api.GooglePrivacyDlpV2RecordSuppression> buildUnnamed2942() {
  var o = <api.GooglePrivacyDlpV2RecordSuppression>[];
  o.add(buildGooglePrivacyDlpV2RecordSuppression());
  o.add(buildGooglePrivacyDlpV2RecordSuppression());
  return o;
}

void checkUnnamed2942(core.List<api.GooglePrivacyDlpV2RecordSuppression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2RecordSuppression(
      o[0] as api.GooglePrivacyDlpV2RecordSuppression);
  checkGooglePrivacyDlpV2RecordSuppression(
      o[1] as api.GooglePrivacyDlpV2RecordSuppression);
}

core.int buildCounterGooglePrivacyDlpV2RecordTransformations = 0;
api.GooglePrivacyDlpV2RecordTransformations
    buildGooglePrivacyDlpV2RecordTransformations() {
  var o = api.GooglePrivacyDlpV2RecordTransformations();
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    o.fieldTransformations = buildUnnamed2941();
    o.recordSuppressions = buildUnnamed2942();
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
  return o;
}

void checkGooglePrivacyDlpV2RecordTransformations(
    api.GooglePrivacyDlpV2RecordTransformations o) {
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    checkUnnamed2941(o.fieldTransformations);
    checkUnnamed2942(o.recordSuppressions);
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
}

core.int buildCounterGooglePrivacyDlpV2RedactConfig = 0;
api.GooglePrivacyDlpV2RedactConfig buildGooglePrivacyDlpV2RedactConfig() {
  var o = api.GooglePrivacyDlpV2RedactConfig();
  buildCounterGooglePrivacyDlpV2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2RedactConfig--;
  return o;
}

void checkGooglePrivacyDlpV2RedactConfig(api.GooglePrivacyDlpV2RedactConfig o) {
  buildCounterGooglePrivacyDlpV2RedactConfig++;
  if (buildCounterGooglePrivacyDlpV2RedactConfig < 3) {}
  buildCounterGooglePrivacyDlpV2RedactConfig--;
}

core.List<api.GooglePrivacyDlpV2ImageRedactionConfig> buildUnnamed2943() {
  var o = <api.GooglePrivacyDlpV2ImageRedactionConfig>[];
  o.add(buildGooglePrivacyDlpV2ImageRedactionConfig());
  o.add(buildGooglePrivacyDlpV2ImageRedactionConfig());
  return o;
}

void checkUnnamed2943(core.List<api.GooglePrivacyDlpV2ImageRedactionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ImageRedactionConfig(
      o[0] as api.GooglePrivacyDlpV2ImageRedactionConfig);
  checkGooglePrivacyDlpV2ImageRedactionConfig(
      o[1] as api.GooglePrivacyDlpV2ImageRedactionConfig);
}

core.int buildCounterGooglePrivacyDlpV2RedactImageRequest = 0;
api.GooglePrivacyDlpV2RedactImageRequest
    buildGooglePrivacyDlpV2RedactImageRequest() {
  var o = api.GooglePrivacyDlpV2RedactImageRequest();
  buildCounterGooglePrivacyDlpV2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2RedactImageRequest < 3) {
    o.byteItem = buildGooglePrivacyDlpV2ByteContentItem();
    o.imageRedactionConfigs = buildUnnamed2943();
    o.includeFindings = true;
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.locationId = 'foo';
  }
  buildCounterGooglePrivacyDlpV2RedactImageRequest--;
  return o;
}

void checkGooglePrivacyDlpV2RedactImageRequest(
    api.GooglePrivacyDlpV2RedactImageRequest o) {
  buildCounterGooglePrivacyDlpV2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2RedactImageRequest < 3) {
    checkGooglePrivacyDlpV2ByteContentItem(
        o.byteItem as api.GooglePrivacyDlpV2ByteContentItem);
    checkUnnamed2943(o.imageRedactionConfigs);
    unittest.expect(o.includeFindings, unittest.isTrue);
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.locationId, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2RedactImageRequest--;
}

core.int buildCounterGooglePrivacyDlpV2RedactImageResponse = 0;
api.GooglePrivacyDlpV2RedactImageResponse
    buildGooglePrivacyDlpV2RedactImageResponse() {
  var o = api.GooglePrivacyDlpV2RedactImageResponse();
  buildCounterGooglePrivacyDlpV2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2RedactImageResponse < 3) {
    o.extractedText = 'foo';
    o.inspectResult = buildGooglePrivacyDlpV2InspectResult();
    o.redactedImage = 'foo';
  }
  buildCounterGooglePrivacyDlpV2RedactImageResponse--;
  return o;
}

void checkGooglePrivacyDlpV2RedactImageResponse(
    api.GooglePrivacyDlpV2RedactImageResponse o) {
  buildCounterGooglePrivacyDlpV2RedactImageResponse++;
  if (buildCounterGooglePrivacyDlpV2RedactImageResponse < 3) {
    unittest.expect(o.extractedText, unittest.equals('foo'));
    checkGooglePrivacyDlpV2InspectResult(
        o.inspectResult as api.GooglePrivacyDlpV2InspectResult);
    unittest.expect(o.redactedImage, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2RedactImageResponse--;
}

core.List<core.int> buildUnnamed2944() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed2944(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterGooglePrivacyDlpV2Regex = 0;
api.GooglePrivacyDlpV2Regex buildGooglePrivacyDlpV2Regex() {
  var o = api.GooglePrivacyDlpV2Regex();
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    o.groupIndexes = buildUnnamed2944();
    o.pattern = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Regex--;
  return o;
}

void checkGooglePrivacyDlpV2Regex(api.GooglePrivacyDlpV2Regex o) {
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    checkUnnamed2944(o.groupIndexes);
    unittest.expect(o.pattern, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Regex--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentRequest = 0;
api.GooglePrivacyDlpV2ReidentifyContentRequest
    buildGooglePrivacyDlpV2ReidentifyContentRequest() {
  var o = api.GooglePrivacyDlpV2ReidentifyContentRequest();
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentRequest < 3) {
    o.inspectConfig = buildGooglePrivacyDlpV2InspectConfig();
    o.inspectTemplateName = 'foo';
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.locationId = 'foo';
    o.reidentifyConfig = buildGooglePrivacyDlpV2DeidentifyConfig();
    o.reidentifyTemplateName = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest--;
  return o;
}

void checkGooglePrivacyDlpV2ReidentifyContentRequest(
    api.GooglePrivacyDlpV2ReidentifyContentRequest o) {
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentRequest < 3) {
    checkGooglePrivacyDlpV2InspectConfig(
        o.inspectConfig as api.GooglePrivacyDlpV2InspectConfig);
    unittest.expect(o.inspectTemplateName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
    unittest.expect(o.locationId, unittest.equals('foo'));
    checkGooglePrivacyDlpV2DeidentifyConfig(
        o.reidentifyConfig as api.GooglePrivacyDlpV2DeidentifyConfig);
    unittest.expect(o.reidentifyTemplateName, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentResponse = 0;
api.GooglePrivacyDlpV2ReidentifyContentResponse
    buildGooglePrivacyDlpV2ReidentifyContentResponse() {
  var o = api.GooglePrivacyDlpV2ReidentifyContentResponse();
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentResponse < 3) {
    o.item = buildGooglePrivacyDlpV2ContentItem();
    o.overview = buildGooglePrivacyDlpV2TransformationOverview();
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ReidentifyContentResponse(
    api.GooglePrivacyDlpV2ReidentifyContentResponse o) {
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse++;
  if (buildCounterGooglePrivacyDlpV2ReidentifyContentResponse < 3) {
    checkGooglePrivacyDlpV2ContentItem(
        o.item as api.GooglePrivacyDlpV2ContentItem);
    checkGooglePrivacyDlpV2TransformationOverview(
        o.overview as api.GooglePrivacyDlpV2TransformationOverview);
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceValueConfig = 0;
api.GooglePrivacyDlpV2ReplaceValueConfig
    buildGooglePrivacyDlpV2ReplaceValueConfig() {
  var o = api.GooglePrivacyDlpV2ReplaceValueConfig();
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceValueConfig < 3) {
    o.newValue = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig--;
  return o;
}

void checkGooglePrivacyDlpV2ReplaceValueConfig(
    api.GooglePrivacyDlpV2ReplaceValueConfig o) {
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceValueConfig < 3) {
    checkGooglePrivacyDlpV2Value(o.newValue as api.GooglePrivacyDlpV2Value);
  }
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig = 0;
api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig() {
  var o = api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig--;
  return o;
}

void checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(
    api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig < 3) {}
  buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2RequestedOptions = 0;
api.GooglePrivacyDlpV2RequestedOptions
    buildGooglePrivacyDlpV2RequestedOptions() {
  var o = api.GooglePrivacyDlpV2RequestedOptions();
  buildCounterGooglePrivacyDlpV2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedOptions < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2InspectJobConfig();
    o.snapshotInspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
  }
  buildCounterGooglePrivacyDlpV2RequestedOptions--;
  return o;
}

void checkGooglePrivacyDlpV2RequestedOptions(
    api.GooglePrivacyDlpV2RequestedOptions o) {
  buildCounterGooglePrivacyDlpV2RequestedOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedOptions < 3) {
    checkGooglePrivacyDlpV2InspectJobConfig(
        o.jobConfig as api.GooglePrivacyDlpV2InspectJobConfig);
    checkGooglePrivacyDlpV2InspectTemplate(
        o.snapshotInspectTemplate as api.GooglePrivacyDlpV2InspectTemplate);
  }
  buildCounterGooglePrivacyDlpV2RequestedOptions--;
}

core.int buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions = 0;
api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    buildGooglePrivacyDlpV2RequestedRiskAnalysisOptions() {
  var o = api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions();
  buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions < 3) {
    o.jobConfig = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
  }
  buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions--;
  return o;
}

void checkGooglePrivacyDlpV2RequestedRiskAnalysisOptions(
    api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions o) {
  buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions++;
  if (buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions < 3) {
    checkGooglePrivacyDlpV2RiskAnalysisJobConfig(
        o.jobConfig as api.GooglePrivacyDlpV2RiskAnalysisJobConfig);
  }
  buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeStats> buildUnnamed2945() {
  var o = <api.GooglePrivacyDlpV2InfoTypeStats>[];
  o.add(buildGooglePrivacyDlpV2InfoTypeStats());
  o.add(buildGooglePrivacyDlpV2InfoTypeStats());
  return o;
}

void checkUnnamed2945(core.List<api.GooglePrivacyDlpV2InfoTypeStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeStats(
      o[0] as api.GooglePrivacyDlpV2InfoTypeStats);
  checkGooglePrivacyDlpV2InfoTypeStats(
      o[1] as api.GooglePrivacyDlpV2InfoTypeStats);
}

core.int buildCounterGooglePrivacyDlpV2Result = 0;
api.GooglePrivacyDlpV2Result buildGooglePrivacyDlpV2Result() {
  var o = api.GooglePrivacyDlpV2Result();
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    o.hybridStats = buildGooglePrivacyDlpV2HybridInspectStatistics();
    o.infoTypeStats = buildUnnamed2945();
    o.processedBytes = 'foo';
    o.totalEstimatedBytes = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Result--;
  return o;
}

void checkGooglePrivacyDlpV2Result(api.GooglePrivacyDlpV2Result o) {
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    checkGooglePrivacyDlpV2HybridInspectStatistics(
        o.hybridStats as api.GooglePrivacyDlpV2HybridInspectStatistics);
    checkUnnamed2945(o.infoTypeStats);
    unittest.expect(o.processedBytes, unittest.equals('foo'));
    unittest.expect(o.totalEstimatedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Result--;
}

core.List<api.GooglePrivacyDlpV2Action> buildUnnamed2946() {
  var o = <api.GooglePrivacyDlpV2Action>[];
  o.add(buildGooglePrivacyDlpV2Action());
  o.add(buildGooglePrivacyDlpV2Action());
  return o;
}

void checkUnnamed2946(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0] as api.GooglePrivacyDlpV2Action);
  checkGooglePrivacyDlpV2Action(o[1] as api.GooglePrivacyDlpV2Action);
}

core.int buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig = 0;
api.GooglePrivacyDlpV2RiskAnalysisJobConfig
    buildGooglePrivacyDlpV2RiskAnalysisJobConfig() {
  var o = api.GooglePrivacyDlpV2RiskAnalysisJobConfig();
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig < 3) {
    o.actions = buildUnnamed2946();
    o.privacyMetric = buildGooglePrivacyDlpV2PrivacyMetric();
    o.sourceTable = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig--;
  return o;
}

void checkGooglePrivacyDlpV2RiskAnalysisJobConfig(
    api.GooglePrivacyDlpV2RiskAnalysisJobConfig o) {
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig < 3) {
    checkUnnamed2946(o.actions);
    checkGooglePrivacyDlpV2PrivacyMetric(
        o.privacyMetric as api.GooglePrivacyDlpV2PrivacyMetric);
    checkGooglePrivacyDlpV2BigQueryTable(
        o.sourceTable as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed2947() {
  var o = <api.GooglePrivacyDlpV2Value>[];
  o.add(buildGooglePrivacyDlpV2Value());
  o.add(buildGooglePrivacyDlpV2Value());
  return o;
}

void checkUnnamed2947(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0] as api.GooglePrivacyDlpV2Value);
  checkGooglePrivacyDlpV2Value(o[1] as api.GooglePrivacyDlpV2Value);
}

core.int buildCounterGooglePrivacyDlpV2Row = 0;
api.GooglePrivacyDlpV2Row buildGooglePrivacyDlpV2Row() {
  var o = api.GooglePrivacyDlpV2Row();
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    o.values = buildUnnamed2947();
  }
  buildCounterGooglePrivacyDlpV2Row--;
  return o;
}

void checkGooglePrivacyDlpV2Row(api.GooglePrivacyDlpV2Row o) {
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    checkUnnamed2947(o.values);
  }
  buildCounterGooglePrivacyDlpV2Row--;
}

core.int buildCounterGooglePrivacyDlpV2SaveFindings = 0;
api.GooglePrivacyDlpV2SaveFindings buildGooglePrivacyDlpV2SaveFindings() {
  var o = api.GooglePrivacyDlpV2SaveFindings();
  buildCounterGooglePrivacyDlpV2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2SaveFindings < 3) {
    o.outputConfig = buildGooglePrivacyDlpV2OutputStorageConfig();
  }
  buildCounterGooglePrivacyDlpV2SaveFindings--;
  return o;
}

void checkGooglePrivacyDlpV2SaveFindings(api.GooglePrivacyDlpV2SaveFindings o) {
  buildCounterGooglePrivacyDlpV2SaveFindings++;
  if (buildCounterGooglePrivacyDlpV2SaveFindings < 3) {
    checkGooglePrivacyDlpV2OutputStorageConfig(
        o.outputConfig as api.GooglePrivacyDlpV2OutputStorageConfig);
  }
  buildCounterGooglePrivacyDlpV2SaveFindings--;
}

core.int buildCounterGooglePrivacyDlpV2Schedule = 0;
api.GooglePrivacyDlpV2Schedule buildGooglePrivacyDlpV2Schedule() {
  var o = api.GooglePrivacyDlpV2Schedule();
  buildCounterGooglePrivacyDlpV2Schedule++;
  if (buildCounterGooglePrivacyDlpV2Schedule < 3) {
    o.recurrencePeriodDuration = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Schedule--;
  return o;
}

void checkGooglePrivacyDlpV2Schedule(api.GooglePrivacyDlpV2Schedule o) {
  buildCounterGooglePrivacyDlpV2Schedule++;
  if (buildCounterGooglePrivacyDlpV2Schedule < 3) {
    unittest.expect(o.recurrencePeriodDuration, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Schedule--;
}

core.List<api.GooglePrivacyDlpV2QuasiIdentifierField> buildUnnamed2948() {
  var o = <api.GooglePrivacyDlpV2QuasiIdentifierField>[];
  o.add(buildGooglePrivacyDlpV2QuasiIdentifierField());
  o.add(buildGooglePrivacyDlpV2QuasiIdentifierField());
  return o;
}

void checkUnnamed2948(core.List<api.GooglePrivacyDlpV2QuasiIdentifierField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdentifierField(
      o[0] as api.GooglePrivacyDlpV2QuasiIdentifierField);
  checkGooglePrivacyDlpV2QuasiIdentifierField(
      o[1] as api.GooglePrivacyDlpV2QuasiIdentifierField);
}

core.int buildCounterGooglePrivacyDlpV2StatisticalTable = 0;
api.GooglePrivacyDlpV2StatisticalTable
    buildGooglePrivacyDlpV2StatisticalTable() {
  var o = api.GooglePrivacyDlpV2StatisticalTable();
  buildCounterGooglePrivacyDlpV2StatisticalTable++;
  if (buildCounterGooglePrivacyDlpV2StatisticalTable < 3) {
    o.quasiIds = buildUnnamed2948();
    o.relativeFrequency = buildGooglePrivacyDlpV2FieldId();
    o.table = buildGooglePrivacyDlpV2BigQueryTable();
  }
  buildCounterGooglePrivacyDlpV2StatisticalTable--;
  return o;
}

void checkGooglePrivacyDlpV2StatisticalTable(
    api.GooglePrivacyDlpV2StatisticalTable o) {
  buildCounterGooglePrivacyDlpV2StatisticalTable++;
  if (buildCounterGooglePrivacyDlpV2StatisticalTable < 3) {
    checkUnnamed2948(o.quasiIds);
    checkGooglePrivacyDlpV2FieldId(
        o.relativeFrequency as api.GooglePrivacyDlpV2FieldId);
    checkGooglePrivacyDlpV2BigQueryTable(
        o.table as api.GooglePrivacyDlpV2BigQueryTable);
  }
  buildCounterGooglePrivacyDlpV2StatisticalTable--;
}

core.int buildCounterGooglePrivacyDlpV2StorageConfig = 0;
api.GooglePrivacyDlpV2StorageConfig buildGooglePrivacyDlpV2StorageConfig() {
  var o = api.GooglePrivacyDlpV2StorageConfig();
  buildCounterGooglePrivacyDlpV2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2StorageConfig < 3) {
    o.bigQueryOptions = buildGooglePrivacyDlpV2BigQueryOptions();
    o.cloudStorageOptions = buildGooglePrivacyDlpV2CloudStorageOptions();
    o.datastoreOptions = buildGooglePrivacyDlpV2DatastoreOptions();
    o.hybridOptions = buildGooglePrivacyDlpV2HybridOptions();
    o.timespanConfig = buildGooglePrivacyDlpV2TimespanConfig();
  }
  buildCounterGooglePrivacyDlpV2StorageConfig--;
  return o;
}

void checkGooglePrivacyDlpV2StorageConfig(
    api.GooglePrivacyDlpV2StorageConfig o) {
  buildCounterGooglePrivacyDlpV2StorageConfig++;
  if (buildCounterGooglePrivacyDlpV2StorageConfig < 3) {
    checkGooglePrivacyDlpV2BigQueryOptions(
        o.bigQueryOptions as api.GooglePrivacyDlpV2BigQueryOptions);
    checkGooglePrivacyDlpV2CloudStorageOptions(
        o.cloudStorageOptions as api.GooglePrivacyDlpV2CloudStorageOptions);
    checkGooglePrivacyDlpV2DatastoreOptions(
        o.datastoreOptions as api.GooglePrivacyDlpV2DatastoreOptions);
    checkGooglePrivacyDlpV2HybridOptions(
        o.hybridOptions as api.GooglePrivacyDlpV2HybridOptions);
    checkGooglePrivacyDlpV2TimespanConfig(
        o.timespanConfig as api.GooglePrivacyDlpV2TimespanConfig);
  }
  buildCounterGooglePrivacyDlpV2StorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2StorageMetadataLabel = 0;
api.GooglePrivacyDlpV2StorageMetadataLabel
    buildGooglePrivacyDlpV2StorageMetadataLabel() {
  var o = api.GooglePrivacyDlpV2StorageMetadataLabel();
  buildCounterGooglePrivacyDlpV2StorageMetadataLabel++;
  if (buildCounterGooglePrivacyDlpV2StorageMetadataLabel < 3) {
    o.key = 'foo';
  }
  buildCounterGooglePrivacyDlpV2StorageMetadataLabel--;
  return o;
}

void checkGooglePrivacyDlpV2StorageMetadataLabel(
    api.GooglePrivacyDlpV2StorageMetadataLabel o) {
  buildCounterGooglePrivacyDlpV2StorageMetadataLabel++;
  if (buildCounterGooglePrivacyDlpV2StorageMetadataLabel < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2StorageMetadataLabel--;
}

core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion> buildUnnamed2949() {
  var o = <api.GooglePrivacyDlpV2StoredInfoTypeVersion>[];
  o.add(buildGooglePrivacyDlpV2StoredInfoTypeVersion());
  o.add(buildGooglePrivacyDlpV2StoredInfoTypeVersion());
  return o;
}

void checkUnnamed2949(
    core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(
      o[0] as api.GooglePrivacyDlpV2StoredInfoTypeVersion);
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(
      o[1] as api.GooglePrivacyDlpV2StoredInfoTypeVersion);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoType = 0;
api.GooglePrivacyDlpV2StoredInfoType buildGooglePrivacyDlpV2StoredInfoType() {
  var o = api.GooglePrivacyDlpV2StoredInfoType();
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    o.currentVersion = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
    o.name = 'foo';
    o.pendingVersions = buildUnnamed2949();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
  return o;
}

void checkGooglePrivacyDlpV2StoredInfoType(
    api.GooglePrivacyDlpV2StoredInfoType o) {
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeVersion(
        o.currentVersion as api.GooglePrivacyDlpV2StoredInfoTypeVersion);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2949(o.pendingVersions);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig = 0;
api.GooglePrivacyDlpV2StoredInfoTypeConfig
    buildGooglePrivacyDlpV2StoredInfoTypeConfig() {
  var o = api.GooglePrivacyDlpV2StoredInfoTypeConfig();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig < 3) {
    o.description = 'foo';
    o.dictionary = buildGooglePrivacyDlpV2Dictionary();
    o.displayName = 'foo';
    o.largeCustomDictionary =
        buildGooglePrivacyDlpV2LargeCustomDictionaryConfig();
    o.regex = buildGooglePrivacyDlpV2Regex();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig--;
  return o;
}

void checkGooglePrivacyDlpV2StoredInfoTypeConfig(
    api.GooglePrivacyDlpV2StoredInfoTypeConfig o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Dictionary(
        o.dictionary as api.GooglePrivacyDlpV2Dictionary);
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(o.largeCustomDictionary
        as api.GooglePrivacyDlpV2LargeCustomDictionaryConfig);
    checkGooglePrivacyDlpV2Regex(o.regex as api.GooglePrivacyDlpV2Regex);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeStats = 0;
api.GooglePrivacyDlpV2StoredInfoTypeStats
    buildGooglePrivacyDlpV2StoredInfoTypeStats() {
  var o = api.GooglePrivacyDlpV2StoredInfoTypeStats();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeStats < 3) {
    o.largeCustomDictionary =
        buildGooglePrivacyDlpV2LargeCustomDictionaryStats();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats--;
  return o;
}

void checkGooglePrivacyDlpV2StoredInfoTypeStats(
    api.GooglePrivacyDlpV2StoredInfoTypeStats o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeStats < 3) {
    checkGooglePrivacyDlpV2LargeCustomDictionaryStats(o.largeCustomDictionary
        as api.GooglePrivacyDlpV2LargeCustomDictionaryStats);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats--;
}

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed2950() {
  var o = <api.GooglePrivacyDlpV2Error>[];
  o.add(buildGooglePrivacyDlpV2Error());
  o.add(buildGooglePrivacyDlpV2Error());
  return o;
}

void checkUnnamed2950(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0] as api.GooglePrivacyDlpV2Error);
  checkGooglePrivacyDlpV2Error(o[1] as api.GooglePrivacyDlpV2Error);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion = 0;
api.GooglePrivacyDlpV2StoredInfoTypeVersion
    buildGooglePrivacyDlpV2StoredInfoTypeVersion() {
  var o = api.GooglePrivacyDlpV2StoredInfoTypeVersion();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.createTime = 'foo';
    o.errors = buildUnnamed2950();
    o.state = 'foo';
    o.stats = buildGooglePrivacyDlpV2StoredInfoTypeStats();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion--;
  return o;
}

void checkGooglePrivacyDlpV2StoredInfoTypeVersion(
    api.GooglePrivacyDlpV2StoredInfoTypeVersion o) {
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(
        o.config as api.GooglePrivacyDlpV2StoredInfoTypeConfig);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2950(o.errors);
    unittest.expect(o.state, unittest.equals('foo'));
    checkGooglePrivacyDlpV2StoredInfoTypeStats(
        o.stats as api.GooglePrivacyDlpV2StoredInfoTypeStats);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion--;
}

core.int buildCounterGooglePrivacyDlpV2StoredType = 0;
api.GooglePrivacyDlpV2StoredType buildGooglePrivacyDlpV2StoredType() {
  var o = api.GooglePrivacyDlpV2StoredType();
  buildCounterGooglePrivacyDlpV2StoredType++;
  if (buildCounterGooglePrivacyDlpV2StoredType < 3) {
    o.createTime = 'foo';
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2StoredType--;
  return o;
}

void checkGooglePrivacyDlpV2StoredType(api.GooglePrivacyDlpV2StoredType o) {
  buildCounterGooglePrivacyDlpV2StoredType++;
  if (buildCounterGooglePrivacyDlpV2StoredType < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2StoredType--;
}

core.int buildCounterGooglePrivacyDlpV2SummaryResult = 0;
api.GooglePrivacyDlpV2SummaryResult buildGooglePrivacyDlpV2SummaryResult() {
  var o = api.GooglePrivacyDlpV2SummaryResult();
  buildCounterGooglePrivacyDlpV2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2SummaryResult < 3) {
    o.code = 'foo';
    o.count = 'foo';
    o.details = 'foo';
  }
  buildCounterGooglePrivacyDlpV2SummaryResult--;
  return o;
}

void checkGooglePrivacyDlpV2SummaryResult(
    api.GooglePrivacyDlpV2SummaryResult o) {
  buildCounterGooglePrivacyDlpV2SummaryResult++;
  if (buildCounterGooglePrivacyDlpV2SummaryResult < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals('foo'));
    unittest.expect(o.details, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2SummaryResult--;
}

core.int buildCounterGooglePrivacyDlpV2SurrogateType = 0;
api.GooglePrivacyDlpV2SurrogateType buildGooglePrivacyDlpV2SurrogateType() {
  var o = api.GooglePrivacyDlpV2SurrogateType();
  buildCounterGooglePrivacyDlpV2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2SurrogateType--;
  return o;
}

void checkGooglePrivacyDlpV2SurrogateType(
    api.GooglePrivacyDlpV2SurrogateType o) {
  buildCounterGooglePrivacyDlpV2SurrogateType++;
  if (buildCounterGooglePrivacyDlpV2SurrogateType < 3) {}
  buildCounterGooglePrivacyDlpV2SurrogateType--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2951() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2951(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.List<api.GooglePrivacyDlpV2Row> buildUnnamed2952() {
  var o = <api.GooglePrivacyDlpV2Row>[];
  o.add(buildGooglePrivacyDlpV2Row());
  o.add(buildGooglePrivacyDlpV2Row());
  return o;
}

void checkUnnamed2952(core.List<api.GooglePrivacyDlpV2Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Row(o[0] as api.GooglePrivacyDlpV2Row);
  checkGooglePrivacyDlpV2Row(o[1] as api.GooglePrivacyDlpV2Row);
}

core.int buildCounterGooglePrivacyDlpV2Table = 0;
api.GooglePrivacyDlpV2Table buildGooglePrivacyDlpV2Table() {
  var o = api.GooglePrivacyDlpV2Table();
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    o.headers = buildUnnamed2951();
    o.rows = buildUnnamed2952();
  }
  buildCounterGooglePrivacyDlpV2Table--;
  return o;
}

void checkGooglePrivacyDlpV2Table(api.GooglePrivacyDlpV2Table o) {
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    checkUnnamed2951(o.headers);
    checkUnnamed2952(o.rows);
  }
  buildCounterGooglePrivacyDlpV2Table--;
}

core.int buildCounterGooglePrivacyDlpV2TableLocation = 0;
api.GooglePrivacyDlpV2TableLocation buildGooglePrivacyDlpV2TableLocation() {
  var o = api.GooglePrivacyDlpV2TableLocation();
  buildCounterGooglePrivacyDlpV2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2TableLocation < 3) {
    o.rowIndex = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TableLocation--;
  return o;
}

void checkGooglePrivacyDlpV2TableLocation(
    api.GooglePrivacyDlpV2TableLocation o) {
  buildCounterGooglePrivacyDlpV2TableLocation++;
  if (buildCounterGooglePrivacyDlpV2TableLocation < 3) {
    unittest.expect(o.rowIndex, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TableLocation--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2953() {
  var o = <api.GooglePrivacyDlpV2FieldId>[];
  o.add(buildGooglePrivacyDlpV2FieldId());
  o.add(buildGooglePrivacyDlpV2FieldId());
  return o;
}

void checkUnnamed2953(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0] as api.GooglePrivacyDlpV2FieldId);
  checkGooglePrivacyDlpV2FieldId(o[1] as api.GooglePrivacyDlpV2FieldId);
}

core.int buildCounterGooglePrivacyDlpV2TableOptions = 0;
api.GooglePrivacyDlpV2TableOptions buildGooglePrivacyDlpV2TableOptions() {
  var o = api.GooglePrivacyDlpV2TableOptions();
  buildCounterGooglePrivacyDlpV2TableOptions++;
  if (buildCounterGooglePrivacyDlpV2TableOptions < 3) {
    o.identifyingFields = buildUnnamed2953();
  }
  buildCounterGooglePrivacyDlpV2TableOptions--;
  return o;
}

void checkGooglePrivacyDlpV2TableOptions(api.GooglePrivacyDlpV2TableOptions o) {
  buildCounterGooglePrivacyDlpV2TableOptions++;
  if (buildCounterGooglePrivacyDlpV2TableOptions < 3) {
    checkUnnamed2953(o.identifyingFields);
  }
  buildCounterGooglePrivacyDlpV2TableOptions--;
}

core.int buildCounterGooglePrivacyDlpV2TaggedField = 0;
api.GooglePrivacyDlpV2TaggedField buildGooglePrivacyDlpV2TaggedField() {
  var o = api.GooglePrivacyDlpV2TaggedField();
  buildCounterGooglePrivacyDlpV2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2TaggedField < 3) {
    o.customTag = 'foo';
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.inferred = buildGoogleProtobufEmpty();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
  }
  buildCounterGooglePrivacyDlpV2TaggedField--;
  return o;
}

void checkGooglePrivacyDlpV2TaggedField(api.GooglePrivacyDlpV2TaggedField o) {
  buildCounterGooglePrivacyDlpV2TaggedField++;
  if (buildCounterGooglePrivacyDlpV2TaggedField < 3) {
    unittest.expect(o.customTag, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
    checkGoogleProtobufEmpty(o.inferred as api.GoogleProtobufEmpty);
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
  }
  buildCounterGooglePrivacyDlpV2TaggedField--;
}

core.int buildCounterGooglePrivacyDlpV2ThrowError = 0;
api.GooglePrivacyDlpV2ThrowError buildGooglePrivacyDlpV2ThrowError() {
  var o = api.GooglePrivacyDlpV2ThrowError();
  buildCounterGooglePrivacyDlpV2ThrowError++;
  if (buildCounterGooglePrivacyDlpV2ThrowError < 3) {}
  buildCounterGooglePrivacyDlpV2ThrowError--;
  return o;
}

void checkGooglePrivacyDlpV2ThrowError(api.GooglePrivacyDlpV2ThrowError o) {
  buildCounterGooglePrivacyDlpV2ThrowError++;
  if (buildCounterGooglePrivacyDlpV2ThrowError < 3) {}
  buildCounterGooglePrivacyDlpV2ThrowError--;
}

core.int buildCounterGooglePrivacyDlpV2TimePartConfig = 0;
api.GooglePrivacyDlpV2TimePartConfig buildGooglePrivacyDlpV2TimePartConfig() {
  var o = api.GooglePrivacyDlpV2TimePartConfig();
  buildCounterGooglePrivacyDlpV2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2TimePartConfig < 3) {
    o.partToExtract = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TimePartConfig--;
  return o;
}

void checkGooglePrivacyDlpV2TimePartConfig(
    api.GooglePrivacyDlpV2TimePartConfig o) {
  buildCounterGooglePrivacyDlpV2TimePartConfig++;
  if (buildCounterGooglePrivacyDlpV2TimePartConfig < 3) {
    unittest.expect(o.partToExtract, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TimePartConfig--;
}

core.int buildCounterGooglePrivacyDlpV2TimeZone = 0;
api.GooglePrivacyDlpV2TimeZone buildGooglePrivacyDlpV2TimeZone() {
  var o = api.GooglePrivacyDlpV2TimeZone();
  buildCounterGooglePrivacyDlpV2TimeZone++;
  if (buildCounterGooglePrivacyDlpV2TimeZone < 3) {
    o.offsetMinutes = 42;
  }
  buildCounterGooglePrivacyDlpV2TimeZone--;
  return o;
}

void checkGooglePrivacyDlpV2TimeZone(api.GooglePrivacyDlpV2TimeZone o) {
  buildCounterGooglePrivacyDlpV2TimeZone++;
  if (buildCounterGooglePrivacyDlpV2TimeZone < 3) {
    unittest.expect(o.offsetMinutes, unittest.equals(42));
  }
  buildCounterGooglePrivacyDlpV2TimeZone--;
}

core.int buildCounterGooglePrivacyDlpV2TimespanConfig = 0;
api.GooglePrivacyDlpV2TimespanConfig buildGooglePrivacyDlpV2TimespanConfig() {
  var o = api.GooglePrivacyDlpV2TimespanConfig();
  buildCounterGooglePrivacyDlpV2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2TimespanConfig < 3) {
    o.enableAutoPopulationOfTimespanConfig = true;
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.timestampField = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2TimespanConfig--;
  return o;
}

void checkGooglePrivacyDlpV2TimespanConfig(
    api.GooglePrivacyDlpV2TimespanConfig o) {
  buildCounterGooglePrivacyDlpV2TimespanConfig++;
  if (buildCounterGooglePrivacyDlpV2TimespanConfig < 3) {
    unittest.expect(o.enableAutoPopulationOfTimespanConfig, unittest.isTrue);
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkGooglePrivacyDlpV2FieldId(
        o.timestampField as api.GooglePrivacyDlpV2FieldId);
  }
  buildCounterGooglePrivacyDlpV2TimespanConfig--;
}

core.int buildCounterGooglePrivacyDlpV2TransformationErrorHandling = 0;
api.GooglePrivacyDlpV2TransformationErrorHandling
    buildGooglePrivacyDlpV2TransformationErrorHandling() {
  var o = api.GooglePrivacyDlpV2TransformationErrorHandling();
  buildCounterGooglePrivacyDlpV2TransformationErrorHandling++;
  if (buildCounterGooglePrivacyDlpV2TransformationErrorHandling < 3) {
    o.leaveUntransformed = buildGooglePrivacyDlpV2LeaveUntransformed();
    o.throwError = buildGooglePrivacyDlpV2ThrowError();
  }
  buildCounterGooglePrivacyDlpV2TransformationErrorHandling--;
  return o;
}

void checkGooglePrivacyDlpV2TransformationErrorHandling(
    api.GooglePrivacyDlpV2TransformationErrorHandling o) {
  buildCounterGooglePrivacyDlpV2TransformationErrorHandling++;
  if (buildCounterGooglePrivacyDlpV2TransformationErrorHandling < 3) {
    checkGooglePrivacyDlpV2LeaveUntransformed(
        o.leaveUntransformed as api.GooglePrivacyDlpV2LeaveUntransformed);
    checkGooglePrivacyDlpV2ThrowError(
        o.throwError as api.GooglePrivacyDlpV2ThrowError);
  }
  buildCounterGooglePrivacyDlpV2TransformationErrorHandling--;
}

core.List<api.GooglePrivacyDlpV2TransformationSummary> buildUnnamed2954() {
  var o = <api.GooglePrivacyDlpV2TransformationSummary>[];
  o.add(buildGooglePrivacyDlpV2TransformationSummary());
  o.add(buildGooglePrivacyDlpV2TransformationSummary());
  return o;
}

void checkUnnamed2954(
    core.List<api.GooglePrivacyDlpV2TransformationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TransformationSummary(
      o[0] as api.GooglePrivacyDlpV2TransformationSummary);
  checkGooglePrivacyDlpV2TransformationSummary(
      o[1] as api.GooglePrivacyDlpV2TransformationSummary);
}

core.int buildCounterGooglePrivacyDlpV2TransformationOverview = 0;
api.GooglePrivacyDlpV2TransformationOverview
    buildGooglePrivacyDlpV2TransformationOverview() {
  var o = api.GooglePrivacyDlpV2TransformationOverview();
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    o.transformationSummaries = buildUnnamed2954();
    o.transformedBytes = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
  return o;
}

void checkGooglePrivacyDlpV2TransformationOverview(
    api.GooglePrivacyDlpV2TransformationOverview o) {
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    checkUnnamed2954(o.transformationSummaries);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
}

core.List<api.GooglePrivacyDlpV2FieldTransformation> buildUnnamed2955() {
  var o = <api.GooglePrivacyDlpV2FieldTransformation>[];
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  o.add(buildGooglePrivacyDlpV2FieldTransformation());
  return o;
}

void checkUnnamed2955(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(
      o[0] as api.GooglePrivacyDlpV2FieldTransformation);
  checkGooglePrivacyDlpV2FieldTransformation(
      o[1] as api.GooglePrivacyDlpV2FieldTransformation);
}

core.List<api.GooglePrivacyDlpV2SummaryResult> buildUnnamed2956() {
  var o = <api.GooglePrivacyDlpV2SummaryResult>[];
  o.add(buildGooglePrivacyDlpV2SummaryResult());
  o.add(buildGooglePrivacyDlpV2SummaryResult());
  return o;
}

void checkUnnamed2956(core.List<api.GooglePrivacyDlpV2SummaryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2SummaryResult(
      o[0] as api.GooglePrivacyDlpV2SummaryResult);
  checkGooglePrivacyDlpV2SummaryResult(
      o[1] as api.GooglePrivacyDlpV2SummaryResult);
}

core.int buildCounterGooglePrivacyDlpV2TransformationSummary = 0;
api.GooglePrivacyDlpV2TransformationSummary
    buildGooglePrivacyDlpV2TransformationSummary() {
  var o = api.GooglePrivacyDlpV2TransformationSummary();
  buildCounterGooglePrivacyDlpV2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2TransformationSummary < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.fieldTransformations = buildUnnamed2955();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.recordSuppress = buildGooglePrivacyDlpV2RecordSuppression();
    o.results = buildUnnamed2956();
    o.transformation = buildGooglePrivacyDlpV2PrimitiveTransformation();
    o.transformedBytes = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TransformationSummary--;
  return o;
}

void checkGooglePrivacyDlpV2TransformationSummary(
    api.GooglePrivacyDlpV2TransformationSummary o) {
  buildCounterGooglePrivacyDlpV2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2TransformationSummary < 3) {
    checkGooglePrivacyDlpV2FieldId(o.field as api.GooglePrivacyDlpV2FieldId);
    checkUnnamed2955(o.fieldTransformations);
    checkGooglePrivacyDlpV2InfoType(
        o.infoType as api.GooglePrivacyDlpV2InfoType);
    checkGooglePrivacyDlpV2RecordSuppression(
        o.recordSuppress as api.GooglePrivacyDlpV2RecordSuppression);
    checkUnnamed2956(o.results);
    checkGooglePrivacyDlpV2PrimitiveTransformation(
        o.transformation as api.GooglePrivacyDlpV2PrimitiveTransformation);
    unittest.expect(o.transformedBytes, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransformationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2TransientCryptoKey = 0;
api.GooglePrivacyDlpV2TransientCryptoKey
    buildGooglePrivacyDlpV2TransientCryptoKey() {
  var o = api.GooglePrivacyDlpV2TransientCryptoKey();
  buildCounterGooglePrivacyDlpV2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2TransientCryptoKey < 3) {
    o.name = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TransientCryptoKey--;
  return o;
}

void checkGooglePrivacyDlpV2TransientCryptoKey(
    api.GooglePrivacyDlpV2TransientCryptoKey o) {
  buildCounterGooglePrivacyDlpV2TransientCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2TransientCryptoKey < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2TransientCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2Trigger = 0;
api.GooglePrivacyDlpV2Trigger buildGooglePrivacyDlpV2Trigger() {
  var o = api.GooglePrivacyDlpV2Trigger();
  buildCounterGooglePrivacyDlpV2Trigger++;
  if (buildCounterGooglePrivacyDlpV2Trigger < 3) {
    o.manual = buildGooglePrivacyDlpV2Manual();
    o.schedule = buildGooglePrivacyDlpV2Schedule();
  }
  buildCounterGooglePrivacyDlpV2Trigger--;
  return o;
}

void checkGooglePrivacyDlpV2Trigger(api.GooglePrivacyDlpV2Trigger o) {
  buildCounterGooglePrivacyDlpV2Trigger++;
  if (buildCounterGooglePrivacyDlpV2Trigger < 3) {
    checkGooglePrivacyDlpV2Manual(o.manual as api.GooglePrivacyDlpV2Manual);
    checkGooglePrivacyDlpV2Schedule(
        o.schedule as api.GooglePrivacyDlpV2Schedule);
  }
  buildCounterGooglePrivacyDlpV2Trigger--;
}

core.int buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey = 0;
api.GooglePrivacyDlpV2UnwrappedCryptoKey
    buildGooglePrivacyDlpV2UnwrappedCryptoKey() {
  var o = api.GooglePrivacyDlpV2UnwrappedCryptoKey();
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey < 3) {
    o.key = 'foo';
  }
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey--;
  return o;
}

void checkGooglePrivacyDlpV2UnwrappedCryptoKey(
    api.GooglePrivacyDlpV2UnwrappedCryptoKey o) {
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey++;
  if (buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = 0;
api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest() {
  var o = api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest < 3) {
    o.deidentifyTemplate = buildGooglePrivacyDlpV2DeidentifyTemplate();
    o.updateMask = 'foo';
  }
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest--;
  return o;
}

void checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
    api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest < 3) {
    checkGooglePrivacyDlpV2DeidentifyTemplate(
        o.deidentifyTemplate as api.GooglePrivacyDlpV2DeidentifyTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest = 0;
api.GooglePrivacyDlpV2UpdateInspectTemplateRequest
    buildGooglePrivacyDlpV2UpdateInspectTemplateRequest() {
  var o = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest();
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest < 3) {
    o.inspectTemplate = buildGooglePrivacyDlpV2InspectTemplate();
    o.updateMask = 'foo';
  }
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest--;
  return o;
}

void checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
    api.GooglePrivacyDlpV2UpdateInspectTemplateRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest < 3) {
    checkGooglePrivacyDlpV2InspectTemplate(
        o.inspectTemplate as api.GooglePrivacyDlpV2InspectTemplate);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2UpdateJobTriggerRequest
    buildGooglePrivacyDlpV2UpdateJobTriggerRequest() {
  var o = api.GooglePrivacyDlpV2UpdateJobTriggerRequest();
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest < 3) {
    o.jobTrigger = buildGooglePrivacyDlpV2JobTrigger();
    o.updateMask = 'foo';
  }
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest--;
  return o;
}

void checkGooglePrivacyDlpV2UpdateJobTriggerRequest(
    api.GooglePrivacyDlpV2UpdateJobTriggerRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest < 3) {
    checkGooglePrivacyDlpV2JobTrigger(
        o.jobTrigger as api.GooglePrivacyDlpV2JobTrigger);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest = 0;
api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest() {
  var o = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.updateMask = 'foo';
  }
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest--;
  return o;
}

void checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
    api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest o) {
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest++;
  if (buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(
        o.config as api.GooglePrivacyDlpV2StoredInfoTypeConfig);
    unittest.expect(o.updateMask, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2Value = 0;
api.GooglePrivacyDlpV2Value buildGooglePrivacyDlpV2Value() {
  var o = api.GooglePrivacyDlpV2Value();
  buildCounterGooglePrivacyDlpV2Value++;
  if (buildCounterGooglePrivacyDlpV2Value < 3) {
    o.booleanValue = true;
    o.dateValue = buildGoogleTypeDate();
    o.dayOfWeekValue = 'foo';
    o.floatValue = 42.0;
    o.integerValue = 'foo';
    o.stringValue = 'foo';
    o.timeValue = buildGoogleTypeTimeOfDay();
    o.timestampValue = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Value--;
  return o;
}

void checkGooglePrivacyDlpV2Value(api.GooglePrivacyDlpV2Value o) {
  buildCounterGooglePrivacyDlpV2Value++;
  if (buildCounterGooglePrivacyDlpV2Value < 3) {
    unittest.expect(o.booleanValue, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue as api.GoogleTypeDate);
    unittest.expect(o.dayOfWeekValue, unittest.equals('foo'));
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.integerValue, unittest.equals('foo'));
    unittest.expect(o.stringValue, unittest.equals('foo'));
    checkGoogleTypeTimeOfDay(o.timeValue as api.GoogleTypeTimeOfDay);
    unittest.expect(o.timestampValue, unittest.equals('foo'));
  }
  buildCounterGooglePrivacyDlpV2Value--;
}

core.int buildCounterGooglePrivacyDlpV2ValueFrequency = 0;
api.GooglePrivacyDlpV2ValueFrequency buildGooglePrivacyDlpV2ValueFrequency() {
  var o = api.GooglePrivacyDlpV2ValueFrequency();
  buildCounterGooglePrivacyDlpV2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2ValueFrequency < 3) {
    o.count = 'foo';
    o.value = buildGooglePrivacyDlpV2Value();
  }
  buildCounterGooglePrivacyDlpV2ValueFrequency--;
  return o;
}

void checkGooglePrivacyDlpV2ValueFrequency(
    api.GooglePrivacyDlpV2ValueFrequency o) {
  buildCounterGooglePrivacyDlpV2ValueFrequency++;
  if (buildCounterGooglePrivacyDlpV2ValueFrequency < 3) {
    unittest.expect(o.count, unittest.equals('foo'));
    checkGooglePrivacyDlpV2Value(o.value as api.GooglePrivacyDlpV2Value);
  }
  buildCounterGooglePrivacyDlpV2ValueFrequency--;
}

core.List<core.String> buildUnnamed2957() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2957(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGooglePrivacyDlpV2WordList = 0;
api.GooglePrivacyDlpV2WordList buildGooglePrivacyDlpV2WordList() {
  var o = api.GooglePrivacyDlpV2WordList();
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    o.words = buildUnnamed2957();
  }
  buildCounterGooglePrivacyDlpV2WordList--;
  return o;
}

void checkGooglePrivacyDlpV2WordList(api.GooglePrivacyDlpV2WordList o) {
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    checkUnnamed2957(o.words);
  }
  buildCounterGooglePrivacyDlpV2WordList--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object> buildUnnamed2958() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2958(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed2959() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2958());
  o.add(buildUnnamed2958());
  return o;
}

void checkUnnamed2959(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2958(o[0]);
  checkUnnamed2958(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2959();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2959(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  var o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeTimeOfDay = 0;
api.GoogleTypeTimeOfDay buildGoogleTypeTimeOfDay() {
  var o = api.GoogleTypeTimeOfDay();
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterGoogleTypeTimeOfDay--;
  return o;
}

void checkGoogleTypeTimeOfDay(api.GoogleTypeTimeOfDay o) {
  buildCounterGoogleTypeTimeOfDay++;
  if (buildCounterGoogleTypeTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterGoogleTypeTimeOfDay--;
}

void main() {
  unittest.group('obj-schema-GooglePrivacyDlpV2Action', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Action();
      var od = api.GooglePrivacyDlpV2Action.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Action(od as api.GooglePrivacyDlpV2Action);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ActivateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      var od =
          api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ActivateJobTriggerRequest(
          od as api.GooglePrivacyDlpV2ActivateJobTriggerRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
      var od = api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(
          od as api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2AuxiliaryTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2AuxiliaryTable();
      var od = api.GooglePrivacyDlpV2AuxiliaryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2AuxiliaryTable(
          od as api.GooglePrivacyDlpV2AuxiliaryTable);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryField', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BigQueryField();
      var od = api.GooglePrivacyDlpV2BigQueryField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryField(
          od as api.GooglePrivacyDlpV2BigQueryField);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BigQueryKey();
      var od = api.GooglePrivacyDlpV2BigQueryKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryKey(
          od as api.GooglePrivacyDlpV2BigQueryKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BigQueryOptions();
      var od = api.GooglePrivacyDlpV2BigQueryOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryOptions(
          od as api.GooglePrivacyDlpV2BigQueryOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BigQueryTable();
      var od = api.GooglePrivacyDlpV2BigQueryTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BigQueryTable(
          od as api.GooglePrivacyDlpV2BigQueryTable);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BoundingBox', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BoundingBox();
      var od = api.GooglePrivacyDlpV2BoundingBox.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BoundingBox(
          od as api.GooglePrivacyDlpV2BoundingBox);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Bucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Bucket();
      var od = api.GooglePrivacyDlpV2Bucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Bucket(od as api.GooglePrivacyDlpV2Bucket);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BucketingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2BucketingConfig();
      var od = api.GooglePrivacyDlpV2BucketingConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2BucketingConfig(
          od as api.GooglePrivacyDlpV2BucketingConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ByteContentItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ByteContentItem();
      var od = api.GooglePrivacyDlpV2ByteContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ByteContentItem(
          od as api.GooglePrivacyDlpV2ByteContentItem);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CancelDlpJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      var od = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CancelDlpJobRequest(
          od as api.GooglePrivacyDlpV2CancelDlpJobRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsConfig();
      var od =
          api.GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsConfig(
          od as api.GooglePrivacyDlpV2CategoricalStatsConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsHistogramBucket',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket();
      var od = api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(
          od as api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CategoricalStatsResult();
      var od =
          api.GooglePrivacyDlpV2CategoricalStatsResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CategoricalStatsResult(
          od as api.GooglePrivacyDlpV2CategoricalStatsResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CharacterMaskConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CharacterMaskConfig();
      var od = api.GooglePrivacyDlpV2CharacterMaskConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CharacterMaskConfig(
          od as api.GooglePrivacyDlpV2CharacterMaskConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CharsToIgnore', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CharsToIgnore();
      var od = api.GooglePrivacyDlpV2CharsToIgnore.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CharsToIgnore(
          od as api.GooglePrivacyDlpV2CharsToIgnore);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageFileSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CloudStorageFileSet();
      var od = api.GooglePrivacyDlpV2CloudStorageFileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStorageFileSet(
          od as api.GooglePrivacyDlpV2CloudStorageFileSet);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CloudStorageOptions();
      var od = api.GooglePrivacyDlpV2CloudStorageOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStorageOptions(
          od as api.GooglePrivacyDlpV2CloudStorageOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStoragePath', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CloudStoragePath();
      var od = api.GooglePrivacyDlpV2CloudStoragePath.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStoragePath(
          od as api.GooglePrivacyDlpV2CloudStoragePath);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageRegexFileSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CloudStorageRegexFileSet();
      var od =
          api.GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CloudStorageRegexFileSet(
          od as api.GooglePrivacyDlpV2CloudStorageRegexFileSet);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Color', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Color();
      var od = api.GooglePrivacyDlpV2Color.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Color(od as api.GooglePrivacyDlpV2Color);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Condition', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Condition();
      var od = api.GooglePrivacyDlpV2Condition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Condition(od as api.GooglePrivacyDlpV2Condition);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Conditions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Conditions();
      var od = api.GooglePrivacyDlpV2Conditions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Conditions(od as api.GooglePrivacyDlpV2Conditions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Container', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Container();
      var od = api.GooglePrivacyDlpV2Container.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Container(od as api.GooglePrivacyDlpV2Container);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ContentItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ContentItem();
      var od = api.GooglePrivacyDlpV2ContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ContentItem(
          od as api.GooglePrivacyDlpV2ContentItem);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ContentLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ContentLocation();
      var od = api.GooglePrivacyDlpV2ContentLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ContentLocation(
          od as api.GooglePrivacyDlpV2ContentLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateDeidentifyTemplateRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var od = api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
          od as api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateDlpJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      var od = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CreateDlpJobRequest(
          od as api.GooglePrivacyDlpV2CreateDlpJobRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateInspectTemplateRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var od = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
          od as api.GooglePrivacyDlpV2CreateInspectTemplateRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      var od =
          api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CreateJobTriggerRequest(
          od as api.GooglePrivacyDlpV2CreateJobTriggerRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateStoredInfoTypeRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var od = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
          od as api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoDeterministicConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CryptoDeterministicConfig();
      var od =
          api.GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoDeterministicConfig(
          od as api.GooglePrivacyDlpV2CryptoDeterministicConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoHashConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CryptoHashConfig();
      var od = api.GooglePrivacyDlpV2CryptoHashConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoHashConfig(
          od as api.GooglePrivacyDlpV2CryptoHashConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CryptoKey();
      var od = api.GooglePrivacyDlpV2CryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoKey(od as api.GooglePrivacyDlpV2CryptoKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
      var od =
          api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(
          od as api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CustomInfoType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2CustomInfoType();
      var od = api.GooglePrivacyDlpV2CustomInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2CustomInfoType(
          od as api.GooglePrivacyDlpV2CustomInfoType);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DatastoreKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DatastoreKey();
      var od = api.GooglePrivacyDlpV2DatastoreKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DatastoreKey(
          od as api.GooglePrivacyDlpV2DatastoreKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DatastoreOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DatastoreOptions();
      var od = api.GooglePrivacyDlpV2DatastoreOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DatastoreOptions(
          od as api.GooglePrivacyDlpV2DatastoreOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DateShiftConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DateShiftConfig();
      var od = api.GooglePrivacyDlpV2DateShiftConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DateShiftConfig(
          od as api.GooglePrivacyDlpV2DateShiftConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DateTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DateTime();
      var od = api.GooglePrivacyDlpV2DateTime.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DateTime(od as api.GooglePrivacyDlpV2DateTime);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeidentifyConfig();
      var od = api.GooglePrivacyDlpV2DeidentifyConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyConfig(
          od as api.GooglePrivacyDlpV2DeidentifyConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyContentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var od =
          api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyContentRequest(
          od as api.GooglePrivacyDlpV2DeidentifyContentRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyContentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeidentifyContentResponse();
      var od =
          api.GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyContentResponse(
          od as api.GooglePrivacyDlpV2DeidentifyContentResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeidentifyTemplate();
      var od = api.GooglePrivacyDlpV2DeidentifyTemplate.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          od as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig();
      var od = api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
          od as api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
      var od =
          api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(
          od as api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
      var od =
          api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.fromJson(
              o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
          od as api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationResult',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DeltaPresenceEstimationResult();
      var od = api.GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
          od as api.GooglePrivacyDlpV2DeltaPresenceEstimationResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DetectionRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DetectionRule();
      var od = api.GooglePrivacyDlpV2DetectionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DetectionRule(
          od as api.GooglePrivacyDlpV2DetectionRule);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Dictionary', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Dictionary();
      var od = api.GooglePrivacyDlpV2Dictionary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Dictionary(od as api.GooglePrivacyDlpV2Dictionary);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DlpJob', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DlpJob();
      var od = api.GooglePrivacyDlpV2DlpJob.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DlpJob(od as api.GooglePrivacyDlpV2DlpJob);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DocumentLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2DocumentLocation();
      var od = api.GooglePrivacyDlpV2DocumentLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2DocumentLocation(
          od as api.GooglePrivacyDlpV2DocumentLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2EntityId', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2EntityId();
      var od = api.GooglePrivacyDlpV2EntityId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2EntityId(od as api.GooglePrivacyDlpV2EntityId);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Error', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Error();
      var od = api.GooglePrivacyDlpV2Error.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Error(od as api.GooglePrivacyDlpV2Error);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ExcludeInfoTypes', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ExcludeInfoTypes();
      var od = api.GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ExcludeInfoTypes(
          od as api.GooglePrivacyDlpV2ExcludeInfoTypes);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ExclusionRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ExclusionRule();
      var od = api.GooglePrivacyDlpV2ExclusionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ExclusionRule(
          od as api.GooglePrivacyDlpV2ExclusionRule);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Expressions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Expressions();
      var od = api.GooglePrivacyDlpV2Expressions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Expressions(
          od as api.GooglePrivacyDlpV2Expressions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FieldId', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FieldId();
      var od = api.GooglePrivacyDlpV2FieldId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FieldId(od as api.GooglePrivacyDlpV2FieldId);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FieldTransformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FieldTransformation();
      var od = api.GooglePrivacyDlpV2FieldTransformation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FieldTransformation(
          od as api.GooglePrivacyDlpV2FieldTransformation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FileSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FileSet();
      var od = api.GooglePrivacyDlpV2FileSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FileSet(od as api.GooglePrivacyDlpV2FileSet);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Finding', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Finding();
      var od = api.GooglePrivacyDlpV2Finding.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Finding(od as api.GooglePrivacyDlpV2Finding);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FindingLimits', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FindingLimits();
      var od = api.GooglePrivacyDlpV2FindingLimits.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FindingLimits(
          od as api.GooglePrivacyDlpV2FindingLimits);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FinishDlpJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FinishDlpJobRequest();
      var od = api.GooglePrivacyDlpV2FinishDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FinishDlpJobRequest(
          od as api.GooglePrivacyDlpV2FinishDlpJobRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FixedSizeBucketingConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2FixedSizeBucketingConfig();
      var od =
          api.GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2FixedSizeBucketingConfig(
          od as api.GooglePrivacyDlpV2FixedSizeBucketingConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HotwordRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HotwordRule();
      var od = api.GooglePrivacyDlpV2HotwordRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HotwordRule(
          od as api.GooglePrivacyDlpV2HotwordRule);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridContentItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridContentItem();
      var od = api.GooglePrivacyDlpV2HybridContentItem.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridContentItem(
          od as api.GooglePrivacyDlpV2HybridContentItem);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridFindingDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridFindingDetails();
      var od = api.GooglePrivacyDlpV2HybridFindingDetails.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridFindingDetails(
          od as api.GooglePrivacyDlpV2HybridFindingDetails);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectDlpJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridInspectDlpJobRequest();
      var od =
          api.GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridInspectDlpJobRequest(
          od as api.GooglePrivacyDlpV2HybridInspectDlpJobRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectJobTriggerRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest();
      var od = api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2HybridInspectJobTriggerRequest(
          od as api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridInspectResponse();
      var od = api.GooglePrivacyDlpV2HybridInspectResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridInspectResponse(
          od as api.GooglePrivacyDlpV2HybridInspectResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectStatistics', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridInspectStatistics();
      var od =
          api.GooglePrivacyDlpV2HybridInspectStatistics.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridInspectStatistics(
          od as api.GooglePrivacyDlpV2HybridInspectStatistics);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2HybridOptions();
      var od = api.GooglePrivacyDlpV2HybridOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2HybridOptions(
          od as api.GooglePrivacyDlpV2HybridOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ImageLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ImageLocation();
      var od = api.GooglePrivacyDlpV2ImageLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ImageLocation(
          od as api.GooglePrivacyDlpV2ImageLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ImageRedactionConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ImageRedactionConfig();
      var od = api.GooglePrivacyDlpV2ImageRedactionConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ImageRedactionConfig(
          od as api.GooglePrivacyDlpV2ImageRedactionConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoType();
      var od = api.GooglePrivacyDlpV2InfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoType(od as api.GooglePrivacyDlpV2InfoType);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeDescription', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoTypeDescription();
      var od = api.GooglePrivacyDlpV2InfoTypeDescription.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeDescription(
          od as api.GooglePrivacyDlpV2InfoTypeDescription);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeLimit', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoTypeLimit();
      var od = api.GooglePrivacyDlpV2InfoTypeLimit.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeLimit(
          od as api.GooglePrivacyDlpV2InfoTypeLimit);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoTypeStats();
      var od = api.GooglePrivacyDlpV2InfoTypeStats.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeStats(
          od as api.GooglePrivacyDlpV2InfoTypeStats);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeTransformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoTypeTransformation();
      var od =
          api.GooglePrivacyDlpV2InfoTypeTransformation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeTransformation(
          od as api.GooglePrivacyDlpV2InfoTypeTransformation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeTransformations', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InfoTypeTransformations();
      var od =
          api.GooglePrivacyDlpV2InfoTypeTransformations.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InfoTypeTransformations(
          od as api.GooglePrivacyDlpV2InfoTypeTransformations);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectConfig();
      var od = api.GooglePrivacyDlpV2InspectConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectConfig(
          od as api.GooglePrivacyDlpV2InspectConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectContentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectContentRequest();
      var od = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectContentRequest(
          od as api.GooglePrivacyDlpV2InspectContentRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectContentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectContentResponse();
      var od =
          api.GooglePrivacyDlpV2InspectContentResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectContentResponse(
          od as api.GooglePrivacyDlpV2InspectContentResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectDataSourceDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectDataSourceDetails();
      var od =
          api.GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectDataSourceDetails(
          od as api.GooglePrivacyDlpV2InspectDataSourceDetails);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectJobConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectJobConfig();
      var od = api.GooglePrivacyDlpV2InspectJobConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectJobConfig(
          od as api.GooglePrivacyDlpV2InspectJobConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectResult();
      var od = api.GooglePrivacyDlpV2InspectResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectResult(
          od as api.GooglePrivacyDlpV2InspectResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectTemplate();
      var od = api.GooglePrivacyDlpV2InspectTemplate.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectTemplate(
          od as api.GooglePrivacyDlpV2InspectTemplate);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectionRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectionRule();
      var od = api.GooglePrivacyDlpV2InspectionRule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectionRule(
          od as api.GooglePrivacyDlpV2InspectionRule);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectionRuleSet', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2InspectionRuleSet();
      var od = api.GooglePrivacyDlpV2InspectionRuleSet.fromJson(o.toJson());
      checkGooglePrivacyDlpV2InspectionRuleSet(
          od as api.GooglePrivacyDlpV2InspectionRuleSet);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2JobNotificationEmails', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2JobNotificationEmails();
      var od = api.GooglePrivacyDlpV2JobNotificationEmails.fromJson(o.toJson());
      checkGooglePrivacyDlpV2JobNotificationEmails(
          od as api.GooglePrivacyDlpV2JobNotificationEmails);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2JobTrigger', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2JobTrigger();
      var od = api.GooglePrivacyDlpV2JobTrigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2JobTrigger(od as api.GooglePrivacyDlpV2JobTrigger);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KAnonymityConfig();
      var od = api.GooglePrivacyDlpV2KAnonymityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityConfig(
          od as api.GooglePrivacyDlpV2KAnonymityConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityEquivalenceClass', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KAnonymityEquivalenceClass();
      var od =
          api.GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
          od as api.GooglePrivacyDlpV2KAnonymityEquivalenceClass);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityHistogramBucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KAnonymityHistogramBucket();
      var od =
          api.GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityHistogramBucket(
          od as api.GooglePrivacyDlpV2KAnonymityHistogramBucket);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KAnonymityResult();
      var od = api.GooglePrivacyDlpV2KAnonymityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KAnonymityResult(
          od as api.GooglePrivacyDlpV2KAnonymityResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KMapEstimationConfig();
      var od = api.GooglePrivacyDlpV2KMapEstimationConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationConfig(
          od as api.GooglePrivacyDlpV2KMapEstimationConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationHistogramBucket',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KMapEstimationHistogramBucket();
      var od = api.GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(
          od as api.GooglePrivacyDlpV2KMapEstimationHistogramBucket);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationQuasiIdValues',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues();
      var od = api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
          od as api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KMapEstimationResult();
      var od = api.GooglePrivacyDlpV2KMapEstimationResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KMapEstimationResult(
          od as api.GooglePrivacyDlpV2KMapEstimationResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Key', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Key();
      var od = api.GooglePrivacyDlpV2Key.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Key(od as api.GooglePrivacyDlpV2Key);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KindExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KindExpression();
      var od = api.GooglePrivacyDlpV2KindExpression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KindExpression(
          od as api.GooglePrivacyDlpV2KindExpression);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KmsWrappedCryptoKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2KmsWrappedCryptoKey();
      var od = api.GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2KmsWrappedCryptoKey(
          od as api.GooglePrivacyDlpV2KmsWrappedCryptoKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LDiversityConfig();
      var od = api.GooglePrivacyDlpV2LDiversityConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityConfig(
          od as api.GooglePrivacyDlpV2LDiversityConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityEquivalenceClass', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LDiversityEquivalenceClass();
      var od =
          api.GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
          od as api.GooglePrivacyDlpV2LDiversityEquivalenceClass);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityHistogramBucket', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LDiversityHistogramBucket();
      var od =
          api.GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityHistogramBucket(
          od as api.GooglePrivacyDlpV2LDiversityHistogramBucket);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LDiversityResult();
      var od = api.GooglePrivacyDlpV2LDiversityResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LDiversityResult(
          od as api.GooglePrivacyDlpV2LDiversityResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryConfig',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LargeCustomDictionaryConfig();
      var od = api.GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(
          od as api.GooglePrivacyDlpV2LargeCustomDictionaryConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LargeCustomDictionaryStats();
      var od =
          api.GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LargeCustomDictionaryStats(
          od as api.GooglePrivacyDlpV2LargeCustomDictionaryStats);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LeaveUntransformed', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LeaveUntransformed();
      var od = api.GooglePrivacyDlpV2LeaveUntransformed.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LeaveUntransformed(
          od as api.GooglePrivacyDlpV2LeaveUntransformed);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LikelihoodAdjustment', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2LikelihoodAdjustment();
      var od = api.GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(o.toJson());
      checkGooglePrivacyDlpV2LikelihoodAdjustment(
          od as api.GooglePrivacyDlpV2LikelihoodAdjustment);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListDeidentifyTemplatesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
      var od = api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
          od as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListDlpJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListDlpJobsResponse();
      var od = api.GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ListDlpJobsResponse(
          od as api.GooglePrivacyDlpV2ListDlpJobsResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListInfoTypesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListInfoTypesResponse();
      var od = api.GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ListInfoTypesResponse(
          od as api.GooglePrivacyDlpV2ListInfoTypesResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListInspectTemplatesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListInspectTemplatesResponse();
      var od = api.GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
          od as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListJobTriggersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListJobTriggersResponse();
      var od =
          api.GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ListJobTriggersResponse(
          od as api.GooglePrivacyDlpV2ListJobTriggersResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListStoredInfoTypesResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ListStoredInfoTypesResponse();
      var od = api.GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
          od as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Location();
      var od = api.GooglePrivacyDlpV2Location.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Location(od as api.GooglePrivacyDlpV2Location);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Manual', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Manual();
      var od = api.GooglePrivacyDlpV2Manual.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Manual(od as api.GooglePrivacyDlpV2Manual);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2MetadataLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2MetadataLocation();
      var od = api.GooglePrivacyDlpV2MetadataLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2MetadataLocation(
          od as api.GooglePrivacyDlpV2MetadataLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2NumericalStatsConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2NumericalStatsConfig();
      var od = api.GooglePrivacyDlpV2NumericalStatsConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2NumericalStatsConfig(
          od as api.GooglePrivacyDlpV2NumericalStatsConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2NumericalStatsResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2NumericalStatsResult();
      var od = api.GooglePrivacyDlpV2NumericalStatsResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2NumericalStatsResult(
          od as api.GooglePrivacyDlpV2NumericalStatsResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2OutputStorageConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2OutputStorageConfig();
      var od = api.GooglePrivacyDlpV2OutputStorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2OutputStorageConfig(
          od as api.GooglePrivacyDlpV2OutputStorageConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PartitionId', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PartitionId();
      var od = api.GooglePrivacyDlpV2PartitionId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PartitionId(
          od as api.GooglePrivacyDlpV2PartitionId);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PathElement', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PathElement();
      var od = api.GooglePrivacyDlpV2PathElement.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PathElement(
          od as api.GooglePrivacyDlpV2PathElement);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PrimitiveTransformation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PrimitiveTransformation();
      var od =
          api.GooglePrivacyDlpV2PrimitiveTransformation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PrimitiveTransformation(
          od as api.GooglePrivacyDlpV2PrimitiveTransformation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PrivacyMetric', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PrivacyMetric();
      var od = api.GooglePrivacyDlpV2PrivacyMetric.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PrivacyMetric(
          od as api.GooglePrivacyDlpV2PrivacyMetric);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Proximity', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Proximity();
      var od = api.GooglePrivacyDlpV2Proximity.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Proximity(od as api.GooglePrivacyDlpV2Proximity);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
      var od = api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
          od as api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishSummaryToCscc', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PublishSummaryToCscc();
      var od = api.GooglePrivacyDlpV2PublishSummaryToCscc.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PublishSummaryToCscc(
          od as api.GooglePrivacyDlpV2PublishSummaryToCscc);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishToPubSub', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PublishToPubSub();
      var od = api.GooglePrivacyDlpV2PublishToPubSub.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PublishToPubSub(
          od as api.GooglePrivacyDlpV2PublishToPubSub);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishToStackdriver', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2PublishToStackdriver();
      var od = api.GooglePrivacyDlpV2PublishToStackdriver.fromJson(o.toJson());
      checkGooglePrivacyDlpV2PublishToStackdriver(
          od as api.GooglePrivacyDlpV2PublishToStackdriver);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiId', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2QuasiId();
      var od = api.GooglePrivacyDlpV2QuasiId.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiId(od as api.GooglePrivacyDlpV2QuasiId);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiIdField', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2QuasiIdField();
      var od = api.GooglePrivacyDlpV2QuasiIdField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiIdField(
          od as api.GooglePrivacyDlpV2QuasiIdField);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiIdentifierField', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2QuasiIdentifierField();
      var od = api.GooglePrivacyDlpV2QuasiIdentifierField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuasiIdentifierField(
          od as api.GooglePrivacyDlpV2QuasiIdentifierField);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuoteInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2QuoteInfo();
      var od = api.GooglePrivacyDlpV2QuoteInfo.fromJson(o.toJson());
      checkGooglePrivacyDlpV2QuoteInfo(od as api.GooglePrivacyDlpV2QuoteInfo);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Range', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Range();
      var od = api.GooglePrivacyDlpV2Range.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Range(od as api.GooglePrivacyDlpV2Range);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordCondition', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RecordCondition();
      var od = api.GooglePrivacyDlpV2RecordCondition.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordCondition(
          od as api.GooglePrivacyDlpV2RecordCondition);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RecordKey();
      var od = api.GooglePrivacyDlpV2RecordKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordKey(od as api.GooglePrivacyDlpV2RecordKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RecordLocation();
      var od = api.GooglePrivacyDlpV2RecordLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordLocation(
          od as api.GooglePrivacyDlpV2RecordLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordSuppression', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RecordSuppression();
      var od = api.GooglePrivacyDlpV2RecordSuppression.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordSuppression(
          od as api.GooglePrivacyDlpV2RecordSuppression);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordTransformations', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RecordTransformations();
      var od = api.GooglePrivacyDlpV2RecordTransformations.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RecordTransformations(
          od as api.GooglePrivacyDlpV2RecordTransformations);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RedactConfig();
      var od = api.GooglePrivacyDlpV2RedactConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactConfig(
          od as api.GooglePrivacyDlpV2RedactConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactImageRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RedactImageRequest();
      var od = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactImageRequest(
          od as api.GooglePrivacyDlpV2RedactImageRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactImageResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RedactImageResponse();
      var od = api.GooglePrivacyDlpV2RedactImageResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RedactImageResponse(
          od as api.GooglePrivacyDlpV2RedactImageResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Regex', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Regex();
      var od = api.GooglePrivacyDlpV2Regex.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Regex(od as api.GooglePrivacyDlpV2Regex);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReidentifyContentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      var od =
          api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ReidentifyContentRequest(
          od as api.GooglePrivacyDlpV2ReidentifyContentRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReidentifyContentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ReidentifyContentResponse();
      var od =
          api.GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ReidentifyContentResponse(
          od as api.GooglePrivacyDlpV2ReidentifyContentResponse);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReplaceValueConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ReplaceValueConfig();
      var od = api.GooglePrivacyDlpV2ReplaceValueConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ReplaceValueConfig(
          od as api.GooglePrivacyDlpV2ReplaceValueConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReplaceWithInfoTypeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
      var od =
          api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(
          od as api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RequestedOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RequestedOptions();
      var od = api.GooglePrivacyDlpV2RequestedOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RequestedOptions(
          od as api.GooglePrivacyDlpV2RequestedOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RequestedRiskAnalysisOptions',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RequestedRiskAnalysisOptions();
      var od = api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2RequestedRiskAnalysisOptions(
          od as api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Result', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Result();
      var od = api.GooglePrivacyDlpV2Result.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Result(od as api.GooglePrivacyDlpV2Result);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RiskAnalysisJobConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
      var od = api.GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2RiskAnalysisJobConfig(
          od as api.GooglePrivacyDlpV2RiskAnalysisJobConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Row', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Row();
      var od = api.GooglePrivacyDlpV2Row.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Row(od as api.GooglePrivacyDlpV2Row);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SaveFindings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2SaveFindings();
      var od = api.GooglePrivacyDlpV2SaveFindings.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SaveFindings(
          od as api.GooglePrivacyDlpV2SaveFindings);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Schedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Schedule();
      var od = api.GooglePrivacyDlpV2Schedule.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Schedule(od as api.GooglePrivacyDlpV2Schedule);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StatisticalTable', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StatisticalTable();
      var od = api.GooglePrivacyDlpV2StatisticalTable.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StatisticalTable(
          od as api.GooglePrivacyDlpV2StatisticalTable);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StorageConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StorageConfig();
      var od = api.GooglePrivacyDlpV2StorageConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StorageConfig(
          od as api.GooglePrivacyDlpV2StorageConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StorageMetadataLabel', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StorageMetadataLabel();
      var od = api.GooglePrivacyDlpV2StorageMetadataLabel.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StorageMetadataLabel(
          od as api.GooglePrivacyDlpV2StorageMetadataLabel);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StoredInfoType();
      var od = api.GooglePrivacyDlpV2StoredInfoType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoType(
          od as api.GooglePrivacyDlpV2StoredInfoType);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
      var od = api.GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeConfig(
          od as api.GooglePrivacyDlpV2StoredInfoTypeConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeStats', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeStats();
      var od = api.GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeStats(
          od as api.GooglePrivacyDlpV2StoredInfoTypeStats);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
      var od = api.GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredInfoTypeVersion(
          od as api.GooglePrivacyDlpV2StoredInfoTypeVersion);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2StoredType();
      var od = api.GooglePrivacyDlpV2StoredType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2StoredType(od as api.GooglePrivacyDlpV2StoredType);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SummaryResult', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2SummaryResult();
      var od = api.GooglePrivacyDlpV2SummaryResult.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SummaryResult(
          od as api.GooglePrivacyDlpV2SummaryResult);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SurrogateType', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2SurrogateType();
      var od = api.GooglePrivacyDlpV2SurrogateType.fromJson(o.toJson());
      checkGooglePrivacyDlpV2SurrogateType(
          od as api.GooglePrivacyDlpV2SurrogateType);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Table();
      var od = api.GooglePrivacyDlpV2Table.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Table(od as api.GooglePrivacyDlpV2Table);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TableLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TableLocation();
      var od = api.GooglePrivacyDlpV2TableLocation.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TableLocation(
          od as api.GooglePrivacyDlpV2TableLocation);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TableOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TableOptions();
      var od = api.GooglePrivacyDlpV2TableOptions.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TableOptions(
          od as api.GooglePrivacyDlpV2TableOptions);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TaggedField', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TaggedField();
      var od = api.GooglePrivacyDlpV2TaggedField.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TaggedField(
          od as api.GooglePrivacyDlpV2TaggedField);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ThrowError', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ThrowError();
      var od = api.GooglePrivacyDlpV2ThrowError.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ThrowError(od as api.GooglePrivacyDlpV2ThrowError);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimePartConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TimePartConfig();
      var od = api.GooglePrivacyDlpV2TimePartConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimePartConfig(
          od as api.GooglePrivacyDlpV2TimePartConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimeZone', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TimeZone();
      var od = api.GooglePrivacyDlpV2TimeZone.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimeZone(od as api.GooglePrivacyDlpV2TimeZone);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimespanConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TimespanConfig();
      var od = api.GooglePrivacyDlpV2TimespanConfig.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TimespanConfig(
          od as api.GooglePrivacyDlpV2TimespanConfig);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationErrorHandling',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TransformationErrorHandling();
      var od = api.GooglePrivacyDlpV2TransformationErrorHandling.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2TransformationErrorHandling(
          od as api.GooglePrivacyDlpV2TransformationErrorHandling);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationOverview', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TransformationOverview();
      var od =
          api.GooglePrivacyDlpV2TransformationOverview.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransformationOverview(
          od as api.GooglePrivacyDlpV2TransformationOverview);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TransformationSummary();
      var od = api.GooglePrivacyDlpV2TransformationSummary.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransformationSummary(
          od as api.GooglePrivacyDlpV2TransformationSummary);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransientCryptoKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2TransientCryptoKey();
      var od = api.GooglePrivacyDlpV2TransientCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2TransientCryptoKey(
          od as api.GooglePrivacyDlpV2TransientCryptoKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Trigger', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Trigger();
      var od = api.GooglePrivacyDlpV2Trigger.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Trigger(od as api.GooglePrivacyDlpV2Trigger);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UnwrappedCryptoKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2UnwrappedCryptoKey();
      var od = api.GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(o.toJson());
      checkGooglePrivacyDlpV2UnwrappedCryptoKey(
          od as api.GooglePrivacyDlpV2UnwrappedCryptoKey);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var od = api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
          od as api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateInspectTemplateRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var od = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
          od as api.GooglePrivacyDlpV2UpdateInspectTemplateRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      var od =
          api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(o.toJson());
      checkGooglePrivacyDlpV2UpdateJobTriggerRequest(
          od as api.GooglePrivacyDlpV2UpdateJobTriggerRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateStoredInfoTypeRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var od = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
          o.toJson());
      checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
          od as api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Value', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2Value();
      var od = api.GooglePrivacyDlpV2Value.fromJson(o.toJson());
      checkGooglePrivacyDlpV2Value(od as api.GooglePrivacyDlpV2Value);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ValueFrequency', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2ValueFrequency();
      var od = api.GooglePrivacyDlpV2ValueFrequency.fromJson(o.toJson());
      checkGooglePrivacyDlpV2ValueFrequency(
          od as api.GooglePrivacyDlpV2ValueFrequency);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2WordList', () {
    unittest.test('to-json--from-json', () {
      var o = buildGooglePrivacyDlpV2WordList();
      var od = api.GooglePrivacyDlpV2WordList.fromJson(o.toJson());
      checkGooglePrivacyDlpV2WordList(od as api.GooglePrivacyDlpV2WordList);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeDate();
      var od = api.GoogleTypeDate.fromJson(o.toJson());
      checkGoogleTypeDate(od as api.GoogleTypeDate);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeOfDay', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeTimeOfDay();
      var od = api.GoogleTypeTimeOfDay.fromJson(o.toJson());
      checkGoogleTypeTimeOfDay(od as api.GoogleTypeTimeOfDay);
    });
  });

  unittest.group('resource-InfoTypesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).infoTypes;
      var arg_filter = 'foo';
      var arg_languageCode = 'foo';
      var arg_locationId = 'foo';
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v2/infoTypes"));
        pathOffset += 12;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(queryMap["parent"].first, unittest.equals(arg_parent));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              filter: arg_filter,
              languageCode: arg_languageCode,
              locationId: arg_locationId,
              parent: arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListInfoTypesResponse);
      })));
    });
  });

  unittest.group('resource-LocationsInfoTypesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).locations.infoTypes;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_languageCode = 'foo';
      var arg_locationId = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              languageCode: arg_languageCode,
              locationId: arg_locationId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListInfoTypesResponse);
      })));
    });
  });

  unittest.group('resource-OrganizationsDeidentifyTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });
  });

  unittest.group('resource-OrganizationsInspectTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.inspectTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });
  });

  unittest.group(
      'resource-OrganizationsLocationsDeidentifyTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.deidentifyTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });
  });

  unittest.group('resource-OrganizationsLocationsInspectTemplatesResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.inspectTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });
  });

  unittest.group('resource-OrganizationsLocationsStoredInfoTypesResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.storedInfoTypes;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.locations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });
  });

  unittest.group('resource-OrganizationsStoredInfoTypesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).organizations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });
  });

  unittest.group('resource-ProjectsContentResourceApi', () {
    unittest.test('method--deidentify', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(
            obj as api.GooglePrivacyDlpV2DeidentifyContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyContentResponse(
            response as api.GooglePrivacyDlpV2DeidentifyContentResponse);
      })));
    });

    unittest.test('method--inspect', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2InspectContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2InspectContentRequest(
            obj as api.GooglePrivacyDlpV2InspectContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2InspectContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inspect(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectContentResponse(
            response as api.GooglePrivacyDlpV2InspectContentResponse);
      })));
    });

    unittest.test('method--reidentify', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.content;
      var arg_request = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ReidentifyContentRequest(
            obj as api.GooglePrivacyDlpV2ReidentifyContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ReidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ReidentifyContentResponse(
            response as api.GooglePrivacyDlpV2ReidentifyContentResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsDeidentifyTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });
  });

  unittest.group('resource-ProjectsDlpJobsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CancelDlpJobRequest(
            obj as api.GooglePrivacyDlpV2CancelDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDlpJobRequest(
            obj as api.GooglePrivacyDlpV2CreateDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.dlpJobs;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.dlpJobs;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.dlpJobs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_type = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDlpJobsResponse(
            response as api.GooglePrivacyDlpV2ListDlpJobsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsImageResourceApi', () {
    unittest.test('method--redact', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.image;
      var arg_request = buildGooglePrivacyDlpV2RedactImageRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2RedactImageRequest(
            obj as api.GooglePrivacyDlpV2RedactImageRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2RedactImageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .redact(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2RedactImageResponse(
            response as api.GooglePrivacyDlpV2RedactImageResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsInspectTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.inspectTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });
  });

  unittest.group('resource-ProjectsJobTriggersResourceApi', () {
    unittest.test('method--activate', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ActivateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2ActivateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .activate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2CreateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListJobTriggersResponse(
            response as api.GooglePrivacyDlpV2ListJobTriggersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2UpdateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsContentResourceApi', () {
    unittest.test('method--deidentify', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.content;
      var arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(
            obj as api.GooglePrivacyDlpV2DeidentifyContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyContentResponse(
            response as api.GooglePrivacyDlpV2DeidentifyContentResponse);
      })));
    });

    unittest.test('method--inspect', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.content;
      var arg_request = buildGooglePrivacyDlpV2InspectContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2InspectContentRequest(
            obj as api.GooglePrivacyDlpV2InspectContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2InspectContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .inspect(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectContentResponse(
            response as api.GooglePrivacyDlpV2InspectContentResponse);
      })));
    });

    unittest.test('method--reidentify', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.content;
      var arg_request = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ReidentifyContentRequest(
            obj as api.GooglePrivacyDlpV2ReidentifyContentRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ReidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reidentify(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ReidentifyContentResponse(
            response as api.GooglePrivacyDlpV2ReidentifyContentResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsDeidentifyTemplatesResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.deidentifyTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.deidentifyTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.deidentifyTemplates;
      var arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DeidentifyTemplate(
            response as api.GooglePrivacyDlpV2DeidentifyTemplate);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsDlpJobsResourceApi', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CancelDlpJobRequest(
            obj as api.GooglePrivacyDlpV2CancelDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDlpJobRequest(
            obj as api.GooglePrivacyDlpV2CreateDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--finish', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2FinishDlpJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2FinishDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2FinishDlpJobRequest(
            obj as api.GooglePrivacyDlpV2FinishDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .finish(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--hybridInspect', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_request = buildGooglePrivacyDlpV2HybridInspectDlpJobRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2HybridInspectDlpJobRequest(
            obj as api.GooglePrivacyDlpV2HybridInspectDlpJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2HybridInspectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hybridInspect(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2HybridInspectResponse(
            response as api.GooglePrivacyDlpV2HybridInspectResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.dlpJobs;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_type = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListDlpJobsResponse(
            response as api.GooglePrivacyDlpV2ListDlpJobsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsImageResourceApi', () {
    unittest.test('method--redact', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.image;
      var arg_request = buildGooglePrivacyDlpV2RedactImageRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2RedactImageRequest(
            obj as api.GooglePrivacyDlpV2RedactImageRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2RedactImageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .redact(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2RedactImageResponse(
            response as api.GooglePrivacyDlpV2RedactImageResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsInspectTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2CreateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.inspectTemplates;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.inspectTemplates;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
            response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.inspectTemplates;
      var arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(
            obj as api.GooglePrivacyDlpV2UpdateInspectTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2InspectTemplate(
            response as api.GooglePrivacyDlpV2InspectTemplate);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobTriggersResourceApi', () {
    unittest.test('method--activate', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ActivateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2ActivateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .activate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2CreateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });

    unittest.test('method--hybridInspect', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2HybridInspectJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGooglePrivacyDlpV2HybridInspectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .hybridInspect(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2HybridInspectResponse(
            response as api.GooglePrivacyDlpV2HybridInspectResponse);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListJobTriggersResponse(
            response as api.GooglePrivacyDlpV2ListJobTriggersResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.jobTriggers;
      var arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(
            obj as api.GooglePrivacyDlpV2UpdateJobTriggerRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2JobTrigger(
            response as api.GooglePrivacyDlpV2JobTrigger);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsStoredInfoTypesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.storedInfoTypes;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.locations.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });
  });

  unittest.group('resource-ProjectsStoredInfoTypesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.storedInfoTypes;
      var arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.storedInfoTypes;
      var arg_parent = 'foo';
      var arg_locationId = 'foo';
      var arg_orderBy = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap["locationId"].first, unittest.equals(arg_locationId));
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              locationId: arg_locationId,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
            response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.DlpApi(mock).projects.storedInfoTypes;
      var arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(
            obj as api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v2/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGooglePrivacyDlpV2StoredInfoType(
            response as api.GooglePrivacyDlpV2StoredInfoType);
      })));
    });
  });
}
