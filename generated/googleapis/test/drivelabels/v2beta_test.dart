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

import 'package:googleapis/drivelabels/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleAppsDriveLabelsV2betaBadgeColors = 0;
api.GoogleAppsDriveLabelsV2betaBadgeColors
buildGoogleAppsDriveLabelsV2betaBadgeColors() {
  final o = api.GoogleAppsDriveLabelsV2betaBadgeColors();
  buildCounterGoogleAppsDriveLabelsV2betaBadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBadgeColors < 3) {
    o.backgroundColor = buildGoogleTypeColor();
    o.foregroundColor = buildGoogleTypeColor();
    o.soloColor = buildGoogleTypeColor();
  }
  buildCounterGoogleAppsDriveLabelsV2betaBadgeColors--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaBadgeColors(
  api.GoogleAppsDriveLabelsV2betaBadgeColors o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaBadgeColors++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBadgeColors < 3) {
    checkGoogleTypeColor(o.backgroundColor!);
    checkGoogleTypeColor(o.foregroundColor!);
    checkGoogleTypeColor(o.soloColor!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaBadgeColors--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig = 0;
api.GoogleAppsDriveLabelsV2betaBadgeConfig
buildGoogleAppsDriveLabelsV2betaBadgeConfig() {
  final o = api.GoogleAppsDriveLabelsV2betaBadgeConfig();
  buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig < 3) {
    o.color = buildGoogleTypeColor();
    o.priorityOverride = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaBadgeConfig(
  api.GoogleAppsDriveLabelsV2betaBadgeConfig o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig < 3) {
    checkGoogleTypeColor(o.color!);
    unittest.expect(o.priorityOverride!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaBadgeConfig--;
}

core.List<api.GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest>
buildUnnamed0() => [
  buildGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(),
  buildGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(),
];

void checkUnnamed0(
  core.List<api.GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(o[0]);
  checkGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(o[1]);
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest = 0;
api.GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest
buildGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest();
  buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest <
      3) {
    o.requests = buildUnnamed0();
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest(
  api.GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest <
      3) {
    checkUnnamed0(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest>
buildUnnamed1() => [
  buildGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(),
  buildGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(),
];

void checkUnnamed1(
  core.List<api.GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(o[0]);
  checkGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(o[1]);
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest = 0;
api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest
buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest();
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest <
      3) {
    o.requests = buildUnnamed1();
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest(
  api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest <
      3) {
    checkUnnamed1(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2betaLabelPermission> buildUnnamed2() => [
  buildGoogleAppsDriveLabelsV2betaLabelPermission(),
  buildGoogleAppsDriveLabelsV2betaLabelPermission(),
];

void checkUnnamed2(
  core.List<api.GoogleAppsDriveLabelsV2betaLabelPermission> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaLabelPermission(o[0]);
  checkGoogleAppsDriveLabelsV2betaLabelPermission(o[1]);
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse = 0;
api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse
buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse();
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse <
      3) {
    o.permissions = buildUnnamed2();
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(
  api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse <
      3) {
    checkUnnamed2(o.permissions!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDateLimits = 0;
api.GoogleAppsDriveLabelsV2betaDateLimits
buildGoogleAppsDriveLabelsV2betaDateLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaDateLimits();
  buildCounterGoogleAppsDriveLabelsV2betaDateLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDateLimits < 3) {
    o.maxValue = buildGoogleTypeDate();
    o.minValue = buildGoogleTypeDate();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDateLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDateLimits(
  api.GoogleAppsDriveLabelsV2betaDateLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDateLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDateLimits < 3) {
    checkGoogleTypeDate(o.maxValue!);
    checkGoogleTypeDate(o.minValue!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDateLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest
buildGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest < 3) {
    o.name = 'foo';
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(
  api.GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest>
buildUnnamed3() => [
  buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(),
  buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(),
];

void checkUnnamed3(
  core.List<api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(o[0]);
  checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest = 0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest < 3) {
    o.languageCode = 'foo';
    o.requests = buildUnnamed3();
    o.useAdminAccess = true;
    o.view = 'foo';
    o.writeControl = buildGoogleAppsDriveLabelsV2betaWriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkUnnamed3(o.requests!);
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaWriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest <
      3) {
    o.field = buildGoogleAppsDriveLabelsV2betaField();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaField(o.field!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest <
      3) {
    o.choice = buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice();
    o.fieldId = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(o.choice!);
    unittest.expect(o.fieldId!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest <
      3) {
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest <
      3) {
    o.disabledPolicy =
        buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
    o.id = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest <
      3) {
    o.disabledPolicy =
        buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
    o.fieldId = 'foo';
    o.id = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest <
      3) {
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest <
      3) {
    o.createField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest();
    o.createSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest();
    o.deleteField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest();
    o.deleteSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
    o.disableField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest();
    o.disableSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest();
    o.enableField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest();
    o.enableSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest();
    o.updateField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
    o.updateFieldType =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest();
    o.updateLabel =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
    o.updateSelectionChoiceProperties =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest(
      o.createField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest(
      o.createSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest(
      o.deleteField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
      o.deleteSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest(
      o.disableField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest(
      o.disableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest(
      o.enableField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest(
      o.enableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
      o.updateField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest(
      o.updateFieldType!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
      o.updateLabel!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
      o.updateSelectionChoiceProperties!,
    );
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest <
      3) {
    o.id = 'foo';
    o.properties = buildGoogleAppsDriveLabelsV2betaFieldProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldProperties(o.properties!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest <
      3) {
    o.dateOptions = buildGoogleAppsDriveLabelsV2betaFieldDateOptions();
    o.id = 'foo';
    o.integerOptions = buildGoogleAppsDriveLabelsV2betaFieldIntegerOptions();
    o.selectionOptions =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptions();
    o.textOptions = buildGoogleAppsDriveLabelsV2betaFieldTextOptions();
    o.updateMask = 'foo';
    o.userOptions = buildGoogleAppsDriveLabelsV2betaFieldUserOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaFieldDateOptions(o.dateOptions!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldIntegerOptions(o.integerOptions!);
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptions(o.selectionOptions!);
    checkGoogleAppsDriveLabelsV2betaFieldTextOptions(o.textOptions!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldUserOptions(o.userOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest <
      3) {
    o.properties = buildGoogleAppsDriveLabelsV2betaLabelProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaLabelProperties(o.properties!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
    o.properties =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties();
    o.updateMask = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties(
      o.properties!,
    );
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest--;
}

core.List<api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse>
buildUnnamed4() => [
  buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(),
  buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(),
];

void checkUnnamed4(
  core.List<api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(o[0]);
  checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse = 0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse() {
  final o = api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse < 3) {
    o.responses = buildUnnamed4();
    o.updatedLabel = buildGoogleAppsDriveLabelsV2betaLabel();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse < 3) {
    checkUnnamed4(o.responses!);
    checkGoogleAppsDriveLabelsV2betaLabel(o.updatedLabel!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse <
      3) {
    o.id = 'foo';
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse <
      3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse <
      3) {
    o.fieldId = 'foo';
    o.id = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse <
      3) {
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse = 0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse() {
  final o = api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse <
      3) {
    o.createField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse();
    o.createSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse();
    o.deleteField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse();
    o.deleteSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
    o.disableField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse();
    o.disableSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse();
    o.enableField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse();
    o.enableSelectionChoice =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse();
    o.updateField =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
    o.updateFieldType =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse();
    o.updateLabel =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
    o.updateSelectionChoiceProperties =
        buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse <
      3) {
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse(
      o.createField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse(
      o.createSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse(
      o.deleteField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
      o.deleteSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse(
      o.disableField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse(
      o.disableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse(
      o.enableField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse(
      o.enableSelectionChoice!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
      o.updateField!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse(
      o.updateFieldType!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
      o.updateLabel!,
    );
    checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
      o.updateSelectionChoiceProperties!,
    );
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse <
      3) {
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse <
      3) {
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse <
      3) {}
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse =
    0;
api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse() {
  final o =
      api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse <
      3) {
    o.priority = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
  api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse <
      3) {
    unittest.expect(o.priority!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest = 0;
api.GoogleAppsDriveLabelsV2betaDisableLabelRequest
buildGoogleAppsDriveLabelsV2betaDisableLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaDisableLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest < 3) {
    o.disabledPolicy =
        buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
    o.languageCode = 'foo';
    o.updateMask = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2betaWriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaDisableLabelRequest(
  api.GoogleAppsDriveLabelsV2betaDisableLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest < 3) {
    checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2betaWriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaDisableLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest = 0;
api.GoogleAppsDriveLabelsV2betaEnableLabelRequest
buildGoogleAppsDriveLabelsV2betaEnableLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaEnableLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest < 3) {
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2betaWriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaEnableLabelRequest(
  api.GoogleAppsDriveLabelsV2betaEnableLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2betaWriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaEnableLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaField = 0;
api.GoogleAppsDriveLabelsV2betaField buildGoogleAppsDriveLabelsV2betaField() {
  final o = api.GoogleAppsDriveLabelsV2betaField();
  buildCounterGoogleAppsDriveLabelsV2betaField++;
  if (buildCounterGoogleAppsDriveLabelsV2betaField < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.dateOptions = buildGoogleAppsDriveLabelsV2betaFieldDateOptions();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2betaFieldDisplayHints();
    o.id = 'foo';
    o.integerOptions = buildGoogleAppsDriveLabelsV2betaFieldIntegerOptions();
    o.lifecycle = buildGoogleAppsDriveLabelsV2betaLifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2betaLockStatus();
    o.properties = buildGoogleAppsDriveLabelsV2betaFieldProperties();
    o.publisher = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.queryKey = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities();
    o.selectionOptions =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptions();
    o.textOptions = buildGoogleAppsDriveLabelsV2betaFieldTextOptions();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.userOptions = buildGoogleAppsDriveLabelsV2betaFieldUserOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2betaField--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaField(
  api.GoogleAppsDriveLabelsV2betaField o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaField++;
  if (buildCounterGoogleAppsDriveLabelsV2betaField < 3) {
    checkGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities(
      o.appliedCapabilities!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.creator!);
    checkGoogleAppsDriveLabelsV2betaFieldDateOptions(o.dateOptions!);
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2betaFieldDisplayHints(o.displayHints!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldIntegerOptions(o.integerOptions!);
    checkGoogleAppsDriveLabelsV2betaLifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2betaLockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2betaFieldProperties(o.properties!);
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.publisher!);
    unittest.expect(o.queryKey!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities(
      o.schemaCapabilities!,
    );
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptions(o.selectionOptions!);
    checkGoogleAppsDriveLabelsV2betaFieldTextOptions(o.textOptions!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.updater!);
    checkGoogleAppsDriveLabelsV2betaFieldUserOptions(o.userOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaField--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities
buildGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities < 3) {
    o.canRead = true;
    o.canSearch = true;
    o.canWrite = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities < 3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canWrite!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldDateOptions
buildGoogleAppsDriveLabelsV2betaFieldDateOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldDateOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions < 3) {
    o.dateFormat = 'foo';
    o.dateFormatType = 'foo';
    o.maxValue = buildGoogleTypeDate();
    o.minValue = buildGoogleTypeDate();
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldDateOptions(
  api.GoogleAppsDriveLabelsV2betaFieldDateOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions < 3) {
    unittest.expect(o.dateFormat!, unittest.equals('foo'));
    unittest.expect(o.dateFormatType!, unittest.equals('foo'));
    checkGoogleTypeDate(o.maxValue!);
    checkGoogleTypeDate(o.minValue!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldDateOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints = 0;
api.GoogleAppsDriveLabelsV2betaFieldDisplayHints
buildGoogleAppsDriveLabelsV2betaFieldDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.required = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldDisplayHints(
  api.GoogleAppsDriveLabelsV2betaFieldDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldDisplayHints--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldIntegerOptions
buildGoogleAppsDriveLabelsV2betaFieldIntegerOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldIntegerOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldIntegerOptions(
  api.GoogleAppsDriveLabelsV2betaFieldIntegerOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions < 3) {
    unittest.expect(o.maxValue!, unittest.equals('foo'));
    unittest.expect(o.minValue!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldIntegerOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldLimits = 0;
api.GoogleAppsDriveLabelsV2betaFieldLimits
buildGoogleAppsDriveLabelsV2betaFieldLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldLimits();
  buildCounterGoogleAppsDriveLabelsV2betaFieldLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldLimits < 3) {
    o.dateLimits = buildGoogleAppsDriveLabelsV2betaDateLimits();
    o.integerLimits = buildGoogleAppsDriveLabelsV2betaIntegerLimits();
    o.longTextLimits = buildGoogleAppsDriveLabelsV2betaLongTextLimits();
    o.maxDescriptionLength = 42;
    o.maxDisplayNameLength = 42;
    o.maxIdLength = 42;
    o.selectionLimits = buildGoogleAppsDriveLabelsV2betaSelectionLimits();
    o.textLimits = buildGoogleAppsDriveLabelsV2betaTextLimits();
    o.userLimits = buildGoogleAppsDriveLabelsV2betaUserLimits();
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldLimits(
  api.GoogleAppsDriveLabelsV2betaFieldLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldLimits < 3) {
    checkGoogleAppsDriveLabelsV2betaDateLimits(o.dateLimits!);
    checkGoogleAppsDriveLabelsV2betaIntegerLimits(o.integerLimits!);
    checkGoogleAppsDriveLabelsV2betaLongTextLimits(o.longTextLimits!);
    unittest.expect(o.maxDescriptionLength!, unittest.equals(42));
    unittest.expect(o.maxDisplayNameLength!, unittest.equals(42));
    unittest.expect(o.maxIdLength!, unittest.equals(42));
    checkGoogleAppsDriveLabelsV2betaSelectionLimits(o.selectionLimits!);
    checkGoogleAppsDriveLabelsV2betaTextLimits(o.textLimits!);
    checkGoogleAppsDriveLabelsV2betaUserLimits(o.userLimits!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldListOptions
buildGoogleAppsDriveLabelsV2betaFieldListOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldListOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions < 3) {
    o.maxEntries = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldListOptions(
  api.GoogleAppsDriveLabelsV2betaFieldListOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions < 3) {
    unittest.expect(o.maxEntries!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldListOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldProperties = 0;
api.GoogleAppsDriveLabelsV2betaFieldProperties
buildGoogleAppsDriveLabelsV2betaFieldProperties() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldProperties();
  buildCounterGoogleAppsDriveLabelsV2betaFieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldProperties < 3) {
    o.displayName = 'foo';
    o.insertBeforeField = 'foo';
    o.required = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldProperties(
  api.GoogleAppsDriveLabelsV2betaFieldProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldProperties < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.insertBeforeField!, unittest.equals('foo'));
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities
buildGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities--;
}

core.List<api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice>
buildUnnamed5() => [
  buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(),
  buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(),
];

void checkUnnamed5(
  core.List<api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(o[0]);
  checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptions
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldSelectionOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions < 3) {
    o.choices = buildUnnamed5();
    o.listOptions = buildGoogleAppsDriveLabelsV2betaFieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldSelectionOptions(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions < 3) {
    checkUnnamed5(o.choices!);
    checkGoogleAppsDriveLabelsV2betaFieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice = 0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.displayHints =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints();
    o.id = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2betaLifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2betaLockStatus();
    o.properties =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities();
    o.updateTime = 'foo';
    o.updater = buildGoogleAppsDriveLabelsV2betaUserInfo();
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice < 3) {
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities(
      o.appliedCapabilities!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.creator!);
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints(
      o.displayHints!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaLifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2betaLockStatus(o.lockStatus!);
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties(
      o.properties!,
    );
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.publisher!);
    checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities(
      o.schemaCapabilities!,
    );
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.updater!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities =
    0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities() {
  final o =
      api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    o.canRead = true;
    o.canSearch = true;
    o.canSelect = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities <
      3) {
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canSearch!, unittest.isTrue);
    unittest.expect(o.canSelect!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints =
    0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints() {
  final o =
      api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints <
      3) {
    o.badgeColors = buildGoogleAppsDriveLabelsV2betaBadgeColors();
    o.badgePriority = 'foo';
    o.darkBadgeColors = buildGoogleAppsDriveLabelsV2betaBadgeColors();
    o.disabled = true;
    o.hiddenInSearch = true;
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints <
      3) {
    checkGoogleAppsDriveLabelsV2betaBadgeColors(o.badgeColors!);
    unittest.expect(o.badgePriority!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaBadgeColors(o.darkBadgeColors!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties =
    0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties() {
  final o =
      api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties <
      3) {
    o.badgeConfig = buildGoogleAppsDriveLabelsV2betaBadgeConfig();
    o.description = 'foo';
    o.displayName = 'foo';
    o.insertBeforeChoice = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties <
      3) {
    checkGoogleAppsDriveLabelsV2betaBadgeConfig(o.badgeConfig!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.insertBeforeChoice!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities =
    0;
api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities
buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities() {
  final o =
      api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities--;
  return o;
}

void
checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities
  o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities <
      3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldTextOptions
buildGoogleAppsDriveLabelsV2betaFieldTextOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldTextOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldTextOptions(
  api.GoogleAppsDriveLabelsV2betaFieldTextOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldTextOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions = 0;
api.GoogleAppsDriveLabelsV2betaFieldUserOptions
buildGoogleAppsDriveLabelsV2betaFieldUserOptions() {
  final o = api.GoogleAppsDriveLabelsV2betaFieldUserOptions();
  buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions < 3) {
    o.listOptions = buildGoogleAppsDriveLabelsV2betaFieldListOptions();
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaFieldUserOptions(
  api.GoogleAppsDriveLabelsV2betaFieldUserOptions o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions++;
  if (buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions < 3) {
    checkGoogleAppsDriveLabelsV2betaFieldListOptions(o.listOptions!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaFieldUserOptions--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits = 0;
api.GoogleAppsDriveLabelsV2betaIntegerLimits
buildGoogleAppsDriveLabelsV2betaIntegerLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaIntegerLimits();
  buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits < 3) {
    o.maxValue = 'foo';
    o.minValue = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaIntegerLimits(
  api.GoogleAppsDriveLabelsV2betaIntegerLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits < 3) {
    unittest.expect(o.maxValue!, unittest.equals('foo'));
    unittest.expect(o.minValue!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaIntegerLimits--;
}

core.List<api.GoogleAppsDriveLabelsV2betaField> buildUnnamed6() => [
  buildGoogleAppsDriveLabelsV2betaField(),
  buildGoogleAppsDriveLabelsV2betaField(),
];

void checkUnnamed6(core.List<api.GoogleAppsDriveLabelsV2betaField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaField(o[0]);
  checkGoogleAppsDriveLabelsV2betaField(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabel = 0;
api.GoogleAppsDriveLabelsV2betaLabel buildGoogleAppsDriveLabelsV2betaLabel() {
  final o = api.GoogleAppsDriveLabelsV2betaLabel();
  buildCounterGoogleAppsDriveLabelsV2betaLabel++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabel < 3) {
    o.appliedCapabilities =
        buildGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities();
    o.appliedLabelPolicy =
        buildGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy();
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.customer = 'foo';
    o.disableTime = 'foo';
    o.disabler = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.displayHints = buildGoogleAppsDriveLabelsV2betaLabelDisplayHints();
    o.enabledAppSettings =
        buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings();
    o.fields = buildUnnamed6();
    o.id = 'foo';
    o.labelType = 'foo';
    o.learnMoreUri = 'foo';
    o.lifecycle = buildGoogleAppsDriveLabelsV2betaLifecycle();
    o.lockStatus = buildGoogleAppsDriveLabelsV2betaLockStatus();
    o.name = 'foo';
    o.properties = buildGoogleAppsDriveLabelsV2betaLabelProperties();
    o.publishTime = 'foo';
    o.publisher = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.revisionCreateTime = 'foo';
    o.revisionCreator = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.revisionId = 'foo';
    o.schemaCapabilities =
        buildGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities();
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabel--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabel(
  api.GoogleAppsDriveLabelsV2betaLabel o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabel++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabel < 3) {
    checkGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities(
      o.appliedCapabilities!,
    );
    checkGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy(
      o.appliedLabelPolicy!,
    );
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.creator!);
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.disableTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.disabler!);
    checkGoogleAppsDriveLabelsV2betaLabelDisplayHints(o.displayHints!);
    checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings(
      o.enabledAppSettings!,
    );
    checkUnnamed6(o.fields!);
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.labelType!, unittest.equals('foo'));
    unittest.expect(o.learnMoreUri!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaLifecycle(o.lifecycle!);
    checkGoogleAppsDriveLabelsV2betaLockStatus(o.lockStatus!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaLabelProperties(o.properties!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.publisher!);
    unittest.expect(o.revisionCreateTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.revisionCreator!);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities(
      o.schemaCapabilities!,
    );
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabel--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities
buildGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities < 3) {
    o.canApply = true;
    o.canRead = true;
    o.canRemove = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities(
  api.GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities < 3) {
    unittest.expect(o.canApply!, unittest.isTrue);
    unittest.expect(o.canRead!, unittest.isTrue);
    unittest.expect(o.canRemove!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy = 0;
api.GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy
buildGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy();
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy < 3) {
    o.copyMode = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy(
  api.GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy < 3) {
    unittest.expect(o.copyMode!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints = 0;
api.GoogleAppsDriveLabelsV2betaLabelDisplayHints
buildGoogleAppsDriveLabelsV2betaLabelDisplayHints() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelDisplayHints();
  buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints < 3) {
    o.disabled = true;
    o.hiddenInSearch = true;
    o.priority = 'foo';
    o.shownInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelDisplayHints(
  api.GoogleAppsDriveLabelsV2betaLabelDisplayHints o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(o.hiddenInSearch!, unittest.isTrue);
    unittest.expect(o.priority!, unittest.equals('foo'));
    unittest.expect(o.shownInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelDisplayHints--;
}

core.List<api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp>
buildUnnamed7() => [
  buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(),
  buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(),
];

void checkUnnamed7(
  core.List<api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(o[0]);
  checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings = 0;
api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings
buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings();
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings < 3) {
    o.enabledApps = buildUnnamed7();
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings(
  api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings < 3) {
    checkUnnamed7(o.enabledApps!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp = 0;
api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp
buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp();
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp <
      3) {
    o.app = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(
  api.GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp <
      3) {
    unittest.expect(o.app!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelLimits = 0;
api.GoogleAppsDriveLabelsV2betaLabelLimits
buildGoogleAppsDriveLabelsV2betaLabelLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelLimits();
  buildCounterGoogleAppsDriveLabelsV2betaLabelLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLimits < 3) {
    o.fieldLimits = buildGoogleAppsDriveLabelsV2betaFieldLimits();
    o.maxDeletedFields = 42;
    o.maxDescriptionLength = 42;
    o.maxDraftRevisions = 42;
    o.maxFields = 42;
    o.maxTitleLength = 42;
    o.name = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelLimits(
  api.GoogleAppsDriveLabelsV2betaLabelLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLimits < 3) {
    checkGoogleAppsDriveLabelsV2betaFieldLimits(o.fieldLimits!);
    unittest.expect(o.maxDeletedFields!, unittest.equals(42));
    unittest.expect(o.maxDescriptionLength!, unittest.equals(42));
    unittest.expect(o.maxDraftRevisions!, unittest.equals(42));
    unittest.expect(o.maxFields!, unittest.equals(42));
    unittest.expect(o.maxTitleLength!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelLock = 0;
api.GoogleAppsDriveLabelsV2betaLabelLock
buildGoogleAppsDriveLabelsV2betaLabelLock() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelLock();
  buildCounterGoogleAppsDriveLabelsV2betaLabelLock++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLock < 3) {
    o.capabilities = buildGoogleAppsDriveLabelsV2betaLabelLockCapabilities();
    o.choiceId = 'foo';
    o.createTime = 'foo';
    o.creator = buildGoogleAppsDriveLabelsV2betaUserInfo();
    o.deleteTime = 'foo';
    o.fieldId = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLock--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelLock(
  api.GoogleAppsDriveLabelsV2betaLabelLock o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelLock++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLock < 3) {
    checkGoogleAppsDriveLabelsV2betaLabelLockCapabilities(o.capabilities!);
    unittest.expect(o.choiceId!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkGoogleAppsDriveLabelsV2betaUserInfo(o.creator!);
    unittest.expect(o.deleteTime!, unittest.equals('foo'));
    unittest.expect(o.fieldId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLock--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaLabelLockCapabilities
buildGoogleAppsDriveLabelsV2betaLabelLockCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelLockCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities < 3) {
    o.canViewPolicy = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelLockCapabilities(
  api.GoogleAppsDriveLabelsV2betaLabelLockCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities < 3) {
    unittest.expect(o.canViewPolicy!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelLockCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelPermission = 0;
api.GoogleAppsDriveLabelsV2betaLabelPermission
buildGoogleAppsDriveLabelsV2betaLabelPermission() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelPermission();
  buildCounterGoogleAppsDriveLabelsV2betaLabelPermission++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelPermission < 3) {
    o.audience = 'foo';
    o.email = 'foo';
    o.group = 'foo';
    o.name = 'foo';
    o.person = 'foo';
    o.role = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelPermission--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelPermission(
  api.GoogleAppsDriveLabelsV2betaLabelPermission o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelPermission++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelPermission < 3) {
    unittest.expect(o.audience!, unittest.equals('foo'));
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.person!, unittest.equals('foo'));
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelPermission--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelProperties = 0;
api.GoogleAppsDriveLabelsV2betaLabelProperties
buildGoogleAppsDriveLabelsV2betaLabelProperties() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelProperties();
  buildCounterGoogleAppsDriveLabelsV2betaLabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelProperties < 3) {
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelProperties--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelProperties(
  api.GoogleAppsDriveLabelsV2betaLabelProperties o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelProperties++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelProperties < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelProperties--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities
buildGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities < 3) {
    o.canDelete = true;
    o.canDisable = true;
    o.canEnable = true;
    o.canUpdate = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities(
  api.GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities < 3) {
    unittest.expect(o.canDelete!, unittest.isTrue);
    unittest.expect(o.canDisable!, unittest.isTrue);
    unittest.expect(o.canEnable!, unittest.isTrue);
    unittest.expect(o.canUpdate!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLifecycle = 0;
api.GoogleAppsDriveLabelsV2betaLifecycle
buildGoogleAppsDriveLabelsV2betaLifecycle() {
  final o = api.GoogleAppsDriveLabelsV2betaLifecycle();
  buildCounterGoogleAppsDriveLabelsV2betaLifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLifecycle < 3) {
    o.disabledPolicy =
        buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
    o.hasUnpublishedChanges = true;
    o.state = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaLifecycle--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLifecycle(
  api.GoogleAppsDriveLabelsV2betaLifecycle o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLifecycle++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLifecycle < 3) {
    checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(o.disabledPolicy!);
    unittest.expect(o.hasUnpublishedChanges!, unittest.isTrue);
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLifecycle--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy = 0;
api.GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy
buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy() {
  final o = api.GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
  buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy < 3) {
    o.hideInSearch = true;
    o.showInApply = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(
  api.GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy < 3) {
    unittest.expect(o.hideInSearch!, unittest.isTrue);
    unittest.expect(o.showInApply!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy--;
}

core.List<api.GoogleAppsDriveLabelsV2betaLabelLock> buildUnnamed8() => [
  buildGoogleAppsDriveLabelsV2betaLabelLock(),
  buildGoogleAppsDriveLabelsV2betaLabelLock(),
];

void checkUnnamed8(core.List<api.GoogleAppsDriveLabelsV2betaLabelLock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaLabelLock(o[0]);
  checkGoogleAppsDriveLabelsV2betaLabelLock(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse = 0;
api.GoogleAppsDriveLabelsV2betaListLabelLocksResponse
buildGoogleAppsDriveLabelsV2betaListLabelLocksResponse() {
  final o = api.GoogleAppsDriveLabelsV2betaListLabelLocksResponse();
  buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse < 3) {
    o.labelLocks = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaListLabelLocksResponse(
  api.GoogleAppsDriveLabelsV2betaListLabelLocksResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse < 3) {
    checkUnnamed8(o.labelLocks!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelLocksResponse--;
}

core.List<api.GoogleAppsDriveLabelsV2betaLabelPermission> buildUnnamed9() => [
  buildGoogleAppsDriveLabelsV2betaLabelPermission(),
  buildGoogleAppsDriveLabelsV2betaLabelPermission(),
];

void checkUnnamed9(
  core.List<api.GoogleAppsDriveLabelsV2betaLabelPermission> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaLabelPermission(o[0]);
  checkGoogleAppsDriveLabelsV2betaLabelPermission(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse =
    0;
api.GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse
buildGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse() {
  final o = api.GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse();
  buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse < 3) {
    o.labelPermissions = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(
  api.GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse < 3) {
    checkUnnamed9(o.labelPermissions!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse--;
}

core.List<api.GoogleAppsDriveLabelsV2betaLabel> buildUnnamed10() => [
  buildGoogleAppsDriveLabelsV2betaLabel(),
  buildGoogleAppsDriveLabelsV2betaLabel(),
];

void checkUnnamed10(core.List<api.GoogleAppsDriveLabelsV2betaLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsDriveLabelsV2betaLabel(o[0]);
  checkGoogleAppsDriveLabelsV2betaLabel(o[1]);
}

core.int buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse = 0;
api.GoogleAppsDriveLabelsV2betaListLabelsResponse
buildGoogleAppsDriveLabelsV2betaListLabelsResponse() {
  final o = api.GoogleAppsDriveLabelsV2betaListLabelsResponse();
  buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse < 3) {
    o.labels = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaListLabelsResponse(
  api.GoogleAppsDriveLabelsV2betaListLabelsResponse o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse < 3) {
    checkUnnamed10(o.labels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLabelsResponse--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaListLimits = 0;
api.GoogleAppsDriveLabelsV2betaListLimits
buildGoogleAppsDriveLabelsV2betaListLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaListLimits();
  buildCounterGoogleAppsDriveLabelsV2betaListLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLimits < 3) {
    o.maxEntries = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaListLimits(
  api.GoogleAppsDriveLabelsV2betaListLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaListLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaListLimits < 3) {
    unittest.expect(o.maxEntries!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaListLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLockStatus = 0;
api.GoogleAppsDriveLabelsV2betaLockStatus
buildGoogleAppsDriveLabelsV2betaLockStatus() {
  final o = api.GoogleAppsDriveLabelsV2betaLockStatus();
  buildCounterGoogleAppsDriveLabelsV2betaLockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLockStatus < 3) {
    o.locked = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLockStatus--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLockStatus(
  api.GoogleAppsDriveLabelsV2betaLockStatus o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLockStatus++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLockStatus < 3) {
    unittest.expect(o.locked!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaLockStatus--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits = 0;
api.GoogleAppsDriveLabelsV2betaLongTextLimits
buildGoogleAppsDriveLabelsV2betaLongTextLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaLongTextLimits();
  buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaLongTextLimits(
  api.GoogleAppsDriveLabelsV2betaLongTextLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaLongTextLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest = 0;
api.GoogleAppsDriveLabelsV2betaPublishLabelRequest
buildGoogleAppsDriveLabelsV2betaPublishLabelRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaPublishLabelRequest();
  buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest < 3) {
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.writeControl = buildGoogleAppsDriveLabelsV2betaWriteControl();
  }
  buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaPublishLabelRequest(
  api.GoogleAppsDriveLabelsV2betaPublishLabelRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    checkGoogleAppsDriveLabelsV2betaWriteControl(o.writeControl!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaPublishLabelRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits = 0;
api.GoogleAppsDriveLabelsV2betaSelectionLimits
buildGoogleAppsDriveLabelsV2betaSelectionLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaSelectionLimits();
  buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits < 3) {
    o.listLimits = buildGoogleAppsDriveLabelsV2betaListLimits();
    o.maxChoices = 42;
    o.maxDeletedChoices = 42;
    o.maxDisplayNameLength = 42;
    o.maxIdLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaSelectionLimits(
  api.GoogleAppsDriveLabelsV2betaSelectionLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits < 3) {
    checkGoogleAppsDriveLabelsV2betaListLimits(o.listLimits!);
    unittest.expect(o.maxChoices!, unittest.equals(42));
    unittest.expect(o.maxDeletedChoices!, unittest.equals(42));
    unittest.expect(o.maxDisplayNameLength!, unittest.equals(42));
    unittest.expect(o.maxIdLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaSelectionLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaTextLimits = 0;
api.GoogleAppsDriveLabelsV2betaTextLimits
buildGoogleAppsDriveLabelsV2betaTextLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaTextLimits();
  buildCounterGoogleAppsDriveLabelsV2betaTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaTextLimits < 3) {
    o.maxLength = 42;
    o.minLength = 42;
  }
  buildCounterGoogleAppsDriveLabelsV2betaTextLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaTextLimits(
  api.GoogleAppsDriveLabelsV2betaTextLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaTextLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaTextLimits < 3) {
    unittest.expect(o.maxLength!, unittest.equals(42));
    unittest.expect(o.minLength!, unittest.equals(42));
  }
  buildCounterGoogleAppsDriveLabelsV2betaTextLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest = 0;
api.GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest
buildGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest();
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest < 3) {
    o.copyMode = 'foo';
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.view = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest(
  api.GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest < 3) {
    unittest.expect(o.copyMode!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest--;
}

core.int
buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest = 0;
api.GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest
buildGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest() {
  final o =
      api.GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest();
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest <
      3) {
    o.enabledAppSettings =
        buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings();
    o.languageCode = 'foo';
    o.useAdminAccess = true;
    o.view = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest(
  api.GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest <
      3) {
    checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings(
      o.enabledAppSettings!,
    );
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
    unittest.expect(o.view!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest =
    0;
api.GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest
buildGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest() {
  final o = api.GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest();
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest < 3) {
    o.labelPermission = buildGoogleAppsDriveLabelsV2betaLabelPermission();
    o.parent = 'foo';
    o.useAdminAccess = true;
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(
  api.GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest < 3) {
    checkGoogleAppsDriveLabelsV2betaLabelPermission(o.labelPermission!);
    unittest.expect(o.parent!, unittest.equals('foo'));
    unittest.expect(o.useAdminAccess!, unittest.isTrue);
  }
  buildCounterGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities = 0;
api.GoogleAppsDriveLabelsV2betaUserCapabilities
buildGoogleAppsDriveLabelsV2betaUserCapabilities() {
  final o = api.GoogleAppsDriveLabelsV2betaUserCapabilities();
  buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities < 3) {
    o.canAccessLabelManager = true;
    o.canAdministrateLabels = true;
    o.canCreateAdminLabels = true;
    o.canCreateSharedLabels = true;
    o.name = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUserCapabilities(
  api.GoogleAppsDriveLabelsV2betaUserCapabilities o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities < 3) {
    unittest.expect(o.canAccessLabelManager!, unittest.isTrue);
    unittest.expect(o.canAdministrateLabels!, unittest.isTrue);
    unittest.expect(o.canCreateAdminLabels!, unittest.isTrue);
    unittest.expect(o.canCreateSharedLabels!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserCapabilities--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaUserInfo = 0;
api.GoogleAppsDriveLabelsV2betaUserInfo
buildGoogleAppsDriveLabelsV2betaUserInfo() {
  final o = api.GoogleAppsDriveLabelsV2betaUserInfo();
  buildCounterGoogleAppsDriveLabelsV2betaUserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserInfo < 3) {
    o.person = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserInfo--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUserInfo(
  api.GoogleAppsDriveLabelsV2betaUserInfo o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUserInfo++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserInfo < 3) {
    unittest.expect(o.person!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserInfo--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaUserLimits = 0;
api.GoogleAppsDriveLabelsV2betaUserLimits
buildGoogleAppsDriveLabelsV2betaUserLimits() {
  final o = api.GoogleAppsDriveLabelsV2betaUserLimits();
  buildCounterGoogleAppsDriveLabelsV2betaUserLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserLimits < 3) {
    o.listLimits = buildGoogleAppsDriveLabelsV2betaListLimits();
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserLimits--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaUserLimits(
  api.GoogleAppsDriveLabelsV2betaUserLimits o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaUserLimits++;
  if (buildCounterGoogleAppsDriveLabelsV2betaUserLimits < 3) {
    checkGoogleAppsDriveLabelsV2betaListLimits(o.listLimits!);
  }
  buildCounterGoogleAppsDriveLabelsV2betaUserLimits--;
}

core.int buildCounterGoogleAppsDriveLabelsV2betaWriteControl = 0;
api.GoogleAppsDriveLabelsV2betaWriteControl
buildGoogleAppsDriveLabelsV2betaWriteControl() {
  final o = api.GoogleAppsDriveLabelsV2betaWriteControl();
  buildCounterGoogleAppsDriveLabelsV2betaWriteControl++;
  if (buildCounterGoogleAppsDriveLabelsV2betaWriteControl < 3) {
    o.requiredRevisionId = 'foo';
  }
  buildCounterGoogleAppsDriveLabelsV2betaWriteControl--;
  return o;
}

void checkGoogleAppsDriveLabelsV2betaWriteControl(
  api.GoogleAppsDriveLabelsV2betaWriteControl o,
) {
  buildCounterGoogleAppsDriveLabelsV2betaWriteControl++;
  if (buildCounterGoogleAppsDriveLabelsV2betaWriteControl < 3) {
    unittest.expect(o.requiredRevisionId!, unittest.equals('foo'));
  }
  buildCounterGoogleAppsDriveLabelsV2betaWriteControl--;
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
  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaBadgeColors', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaBadgeColors();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaBadgeColors.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaBadgeColors(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaBadgeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaBadgeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaBadgeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaBadgeConfig(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaDateLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaDateLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaDateLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaDateLimits(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeleteLabelPermissionRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestCreateSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDeleteSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestDisableSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableFieldRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestEnableSelectionChoiceRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldPropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateFieldTypeRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateLabelPropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequestUpdateSelectionChoicePropertiesRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseCreateSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDeleteSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseDisableSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableFieldResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseEnableSelectionChoiceResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldPropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateFieldTypeResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateLabelPropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponseUpdateSelectionChoicePropertiesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaDisableLabelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaDisableLabelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2betaDisableLabelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaDisableLabelRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaEnableLabelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaEnableLabelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2betaEnableLabelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaEnableLabelRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaField(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldAppliedCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldDateOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldDateOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldDateOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldDateOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldDisplayHints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldDisplayHints(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldIntegerOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaFieldIntegerOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2betaFieldIntegerOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldIntegerOptions(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldListOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldListOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldListOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldListOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSchemaCapabilities(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptions',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaFieldSelectionOptions();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptions(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceAppliedCapabilities(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceDisplayHints(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceProperties(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaFieldSelectionOptionsChoiceSchemaCapabilities(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldTextOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldTextOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldTextOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldTextOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaFieldUserOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaFieldUserOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaFieldUserOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaFieldUserOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaIntegerLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaIntegerLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaIntegerLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaIntegerLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelAppliedCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelAppliedCapabilities(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelAppliedLabelPolicy(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabelDisplayHints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabelDisplayHints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabelDisplayHints.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabelDisplayHints(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelEnabledAppSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettings(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelEnabledAppSettingsEnabledApp(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabelLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabelLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabelLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabelLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabelLock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabelLock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabelLock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabelLock(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelLockCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLabelLockCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelLockCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelLockCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabelPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabelPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabelPermission(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLabelProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLabelProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLabelProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLabelProperties(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLabelSchemaCapabilities.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLabelSchemaCapabilities(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLifecycle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLifecycle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLifecycle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLifecycle(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaLifecycleDisabledPolicy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaListLabelLocksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaListLabelLocksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaListLabelLocksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaListLabelLocksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaListLabelsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaListLabelsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2betaListLabelsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaListLabelsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaListLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaListLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaListLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaListLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLockStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLockStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLockStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLockStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaLongTextLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaLongTextLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaLongTextLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaLongTextLimits(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaPublishLabelRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaPublishLabelRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleAppsDriveLabelsV2betaPublishLabelRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaPublishLabelRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaSelectionLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaSelectionLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaSelectionLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaSelectionLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaTextLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaTextLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaTextLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaTextLimits(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleAppsDriveLabelsV2betaUpdateLabelPermissionRequest(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaUserCapabilities', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaUserCapabilities();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaUserCapabilities.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaUserCapabilities(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaUserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaUserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaUserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaUserInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaUserLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaUserLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaUserLimits.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaUserLimits(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsDriveLabelsV2betaWriteControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsDriveLabelsV2betaWriteControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsDriveLabelsV2betaWriteControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAppsDriveLabelsV2betaWriteControl(od);
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
      final arg_request = buildGoogleAppsDriveLabelsV2betaLabel();
      final arg_languageCode = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2betaLabel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaLabel(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v2beta/labels'),
          );
          pathOffset += 13;

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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
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
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
      final arg_request =
          buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse(),
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
      checkGoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse(
        response as api.GoogleAppsDriveLabelsV2betaDeltaUpdateLabelResponse,
      );
    });

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2betaDisableLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaDisableLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaDisableLabelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.disable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
      );
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2betaEnableLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaEnableLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaEnableLabelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.enable(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          final resp = convert.json.encode(
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
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
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v2beta/labels'),
          );
          pathOffset += 13;

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
            buildGoogleAppsDriveLabelsV2betaListLabelsResponse(),
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
      checkGoogleAppsDriveLabelsV2betaListLabelsResponse(
        response as api.GoogleAppsDriveLabelsV2betaListLabelsResponse,
      );
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2betaPublishLabelRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaPublishLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaPublishLabelRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.publish(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
      );
    });

    unittest.test('method--updateLabelCopyMode', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request =
          buildGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaUpdateLabelCopyModeRequest(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLabelCopyMode(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
      );
    });

    unittest.test('method--updateLabelEnabledAppSettings', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request =
          buildGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaUpdateLabelEnabledAppSettingsRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabel(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLabelEnabledAppSettings(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGoogleAppsDriveLabelsV2betaLabel(
        response as api.GoogleAppsDriveLabelsV2betaLabel,
      );
    });

    unittest.test('method--updatePermissions', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels;
      final arg_request = buildGoogleAppsDriveLabelsV2betaLabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaLabelPermission(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabelPermission(),
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
      checkGoogleAppsDriveLabelsV2betaLabelPermission(
        response as api.GoogleAppsDriveLabelsV2betaLabelPermission,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaListLabelLocksResponse(),
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
      checkGoogleAppsDriveLabelsV2betaListLabelLocksResponse(
        response as api.GoogleAppsDriveLabelsV2betaListLabelLocksResponse,
      );
    });
  });

  unittest.group('resource-LabelsPermissionsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(),
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
      checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(
        response
            as api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.permissions;
      final arg_request = buildGoogleAppsDriveLabelsV2betaLabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaLabelPermission(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabelPermission(),
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
      checkGoogleAppsDriveLabelsV2betaLabelPermission(
        response as api.GoogleAppsDriveLabelsV2betaLabelPermission,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(),
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
      checkGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(
        response as api.GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse,
      );
    });
  });

  unittest.group('resource-LabelsRevisionsResource', () {
    unittest.test('method--updatePermissions', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions;
      final arg_request = buildGoogleAppsDriveLabelsV2betaLabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaLabelPermission(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabelPermission(),
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
      checkGoogleAppsDriveLabelsV2betaLabelPermission(
        response as api.GoogleAppsDriveLabelsV2betaLabelPermission,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaListLabelLocksResponse(),
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
      checkGoogleAppsDriveLabelsV2betaListLabelLocksResponse(
        response as api.GoogleAppsDriveLabelsV2betaListLabelLocksResponse,
      );
    });
  });

  unittest.group('resource-LabelsRevisionsPermissionsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_request =
          buildGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaBatchDeleteLabelPermissionsRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
          buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api
              .GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsRequest(
            obj,
          );

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(),
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
      checkGoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse(
        response
            as api.GoogleAppsDriveLabelsV2betaBatchUpdateLabelPermissionsResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DriveLabelsApi(mock).labels.revisions.permissions;
      final arg_request = buildGoogleAppsDriveLabelsV2betaLabelPermission();
      final arg_parent = 'foo';
      final arg_useAdminAccess = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleAppsDriveLabelsV2betaLabelPermission.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleAppsDriveLabelsV2betaLabelPermission(obj);

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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaLabelPermission(),
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
      checkGoogleAppsDriveLabelsV2betaLabelPermission(
        response as api.GoogleAppsDriveLabelsV2betaLabelPermission,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(),
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
      checkGoogleAppsDriveLabelsV2betaListLabelPermissionsResponse(
        response as api.GoogleAppsDriveLabelsV2betaListLabelPermissionsResponse,
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
            path.substring(pathOffset, pathOffset + 19),
            unittest.equals('v2beta/limits/label'),
          );
          pathOffset += 19;

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
            buildGoogleAppsDriveLabelsV2betaLabelLimits(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getLabel(name: arg_name, $fields: arg_$fields);
      checkGoogleAppsDriveLabelsV2betaLabelLimits(
        response as api.GoogleAppsDriveLabelsV2betaLabelLimits,
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v2beta/'),
          );
          pathOffset += 7;
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
            buildGoogleAppsDriveLabelsV2betaUserCapabilities(),
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
      checkGoogleAppsDriveLabelsV2betaUserCapabilities(
        response as api.GoogleAppsDriveLabelsV2betaUserCapabilities,
      );
    });
  });
}
