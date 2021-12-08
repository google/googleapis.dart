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

import 'package:googleapis/dlp/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGooglePrivacyDlpV2Action = 0;
api.GooglePrivacyDlpV2Action buildGooglePrivacyDlpV2Action() {
  final o = api.GooglePrivacyDlpV2Action();
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
    checkGooglePrivacyDlpV2JobNotificationEmails(o.jobNotificationEmails!);
    checkGooglePrivacyDlpV2PublishToPubSub(o.pubSub!);
    checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(
        o.publishFindingsToCloudDataCatalog!);
    checkGooglePrivacyDlpV2PublishSummaryToCscc(o.publishSummaryToCscc!);
    checkGooglePrivacyDlpV2PublishToStackdriver(o.publishToStackdriver!);
    checkGooglePrivacyDlpV2SaveFindings(o.saveFindings!);
  }
  buildCounterGooglePrivacyDlpV2Action--;
}

core.int buildCounterGooglePrivacyDlpV2ActivateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2ActivateJobTriggerRequest
    buildGooglePrivacyDlpV2ActivateJobTriggerRequest() {
  final o = api.GooglePrivacyDlpV2ActivateJobTriggerRequest();
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
  final o = api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
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
    checkGooglePrivacyDlpV2CategoricalStatsResult(o.categoricalStatsResult!);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
        o.deltaPresenceEstimationResult!);
    checkGooglePrivacyDlpV2KAnonymityResult(o.kAnonymityResult!);
    checkGooglePrivacyDlpV2KMapEstimationResult(o.kMapEstimationResult!);
    checkGooglePrivacyDlpV2LDiversityResult(o.lDiversityResult!);
    checkGooglePrivacyDlpV2NumericalStatsResult(o.numericalStatsResult!);
    checkGooglePrivacyDlpV2RequestedRiskAnalysisOptions(o.requestedOptions!);
    checkGooglePrivacyDlpV2PrivacyMetric(o.requestedPrivacyMetric!);
    checkGooglePrivacyDlpV2BigQueryTable(o.requestedSourceTable!);
  }
  buildCounterGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails--;
}

core.List<api.GooglePrivacyDlpV2QuasiIdField> buildUnnamed0() => [
      buildGooglePrivacyDlpV2QuasiIdField(),
      buildGooglePrivacyDlpV2QuasiIdField(),
    ];

