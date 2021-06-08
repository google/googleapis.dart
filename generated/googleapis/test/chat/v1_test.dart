// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/chat/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActionParameter = 0;
api.ActionParameter buildActionParameter() {
  var o = api.ActionParameter();
  buildCounterActionParameter++;
  if (buildCounterActionParameter < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterActionParameter--;
  return o;
}

void checkActionParameter(api.ActionParameter o) {
  buildCounterActionParameter++;
  if (buildCounterActionParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterActionParameter--;
}

core.int buildCounterActionResponse = 0;
api.ActionResponse buildActionResponse() {
  var o = api.ActionResponse();
  buildCounterActionResponse++;
  if (buildCounterActionResponse < 3) {
    o.type = 'foo';
    o.url = 'foo';
  }
  buildCounterActionResponse--;
  return o;
}

void checkActionResponse(api.ActionResponse o) {
  buildCounterActionResponse++;
  if (buildCounterActionResponse < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterActionResponse--;
}

core.int buildCounterAnnotation = 0;
api.Annotation buildAnnotation() {
  var o = api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.length = 42;
    o.slashCommand = buildSlashCommandMetadata();
    o.startIndex = 42;
    o.type = 'foo';
    o.userMention = buildUserMentionMetadata();
  }
  buildCounterAnnotation--;
  return o;
}

void checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    unittest.expect(
      o.length!,
      unittest.equals(42),
    );
    checkSlashCommandMetadata(o.slashCommand! as api.SlashCommandMetadata);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUserMentionMetadata(o.userMention! as api.UserMentionMetadata);
  }
  buildCounterAnnotation--;
}

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  var o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.attachmentDataRef = buildAttachmentDataRef();
    o.contentName = 'foo';
    o.contentType = 'foo';
    o.downloadUri = 'foo';
    o.driveDataRef = buildDriveDataRef();
    o.name = 'foo';
    o.source = 'foo';
    o.thumbnailUri = 'foo';
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkAttachmentDataRef(o.attachmentDataRef! as api.AttachmentDataRef);
    unittest.expect(
      o.contentName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUri!,
      unittest.equals('foo'),
    );
    checkDriveDataRef(o.driveDataRef! as api.DriveDataRef);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachment--;
}

core.int buildCounterAttachmentDataRef = 0;
api.AttachmentDataRef buildAttachmentDataRef() {
  var o = api.AttachmentDataRef();
  buildCounterAttachmentDataRef++;
  if (buildCounterAttachmentDataRef < 3) {
    o.resourceName = 'foo';
  }
  buildCounterAttachmentDataRef--;
  return o;
}

