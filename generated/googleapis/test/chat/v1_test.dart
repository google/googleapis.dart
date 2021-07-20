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

import 'package:googleapis/chat/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActionParameter = 0;
api.ActionParameter buildActionParameter() {
  final o = api.ActionParameter();
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
  final o = api.ActionResponse();
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
  final o = api.Annotation();
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
    checkSlashCommandMetadata(o.slashCommand!);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkUserMentionMetadata(o.userMention!);
  }
  buildCounterAnnotation--;
}

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  final o = api.Attachment();
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
    checkAttachmentDataRef(o.attachmentDataRef!);
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
    checkDriveDataRef(o.driveDataRef!);
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
  final o = api.AttachmentDataRef();
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
  final o = api.Button();
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
    checkImageButton(o.imageButton!);
    checkTextButton(o.textButton!);
  }
  buildCounterButton--;
}

core.List<api.CardAction> buildUnnamed4158() => [
      buildCardAction(),
      buildCardAction(),
    ];

void checkUnnamed4158(core.List<api.CardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardAction(o[0]);
  checkCardAction(o[1]);
}

core.List<api.Section> buildUnnamed4159() => [
      buildSection(),
      buildSection(),
    ];

void checkUnnamed4159(core.List<api.Section> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSection(o[0]);
  checkSection(o[1]);
}

core.int buildCounterCard = 0;
api.Card buildCard() {
  final o = api.Card();
  buildCounterCard++;
  if (buildCounterCard < 3) {
    o.cardActions = buildUnnamed4158();
    o.header = buildCardHeader();
    o.name = 'foo';
    o.sections = buildUnnamed4159();
  }
  buildCounterCard--;
  return o;
}

void checkCard(api.Card o) {
  buildCounterCard++;
  if (buildCounterCard < 3) {
    checkUnnamed4158(o.cardActions!);
    checkCardHeader(o.header!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed4159(o.sections!);
  }
  buildCounterCard--;
}

core.int buildCounterCardAction = 0;
api.CardAction buildCardAction() {
  final o = api.CardAction();
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
    checkOnClick(o.onClick!);
  }
  buildCounterCardAction--;
}

core.int buildCounterCardHeader = 0;
api.CardHeader buildCardHeader() {
  final o = api.CardHeader();
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

core.int buildCounterDeprecatedEvent = 0;
api.DeprecatedEvent buildDeprecatedEvent() {
  final o = api.DeprecatedEvent();
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
    checkFormAction(o.action!);
    unittest.expect(
      o.configCompleteRedirectUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventTime!,
      unittest.equals('foo'),
    );
    checkMessage(o.message!);
    checkSpace(o.space!);
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
    checkUser(o.user!);
  }
  buildCounterDeprecatedEvent--;
}

core.int buildCounterDriveDataRef = 0;
api.DriveDataRef buildDriveDataRef() {
  final o = api.DriveDataRef();
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

core.List<api.ActionParameter> buildUnnamed4160() => [
      buildActionParameter(),
      buildActionParameter(),
    ];

void checkUnnamed4160(core.List<api.ActionParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionParameter(o[0]);
  checkActionParameter(o[1]);
}

core.int buildCounterFormAction = 0;
api.FormAction buildFormAction() {
  final o = api.FormAction();
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    o.actionMethodName = 'foo';
    o.parameters = buildUnnamed4160();
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
    checkUnnamed4160(o.parameters!);
  }
  buildCounterFormAction--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
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
    checkOnClick(o.onClick!);
  }
  buildCounterImage--;
}

core.int buildCounterImageButton = 0;
api.ImageButton buildImageButton() {
  final o = api.ImageButton();
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
    checkOnClick(o.onClick!);
  }
  buildCounterImageButton--;
}

