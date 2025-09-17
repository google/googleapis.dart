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

import 'package:googleapis/merchantapi/issueresolution_v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Reason> buildUnnamed0() => [buildReason(), buildReason()];

void checkUnnamed0(core.List<api.Reason> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReason(o[0]);
  checkReason(o[1]);
}

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.builtinSimpleAction = buildBuiltInSimpleAction();
    o.builtinUserInputAction = buildBuiltInUserInputAction();
    o.buttonLabel = 'foo';
    o.externalAction = buildExternalAction();
    o.isAvailable = true;
    o.reasons = buildUnnamed0();
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    checkBuiltInSimpleAction(o.builtinSimpleAction!);
    checkBuiltInUserInputAction(o.builtinUserInputAction!);
    unittest.expect(o.buttonLabel!, unittest.equals('foo'));
    checkExternalAction(o.externalAction!);
    unittest.expect(o.isAvailable!, unittest.isTrue);
    checkUnnamed0(o.reasons!);
  }
  buildCounterAction--;
}

core.List<api.InputField> buildUnnamed1() => [
  buildInputField(),
  buildInputField(),
];

void checkUnnamed1(core.List<api.InputField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputField(o[0]);
  checkInputField(o[1]);
}

core.int buildCounterActionFlow = 0;
api.ActionFlow buildActionFlow() {
  final o = api.ActionFlow();
  buildCounterActionFlow++;
  if (buildCounterActionFlow < 3) {
    o.dialogButtonLabel = 'foo';
    o.dialogCallout = buildCallout();
    o.dialogMessage = buildTextWithTooltip();
    o.dialogTitle = 'foo';
    o.id = 'foo';
    o.inputs = buildUnnamed1();
    o.label = 'foo';
  }
  buildCounterActionFlow--;
  return o;
}