void checkAttachmentDataRef(api.AttachmentDataRef o) {
  buildCounterAttachmentDataRef++;
  if (buildCounterAttachmentDataRef < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachmentDataRef--;
}

core.int buildCounterButton = 0;
api.Button buildButton() {
  var o = api.Button();
  buildCounterButton++;
  if (buildCounterButton < 3) {
    o.imageButton = buildImageButton();
    o.textButton = buildTextButton();
  }
  buildCounterButton--;
  return o;
}

void checkButton(api.Button o) {
  buildCounterButton++;
  if (buildCounterButton < 3) {
    checkImageButton(o.imageButton! as api.ImageButton);
    checkTextButton(o.textButton! as api.TextButton);
  }
  buildCounterButton--;
}

core.List<api.CardAction> buildUnnamed4124() {
  var o = <api.CardAction>[];
  o.add(buildCardAction());
  o.add(buildCardAction());
  return o;
}

void checkUnnamed4124(core.List<api.CardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardAction(o[0] as api.CardAction);
  checkCardAction(o[1] as api.CardAction);
}

core.List<api.Section> buildUnnamed4125() {
  var o = <api.Section>[];
  o.add(buildSection());
  o.add(buildSection());
  return o;
}

void checkUnnamed4125(core.List<api.Section> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSection(o[0] as api.Section);
  checkSection(o[1] as api.Section);
}

core.int buildCounterCard = 0;
api.Card buildCard() {
  var o = api.Card();
  buildCounterCard++;
  if (buildCounterCard < 3) {
    o.cardActions = buildUnnamed4124();
    o.header = buildCardHeader();
    o.name = 'foo';
    o.sections = buildUnnamed4125();
  }
  buildCounterCard--;
  return o;
}

void checkCard(api.Card o) {
  buildCounterCard++;
  if (buildCounterCard < 3) {
    checkUnnamed4124(o.cardActions!);
    checkCardHeader(o.header! as api.CardHeader);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4125(o.sections!);
  }
  buildCounterCard--;
}

core.int buildCounterCardAction = 0;
api.CardAction buildCardAction() {
  var o = api.CardAction();
  buildCounterCardAction++;
  if (buildCounterCardAction < 3) {
    o.actionLabel = 'foo';
    o.onClick = buildOnClick();
  }
  buildCounterCardAction--;
  return o;
}

void checkCardAction(api.CardAction o) {
  buildCounterCardAction++;
  if (buildCounterCardAction < 3) {
    unittest.expect(
      o.actionLabel!,
      unittest.equals('foo'),
    );
    checkOnClick(o.onClick! as api.OnClick);
  }
  buildCounterCardAction--;
}

core.int buildCounterCardHeader = 0;
api.CardHeader buildCardHeader() {
  var o = api.CardHeader();
  buildCounterCardHeader++;
  if (buildCounterCardHeader < 3) {
    o.imageStyle = 'foo';
    o.imageUrl = 'foo';
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterCardHeader--;
  return o;
}

void checkCardHeader(api.CardHeader o) {
  buildCounterCardHeader++;
  if (buildCounterCardHeader < 3) {
    unittest.expect(
      o.imageStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterCardHeader--;
}

core.int buildCounterCardWithId = 0;
api.CardWithId buildCardWithId() {
  var o = api.CardWithId();
  buildCounterCardWithId++;
  if (buildCounterCardWithId < 3) {
    o.card = buildGoogleAppsCardV1Card();
    o.cardId = 'foo';
  }
  buildCounterCardWithId--;
  return o;
}

void checkCardWithId(api.CardWithId o) {
  buildCounterCardWithId++;
  if (buildCounterCardWithId < 3) {
    checkGoogleAppsCardV1Card(o.card! as api.GoogleAppsCardV1Card);
    unittest.expect(
      o.cardId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCardWithId--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  var o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
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
  buildCounterColor--;
}

core.int buildCounterDeprecatedEvent = 0;
api.DeprecatedEvent buildDeprecatedEvent() {
  var o = api.DeprecatedEvent();
  buildCounterDeprecatedEvent++;
  if (buildCounterDeprecatedEvent < 3) {
    o.action = buildFormAction();
    o.configCompleteRedirectUrl = 'foo';
    o.eventTime = 'foo';
    o.message = buildMessage();
    o.space = buildSpace();
    o.threadKey = 'foo';
    o.token = 'foo';
    o.type = 'foo';
    o.user = buildUser();
  }
  buildCounterDeprecatedEvent--;
  return o;
}

void checkDeprecatedEvent(api.DeprecatedEvent o) {
  buildCounterDeprecatedEvent++;
  if (buildCounterDeprecatedEvent < 3) {
    checkFormAction(o.action! as api.FormAction);
    unittest.expect(
      o.configCompleteRedirectUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    checkMessage(o.message! as api.Message);
    checkSpace(o.space! as api.Space);
    unittest.expect(
      o.threadKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUser(o.user! as api.User);
  }
  buildCounterDeprecatedEvent--;
}

core.int buildCounterDriveDataRef = 0;
api.DriveDataRef buildDriveDataRef() {
  var o = api.DriveDataRef();
  buildCounterDriveDataRef++;
  if (buildCounterDriveDataRef < 3) {
    o.driveFileId = 'foo';
  }
  buildCounterDriveDataRef--;
  return o;
}

void checkDriveDataRef(api.DriveDataRef o) {
  buildCounterDriveDataRef++;
  if (buildCounterDriveDataRef < 3) {
    unittest.expect(
      o.driveFileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveDataRef--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.List<api.ActionParameter> buildUnnamed4126() {
  var o = <api.ActionParameter>[];
  o.add(buildActionParameter());
  o.add(buildActionParameter());
  return o;
}

void checkUnnamed4126(core.List<api.ActionParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionParameter(o[0] as api.ActionParameter);
  checkActionParameter(o[1] as api.ActionParameter);
}

core.int buildCounterFormAction = 0;
api.FormAction buildFormAction() {
  var o = api.FormAction();
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    o.actionMethodName = 'foo';
    o.parameters = buildUnnamed4126();
  }
  buildCounterFormAction--;
  return o;
}

void checkFormAction(api.FormAction o) {
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    unittest.expect(
      o.actionMethodName!,
      unittest.equals('foo'),
    );
    checkUnnamed4126(o.parameters!);
  }
  buildCounterFormAction--;
}

core.List<api.GoogleAppsCardV1ActionParameter> buildUnnamed4127() {
  var o = <api.GoogleAppsCardV1ActionParameter>[];
  o.add(buildGoogleAppsCardV1ActionParameter());
  o.add(buildGoogleAppsCardV1ActionParameter());
  return o;
}

void checkUnnamed4127(core.List<api.GoogleAppsCardV1ActionParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1ActionParameter(
      o[0] as api.GoogleAppsCardV1ActionParameter);
  checkGoogleAppsCardV1ActionParameter(
      o[1] as api.GoogleAppsCardV1ActionParameter);
}

core.int buildCounterGoogleAppsCardV1Action = 0;
api.GoogleAppsCardV1Action buildGoogleAppsCardV1Action() {
  var o = api.GoogleAppsCardV1Action();
  buildCounterGoogleAppsCardV1Action++;
  if (buildCounterGoogleAppsCardV1Action < 3) {
    o.function = 'foo';
    o.loadIndicator = 'foo';
    o.parameters = buildUnnamed4127();
    o.persistValues = true;
  }
  buildCounterGoogleAppsCardV1Action--;
  return o;
}

void checkGoogleAppsCardV1Action(api.GoogleAppsCardV1Action o) {
  buildCounterGoogleAppsCardV1Action++;
  if (buildCounterGoogleAppsCardV1Action < 3) {
    unittest.expect(
      o.function!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loadIndicator!,
      unittest.equals('foo'),
    );
    checkUnnamed4127(o.parameters!);
    unittest.expect(o.persistValues!, unittest.isTrue);
  }
  buildCounterGoogleAppsCardV1Action--;
}

core.int buildCounterGoogleAppsCardV1ActionParameter = 0;
api.GoogleAppsCardV1ActionParameter buildGoogleAppsCardV1ActionParameter() {
  var o = api.GoogleAppsCardV1ActionParameter();
  buildCounterGoogleAppsCardV1ActionParameter++;
  if (buildCounterGoogleAppsCardV1ActionParameter < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAppsCardV1ActionParameter--;
  return o;
}

void checkGoogleAppsCardV1ActionParameter(
    api.GoogleAppsCardV1ActionParameter o) {
  buildCounterGoogleAppsCardV1ActionParameter++;
  if (buildCounterGoogleAppsCardV1ActionParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1ActionParameter--;
}

core.int buildCounterGoogleAppsCardV1BorderStyle = 0;
api.GoogleAppsCardV1BorderStyle buildGoogleAppsCardV1BorderStyle() {
  var o = api.GoogleAppsCardV1BorderStyle();
  buildCounterGoogleAppsCardV1BorderStyle++;
  if (buildCounterGoogleAppsCardV1BorderStyle < 3) {
    o.cornerRadius = 42;
    o.strokeColor = buildColor();
    o.type = 'foo';
  }
  buildCounterGoogleAppsCardV1BorderStyle--;
  return o;
}

void checkGoogleAppsCardV1BorderStyle(api.GoogleAppsCardV1BorderStyle o) {
  buildCounterGoogleAppsCardV1BorderStyle++;
  if (buildCounterGoogleAppsCardV1BorderStyle < 3) {
    unittest.expect(
      o.cornerRadius!,
      unittest.equals(42),
    );
    checkColor(o.strokeColor! as api.Color);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1BorderStyle--;
}

core.int buildCounterGoogleAppsCardV1Button = 0;
api.GoogleAppsCardV1Button buildGoogleAppsCardV1Button() {
  var o = api.GoogleAppsCardV1Button();
  buildCounterGoogleAppsCardV1Button++;
  if (buildCounterGoogleAppsCardV1Button < 3) {
    o.altText = 'foo';
    o.color = buildColor();
    o.disabled = true;
    o.icon = buildGoogleAppsCardV1Icon();
    o.onClick = buildGoogleAppsCardV1OnClick();
    o.text = 'foo';
  }
  buildCounterGoogleAppsCardV1Button--;
  return o;
}

void checkGoogleAppsCardV1Button(api.GoogleAppsCardV1Button o) {
  buildCounterGoogleAppsCardV1Button++;
  if (buildCounterGoogleAppsCardV1Button < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    checkColor(o.color! as api.Color);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkGoogleAppsCardV1Icon(o.icon! as api.GoogleAppsCardV1Icon);
    checkGoogleAppsCardV1OnClick(o.onClick! as api.GoogleAppsCardV1OnClick);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1Button--;
}

core.List<api.GoogleAppsCardV1Button> buildUnnamed4128() {
  var o = <api.GoogleAppsCardV1Button>[];
  o.add(buildGoogleAppsCardV1Button());
  o.add(buildGoogleAppsCardV1Button());
  return o;
}

void checkUnnamed4128(core.List<api.GoogleAppsCardV1Button> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1Button(o[0] as api.GoogleAppsCardV1Button);
  checkGoogleAppsCardV1Button(o[1] as api.GoogleAppsCardV1Button);
}

core.int buildCounterGoogleAppsCardV1ButtonList = 0;
api.GoogleAppsCardV1ButtonList buildGoogleAppsCardV1ButtonList() {
  var o = api.GoogleAppsCardV1ButtonList();
  buildCounterGoogleAppsCardV1ButtonList++;
  if (buildCounterGoogleAppsCardV1ButtonList < 3) {
    o.buttons = buildUnnamed4128();
  }
  buildCounterGoogleAppsCardV1ButtonList--;
  return o;
}

void checkGoogleAppsCardV1ButtonList(api.GoogleAppsCardV1ButtonList o) {
  buildCounterGoogleAppsCardV1ButtonList++;
  if (buildCounterGoogleAppsCardV1ButtonList < 3) {
    checkUnnamed4128(o.buttons!);
  }
  buildCounterGoogleAppsCardV1ButtonList--;
}

core.List<api.GoogleAppsCardV1CardAction> buildUnnamed4129() {
  var o = <api.GoogleAppsCardV1CardAction>[];
  o.add(buildGoogleAppsCardV1CardAction());
  o.add(buildGoogleAppsCardV1CardAction());
  return o;
}

void checkUnnamed4129(core.List<api.GoogleAppsCardV1CardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1CardAction(o[0] as api.GoogleAppsCardV1CardAction);
  checkGoogleAppsCardV1CardAction(o[1] as api.GoogleAppsCardV1CardAction);
}

core.List<api.GoogleAppsCardV1Section> buildUnnamed4130() {
  var o = <api.GoogleAppsCardV1Section>[];
  o.add(buildGoogleAppsCardV1Section());
  o.add(buildGoogleAppsCardV1Section());
  return o;
}

void checkUnnamed4130(core.List<api.GoogleAppsCardV1Section> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1Section(o[0] as api.GoogleAppsCardV1Section);
  checkGoogleAppsCardV1Section(o[1] as api.GoogleAppsCardV1Section);
}

core.int buildCounterGoogleAppsCardV1Card = 0;
api.GoogleAppsCardV1Card buildGoogleAppsCardV1Card() {
  var o = api.GoogleAppsCardV1Card();
  buildCounterGoogleAppsCardV1Card++;
  if (buildCounterGoogleAppsCardV1Card < 3) {
    o.cardActions = buildUnnamed4129();
    o.displayStyle = 'foo';
    o.fixedFooter = buildGoogleAppsCardV1CardFixedFooter();
    o.header = buildGoogleAppsCardV1CardHeader();
    o.name = 'foo';
    o.peekCardHeader = buildGoogleAppsCardV1CardHeader();
    o.sections = buildUnnamed4130();
  }
  buildCounterGoogleAppsCardV1Card--;
  return o;
}

void checkGoogleAppsCardV1Card(api.GoogleAppsCardV1Card o) {
  buildCounterGoogleAppsCardV1Card++;
  if (buildCounterGoogleAppsCardV1Card < 3) {
    checkUnnamed4129(o.cardActions!);
    unittest.expect(
      o.displayStyle!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1CardFixedFooter(
        o.fixedFooter! as api.GoogleAppsCardV1CardFixedFooter);
    checkGoogleAppsCardV1CardHeader(
        o.header! as api.GoogleAppsCardV1CardHeader);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1CardHeader(
        o.peekCardHeader! as api.GoogleAppsCardV1CardHeader);
    checkUnnamed4130(o.sections!);
  }
  buildCounterGoogleAppsCardV1Card--;
}

core.int buildCounterGoogleAppsCardV1CardAction = 0;
api.GoogleAppsCardV1CardAction buildGoogleAppsCardV1CardAction() {
  var o = api.GoogleAppsCardV1CardAction();
  buildCounterGoogleAppsCardV1CardAction++;
  if (buildCounterGoogleAppsCardV1CardAction < 3) {
    o.actionLabel = 'foo';
    o.onClick = buildGoogleAppsCardV1OnClick();
  }
  buildCounterGoogleAppsCardV1CardAction--;
  return o;
}

void checkGoogleAppsCardV1CardAction(api.GoogleAppsCardV1CardAction o) {
  buildCounterGoogleAppsCardV1CardAction++;
  if (buildCounterGoogleAppsCardV1CardAction < 3) {
    unittest.expect(
      o.actionLabel!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1OnClick(o.onClick! as api.GoogleAppsCardV1OnClick);
  }
  buildCounterGoogleAppsCardV1CardAction--;
}

core.int buildCounterGoogleAppsCardV1CardFixedFooter = 0;
api.GoogleAppsCardV1CardFixedFooter buildGoogleAppsCardV1CardFixedFooter() {
  var o = api.GoogleAppsCardV1CardFixedFooter();
  buildCounterGoogleAppsCardV1CardFixedFooter++;
  if (buildCounterGoogleAppsCardV1CardFixedFooter < 3) {
    o.primaryButton = buildGoogleAppsCardV1Button();
    o.secondaryButton = buildGoogleAppsCardV1Button();
  }
  buildCounterGoogleAppsCardV1CardFixedFooter--;
  return o;
}

void checkGoogleAppsCardV1CardFixedFooter(
    api.GoogleAppsCardV1CardFixedFooter o) {
  buildCounterGoogleAppsCardV1CardFixedFooter++;
  if (buildCounterGoogleAppsCardV1CardFixedFooter < 3) {
    checkGoogleAppsCardV1Button(o.primaryButton! as api.GoogleAppsCardV1Button);
    checkGoogleAppsCardV1Button(
        o.secondaryButton! as api.GoogleAppsCardV1Button);
  }
  buildCounterGoogleAppsCardV1CardFixedFooter--;
}

core.int buildCounterGoogleAppsCardV1CardHeader = 0;
api.GoogleAppsCardV1CardHeader buildGoogleAppsCardV1CardHeader() {
  var o = api.GoogleAppsCardV1CardHeader();
  buildCounterGoogleAppsCardV1CardHeader++;
  if (buildCounterGoogleAppsCardV1CardHeader < 3) {
    o.imageAltText = 'foo';
    o.imageType = 'foo';
    o.imageUrl = 'foo';
    o.subtitle = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleAppsCardV1CardHeader--;
  return o;
}

void checkGoogleAppsCardV1CardHeader(api.GoogleAppsCardV1CardHeader o) {
  buildCounterGoogleAppsCardV1CardHeader++;
  if (buildCounterGoogleAppsCardV1CardHeader < 3) {
    unittest.expect(
      o.imageAltText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1CardHeader--;
}

core.int buildCounterGoogleAppsCardV1DateTimePicker = 0;
api.GoogleAppsCardV1DateTimePicker buildGoogleAppsCardV1DateTimePicker() {
  var o = api.GoogleAppsCardV1DateTimePicker();
  buildCounterGoogleAppsCardV1DateTimePicker++;
  if (buildCounterGoogleAppsCardV1DateTimePicker < 3) {
    o.label = 'foo';
    o.name = 'foo';
    o.onChangeAction = buildGoogleAppsCardV1Action();
    o.timezoneOffsetDate = 42;
    o.type = 'foo';
    o.valueMsEpoch = 'foo';
  }
  buildCounterGoogleAppsCardV1DateTimePicker--;
  return o;
}

void checkGoogleAppsCardV1DateTimePicker(api.GoogleAppsCardV1DateTimePicker o) {
  buildCounterGoogleAppsCardV1DateTimePicker++;
  if (buildCounterGoogleAppsCardV1DateTimePicker < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Action(
        o.onChangeAction! as api.GoogleAppsCardV1Action);
    unittest.expect(
      o.timezoneOffsetDate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.valueMsEpoch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1DateTimePicker--;
}

core.int buildCounterGoogleAppsCardV1DecoratedText = 0;
api.GoogleAppsCardV1DecoratedText buildGoogleAppsCardV1DecoratedText() {
  var o = api.GoogleAppsCardV1DecoratedText();
  buildCounterGoogleAppsCardV1DecoratedText++;
  if (buildCounterGoogleAppsCardV1DecoratedText < 3) {
    o.bottomLabel = 'foo';
    o.button = buildGoogleAppsCardV1Button();
    o.endIcon = buildGoogleAppsCardV1Icon();
    o.icon = buildGoogleAppsCardV1Icon();
    o.onClick = buildGoogleAppsCardV1OnClick();
    o.startIcon = buildGoogleAppsCardV1Icon();
    o.switchControl = buildGoogleAppsCardV1SwitchControl();
    o.text = 'foo';
    o.topLabel = 'foo';
    o.wrapText = true;
  }
  buildCounterGoogleAppsCardV1DecoratedText--;
  return o;
}

void checkGoogleAppsCardV1DecoratedText(api.GoogleAppsCardV1DecoratedText o) {
  buildCounterGoogleAppsCardV1DecoratedText++;
  if (buildCounterGoogleAppsCardV1DecoratedText < 3) {
    unittest.expect(
      o.bottomLabel!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Button(o.button! as api.GoogleAppsCardV1Button);
    checkGoogleAppsCardV1Icon(o.endIcon! as api.GoogleAppsCardV1Icon);
    checkGoogleAppsCardV1Icon(o.icon! as api.GoogleAppsCardV1Icon);
    checkGoogleAppsCardV1OnClick(o.onClick! as api.GoogleAppsCardV1OnClick);
    checkGoogleAppsCardV1Icon(o.startIcon! as api.GoogleAppsCardV1Icon);
    checkGoogleAppsCardV1SwitchControl(
        o.switchControl! as api.GoogleAppsCardV1SwitchControl);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.wrapText!, unittest.isTrue);
  }
  buildCounterGoogleAppsCardV1DecoratedText--;
}

core.int buildCounterGoogleAppsCardV1Divider = 0;
api.GoogleAppsCardV1Divider buildGoogleAppsCardV1Divider() {
  var o = api.GoogleAppsCardV1Divider();
  buildCounterGoogleAppsCardV1Divider++;
  if (buildCounterGoogleAppsCardV1Divider < 3) {}
  buildCounterGoogleAppsCardV1Divider--;
  return o;
}

void checkGoogleAppsCardV1Divider(api.GoogleAppsCardV1Divider o) {
  buildCounterGoogleAppsCardV1Divider++;
  if (buildCounterGoogleAppsCardV1Divider < 3) {}
  buildCounterGoogleAppsCardV1Divider--;
}

core.List<api.GoogleAppsCardV1GridItem> buildUnnamed4131() {
  var o = <api.GoogleAppsCardV1GridItem>[];
  o.add(buildGoogleAppsCardV1GridItem());
  o.add(buildGoogleAppsCardV1GridItem());
  return o;
}

void checkUnnamed4131(core.List<api.GoogleAppsCardV1GridItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1GridItem(o[0] as api.GoogleAppsCardV1GridItem);
  checkGoogleAppsCardV1GridItem(o[1] as api.GoogleAppsCardV1GridItem);
}

core.int buildCounterGoogleAppsCardV1Grid = 0;
api.GoogleAppsCardV1Grid buildGoogleAppsCardV1Grid() {
  var o = api.GoogleAppsCardV1Grid();
  buildCounterGoogleAppsCardV1Grid++;
  if (buildCounterGoogleAppsCardV1Grid < 3) {
    o.borderStyle = buildGoogleAppsCardV1BorderStyle();
    o.columnCount = 42;
    o.items = buildUnnamed4131();
    o.onClick = buildGoogleAppsCardV1OnClick();
    o.title = 'foo';
  }
  buildCounterGoogleAppsCardV1Grid--;
  return o;
}

void checkGoogleAppsCardV1Grid(api.GoogleAppsCardV1Grid o) {
  buildCounterGoogleAppsCardV1Grid++;
  if (buildCounterGoogleAppsCardV1Grid < 3) {
    checkGoogleAppsCardV1BorderStyle(
        o.borderStyle! as api.GoogleAppsCardV1BorderStyle);
    unittest.expect(
      o.columnCount!,
      unittest.equals(42),
    );
    checkUnnamed4131(o.items!);
    checkGoogleAppsCardV1OnClick(o.onClick! as api.GoogleAppsCardV1OnClick);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1Grid--;
}

core.int buildCounterGoogleAppsCardV1GridItem = 0;
api.GoogleAppsCardV1GridItem buildGoogleAppsCardV1GridItem() {
  var o = api.GoogleAppsCardV1GridItem();
  buildCounterGoogleAppsCardV1GridItem++;
  if (buildCounterGoogleAppsCardV1GridItem < 3) {
    o.id = 'foo';
    o.image = buildGoogleAppsCardV1ImageComponent();
    o.layout = 'foo';
    o.subtitle = 'foo';
    o.textAlignment = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleAppsCardV1GridItem--;
  return o;
}

void checkGoogleAppsCardV1GridItem(api.GoogleAppsCardV1GridItem o) {
  buildCounterGoogleAppsCardV1GridItem++;
  if (buildCounterGoogleAppsCardV1GridItem < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1ImageComponent(
        o.image! as api.GoogleAppsCardV1ImageComponent);
    unittest.expect(
      o.layout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subtitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.textAlignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1GridItem--;
}

core.int buildCounterGoogleAppsCardV1Icon = 0;
api.GoogleAppsCardV1Icon buildGoogleAppsCardV1Icon() {
  var o = api.GoogleAppsCardV1Icon();
  buildCounterGoogleAppsCardV1Icon++;
  if (buildCounterGoogleAppsCardV1Icon < 3) {
    o.altText = 'foo';
    o.iconUrl = 'foo';
    o.imageType = 'foo';
    o.knownIcon = 'foo';
  }
  buildCounterGoogleAppsCardV1Icon--;
  return o;
}

void checkGoogleAppsCardV1Icon(api.GoogleAppsCardV1Icon o) {
  buildCounterGoogleAppsCardV1Icon++;
  if (buildCounterGoogleAppsCardV1Icon < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.knownIcon!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1Icon--;
}

core.int buildCounterGoogleAppsCardV1Image = 0;
api.GoogleAppsCardV1Image buildGoogleAppsCardV1Image() {
  var o = api.GoogleAppsCardV1Image();
  buildCounterGoogleAppsCardV1Image++;
  if (buildCounterGoogleAppsCardV1Image < 3) {
    o.altText = 'foo';
    o.imageUrl = 'foo';
    o.onClick = buildGoogleAppsCardV1OnClick();
  }
  buildCounterGoogleAppsCardV1Image--;
  return o;
}

void checkGoogleAppsCardV1Image(api.GoogleAppsCardV1Image o) {
  buildCounterGoogleAppsCardV1Image++;
  if (buildCounterGoogleAppsCardV1Image < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1OnClick(o.onClick! as api.GoogleAppsCardV1OnClick);
  }
  buildCounterGoogleAppsCardV1Image--;
}

core.int buildCounterGoogleAppsCardV1ImageComponent = 0;
api.GoogleAppsCardV1ImageComponent buildGoogleAppsCardV1ImageComponent() {
  var o = api.GoogleAppsCardV1ImageComponent();
  buildCounterGoogleAppsCardV1ImageComponent++;
  if (buildCounterGoogleAppsCardV1ImageComponent < 3) {
    o.altText = 'foo';
    o.borderStyle = buildGoogleAppsCardV1BorderStyle();
    o.cropStyle = buildGoogleAppsCardV1ImageCropStyle();
    o.imageUri = 'foo';
  }
  buildCounterGoogleAppsCardV1ImageComponent--;
  return o;
}

void checkGoogleAppsCardV1ImageComponent(api.GoogleAppsCardV1ImageComponent o) {
  buildCounterGoogleAppsCardV1ImageComponent++;
  if (buildCounterGoogleAppsCardV1ImageComponent < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1BorderStyle(
        o.borderStyle! as api.GoogleAppsCardV1BorderStyle);
    checkGoogleAppsCardV1ImageCropStyle(
        o.cropStyle! as api.GoogleAppsCardV1ImageCropStyle);
    unittest.expect(
      o.imageUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1ImageComponent--;
}

core.int buildCounterGoogleAppsCardV1ImageCropStyle = 0;
api.GoogleAppsCardV1ImageCropStyle buildGoogleAppsCardV1ImageCropStyle() {
  var o = api.GoogleAppsCardV1ImageCropStyle();
  buildCounterGoogleAppsCardV1ImageCropStyle++;
  if (buildCounterGoogleAppsCardV1ImageCropStyle < 3) {
    o.aspectRatio = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleAppsCardV1ImageCropStyle--;
  return o;
}

void checkGoogleAppsCardV1ImageCropStyle(api.GoogleAppsCardV1ImageCropStyle o) {
  buildCounterGoogleAppsCardV1ImageCropStyle++;
  if (buildCounterGoogleAppsCardV1ImageCropStyle < 3) {
    unittest.expect(
      o.aspectRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1ImageCropStyle--;
}

core.int buildCounterGoogleAppsCardV1OnClick = 0;
api.GoogleAppsCardV1OnClick buildGoogleAppsCardV1OnClick() {
  var o = api.GoogleAppsCardV1OnClick();
  buildCounterGoogleAppsCardV1OnClick++;
  if (buildCounterGoogleAppsCardV1OnClick < 3) {
    o.action = buildGoogleAppsCardV1Action();
    o.card = buildGoogleAppsCardV1Card();
    o.openDynamicLinkAction = buildGoogleAppsCardV1Action();
    o.openLink = buildGoogleAppsCardV1OpenLink();
  }
  buildCounterGoogleAppsCardV1OnClick--;
  return o;
}

void checkGoogleAppsCardV1OnClick(api.GoogleAppsCardV1OnClick o) {
  buildCounterGoogleAppsCardV1OnClick++;
  if (buildCounterGoogleAppsCardV1OnClick < 3) {
    checkGoogleAppsCardV1Action(o.action! as api.GoogleAppsCardV1Action);
    checkGoogleAppsCardV1Card(o.card! as api.GoogleAppsCardV1Card);
    checkGoogleAppsCardV1Action(
        o.openDynamicLinkAction! as api.GoogleAppsCardV1Action);
    checkGoogleAppsCardV1OpenLink(o.openLink! as api.GoogleAppsCardV1OpenLink);
  }
  buildCounterGoogleAppsCardV1OnClick--;
}

core.int buildCounterGoogleAppsCardV1OpenLink = 0;
api.GoogleAppsCardV1OpenLink buildGoogleAppsCardV1OpenLink() {
  var o = api.GoogleAppsCardV1OpenLink();
  buildCounterGoogleAppsCardV1OpenLink++;
  if (buildCounterGoogleAppsCardV1OpenLink < 3) {
    o.onClose = 'foo';
    o.openAs = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleAppsCardV1OpenLink--;
  return o;
}

void checkGoogleAppsCardV1OpenLink(api.GoogleAppsCardV1OpenLink o) {
  buildCounterGoogleAppsCardV1OpenLink++;
  if (buildCounterGoogleAppsCardV1OpenLink < 3) {
    unittest.expect(
      o.onClose!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.openAs!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1OpenLink--;
}

core.List<api.GoogleAppsCardV1Widget> buildUnnamed4132() {
  var o = <api.GoogleAppsCardV1Widget>[];
  o.add(buildGoogleAppsCardV1Widget());
  o.add(buildGoogleAppsCardV1Widget());
  return o;
}

void checkUnnamed4132(core.List<api.GoogleAppsCardV1Widget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1Widget(o[0] as api.GoogleAppsCardV1Widget);
  checkGoogleAppsCardV1Widget(o[1] as api.GoogleAppsCardV1Widget);
}

core.int buildCounterGoogleAppsCardV1Section = 0;
api.GoogleAppsCardV1Section buildGoogleAppsCardV1Section() {
  var o = api.GoogleAppsCardV1Section();
  buildCounterGoogleAppsCardV1Section++;
  if (buildCounterGoogleAppsCardV1Section < 3) {
    o.collapsible = true;
    o.header = 'foo';
    o.uncollapsibleWidgetsCount = 42;
    o.widgets = buildUnnamed4132();
  }
  buildCounterGoogleAppsCardV1Section--;
  return o;
}

void checkGoogleAppsCardV1Section(api.GoogleAppsCardV1Section o) {
  buildCounterGoogleAppsCardV1Section++;
  if (buildCounterGoogleAppsCardV1Section < 3) {
    unittest.expect(o.collapsible!, unittest.isTrue);
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uncollapsibleWidgetsCount!,
      unittest.equals(42),
    );
    checkUnnamed4132(o.widgets!);
  }
  buildCounterGoogleAppsCardV1Section--;
}

core.List<api.GoogleAppsCardV1SelectionItem> buildUnnamed4133() {
  var o = <api.GoogleAppsCardV1SelectionItem>[];
  o.add(buildGoogleAppsCardV1SelectionItem());
  o.add(buildGoogleAppsCardV1SelectionItem());
  return o;
}

void checkUnnamed4133(core.List<api.GoogleAppsCardV1SelectionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1SelectionItem(o[0] as api.GoogleAppsCardV1SelectionItem);
  checkGoogleAppsCardV1SelectionItem(o[1] as api.GoogleAppsCardV1SelectionItem);
}

core.int buildCounterGoogleAppsCardV1SelectionInput = 0;
api.GoogleAppsCardV1SelectionInput buildGoogleAppsCardV1SelectionInput() {
  var o = api.GoogleAppsCardV1SelectionInput();
  buildCounterGoogleAppsCardV1SelectionInput++;
  if (buildCounterGoogleAppsCardV1SelectionInput < 3) {
    o.items = buildUnnamed4133();
    o.label = 'foo';
    o.name = 'foo';
    o.onChangeAction = buildGoogleAppsCardV1Action();
    o.type = 'foo';
  }
  buildCounterGoogleAppsCardV1SelectionInput--;
  return o;
}

void checkGoogleAppsCardV1SelectionInput(api.GoogleAppsCardV1SelectionInput o) {
  buildCounterGoogleAppsCardV1SelectionInput++;
  if (buildCounterGoogleAppsCardV1SelectionInput < 3) {
    checkUnnamed4133(o.items!);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Action(
        o.onChangeAction! as api.GoogleAppsCardV1Action);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1SelectionInput--;
}

core.int buildCounterGoogleAppsCardV1SelectionItem = 0;
api.GoogleAppsCardV1SelectionItem buildGoogleAppsCardV1SelectionItem() {
  var o = api.GoogleAppsCardV1SelectionItem();
  buildCounterGoogleAppsCardV1SelectionItem++;
  if (buildCounterGoogleAppsCardV1SelectionItem < 3) {
    o.selected = true;
    o.text = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAppsCardV1SelectionItem--;
  return o;
}

void checkGoogleAppsCardV1SelectionItem(api.GoogleAppsCardV1SelectionItem o) {
  buildCounterGoogleAppsCardV1SelectionItem++;
  if (buildCounterGoogleAppsCardV1SelectionItem < 3) {
    unittest.expect(o.selected!, unittest.isTrue);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1SelectionItem--;
}

core.int buildCounterGoogleAppsCardV1SuggestionItem = 0;
api.GoogleAppsCardV1SuggestionItem buildGoogleAppsCardV1SuggestionItem() {
  var o = api.GoogleAppsCardV1SuggestionItem();
  buildCounterGoogleAppsCardV1SuggestionItem++;
  if (buildCounterGoogleAppsCardV1SuggestionItem < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleAppsCardV1SuggestionItem--;
  return o;
}

void checkGoogleAppsCardV1SuggestionItem(api.GoogleAppsCardV1SuggestionItem o) {
  buildCounterGoogleAppsCardV1SuggestionItem++;
  if (buildCounterGoogleAppsCardV1SuggestionItem < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1SuggestionItem--;
}

core.List<api.GoogleAppsCardV1SuggestionItem> buildUnnamed4134() {
  var o = <api.GoogleAppsCardV1SuggestionItem>[];
  o.add(buildGoogleAppsCardV1SuggestionItem());
  o.add(buildGoogleAppsCardV1SuggestionItem());
  return o;
}

void checkUnnamed4134(core.List<api.GoogleAppsCardV1SuggestionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCardV1SuggestionItem(
      o[0] as api.GoogleAppsCardV1SuggestionItem);
  checkGoogleAppsCardV1SuggestionItem(
      o[1] as api.GoogleAppsCardV1SuggestionItem);
}

core.int buildCounterGoogleAppsCardV1Suggestions = 0;
api.GoogleAppsCardV1Suggestions buildGoogleAppsCardV1Suggestions() {
  var o = api.GoogleAppsCardV1Suggestions();
  buildCounterGoogleAppsCardV1Suggestions++;
  if (buildCounterGoogleAppsCardV1Suggestions < 3) {
    o.items = buildUnnamed4134();
  }
  buildCounterGoogleAppsCardV1Suggestions--;
  return o;
}

void checkGoogleAppsCardV1Suggestions(api.GoogleAppsCardV1Suggestions o) {
  buildCounterGoogleAppsCardV1Suggestions++;
  if (buildCounterGoogleAppsCardV1Suggestions < 3) {
    checkUnnamed4134(o.items!);
  }
  buildCounterGoogleAppsCardV1Suggestions--;
}

core.int buildCounterGoogleAppsCardV1SwitchControl = 0;
api.GoogleAppsCardV1SwitchControl buildGoogleAppsCardV1SwitchControl() {
  var o = api.GoogleAppsCardV1SwitchControl();
  buildCounterGoogleAppsCardV1SwitchControl++;
  if (buildCounterGoogleAppsCardV1SwitchControl < 3) {
    o.controlType = 'foo';
    o.name = 'foo';
    o.onChangeAction = buildGoogleAppsCardV1Action();
    o.selected = true;
    o.value = 'foo';
  }
  buildCounterGoogleAppsCardV1SwitchControl--;
  return o;
}

void checkGoogleAppsCardV1SwitchControl(api.GoogleAppsCardV1SwitchControl o) {
  buildCounterGoogleAppsCardV1SwitchControl++;
  if (buildCounterGoogleAppsCardV1SwitchControl < 3) {
    unittest.expect(
      o.controlType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Action(
        o.onChangeAction! as api.GoogleAppsCardV1Action);
    unittest.expect(o.selected!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1SwitchControl--;
}

core.int buildCounterGoogleAppsCardV1TextInput = 0;
api.GoogleAppsCardV1TextInput buildGoogleAppsCardV1TextInput() {
  var o = api.GoogleAppsCardV1TextInput();
  buildCounterGoogleAppsCardV1TextInput++;
  if (buildCounterGoogleAppsCardV1TextInput < 3) {
    o.autoCompleteAction = buildGoogleAppsCardV1Action();
    o.hintText = 'foo';
    o.initialSuggestions = buildGoogleAppsCardV1Suggestions();
    o.label = 'foo';
    o.name = 'foo';
    o.onChangeAction = buildGoogleAppsCardV1Action();
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleAppsCardV1TextInput--;
  return o;
}

void checkGoogleAppsCardV1TextInput(api.GoogleAppsCardV1TextInput o) {
  buildCounterGoogleAppsCardV1TextInput++;
  if (buildCounterGoogleAppsCardV1TextInput < 3) {
    checkGoogleAppsCardV1Action(
        o.autoCompleteAction! as api.GoogleAppsCardV1Action);
    unittest.expect(
      o.hintText!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Suggestions(
        o.initialSuggestions! as api.GoogleAppsCardV1Suggestions);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Action(
        o.onChangeAction! as api.GoogleAppsCardV1Action);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1TextInput--;
}

core.int buildCounterGoogleAppsCardV1TextParagraph = 0;
api.GoogleAppsCardV1TextParagraph buildGoogleAppsCardV1TextParagraph() {
  var o = api.GoogleAppsCardV1TextParagraph();
  buildCounterGoogleAppsCardV1TextParagraph++;
  if (buildCounterGoogleAppsCardV1TextParagraph < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleAppsCardV1TextParagraph--;
  return o;
}

void checkGoogleAppsCardV1TextParagraph(api.GoogleAppsCardV1TextParagraph o) {
  buildCounterGoogleAppsCardV1TextParagraph++;
  if (buildCounterGoogleAppsCardV1TextParagraph < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCardV1TextParagraph--;
}

core.int buildCounterGoogleAppsCardV1Widget = 0;
api.GoogleAppsCardV1Widget buildGoogleAppsCardV1Widget() {
  var o = api.GoogleAppsCardV1Widget();
  buildCounterGoogleAppsCardV1Widget++;
  if (buildCounterGoogleAppsCardV1Widget < 3) {
    o.buttonList = buildGoogleAppsCardV1ButtonList();
    o.dateTimePicker = buildGoogleAppsCardV1DateTimePicker();
    o.decoratedText = buildGoogleAppsCardV1DecoratedText();
    o.divider = buildGoogleAppsCardV1Divider();
    o.grid = buildGoogleAppsCardV1Grid();
    o.horizontalAlignment = 'foo';
    o.image = buildGoogleAppsCardV1Image();
    o.selectionInput = buildGoogleAppsCardV1SelectionInput();
    o.textInput = buildGoogleAppsCardV1TextInput();
    o.textParagraph = buildGoogleAppsCardV1TextParagraph();
  }
  buildCounterGoogleAppsCardV1Widget--;
  return o;
}

void checkGoogleAppsCardV1Widget(api.GoogleAppsCardV1Widget o) {
  buildCounterGoogleAppsCardV1Widget++;
  if (buildCounterGoogleAppsCardV1Widget < 3) {
    checkGoogleAppsCardV1ButtonList(
        o.buttonList! as api.GoogleAppsCardV1ButtonList);
    checkGoogleAppsCardV1DateTimePicker(
        o.dateTimePicker! as api.GoogleAppsCardV1DateTimePicker);
    checkGoogleAppsCardV1DecoratedText(
        o.decoratedText! as api.GoogleAppsCardV1DecoratedText);
    checkGoogleAppsCardV1Divider(o.divider! as api.GoogleAppsCardV1Divider);
    checkGoogleAppsCardV1Grid(o.grid! as api.GoogleAppsCardV1Grid);
    unittest.expect(
      o.horizontalAlignment!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCardV1Image(o.image! as api.GoogleAppsCardV1Image);
    checkGoogleAppsCardV1SelectionInput(
        o.selectionInput! as api.GoogleAppsCardV1SelectionInput);
    checkGoogleAppsCardV1TextInput(
        o.textInput! as api.GoogleAppsCardV1TextInput);
    checkGoogleAppsCardV1TextParagraph(
        o.textParagraph! as api.GoogleAppsCardV1TextParagraph);
  }
  buildCounterGoogleAppsCardV1Widget--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  var o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.aspectRatio = 42.0;
    o.imageUrl = 'foo';
    o.onClick = buildOnClick();
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.aspectRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkOnClick(o.onClick! as api.OnClick);
  }
  buildCounterImage--;
}

core.int buildCounterImageButton = 0;
api.ImageButton buildImageButton() {
  var o = api.ImageButton();
  buildCounterImageButton++;
  if (buildCounterImageButton < 3) {
    o.icon = 'foo';
    o.iconUrl = 'foo';
    o.name = 'foo';
    o.onClick = buildOnClick();
  }
  buildCounterImageButton--;
  return o;
}

void checkImageButton(api.ImageButton o) {
  buildCounterImageButton++;
  if (buildCounterImageButton < 3) {
    unittest.expect(
      o.icon!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOnClick(o.onClick! as api.OnClick);
  }
  buildCounterImageButton--;
}

core.int buildCounterKeyValue = 0;
api.KeyValue buildKeyValue() {
  var o = api.KeyValue();
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    o.bottomLabel = 'foo';
    o.button = buildButton();
    o.content = 'foo';
    o.contentMultiline = true;
    o.icon = 'foo';
    o.iconUrl = 'foo';
    o.onClick = buildOnClick();
    o.topLabel = 'foo';
  }
  buildCounterKeyValue--;
  return o;
}

void checkKeyValue(api.KeyValue o) {
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    unittest.expect(
      o.bottomLabel!,
      unittest.equals('foo'),
    );
    checkButton(o.button! as api.Button);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(o.contentMultiline!, unittest.isTrue);
    unittest.expect(
      o.icon!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    checkOnClick(o.onClick! as api.OnClick);
    unittest.expect(
      o.topLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyValue--;
}

core.List<api.Membership> buildUnnamed4135() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed4135(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0] as api.Membership);
  checkMembership(o[1] as api.Membership);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  var o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed4135();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed4135(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Space> buildUnnamed4136() {
  var o = <api.Space>[];
  o.add(buildSpace());
  o.add(buildSpace());
  return o;
}

void checkUnnamed4136(core.List<api.Space> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpace(o[0] as api.Space);
  checkSpace(o[1] as api.Space);
}

core.int buildCounterListSpacesResponse = 0;
api.ListSpacesResponse buildListSpacesResponse() {
  var o = api.ListSpacesResponse();
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spaces = buildUnnamed4136();
  }
  buildCounterListSpacesResponse--;
  return o;
}

void checkListSpacesResponse(api.ListSpacesResponse o) {
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4136(o.spaces!);
  }
  buildCounterListSpacesResponse--;
}

core.int buildCounterMedia = 0;
api.Media buildMedia() {
  var o = api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.resourceName = 'foo';
  }
  buildCounterMedia--;
  return o;
}

void checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    unittest.expect(
      o.resourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMedia--;
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  var o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = 'foo';
    o.member = buildUser();
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUser(o.member! as api.User);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembership--;
}

core.List<api.Annotation> buildUnnamed4137() {
  var o = <api.Annotation>[];
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

void checkUnnamed4137(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0] as api.Annotation);
  checkAnnotation(o[1] as api.Annotation);
}

core.List<api.Attachment> buildUnnamed4138() {
  var o = <api.Attachment>[];
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

void checkUnnamed4138(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0] as api.Attachment);
  checkAttachment(o[1] as api.Attachment);
}

core.List<api.Card> buildUnnamed4139() {
  var o = <api.Card>[];
  o.add(buildCard());
  o.add(buildCard());
  return o;
}

void checkUnnamed4139(core.List<api.Card> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCard(o[0] as api.Card);
  checkCard(o[1] as api.Card);
}

core.List<api.CardWithId> buildUnnamed4140() {
  var o = <api.CardWithId>[];
  o.add(buildCardWithId());
  o.add(buildCardWithId());
  return o;
}

void checkUnnamed4140(core.List<api.CardWithId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardWithId(o[0] as api.CardWithId);
  checkCardWithId(o[1] as api.CardWithId);
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  var o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.actionResponse = buildActionResponse();
    o.annotations = buildUnnamed4137();
    o.argumentText = 'foo';
    o.attachment = buildUnnamed4138();
    o.cards = buildUnnamed4139();
    o.cardsV2 = buildUnnamed4140();
    o.createTime = 'foo';
    o.fallbackText = 'foo';
    o.name = 'foo';
    o.previewText = 'foo';
    o.sender = buildUser();
    o.slashCommand = buildSlashCommand();
    o.space = buildSpace();
    o.text = 'foo';
    o.thread = buildThread();
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkActionResponse(o.actionResponse! as api.ActionResponse);
    checkUnnamed4137(o.annotations!);
    unittest.expect(
      o.argumentText!,
      unittest.equals('foo'),
    );
    checkUnnamed4138(o.attachment!);
    checkUnnamed4139(o.cards!);
    checkUnnamed4140(o.cardsV2!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fallbackText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previewText!,
      unittest.equals('foo'),
    );
    checkUser(o.sender! as api.User);
    checkSlashCommand(o.slashCommand! as api.SlashCommand);
    checkSpace(o.space! as api.Space);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkThread(o.thread! as api.Thread);
  }
  buildCounterMessage--;
}

core.int buildCounterOnClick = 0;
api.OnClick buildOnClick() {
  var o = api.OnClick();
  buildCounterOnClick++;
  if (buildCounterOnClick < 3) {
    o.action = buildFormAction();
    o.openLink = buildOpenLink();
  }
  buildCounterOnClick--;
  return o;
}

void checkOnClick(api.OnClick o) {
  buildCounterOnClick++;
  if (buildCounterOnClick < 3) {
    checkFormAction(o.action! as api.FormAction);
    checkOpenLink(o.openLink! as api.OpenLink);
  }
  buildCounterOnClick--;
}

core.int buildCounterOpenLink = 0;
api.OpenLink buildOpenLink() {
  var o = api.OpenLink();
  buildCounterOpenLink++;
  if (buildCounterOpenLink < 3) {
    o.url = 'foo';
  }
  buildCounterOpenLink--;
  return o;
}

void checkOpenLink(api.OpenLink o) {
  buildCounterOpenLink++;
  if (buildCounterOpenLink < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterOpenLink--;
}

core.List<api.WidgetMarkup> buildUnnamed4141() {
  var o = <api.WidgetMarkup>[];
  o.add(buildWidgetMarkup());
  o.add(buildWidgetMarkup());
  return o;
}

void checkUnnamed4141(core.List<api.WidgetMarkup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidgetMarkup(o[0] as api.WidgetMarkup);
  checkWidgetMarkup(o[1] as api.WidgetMarkup);
}

core.int buildCounterSection = 0;
api.Section buildSection() {
  var o = api.Section();
  buildCounterSection++;
  if (buildCounterSection < 3) {
    o.header = 'foo';
    o.widgets = buildUnnamed4141();
  }
  buildCounterSection--;
  return o;
}

void checkSection(api.Section o) {
  buildCounterSection++;
  if (buildCounterSection < 3) {
    unittest.expect(
      o.header!,
      unittest.equals('foo'),
    );
    checkUnnamed4141(o.widgets!);
  }
  buildCounterSection--;
}

core.int buildCounterSlashCommand = 0;
api.SlashCommand buildSlashCommand() {
  var o = api.SlashCommand();
  buildCounterSlashCommand++;
  if (buildCounterSlashCommand < 3) {
    o.commandId = 'foo';
  }
  buildCounterSlashCommand--;
  return o;
}

void checkSlashCommand(api.SlashCommand o) {
  buildCounterSlashCommand++;
  if (buildCounterSlashCommand < 3) {
    unittest.expect(
      o.commandId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlashCommand--;
}

core.int buildCounterSlashCommandMetadata = 0;
api.SlashCommandMetadata buildSlashCommandMetadata() {
  var o = api.SlashCommandMetadata();
  buildCounterSlashCommandMetadata++;
  if (buildCounterSlashCommandMetadata < 3) {
    o.bot = buildUser();
    o.commandId = 'foo';
    o.commandName = 'foo';
    o.triggersDialog = true;
    o.type = 'foo';
  }
  buildCounterSlashCommandMetadata--;
  return o;
}

void checkSlashCommandMetadata(api.SlashCommandMetadata o) {
  buildCounterSlashCommandMetadata++;
  if (buildCounterSlashCommandMetadata < 3) {
    checkUser(o.bot! as api.User);
    unittest.expect(
      o.commandId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commandName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.triggersDialog!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlashCommandMetadata--;
}

core.int buildCounterSpace = 0;
api.Space buildSpace() {
  var o = api.Space();
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.singleUserBotDm = true;
    o.threaded = true;
    o.type = 'foo';
  }
  buildCounterSpace--;
  return o;
}

void checkSpace(api.Space o) {
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.singleUserBotDm!, unittest.isTrue);
    unittest.expect(o.threaded!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpace--;
}

core.int buildCounterTextButton = 0;
api.TextButton buildTextButton() {
  var o = api.TextButton();
  buildCounterTextButton++;
  if (buildCounterTextButton < 3) {
    o.onClick = buildOnClick();
    o.text = 'foo';
  }
  buildCounterTextButton--;
  return o;
}

void checkTextButton(api.TextButton o) {
  buildCounterTextButton++;
  if (buildCounterTextButton < 3) {
    checkOnClick(o.onClick! as api.OnClick);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextButton--;
}

core.int buildCounterTextParagraph = 0;
api.TextParagraph buildTextParagraph() {
  var o = api.TextParagraph();
  buildCounterTextParagraph++;
  if (buildCounterTextParagraph < 3) {
    o.text = 'foo';
  }
  buildCounterTextParagraph--;
  return o;
}

void checkTextParagraph(api.TextParagraph o) {
  buildCounterTextParagraph++;
  if (buildCounterTextParagraph < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextParagraph--;
}

core.int buildCounterThread = 0;
api.Thread buildThread() {
  var o = api.Thread();
  buildCounterThread++;
  if (buildCounterThread < 3) {
    o.name = 'foo';
  }
  buildCounterThread--;
  return o;
}

void checkThread(api.Thread o) {
  buildCounterThread++;
  if (buildCounterThread < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterThread--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = 'foo';
    o.domainId = 'foo';
    o.isAnonymous = true;
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domainId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isAnonymous!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.int buildCounterUserMentionMetadata = 0;
api.UserMentionMetadata buildUserMentionMetadata() {
  var o = api.UserMentionMetadata();
  buildCounterUserMentionMetadata++;
  if (buildCounterUserMentionMetadata < 3) {
    o.type = 'foo';
    o.user = buildUser();
  }
  buildCounterUserMentionMetadata--;
  return o;
}

void checkUserMentionMetadata(api.UserMentionMetadata o) {
  buildCounterUserMentionMetadata++;
  if (buildCounterUserMentionMetadata < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUser(o.user! as api.User);
  }
  buildCounterUserMentionMetadata--;
}

core.List<api.Button> buildUnnamed4142() {
  var o = <api.Button>[];
  o.add(buildButton());
  o.add(buildButton());
  return o;
}

void checkUnnamed4142(core.List<api.Button> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkButton(o[0] as api.Button);
  checkButton(o[1] as api.Button);
}

core.int buildCounterWidgetMarkup = 0;
api.WidgetMarkup buildWidgetMarkup() {
  var o = api.WidgetMarkup();
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    o.buttons = buildUnnamed4142();
    o.image = buildImage();
    o.keyValue = buildKeyValue();
    o.textParagraph = buildTextParagraph();
  }
  buildCounterWidgetMarkup--;
  return o;
}

void checkWidgetMarkup(api.WidgetMarkup o) {
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    checkUnnamed4142(o.buttons!);
    checkImage(o.image! as api.Image);
    checkKeyValue(o.keyValue! as api.KeyValue);
    checkTextParagraph(o.textParagraph! as api.TextParagraph);
  }
  buildCounterWidgetMarkup--;
}

void main() {
  unittest.group('obj-schema-ActionParameter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActionParameter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ActionParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionParameter(od as api.ActionParameter);
    });
  });

  unittest.group('obj-schema-ActionResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildActionResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ActionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionResponse(od as api.ActionResponse);
    });
  });

  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAnnotation();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Annotation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnnotation(od as api.Annotation);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttachment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od as api.Attachment);
    });
  });

  unittest.group('obj-schema-AttachmentDataRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAttachmentDataRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AttachmentDataRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachmentDataRef(od as api.AttachmentDataRef);
    });
  });

  unittest.group('obj-schema-Button', () {
    unittest.test('to-json--from-json', () async {
      var o = buildButton();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Button.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkButton(od as api.Button);
    });
  });

  unittest.group('obj-schema-Card', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCard();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Card.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCard(od as api.Card);
    });
  });

  unittest.group('obj-schema-CardAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCardAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CardAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCardAction(od as api.CardAction);
    });
  });

  unittest.group('obj-schema-CardHeader', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCardHeader();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CardHeader.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCardHeader(od as api.CardHeader);
    });
  });

  unittest.group('obj-schema-CardWithId', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCardWithId();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.CardWithId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCardWithId(od as api.CardWithId);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      var o = buildColor();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od as api.Color);
    });
  });

  unittest.group('obj-schema-DeprecatedEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDeprecatedEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DeprecatedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeprecatedEvent(od as api.DeprecatedEvent);
    });
  });

  unittest.group('obj-schema-DriveDataRef', () {
    unittest.test('to-json--from-json', () async {
      var o = buildDriveDataRef();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.DriveDataRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveDataRef(od as api.DriveDataRef);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmpty();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-FormAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildFormAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.FormAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFormAction(od as api.FormAction);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Action', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Action();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Action.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Action(od as api.GoogleAppsCardV1Action);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1ActionParameter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1ActionParameter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1ActionParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1ActionParameter(
          od as api.GoogleAppsCardV1ActionParameter);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1BorderStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1BorderStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1BorderStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1BorderStyle(od as api.GoogleAppsCardV1BorderStyle);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Button', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Button();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Button.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Button(od as api.GoogleAppsCardV1Button);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1ButtonList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1ButtonList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1ButtonList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1ButtonList(od as api.GoogleAppsCardV1ButtonList);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Card', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Card();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Card.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Card(od as api.GoogleAppsCardV1Card);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1CardAction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1CardAction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1CardAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1CardAction(od as api.GoogleAppsCardV1CardAction);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1CardFixedFooter', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1CardFixedFooter();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1CardFixedFooter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1CardFixedFooter(
          od as api.GoogleAppsCardV1CardFixedFooter);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1CardHeader', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1CardHeader();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1CardHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1CardHeader(od as api.GoogleAppsCardV1CardHeader);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1DateTimePicker', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1DateTimePicker();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1DateTimePicker.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1DateTimePicker(
          od as api.GoogleAppsCardV1DateTimePicker);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1DecoratedText', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1DecoratedText();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1DecoratedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1DecoratedText(
          od as api.GoogleAppsCardV1DecoratedText);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Divider', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Divider();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Divider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Divider(od as api.GoogleAppsCardV1Divider);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Grid', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Grid();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Grid.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Grid(od as api.GoogleAppsCardV1Grid);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1GridItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1GridItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1GridItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1GridItem(od as api.GoogleAppsCardV1GridItem);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Icon', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Icon();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Icon.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Icon(od as api.GoogleAppsCardV1Icon);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Image', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Image();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Image.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Image(od as api.GoogleAppsCardV1Image);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1ImageComponent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1ImageComponent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1ImageComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1ImageComponent(
          od as api.GoogleAppsCardV1ImageComponent);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1ImageCropStyle', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1ImageCropStyle();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1ImageCropStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1ImageCropStyle(
          od as api.GoogleAppsCardV1ImageCropStyle);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1OnClick', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1OnClick();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1OnClick.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1OnClick(od as api.GoogleAppsCardV1OnClick);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1OpenLink', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1OpenLink();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1OpenLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1OpenLink(od as api.GoogleAppsCardV1OpenLink);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Section', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Section();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Section.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Section(od as api.GoogleAppsCardV1Section);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1SelectionInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1SelectionInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1SelectionInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1SelectionInput(
          od as api.GoogleAppsCardV1SelectionInput);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1SelectionItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1SelectionItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1SelectionItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1SelectionItem(
          od as api.GoogleAppsCardV1SelectionItem);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1SuggestionItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1SuggestionItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1SuggestionItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1SuggestionItem(
          od as api.GoogleAppsCardV1SuggestionItem);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Suggestions', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Suggestions();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Suggestions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Suggestions(od as api.GoogleAppsCardV1Suggestions);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1SwitchControl', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1SwitchControl();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1SwitchControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1SwitchControl(
          od as api.GoogleAppsCardV1SwitchControl);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1TextInput', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1TextInput();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1TextInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1TextInput(od as api.GoogleAppsCardV1TextInput);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1TextParagraph', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1TextParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1TextParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1TextParagraph(
          od as api.GoogleAppsCardV1TextParagraph);
    });
  });

  unittest.group('obj-schema-GoogleAppsCardV1Widget', () {
    unittest.test('to-json--from-json', () async {
      var o = buildGoogleAppsCardV1Widget();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.GoogleAppsCardV1Widget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCardV1Widget(od as api.GoogleAppsCardV1Widget);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od as api.Image);
    });
  });

  unittest.group('obj-schema-ImageButton', () {
    unittest.test('to-json--from-json', () async {
      var o = buildImageButton();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ImageButton.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageButton(od as api.ImageButton);
    });
  });

  unittest.group('obj-schema-KeyValue', () {
    unittest.test('to-json--from-json', () async {
      var o = buildKeyValue();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.KeyValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyValue(od as api.KeyValue);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListMembershipsResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od as api.ListMembershipsResponse);
    });
  });

  unittest.group('obj-schema-ListSpacesResponse', () {
    unittest.test('to-json--from-json', () async {
      var o = buildListSpacesResponse();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ListSpacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSpacesResponse(od as api.ListSpacesResponse);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMedia();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Media.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMedia(od as api.Media);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMembership();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od as api.Membership);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMessage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od as api.Message);
    });
  });

  unittest.group('obj-schema-OnClick', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOnClick();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.OnClick.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOnClick(od as api.OnClick);
    });
  });

  unittest.group('obj-schema-OpenLink', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOpenLink();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.OpenLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOpenLink(od as api.OpenLink);
    });
  });

  unittest.group('obj-schema-Section', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Section.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSection(od as api.Section);
    });
  });

  unittest.group('obj-schema-SlashCommand', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSlashCommand();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SlashCommand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlashCommand(od as api.SlashCommand);
    });
  });

  unittest.group('obj-schema-SlashCommandMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSlashCommandMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SlashCommandMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlashCommandMetadata(od as api.SlashCommandMetadata);
    });
  });

  unittest.group('obj-schema-Space', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSpace();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Space.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpace(od as api.Space);
    });
  });

  unittest.group('obj-schema-TextButton', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextButton();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.TextButton.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextButton(od as api.TextButton);
    });
  });

  unittest.group('obj-schema-TextParagraph', () {
    unittest.test('to-json--from-json', () async {
      var o = buildTextParagraph();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.TextParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextParagraph(od as api.TextParagraph);
    });
  });

  unittest.group('obj-schema-Thread', () {
    unittest.test('to-json--from-json', () async {
      var o = buildThread();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Thread.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThread(od as api.Thread);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserMentionMetadata', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserMentionMetadata();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserMentionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserMentionMetadata(od as api.UserMentionMetadata);
    });
  });

  unittest.group('obj-schema-WidgetMarkup', () {
    unittest.test('to-json--from-json', () async {
      var o = buildWidgetMarkup();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.WidgetMarkup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWidgetMarkup(od as api.WidgetMarkup);
    });
  });

  unittest.group('resource-DmsResource', () {
    unittest.test('method--messages', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).dms;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--webhooks', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).dms;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-DmsConversationsResource', () {
    unittest.test('method--messages', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).dms.conversations;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).media;
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/media/"),
        );
        pathOffset += 9;
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.download(arg_resourceName, $fields: arg_$fields);
      checkMedia(response as api.Media);
    });
  });

  unittest.group('resource-RoomsResource', () {
    unittest.test('method--messages', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).rooms;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--webhooks', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).rooms;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-RoomsConversationsResource', () {
    unittest.test('method--messages', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).rooms.conversations;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSpace(response as api.Space);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces;
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("v1/spaces"),
        );
        pathOffset += 9;

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSpacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSpacesResponse(response as api.ListSpacesResponse);
    });

    unittest.test('method--webhooks', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesMembersResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.members;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--list', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.members;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListMembershipsResponse(response as api.ListMembershipsResponse);
    });
  });

  unittest.group('resource-SpacesMessagesResource', () {
    unittest.test('method--create', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["threadKey"]!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--delete', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.messages;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.messages;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--update', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj as api.Message);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesMessagesAttachmentsResource', () {
    unittest.test('method--get', () async {
      var mock = HttpServerMock();
      var res = api.HangoutsChatApi(mock).spaces.messages.attachments;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });
}