core.int buildCounterKeyValue = 0;
api.KeyValue buildKeyValue() {
  final o = api.KeyValue();
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
    checkButton(o.button!);
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
    checkOnClick(o.onClick!);
    unittest.expect(
      o.topLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyValue--;
}

core.List<api.Membership> buildUnnamed4161() => [
      buildMembership(),
      buildMembership(),
    ];

void checkUnnamed4161(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  final o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed4161();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed4161(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Space> buildUnnamed4162() => [
      buildSpace(),
      buildSpace(),
    ];

void checkUnnamed4162(core.List<api.Space> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpace(o[0]);
  checkSpace(o[1]);
}

core.int buildCounterListSpacesResponse = 0;
api.ListSpacesResponse buildListSpacesResponse() {
  final o = api.ListSpacesResponse();
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spaces = buildUnnamed4162();
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
    checkUnnamed4162(o.spaces!);
  }
  buildCounterListSpacesResponse--;
}

core.int buildCounterMedia = 0;
api.Media buildMedia() {
  final o = api.Media();
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
  final o = api.Membership();
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
    checkUser(o.member!);
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

core.List<api.Annotation> buildUnnamed4163() => [
      buildAnnotation(),
      buildAnnotation(),
    ];

void checkUnnamed4163(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

core.List<api.Attachment> buildUnnamed4164() => [
      buildAttachment(),
      buildAttachment(),
    ];

void checkUnnamed4164(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.List<api.Card> buildUnnamed4165() => [
      buildCard(),
      buildCard(),
    ];

void checkUnnamed4165(core.List<api.Card> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCard(o[0]);
  checkCard(o[1]);
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  final o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.actionResponse = buildActionResponse();
    o.annotations = buildUnnamed4163();
    o.argumentText = 'foo';
    o.attachment = buildUnnamed4164();
    o.cards = buildUnnamed4165();
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
    checkActionResponse(o.actionResponse!);
    checkUnnamed4163(o.annotations!);
    unittest.expect(
      o.argumentText!,
      unittest.equals('foo'),
    );
    checkUnnamed4164(o.attachment!);
    checkUnnamed4165(o.cards!);
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
    checkUser(o.sender!);
    checkSlashCommand(o.slashCommand!);
    checkSpace(o.space!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    checkThread(o.thread!);
  }
  buildCounterMessage--;
}

core.int buildCounterOnClick = 0;
api.OnClick buildOnClick() {
  final o = api.OnClick();
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
    checkFormAction(o.action!);
    checkOpenLink(o.openLink!);
  }
  buildCounterOnClick--;
}

core.int buildCounterOpenLink = 0;
api.OpenLink buildOpenLink() {
  final o = api.OpenLink();
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

core.List<api.WidgetMarkup> buildUnnamed4166() => [
      buildWidgetMarkup(),
      buildWidgetMarkup(),
    ];

void checkUnnamed4166(core.List<api.WidgetMarkup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidgetMarkup(o[0]);
  checkWidgetMarkup(o[1]);
}

core.int buildCounterSection = 0;
api.Section buildSection() {
  final o = api.Section();
  buildCounterSection++;
  if (buildCounterSection < 3) {
    o.header = 'foo';
    o.widgets = buildUnnamed4166();
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
    checkUnnamed4166(o.widgets!);
  }
  buildCounterSection--;
}

core.int buildCounterSlashCommand = 0;
api.SlashCommand buildSlashCommand() {
  final o = api.SlashCommand();
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
  final o = api.SlashCommandMetadata();
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
    checkUser(o.bot!);
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
  final o = api.Space();
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
  final o = api.TextButton();
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
    checkOnClick(o.onClick!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextButton--;
}

core.int buildCounterTextParagraph = 0;
api.TextParagraph buildTextParagraph() {
  final o = api.TextParagraph();
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
  final o = api.Thread();
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
  final o = api.User();
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
  final o = api.UserMentionMetadata();
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
    checkUser(o.user!);
  }
  buildCounterUserMentionMetadata--;
}

core.List<api.Button> buildUnnamed4167() => [
      buildButton(),
      buildButton(),
    ];

void checkUnnamed4167(core.List<api.Button> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkButton(o[0]);
  checkButton(o[1]);
}

core.int buildCounterWidgetMarkup = 0;
api.WidgetMarkup buildWidgetMarkup() {
  final o = api.WidgetMarkup();
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    o.buttons = buildUnnamed4167();
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
    checkUnnamed4167(o.buttons!);
    checkImage(o.image!);
    checkKeyValue(o.keyValue!);
    checkTextParagraph(o.textParagraph!);
  }
  buildCounterWidgetMarkup--;
}

void main() {
  unittest.group('obj-schema-ActionParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionParameter(od);
    });
  });

  unittest.group('obj-schema-ActionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActionResponse(od);
    });
  });

  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnotation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Annotation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnnotation(od);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-AttachmentDataRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachmentDataRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttachmentDataRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttachmentDataRef(od);
    });
  });

  unittest.group('obj-schema-Button', () {
    unittest.test('to-json--from-json', () async {
      final o = buildButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Button.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkButton(od);
    });
  });

  unittest.group('obj-schema-Card', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Card.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCard(od);
    });
  });

  unittest.group('obj-schema-CardAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CardAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCardAction(od);
    });
  });

  unittest.group('obj-schema-CardHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CardHeader.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCardHeader(od);
    });
  });

  unittest.group('obj-schema-DeprecatedEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeprecatedEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeprecatedEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeprecatedEvent(od);
    });
  });

  unittest.group('obj-schema-DriveDataRef', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveDataRef();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveDataRef.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveDataRef(od);
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

  unittest.group('obj-schema-FormAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFormAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FormAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFormAction(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageButton', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageButton.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageButton(od);
    });
  });

  unittest.group('obj-schema-KeyValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyValue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyValue(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSpacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSpacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSpacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSpacesResponse(od);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Media.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMedia(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-OnClick', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOnClick();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OnClick.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOnClick(od);
    });
  });

  unittest.group('obj-schema-OpenLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OpenLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOpenLink(od);
    });
  });

  unittest.group('obj-schema-Section', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Section.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSection(od);
    });
  });

  unittest.group('obj-schema-SlashCommand', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlashCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlashCommand.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlashCommand(od);
    });
  });

  unittest.group('obj-schema-SlashCommandMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlashCommandMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlashCommandMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlashCommandMetadata(od);
    });
  });

  unittest.group('obj-schema-Space', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Space.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSpace(od);
    });
  });

  unittest.group('obj-schema-TextButton', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextButton.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextButton(od);
    });
  });

  unittest.group('obj-schema-TextParagraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextParagraph.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextParagraph(od);
    });
  });

  unittest.group('obj-schema-Thread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Thread.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThread(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserMentionMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserMentionMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserMentionMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserMentionMetadata(od);
    });
  });

  unittest.group('obj-schema-WidgetMarkup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWidgetMarkup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WidgetMarkup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWidgetMarkup(od);
    });
  });

  unittest.group('resource-DmsResource', () {
    unittest.test('method--messages', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).dms;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--webhooks', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).dms;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-DmsConversationsResource', () {
    unittest.test('method--messages', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).dms.conversations;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
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

      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).media;
      final arg_resourceName = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/media/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.download(arg_resourceName, $fields: arg_$fields);
      checkMedia(response as api.Media);
    });
  });

  unittest.group('resource-RoomsResource', () {
    unittest.test('method--messages', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).rooms;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--webhooks', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).rooms;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-RoomsConversationsResource', () {
    unittest.test('method--messages', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).rooms.conversations;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.messages(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces;
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
        final resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSpace(response as api.Space);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces;
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/spaces'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildListSpacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSpacesResponse(response as api.ListSpacesResponse);
    });

    unittest.test('method--webhooks', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.webhooks(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesMembersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.members;
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
        final resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.members;
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
        final resp = convert.json.encode(buildListMembershipsResponse());
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
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.messages;
      final arg_request = buildMessage();
      final arg_parent = 'foo';
      final arg_threadKey = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['threadKey']!.first,
          unittest.equals(arg_threadKey),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          threadKey: arg_threadKey, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.messages;
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
      final res = api.HangoutsChatApi(mock).spaces.messages;
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
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.messages;
      final arg_request = buildMessage();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Message.fromJson(json as core.Map<core.String, core.dynamic>);
        checkMessage(obj);

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkMessage(response as api.Message);
    });
  });

  unittest.group('resource-SpacesMessagesAttachmentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.HangoutsChatApi(mock).spaces.messages.attachments;
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
        final resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });
}