void checkActionFlow(api.ActionFlow o) {
  buildCounterActionFlow++;
  if (buildCounterActionFlow < 3) {
    unittest.expect(o.dialogButtonLabel!, unittest.equals('foo'));
    checkCallout(o.dialogCallout!);
    checkTextWithTooltip(o.dialogMessage!);
    unittest.expect(o.dialogTitle!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed1(o.inputs!);
    unittest.expect(o.label!, unittest.equals('foo'));
  }
  buildCounterActionFlow--;
}

core.List<api.InputValue> buildUnnamed2() => [
  buildInputValue(),
  buildInputValue(),
];

void checkUnnamed2(core.List<api.InputValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInputValue(o[0]);
  checkInputValue(o[1]);
}

core.int buildCounterActionInput = 0;
api.ActionInput buildActionInput() {
  final o = api.ActionInput();
  buildCounterActionInput++;
  if (buildCounterActionInput < 3) {
    o.actionFlowId = 'foo';
    o.inputValues = buildUnnamed2();
  }
  buildCounterActionInput--;
  return o;
}

void checkActionInput(api.ActionInput o) {
  buildCounterActionInput++;
  if (buildCounterActionInput < 3) {
    unittest.expect(o.actionFlowId!, unittest.equals('foo'));
    checkUnnamed2(o.inputValues!);
  }
  buildCounterActionInput--;
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdditionalContent = 0;
api.AdditionalContent buildAdditionalContent() {
  final o = api.AdditionalContent();
  buildCounterAdditionalContent++;
  if (buildCounterAdditionalContent < 3) {
    o.paragraphs = buildUnnamed3();
    o.title = 'foo';
  }
  buildCounterAdditionalContent--;
  return o;
}

void checkAdditionalContent(api.AdditionalContent o) {
  buildCounterAdditionalContent++;
  if (buildCounterAdditionalContent < 3) {
    checkUnnamed3(o.paragraphs!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAdditionalContent--;
}

core.List<api.ItemLevelIssue> buildUnnamed4() => [
  buildItemLevelIssue(),
  buildItemLevelIssue(),
];

void checkUnnamed4(core.List<api.ItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemLevelIssue(o[0]);
  checkItemLevelIssue(o[1]);
}

core.int buildCounterAggregateProductStatus = 0;
api.AggregateProductStatus buildAggregateProductStatus() {
  final o = api.AggregateProductStatus();
  buildCounterAggregateProductStatus++;
  if (buildCounterAggregateProductStatus < 3) {
    o.country = 'foo';
    o.itemLevelIssues = buildUnnamed4();
    o.name = 'foo';
    o.reportingContext = 'foo';
    o.stats = buildStats();
  }
  buildCounterAggregateProductStatus--;
  return o;
}

void checkAggregateProductStatus(api.AggregateProductStatus o) {
  buildCounterAggregateProductStatus++;
  if (buildCounterAggregateProductStatus < 3) {
    unittest.expect(o.country!, unittest.equals('foo'));
    checkUnnamed4(o.itemLevelIssues!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.reportingContext!, unittest.equals('foo'));
    checkStats(o.stats!);
  }
  buildCounterAggregateProductStatus--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Region> buildUnnamed6() => [buildRegion(), buildRegion()];

void checkUnnamed6(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterBreakdown = 0;
api.Breakdown buildBreakdown() {
  final o = api.Breakdown();
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    o.details = buildUnnamed5();
    o.regions = buildUnnamed6();
  }
  buildCounterBreakdown--;
  return o;
}

void checkBreakdown(api.Breakdown o) {
  buildCounterBreakdown++;
  if (buildCounterBreakdown < 3) {
    checkUnnamed5(o.details!);
    checkUnnamed6(o.regions!);
  }
  buildCounterBreakdown--;
}

core.int buildCounterBuiltInSimpleAction = 0;
api.BuiltInSimpleAction buildBuiltInSimpleAction() {
  final o = api.BuiltInSimpleAction();
  buildCounterBuiltInSimpleAction++;
  if (buildCounterBuiltInSimpleAction < 3) {
    o.additionalContent = buildAdditionalContent();
    o.attributeCode = 'foo';
    o.type = 'foo';
  }
  buildCounterBuiltInSimpleAction--;
  return o;
}

void checkBuiltInSimpleAction(api.BuiltInSimpleAction o) {
  buildCounterBuiltInSimpleAction++;
  if (buildCounterBuiltInSimpleAction < 3) {
    checkAdditionalContent(o.additionalContent!);
    unittest.expect(o.attributeCode!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterBuiltInSimpleAction--;
}

core.List<api.ActionFlow> buildUnnamed7() => [
  buildActionFlow(),
  buildActionFlow(),
];

void checkUnnamed7(core.List<api.ActionFlow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionFlow(o[0]);
  checkActionFlow(o[1]);
}

core.int buildCounterBuiltInUserInputAction = 0;
api.BuiltInUserInputAction buildBuiltInUserInputAction() {
  final o = api.BuiltInUserInputAction();
  buildCounterBuiltInUserInputAction++;
  if (buildCounterBuiltInUserInputAction < 3) {
    o.actionContext = 'foo';
    o.flows = buildUnnamed7();
  }
  buildCounterBuiltInUserInputAction--;
  return o;
}

void checkBuiltInUserInputAction(api.BuiltInUserInputAction o) {
  buildCounterBuiltInUserInputAction++;
  if (buildCounterBuiltInUserInputAction < 3) {
    unittest.expect(o.actionContext!, unittest.equals('foo'));
    checkUnnamed7(o.flows!);
  }
  buildCounterBuiltInUserInputAction--;
}

core.int buildCounterCallout = 0;
api.Callout buildCallout() {
  final o = api.Callout();
  buildCounterCallout++;
  if (buildCounterCallout < 3) {
    o.fullMessage = buildTextWithTooltip();
    o.styleHint = 'foo';
  }
  buildCounterCallout--;
  return o;
}

void checkCallout(api.Callout o) {
  buildCounterCallout++;
  if (buildCounterCallout < 3) {
    checkTextWithTooltip(o.fullMessage!);
    unittest.expect(o.styleHint!, unittest.equals('foo'));
  }
  buildCounterCallout--;
}

core.int buildCounterCheckboxInput = 0;
api.CheckboxInput buildCheckboxInput() {
  final o = api.CheckboxInput();
  buildCounterCheckboxInput++;
  if (buildCounterCheckboxInput < 3) {}
  buildCounterCheckboxInput--;
  return o;
}

void checkCheckboxInput(api.CheckboxInput o) {
  buildCounterCheckboxInput++;
  if (buildCounterCheckboxInput < 3) {}
  buildCounterCheckboxInput--;
}

core.int buildCounterCheckboxInputValue = 0;
api.CheckboxInputValue buildCheckboxInputValue() {
  final o = api.CheckboxInputValue();
  buildCounterCheckboxInputValue++;
  if (buildCounterCheckboxInputValue < 3) {
    o.value = true;
  }
  buildCounterCheckboxInputValue--;
  return o;
}

void checkCheckboxInputValue(api.CheckboxInputValue o) {
  buildCounterCheckboxInputValue++;
  if (buildCounterCheckboxInputValue < 3) {
    unittest.expect(o.value!, unittest.isTrue);
  }
  buildCounterCheckboxInputValue--;
}

core.List<api.ChoiceInputOption> buildUnnamed8() => [
  buildChoiceInputOption(),
  buildChoiceInputOption(),
];

void checkUnnamed8(core.List<api.ChoiceInputOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoiceInputOption(o[0]);
  checkChoiceInputOption(o[1]);
}

core.int buildCounterChoiceInput = 0;
api.ChoiceInput buildChoiceInput() {
  final o = api.ChoiceInput();
  buildCounterChoiceInput++;
  if (buildCounterChoiceInput < 3) {
    o.options = buildUnnamed8();
  }
  buildCounterChoiceInput--;
  return o;
}

void checkChoiceInput(api.ChoiceInput o) {
  buildCounterChoiceInput++;
  if (buildCounterChoiceInput < 3) {
    checkUnnamed8(o.options!);
  }
  buildCounterChoiceInput--;
}

core.int buildCounterChoiceInputOption = 0;
api.ChoiceInputOption buildChoiceInputOption() {
  final o = api.ChoiceInputOption();
  buildCounterChoiceInputOption++;
  if (buildCounterChoiceInputOption < 3) {
    o.additionalInput = buildInputField();
    o.id = 'foo';
    o.label = buildTextWithTooltip();
  }
  buildCounterChoiceInputOption--;
  return o;
}

void checkChoiceInputOption(api.ChoiceInputOption o) {
  buildCounterChoiceInputOption++;
  if (buildCounterChoiceInputOption < 3) {
    checkInputField(o.additionalInput!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkTextWithTooltip(o.label!);
  }
  buildCounterChoiceInputOption--;
}

core.int buildCounterChoiceInputValue = 0;
api.ChoiceInputValue buildChoiceInputValue() {
  final o = api.ChoiceInputValue();
  buildCounterChoiceInputValue++;
  if (buildCounterChoiceInputValue < 3) {
    o.choiceInputOptionId = 'foo';
  }
  buildCounterChoiceInputValue--;
  return o;
}

void checkChoiceInputValue(api.ChoiceInputValue o) {
  buildCounterChoiceInputValue++;
  if (buildCounterChoiceInputValue < 3) {
    unittest.expect(o.choiceInputOptionId!, unittest.equals('foo'));
  }
  buildCounterChoiceInputValue--;
}

core.int buildCounterExternalAction = 0;
api.ExternalAction buildExternalAction() {
  final o = api.ExternalAction();
  buildCounterExternalAction++;
  if (buildCounterExternalAction < 3) {
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterExternalAction--;
  return o;
}

void checkExternalAction(api.ExternalAction o) {
  buildCounterExternalAction++;
  if (buildCounterExternalAction < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterExternalAction--;
}

core.List<api.Breakdown> buildUnnamed9() => [
  buildBreakdown(),
  buildBreakdown(),
];

void checkUnnamed9(core.List<api.Breakdown> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBreakdown(o[0]);
  checkBreakdown(o[1]);
}

core.int buildCounterImpact = 0;
api.Impact buildImpact() {
  final o = api.Impact();
  buildCounterImpact++;
  if (buildCounterImpact < 3) {
    o.breakdowns = buildUnnamed9();
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterImpact--;
  return o;
}

void checkImpact(api.Impact o) {
  buildCounterImpact++;
  if (buildCounterImpact < 3) {
    checkUnnamed9(o.breakdowns!);
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterImpact--;
}

core.int buildCounterInputField = 0;
api.InputField buildInputField() {
  final o = api.InputField();
  buildCounterInputField++;
  if (buildCounterInputField < 3) {
    o.checkboxInput = buildCheckboxInput();
    o.choiceInput = buildChoiceInput();
    o.id = 'foo';
    o.label = buildTextWithTooltip();
    o.required = true;
    o.textInput = buildTextInput();
  }
  buildCounterInputField--;
  return o;
}

void checkInputField(api.InputField o) {
  buildCounterInputField++;
  if (buildCounterInputField < 3) {
    checkCheckboxInput(o.checkboxInput!);
    checkChoiceInput(o.choiceInput!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkTextWithTooltip(o.label!);
    unittest.expect(o.required!, unittest.isTrue);
    checkTextInput(o.textInput!);
  }
  buildCounterInputField--;
}

core.int buildCounterInputValue = 0;
api.InputValue buildInputValue() {
  final o = api.InputValue();
  buildCounterInputValue++;
  if (buildCounterInputValue < 3) {
    o.checkboxInputValue = buildCheckboxInputValue();
    o.choiceInputValue = buildChoiceInputValue();
    o.inputFieldId = 'foo';
    o.textInputValue = buildTextInputValue();
  }
  buildCounterInputValue--;
  return o;
}

void checkInputValue(api.InputValue o) {
  buildCounterInputValue++;
  if (buildCounterInputValue < 3) {
    checkCheckboxInputValue(o.checkboxInputValue!);
    checkChoiceInputValue(o.choiceInputValue!);
    unittest.expect(o.inputFieldId!, unittest.equals('foo'));
    checkTextInputValue(o.textInputValue!);
  }
  buildCounterInputValue--;
}

core.int buildCounterItemLevelIssue = 0;
api.ItemLevelIssue buildItemLevelIssue() {
  final o = api.ItemLevelIssue();
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.detail = 'foo';
    o.documentationUri = 'foo';
    o.productCount = 'foo';
    o.resolution = 'foo';
    o.severity = 'foo';
  }
  buildCounterItemLevelIssue--;
  return o;
}

void checkItemLevelIssue(api.ItemLevelIssue o) {
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentationUri!, unittest.equals('foo'));
    unittest.expect(o.productCount!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterItemLevelIssue--;
}

core.List<api.AggregateProductStatus> buildUnnamed10() => [
  buildAggregateProductStatus(),
  buildAggregateProductStatus(),
];

void checkUnnamed10(core.List<api.AggregateProductStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregateProductStatus(o[0]);
  checkAggregateProductStatus(o[1]);
}

core.int buildCounterListAggregateProductStatusesResponse = 0;
api.ListAggregateProductStatusesResponse
buildListAggregateProductStatusesResponse() {
  final o = api.ListAggregateProductStatusesResponse();
  buildCounterListAggregateProductStatusesResponse++;
  if (buildCounterListAggregateProductStatusesResponse < 3) {
    o.aggregateProductStatuses = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterListAggregateProductStatusesResponse--;
  return o;
}

void checkListAggregateProductStatusesResponse(
  api.ListAggregateProductStatusesResponse o,
) {
  buildCounterListAggregateProductStatusesResponse++;
  if (buildCounterListAggregateProductStatusesResponse < 3) {
    checkUnnamed10(o.aggregateProductStatuses!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAggregateProductStatusesResponse--;
}

core.int buildCounterReason = 0;
api.Reason buildReason() {
  final o = api.Reason();
  buildCounterReason++;
  if (buildCounterReason < 3) {
    o.action = buildAction();
    o.detail = 'foo';
    o.message = 'foo';
  }
  buildCounterReason--;
  return o;
}

void checkReason(api.Reason o) {
  buildCounterReason++;
  if (buildCounterReason < 3) {
    checkAction(o.action!);
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterReason--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  final o = api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.code = 'foo';
    o.name = 'foo';
  }
  buildCounterRegion--;
  return o;
}

void checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterRegion--;
}

core.List<api.RenderedIssue> buildUnnamed11() => [
  buildRenderedIssue(),
  buildRenderedIssue(),
];

void checkUnnamed11(core.List<api.RenderedIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRenderedIssue(o[0]);
  checkRenderedIssue(o[1]);
}

core.int buildCounterRenderAccountIssuesResponse = 0;
api.RenderAccountIssuesResponse buildRenderAccountIssuesResponse() {
  final o = api.RenderAccountIssuesResponse();
  buildCounterRenderAccountIssuesResponse++;
  if (buildCounterRenderAccountIssuesResponse < 3) {
    o.renderedIssues = buildUnnamed11();
  }
  buildCounterRenderAccountIssuesResponse--;
  return o;
}

void checkRenderAccountIssuesResponse(api.RenderAccountIssuesResponse o) {
  buildCounterRenderAccountIssuesResponse++;
  if (buildCounterRenderAccountIssuesResponse < 3) {
    checkUnnamed11(o.renderedIssues!);
  }
  buildCounterRenderAccountIssuesResponse--;
}

core.int buildCounterRenderIssuesRequestPayload = 0;
api.RenderIssuesRequestPayload buildRenderIssuesRequestPayload() {
  final o = api.RenderIssuesRequestPayload();
  buildCounterRenderIssuesRequestPayload++;
  if (buildCounterRenderIssuesRequestPayload < 3) {
    o.contentOption = 'foo';
    o.userInputActionOption = 'foo';
  }
  buildCounterRenderIssuesRequestPayload--;
  return o;
}

void checkRenderIssuesRequestPayload(api.RenderIssuesRequestPayload o) {
  buildCounterRenderIssuesRequestPayload++;
  if (buildCounterRenderIssuesRequestPayload < 3) {
    unittest.expect(o.contentOption!, unittest.equals('foo'));
    unittest.expect(o.userInputActionOption!, unittest.equals('foo'));
  }
  buildCounterRenderIssuesRequestPayload--;
}

core.List<api.RenderedIssue> buildUnnamed12() => [
  buildRenderedIssue(),
  buildRenderedIssue(),
];

void checkUnnamed12(core.List<api.RenderedIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRenderedIssue(o[0]);
  checkRenderedIssue(o[1]);
}

core.int buildCounterRenderProductIssuesResponse = 0;
api.RenderProductIssuesResponse buildRenderProductIssuesResponse() {
  final o = api.RenderProductIssuesResponse();
  buildCounterRenderProductIssuesResponse++;
  if (buildCounterRenderProductIssuesResponse < 3) {
    o.renderedIssues = buildUnnamed12();
  }
  buildCounterRenderProductIssuesResponse--;
  return o;
}

void checkRenderProductIssuesResponse(api.RenderProductIssuesResponse o) {
  buildCounterRenderProductIssuesResponse++;
  if (buildCounterRenderProductIssuesResponse < 3) {
    checkUnnamed12(o.renderedIssues!);
  }
  buildCounterRenderProductIssuesResponse--;
}

core.List<api.Action> buildUnnamed13() => [buildAction(), buildAction()];

void checkUnnamed13(core.List<api.Action> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAction(o[0]);
  checkAction(o[1]);
}

core.int buildCounterRenderedIssue = 0;
api.RenderedIssue buildRenderedIssue() {
  final o = api.RenderedIssue();
  buildCounterRenderedIssue++;
  if (buildCounterRenderedIssue < 3) {
    o.actions = buildUnnamed13();
    o.impact = buildImpact();
    o.prerenderedContent = 'foo';
    o.prerenderedOutOfCourtDisputeSettlement = 'foo';
    o.title = 'foo';
  }
  buildCounterRenderedIssue--;
  return o;
}

void checkRenderedIssue(api.RenderedIssue o) {
  buildCounterRenderedIssue++;
  if (buildCounterRenderedIssue < 3) {
    checkUnnamed13(o.actions!);
    checkImpact(o.impact!);
    unittest.expect(o.prerenderedContent!, unittest.equals('foo'));
    unittest.expect(
      o.prerenderedOutOfCourtDisputeSettlement!,
      unittest.equals('foo'),
    );
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterRenderedIssue--;
}

core.int buildCounterStats = 0;
api.Stats buildStats() {
  final o = api.Stats();
  buildCounterStats++;
  if (buildCounterStats < 3) {
    o.activeCount = 'foo';
    o.disapprovedCount = 'foo';
    o.expiringCount = 'foo';
    o.pendingCount = 'foo';
  }
  buildCounterStats--;
  return o;
}

void checkStats(api.Stats o) {
  buildCounterStats++;
  if (buildCounterStats < 3) {
    unittest.expect(o.activeCount!, unittest.equals('foo'));
    unittest.expect(o.disapprovedCount!, unittest.equals('foo'));
    unittest.expect(o.expiringCount!, unittest.equals('foo'));
    unittest.expect(o.pendingCount!, unittest.equals('foo'));
  }
  buildCounterStats--;
}

core.int buildCounterTextInput = 0;
api.TextInput buildTextInput() {
  final o = api.TextInput();
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    o.additionalInfo = buildTextWithTooltip();
    o.ariaLabel = 'foo';
    o.formatInfo = 'foo';
    o.type = 'foo';
  }
  buildCounterTextInput--;
  return o;
}

void checkTextInput(api.TextInput o) {
  buildCounterTextInput++;
  if (buildCounterTextInput < 3) {
    checkTextWithTooltip(o.additionalInfo!);
    unittest.expect(o.ariaLabel!, unittest.equals('foo'));
    unittest.expect(o.formatInfo!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterTextInput--;
}

core.int buildCounterTextInputValue = 0;
api.TextInputValue buildTextInputValue() {
  final o = api.TextInputValue();
  buildCounterTextInputValue++;
  if (buildCounterTextInputValue < 3) {
    o.value = 'foo';
  }
  buildCounterTextInputValue--;
  return o;
}

void checkTextInputValue(api.TextInputValue o) {
  buildCounterTextInputValue++;
  if (buildCounterTextInputValue < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterTextInputValue--;
}

core.int buildCounterTextWithTooltip = 0;
api.TextWithTooltip buildTextWithTooltip() {
  final o = api.TextWithTooltip();
  buildCounterTextWithTooltip++;
  if (buildCounterTextWithTooltip < 3) {
    o.simpleTooltipValue = 'foo';
    o.simpleValue = 'foo';
    o.tooltipIconStyle = 'foo';
  }
  buildCounterTextWithTooltip--;
  return o;
}

void checkTextWithTooltip(api.TextWithTooltip o) {
  buildCounterTextWithTooltip++;
  if (buildCounterTextWithTooltip < 3) {
    unittest.expect(o.simpleTooltipValue!, unittest.equals('foo'));
    unittest.expect(o.simpleValue!, unittest.equals('foo'));
    unittest.expect(o.tooltipIconStyle!, unittest.equals('foo'));
  }
  buildCounterTextWithTooltip--;
}

core.int buildCounterTriggerActionPayload = 0;
api.TriggerActionPayload buildTriggerActionPayload() {
  final o = api.TriggerActionPayload();
  buildCounterTriggerActionPayload++;
  if (buildCounterTriggerActionPayload < 3) {
    o.actionContext = 'foo';
    o.actionInput = buildActionInput();
  }
  buildCounterTriggerActionPayload--;
  return o;
}

void checkTriggerActionPayload(api.TriggerActionPayload o) {
  buildCounterTriggerActionPayload++;
  if (buildCounterTriggerActionPayload < 3) {
    unittest.expect(o.actionContext!, unittest.equals('foo'));
    checkActionInput(o.actionInput!);
  }
  buildCounterTriggerActionPayload--;
}

core.int buildCounterTriggerActionResponse = 0;
api.TriggerActionResponse buildTriggerActionResponse() {
  final o = api.TriggerActionResponse();
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    o.message = 'foo';
  }
  buildCounterTriggerActionResponse--;
  return o;
}

void checkTriggerActionResponse(api.TriggerActionResponse o) {
  buildCounterTriggerActionResponse++;
  if (buildCounterTriggerActionResponse < 3) {
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterTriggerActionResponse--;
}

void main() {
  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Action.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAction(od);
    });
  });

  unittest.group('obj-schema-ActionFlow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionFlow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionFlow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionFlow(od);
    });
  });

  unittest.group('obj-schema-ActionInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkActionInput(od);
    });
  });

  unittest.group('obj-schema-AdditionalContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdditionalContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdditionalContent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdditionalContent(od);
    });
  });

  unittest.group('obj-schema-AggregateProductStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateProductStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateProductStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregateProductStatus(od);
    });
  });

  unittest.group('obj-schema-Breakdown', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBreakdown();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Breakdown.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBreakdown(od);
    });
  });

  unittest.group('obj-schema-BuiltInSimpleAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInSimpleAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInSimpleAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuiltInSimpleAction(od);
    });
  });

  unittest.group('obj-schema-BuiltInUserInputAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuiltInUserInputAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuiltInUserInputAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBuiltInUserInputAction(od);
    });
  });

  unittest.group('obj-schema-Callout', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCallout();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Callout.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCallout(od);
    });
  });

  unittest.group('obj-schema-CheckboxInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckboxInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckboxInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckboxInput(od);
    });
  });

  unittest.group('obj-schema-CheckboxInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckboxInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckboxInputValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckboxInputValue(od);
    });
  });

  unittest.group('obj-schema-ChoiceInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoiceInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoiceInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChoiceInput(od);
    });
  });

  unittest.group('obj-schema-ChoiceInputOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoiceInputOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoiceInputOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChoiceInputOption(od);
    });
  });

  unittest.group('obj-schema-ChoiceInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoiceInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoiceInputValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChoiceInputValue(od);
    });
  });

  unittest.group('obj-schema-ExternalAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalAction(od);
    });
  });

  unittest.group('obj-schema-Impact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImpact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Impact.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImpact(od);
    });
  });

  unittest.group('obj-schema-InputField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputField(od);
    });
  });

  unittest.group('obj-schema-InputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputValue(od);
    });
  });

  unittest.group('obj-schema-ItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ListAggregateProductStatusesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAggregateProductStatusesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAggregateProductStatusesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAggregateProductStatusesResponse(od);
    });
  });

  unittest.group('obj-schema-Reason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Reason.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReason(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Region.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-RenderAccountIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderAccountIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderAccountIssuesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderAccountIssuesResponse(od);
    });
  });

  unittest.group('obj-schema-RenderIssuesRequestPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderIssuesRequestPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderIssuesRequestPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderIssuesRequestPayload(od);
    });
  });

  unittest.group('obj-schema-RenderProductIssuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderProductIssuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderProductIssuesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderProductIssuesResponse(od);
    });
  });

  unittest.group('obj-schema-RenderedIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenderedIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenderedIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRenderedIssue(od);
    });
  });

  unittest.group('obj-schema-Stats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Stats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStats(od);
    });
  });

  unittest.group('obj-schema-TextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextInput(od);
    });
  });

  unittest.group('obj-schema-TextInputValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextInputValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextInputValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextInputValue(od);
    });
  });

  unittest.group('obj-schema-TextWithTooltip', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextWithTooltip();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextWithTooltip.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextWithTooltip(od);
    });
  });

  unittest.group('obj-schema-TriggerActionPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionPayload.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionPayload(od);
    });
  });

  unittest.group('obj-schema-TriggerActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerActionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTriggerActionResponse(od);
    });
  });

  unittest.group('resource-AccountsAggregateProductStatusesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).accounts.aggregateProductStatuses;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('issueresolution/v1beta/'),
          );
          pathOffset += 23;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAggregateProductStatusesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAggregateProductStatusesResponse(
        response as api.ListAggregateProductStatusesResponse,
      );
    });
  });

  unittest.group('resource-IssueresolutionResource', () {
    unittest.test('method--renderaccountissues', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).issueresolution;
      final arg_request = buildRenderIssuesRequestPayload();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_timeZone = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RenderIssuesRequestPayload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRenderIssuesRequestPayload(obj);

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
            unittest.equals('issueresolution/v1beta/'),
          );
          pathOffset += 23;
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
            queryMap['timeZone']!.first,
            unittest.equals(arg_timeZone),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRenderAccountIssuesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.renderaccountissues(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        timeZone: arg_timeZone,
        $fields: arg_$fields,
      );
      checkRenderAccountIssuesResponse(
        response as api.RenderAccountIssuesResponse,
      );
    });

    unittest.test('method--renderproductissues', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).issueresolution;
      final arg_request = buildRenderIssuesRequestPayload();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_timeZone = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RenderIssuesRequestPayload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRenderIssuesRequestPayload(obj);

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
            unittest.equals('issueresolution/v1beta/'),
          );
          pathOffset += 23;
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
            queryMap['timeZone']!.first,
            unittest.equals(arg_timeZone),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildRenderProductIssuesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.renderproductissues(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        timeZone: arg_timeZone,
        $fields: arg_$fields,
      );
      checkRenderProductIssuesResponse(
        response as api.RenderProductIssuesResponse,
      );
    });

    unittest.test('method--triggeraction', () async {
      final mock = HttpServerMock();
      final res = api.MerchantApi(mock).issueresolution;
      final arg_request = buildTriggerActionPayload();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TriggerActionPayload.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTriggerActionPayload(obj);

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
            unittest.equals('issueresolution/v1beta/'),
          );
          pathOffset += 23;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTriggerActionResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.triggeraction(
        arg_request,
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkTriggerActionResponse(response as api.TriggerActionResponse);
    });
  });
}