void checkUnnamed0(core.List<api.GooglePrivacyDlpV2QuasiIdField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdField(o[0]);
  checkGooglePrivacyDlpV2QuasiIdField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2AuxiliaryTable = 0;
api.GooglePrivacyDlpV2AuxiliaryTable buildGooglePrivacyDlpV2AuxiliaryTable() {
  final o = api.GooglePrivacyDlpV2AuxiliaryTable();
  buildCounterGooglePrivacyDlpV2AuxiliaryTable++;
  if (buildCounterGooglePrivacyDlpV2AuxiliaryTable < 3) {
    o.quasiIds = buildUnnamed0();
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
    checkUnnamed0(o.quasiIds!);
    checkGooglePrivacyDlpV2FieldId(o.relativeFrequency!);
    checkGooglePrivacyDlpV2BigQueryTable(o.table!);
  }
  buildCounterGooglePrivacyDlpV2AuxiliaryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryField = 0;
api.GooglePrivacyDlpV2BigQueryField buildGooglePrivacyDlpV2BigQueryField() {
  final o = api.GooglePrivacyDlpV2BigQueryField();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
    checkGooglePrivacyDlpV2BigQueryTable(o.table!);
  }
  buildCounterGooglePrivacyDlpV2BigQueryField--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryKey = 0;
api.GooglePrivacyDlpV2BigQueryKey buildGooglePrivacyDlpV2BigQueryKey() {
  final o = api.GooglePrivacyDlpV2BigQueryKey();
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
    unittest.expect(
      o.rowNumber!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2BigQueryTable(o.tableReference!);
  }
  buildCounterGooglePrivacyDlpV2BigQueryKey--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed1() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed1(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed2() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed2(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed3() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed3(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2BigQueryOptions = 0;
api.GooglePrivacyDlpV2BigQueryOptions buildGooglePrivacyDlpV2BigQueryOptions() {
  final o = api.GooglePrivacyDlpV2BigQueryOptions();
  buildCounterGooglePrivacyDlpV2BigQueryOptions++;
  if (buildCounterGooglePrivacyDlpV2BigQueryOptions < 3) {
    o.excludedFields = buildUnnamed1();
    o.identifyingFields = buildUnnamed2();
    o.includedFields = buildUnnamed3();
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
    checkUnnamed1(o.excludedFields!);
    checkUnnamed2(o.identifyingFields!);
    checkUnnamed3(o.includedFields!);
    unittest.expect(
      o.rowsLimit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowsLimitPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sampleMethod!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2BigQueryTable(o.tableReference!);
  }
  buildCounterGooglePrivacyDlpV2BigQueryOptions--;
}

core.int buildCounterGooglePrivacyDlpV2BigQueryTable = 0;
api.GooglePrivacyDlpV2BigQueryTable buildGooglePrivacyDlpV2BigQueryTable() {
  final o = api.GooglePrivacyDlpV2BigQueryTable();
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
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2BigQueryTable--;
}

core.int buildCounterGooglePrivacyDlpV2BoundingBox = 0;
api.GooglePrivacyDlpV2BoundingBox buildGooglePrivacyDlpV2BoundingBox() {
  final o = api.GooglePrivacyDlpV2BoundingBox();
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
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.left!,
      unittest.equals(42),
    );
    unittest.expect(
      o.top!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2BoundingBox--;
}

core.int buildCounterGooglePrivacyDlpV2Bucket = 0;
api.GooglePrivacyDlpV2Bucket buildGooglePrivacyDlpV2Bucket() {
  final o = api.GooglePrivacyDlpV2Bucket();
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
    checkGooglePrivacyDlpV2Value(o.max!);
    checkGooglePrivacyDlpV2Value(o.min!);
    checkGooglePrivacyDlpV2Value(o.replacementValue!);
  }
  buildCounterGooglePrivacyDlpV2Bucket--;
}

core.List<api.GooglePrivacyDlpV2Bucket> buildUnnamed4() => [
      buildGooglePrivacyDlpV2Bucket(),
      buildGooglePrivacyDlpV2Bucket(),
    ];

void checkUnnamed4(core.List<api.GooglePrivacyDlpV2Bucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Bucket(o[0]);
  checkGooglePrivacyDlpV2Bucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2BucketingConfig = 0;
api.GooglePrivacyDlpV2BucketingConfig buildGooglePrivacyDlpV2BucketingConfig() {
  final o = api.GooglePrivacyDlpV2BucketingConfig();
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    o.buckets = buildUnnamed4();
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
  return o;
}

void checkGooglePrivacyDlpV2BucketingConfig(
    api.GooglePrivacyDlpV2BucketingConfig o) {
  buildCounterGooglePrivacyDlpV2BucketingConfig++;
  if (buildCounterGooglePrivacyDlpV2BucketingConfig < 3) {
    checkUnnamed4(o.buckets!);
  }
  buildCounterGooglePrivacyDlpV2BucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ByteContentItem = 0;
api.GooglePrivacyDlpV2ByteContentItem buildGooglePrivacyDlpV2ByteContentItem() {
  final o = api.GooglePrivacyDlpV2ByteContentItem();
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
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ByteContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2CancelDlpJobRequest = 0;
api.GooglePrivacyDlpV2CancelDlpJobRequest
    buildGooglePrivacyDlpV2CancelDlpJobRequest() {
  final o = api.GooglePrivacyDlpV2CancelDlpJobRequest();
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
  final o = api.GooglePrivacyDlpV2CategoricalStatsConfig();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsConfig--;
}

core.List<api.GooglePrivacyDlpV2ValueFrequency> buildUnnamed5() => [
      buildGooglePrivacyDlpV2ValueFrequency(),
      buildGooglePrivacyDlpV2ValueFrequency(),
    ];

void checkUnnamed5(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket = 0;
api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket
    buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket() {
  final o = api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket();
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed5();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketValueCount!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.bucketValues!);
    unittest.expect(
      o.valueFrequencyLowerBound!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueFrequencyUpperBound!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket>
    buildUnnamed6() => [
          buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket(),
          buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket(),
        ];

void checkUnnamed6(
    core.List<api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CategoricalStatsResult = 0;
api.GooglePrivacyDlpV2CategoricalStatsResult
    buildGooglePrivacyDlpV2CategoricalStatsResult() {
  final o = api.GooglePrivacyDlpV2CategoricalStatsResult();
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    o.valueFrequencyHistogramBuckets = buildUnnamed6();
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
  return o;
}

void checkGooglePrivacyDlpV2CategoricalStatsResult(
    api.GooglePrivacyDlpV2CategoricalStatsResult o) {
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2CategoricalStatsResult < 3) {
    checkUnnamed6(o.valueFrequencyHistogramBuckets!);
  }
  buildCounterGooglePrivacyDlpV2CategoricalStatsResult--;
}

core.List<api.GooglePrivacyDlpV2CharsToIgnore> buildUnnamed7() => [
      buildGooglePrivacyDlpV2CharsToIgnore(),
      buildGooglePrivacyDlpV2CharsToIgnore(),
    ];

void checkUnnamed7(core.List<api.GooglePrivacyDlpV2CharsToIgnore> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CharsToIgnore(o[0]);
  checkGooglePrivacyDlpV2CharsToIgnore(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CharacterMaskConfig = 0;
api.GooglePrivacyDlpV2CharacterMaskConfig
    buildGooglePrivacyDlpV2CharacterMaskConfig() {
  final o = api.GooglePrivacyDlpV2CharacterMaskConfig();
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig++;
  if (buildCounterGooglePrivacyDlpV2CharacterMaskConfig < 3) {
    o.charactersToIgnore = buildUnnamed7();
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
    checkUnnamed7(o.charactersToIgnore!);
    unittest.expect(
      o.maskingCharacter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numberToMask!,
      unittest.equals(42),
    );
    unittest.expect(o.reverseOrder!, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2CharacterMaskConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CharsToIgnore = 0;
api.GooglePrivacyDlpV2CharsToIgnore buildGooglePrivacyDlpV2CharsToIgnore() {
  final o = api.GooglePrivacyDlpV2CharsToIgnore();
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
    unittest.expect(
      o.charactersToSkip!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commonCharactersToIgnore!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CharsToIgnore--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStorageFileSet = 0;
api.GooglePrivacyDlpV2CloudStorageFileSet
    buildGooglePrivacyDlpV2CloudStorageFileSet() {
  final o = api.GooglePrivacyDlpV2CloudStorageFileSet();
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
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CloudStorageFileSet--;
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

core.int buildCounterGooglePrivacyDlpV2CloudStorageOptions = 0;
api.GooglePrivacyDlpV2CloudStorageOptions
    buildGooglePrivacyDlpV2CloudStorageOptions() {
  final o = api.GooglePrivacyDlpV2CloudStorageOptions();
  buildCounterGooglePrivacyDlpV2CloudStorageOptions++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageOptions < 3) {
    o.bytesLimitPerFile = 'foo';
    o.bytesLimitPerFilePercent = 42;
    o.fileSet = buildGooglePrivacyDlpV2FileSet();
    o.fileTypes = buildUnnamed8();
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
    unittest.expect(
      o.bytesLimitPerFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bytesLimitPerFilePercent!,
      unittest.equals(42),
    );
    checkGooglePrivacyDlpV2FileSet(o.fileSet!);
    checkUnnamed8(o.fileTypes!);
    unittest.expect(
      o.filesLimitPercent!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sampleMethod!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CloudStorageOptions--;
}

core.int buildCounterGooglePrivacyDlpV2CloudStoragePath = 0;
api.GooglePrivacyDlpV2CloudStoragePath
    buildGooglePrivacyDlpV2CloudStoragePath() {
  final o = api.GooglePrivacyDlpV2CloudStoragePath();
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
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CloudStoragePath--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet = 0;
api.GooglePrivacyDlpV2CloudStorageRegexFileSet
    buildGooglePrivacyDlpV2CloudStorageRegexFileSet() {
  final o = api.GooglePrivacyDlpV2CloudStorageRegexFileSet();
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    o.bucketName = 'foo';
    o.excludeRegex = buildUnnamed9();
    o.includeRegex = buildUnnamed10();
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
  return o;
}

void checkGooglePrivacyDlpV2CloudStorageRegexFileSet(
    api.GooglePrivacyDlpV2CloudStorageRegexFileSet o) {
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet++;
  if (buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet < 3) {
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.excludeRegex!);
    checkUnnamed10(o.includeRegex!);
  }
  buildCounterGooglePrivacyDlpV2CloudStorageRegexFileSet--;
}

core.int buildCounterGooglePrivacyDlpV2Color = 0;
api.GooglePrivacyDlpV2Color buildGooglePrivacyDlpV2Color() {
  final o = api.GooglePrivacyDlpV2Color();
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
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterGooglePrivacyDlpV2Color--;
}

core.int buildCounterGooglePrivacyDlpV2Condition = 0;
api.GooglePrivacyDlpV2Condition buildGooglePrivacyDlpV2Condition() {
  final o = api.GooglePrivacyDlpV2Condition();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Value(o.value!);
  }
  buildCounterGooglePrivacyDlpV2Condition--;
}

core.List<api.GooglePrivacyDlpV2Condition> buildUnnamed11() => [
      buildGooglePrivacyDlpV2Condition(),
      buildGooglePrivacyDlpV2Condition(),
    ];

void checkUnnamed11(core.List<api.GooglePrivacyDlpV2Condition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Condition(o[0]);
  checkGooglePrivacyDlpV2Condition(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Conditions = 0;
api.GooglePrivacyDlpV2Conditions buildGooglePrivacyDlpV2Conditions() {
  final o = api.GooglePrivacyDlpV2Conditions();
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    o.conditions = buildUnnamed11();
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
  return o;
}

void checkGooglePrivacyDlpV2Conditions(api.GooglePrivacyDlpV2Conditions o) {
  buildCounterGooglePrivacyDlpV2Conditions++;
  if (buildCounterGooglePrivacyDlpV2Conditions < 3) {
    checkUnnamed11(o.conditions!);
  }
  buildCounterGooglePrivacyDlpV2Conditions--;
}

core.int buildCounterGooglePrivacyDlpV2Container = 0;
api.GooglePrivacyDlpV2Container buildGooglePrivacyDlpV2Container() {
  final o = api.GooglePrivacyDlpV2Container();
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
    unittest.expect(
      o.fullPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rootPath!,
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
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Container--;
}

core.int buildCounterGooglePrivacyDlpV2ContentItem = 0;
api.GooglePrivacyDlpV2ContentItem buildGooglePrivacyDlpV2ContentItem() {
  final o = api.GooglePrivacyDlpV2ContentItem();
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
    checkGooglePrivacyDlpV2ByteContentItem(o.byteItem!);
    checkGooglePrivacyDlpV2Table(o.table!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ContentItem--;
}

core.int buildCounterGooglePrivacyDlpV2ContentLocation = 0;
api.GooglePrivacyDlpV2ContentLocation buildGooglePrivacyDlpV2ContentLocation() {
  final o = api.GooglePrivacyDlpV2ContentLocation();
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
    unittest.expect(
      o.containerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerVersion!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2DocumentLocation(o.documentLocation!);
    checkGooglePrivacyDlpV2ImageLocation(o.imageLocation!);
    checkGooglePrivacyDlpV2MetadataLocation(o.metadataLocation!);
    checkGooglePrivacyDlpV2RecordLocation(o.recordLocation!);
  }
  buildCounterGooglePrivacyDlpV2ContentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest = 0;
api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest() {
  final o = api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
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
    checkGooglePrivacyDlpV2DeidentifyTemplate(o.deidentifyTemplate!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CreateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateDlpJobRequest = 0;
api.GooglePrivacyDlpV2CreateDlpJobRequest
    buildGooglePrivacyDlpV2CreateDlpJobRequest() {
  final o = api.GooglePrivacyDlpV2CreateDlpJobRequest();
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
    checkGooglePrivacyDlpV2InspectJobConfig(o.inspectJob!);
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2RiskAnalysisJobConfig(o.riskJob!);
  }
  buildCounterGooglePrivacyDlpV2CreateDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest = 0;
api.GooglePrivacyDlpV2CreateInspectTemplateRequest
    buildGooglePrivacyDlpV2CreateInspectTemplateRequest() {
  final o = api.GooglePrivacyDlpV2CreateInspectTemplateRequest();
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
    checkGooglePrivacyDlpV2InspectTemplate(o.inspectTemplate!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CreateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2CreateJobTriggerRequest
    buildGooglePrivacyDlpV2CreateJobTriggerRequest() {
  final o = api.GooglePrivacyDlpV2CreateJobTriggerRequest();
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
    checkGooglePrivacyDlpV2JobTrigger(o.jobTrigger!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CreateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest = 0;
api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest
    buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest() {
  final o = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest();
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
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.storedInfoTypeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2CreateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig = 0;
api.GooglePrivacyDlpV2CryptoDeterministicConfig
    buildGooglePrivacyDlpV2CryptoDeterministicConfig() {
  final o = api.GooglePrivacyDlpV2CryptoDeterministicConfig();
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
    checkGooglePrivacyDlpV2FieldId(o.context!);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey!);
    checkGooglePrivacyDlpV2InfoType(o.surrogateInfoType!);
  }
  buildCounterGooglePrivacyDlpV2CryptoDeterministicConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoHashConfig = 0;
api.GooglePrivacyDlpV2CryptoHashConfig
    buildGooglePrivacyDlpV2CryptoHashConfig() {
  final o = api.GooglePrivacyDlpV2CryptoHashConfig();
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
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey!);
  }
  buildCounterGooglePrivacyDlpV2CryptoHashConfig--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoKey = 0;
api.GooglePrivacyDlpV2CryptoKey buildGooglePrivacyDlpV2CryptoKey() {
  final o = api.GooglePrivacyDlpV2CryptoKey();
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
    checkGooglePrivacyDlpV2KmsWrappedCryptoKey(o.kmsWrapped!);
    checkGooglePrivacyDlpV2TransientCryptoKey(o.transient!);
    checkGooglePrivacyDlpV2UnwrappedCryptoKey(o.unwrapped!);
  }
  buildCounterGooglePrivacyDlpV2CryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = 0;
api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig
    buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig() {
  final o = api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
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
    unittest.expect(
      o.commonAlphabet!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.context!);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey!);
    unittest.expect(
      o.customAlphabet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.radix!,
      unittest.equals(42),
    );
    checkGooglePrivacyDlpV2InfoType(o.surrogateInfoType!);
  }
  buildCounterGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig--;
}

core.List<api.GooglePrivacyDlpV2DetectionRule> buildUnnamed12() => [
      buildGooglePrivacyDlpV2DetectionRule(),
      buildGooglePrivacyDlpV2DetectionRule(),
    ];

void checkUnnamed12(core.List<api.GooglePrivacyDlpV2DetectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DetectionRule(o[0]);
  checkGooglePrivacyDlpV2DetectionRule(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2CustomInfoType = 0;
api.GooglePrivacyDlpV2CustomInfoType buildGooglePrivacyDlpV2CustomInfoType() {
  final o = api.GooglePrivacyDlpV2CustomInfoType();
  buildCounterGooglePrivacyDlpV2CustomInfoType++;
  if (buildCounterGooglePrivacyDlpV2CustomInfoType < 3) {
    o.detectionRules = buildUnnamed12();
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
    checkUnnamed12(o.detectionRules!);
    checkGooglePrivacyDlpV2Dictionary(o.dictionary!);
    unittest.expect(
      o.exclusionType!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
    unittest.expect(
      o.likelihood!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Regex(o.regex!);
    checkGooglePrivacyDlpV2StoredType(o.storedType!);
    checkGooglePrivacyDlpV2SurrogateType(o.surrogateType!);
  }
  buildCounterGooglePrivacyDlpV2CustomInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreKey = 0;
api.GooglePrivacyDlpV2DatastoreKey buildGooglePrivacyDlpV2DatastoreKey() {
  final o = api.GooglePrivacyDlpV2DatastoreKey();
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
    checkGooglePrivacyDlpV2Key(o.entityKey!);
  }
  buildCounterGooglePrivacyDlpV2DatastoreKey--;
}

core.int buildCounterGooglePrivacyDlpV2DatastoreOptions = 0;
api.GooglePrivacyDlpV2DatastoreOptions
    buildGooglePrivacyDlpV2DatastoreOptions() {
  final o = api.GooglePrivacyDlpV2DatastoreOptions();
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
    checkGooglePrivacyDlpV2KindExpression(o.kind!);
    checkGooglePrivacyDlpV2PartitionId(o.partitionId!);
  }
  buildCounterGooglePrivacyDlpV2DatastoreOptions--;
}

core.int buildCounterGooglePrivacyDlpV2DateShiftConfig = 0;
api.GooglePrivacyDlpV2DateShiftConfig buildGooglePrivacyDlpV2DateShiftConfig() {
  final o = api.GooglePrivacyDlpV2DateShiftConfig();
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
    checkGooglePrivacyDlpV2FieldId(o.context!);
    checkGooglePrivacyDlpV2CryptoKey(o.cryptoKey!);
    unittest.expect(
      o.lowerBoundDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.upperBoundDays!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2DateShiftConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DateTime = 0;
api.GooglePrivacyDlpV2DateTime buildGooglePrivacyDlpV2DateTime() {
  final o = api.GooglePrivacyDlpV2DateTime();
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
    checkGoogleTypeDate(o.date!);
    unittest.expect(
      o.dayOfWeek!,
      unittest.equals('foo'),
    );
    checkGoogleTypeTimeOfDay(o.time!);
    checkGooglePrivacyDlpV2TimeZone(o.timeZone!);
  }
  buildCounterGooglePrivacyDlpV2DateTime--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyConfig = 0;
api.GooglePrivacyDlpV2DeidentifyConfig
    buildGooglePrivacyDlpV2DeidentifyConfig() {
  final o = api.GooglePrivacyDlpV2DeidentifyConfig();
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
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations!);
    checkGooglePrivacyDlpV2RecordTransformations(o.recordTransformations!);
    checkGooglePrivacyDlpV2TransformationErrorHandling(
        o.transformationErrorHandling!);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyConfig--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentRequest = 0;
api.GooglePrivacyDlpV2DeidentifyContentRequest
    buildGooglePrivacyDlpV2DeidentifyContentRequest() {
  final o = api.GooglePrivacyDlpV2DeidentifyContentRequest();
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
    checkGooglePrivacyDlpV2DeidentifyConfig(o.deidentifyConfig!);
    unittest.expect(
      o.deidentifyTemplateName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.inspectTemplateName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2ContentItem(o.item!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyContentResponse = 0;
api.GooglePrivacyDlpV2DeidentifyContentResponse
    buildGooglePrivacyDlpV2DeidentifyContentResponse() {
  final o = api.GooglePrivacyDlpV2DeidentifyContentResponse();
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
    checkGooglePrivacyDlpV2ContentItem(o.item!);
    checkGooglePrivacyDlpV2TransformationOverview(o.overview!);
  }
  buildCounterGooglePrivacyDlpV2DeidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2DeidentifyTemplate = 0;
api.GooglePrivacyDlpV2DeidentifyTemplate
    buildGooglePrivacyDlpV2DeidentifyTemplate() {
  final o = api.GooglePrivacyDlpV2DeidentifyTemplate();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2DeidentifyConfig(o.deidentifyConfig!);
    unittest.expect(
      o.description!,
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
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2DeidentifyTemplate--;
}

core.List<api.GooglePrivacyDlpV2StatisticalTable> buildUnnamed13() => [
      buildGooglePrivacyDlpV2StatisticalTable(),
      buildGooglePrivacyDlpV2StatisticalTable(),
    ];

void checkUnnamed13(core.List<api.GooglePrivacyDlpV2StatisticalTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StatisticalTable(o[0]);
  checkGooglePrivacyDlpV2StatisticalTable(o[1]);
}

core.List<api.GooglePrivacyDlpV2QuasiId> buildUnnamed14() => [
      buildGooglePrivacyDlpV2QuasiId(),
      buildGooglePrivacyDlpV2QuasiId(),
    ];

void checkUnnamed14(core.List<api.GooglePrivacyDlpV2QuasiId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiId(o[0]);
  checkGooglePrivacyDlpV2QuasiId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig
    buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig() {
  final o = api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed13();
    o.quasiIds = buildUnnamed14();
    o.regionCode = 'foo';
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig < 3) {
    checkUnnamed13(o.auxiliaryTables!);
    checkUnnamed14(o.quasiIds!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationConfig--;
}

core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues>
    buildUnnamed15() => [
          buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(),
          buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(),
        ];

void checkUnnamed15(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket =
    0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket
    buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket() {
  final o = api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket <
      3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed15();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketValueCount!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.bucketValues!);
    unittest.expect(
      o.maxProbability!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minProbability!,
      unittest.equals(42.0),
    );
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed16() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed16(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues
    buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues() {
  final o = api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    o.estimatedProbability = 42.0;
    o.quasiIdsValues = buildUnnamed16();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues < 3) {
    unittest.expect(
      o.estimatedProbability!,
      unittest.equals(42.0),
    );
    checkUnnamed16(o.quasiIdsValues!);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues--;
}

core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket>
    buildUnnamed17() => [
          buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(),
          buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(),
        ];

void checkUnnamed17(
    core.List<api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult = 0;
api.GooglePrivacyDlpV2DeltaPresenceEstimationResult
    buildGooglePrivacyDlpV2DeltaPresenceEstimationResult() {
  final o = api.GooglePrivacyDlpV2DeltaPresenceEstimationResult();
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    o.deltaPresenceEstimationHistogram = buildUnnamed17();
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
  return o;
}

void checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(
    api.GooglePrivacyDlpV2DeltaPresenceEstimationResult o) {
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult < 3) {
    checkUnnamed17(o.deltaPresenceEstimationHistogram!);
  }
  buildCounterGooglePrivacyDlpV2DeltaPresenceEstimationResult--;
}

core.int buildCounterGooglePrivacyDlpV2DetectionRule = 0;
api.GooglePrivacyDlpV2DetectionRule buildGooglePrivacyDlpV2DetectionRule() {
  final o = api.GooglePrivacyDlpV2DetectionRule();
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
    checkGooglePrivacyDlpV2HotwordRule(o.hotwordRule!);
  }
  buildCounterGooglePrivacyDlpV2DetectionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Dictionary = 0;
api.GooglePrivacyDlpV2Dictionary buildGooglePrivacyDlpV2Dictionary() {
  final o = api.GooglePrivacyDlpV2Dictionary();
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
    checkGooglePrivacyDlpV2CloudStoragePath(o.cloudStoragePath!);
    checkGooglePrivacyDlpV2WordList(o.wordList!);
  }
  buildCounterGooglePrivacyDlpV2Dictionary--;
}

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed18() => [
      buildGooglePrivacyDlpV2Error(),
      buildGooglePrivacyDlpV2Error(),
    ];

void checkUnnamed18(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2DlpJob = 0;
api.GooglePrivacyDlpV2DlpJob buildGooglePrivacyDlpV2DlpJob() {
  final o = api.GooglePrivacyDlpV2DlpJob();
  buildCounterGooglePrivacyDlpV2DlpJob++;
  if (buildCounterGooglePrivacyDlpV2DlpJob < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.errors = buildUnnamed18();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.errors!);
    checkGooglePrivacyDlpV2InspectDataSourceDetails(o.inspectDetails!);
    unittest.expect(
      o.jobTriggerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(o.riskDetails!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2DlpJob--;
}

core.int buildCounterGooglePrivacyDlpV2DocumentLocation = 0;
api.GooglePrivacyDlpV2DocumentLocation
    buildGooglePrivacyDlpV2DocumentLocation() {
  final o = api.GooglePrivacyDlpV2DocumentLocation();
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
    unittest.expect(
      o.fileOffset!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2DocumentLocation--;
}

core.int buildCounterGooglePrivacyDlpV2EntityId = 0;
api.GooglePrivacyDlpV2EntityId buildGooglePrivacyDlpV2EntityId() {
  final o = api.GooglePrivacyDlpV2EntityId();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
  }
  buildCounterGooglePrivacyDlpV2EntityId--;
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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

core.int buildCounterGooglePrivacyDlpV2Error = 0;
api.GooglePrivacyDlpV2Error buildGooglePrivacyDlpV2Error() {
  final o = api.GooglePrivacyDlpV2Error();
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    o.details = buildGoogleRpcStatus();
    o.timestamps = buildUnnamed19();
  }
  buildCounterGooglePrivacyDlpV2Error--;
  return o;
}

void checkGooglePrivacyDlpV2Error(api.GooglePrivacyDlpV2Error o) {
  buildCounterGooglePrivacyDlpV2Error++;
  if (buildCounterGooglePrivacyDlpV2Error < 3) {
    checkGoogleRpcStatus(o.details!);
    checkUnnamed19(o.timestamps!);
  }
  buildCounterGooglePrivacyDlpV2Error--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed20() => [
      buildGooglePrivacyDlpV2InfoType(),
      buildGooglePrivacyDlpV2InfoType(),
    ];

void checkUnnamed20(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ExcludeInfoTypes = 0;
api.GooglePrivacyDlpV2ExcludeInfoTypes
    buildGooglePrivacyDlpV2ExcludeInfoTypes() {
  final o = api.GooglePrivacyDlpV2ExcludeInfoTypes();
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    o.infoTypes = buildUnnamed20();
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
  return o;
}

void checkGooglePrivacyDlpV2ExcludeInfoTypes(
    api.GooglePrivacyDlpV2ExcludeInfoTypes o) {
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes++;
  if (buildCounterGooglePrivacyDlpV2ExcludeInfoTypes < 3) {
    checkUnnamed20(o.infoTypes!);
  }
  buildCounterGooglePrivacyDlpV2ExcludeInfoTypes--;
}

core.int buildCounterGooglePrivacyDlpV2ExclusionRule = 0;
api.GooglePrivacyDlpV2ExclusionRule buildGooglePrivacyDlpV2ExclusionRule() {
  final o = api.GooglePrivacyDlpV2ExclusionRule();
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
    checkGooglePrivacyDlpV2Dictionary(o.dictionary!);
    checkGooglePrivacyDlpV2ExcludeInfoTypes(o.excludeInfoTypes!);
    unittest.expect(
      o.matchingType!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Regex(o.regex!);
  }
  buildCounterGooglePrivacyDlpV2ExclusionRule--;
}

core.int buildCounterGooglePrivacyDlpV2Expressions = 0;
api.GooglePrivacyDlpV2Expressions buildGooglePrivacyDlpV2Expressions() {
  final o = api.GooglePrivacyDlpV2Expressions();
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
    checkGooglePrivacyDlpV2Conditions(o.conditions!);
    unittest.expect(
      o.logicalOperator!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Expressions--;
}

core.int buildCounterGooglePrivacyDlpV2FieldId = 0;
api.GooglePrivacyDlpV2FieldId buildGooglePrivacyDlpV2FieldId() {
  final o = api.GooglePrivacyDlpV2FieldId();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2FieldId--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed21() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed21(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2FieldTransformation = 0;
api.GooglePrivacyDlpV2FieldTransformation
    buildGooglePrivacyDlpV2FieldTransformation() {
  final o = api.GooglePrivacyDlpV2FieldTransformation();
  buildCounterGooglePrivacyDlpV2FieldTransformation++;
  if (buildCounterGooglePrivacyDlpV2FieldTransformation < 3) {
    o.condition = buildGooglePrivacyDlpV2RecordCondition();
    o.fields = buildUnnamed21();
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
    checkGooglePrivacyDlpV2RecordCondition(o.condition!);
    checkUnnamed21(o.fields!);
    checkGooglePrivacyDlpV2InfoTypeTransformations(o.infoTypeTransformations!);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation!);
  }
  buildCounterGooglePrivacyDlpV2FieldTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2FileSet = 0;
api.GooglePrivacyDlpV2FileSet buildGooglePrivacyDlpV2FileSet() {
  final o = api.GooglePrivacyDlpV2FileSet();
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
    checkGooglePrivacyDlpV2CloudStorageRegexFileSet(o.regexFileSet!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2FileSet--;
}

core.Map<core.String, core.String> buildUnnamed22() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGooglePrivacyDlpV2Finding = 0;
api.GooglePrivacyDlpV2Finding buildGooglePrivacyDlpV2Finding() {
  final o = api.GooglePrivacyDlpV2Finding();
  buildCounterGooglePrivacyDlpV2Finding++;
  if (buildCounterGooglePrivacyDlpV2Finding < 3) {
    o.createTime = 'foo';
    o.findingId = 'foo';
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.jobCreateTime = 'foo';
    o.jobName = 'foo';
    o.labels = buildUnnamed22();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.findingId!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
    unittest.expect(
      o.jobCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.labels!);
    unittest.expect(
      o.likelihood!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Location(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quote!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2QuoteInfo(o.quoteInfo!);
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Finding--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeLimit> buildUnnamed23() => [
      buildGooglePrivacyDlpV2InfoTypeLimit(),
      buildGooglePrivacyDlpV2InfoTypeLimit(),
    ];

void checkUnnamed23(core.List<api.GooglePrivacyDlpV2InfoTypeLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeLimit(o[0]);
  checkGooglePrivacyDlpV2InfoTypeLimit(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2FindingLimits = 0;
api.GooglePrivacyDlpV2FindingLimits buildGooglePrivacyDlpV2FindingLimits() {
  final o = api.GooglePrivacyDlpV2FindingLimits();
  buildCounterGooglePrivacyDlpV2FindingLimits++;
  if (buildCounterGooglePrivacyDlpV2FindingLimits < 3) {
    o.maxFindingsPerInfoType = buildUnnamed23();
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
    checkUnnamed23(o.maxFindingsPerInfoType!);
    unittest.expect(
      o.maxFindingsPerItem!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxFindingsPerRequest!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2FindingLimits--;
}

core.int buildCounterGooglePrivacyDlpV2FinishDlpJobRequest = 0;
api.GooglePrivacyDlpV2FinishDlpJobRequest
    buildGooglePrivacyDlpV2FinishDlpJobRequest() {
  final o = api.GooglePrivacyDlpV2FinishDlpJobRequest();
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
  final o = api.GooglePrivacyDlpV2FixedSizeBucketingConfig();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals(42.0),
    );
    checkGooglePrivacyDlpV2Value(o.lowerBound!);
    checkGooglePrivacyDlpV2Value(o.upperBound!);
  }
  buildCounterGooglePrivacyDlpV2FixedSizeBucketingConfig--;
}

core.int buildCounterGooglePrivacyDlpV2HotwordRule = 0;
api.GooglePrivacyDlpV2HotwordRule buildGooglePrivacyDlpV2HotwordRule() {
  final o = api.GooglePrivacyDlpV2HotwordRule();
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
    checkGooglePrivacyDlpV2Regex(o.hotwordRegex!);
    checkGooglePrivacyDlpV2LikelihoodAdjustment(o.likelihoodAdjustment!);
    checkGooglePrivacyDlpV2Proximity(o.proximity!);
  }
  buildCounterGooglePrivacyDlpV2HotwordRule--;
}

core.int buildCounterGooglePrivacyDlpV2HybridContentItem = 0;
api.GooglePrivacyDlpV2HybridContentItem
    buildGooglePrivacyDlpV2HybridContentItem() {
  final o = api.GooglePrivacyDlpV2HybridContentItem();
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
    checkGooglePrivacyDlpV2HybridFindingDetails(o.findingDetails!);
    checkGooglePrivacyDlpV2ContentItem(o.item!);
  }
  buildCounterGooglePrivacyDlpV2HybridContentItem--;
}

core.Map<core.String, core.String> buildUnnamed24() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGooglePrivacyDlpV2HybridFindingDetails = 0;
api.GooglePrivacyDlpV2HybridFindingDetails
    buildGooglePrivacyDlpV2HybridFindingDetails() {
  final o = api.GooglePrivacyDlpV2HybridFindingDetails();
  buildCounterGooglePrivacyDlpV2HybridFindingDetails++;
  if (buildCounterGooglePrivacyDlpV2HybridFindingDetails < 3) {
    o.containerDetails = buildGooglePrivacyDlpV2Container();
    o.fileOffset = 'foo';
    o.labels = buildUnnamed24();
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
    checkGooglePrivacyDlpV2Container(o.containerDetails!);
    unittest.expect(
      o.fileOffset!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.labels!);
    unittest.expect(
      o.rowOffset!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2TableOptions(o.tableOptions!);
  }
  buildCounterGooglePrivacyDlpV2HybridFindingDetails--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest = 0;
api.GooglePrivacyDlpV2HybridInspectDlpJobRequest
    buildGooglePrivacyDlpV2HybridInspectDlpJobRequest() {
  final o = api.GooglePrivacyDlpV2HybridInspectDlpJobRequest();
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
    checkGooglePrivacyDlpV2HybridContentItem(o.hybridItem!);
  }
  buildCounterGooglePrivacyDlpV2HybridInspectDlpJobRequest--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest = 0;
api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest
    buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest() {
  final o = api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest();
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
    checkGooglePrivacyDlpV2HybridContentItem(o.hybridItem!);
  }
  buildCounterGooglePrivacyDlpV2HybridInspectJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2HybridInspectResponse = 0;
api.GooglePrivacyDlpV2HybridInspectResponse
    buildGooglePrivacyDlpV2HybridInspectResponse() {
  final o = api.GooglePrivacyDlpV2HybridInspectResponse();
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
  final o = api.GooglePrivacyDlpV2HybridInspectStatistics();
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
    unittest.expect(
      o.abortedCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processedCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2HybridInspectStatistics--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGooglePrivacyDlpV2HybridOptions = 0;
api.GooglePrivacyDlpV2HybridOptions buildGooglePrivacyDlpV2HybridOptions() {
  final o = api.GooglePrivacyDlpV2HybridOptions();
  buildCounterGooglePrivacyDlpV2HybridOptions++;
  if (buildCounterGooglePrivacyDlpV2HybridOptions < 3) {
    o.description = 'foo';
    o.labels = buildUnnamed25();
    o.requiredFindingLabelKeys = buildUnnamed26();
    o.tableOptions = buildGooglePrivacyDlpV2TableOptions();
  }
  buildCounterGooglePrivacyDlpV2HybridOptions--;
  return o;
}

void checkGooglePrivacyDlpV2HybridOptions(
    api.GooglePrivacyDlpV2HybridOptions o) {
  buildCounterGooglePrivacyDlpV2HybridOptions++;
  if (buildCounterGooglePrivacyDlpV2HybridOptions < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.labels!);
    checkUnnamed26(o.requiredFindingLabelKeys!);
    checkGooglePrivacyDlpV2TableOptions(o.tableOptions!);
  }
  buildCounterGooglePrivacyDlpV2HybridOptions--;
}

core.List<api.GooglePrivacyDlpV2BoundingBox> buildUnnamed27() => [
      buildGooglePrivacyDlpV2BoundingBox(),
      buildGooglePrivacyDlpV2BoundingBox(),
    ];

void checkUnnamed27(core.List<api.GooglePrivacyDlpV2BoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2BoundingBox(o[0]);
  checkGooglePrivacyDlpV2BoundingBox(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ImageLocation = 0;
api.GooglePrivacyDlpV2ImageLocation buildGooglePrivacyDlpV2ImageLocation() {
  final o = api.GooglePrivacyDlpV2ImageLocation();
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    o.boundingBoxes = buildUnnamed27();
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
  return o;
}

void checkGooglePrivacyDlpV2ImageLocation(
    api.GooglePrivacyDlpV2ImageLocation o) {
  buildCounterGooglePrivacyDlpV2ImageLocation++;
  if (buildCounterGooglePrivacyDlpV2ImageLocation < 3) {
    checkUnnamed27(o.boundingBoxes!);
  }
  buildCounterGooglePrivacyDlpV2ImageLocation--;
}

core.int buildCounterGooglePrivacyDlpV2ImageRedactionConfig = 0;
api.GooglePrivacyDlpV2ImageRedactionConfig
    buildGooglePrivacyDlpV2ImageRedactionConfig() {
  final o = api.GooglePrivacyDlpV2ImageRedactionConfig();
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
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
    unittest.expect(o.redactAllText!, unittest.isTrue);
    checkGooglePrivacyDlpV2Color(o.redactionColor!);
  }
  buildCounterGooglePrivacyDlpV2ImageRedactionConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InfoType = 0;
api.GooglePrivacyDlpV2InfoType buildGooglePrivacyDlpV2InfoType() {
  final o = api.GooglePrivacyDlpV2InfoType();
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
  return o;
}

void checkGooglePrivacyDlpV2InfoType(api.GooglePrivacyDlpV2InfoType o) {
  buildCounterGooglePrivacyDlpV2InfoType++;
  if (buildCounterGooglePrivacyDlpV2InfoType < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2InfoType--;
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

core.int buildCounterGooglePrivacyDlpV2InfoTypeDescription = 0;
api.GooglePrivacyDlpV2InfoTypeDescription
    buildGooglePrivacyDlpV2InfoTypeDescription() {
  final o = api.GooglePrivacyDlpV2InfoTypeDescription();
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.supportedBy = buildUnnamed28();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeDescription(
    api.GooglePrivacyDlpV2InfoTypeDescription o) {
  buildCounterGooglePrivacyDlpV2InfoTypeDescription++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeDescription < 3) {
    unittest.expect(
      o.description!,
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
    checkUnnamed28(o.supportedBy!);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeDescription--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeLimit = 0;
api.GooglePrivacyDlpV2InfoTypeLimit buildGooglePrivacyDlpV2InfoTypeLimit() {
  final o = api.GooglePrivacyDlpV2InfoTypeLimit();
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
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
    unittest.expect(
      o.maxFindings!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2InfoTypeLimit--;
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeStats = 0;
api.GooglePrivacyDlpV2InfoTypeStats buildGooglePrivacyDlpV2InfoTypeStats() {
  final o = api.GooglePrivacyDlpV2InfoTypeStats();
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
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeStats--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed29() => [
      buildGooglePrivacyDlpV2InfoType(),
      buildGooglePrivacyDlpV2InfoType(),
    ];

void checkUnnamed29(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformation = 0;
api.GooglePrivacyDlpV2InfoTypeTransformation
    buildGooglePrivacyDlpV2InfoTypeTransformation() {
  final o = api.GooglePrivacyDlpV2InfoTypeTransformation();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformation < 3) {
    o.infoTypes = buildUnnamed29();
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
    checkUnnamed29(o.infoTypes!);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.primitiveTransformation!);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformation--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeTransformation> buildUnnamed30() => [
      buildGooglePrivacyDlpV2InfoTypeTransformation(),
      buildGooglePrivacyDlpV2InfoTypeTransformation(),
    ];

void checkUnnamed30(core.List<api.GooglePrivacyDlpV2InfoTypeTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeTransformation(o[0]);
  checkGooglePrivacyDlpV2InfoTypeTransformation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InfoTypeTransformations = 0;
api.GooglePrivacyDlpV2InfoTypeTransformations
    buildGooglePrivacyDlpV2InfoTypeTransformations() {
  final o = api.GooglePrivacyDlpV2InfoTypeTransformations();
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    o.transformations = buildUnnamed30();
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
  return o;
}

void checkGooglePrivacyDlpV2InfoTypeTransformations(
    api.GooglePrivacyDlpV2InfoTypeTransformations o) {
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations++;
  if (buildCounterGooglePrivacyDlpV2InfoTypeTransformations < 3) {
    checkUnnamed30(o.transformations!);
  }
  buildCounterGooglePrivacyDlpV2InfoTypeTransformations--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.List<api.GooglePrivacyDlpV2CustomInfoType> buildUnnamed32() => [
      buildGooglePrivacyDlpV2CustomInfoType(),
      buildGooglePrivacyDlpV2CustomInfoType(),
    ];

void checkUnnamed32(core.List<api.GooglePrivacyDlpV2CustomInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2CustomInfoType(o[0]);
  checkGooglePrivacyDlpV2CustomInfoType(o[1]);
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed33() => [
      buildGooglePrivacyDlpV2InfoType(),
      buildGooglePrivacyDlpV2InfoType(),
    ];

void checkUnnamed33(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.List<api.GooglePrivacyDlpV2InspectionRuleSet> buildUnnamed34() => [
      buildGooglePrivacyDlpV2InspectionRuleSet(),
      buildGooglePrivacyDlpV2InspectionRuleSet(),
    ];

void checkUnnamed34(core.List<api.GooglePrivacyDlpV2InspectionRuleSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRuleSet(o[0]);
  checkGooglePrivacyDlpV2InspectionRuleSet(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectConfig = 0;
api.GooglePrivacyDlpV2InspectConfig buildGooglePrivacyDlpV2InspectConfig() {
  final o = api.GooglePrivacyDlpV2InspectConfig();
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    o.contentOptions = buildUnnamed31();
    o.customInfoTypes = buildUnnamed32();
    o.excludeInfoTypes = true;
    o.includeQuote = true;
    o.infoTypes = buildUnnamed33();
    o.limits = buildGooglePrivacyDlpV2FindingLimits();
    o.minLikelihood = 'foo';
    o.ruleSet = buildUnnamed34();
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
  return o;
}

void checkGooglePrivacyDlpV2InspectConfig(
    api.GooglePrivacyDlpV2InspectConfig o) {
  buildCounterGooglePrivacyDlpV2InspectConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectConfig < 3) {
    checkUnnamed31(o.contentOptions!);
    checkUnnamed32(o.customInfoTypes!);
    unittest.expect(o.excludeInfoTypes!, unittest.isTrue);
    unittest.expect(o.includeQuote!, unittest.isTrue);
    checkUnnamed33(o.infoTypes!);
    checkGooglePrivacyDlpV2FindingLimits(o.limits!);
    unittest.expect(
      o.minLikelihood!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.ruleSet!);
  }
  buildCounterGooglePrivacyDlpV2InspectConfig--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentRequest = 0;
api.GooglePrivacyDlpV2InspectContentRequest
    buildGooglePrivacyDlpV2InspectContentRequest() {
  final o = api.GooglePrivacyDlpV2InspectContentRequest();
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
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.inspectTemplateName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2ContentItem(o.item!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2InspectContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2InspectContentResponse = 0;
api.GooglePrivacyDlpV2InspectContentResponse
    buildGooglePrivacyDlpV2InspectContentResponse() {
  final o = api.GooglePrivacyDlpV2InspectContentResponse();
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
    checkGooglePrivacyDlpV2InspectResult(o.result!);
  }
  buildCounterGooglePrivacyDlpV2InspectContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2InspectDataSourceDetails = 0;
api.GooglePrivacyDlpV2InspectDataSourceDetails
    buildGooglePrivacyDlpV2InspectDataSourceDetails() {
  final o = api.GooglePrivacyDlpV2InspectDataSourceDetails();
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
    checkGooglePrivacyDlpV2RequestedOptions(o.requestedOptions!);
    checkGooglePrivacyDlpV2Result(o.result!);
  }
  buildCounterGooglePrivacyDlpV2InspectDataSourceDetails--;
}

core.List<api.GooglePrivacyDlpV2Action> buildUnnamed35() => [
      buildGooglePrivacyDlpV2Action(),
      buildGooglePrivacyDlpV2Action(),
    ];

void checkUnnamed35(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0]);
  checkGooglePrivacyDlpV2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectJobConfig = 0;
api.GooglePrivacyDlpV2InspectJobConfig
    buildGooglePrivacyDlpV2InspectJobConfig() {
  final o = api.GooglePrivacyDlpV2InspectJobConfig();
  buildCounterGooglePrivacyDlpV2InspectJobConfig++;
  if (buildCounterGooglePrivacyDlpV2InspectJobConfig < 3) {
    o.actions = buildUnnamed35();
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
    checkUnnamed35(o.actions!);
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.inspectTemplateName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2StorageConfig(o.storageConfig!);
  }
  buildCounterGooglePrivacyDlpV2InspectJobConfig--;
}

core.List<api.GooglePrivacyDlpV2Finding> buildUnnamed36() => [
      buildGooglePrivacyDlpV2Finding(),
      buildGooglePrivacyDlpV2Finding(),
    ];

void checkUnnamed36(core.List<api.GooglePrivacyDlpV2Finding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Finding(o[0]);
  checkGooglePrivacyDlpV2Finding(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectResult = 0;
api.GooglePrivacyDlpV2InspectResult buildGooglePrivacyDlpV2InspectResult() {
  final o = api.GooglePrivacyDlpV2InspectResult();
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    o.findings = buildUnnamed36();
    o.findingsTruncated = true;
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
  return o;
}

void checkGooglePrivacyDlpV2InspectResult(
    api.GooglePrivacyDlpV2InspectResult o) {
  buildCounterGooglePrivacyDlpV2InspectResult++;
  if (buildCounterGooglePrivacyDlpV2InspectResult < 3) {
    checkUnnamed36(o.findings!);
    unittest.expect(o.findingsTruncated!, unittest.isTrue);
  }
  buildCounterGooglePrivacyDlpV2InspectResult--;
}

core.int buildCounterGooglePrivacyDlpV2InspectTemplate = 0;
api.GooglePrivacyDlpV2InspectTemplate buildGooglePrivacyDlpV2InspectTemplate() {
  final o = api.GooglePrivacyDlpV2InspectTemplate();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2InspectTemplate--;
}

core.int buildCounterGooglePrivacyDlpV2InspectionRule = 0;
api.GooglePrivacyDlpV2InspectionRule buildGooglePrivacyDlpV2InspectionRule() {
  final o = api.GooglePrivacyDlpV2InspectionRule();
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
    checkGooglePrivacyDlpV2ExclusionRule(o.exclusionRule!);
    checkGooglePrivacyDlpV2HotwordRule(o.hotwordRule!);
  }
  buildCounterGooglePrivacyDlpV2InspectionRule--;
}

core.List<api.GooglePrivacyDlpV2InfoType> buildUnnamed37() => [
      buildGooglePrivacyDlpV2InfoType(),
      buildGooglePrivacyDlpV2InfoType(),
    ];

void checkUnnamed37(core.List<api.GooglePrivacyDlpV2InfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoType(o[0]);
  checkGooglePrivacyDlpV2InfoType(o[1]);
}

core.List<api.GooglePrivacyDlpV2InspectionRule> buildUnnamed38() => [
      buildGooglePrivacyDlpV2InspectionRule(),
      buildGooglePrivacyDlpV2InspectionRule(),
    ];

void checkUnnamed38(core.List<api.GooglePrivacyDlpV2InspectionRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectionRule(o[0]);
  checkGooglePrivacyDlpV2InspectionRule(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2InspectionRuleSet = 0;
api.GooglePrivacyDlpV2InspectionRuleSet
    buildGooglePrivacyDlpV2InspectionRuleSet() {
  final o = api.GooglePrivacyDlpV2InspectionRuleSet();
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    o.infoTypes = buildUnnamed37();
    o.rules = buildUnnamed38();
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
  return o;
}

void checkGooglePrivacyDlpV2InspectionRuleSet(
    api.GooglePrivacyDlpV2InspectionRuleSet o) {
  buildCounterGooglePrivacyDlpV2InspectionRuleSet++;
  if (buildCounterGooglePrivacyDlpV2InspectionRuleSet < 3) {
    checkUnnamed37(o.infoTypes!);
    checkUnnamed38(o.rules!);
  }
  buildCounterGooglePrivacyDlpV2InspectionRuleSet--;
}

core.int buildCounterGooglePrivacyDlpV2JobNotificationEmails = 0;
api.GooglePrivacyDlpV2JobNotificationEmails
    buildGooglePrivacyDlpV2JobNotificationEmails() {
  final o = api.GooglePrivacyDlpV2JobNotificationEmails();
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

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed39() => [
      buildGooglePrivacyDlpV2Error(),
      buildGooglePrivacyDlpV2Error(),
    ];

void checkUnnamed39(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

core.List<api.GooglePrivacyDlpV2Trigger> buildUnnamed40() => [
      buildGooglePrivacyDlpV2Trigger(),
      buildGooglePrivacyDlpV2Trigger(),
    ];

void checkUnnamed40(core.List<api.GooglePrivacyDlpV2Trigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Trigger(o[0]);
  checkGooglePrivacyDlpV2Trigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2JobTrigger = 0;
api.GooglePrivacyDlpV2JobTrigger buildGooglePrivacyDlpV2JobTrigger() {
  final o = api.GooglePrivacyDlpV2JobTrigger();
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed39();
    o.inspectJob = buildGooglePrivacyDlpV2InspectJobConfig();
    o.lastRunTime = 'foo';
    o.name = 'foo';
    o.status = 'foo';
    o.triggers = buildUnnamed40();
    o.updateTime = 'foo';
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
  return o;
}

void checkGooglePrivacyDlpV2JobTrigger(api.GooglePrivacyDlpV2JobTrigger o) {
  buildCounterGooglePrivacyDlpV2JobTrigger++;
  if (buildCounterGooglePrivacyDlpV2JobTrigger < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.errors!);
    checkGooglePrivacyDlpV2InspectJobConfig(o.inspectJob!);
    unittest.expect(
      o.lastRunTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.triggers!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2JobTrigger--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed41() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed41(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityConfig = 0;
api.GooglePrivacyDlpV2KAnonymityConfig
    buildGooglePrivacyDlpV2KAnonymityConfig() {
  final o = api.GooglePrivacyDlpV2KAnonymityConfig();
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    o.entityId = buildGooglePrivacyDlpV2EntityId();
    o.quasiIds = buildUnnamed41();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityConfig(
    api.GooglePrivacyDlpV2KAnonymityConfig o) {
  buildCounterGooglePrivacyDlpV2KAnonymityConfig++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityConfig < 3) {
    checkGooglePrivacyDlpV2EntityId(o.entityId!);
    checkUnnamed41(o.quasiIds!);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed42() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed42(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass = 0;
api.GooglePrivacyDlpV2KAnonymityEquivalenceClass
    buildGooglePrivacyDlpV2KAnonymityEquivalenceClass() {
  final o = api.GooglePrivacyDlpV2KAnonymityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    o.equivalenceClassSize = 'foo';
    o.quasiIdsValues = buildUnnamed42();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(
    api.GooglePrivacyDlpV2KAnonymityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass < 3) {
    unittest.expect(
      o.equivalenceClassSize!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.quasiIdsValues!);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityEquivalenceClass--;
}

core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass> buildUnnamed43() =>
    [
      buildGooglePrivacyDlpV2KAnonymityEquivalenceClass(),
      buildGooglePrivacyDlpV2KAnonymityEquivalenceClass(),
    ];

void checkUnnamed43(
    core.List<api.GooglePrivacyDlpV2KAnonymityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket = 0;
api.GooglePrivacyDlpV2KAnonymityHistogramBucket
    buildGooglePrivacyDlpV2KAnonymityHistogramBucket() {
  final o = api.GooglePrivacyDlpV2KAnonymityHistogramBucket();
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed43();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketValueCount!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.bucketValues!);
    unittest.expect(
      o.equivalenceClassSizeLowerBound!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.equivalenceClassSizeUpperBound!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2KAnonymityHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket> buildUnnamed44() => [
      buildGooglePrivacyDlpV2KAnonymityHistogramBucket(),
      buildGooglePrivacyDlpV2KAnonymityHistogramBucket(),
    ];

void checkUnnamed44(
    core.List<api.GooglePrivacyDlpV2KAnonymityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2KAnonymityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KAnonymityResult = 0;
api.GooglePrivacyDlpV2KAnonymityResult
    buildGooglePrivacyDlpV2KAnonymityResult() {
  final o = api.GooglePrivacyDlpV2KAnonymityResult();
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    o.equivalenceClassHistogramBuckets = buildUnnamed44();
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
  return o;
}

void checkGooglePrivacyDlpV2KAnonymityResult(
    api.GooglePrivacyDlpV2KAnonymityResult o) {
  buildCounterGooglePrivacyDlpV2KAnonymityResult++;
  if (buildCounterGooglePrivacyDlpV2KAnonymityResult < 3) {
    checkUnnamed44(o.equivalenceClassHistogramBuckets!);
  }
  buildCounterGooglePrivacyDlpV2KAnonymityResult--;
}

core.List<api.GooglePrivacyDlpV2AuxiliaryTable> buildUnnamed45() => [
      buildGooglePrivacyDlpV2AuxiliaryTable(),
      buildGooglePrivacyDlpV2AuxiliaryTable(),
    ];

void checkUnnamed45(core.List<api.GooglePrivacyDlpV2AuxiliaryTable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2AuxiliaryTable(o[0]);
  checkGooglePrivacyDlpV2AuxiliaryTable(o[1]);
}

core.List<api.GooglePrivacyDlpV2TaggedField> buildUnnamed46() => [
      buildGooglePrivacyDlpV2TaggedField(),
      buildGooglePrivacyDlpV2TaggedField(),
    ];

void checkUnnamed46(core.List<api.GooglePrivacyDlpV2TaggedField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TaggedField(o[0]);
  checkGooglePrivacyDlpV2TaggedField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationConfig = 0;
api.GooglePrivacyDlpV2KMapEstimationConfig
    buildGooglePrivacyDlpV2KMapEstimationConfig() {
  final o = api.GooglePrivacyDlpV2KMapEstimationConfig();
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    o.auxiliaryTables = buildUnnamed45();
    o.quasiIds = buildUnnamed46();
    o.regionCode = 'foo';
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationConfig(
    api.GooglePrivacyDlpV2KMapEstimationConfig o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationConfig < 3) {
    checkUnnamed45(o.auxiliaryTables!);
    checkUnnamed46(o.quasiIds!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationConfig--;
}

core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues> buildUnnamed47() =>
    [
      buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues(),
      buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues(),
    ];

void checkUnnamed47(
    core.List<api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(o[0]);
  checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket = 0;
api.GooglePrivacyDlpV2KMapEstimationHistogramBucket
    buildGooglePrivacyDlpV2KMapEstimationHistogramBucket() {
  final o = api.GooglePrivacyDlpV2KMapEstimationHistogramBucket();
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed47();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketValueCount!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.bucketValues!);
    unittest.expect(
      o.maxAnonymity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minAnonymity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed48() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed48(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues = 0;
api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues
    buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues() {
  final o = api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues();
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    o.estimatedAnonymity = 'foo';
    o.quasiIdsValues = buildUnnamed48();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(
    api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues < 3) {
    unittest.expect(
      o.estimatedAnonymity!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.quasiIdsValues!);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationQuasiIdValues--;
}

core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket>
    buildUnnamed49() => [
          buildGooglePrivacyDlpV2KMapEstimationHistogramBucket(),
          buildGooglePrivacyDlpV2KMapEstimationHistogramBucket(),
        ];

void checkUnnamed49(
    core.List<api.GooglePrivacyDlpV2KMapEstimationHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2KMapEstimationResult = 0;
api.GooglePrivacyDlpV2KMapEstimationResult
    buildGooglePrivacyDlpV2KMapEstimationResult() {
  final o = api.GooglePrivacyDlpV2KMapEstimationResult();
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    o.kMapEstimationHistogram = buildUnnamed49();
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
  return o;
}

void checkGooglePrivacyDlpV2KMapEstimationResult(
    api.GooglePrivacyDlpV2KMapEstimationResult o) {
  buildCounterGooglePrivacyDlpV2KMapEstimationResult++;
  if (buildCounterGooglePrivacyDlpV2KMapEstimationResult < 3) {
    checkUnnamed49(o.kMapEstimationHistogram!);
  }
  buildCounterGooglePrivacyDlpV2KMapEstimationResult--;
}

core.List<api.GooglePrivacyDlpV2PathElement> buildUnnamed50() => [
      buildGooglePrivacyDlpV2PathElement(),
      buildGooglePrivacyDlpV2PathElement(),
    ];

void checkUnnamed50(core.List<api.GooglePrivacyDlpV2PathElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2PathElement(o[0]);
  checkGooglePrivacyDlpV2PathElement(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Key = 0;
api.GooglePrivacyDlpV2Key buildGooglePrivacyDlpV2Key() {
  final o = api.GooglePrivacyDlpV2Key();
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    o.partitionId = buildGooglePrivacyDlpV2PartitionId();
    o.path = buildUnnamed50();
  }
  buildCounterGooglePrivacyDlpV2Key--;
  return o;
}

void checkGooglePrivacyDlpV2Key(api.GooglePrivacyDlpV2Key o) {
  buildCounterGooglePrivacyDlpV2Key++;
  if (buildCounterGooglePrivacyDlpV2Key < 3) {
    checkGooglePrivacyDlpV2PartitionId(o.partitionId!);
    checkUnnamed50(o.path!);
  }
  buildCounterGooglePrivacyDlpV2Key--;
}

core.int buildCounterGooglePrivacyDlpV2KindExpression = 0;
api.GooglePrivacyDlpV2KindExpression buildGooglePrivacyDlpV2KindExpression() {
  final o = api.GooglePrivacyDlpV2KindExpression();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2KindExpression--;
}

core.int buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey = 0;
api.GooglePrivacyDlpV2KmsWrappedCryptoKey
    buildGooglePrivacyDlpV2KmsWrappedCryptoKey() {
  final o = api.GooglePrivacyDlpV2KmsWrappedCryptoKey();
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
    unittest.expect(
      o.cryptoKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.wrappedKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2KmsWrappedCryptoKey--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed51() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed51(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityConfig = 0;
api.GooglePrivacyDlpV2LDiversityConfig
    buildGooglePrivacyDlpV2LDiversityConfig() {
  final o = api.GooglePrivacyDlpV2LDiversityConfig();
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    o.quasiIds = buildUnnamed51();
    o.sensitiveAttribute = buildGooglePrivacyDlpV2FieldId();
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityConfig(
    api.GooglePrivacyDlpV2LDiversityConfig o) {
  buildCounterGooglePrivacyDlpV2LDiversityConfig++;
  if (buildCounterGooglePrivacyDlpV2LDiversityConfig < 3) {
    checkUnnamed51(o.quasiIds!);
    checkGooglePrivacyDlpV2FieldId(o.sensitiveAttribute!);
  }
  buildCounterGooglePrivacyDlpV2LDiversityConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed52() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed52(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.List<api.GooglePrivacyDlpV2ValueFrequency> buildUnnamed53() => [
      buildGooglePrivacyDlpV2ValueFrequency(),
      buildGooglePrivacyDlpV2ValueFrequency(),
    ];

void checkUnnamed53(core.List<api.GooglePrivacyDlpV2ValueFrequency> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ValueFrequency(o[0]);
  checkGooglePrivacyDlpV2ValueFrequency(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass = 0;
api.GooglePrivacyDlpV2LDiversityEquivalenceClass
    buildGooglePrivacyDlpV2LDiversityEquivalenceClass() {
  final o = api.GooglePrivacyDlpV2LDiversityEquivalenceClass();
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    o.equivalenceClassSize = 'foo';
    o.numDistinctSensitiveValues = 'foo';
    o.quasiIdsValues = buildUnnamed52();
    o.topSensitiveValues = buildUnnamed53();
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityEquivalenceClass(
    api.GooglePrivacyDlpV2LDiversityEquivalenceClass o) {
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass++;
  if (buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass < 3) {
    unittest.expect(
      o.equivalenceClassSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numDistinctSensitiveValues!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.quasiIdsValues!);
    checkUnnamed53(o.topSensitiveValues!);
  }
  buildCounterGooglePrivacyDlpV2LDiversityEquivalenceClass--;
}

core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass> buildUnnamed54() =>
    [
      buildGooglePrivacyDlpV2LDiversityEquivalenceClass(),
      buildGooglePrivacyDlpV2LDiversityEquivalenceClass(),
    ];

void checkUnnamed54(
    core.List<api.GooglePrivacyDlpV2LDiversityEquivalenceClass> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(o[0]);
  checkGooglePrivacyDlpV2LDiversityEquivalenceClass(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket = 0;
api.GooglePrivacyDlpV2LDiversityHistogramBucket
    buildGooglePrivacyDlpV2LDiversityHistogramBucket() {
  final o = api.GooglePrivacyDlpV2LDiversityHistogramBucket();
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket++;
  if (buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket < 3) {
    o.bucketSize = 'foo';
    o.bucketValueCount = 'foo';
    o.bucketValues = buildUnnamed54();
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
    unittest.expect(
      o.bucketSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bucketValueCount!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.bucketValues!);
    unittest.expect(
      o.sensitiveValueFrequencyLowerBound!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sensitiveValueFrequencyUpperBound!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2LDiversityHistogramBucket--;
}

core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket> buildUnnamed55() => [
      buildGooglePrivacyDlpV2LDiversityHistogramBucket(),
      buildGooglePrivacyDlpV2LDiversityHistogramBucket(),
    ];

void checkUnnamed55(
    core.List<api.GooglePrivacyDlpV2LDiversityHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(o[0]);
  checkGooglePrivacyDlpV2LDiversityHistogramBucket(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2LDiversityResult = 0;
api.GooglePrivacyDlpV2LDiversityResult
    buildGooglePrivacyDlpV2LDiversityResult() {
  final o = api.GooglePrivacyDlpV2LDiversityResult();
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    o.sensitiveValueFrequencyHistogramBuckets = buildUnnamed55();
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
  return o;
}

void checkGooglePrivacyDlpV2LDiversityResult(
    api.GooglePrivacyDlpV2LDiversityResult o) {
  buildCounterGooglePrivacyDlpV2LDiversityResult++;
  if (buildCounterGooglePrivacyDlpV2LDiversityResult < 3) {
    checkUnnamed55(o.sensitiveValueFrequencyHistogramBuckets!);
  }
  buildCounterGooglePrivacyDlpV2LDiversityResult--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig = 0;
api.GooglePrivacyDlpV2LargeCustomDictionaryConfig
    buildGooglePrivacyDlpV2LargeCustomDictionaryConfig() {
  final o = api.GooglePrivacyDlpV2LargeCustomDictionaryConfig();
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
    checkGooglePrivacyDlpV2BigQueryField(o.bigQueryField!);
    checkGooglePrivacyDlpV2CloudStorageFileSet(o.cloudStorageFileSet!);
    checkGooglePrivacyDlpV2CloudStoragePath(o.outputPath!);
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryConfig--;
}

core.int buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats = 0;
api.GooglePrivacyDlpV2LargeCustomDictionaryStats
    buildGooglePrivacyDlpV2LargeCustomDictionaryStats() {
  final o = api.GooglePrivacyDlpV2LargeCustomDictionaryStats();
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
    unittest.expect(
      o.approxNumPhrases!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2LargeCustomDictionaryStats--;
}

core.int buildCounterGooglePrivacyDlpV2LeaveUntransformed = 0;
api.GooglePrivacyDlpV2LeaveUntransformed
    buildGooglePrivacyDlpV2LeaveUntransformed() {
  final o = api.GooglePrivacyDlpV2LeaveUntransformed();
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
  final o = api.GooglePrivacyDlpV2LikelihoodAdjustment();
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
    unittest.expect(
      o.fixedLikelihood!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeLikelihood!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2LikelihoodAdjustment--;
}

core.List<api.GooglePrivacyDlpV2DeidentifyTemplate> buildUnnamed56() => [
      buildGooglePrivacyDlpV2DeidentifyTemplate(),
      buildGooglePrivacyDlpV2DeidentifyTemplate(),
    ];

void checkUnnamed56(core.List<api.GooglePrivacyDlpV2DeidentifyTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DeidentifyTemplate(o[0]);
  checkGooglePrivacyDlpV2DeidentifyTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse = 0;
api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
    buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse() {
  final o = api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    o.deidentifyTemplates = buildUnnamed56();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
    api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse < 3) {
    checkUnnamed56(o.deidentifyTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ListDeidentifyTemplatesResponse--;
}

core.List<api.GooglePrivacyDlpV2DlpJob> buildUnnamed57() => [
      buildGooglePrivacyDlpV2DlpJob(),
      buildGooglePrivacyDlpV2DlpJob(),
    ];

void checkUnnamed57(core.List<api.GooglePrivacyDlpV2DlpJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2DlpJob(o[0]);
  checkGooglePrivacyDlpV2DlpJob(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListDlpJobsResponse = 0;
api.GooglePrivacyDlpV2ListDlpJobsResponse
    buildGooglePrivacyDlpV2ListDlpJobsResponse() {
  final o = api.GooglePrivacyDlpV2ListDlpJobsResponse();
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    o.jobs = buildUnnamed57();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListDlpJobsResponse(
    api.GooglePrivacyDlpV2ListDlpJobsResponse o) {
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse++;
  if (buildCounterGooglePrivacyDlpV2ListDlpJobsResponse < 3) {
    checkUnnamed57(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ListDlpJobsResponse--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeDescription> buildUnnamed58() => [
      buildGooglePrivacyDlpV2InfoTypeDescription(),
      buildGooglePrivacyDlpV2InfoTypeDescription(),
    ];

void checkUnnamed58(core.List<api.GooglePrivacyDlpV2InfoTypeDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeDescription(o[0]);
  checkGooglePrivacyDlpV2InfoTypeDescription(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListInfoTypesResponse = 0;
api.GooglePrivacyDlpV2ListInfoTypesResponse
    buildGooglePrivacyDlpV2ListInfoTypesResponse() {
  final o = api.GooglePrivacyDlpV2ListInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    o.infoTypes = buildUnnamed58();
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListInfoTypesResponse(
    api.GooglePrivacyDlpV2ListInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInfoTypesResponse < 3) {
    checkUnnamed58(o.infoTypes!);
  }
  buildCounterGooglePrivacyDlpV2ListInfoTypesResponse--;
}

core.List<api.GooglePrivacyDlpV2InspectTemplate> buildUnnamed59() => [
      buildGooglePrivacyDlpV2InspectTemplate(),
      buildGooglePrivacyDlpV2InspectTemplate(),
    ];

void checkUnnamed59(core.List<api.GooglePrivacyDlpV2InspectTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InspectTemplate(o[0]);
  checkGooglePrivacyDlpV2InspectTemplate(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse = 0;
api.GooglePrivacyDlpV2ListInspectTemplatesResponse
    buildGooglePrivacyDlpV2ListInspectTemplatesResponse() {
  final o = api.GooglePrivacyDlpV2ListInspectTemplatesResponse();
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    o.inspectTemplates = buildUnnamed59();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
    api.GooglePrivacyDlpV2ListInspectTemplatesResponse o) {
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse < 3) {
    checkUnnamed59(o.inspectTemplates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ListInspectTemplatesResponse--;
}

core.List<api.GooglePrivacyDlpV2JobTrigger> buildUnnamed60() => [
      buildGooglePrivacyDlpV2JobTrigger(),
      buildGooglePrivacyDlpV2JobTrigger(),
    ];

void checkUnnamed60(core.List<api.GooglePrivacyDlpV2JobTrigger> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2JobTrigger(o[0]);
  checkGooglePrivacyDlpV2JobTrigger(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListJobTriggersResponse = 0;
api.GooglePrivacyDlpV2ListJobTriggersResponse
    buildGooglePrivacyDlpV2ListJobTriggersResponse() {
  final o = api.GooglePrivacyDlpV2ListJobTriggersResponse();
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    o.jobTriggers = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListJobTriggersResponse(
    api.GooglePrivacyDlpV2ListJobTriggersResponse o) {
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse++;
  if (buildCounterGooglePrivacyDlpV2ListJobTriggersResponse < 3) {
    checkUnnamed60(o.jobTriggers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ListJobTriggersResponse--;
}

core.List<api.GooglePrivacyDlpV2StoredInfoType> buildUnnamed61() => [
      buildGooglePrivacyDlpV2StoredInfoType(),
      buildGooglePrivacyDlpV2StoredInfoType(),
    ];

void checkUnnamed61(core.List<api.GooglePrivacyDlpV2StoredInfoType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoType(o[0]);
  checkGooglePrivacyDlpV2StoredInfoType(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse = 0;
api.GooglePrivacyDlpV2ListStoredInfoTypesResponse
    buildGooglePrivacyDlpV2ListStoredInfoTypesResponse() {
  final o = api.GooglePrivacyDlpV2ListStoredInfoTypesResponse();
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.storedInfoTypes = buildUnnamed61();
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
  return o;
}

void checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
    api.GooglePrivacyDlpV2ListStoredInfoTypesResponse o) {
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse++;
  if (buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.storedInfoTypes!);
  }
  buildCounterGooglePrivacyDlpV2ListStoredInfoTypesResponse--;
}

core.List<api.GooglePrivacyDlpV2ContentLocation> buildUnnamed62() => [
      buildGooglePrivacyDlpV2ContentLocation(),
      buildGooglePrivacyDlpV2ContentLocation(),
    ];

void checkUnnamed62(core.List<api.GooglePrivacyDlpV2ContentLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ContentLocation(o[0]);
  checkGooglePrivacyDlpV2ContentLocation(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Location = 0;
api.GooglePrivacyDlpV2Location buildGooglePrivacyDlpV2Location() {
  final o = api.GooglePrivacyDlpV2Location();
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    o.byteRange = buildGooglePrivacyDlpV2Range();
    o.codepointRange = buildGooglePrivacyDlpV2Range();
    o.container = buildGooglePrivacyDlpV2Container();
    o.contentLocations = buildUnnamed62();
  }
  buildCounterGooglePrivacyDlpV2Location--;
  return o;
}

void checkGooglePrivacyDlpV2Location(api.GooglePrivacyDlpV2Location o) {
  buildCounterGooglePrivacyDlpV2Location++;
  if (buildCounterGooglePrivacyDlpV2Location < 3) {
    checkGooglePrivacyDlpV2Range(o.byteRange!);
    checkGooglePrivacyDlpV2Range(o.codepointRange!);
    checkGooglePrivacyDlpV2Container(o.container!);
    checkUnnamed62(o.contentLocations!);
  }
  buildCounterGooglePrivacyDlpV2Location--;
}

core.int buildCounterGooglePrivacyDlpV2Manual = 0;
api.GooglePrivacyDlpV2Manual buildGooglePrivacyDlpV2Manual() {
  final o = api.GooglePrivacyDlpV2Manual();
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
  final o = api.GooglePrivacyDlpV2MetadataLocation();
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
    checkGooglePrivacyDlpV2StorageMetadataLabel(o.storageLabel!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2MetadataLocation--;
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsConfig = 0;
api.GooglePrivacyDlpV2NumericalStatsConfig
    buildGooglePrivacyDlpV2NumericalStatsConfig() {
  final o = api.GooglePrivacyDlpV2NumericalStatsConfig();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed63() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed63(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2NumericalStatsResult = 0;
api.GooglePrivacyDlpV2NumericalStatsResult
    buildGooglePrivacyDlpV2NumericalStatsResult() {
  final o = api.GooglePrivacyDlpV2NumericalStatsResult();
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    o.maxValue = buildGooglePrivacyDlpV2Value();
    o.minValue = buildGooglePrivacyDlpV2Value();
    o.quantileValues = buildUnnamed63();
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
  return o;
}

void checkGooglePrivacyDlpV2NumericalStatsResult(
    api.GooglePrivacyDlpV2NumericalStatsResult o) {
  buildCounterGooglePrivacyDlpV2NumericalStatsResult++;
  if (buildCounterGooglePrivacyDlpV2NumericalStatsResult < 3) {
    checkGooglePrivacyDlpV2Value(o.maxValue!);
    checkGooglePrivacyDlpV2Value(o.minValue!);
    checkUnnamed63(o.quantileValues!);
  }
  buildCounterGooglePrivacyDlpV2NumericalStatsResult--;
}

core.int buildCounterGooglePrivacyDlpV2OutputStorageConfig = 0;
api.GooglePrivacyDlpV2OutputStorageConfig
    buildGooglePrivacyDlpV2OutputStorageConfig() {
  final o = api.GooglePrivacyDlpV2OutputStorageConfig();
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
    unittest.expect(
      o.outputSchema!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2BigQueryTable(o.table!);
  }
  buildCounterGooglePrivacyDlpV2OutputStorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2PartitionId = 0;
api.GooglePrivacyDlpV2PartitionId buildGooglePrivacyDlpV2PartitionId() {
  final o = api.GooglePrivacyDlpV2PartitionId();
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
    unittest.expect(
      o.namespaceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2PartitionId--;
}

core.int buildCounterGooglePrivacyDlpV2PathElement = 0;
api.GooglePrivacyDlpV2PathElement buildGooglePrivacyDlpV2PathElement() {
  final o = api.GooglePrivacyDlpV2PathElement();
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2PathElement--;
}

core.int buildCounterGooglePrivacyDlpV2PrimitiveTransformation = 0;
api.GooglePrivacyDlpV2PrimitiveTransformation
    buildGooglePrivacyDlpV2PrimitiveTransformation() {
  final o = api.GooglePrivacyDlpV2PrimitiveTransformation();
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
    o.replaceDictionaryConfig =
        buildGooglePrivacyDlpV2ReplaceDictionaryConfig();
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
    checkGooglePrivacyDlpV2BucketingConfig(o.bucketingConfig!);
    checkGooglePrivacyDlpV2CharacterMaskConfig(o.characterMaskConfig!);
    checkGooglePrivacyDlpV2CryptoDeterministicConfig(
        o.cryptoDeterministicConfig!);
    checkGooglePrivacyDlpV2CryptoHashConfig(o.cryptoHashConfig!);
    checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(
        o.cryptoReplaceFfxFpeConfig!);
    checkGooglePrivacyDlpV2DateShiftConfig(o.dateShiftConfig!);
    checkGooglePrivacyDlpV2FixedSizeBucketingConfig(
        o.fixedSizeBucketingConfig!);
    checkGooglePrivacyDlpV2RedactConfig(o.redactConfig!);
    checkGooglePrivacyDlpV2ReplaceValueConfig(o.replaceConfig!);
    checkGooglePrivacyDlpV2ReplaceDictionaryConfig(o.replaceDictionaryConfig!);
    checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(
        o.replaceWithInfoTypeConfig!);
    checkGooglePrivacyDlpV2TimePartConfig(o.timePartConfig!);
  }
  buildCounterGooglePrivacyDlpV2PrimitiveTransformation--;
}

core.int buildCounterGooglePrivacyDlpV2PrivacyMetric = 0;
api.GooglePrivacyDlpV2PrivacyMetric buildGooglePrivacyDlpV2PrivacyMetric() {
  final o = api.GooglePrivacyDlpV2PrivacyMetric();
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
    checkGooglePrivacyDlpV2CategoricalStatsConfig(o.categoricalStatsConfig!);
    checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(
        o.deltaPresenceEstimationConfig!);
    checkGooglePrivacyDlpV2KAnonymityConfig(o.kAnonymityConfig!);
    checkGooglePrivacyDlpV2KMapEstimationConfig(o.kMapEstimationConfig!);
    checkGooglePrivacyDlpV2LDiversityConfig(o.lDiversityConfig!);
    checkGooglePrivacyDlpV2NumericalStatsConfig(o.numericalStatsConfig!);
  }
  buildCounterGooglePrivacyDlpV2PrivacyMetric--;
}

core.int buildCounterGooglePrivacyDlpV2Proximity = 0;
api.GooglePrivacyDlpV2Proximity buildGooglePrivacyDlpV2Proximity() {
  final o = api.GooglePrivacyDlpV2Proximity();
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
    unittest.expect(
      o.windowAfter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.windowBefore!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2Proximity--;
}

core.int buildCounterGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = 0;
api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog
    buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog() {
  final o = api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
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
  final o = api.GooglePrivacyDlpV2PublishSummaryToCscc();
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
  final o = api.GooglePrivacyDlpV2PublishToPubSub();
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
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2PublishToPubSub--;
}

core.int buildCounterGooglePrivacyDlpV2PublishToStackdriver = 0;
api.GooglePrivacyDlpV2PublishToStackdriver
    buildGooglePrivacyDlpV2PublishToStackdriver() {
  final o = api.GooglePrivacyDlpV2PublishToStackdriver();
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
  final o = api.GooglePrivacyDlpV2QuasiId();
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
    unittest.expect(
      o.customTag!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.field!);
    checkGoogleProtobufEmpty(o.inferred!);
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
  }
  buildCounterGooglePrivacyDlpV2QuasiId--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdField = 0;
api.GooglePrivacyDlpV2QuasiIdField buildGooglePrivacyDlpV2QuasiIdField() {
  final o = api.GooglePrivacyDlpV2QuasiIdField();
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
    unittest.expect(
      o.customTag!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.field!);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdField--;
}

core.int buildCounterGooglePrivacyDlpV2QuasiIdentifierField = 0;
api.GooglePrivacyDlpV2QuasiIdentifierField
    buildGooglePrivacyDlpV2QuasiIdentifierField() {
  final o = api.GooglePrivacyDlpV2QuasiIdentifierField();
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
    unittest.expect(
      o.customTag!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.field!);
  }
  buildCounterGooglePrivacyDlpV2QuasiIdentifierField--;
}

core.int buildCounterGooglePrivacyDlpV2QuoteInfo = 0;
api.GooglePrivacyDlpV2QuoteInfo buildGooglePrivacyDlpV2QuoteInfo() {
  final o = api.GooglePrivacyDlpV2QuoteInfo();
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
    checkGooglePrivacyDlpV2DateTime(o.dateTime!);
  }
  buildCounterGooglePrivacyDlpV2QuoteInfo--;
}

core.int buildCounterGooglePrivacyDlpV2Range = 0;
api.GooglePrivacyDlpV2Range buildGooglePrivacyDlpV2Range() {
  final o = api.GooglePrivacyDlpV2Range();
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
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.start!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Range--;
}

core.int buildCounterGooglePrivacyDlpV2RecordCondition = 0;
api.GooglePrivacyDlpV2RecordCondition buildGooglePrivacyDlpV2RecordCondition() {
  final o = api.GooglePrivacyDlpV2RecordCondition();
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
    checkGooglePrivacyDlpV2Expressions(o.expressions!);
  }
  buildCounterGooglePrivacyDlpV2RecordCondition--;
}

core.List<core.String> buildUnnamed64() => [
      'foo',
      'foo',
    ];

void checkUnnamed64(core.List<core.String> o) {
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

core.int buildCounterGooglePrivacyDlpV2RecordKey = 0;
api.GooglePrivacyDlpV2RecordKey buildGooglePrivacyDlpV2RecordKey() {
  final o = api.GooglePrivacyDlpV2RecordKey();
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    o.bigQueryKey = buildGooglePrivacyDlpV2BigQueryKey();
    o.datastoreKey = buildGooglePrivacyDlpV2DatastoreKey();
    o.idValues = buildUnnamed64();
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
  return o;
}

void checkGooglePrivacyDlpV2RecordKey(api.GooglePrivacyDlpV2RecordKey o) {
  buildCounterGooglePrivacyDlpV2RecordKey++;
  if (buildCounterGooglePrivacyDlpV2RecordKey < 3) {
    checkGooglePrivacyDlpV2BigQueryKey(o.bigQueryKey!);
    checkGooglePrivacyDlpV2DatastoreKey(o.datastoreKey!);
    checkUnnamed64(o.idValues!);
  }
  buildCounterGooglePrivacyDlpV2RecordKey--;
}

core.int buildCounterGooglePrivacyDlpV2RecordLocation = 0;
api.GooglePrivacyDlpV2RecordLocation buildGooglePrivacyDlpV2RecordLocation() {
  final o = api.GooglePrivacyDlpV2RecordLocation();
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
    checkGooglePrivacyDlpV2FieldId(o.fieldId!);
    checkGooglePrivacyDlpV2RecordKey(o.recordKey!);
    checkGooglePrivacyDlpV2TableLocation(o.tableLocation!);
  }
  buildCounterGooglePrivacyDlpV2RecordLocation--;
}

core.int buildCounterGooglePrivacyDlpV2RecordSuppression = 0;
api.GooglePrivacyDlpV2RecordSuppression
    buildGooglePrivacyDlpV2RecordSuppression() {
  final o = api.GooglePrivacyDlpV2RecordSuppression();
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
    checkGooglePrivacyDlpV2RecordCondition(o.condition!);
  }
  buildCounterGooglePrivacyDlpV2RecordSuppression--;
}

core.List<api.GooglePrivacyDlpV2FieldTransformation> buildUnnamed65() => [
      buildGooglePrivacyDlpV2FieldTransformation(),
      buildGooglePrivacyDlpV2FieldTransformation(),
    ];

void checkUnnamed65(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2FieldTransformation(o[1]);
}

core.List<api.GooglePrivacyDlpV2RecordSuppression> buildUnnamed66() => [
      buildGooglePrivacyDlpV2RecordSuppression(),
      buildGooglePrivacyDlpV2RecordSuppression(),
    ];

void checkUnnamed66(core.List<api.GooglePrivacyDlpV2RecordSuppression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2RecordSuppression(o[0]);
  checkGooglePrivacyDlpV2RecordSuppression(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RecordTransformations = 0;
api.GooglePrivacyDlpV2RecordTransformations
    buildGooglePrivacyDlpV2RecordTransformations() {
  final o = api.GooglePrivacyDlpV2RecordTransformations();
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    o.fieldTransformations = buildUnnamed65();
    o.recordSuppressions = buildUnnamed66();
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
  return o;
}

void checkGooglePrivacyDlpV2RecordTransformations(
    api.GooglePrivacyDlpV2RecordTransformations o) {
  buildCounterGooglePrivacyDlpV2RecordTransformations++;
  if (buildCounterGooglePrivacyDlpV2RecordTransformations < 3) {
    checkUnnamed65(o.fieldTransformations!);
    checkUnnamed66(o.recordSuppressions!);
  }
  buildCounterGooglePrivacyDlpV2RecordTransformations--;
}

core.int buildCounterGooglePrivacyDlpV2RedactConfig = 0;
api.GooglePrivacyDlpV2RedactConfig buildGooglePrivacyDlpV2RedactConfig() {
  final o = api.GooglePrivacyDlpV2RedactConfig();
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

core.List<api.GooglePrivacyDlpV2ImageRedactionConfig> buildUnnamed67() => [
      buildGooglePrivacyDlpV2ImageRedactionConfig(),
      buildGooglePrivacyDlpV2ImageRedactionConfig(),
    ];

void checkUnnamed67(core.List<api.GooglePrivacyDlpV2ImageRedactionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2ImageRedactionConfig(o[0]);
  checkGooglePrivacyDlpV2ImageRedactionConfig(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RedactImageRequest = 0;
api.GooglePrivacyDlpV2RedactImageRequest
    buildGooglePrivacyDlpV2RedactImageRequest() {
  final o = api.GooglePrivacyDlpV2RedactImageRequest();
  buildCounterGooglePrivacyDlpV2RedactImageRequest++;
  if (buildCounterGooglePrivacyDlpV2RedactImageRequest < 3) {
    o.byteItem = buildGooglePrivacyDlpV2ByteContentItem();
    o.imageRedactionConfigs = buildUnnamed67();
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
    checkGooglePrivacyDlpV2ByteContentItem(o.byteItem!);
    checkUnnamed67(o.imageRedactionConfigs!);
    unittest.expect(o.includeFindings!, unittest.isTrue);
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2RedactImageRequest--;
}

core.int buildCounterGooglePrivacyDlpV2RedactImageResponse = 0;
api.GooglePrivacyDlpV2RedactImageResponse
    buildGooglePrivacyDlpV2RedactImageResponse() {
  final o = api.GooglePrivacyDlpV2RedactImageResponse();
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
    unittest.expect(
      o.extractedText!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2InspectResult(o.inspectResult!);
    unittest.expect(
      o.redactedImage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2RedactImageResponse--;
}

core.List<core.int> buildUnnamed68() => [
      42,
      42,
    ];

void checkUnnamed68(core.List<core.int> o) {
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

core.int buildCounterGooglePrivacyDlpV2Regex = 0;
api.GooglePrivacyDlpV2Regex buildGooglePrivacyDlpV2Regex() {
  final o = api.GooglePrivacyDlpV2Regex();
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    o.groupIndexes = buildUnnamed68();
    o.pattern = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Regex--;
  return o;
}

void checkGooglePrivacyDlpV2Regex(api.GooglePrivacyDlpV2Regex o) {
  buildCounterGooglePrivacyDlpV2Regex++;
  if (buildCounterGooglePrivacyDlpV2Regex < 3) {
    checkUnnamed68(o.groupIndexes!);
    unittest.expect(
      o.pattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Regex--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentRequest = 0;
api.GooglePrivacyDlpV2ReidentifyContentRequest
    buildGooglePrivacyDlpV2ReidentifyContentRequest() {
  final o = api.GooglePrivacyDlpV2ReidentifyContentRequest();
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
    checkGooglePrivacyDlpV2InspectConfig(o.inspectConfig!);
    unittest.expect(
      o.inspectTemplateName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2ContentItem(o.item!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2DeidentifyConfig(o.reidentifyConfig!);
    unittest.expect(
      o.reidentifyTemplateName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentRequest--;
}

core.int buildCounterGooglePrivacyDlpV2ReidentifyContentResponse = 0;
api.GooglePrivacyDlpV2ReidentifyContentResponse
    buildGooglePrivacyDlpV2ReidentifyContentResponse() {
  final o = api.GooglePrivacyDlpV2ReidentifyContentResponse();
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
    checkGooglePrivacyDlpV2ContentItem(o.item!);
    checkGooglePrivacyDlpV2TransformationOverview(o.overview!);
  }
  buildCounterGooglePrivacyDlpV2ReidentifyContentResponse--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig = 0;
api.GooglePrivacyDlpV2ReplaceDictionaryConfig
    buildGooglePrivacyDlpV2ReplaceDictionaryConfig() {
  final o = api.GooglePrivacyDlpV2ReplaceDictionaryConfig();
  buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig < 3) {
    o.wordList = buildGooglePrivacyDlpV2WordList();
  }
  buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig--;
  return o;
}

void checkGooglePrivacyDlpV2ReplaceDictionaryConfig(
    api.GooglePrivacyDlpV2ReplaceDictionaryConfig o) {
  buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig++;
  if (buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig < 3) {
    checkGooglePrivacyDlpV2WordList(o.wordList!);
  }
  buildCounterGooglePrivacyDlpV2ReplaceDictionaryConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceValueConfig = 0;
api.GooglePrivacyDlpV2ReplaceValueConfig
    buildGooglePrivacyDlpV2ReplaceValueConfig() {
  final o = api.GooglePrivacyDlpV2ReplaceValueConfig();
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
    checkGooglePrivacyDlpV2Value(o.newValue!);
  }
  buildCounterGooglePrivacyDlpV2ReplaceValueConfig--;
}

core.int buildCounterGooglePrivacyDlpV2ReplaceWithInfoTypeConfig = 0;
api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig
    buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig() {
  final o = api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
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
  final o = api.GooglePrivacyDlpV2RequestedOptions();
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
    checkGooglePrivacyDlpV2InspectJobConfig(o.jobConfig!);
    checkGooglePrivacyDlpV2InspectTemplate(o.snapshotInspectTemplate!);
  }
  buildCounterGooglePrivacyDlpV2RequestedOptions--;
}

core.int buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions = 0;
api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions
    buildGooglePrivacyDlpV2RequestedRiskAnalysisOptions() {
  final o = api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions();
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
    checkGooglePrivacyDlpV2RiskAnalysisJobConfig(o.jobConfig!);
  }
  buildCounterGooglePrivacyDlpV2RequestedRiskAnalysisOptions--;
}

core.List<api.GooglePrivacyDlpV2InfoTypeStats> buildUnnamed69() => [
      buildGooglePrivacyDlpV2InfoTypeStats(),
      buildGooglePrivacyDlpV2InfoTypeStats(),
    ];

void checkUnnamed69(core.List<api.GooglePrivacyDlpV2InfoTypeStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2InfoTypeStats(o[0]);
  checkGooglePrivacyDlpV2InfoTypeStats(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Result = 0;
api.GooglePrivacyDlpV2Result buildGooglePrivacyDlpV2Result() {
  final o = api.GooglePrivacyDlpV2Result();
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    o.hybridStats = buildGooglePrivacyDlpV2HybridInspectStatistics();
    o.infoTypeStats = buildUnnamed69();
    o.processedBytes = 'foo';
    o.totalEstimatedBytes = 'foo';
  }
  buildCounterGooglePrivacyDlpV2Result--;
  return o;
}

void checkGooglePrivacyDlpV2Result(api.GooglePrivacyDlpV2Result o) {
  buildCounterGooglePrivacyDlpV2Result++;
  if (buildCounterGooglePrivacyDlpV2Result < 3) {
    checkGooglePrivacyDlpV2HybridInspectStatistics(o.hybridStats!);
    checkUnnamed69(o.infoTypeStats!);
    unittest.expect(
      o.processedBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalEstimatedBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Result--;
}

core.List<api.GooglePrivacyDlpV2Action> buildUnnamed70() => [
      buildGooglePrivacyDlpV2Action(),
      buildGooglePrivacyDlpV2Action(),
    ];

void checkUnnamed70(core.List<api.GooglePrivacyDlpV2Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Action(o[0]);
  checkGooglePrivacyDlpV2Action(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig = 0;
api.GooglePrivacyDlpV2RiskAnalysisJobConfig
    buildGooglePrivacyDlpV2RiskAnalysisJobConfig() {
  final o = api.GooglePrivacyDlpV2RiskAnalysisJobConfig();
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig++;
  if (buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig < 3) {
    o.actions = buildUnnamed70();
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
    checkUnnamed70(o.actions!);
    checkGooglePrivacyDlpV2PrivacyMetric(o.privacyMetric!);
    checkGooglePrivacyDlpV2BigQueryTable(o.sourceTable!);
  }
  buildCounterGooglePrivacyDlpV2RiskAnalysisJobConfig--;
}

core.List<api.GooglePrivacyDlpV2Value> buildUnnamed71() => [
      buildGooglePrivacyDlpV2Value(),
      buildGooglePrivacyDlpV2Value(),
    ];

void checkUnnamed71(core.List<api.GooglePrivacyDlpV2Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Value(o[0]);
  checkGooglePrivacyDlpV2Value(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Row = 0;
api.GooglePrivacyDlpV2Row buildGooglePrivacyDlpV2Row() {
  final o = api.GooglePrivacyDlpV2Row();
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    o.values = buildUnnamed71();
  }
  buildCounterGooglePrivacyDlpV2Row--;
  return o;
}

void checkGooglePrivacyDlpV2Row(api.GooglePrivacyDlpV2Row o) {
  buildCounterGooglePrivacyDlpV2Row++;
  if (buildCounterGooglePrivacyDlpV2Row < 3) {
    checkUnnamed71(o.values!);
  }
  buildCounterGooglePrivacyDlpV2Row--;
}

core.int buildCounterGooglePrivacyDlpV2SaveFindings = 0;
api.GooglePrivacyDlpV2SaveFindings buildGooglePrivacyDlpV2SaveFindings() {
  final o = api.GooglePrivacyDlpV2SaveFindings();
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
    checkGooglePrivacyDlpV2OutputStorageConfig(o.outputConfig!);
  }
  buildCounterGooglePrivacyDlpV2SaveFindings--;
}

core.int buildCounterGooglePrivacyDlpV2Schedule = 0;
api.GooglePrivacyDlpV2Schedule buildGooglePrivacyDlpV2Schedule() {
  final o = api.GooglePrivacyDlpV2Schedule();
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
    unittest.expect(
      o.recurrencePeriodDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Schedule--;
}

core.List<api.GooglePrivacyDlpV2QuasiIdentifierField> buildUnnamed72() => [
      buildGooglePrivacyDlpV2QuasiIdentifierField(),
      buildGooglePrivacyDlpV2QuasiIdentifierField(),
    ];

void checkUnnamed72(core.List<api.GooglePrivacyDlpV2QuasiIdentifierField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2QuasiIdentifierField(o[0]);
  checkGooglePrivacyDlpV2QuasiIdentifierField(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StatisticalTable = 0;
api.GooglePrivacyDlpV2StatisticalTable
    buildGooglePrivacyDlpV2StatisticalTable() {
  final o = api.GooglePrivacyDlpV2StatisticalTable();
  buildCounterGooglePrivacyDlpV2StatisticalTable++;
  if (buildCounterGooglePrivacyDlpV2StatisticalTable < 3) {
    o.quasiIds = buildUnnamed72();
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
    checkUnnamed72(o.quasiIds!);
    checkGooglePrivacyDlpV2FieldId(o.relativeFrequency!);
    checkGooglePrivacyDlpV2BigQueryTable(o.table!);
  }
  buildCounterGooglePrivacyDlpV2StatisticalTable--;
}

core.int buildCounterGooglePrivacyDlpV2StorageConfig = 0;
api.GooglePrivacyDlpV2StorageConfig buildGooglePrivacyDlpV2StorageConfig() {
  final o = api.GooglePrivacyDlpV2StorageConfig();
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
    checkGooglePrivacyDlpV2BigQueryOptions(o.bigQueryOptions!);
    checkGooglePrivacyDlpV2CloudStorageOptions(o.cloudStorageOptions!);
    checkGooglePrivacyDlpV2DatastoreOptions(o.datastoreOptions!);
    checkGooglePrivacyDlpV2HybridOptions(o.hybridOptions!);
    checkGooglePrivacyDlpV2TimespanConfig(o.timespanConfig!);
  }
  buildCounterGooglePrivacyDlpV2StorageConfig--;
}

core.int buildCounterGooglePrivacyDlpV2StorageMetadataLabel = 0;
api.GooglePrivacyDlpV2StorageMetadataLabel
    buildGooglePrivacyDlpV2StorageMetadataLabel() {
  final o = api.GooglePrivacyDlpV2StorageMetadataLabel();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2StorageMetadataLabel--;
}

core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion> buildUnnamed73() => [
      buildGooglePrivacyDlpV2StoredInfoTypeVersion(),
      buildGooglePrivacyDlpV2StoredInfoTypeVersion(),
    ];

void checkUnnamed73(core.List<api.GooglePrivacyDlpV2StoredInfoTypeVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(o[0]);
  checkGooglePrivacyDlpV2StoredInfoTypeVersion(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoType = 0;
api.GooglePrivacyDlpV2StoredInfoType buildGooglePrivacyDlpV2StoredInfoType() {
  final o = api.GooglePrivacyDlpV2StoredInfoType();
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    o.currentVersion = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
    o.name = 'foo';
    o.pendingVersions = buildUnnamed73();
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
  return o;
}

void checkGooglePrivacyDlpV2StoredInfoType(
    api.GooglePrivacyDlpV2StoredInfoType o) {
  buildCounterGooglePrivacyDlpV2StoredInfoType++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoType < 3) {
    checkGooglePrivacyDlpV2StoredInfoTypeVersion(o.currentVersion!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.pendingVersions!);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoType--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig = 0;
api.GooglePrivacyDlpV2StoredInfoTypeConfig
    buildGooglePrivacyDlpV2StoredInfoTypeConfig() {
  final o = api.GooglePrivacyDlpV2StoredInfoTypeConfig();
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Dictionary(o.dictionary!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(
        o.largeCustomDictionary!);
    checkGooglePrivacyDlpV2Regex(o.regex!);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeConfig--;
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeStats = 0;
api.GooglePrivacyDlpV2StoredInfoTypeStats
    buildGooglePrivacyDlpV2StoredInfoTypeStats() {
  final o = api.GooglePrivacyDlpV2StoredInfoTypeStats();
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
    checkGooglePrivacyDlpV2LargeCustomDictionaryStats(o.largeCustomDictionary!);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeStats--;
}

core.List<api.GooglePrivacyDlpV2Error> buildUnnamed74() => [
      buildGooglePrivacyDlpV2Error(),
      buildGooglePrivacyDlpV2Error(),
    ];

void checkUnnamed74(core.List<api.GooglePrivacyDlpV2Error> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Error(o[0]);
  checkGooglePrivacyDlpV2Error(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion = 0;
api.GooglePrivacyDlpV2StoredInfoTypeVersion
    buildGooglePrivacyDlpV2StoredInfoTypeVersion() {
  final o = api.GooglePrivacyDlpV2StoredInfoTypeVersion();
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion++;
  if (buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion < 3) {
    o.config = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
    o.createTime = 'foo';
    o.errors = buildUnnamed74();
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
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed74(o.errors!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2StoredInfoTypeStats(o.stats!);
  }
  buildCounterGooglePrivacyDlpV2StoredInfoTypeVersion--;
}

core.int buildCounterGooglePrivacyDlpV2StoredType = 0;
api.GooglePrivacyDlpV2StoredType buildGooglePrivacyDlpV2StoredType() {
  final o = api.GooglePrivacyDlpV2StoredType();
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2StoredType--;
}

core.int buildCounterGooglePrivacyDlpV2SummaryResult = 0;
api.GooglePrivacyDlpV2SummaryResult buildGooglePrivacyDlpV2SummaryResult() {
  final o = api.GooglePrivacyDlpV2SummaryResult();
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
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2SummaryResult--;
}

core.int buildCounterGooglePrivacyDlpV2SurrogateType = 0;
api.GooglePrivacyDlpV2SurrogateType buildGooglePrivacyDlpV2SurrogateType() {
  final o = api.GooglePrivacyDlpV2SurrogateType();
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

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed75() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed75(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.List<api.GooglePrivacyDlpV2Row> buildUnnamed76() => [
      buildGooglePrivacyDlpV2Row(),
      buildGooglePrivacyDlpV2Row(),
    ];

void checkUnnamed76(core.List<api.GooglePrivacyDlpV2Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2Row(o[0]);
  checkGooglePrivacyDlpV2Row(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2Table = 0;
api.GooglePrivacyDlpV2Table buildGooglePrivacyDlpV2Table() {
  final o = api.GooglePrivacyDlpV2Table();
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    o.headers = buildUnnamed75();
    o.rows = buildUnnamed76();
  }
  buildCounterGooglePrivacyDlpV2Table--;
  return o;
}

void checkGooglePrivacyDlpV2Table(api.GooglePrivacyDlpV2Table o) {
  buildCounterGooglePrivacyDlpV2Table++;
  if (buildCounterGooglePrivacyDlpV2Table < 3) {
    checkUnnamed75(o.headers!);
    checkUnnamed76(o.rows!);
  }
  buildCounterGooglePrivacyDlpV2Table--;
}

core.int buildCounterGooglePrivacyDlpV2TableLocation = 0;
api.GooglePrivacyDlpV2TableLocation buildGooglePrivacyDlpV2TableLocation() {
  final o = api.GooglePrivacyDlpV2TableLocation();
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
    unittest.expect(
      o.rowIndex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2TableLocation--;
}

core.List<api.GooglePrivacyDlpV2FieldId> buildUnnamed77() => [
      buildGooglePrivacyDlpV2FieldId(),
      buildGooglePrivacyDlpV2FieldId(),
    ];

void checkUnnamed77(core.List<api.GooglePrivacyDlpV2FieldId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldId(o[0]);
  checkGooglePrivacyDlpV2FieldId(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2TableOptions = 0;
api.GooglePrivacyDlpV2TableOptions buildGooglePrivacyDlpV2TableOptions() {
  final o = api.GooglePrivacyDlpV2TableOptions();
  buildCounterGooglePrivacyDlpV2TableOptions++;
  if (buildCounterGooglePrivacyDlpV2TableOptions < 3) {
    o.identifyingFields = buildUnnamed77();
  }
  buildCounterGooglePrivacyDlpV2TableOptions--;
  return o;
}

void checkGooglePrivacyDlpV2TableOptions(api.GooglePrivacyDlpV2TableOptions o) {
  buildCounterGooglePrivacyDlpV2TableOptions++;
  if (buildCounterGooglePrivacyDlpV2TableOptions < 3) {
    checkUnnamed77(o.identifyingFields!);
  }
  buildCounterGooglePrivacyDlpV2TableOptions--;
}

core.int buildCounterGooglePrivacyDlpV2TaggedField = 0;
api.GooglePrivacyDlpV2TaggedField buildGooglePrivacyDlpV2TaggedField() {
  final o = api.GooglePrivacyDlpV2TaggedField();
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
    unittest.expect(
      o.customTag!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.field!);
    checkGoogleProtobufEmpty(o.inferred!);
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
  }
  buildCounterGooglePrivacyDlpV2TaggedField--;
}

core.int buildCounterGooglePrivacyDlpV2ThrowError = 0;
api.GooglePrivacyDlpV2ThrowError buildGooglePrivacyDlpV2ThrowError() {
  final o = api.GooglePrivacyDlpV2ThrowError();
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
  final o = api.GooglePrivacyDlpV2TimePartConfig();
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
    unittest.expect(
      o.partToExtract!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2TimePartConfig--;
}

core.int buildCounterGooglePrivacyDlpV2TimeZone = 0;
api.GooglePrivacyDlpV2TimeZone buildGooglePrivacyDlpV2TimeZone() {
  final o = api.GooglePrivacyDlpV2TimeZone();
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
    unittest.expect(
      o.offsetMinutes!,
      unittest.equals(42),
    );
  }
  buildCounterGooglePrivacyDlpV2TimeZone--;
}

core.int buildCounterGooglePrivacyDlpV2TimespanConfig = 0;
api.GooglePrivacyDlpV2TimespanConfig buildGooglePrivacyDlpV2TimespanConfig() {
  final o = api.GooglePrivacyDlpV2TimespanConfig();
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
    unittest.expect(o.enableAutoPopulationOfTimespanConfig!, unittest.isTrue);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2FieldId(o.timestampField!);
  }
  buildCounterGooglePrivacyDlpV2TimespanConfig--;
}

core.int buildCounterGooglePrivacyDlpV2TransformationErrorHandling = 0;
api.GooglePrivacyDlpV2TransformationErrorHandling
    buildGooglePrivacyDlpV2TransformationErrorHandling() {
  final o = api.GooglePrivacyDlpV2TransformationErrorHandling();
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
    checkGooglePrivacyDlpV2LeaveUntransformed(o.leaveUntransformed!);
    checkGooglePrivacyDlpV2ThrowError(o.throwError!);
  }
  buildCounterGooglePrivacyDlpV2TransformationErrorHandling--;
}

core.List<api.GooglePrivacyDlpV2TransformationSummary> buildUnnamed78() => [
      buildGooglePrivacyDlpV2TransformationSummary(),
      buildGooglePrivacyDlpV2TransformationSummary(),
    ];

void checkUnnamed78(core.List<api.GooglePrivacyDlpV2TransformationSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2TransformationSummary(o[0]);
  checkGooglePrivacyDlpV2TransformationSummary(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2TransformationOverview = 0;
api.GooglePrivacyDlpV2TransformationOverview
    buildGooglePrivacyDlpV2TransformationOverview() {
  final o = api.GooglePrivacyDlpV2TransformationOverview();
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    o.transformationSummaries = buildUnnamed78();
    o.transformedBytes = 'foo';
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
  return o;
}

void checkGooglePrivacyDlpV2TransformationOverview(
    api.GooglePrivacyDlpV2TransformationOverview o) {
  buildCounterGooglePrivacyDlpV2TransformationOverview++;
  if (buildCounterGooglePrivacyDlpV2TransformationOverview < 3) {
    checkUnnamed78(o.transformationSummaries!);
    unittest.expect(
      o.transformedBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2TransformationOverview--;
}

core.List<api.GooglePrivacyDlpV2FieldTransformation> buildUnnamed79() => [
      buildGooglePrivacyDlpV2FieldTransformation(),
      buildGooglePrivacyDlpV2FieldTransformation(),
    ];

void checkUnnamed79(core.List<api.GooglePrivacyDlpV2FieldTransformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2FieldTransformation(o[0]);
  checkGooglePrivacyDlpV2FieldTransformation(o[1]);
}

core.List<api.GooglePrivacyDlpV2SummaryResult> buildUnnamed80() => [
      buildGooglePrivacyDlpV2SummaryResult(),
      buildGooglePrivacyDlpV2SummaryResult(),
    ];

void checkUnnamed80(core.List<api.GooglePrivacyDlpV2SummaryResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGooglePrivacyDlpV2SummaryResult(o[0]);
  checkGooglePrivacyDlpV2SummaryResult(o[1]);
}

core.int buildCounterGooglePrivacyDlpV2TransformationSummary = 0;
api.GooglePrivacyDlpV2TransformationSummary
    buildGooglePrivacyDlpV2TransformationSummary() {
  final o = api.GooglePrivacyDlpV2TransformationSummary();
  buildCounterGooglePrivacyDlpV2TransformationSummary++;
  if (buildCounterGooglePrivacyDlpV2TransformationSummary < 3) {
    o.field = buildGooglePrivacyDlpV2FieldId();
    o.fieldTransformations = buildUnnamed79();
    o.infoType = buildGooglePrivacyDlpV2InfoType();
    o.recordSuppress = buildGooglePrivacyDlpV2RecordSuppression();
    o.results = buildUnnamed80();
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
    checkGooglePrivacyDlpV2FieldId(o.field!);
    checkUnnamed79(o.fieldTransformations!);
    checkGooglePrivacyDlpV2InfoType(o.infoType!);
    checkGooglePrivacyDlpV2RecordSuppression(o.recordSuppress!);
    checkUnnamed80(o.results!);
    checkGooglePrivacyDlpV2PrimitiveTransformation(o.transformation!);
    unittest.expect(
      o.transformedBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2TransformationSummary--;
}

core.int buildCounterGooglePrivacyDlpV2TransientCryptoKey = 0;
api.GooglePrivacyDlpV2TransientCryptoKey
    buildGooglePrivacyDlpV2TransientCryptoKey() {
  final o = api.GooglePrivacyDlpV2TransientCryptoKey();
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2TransientCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2Trigger = 0;
api.GooglePrivacyDlpV2Trigger buildGooglePrivacyDlpV2Trigger() {
  final o = api.GooglePrivacyDlpV2Trigger();
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
    checkGooglePrivacyDlpV2Manual(o.manual!);
    checkGooglePrivacyDlpV2Schedule(o.schedule!);
  }
  buildCounterGooglePrivacyDlpV2Trigger--;
}

core.int buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey = 0;
api.GooglePrivacyDlpV2UnwrappedCryptoKey
    buildGooglePrivacyDlpV2UnwrappedCryptoKey() {
  final o = api.GooglePrivacyDlpV2UnwrappedCryptoKey();
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
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2UnwrappedCryptoKey--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = 0;
api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest
    buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest() {
  final o = api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
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
    checkGooglePrivacyDlpV2DeidentifyTemplate(o.deidentifyTemplate!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest = 0;
api.GooglePrivacyDlpV2UpdateInspectTemplateRequest
    buildGooglePrivacyDlpV2UpdateInspectTemplateRequest() {
  final o = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest();
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
    checkGooglePrivacyDlpV2InspectTemplate(o.inspectTemplate!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2UpdateInspectTemplateRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest = 0;
api.GooglePrivacyDlpV2UpdateJobTriggerRequest
    buildGooglePrivacyDlpV2UpdateJobTriggerRequest() {
  final o = api.GooglePrivacyDlpV2UpdateJobTriggerRequest();
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
    checkGooglePrivacyDlpV2JobTrigger(o.jobTrigger!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2UpdateJobTriggerRequest--;
}

core.int buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest = 0;
api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest
    buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest() {
  final o = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
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
    checkGooglePrivacyDlpV2StoredInfoTypeConfig(o.config!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2UpdateStoredInfoTypeRequest--;
}

core.int buildCounterGooglePrivacyDlpV2Value = 0;
api.GooglePrivacyDlpV2Value buildGooglePrivacyDlpV2Value() {
  final o = api.GooglePrivacyDlpV2Value();
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
    unittest.expect(o.booleanValue!, unittest.isTrue);
    checkGoogleTypeDate(o.dateValue!);
    unittest.expect(
      o.dayOfWeekValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integerValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
    checkGoogleTypeTimeOfDay(o.timeValue!);
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGooglePrivacyDlpV2Value--;
}

core.int buildCounterGooglePrivacyDlpV2ValueFrequency = 0;
api.GooglePrivacyDlpV2ValueFrequency buildGooglePrivacyDlpV2ValueFrequency() {
  final o = api.GooglePrivacyDlpV2ValueFrequency();
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
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkGooglePrivacyDlpV2Value(o.value!);
  }
  buildCounterGooglePrivacyDlpV2ValueFrequency--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.int buildCounterGooglePrivacyDlpV2WordList = 0;
api.GooglePrivacyDlpV2WordList buildGooglePrivacyDlpV2WordList() {
  final o = api.GooglePrivacyDlpV2WordList();
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    o.words = buildUnnamed81();
  }
  buildCounterGooglePrivacyDlpV2WordList--;
  return o;
}

void checkGooglePrivacyDlpV2WordList(api.GooglePrivacyDlpV2WordList o) {
  buildCounterGooglePrivacyDlpV2WordList++;
  if (buildCounterGooglePrivacyDlpV2WordList < 3) {
    checkUnnamed81(o.words!);
  }
  buildCounterGooglePrivacyDlpV2WordList--;
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

core.Map<core.String, core.Object?> buildUnnamed82() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed82(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
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
  var casted2 = (o['y']!) as core.Map;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed83() => [
      buildUnnamed82(),
      buildUnnamed82(),
    ];

void checkUnnamed83(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed82(o[0]);
  checkUnnamed82(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed83();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed83(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
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
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeTimeOfDay = 0;
api.GoogleTypeTimeOfDay buildGoogleTypeTimeOfDay() {
  final o = api.GoogleTypeTimeOfDay();
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
  buildCounterGoogleTypeTimeOfDay--;
}

void main() {
  unittest.group('obj-schema-GooglePrivacyDlpV2Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Action();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Action.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Action(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ActivateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ActivateJobTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2AnalyzeDataSourceRiskDetails(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2AuxiliaryTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2AuxiliaryTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2AuxiliaryTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2AuxiliaryTable(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BigQueryField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BigQueryField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BigQueryField(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BigQueryKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BigQueryKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BigQueryKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BigQueryOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BigQueryOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BigQueryOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BigQueryTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BigQueryTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BigQueryTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BigQueryTable(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BoundingBox', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BoundingBox.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BoundingBox(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Bucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Bucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Bucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Bucket(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2BucketingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2BucketingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2BucketingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2BucketingConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ByteContentItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ByteContentItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ByteContentItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ByteContentItem(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CancelDlpJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CancelDlpJobRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CategoricalStatsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CategoricalStatsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CategoricalStatsConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsHistogramBucket',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CategoricalStatsHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CategoricalStatsHistogramBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CategoricalStatsHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CategoricalStatsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CategoricalStatsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CategoricalStatsResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CategoricalStatsResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CharacterMaskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CharacterMaskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CharacterMaskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CharacterMaskConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CharsToIgnore', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CharsToIgnore();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CharsToIgnore.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CharsToIgnore(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageFileSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CloudStorageFileSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CloudStorageFileSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CloudStorageFileSet(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CloudStorageOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CloudStorageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CloudStorageOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStoragePath', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CloudStoragePath();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CloudStoragePath.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CloudStoragePath(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CloudStorageRegexFileSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CloudStorageRegexFileSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CloudStorageRegexFileSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CloudStorageRegexFileSet(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Color();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Color.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Color(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Condition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Condition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Condition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Condition(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Conditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Conditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Conditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Conditions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Container', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Container();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Container.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Container(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ContentItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ContentItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ContentItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ContentItem(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ContentLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ContentLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ContentLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ContentLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateDeidentifyTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateDlpJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CreateDlpJobRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateInspectTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CreateInspectTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CreateJobTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CreateStoredInfoTypeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoDeterministicConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CryptoDeterministicConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CryptoDeterministicConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CryptoDeterministicConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoHashConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CryptoHashConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CryptoHashConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CryptoHashConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CryptoKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CryptoKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CryptoReplaceFfxFpeConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2CustomInfoType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2CustomInfoType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2CustomInfoType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2CustomInfoType(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DatastoreKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DatastoreKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DatastoreKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DatastoreKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DatastoreOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DatastoreOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DatastoreOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DatastoreOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DateShiftConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DateShiftConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DateShiftConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DateShiftConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DateTime(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeidentifyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeidentifyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeidentifyConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeidentifyContentRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyContentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeidentifyContentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeidentifyContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeidentifyContentResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeidentifyTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeidentifyTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeidentifyTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeidentifyTemplate(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeltaPresenceEstimationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeltaPresenceEstimationConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket(od);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DeltaPresenceEstimationResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DeltaPresenceEstimationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DeltaPresenceEstimationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DeltaPresenceEstimationResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DetectionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DetectionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DetectionRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DetectionRule(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Dictionary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Dictionary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Dictionary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Dictionary(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DlpJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DlpJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DlpJob.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DlpJob(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2DocumentLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2DocumentLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2DocumentLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2DocumentLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2EntityId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2EntityId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2EntityId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2EntityId(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Error', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Error();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Error.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Error(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ExcludeInfoTypes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ExcludeInfoTypes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ExcludeInfoTypes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ExcludeInfoTypes(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ExclusionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ExclusionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ExclusionRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ExclusionRule(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Expressions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Expressions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Expressions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Expressions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FieldId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FieldId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FieldId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FieldId(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FieldTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FieldTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FieldTransformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FieldTransformation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FileSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FileSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FileSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FileSet(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Finding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Finding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Finding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Finding(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FindingLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FindingLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FindingLimits.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FindingLimits(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FinishDlpJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FinishDlpJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FinishDlpJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FinishDlpJobRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2FixedSizeBucketingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2FixedSizeBucketingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2FixedSizeBucketingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2FixedSizeBucketingConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HotwordRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HotwordRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HotwordRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HotwordRule(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridContentItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridContentItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridContentItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridContentItem(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridFindingDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridFindingDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridFindingDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridFindingDetails(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectDlpJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridInspectDlpJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridInspectDlpJobRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectJobTriggerRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridInspectJobTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridInspectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridInspectResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridInspectResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridInspectStatistics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridInspectStatistics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridInspectStatistics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridInspectStatistics(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2HybridOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2HybridOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2HybridOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2HybridOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ImageLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ImageLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ImageLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ImageLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ImageRedactionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ImageRedactionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ImageRedactionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ImageRedactionConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoType(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoTypeDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoTypeDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoTypeDescription(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoTypeLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoTypeLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoTypeLimit(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoTypeStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoTypeStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoTypeStats(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoTypeTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoTypeTransformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoTypeTransformation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InfoTypeTransformations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InfoTypeTransformations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InfoTypeTransformations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InfoTypeTransformations(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectContentRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectContentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectContentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectContentResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectDataSourceDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectDataSourceDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectDataSourceDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectDataSourceDetails(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectJobConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectJobConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectJobConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectJobConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectTemplate(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectionRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectionRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectionRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectionRule(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2InspectionRuleSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2InspectionRuleSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2InspectionRuleSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2InspectionRuleSet(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2JobNotificationEmails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2JobNotificationEmails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2JobNotificationEmails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2JobNotificationEmails(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2JobTrigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2JobTrigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2JobTrigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2JobTrigger(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KAnonymityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KAnonymityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KAnonymityConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityEquivalenceClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KAnonymityEquivalenceClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KAnonymityEquivalenceClass.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KAnonymityEquivalenceClass(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityHistogramBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KAnonymityHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KAnonymityHistogramBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KAnonymityHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KAnonymityResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KAnonymityResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KAnonymityResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KAnonymityResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KMapEstimationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KMapEstimationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KMapEstimationConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationHistogramBucket',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KMapEstimationHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KMapEstimationHistogramBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KMapEstimationHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationQuasiIdValues',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KMapEstimationQuasiIdValues();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KMapEstimationQuasiIdValues.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KMapEstimationQuasiIdValues(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KMapEstimationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KMapEstimationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KMapEstimationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KMapEstimationResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Key', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Key();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Key.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Key(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KindExpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KindExpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KindExpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KindExpression(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2KmsWrappedCryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2KmsWrappedCryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2KmsWrappedCryptoKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2KmsWrappedCryptoKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LDiversityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LDiversityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LDiversityConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityEquivalenceClass', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LDiversityEquivalenceClass();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LDiversityEquivalenceClass.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LDiversityEquivalenceClass(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityHistogramBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LDiversityHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LDiversityHistogramBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LDiversityHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LDiversityResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LDiversityResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LDiversityResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LDiversityResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LargeCustomDictionaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LargeCustomDictionaryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LargeCustomDictionaryConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LargeCustomDictionaryStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LargeCustomDictionaryStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LargeCustomDictionaryStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LargeCustomDictionaryStats(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LeaveUntransformed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LeaveUntransformed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LeaveUntransformed.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LeaveUntransformed(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2LikelihoodAdjustment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2LikelihoodAdjustment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2LikelihoodAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2LikelihoodAdjustment(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListDeidentifyTemplatesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListDlpJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListDlpJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListDlpJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListDlpJobsResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListInfoTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListInfoTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListInfoTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListInfoTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListInspectTemplatesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListInspectTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListInspectTemplatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListJobTriggersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListJobTriggersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListJobTriggersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListJobTriggersResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ListStoredInfoTypesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ListStoredInfoTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ListStoredInfoTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Location();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Location.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Location(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Manual', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Manual();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Manual.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Manual(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2MetadataLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2MetadataLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2MetadataLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2MetadataLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2NumericalStatsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2NumericalStatsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2NumericalStatsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2NumericalStatsConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2NumericalStatsResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2NumericalStatsResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2NumericalStatsResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2NumericalStatsResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2OutputStorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2OutputStorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2OutputStorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2OutputStorageConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PartitionId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PartitionId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PartitionId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PartitionId(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PathElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PathElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PathElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PathElement(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PrimitiveTransformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PrimitiveTransformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PrimitiveTransformation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PrimitiveTransformation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PrivacyMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PrivacyMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PrivacyMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PrivacyMetric(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Proximity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Proximity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Proximity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Proximity(od);
    });
  });

  unittest.group(
      'obj-schema-GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PublishFindingsToCloudDataCatalog(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishSummaryToCscc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PublishSummaryToCscc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PublishSummaryToCscc.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PublishSummaryToCscc(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishToPubSub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PublishToPubSub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PublishToPubSub.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PublishToPubSub(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2PublishToStackdriver', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2PublishToStackdriver();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2PublishToStackdriver.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2PublishToStackdriver(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2QuasiId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2QuasiId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2QuasiId(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiIdField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2QuasiIdField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2QuasiIdField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2QuasiIdField(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuasiIdentifierField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2QuasiIdentifierField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2QuasiIdentifierField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2QuasiIdentifierField(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2QuoteInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2QuoteInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2QuoteInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2QuoteInfo(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Range();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Range.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Range(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RecordCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RecordCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RecordCondition(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RecordKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RecordKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RecordKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RecordLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RecordLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RecordLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordSuppression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RecordSuppression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RecordSuppression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RecordSuppression(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RecordTransformations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RecordTransformations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RecordTransformations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RecordTransformations(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RedactConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RedactConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RedactConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RedactImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RedactImageRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RedactImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RedactImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RedactImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RedactImageResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Regex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Regex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Regex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Regex(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReidentifyContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ReidentifyContentRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReidentifyContentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ReidentifyContentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ReidentifyContentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ReidentifyContentResponse(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReplaceDictionaryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ReplaceDictionaryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ReplaceDictionaryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ReplaceDictionaryConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReplaceValueConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ReplaceValueConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ReplaceValueConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ReplaceValueConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ReplaceWithInfoTypeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ReplaceWithInfoTypeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ReplaceWithInfoTypeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ReplaceWithInfoTypeConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RequestedOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RequestedOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RequestedOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RequestedOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RequestedRiskAnalysisOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RequestedRiskAnalysisOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RequestedRiskAnalysisOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RequestedRiskAnalysisOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Result();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Result.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Result(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2RiskAnalysisJobConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2RiskAnalysisJobConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2RiskAnalysisJobConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2RiskAnalysisJobConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Row();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Row(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SaveFindings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2SaveFindings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2SaveFindings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2SaveFindings(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Schedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Schedule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Schedule(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StatisticalTable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StatisticalTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StatisticalTable.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StatisticalTable(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StorageConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StorageConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StorageConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StorageConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StorageMetadataLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StorageMetadataLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StorageMetadataLabel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StorageMetadataLabel(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StoredInfoType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StoredInfoType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StoredInfoType(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StoredInfoTypeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StoredInfoTypeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StoredInfoTypeConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StoredInfoTypeStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StoredInfoTypeStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StoredInfoTypeStats(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredInfoTypeVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StoredInfoTypeVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StoredInfoTypeVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StoredInfoTypeVersion(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2StoredType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2StoredType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2StoredType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2StoredType(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SummaryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2SummaryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2SummaryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2SummaryResult(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2SurrogateType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2SurrogateType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2SurrogateType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2SurrogateType(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Table();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Table.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Table(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TableLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TableLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TableLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TableLocation(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TableOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TableOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TableOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TableOptions(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TaggedField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TaggedField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TaggedField.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TaggedField(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ThrowError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ThrowError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ThrowError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ThrowError(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimePartConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TimePartConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TimePartConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TimePartConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TimeZone(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TimespanConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TimespanConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TimespanConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TimespanConfig(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationErrorHandling',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TransformationErrorHandling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TransformationErrorHandling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TransformationErrorHandling(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationOverview', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TransformationOverview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TransformationOverview.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TransformationOverview(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransformationSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TransformationSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TransformationSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TransformationSummary(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2TransientCryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2TransientCryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2TransientCryptoKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2TransientCryptoKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Trigger', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Trigger();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Trigger.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Trigger(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UnwrappedCryptoKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2UnwrappedCryptoKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2UnwrappedCryptoKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2UnwrappedCryptoKey(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateInspectTemplateRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateJobTriggerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2UpdateJobTriggerRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2UpdateStoredInfoTypeRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2Value();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2Value.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2Value(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2ValueFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2ValueFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2ValueFrequency.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2ValueFrequency(od);
    });
  });

  unittest.group('obj-schema-GooglePrivacyDlpV2WordList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGooglePrivacyDlpV2WordList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GooglePrivacyDlpV2WordList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGooglePrivacyDlpV2WordList(od);
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

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeOfDay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeOfDay(od);
    });
  });

  unittest.group('resource-InfoTypesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).infoTypes;
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_locationId = 'foo';
      final arg_parent = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v2/infoTypes'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
        );
        unittest.expect(
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          languageCode: arg_languageCode,
          locationId: arg_locationId,
          parent: arg_parent,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListInfoTypesResponse);
    });
  });

  unittest.group('resource-LocationsInfoTypesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).locations.infoTypes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_locationId = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          languageCode: arg_languageCode,
          locationId: arg_locationId,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListInfoTypesResponse);
    });
  });

  unittest.group('resource-OrganizationsDeidentifyTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.deidentifyTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });
  });

  unittest.group('resource-OrganizationsInspectTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.inspectTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });
  });

  unittest.group('resource-OrganizationsLocationsDeidentifyTemplatesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.deidentifyTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });
  });

  unittest.group('resource-OrganizationsLocationsDlpJobsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.dlpJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDlpJobsResponse(
          response as api.GooglePrivacyDlpV2ListDlpJobsResponse);
    });
  });

  unittest.group('resource-OrganizationsLocationsInspectTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.inspectTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });
  });

  unittest.group('resource-OrganizationsLocationsJobTriggersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.jobTriggers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListJobTriggersResponse(
          response as api.GooglePrivacyDlpV2ListJobTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });
  });

  unittest.group('resource-OrganizationsLocationsStoredInfoTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.storedInfoTypes;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.locations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });
  });

  unittest.group('resource-OrganizationsStoredInfoTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.storedInfoTypes;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).organizations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });
  });

  unittest.group('resource-ProjectsContentResource', () {
    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.content;
      final arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deidentify(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyContentResponse(
          response as api.GooglePrivacyDlpV2DeidentifyContentResponse);
    });

    unittest.test('method--inspect', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.content;
      final arg_request = buildGooglePrivacyDlpV2InspectContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2InspectContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2InspectContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.inspect(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectContentResponse(
          response as api.GooglePrivacyDlpV2InspectContentResponse);
    });

    unittest.test('method--reidentify', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.content;
      final arg_request = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ReidentifyContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ReidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reidentify(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2ReidentifyContentResponse(
          response as api.GooglePrivacyDlpV2ReidentifyContentResponse);
    });
  });

  unittest.group('resource-ProjectsDeidentifyTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.deidentifyTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });
  });

  unittest.group('resource-ProjectsDlpJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CancelDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.dlpJobs;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.dlpJobs;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.dlpJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDlpJobsResponse(
          response as api.GooglePrivacyDlpV2ListDlpJobsResponse);
    });
  });

  unittest.group('resource-ProjectsImageResource', () {
    unittest.test('method--redact', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.image;
      final arg_request = buildGooglePrivacyDlpV2RedactImageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2RedactImageRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2RedactImageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.redact(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2RedactImageResponse(
          response as api.GooglePrivacyDlpV2RedactImageResponse);
    });
  });

  unittest.group('resource-ProjectsInspectTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.inspectTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });
  });

  unittest.group('resource-ProjectsJobTriggersResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ActivateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListJobTriggersResponse(
          response as api.GooglePrivacyDlpV2ListJobTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });
  });

  unittest.group('resource-ProjectsLocationsContentResource', () {
    unittest.test('method--deidentify', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.content;
      final arg_request = buildGooglePrivacyDlpV2DeidentifyContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2DeidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2DeidentifyContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2DeidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deidentify(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyContentResponse(
          response as api.GooglePrivacyDlpV2DeidentifyContentResponse);
    });

    unittest.test('method--inspect', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.content;
      final arg_request = buildGooglePrivacyDlpV2InspectContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2InspectContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2InspectContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2InspectContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.inspect(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectContentResponse(
          response as api.GooglePrivacyDlpV2InspectContentResponse);
    });

    unittest.test('method--reidentify', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.content;
      final arg_request = buildGooglePrivacyDlpV2ReidentifyContentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2ReidentifyContentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ReidentifyContentRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ReidentifyContentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.reidentify(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2ReidentifyContentResponse(
          response as api.GooglePrivacyDlpV2ReidentifyContentResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsDeidentifyTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2CreateDeidentifyTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2CreateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.deidentifyTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.deidentifyTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListDeidentifyTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDeidentifyTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListDeidentifyTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.deidentifyTemplates;
      final arg_request =
          buildGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateDeidentifyTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2DeidentifyTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DeidentifyTemplate(
          response as api.GooglePrivacyDlpV2DeidentifyTemplate);
    });
  });

  unittest.group('resource-ProjectsLocationsDlpJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2CancelDlpJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CancelDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CancelDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2CreateDlpJobRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--finish', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2FinishDlpJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2FinishDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2FinishDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.finish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--hybridInspect', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
      final arg_request = buildGooglePrivacyDlpV2HybridInspectDlpJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2HybridInspectDlpJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2HybridInspectDlpJobRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2HybridInspectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.hybridInspect(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2HybridInspectResponse(
          response as api.GooglePrivacyDlpV2HybridInspectResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.dlpJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2ListDlpJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListDlpJobsResponse(
          response as api.GooglePrivacyDlpV2ListDlpJobsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsImageResource', () {
    unittest.test('method--redact', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.image;
      final arg_request = buildGooglePrivacyDlpV2RedactImageRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2RedactImageRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2RedactImageRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2RedactImageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.redact(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2RedactImageResponse(
          response as api.GooglePrivacyDlpV2RedactImageResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInspectTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2CreateInspectTemplateRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.inspectTemplates;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.inspectTemplates;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListInspectTemplatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListInspectTemplatesResponse(
          response as api.GooglePrivacyDlpV2ListInspectTemplatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.inspectTemplates;
      final arg_request = buildGooglePrivacyDlpV2UpdateInspectTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateInspectTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateInspectTemplateRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2InspectTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2InspectTemplate(
          response as api.GooglePrivacyDlpV2InspectTemplate);
    });
  });

  unittest.group('resource-ProjectsLocationsJobTriggersResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2ActivateJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2ActivateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2ActivateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2DlpJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2DlpJob(response as api.GooglePrivacyDlpV2DlpJob);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2CreateJobTriggerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });

    unittest.test('method--hybridInspect', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
      final arg_request =
          buildGooglePrivacyDlpV2HybridInspectJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GooglePrivacyDlpV2HybridInspectJobTriggerRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2HybridInspectJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2HybridInspectResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.hybridInspect(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2HybridInspectResponse(
          response as api.GooglePrivacyDlpV2HybridInspectResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListJobTriggersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          type: arg_type,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListJobTriggersResponse(
          response as api.GooglePrivacyDlpV2ListJobTriggersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.jobTriggers;
      final arg_request = buildGooglePrivacyDlpV2UpdateJobTriggerRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateJobTriggerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateJobTriggerRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGooglePrivacyDlpV2JobTrigger());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2JobTrigger(
          response as api.GooglePrivacyDlpV2JobTrigger);
    });
  });

  unittest.group('resource-ProjectsLocationsStoredInfoTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.storedInfoTypes;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.locations.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });
  });

  unittest.group('resource-ProjectsStoredInfoTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2CreateStoredInfoTypeRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2CreateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2CreateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.storedInfoTypes;
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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.storedInfoTypes;
      final arg_parent = 'foo';
      final arg_locationId = 'foo';
      final arg_orderBy = 'foo';
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v2/'),
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
          queryMap['locationId']!.first,
          unittest.equals(arg_locationId),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGooglePrivacyDlpV2ListStoredInfoTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          locationId: arg_locationId,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGooglePrivacyDlpV2ListStoredInfoTypesResponse(
          response as api.GooglePrivacyDlpV2ListStoredInfoTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DLPApi(mock).projects.storedInfoTypes;
      final arg_request = buildGooglePrivacyDlpV2UpdateStoredInfoTypeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GooglePrivacyDlpV2UpdateStoredInfoTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGooglePrivacyDlpV2UpdateStoredInfoTypeRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp =
            convert.json.encode(buildGooglePrivacyDlpV2StoredInfoType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGooglePrivacyDlpV2StoredInfoType(
          response as api.GooglePrivacyDlpV2StoredInfoType);
    });
  });
}
