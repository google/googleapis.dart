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

import 'package:googleapis/drivelabels/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAppsDriveLabelsV2BadgeColors = 0;
api.GoogleAppsDriveLabelsV2BadgeColors
buildGoogleAppsDriveLabelsV2BadgeColors() {
  final o = api.GoogleAppsDriveLabelsV2BadgeColors();
  buildCounterGoogleAppsDriveLabelsV2BadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeColors < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.foregroundColor = buildGoogleTypeColor();
    o.soloColor = buildGoogleTypeColor();
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeColors--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BadgeColors(
  api.GoogleAppsDriveLabelsV2BadgeColors o,
) {
  buildCounterGoogleAppsDriveLabelsV2BadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeColors < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.foregroundColor!);
    checkGoogleTypeColor(o.soloColor!);
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeColors--;
}

core.int buildCounterGoogleAppsDriveLabelsV2BadgeConfig = 0;
api.GoogleAppsDriveLabelsV2BadgeConfig
buildGoogleAppsDriveLabelsV2BadgeConfig() {
  final o = api.GoogleAppsDriveLabelsV2BadgeConfig();
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeConfig < 3) {
    o.color = buildGoogleTypeColor();
    o.priorityOverride = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BadgeConfig(
  api.GoogleAppsDriveLabelsV2BadgeConfig o,
) {
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2BadgeConfig < 3) {
    checkGoogleTypeColor(o.color!);
    unittest.expect(o.priorityOverride!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2BadgeConfig--;
}

core.List<api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest>
buildUnnamed0() => [
  buildGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(),
  buildGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(),
];

void checkUnnamed0(
  core.List<api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(o[0]);
  checkGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest =
    0;
api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest
buildGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest() {
  final o = api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest();
  buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest <
      3) {
    o.requests = buildUnnamed0();
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest(
  api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest <
      3) {
    checkUnnamed0(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest>
buildUnnamed1() => [
  buildGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(),
  buildGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(),
];

void checkUnnamed1(
  core.List<api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(o[0]);
  checkGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest =
    0;
api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest
buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest() {
  final o = api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest();
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest <
      3) {
    o.requests = buildUnnamed1();
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest(
  api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest <
      3) {
    checkUnnamed1(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2LabelPermission> buildUnnamed2() => [
  buildGoogleAppsDriveLabelsV2LabelPermission(),
  buildGoogleAppsDriveLabelsV2LabelPermission(),
];

void checkUnnamed2(core.List<api.GoogleAppsDriveLabelsV2LabelPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2LabelPermission(o[0]);
  checkGoogleAppsDriveLabelsV2LabelPermission(o[1]);
}

core.int
buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse = 0;
api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse
buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse() {
  final o = api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse();
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse <
      3) {
    o.permissions = buildUnnamed2();
  }
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(
  api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse <
      3) {
    checkUnnamed2(o.permissions!);
  }
  buildCounterGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2DateLimits = 0;
api.GoogleAppsDriveLabelsV2DateLimits buildGoogleAppsDriveLabelsV2DateLimits() {
  final o = api.GoogleAppsDriveLabelsV2DateLimits();
  buildCounterGoogleAppsDriveLabelsV2DateLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2DateLimits < 3) {
    o.maxValue = buildGoogleTypeDate();
    o.minValue = buildGoogleTypeDate();
  }
  buildCounterGoogleAppsDriveLabelsV2DateLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DateLimits(
  api.GoogleAppsDriveLabelsV2DateLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2DateLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2DateLimits < 3) {
    checkGoogleTypeDate(o.maxValue!);
    checkGoogleTypeDate(o.minValue!);
  }
  buildCounterGoogleAppsDriveLabelsV2DateLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest = 0;
api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest
buildGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest() {
  final o = api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest();
  buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest < 3) {
    o.name = 'foo';
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(
  api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest>
buildUnnamed3() => [
  buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(),
  buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(),
];

void checkUnnamed3(
  core.List<api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(o[0]);
  checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest = 0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest < 3) {
    o.languageCode = 'foo';
    o.requests = buildUnnamed3();
    o.useAdminAccess = true;
    o.view = 'foo';
    o.writeControl = buildGoogleAppsDriveLabelsV2WriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed3(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2WriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest <
      3) {
    o.field = buildGoogleAppsDriveLabelsV2Field();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest <
      3) {
    checkGoogleAppsDriveLabelsV2Field(o.field!);
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest <
      3) {
    o.choice = buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice();
    o.fieldId = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest <
      3) {
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(o.choice!);
    unittest.expect(o.fieldId!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest <
      3) {
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest <
      3) {
    o.disabledPolicy = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
    o.id = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest <
      3) {
    checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest <
      3) {
    o.disabledPolicy = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
    o.fieldId = 'foo';
    o.id = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest <
      3) {
    checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest <
      3) {
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest = 0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest() {
  final o = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest < 3) {
    o.createField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest();
    o.createSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest();
    o.deleteField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest();
    o.deleteSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
    o.disableField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest();
    o.disableSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest();
    o.enableField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest();
    o.enableSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest();
    o.updateField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
    o.updateFieldType =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest();
    o.updateLabel =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
    o.updateSelectionChoiceProperties =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest < 3) {
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest(
      o.createField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest(
      o.createSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest(
      o.deleteField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
      o.deleteSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest(
      o.disableField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest(
      o.disableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest(
      o.enableField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest(
      o.enableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
      o.updateField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest(
      o.updateFieldType!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
      o.updateLabel!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
      o.updateSelectionChoiceProperties!,
    );
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest <
      3) {
    o.id = 'foo';
    o.properties = buildGoogleAppsDriveLabelsV2FieldProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldProperties(o.properties!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest <
      3) {
    o.dateOptions = buildGoogleAppsDriveLabelsV2FieldDateOptions();
    o.id = 'foo';
    o.integerOptions = buildGoogleAppsDriveLabelsV2FieldIntegerOptions();
    o.selectionOptions = buildGoogleAppsDriveLabelsV2FieldSelectionOptions();
    o.textOptions = buildGoogleAppsDriveLabelsV2FieldTextOptions();
    o.updateMask = 'foo';
    o.userOptions = buildGoogleAppsDriveLabelsV2FieldUserOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest <
      3) {
    checkGoogleAppsDriveLabelsV2FieldDateOptions(o.dateOptions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldIntegerOptions(o.integerOptions!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptions(o.selectionOptions!);
    checkGoogleAppsDriveLabelsV2FieldTextOptions(o.textOptions!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldUserOptions(o.userOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest <
      3) {
    o.properties = buildGoogleAppsDriveLabelsV2LabelProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest <
      3) {
    checkGoogleAppsDriveLabelsV2LabelProperties(o.properties!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
    o.properties =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(
      o.properties!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse>
buildUnnamed4() => [
  buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(),
  buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(),
];

void checkUnnamed4(
  core.List<api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(o[0]);
  checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse = 0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse() {
  final o = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse < 3) {
    o.responses = buildUnnamed4();
    o.updatedLabel = buildGoogleAppsDriveLabelsV2Label();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse < 3) {
    checkUnnamed4(o.responses!);
    checkGoogleAppsDriveLabelsV2Label(o.updatedLabel!);
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse <
      3) {
    o.id = 'foo';
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse() {
  final o = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse < 3) {
    o.createField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse();
    o.createSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse();
    o.deleteField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse();
    o.deleteSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
    o.disableField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse();
    o.disableSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse();
    o.enableField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse();
    o.enableSelectionChoice =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse();
    o.updateField =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
    o.updateFieldType =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse();
    o.updateLabel =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
    o.updateSelectionChoiceProperties =
        buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse < 3) {
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse(
      o.createField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse(
      o.createSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse(
      o.deleteField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
      o.deleteSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse(
      o.disableField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse(
      o.disableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse(
      o.enableField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse(
      o.enableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
      o.updateField!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse(
      o.updateFieldType!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
      o.updateLabel!,
    );
    checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
      o.updateSelectionChoiceProperties!,
    );
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse <
      3) {
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse <
      3) {
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse <
      3) {
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
  api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse <
      3) {
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest = 0;
api.GoogleAppsDriveLabelsV2DisableLabelRequest
buildGoogleAppsDriveLabelsV2DisableLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2DisableLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest < 3) {
    o.disabledPolicy = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
    o.languageCode = 'foo';
    o.updateMask = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2WriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2DisableLabelRequest(
  api.GoogleAppsDriveLabelsV2DisableLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest < 3) {
    checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2WriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2DisableLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest = 0;
api.GoogleAppsDriveLabelsV2EnableLabelRequest
buildGoogleAppsDriveLabelsV2EnableLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2EnableLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest < 3) {
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2WriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2EnableLabelRequest(
  api.GoogleAppsDriveLabelsV2EnableLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2WriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2EnableLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2Field = 0;
api.GoogleAppsDriveLabelsV2Field buildGoogleAppsDriveLabelsV2Field() {
  final o = api.GoogleAppsDriveLabelsV2Field();
  buildCounterGoogleAppsDriveLabelsV2Field++;
  if (buildCounterGoogleAppsDriveLabelsV2Field < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.dateOptions = buildGoogleAppsDriveLabelsV2FieldDateOptions();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2FieldDisplayHints();
    o.id = 'foo';
    o.integerOptions = buildGoogleAppsDriveLabelsV2FieldIntegerOptions();
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.properties = buildGoogleAppsDriveLabelsV2FieldProperties();
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.queryKey = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities();
    o.selectionOptions = buildGoogleAppsDriveLabelsV2FieldSelectionOptions();
    o.textOptions = buildGoogleAppsDriveLabelsV2FieldTextOptions();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2UserInfo();
    o.userOptions = buildGoogleAppsDriveLabelsV2FieldUserOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2Field--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Field(api.GoogleAppsDriveLabelsV2Field o) {
  buildCounterGoogleAppsDriveLabelsV2Field++;
  if (buildCounterGoogleAppsDriveLabelsV2Field < 3) {
    checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(
      o.appliedCapabilities!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    checkGoogleAppsDriveLabelsV2FieldDateOptions(o.dateOptions!);
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2FieldDisplayHints(o.displayHints!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldIntegerOptions(o.integerOptions!);
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2FieldProperties(o.properties!);
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    unittest.expect(o.queryKey!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(o.schemaCapabilities!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptions(o.selectionOptions!);
    checkGoogleAppsDriveLabelsV2FieldTextOptions(o.textOptions!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.updater!);
    checkGoogleAppsDriveLabelsV2FieldUserOptions(o.userOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2Field--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities
buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities < 3) {
    o.canRead = true;
    o.canSearch = true;
    o.canWrite = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities < 3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canWrite!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldDateOptions = 0;
api.GoogleAppsDriveLabelsV2FieldDateOptions
buildGoogleAppsDriveLabelsV2FieldDateOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldDateOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDateOptions < 3) {
    o.dateFormat = 'foo';
    o.dateFormatType = 'foo';
    o.maxValue = buildGoogleTypeDate();
    o.minValue = buildGoogleTypeDate();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldDateOptions(
  api.GoogleAppsDriveLabelsV2FieldDateOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDateOptions < 3) {
    unittest.expect(o.dateFormat!, unittest.equals('foo'));
    unittest.expect(o.dateFormatType!, unittest.equals('foo'));
    checkGoogleTypeDate(o.maxValue!);
    checkGoogleTypeDate(o.minValue!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDateOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints = 0;
api.GoogleAppsDriveLabelsV2FieldDisplayHints
buildGoogleAppsDriveLabelsV2FieldDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2FieldDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.required = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldDisplayHints(
  api.GoogleAppsDriveLabelsV2FieldDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldDisplayHints--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions = 0;
api.GoogleAppsDriveLabelsV2FieldIntegerOptions
buildGoogleAppsDriveLabelsV2FieldIntegerOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldIntegerOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldIntegerOptions(
  api.GoogleAppsDriveLabelsV2FieldIntegerOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions < 3) {
    unittest.expect(o.maxValue!, unittest.equals('foo'));
    unittest.expect(o.minValue!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2FieldIntegerOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldLimits = 0;
api.GoogleAppsDriveLabelsV2FieldLimits
buildGoogleAppsDriveLabelsV2FieldLimits() {
  final o = api.GoogleAppsDriveLabelsV2FieldLimits();
  buildCounterGoogleAppsDriveLabelsV2FieldLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldLimits < 3) {
    o.dateLimits = buildGoogleAppsDriveLabelsV2DateLimits();
    o.integerLimits = buildGoogleAppsDriveLabelsV2IntegerLimits();
    o.longTextLimits = buildGoogleAppsDriveLabelsV2LongTextLimits();
    o.maxDescriptionLength = 42;
    o.maxDisplayNameLength = 42;
    o.maxIdLength = 42;
    o.selectionLimits = buildGoogleAppsDriveLabelsV2SelectionLimits();
    o.textLimits = buildGoogleAppsDriveLabelsV2TextLimits();
    o.userLimits = buildGoogleAppsDriveLabelsV2UserLimits();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldLimits(
  api.GoogleAppsDriveLabelsV2FieldLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldLimits < 3) {
    checkGoogleAppsDriveLabelsV2DateLimits(o.dateLimits!);
    checkGoogleAppsDriveLabelsV2IntegerLimits(o.integerLimits!);
    checkGoogleAppsDriveLabelsV2LongTextLimits(o.longTextLimits!);
    unittest.expect(o.maxDescriptionLength!, unittest.equals(42));
    unittest.expect(o.maxDisplayNameLength!, unittest.equals(42));
    unittest.expect(o.maxIdLength!, unittest.equals(42));
    checkGoogleAppsDriveLabelsV2SelectionLimits(o.selectionLimits!);
    checkGoogleAppsDriveLabelsV2TextLimits(o.textLimits!);
    checkGoogleAppsDriveLabelsV2UserLimits(o.userLimits!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldListOptions = 0;
api.GoogleAppsDriveLabelsV2FieldListOptions
buildGoogleAppsDriveLabelsV2FieldListOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldListOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldListOptions < 3) {
    o.maxEntries = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldListOptions(
  api.GoogleAppsDriveLabelsV2FieldListOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldListOptions < 3) {
    unittest.expect(o.maxEntries!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2FieldListOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldProperties = 0;
api.GoogleAppsDriveLabelsV2FieldProperties
buildGoogleAppsDriveLabelsV2FieldProperties() {
  final o = api.GoogleAppsDriveLabelsV2FieldProperties();
  buildCounterGoogleAppsDriveLabelsV2FieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldProperties < 3) {
    o.displayName = 'foo';
    o.insertBeforeField = 'foo';
    o.required = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldProperties(
  api.GoogleAppsDriveLabelsV2FieldProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldProperties < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.insertBeforeField!, unittest.equals('foo'));
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities
buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSchemaCapabilities--;
}

core.List<api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice>
buildUnnamed5() => [
  buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(),
  buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(),
];

void checkUnnamed5(
  core.List<api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(o[0]);
  checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptions
buildGoogleAppsDriveLabelsV2FieldSelectionOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions < 3) {
    o.choices = buildUnnamed5();
    o.listOptions = buildGoogleAppsDriveLabelsV2FieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptions(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions < 3) {
    checkUnnamed5(o.choices!);
    checkGoogleAppsDriveLabelsV2FieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice
buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
    o.id = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.properties =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2UserInfo();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice < 3) {
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
      o.appliedCapabilities!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(
      o.displayHints!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(
      o.properties!,
    );
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
      o.schemaCapabilities!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.updater!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities
buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities() {
  final o =
      api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    o.canRead = true;
    o.canSearch = true;
    o.canSelect = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canSelect!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints
buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints() {
  final o =
      api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints <
      3) {
    o.badgeColors = buildGoogleAppsDriveLabelsV2BadgeColors();
    o.badgePriority = 'foo';
    o.darkBadgeColors = buildGoogleAppsDriveLabelsV2BadgeColors();
    o.disabled = true;
    o.hiddenInSearch = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints <
      3) {
    checkGoogleAppsDriveLabelsV2BadgeColors(o.badgeColors!);
    unittest.expect(o.badgePriority!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2BadgeColors(o.darkBadgeColors!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties = 0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties
buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties() {
  final o = api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties <
      3) {
    o.badgeConfig = buildGoogleAppsDriveLabelsV2BadgeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.insertBeforeChoice = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties <
      3) {
    checkGoogleAppsDriveLabelsV2BadgeConfig(o.badgeConfig!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.insertBeforeChoice!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities =
    0;
api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities
buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities() {
  final o =
      api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldTextOptions = 0;
api.GoogleAppsDriveLabelsV2FieldTextOptions
buildGoogleAppsDriveLabelsV2FieldTextOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldTextOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldTextOptions < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldTextOptions(
  api.GoogleAppsDriveLabelsV2FieldTextOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldTextOptions < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2FieldTextOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2FieldUserOptions = 0;
api.GoogleAppsDriveLabelsV2FieldUserOptions
buildGoogleAppsDriveLabelsV2FieldUserOptions() {
  final o = api.GoogleAppsDriveLabelsV2FieldUserOptions();
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldUserOptions < 3) {
    o.listOptions = buildGoogleAppsDriveLabelsV2FieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2FieldUserOptions(
  api.GoogleAppsDriveLabelsV2FieldUserOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2FieldUserOptions < 3) {
    checkGoogleAppsDriveLabelsV2FieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2FieldUserOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2IntegerLimits = 0;
api.GoogleAppsDriveLabelsV2IntegerLimits
buildGoogleAppsDriveLabelsV2IntegerLimits() {
  final o = api.GoogleAppsDriveLabelsV2IntegerLimits();
  buildCounterGoogleAppsDriveLabelsV2IntegerLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2IntegerLimits < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2IntegerLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2IntegerLimits(
  api.GoogleAppsDriveLabelsV2IntegerLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2IntegerLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2IntegerLimits < 3) {
    unittest.expect(o.maxValue!, unittest.equals('foo'));
    unittest.expect(o.minValue!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2IntegerLimits--;
}

core.List<api.GoogleAppsDriveLabelsV2Field> buildUnnamed6() => [
  buildGoogleAppsDriveLabelsV2Field(),
  buildGoogleAppsDriveLabelsV2Field(),
];

void checkUnnamed6(core.List<api.GoogleAppsDriveLabelsV2Field> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2Field(o[0]);
  checkGoogleAppsDriveLabelsV2Field(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2Label = 0;
api.GoogleAppsDriveLabelsV2Label buildGoogleAppsDriveLabelsV2Label() {
  final o = api.GoogleAppsDriveLabelsV2Label();
  buildCounterGoogleAppsDriveLabelsV2Label++;
  if (buildCounterGoogleAppsDriveLabelsV2Label < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities();
    o.appliedLabelPolicy =
        buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.customer = 'foo';
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2UserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2LabelDisplayHints();
    o.enabledAppSettings =
        buildGoogleAppsDriveLabelsV2LabelEnabledAppSettings();
    o.fields = buildUnnamed6();
    o.id = 'foo';
    o.labelType = 'foo';
    o.learnMoreUri = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2Lifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2LockStatus();
    o.name = 'foo';
    o.properties = buildGoogleAppsDriveLabelsV2LabelProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2UserInfo();
    o.revisionCreateTime = 'foo';
    o.revisionCreator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.revisionId = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities();
  }
  buildCounterGoogleAppsDriveLabelsV2Label--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Label(api.GoogleAppsDriveLabelsV2Label o) {
  buildCounterGoogleAppsDriveLabelsV2Label++;
  if (buildCounterGoogleAppsDriveLabelsV2Label < 3) {
    checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(
      o.appliedCapabilities!,
    );
    checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(o.appliedLabelPolicy!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2LabelDisplayHints(o.displayHints!);
    checkGoogleAppsDriveLabelsV2LabelEnabledAppSettings(o.enabledAppSettings!);
    checkUnnamed6(o.fields!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.labelType!, unittest.equals('foo'));
    unittest.expect(o.learnMoreUri!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2Lifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2LockStatus(o.lockStatus!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2LabelProperties(o.properties!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.publisher!);
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.revisionCreator!);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(o.schemaCapabilities!);
  }
  buildCounterGoogleAppsDriveLabelsV2Label--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities
buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities < 3) {
    o.canApply = true;
    o.canRead = true;
    o.canRemove = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities < 3) {
    unittest.expect(o.canApply!, unittest.isTrue);
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canRemove!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy = 0;
api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy
buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy() {
  final o = api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy < 3) {
    o.copyMode = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(
  api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy < 3) {
    unittest.expect(o.copyMode!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints = 0;
api.GoogleAppsDriveLabelsV2LabelDisplayHints
buildGoogleAppsDriveLabelsV2LabelDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2LabelDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.priority = 'foo';
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelDisplayHints(
  api.GoogleAppsDriveLabelsV2LabelDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.priority!, unittest.equals('foo'));
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelDisplayHints--;
}

core.List<api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp>
buildUnnamed7() => [
  buildGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(),
  buildGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(),
];

void checkUnnamed7(
  core.List<api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(o[0]);
  checkGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings = 0;
api.GoogleAppsDriveLabelsV2LabelEnabledAppSettings
buildGoogleAppsDriveLabelsV2LabelEnabledAppSettings() {
  final o = api.GoogleAppsDriveLabelsV2LabelEnabledAppSettings();
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings < 3) {
    o.enabledApps = buildUnnamed7();
  }
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelEnabledAppSettings(
  api.GoogleAppsDriveLabelsV2LabelEnabledAppSettings o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings < 3) {
    checkUnnamed7(o.enabledApps!);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettings--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp =
    0;
api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp
buildGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp() {
  final o = api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp();
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp <
      3) {
    o.app = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(
  api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp <
      3) {
    unittest.expect(o.app!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelLimits = 0;
api.GoogleAppsDriveLabelsV2LabelLimits
buildGoogleAppsDriveLabelsV2LabelLimits() {
  final o = api.GoogleAppsDriveLabelsV2LabelLimits();
  buildCounterGoogleAppsDriveLabelsV2LabelLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLimits < 3) {
    o.fieldLimits = buildGoogleAppsDriveLabelsV2FieldLimits();
    o.maxDeletedFields = 42;
    o.maxDescriptionLength = 42;
    o.maxDraftRevisions = 42;
    o.maxFields = 42;
    o.maxTitleLength = 42;
    o.name = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelLimits(
  api.GoogleAppsDriveLabelsV2LabelLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLimits < 3) {
    checkGoogleAppsDriveLabelsV2FieldLimits(o.fieldLimits!);
    unittest.expect(o.maxDeletedFields!, unittest.equals(42));
    unittest.expect(o.maxDescriptionLength!, unittest.equals(42));
    unittest.expect(o.maxDraftRevisions!, unittest.equals(42));
    unittest.expect(o.maxFields!, unittest.equals(42));
    unittest.expect(o.maxTitleLength!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelLock = 0;
api.GoogleAppsDriveLabelsV2LabelLock buildGoogleAppsDriveLabelsV2LabelLock() {
  final o = api.GoogleAppsDriveLabelsV2LabelLock();
  buildCounterGoogleAppsDriveLabelsV2LabelLock++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLock < 3) {
    o.capabilities = buildGoogleAppsDriveLabelsV2LabelLockCapabilities();
    o.choiceId = 'foo';
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2UserInfo();
    o.deleteTime = 'foo';
    o.fieldId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLock--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelLock(
  api.GoogleAppsDriveLabelsV2LabelLock o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelLock++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLock < 3) {
    checkGoogleAppsDriveLabelsV2LabelLockCapabilities(o.capabilities!);
    unittest.expect(o.choiceId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2UserInfo(o.creator!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLock--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities = 0;
api.GoogleAppsDriveLabelsV2LabelLockCapabilities
buildGoogleAppsDriveLabelsV2LabelLockCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2LabelLockCapabilities();
  buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities < 3) {
    o.canViewPolicy = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelLockCapabilities(
  api.GoogleAppsDriveLabelsV2LabelLockCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities < 3) {
    unittest.expect(o.canViewPolicy!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelLockCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelPermission = 0;
api.GoogleAppsDriveLabelsV2LabelPermission
buildGoogleAppsDriveLabelsV2LabelPermission() {
  final o = api.GoogleAppsDriveLabelsV2LabelPermission();
  buildCounterGoogleAppsDriveLabelsV2LabelPermission++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelPermission < 3) {
    o.audience = 'foo';
    o.email = 'foo';
    o.group = 'foo';
    o.name = 'foo';
    o.person = 'foo';
    o.role = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelPermission--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelPermission(
  api.GoogleAppsDriveLabelsV2LabelPermission o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelPermission++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelPermission < 3) {
    unittest.expect(o.audience!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.person!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelPermission--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelProperties = 0;
api.GoogleAppsDriveLabelsV2LabelProperties
buildGoogleAppsDriveLabelsV2LabelProperties() {
  final o = api.GoogleAppsDriveLabelsV2LabelProperties();
  buildCounterGoogleAppsDriveLabelsV2LabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelProperties < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2LabelProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelProperties(
  api.GoogleAppsDriveLabelsV2LabelProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelProperties < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2LabelProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities
buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LabelSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2Lifecycle = 0;
api.GoogleAppsDriveLabelsV2Lifecycle buildGoogleAppsDriveLabelsV2Lifecycle() {
  final o = api.GoogleAppsDriveLabelsV2Lifecycle();
  buildCounterGoogleAppsDriveLabelsV2Lifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2Lifecycle < 3) {
    o.disabledPolicy = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
    o.hasUnpublishedChanges = true;
    o.state = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2Lifecycle--;
  return o;
}

void checkGoogleAppsDriveLabelsV2Lifecycle(
  api.GoogleAppsDriveLabelsV2Lifecycle o,
) {
  buildCounterGoogleAppsDriveLabelsV2Lifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2Lifecycle < 3) {
    checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.hasUnpublishedChanges!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2Lifecycle--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy = 0;
api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy
buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy() {
  final o = api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy < 3) {
    o.hideInSearch = true;
    o.showInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(
  api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy o,
) {
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy < 3) {
    unittest.expect(o.hideInSearch!, unittest.isTrue);
    unittest.expect(o.showInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LifecycleDisabledPolicy--;
}

core.List<api.GoogleAppsDriveLabelsV2LabelLock> buildUnnamed8() => [
  buildGoogleAppsDriveLabelsV2LabelLock(),
  buildGoogleAppsDriveLabelsV2LabelLock(),
];

void checkUnnamed8(core.List<api.GoogleAppsDriveLabelsV2LabelLock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2LabelLock(o[0]);
  checkGoogleAppsDriveLabelsV2LabelLock(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse = 0;
api.GoogleAppsDriveLabelsV2ListLabelLocksResponse
buildGoogleAppsDriveLabelsV2ListLabelLocksResponse() {
  final o = api.GoogleAppsDriveLabelsV2ListLabelLocksResponse();
  buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse < 3) {
    o.labelLocks = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2ListLabelLocksResponse(
  api.GoogleAppsDriveLabelsV2ListLabelLocksResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse < 3) {
    checkUnnamed8(o.labelLocks!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelLocksResponse--;
}

core.List<api.GoogleAppsDriveLabelsV2LabelPermission> buildUnnamed9() => [
  buildGoogleAppsDriveLabelsV2LabelPermission(),
  buildGoogleAppsDriveLabelsV2LabelPermission(),
];

void checkUnnamed9(core.List<api.GoogleAppsDriveLabelsV2LabelPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2LabelPermission(o[0]);
  checkGoogleAppsDriveLabelsV2LabelPermission(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse = 0;
api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse
buildGoogleAppsDriveLabelsV2ListLabelPermissionsResponse() {
  final o = api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse();
  buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse < 3) {
    o.labelPermissions = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(
  api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse < 3) {
    checkUnnamed9(o.labelPermissions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelPermissionsResponse--;
}

core.List<api.GoogleAppsDriveLabelsV2Label> buildUnnamed10() => [
  buildGoogleAppsDriveLabelsV2Label(),
  buildGoogleAppsDriveLabelsV2Label(),
];

void checkUnnamed10(core.List<api.GoogleAppsDriveLabelsV2Label> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2Label(o[0]);
  checkGoogleAppsDriveLabelsV2Label(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse = 0;
api.GoogleAppsDriveLabelsV2ListLabelsResponse
buildGoogleAppsDriveLabelsV2ListLabelsResponse() {
  final o = api.GoogleAppsDriveLabelsV2ListLabelsResponse();
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse < 3) {
    o.labels = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2ListLabelsResponse(
  api.GoogleAppsDriveLabelsV2ListLabelsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse < 3) {
    checkUnnamed10(o.labels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2ListLabelsResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2ListLimits = 0;
api.GoogleAppsDriveLabelsV2ListLimits buildGoogleAppsDriveLabelsV2ListLimits() {
  final o = api.GoogleAppsDriveLabelsV2ListLimits();
  buildCounterGoogleAppsDriveLabelsV2ListLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLimits < 3) {
    o.maxEntries = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2ListLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2ListLimits(
  api.GoogleAppsDriveLabelsV2ListLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2ListLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2ListLimits < 3) {
    unittest.expect(o.maxEntries!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2ListLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LockStatus = 0;
api.GoogleAppsDriveLabelsV2LockStatus buildGoogleAppsDriveLabelsV2LockStatus() {
  final o = api.GoogleAppsDriveLabelsV2LockStatus();
  buildCounterGoogleAppsDriveLabelsV2LockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2LockStatus < 3) {
    o.locked = true;
  }
  buildCounterGoogleAppsDriveLabelsV2LockStatus--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LockStatus(
  api.GoogleAppsDriveLabelsV2LockStatus o,
) {
  buildCounterGoogleAppsDriveLabelsV2LockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2LockStatus < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2LockStatus--;
}

core.int buildCounterGoogleAppsDriveLabelsV2LongTextLimits = 0;
api.GoogleAppsDriveLabelsV2LongTextLimits
buildGoogleAppsDriveLabelsV2LongTextLimits() {
  final o = api.GoogleAppsDriveLabelsV2LongTextLimits();
  buildCounterGoogleAppsDriveLabelsV2LongTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2LongTextLimits < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2LongTextLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2LongTextLimits(
  api.GoogleAppsDriveLabelsV2LongTextLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2LongTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2LongTextLimits < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2LongTextLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest = 0;
api.GoogleAppsDriveLabelsV2PublishLabelRequest
buildGoogleAppsDriveLabelsV2PublishLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2PublishLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest < 3) {
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2WriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2PublishLabelRequest(
  api.GoogleAppsDriveLabelsV2PublishLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2WriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2PublishLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2SelectionLimits = 0;
api.GoogleAppsDriveLabelsV2SelectionLimits
buildGoogleAppsDriveLabelsV2SelectionLimits() {
  final o = api.GoogleAppsDriveLabelsV2SelectionLimits();
  buildCounterGoogleAppsDriveLabelsV2SelectionLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2SelectionLimits < 3) {
    o.listLimits = buildGoogleAppsDriveLabelsV2ListLimits();
    o.maxChoices = 42;
    o.maxDeletedChoices = 42;
    o.maxDisplayNameLength = 42;
    o.maxIdLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2SelectionLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2SelectionLimits(
  api.GoogleAppsDriveLabelsV2SelectionLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2SelectionLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2SelectionLimits < 3) {
    checkGoogleAppsDriveLabelsV2ListLimits(o.listLimits!);
    unittest.expect(o.maxChoices!, unittest.equals(42));
    unittest.expect(o.maxDeletedChoices!, unittest.equals(42));
    unittest.expect(o.maxDisplayNameLength!, unittest.equals(42));
    unittest.expect(o.maxIdLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2SelectionLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2TextLimits = 0;
api.GoogleAppsDriveLabelsV2TextLimits buildGoogleAppsDriveLabelsV2TextLimits() {
  final o = api.GoogleAppsDriveLabelsV2TextLimits();
  buildCounterGoogleAppsDriveLabelsV2TextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2TextLimits < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2TextLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2TextLimits(
  api.GoogleAppsDriveLabelsV2TextLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2TextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2TextLimits < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2TextLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest = 0;
api.GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest
buildGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest() {
  final o = api.GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest();
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest < 3) {
    o.copyMode = 'foo';
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.view = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest(
  api.GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest < 3) {
    unittest.expect(o.copyMode!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest = 0;
api.GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest
buildGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest() {
  final o = api.GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest();
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest <
      3) {
    o.enabledAppSettings =
        buildGoogleAppsDriveLabelsV2LabelEnabledAppSettings();
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.view = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest(
  api.GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest <
      3) {
    checkGoogleAppsDriveLabelsV2LabelEnabledAppSettings(o.enabledAppSettings!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest = 0;
api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest
buildGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest() {
  final o = api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest();
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest < 3) {
    o.labelPermission = buildGoogleAppsDriveLabelsV2LabelPermission();
    o.parent = 'foo';
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(
  api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest < 3) {
    checkGoogleAppsDriveLabelsV2LabelPermission(o.labelPermission!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UserCapabilities = 0;
api.GoogleAppsDriveLabelsV2UserCapabilities
buildGoogleAppsDriveLabelsV2UserCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2UserCapabilities();
  buildCounterGoogleAppsDriveLabelsV2UserCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2UserCapabilities < 3) {
    o.canAccessLabelManager = true;
    o.canAdministrateLabels = true;
    o.canCreateAdminLabels = true;
    o.canCreateSharedLabels = true;
    o.name = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2UserCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UserCapabilities(
  api.GoogleAppsDriveLabelsV2UserCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2UserCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2UserCapabilities < 3) {
    unittest.expect(o.canAccessLabelManager!, unittest.isTrue);
    unittest.expect(o.canAdministrateLabels!, unittest.isTrue);
    unittest.expect(o.canCreateAdminLabels!, unittest.isTrue);
    unittest.expect(o.canCreateSharedLabels!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2UserCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UserInfo = 0;
api.GoogleAppsDriveLabelsV2UserInfo buildGoogleAppsDriveLabelsV2UserInfo() {
  final o = api.GoogleAppsDriveLabelsV2UserInfo();
  buildCounterGoogleAppsDriveLabelsV2UserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2UserInfo < 3) {
    o.person = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2UserInfo--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UserInfo(
  api.GoogleAppsDriveLabelsV2UserInfo o,
) {
  buildCounterGoogleAppsDriveLabelsV2UserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2UserInfo < 3) {
    unittest.expect(o.person!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2UserInfo--;
}

core.int buildCounterGoogleAppsDriveLabelsV2UserLimits = 0;
api.GoogleAppsDriveLabelsV2UserLimits buildGoogleAppsDriveLabelsV2UserLimits() {
  final o = api.GoogleAppsDriveLabelsV2UserLimits();
  buildCounterGoogleAppsDriveLabelsV2UserLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2UserLimits < 3) {
    o.listLimits = buildGoogleAppsDriveLabelsV2ListLimits();
  }
  buildCounterGoogleAppsDriveLabelsV2UserLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2UserLimits(
  api.GoogleAppsDriveLabelsV2UserLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2UserLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2UserLimits < 3) {
    checkGoogleAppsDriveLabelsV2ListLimits(o.listLimits!);
  }
  buildCounterGoogleAppsDriveLabelsV2UserLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2WriteControl = 0;
api.GoogleAppsDriveLabelsV2WriteControl
buildGoogleAppsDriveLabelsV2WriteControl() {
  final o = api.GoogleAppsDriveLabelsV2WriteControl();
  buildCounterGoogleAppsDriveLabelsV2WriteControl++;
  if (buildCounterGoogleAppsDriveLabelsV2WriteControl < 3) {
    o.requiredRevisionId = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2WriteControl--;
  return o;
}

void checkGoogleAppsDriveLabelsV2WriteControl(
  api.GoogleAppsDriveLabelsV2WriteControl o,
) {
  buildCounterGoogleAppsDriveLabelsV2WriteControl++;
  if (buildCounterGoogleAppsDriveLabelsV2WriteControl < 3) {
    unittest.expect(o.requiredRevisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2WriteControl--;
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

core.int buildCounterGoogleTypeColor = 0;
api.GoogleTypeColor buildGoogleTypeColor() {
  final o = api.GoogleTypeColor();
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterGoogleTypeColor--;
  return o;
}

void checkGoogleTypeColor(api.GoogleTypeColor o) {
  buildCounterGoogleTypeColor++;
  if (buildCounterGoogleTypeColor < 3) {
    unittest.expect(o.alpha!, unittest.equals(42.0));
    unittest.expect(o.blue!, unittest.equals(42.0));
    unittest.expect(o.green!, unittest.equals(42.0));
    unittest.expect(o.red!, unittest.equals(42.0));
  }
  buildCounterGoogleTypeColor--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterGoogleTypeDate--;
}

void main() {
  unittest.group('obj-schema-GoogleAppsDriveLabelsV2BadgeColors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2BadgeColors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2BadgeColors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2BadgeColors(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2BadgeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2BadgeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2BadgeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2BadgeConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2DateLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2DateLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2DateLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2DateLimits(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeleteLabelPermissionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeleteLabelPermissionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestCreateSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestDisableSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestEnableSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateFieldTypeRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseCreateSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseDisableSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseEnableSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateFieldTypeResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2DisableLabelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2DisableLabelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2DisableLabelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2DisableLabelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2EnableLabelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2EnableLabelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2EnableLabelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2EnableLabelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Field', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Field();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Field.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2Field(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2FieldAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2FieldAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2FieldAppliedCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldDateOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldDateOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldDateOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldDateOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldDisplayHints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldDisplayHints(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldIntegerOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldIntegerOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldIntegerOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldIntegerOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldListOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldListOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldListOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldListOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2FieldSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2FieldSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2FieldSchemaCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldSelectionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldSelectionOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldSelectionOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoice.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceAppliedCapabilities(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceDisplayHints(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceProperties(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2FieldSelectionOptionsChoiceSchemaCapabilities(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldTextOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldTextOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldTextOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldTextOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2FieldUserOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2FieldUserOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2FieldUserOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2FieldUserOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2IntegerLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2IntegerLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2IntegerLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2IntegerLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Label', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Label();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Label.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2Label(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LabelAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2LabelAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2LabelAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2LabelAppliedCapabilities(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2LabelAppliedLabelPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2LabelAppliedLabelPolicy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelDisplayHints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelDisplayHints(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LabelEnabledAppSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2LabelEnabledAppSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2LabelEnabledAppSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2LabelEnabledAppSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2LabelEnabledAppSettingsEnabledApp(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelLock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelLock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelLock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelLock(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelLockCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelLockCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelLockCapabilities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelLockCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LabelProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LabelProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LabelProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LabelProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LabelSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2LabelSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2LabelSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2LabelSchemaCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2Lifecycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2Lifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2Lifecycle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2Lifecycle(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2LifecycleDisabledPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2LifecycleDisabledPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2LifecycleDisabledPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2LifecycleDisabledPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2ListLabelLocksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2ListLabelLocksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2ListLabelLocksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2ListLabelLocksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2ListLabelPermissionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2ListLabelPermissionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2ListLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2ListLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2ListLabelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2ListLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2ListLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2ListLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2ListLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2ListLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LockStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LockStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LockStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LockStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2LongTextLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2LongTextLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2LongTextLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2LongTextLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2PublishLabelRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2PublishLabelRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2PublishLabelRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2PublishLabelRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2SelectionLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2SelectionLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2SelectionLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2SelectionLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2TextLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2TextLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2TextLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2TextLimits(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleAppsDriveLabelsV2UpdateLabelPermissionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleAppsDriveLabelsV2UpdateLabelPermissionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2UserCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2UserCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2UserCapabilities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2UserCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2UserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2UserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2UserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2UserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2UserLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2UserLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2UserLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2UserLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2WriteControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2WriteControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2WriteControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2WriteControl(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeColor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeColor(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('resource-LabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2Label();
      final arg_languageCode = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2Label.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2Label(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v2/labels'),
          );
          pathOffset += 9;

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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        languageCode: arg_languageCode,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_name = 'foo';
      final arg_useAdminAccess = true;
      final arg_writeControl_requiredRevisionId = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['writeControl.requiredRevisionId']!.first,
            unittest.equals(arg_writeControl_requiredRevisionId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        useAdminAccess: arg_useAdminAccess,
        writeControl_requiredRevisionId: arg_writeControl_requiredRevisionId,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delta', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2DeltaUpdateLabelRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delta(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2DeltaUpdateLabelResponse(
        response as api.GoogleAppsDriveLabelsV2DeltaUpdateLabelResponse,
      );
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2DisableLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2DisableLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2DisableLabelRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2EnableLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2EnableLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2EnableLabelRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_useAdminAccess = true;
      final arg_view = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        useAdminAccess: arg_useAdminAccess,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_customer = 'foo';
      final arg_languageCode = 'foo';
      final arg_minimumRole = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_publishedOnly = true;
      final arg_useAdminAccess = true;
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v2/labels'),
          );
          pathOffset += 9;

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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['minimumRole']!.first,
            unittest.equals(arg_minimumRole),
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
            queryMap['publishedOnly']!.first,
            unittest.equals('$arg_publishedOnly'),
          );
          unittest.expect(
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2ListLabelsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        customer: arg_customer,
        languageCode: arg_languageCode,
        minimumRole: arg_minimumRole,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        publishedOnly: arg_publishedOnly,
        useAdminAccess: arg_useAdminAccess,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2ListLabelsResponse(
        response as api.GoogleAppsDriveLabelsV2ListLabelsResponse,
      );
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2PublishLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2PublishLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2PublishLabelRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--updateLabelCopyMode', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request =
          buildGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2UpdateLabelCopyModeRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLabelCopyMode(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--updateLabelEnabledAppSettings', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request =
          buildGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2UpdateLabelEnabledAppSettingsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleAppsDriveLabelsV2Label());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLabelEnabledAppSettings(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2Label(
        response as api.GoogleAppsDriveLabelsV2Label,
      );
    });

    unittest.test('method--updatePermissions', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2LabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2LabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2LabelPermission(obj);

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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2LabelPermission(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updatePermissions(
        arg_request,
        arg_parent,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2LabelPermission(
        response as api.GoogleAppsDriveLabelsV2LabelPermission,
      );
    });
  });

  unittest.group('resource-LabelsLocksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.locks;
      final arg_parent = 'foo';
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2ListLabelLocksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2ListLabelLocksResponse(
        response as api.GoogleAppsDriveLabelsV2ListLabelLocksResponse,
      );
    });
  });

  unittest.group('resource-LabelsPermissionsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(
        response
            as api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_request = buildGoogleAppsDriveLabelsV2LabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2LabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2LabelPermission(obj);

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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2LabelPermission(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2LabelPermission(
        response as api.GoogleAppsDriveLabelsV2LabelPermission,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_name = 'foo';
      final arg_useAdminAccess = true;
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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_useAdminAccess = true;
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(
        response as api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse,
      );
    });
  });

  unittest.group('resource-LabelsRevisionsResource', () {
    unittest.test('method--updatePermissions', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions;
      final arg_request = buildGoogleAppsDriveLabelsV2LabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2LabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2LabelPermission(obj);

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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2LabelPermission(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updatePermissions(
        arg_request,
        arg_parent,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2LabelPermission(
        response as api.GoogleAppsDriveLabelsV2LabelPermission,
      );
    });
  });

  unittest.group('resource-LabelsRevisionsLocksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.locks;
      final arg_parent = 'foo';
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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2ListLabelLocksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2ListLabelLocksResponse(
        response as api.GoogleAppsDriveLabelsV2ListLabelLocksResponse,
      );
    });
  });

  unittest.group('resource-LabelsRevisionsPermissionsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2BatchDeleteLabelPermissionsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj =
              api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>,
              );
          checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsRequest(obj);

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
            unittest.equals('v2/'),
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse(
        response
            as api.GoogleAppsDriveLabelsV2BatchUpdateLabelPermissionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_request = buildGoogleAppsDriveLabelsV2LabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2LabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2LabelPermission(obj);

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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2LabelPermission(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2LabelPermission(
        response as api.GoogleAppsDriveLabelsV2LabelPermission,
      );
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_name = 'foo';
      final arg_useAdminAccess = true;
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
            unittest.equals('v2/'),
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
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleProtobufEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_useAdminAccess = true;
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
            unittest.equals('v2/'),
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
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['useAdminAccess']!.first,
            unittest.equals('$arg_useAdminAccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        useAdminAccess: arg_useAdminAccess,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2ListLabelPermissionsResponse(
        response as api.GoogleAppsDriveLabelsV2ListLabelPermissionsResponse,
      );
    });
  });

  unittest.group('resource-LimitsResource', () {
    unittest.test('method--getLabel', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).limits;
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v2/limits/label'),
          );
          pathOffset += 15;

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
          unittest.expect(queryMap['name']!.first, unittest.equals(arg_name));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2LabelLimits(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getLabel(name: arg_name, $fields: arg_$fields);
      checkGoogleAppsDriveLabelsV2LabelLimits(
        response as api.GoogleAppsDriveLabelsV2LabelLimits,
      );
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--getCapabilities', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).users;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            unittest.equals('v2/'),
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2UserCapabilities(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getCapabilities(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2UserCapabilities(
        response as api.GoogleAppsDriveLabelsV2UserCapabilities,
      );
    });
  });
}
