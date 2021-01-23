// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
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

library googleapis.chat.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/chat/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

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
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
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
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
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
    unittest.expect(o.length, unittest.equals(42));
    checkSlashCommandMetadata(o.slashCommand);
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUserMentionMetadata(o.userMention);
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
    checkAttachmentDataRef(o.attachmentDataRef);
    unittest.expect(o.contentName, unittest.equals('foo'));
    unittest.expect(o.contentType, unittest.equals('foo'));
    unittest.expect(o.downloadUri, unittest.equals('foo'));
    checkDriveDataRef(o.driveDataRef);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.source, unittest.equals('foo'));
    unittest.expect(o.thumbnailUri, unittest.equals('foo'));
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
    unittest.expect(o.resourceName, unittest.equals('foo'));
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
    checkImageButton(o.imageButton);
    checkTextButton(o.textButton);
  }
  buildCounterButton--;
}

core.List<api.CardAction> buildUnnamed2960() {
  var o = <api.CardAction>[];
  o.add(buildCardAction());
  o.add(buildCardAction());
  return o;
}

void checkUnnamed2960(core.List<api.CardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardAction(o[0]);
  checkCardAction(o[1]);
}

core.List<api.Section> buildUnnamed2961() {
  var o = <api.Section>[];
  o.add(buildSection());
  o.add(buildSection());
  return o;
}

void checkUnnamed2961(core.List<api.Section> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSection(o[0]);
  checkSection(o[1]);
}

core.int buildCounterCard = 0;
api.Card buildCard() {
  var o = api.Card();
  buildCounterCard++;
  if (buildCounterCard < 3) {
    o.cardActions = buildUnnamed2960();
    o.header = buildCardHeader();
    o.name = 'foo';
    o.sections = buildUnnamed2961();
  }
  buildCounterCard--;
  return o;
}

void checkCard(api.Card o) {
  buildCounterCard++;
  if (buildCounterCard < 3) {
    checkUnnamed2960(o.cardActions);
    checkCardHeader(o.header);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2961(o.sections);
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
    unittest.expect(o.actionLabel, unittest.equals('foo'));
    checkOnClick(o.onClick);
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
    unittest.expect(o.imageStyle, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    unittest.expect(o.subtitle, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCardHeader--;
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
    checkFormAction(o.action);
    unittest.expect(o.configCompleteRedirectUrl, unittest.equals('foo'));
    unittest.expect(o.eventTime, unittest.equals('foo'));
    checkMessage(o.message);
    checkSpace(o.space);
    unittest.expect(o.threadKey, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUser(o.user);
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
    unittest.expect(o.driveFileId, unittest.equals('foo'));
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

core.List<api.ActionParameter> buildUnnamed2962() {
  var o = <api.ActionParameter>[];
  o.add(buildActionParameter());
  o.add(buildActionParameter());
  return o;
}

void checkUnnamed2962(core.List<api.ActionParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionParameter(o[0]);
  checkActionParameter(o[1]);
}

core.int buildCounterFormAction = 0;
api.FormAction buildFormAction() {
  var o = api.FormAction();
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    o.actionMethodName = 'foo';
    o.parameters = buildUnnamed2962();
  }
  buildCounterFormAction--;
  return o;
}

void checkFormAction(api.FormAction o) {
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    unittest.expect(o.actionMethodName, unittest.equals('foo'));
    checkUnnamed2962(o.parameters);
  }
  buildCounterFormAction--;
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
    unittest.expect(o.aspectRatio, unittest.equals(42.0));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkOnClick(o.onClick);
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
    unittest.expect(o.icon, unittest.equals('foo'));
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOnClick(o.onClick);
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
    unittest.expect(o.bottomLabel, unittest.equals('foo'));
    checkButton(o.button);
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.contentMultiline, unittest.isTrue);
    unittest.expect(o.icon, unittest.equals('foo'));
    unittest.expect(o.iconUrl, unittest.equals('foo'));
    checkOnClick(o.onClick);
    unittest.expect(o.topLabel, unittest.equals('foo'));
  }
  buildCounterKeyValue--;
}

core.List<api.Membership> buildUnnamed2963() {
  var o = <api.Membership>[];
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

void checkUnnamed2963(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  var o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed2963();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed2963(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.Space> buildUnnamed2964() {
  var o = <api.Space>[];
  o.add(buildSpace());
  o.add(buildSpace());
  return o;
}

void checkUnnamed2964(core.List<api.Space> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpace(o[0]);
  checkSpace(o[1]);
}

core.int buildCounterListSpacesResponse = 0;
api.ListSpacesResponse buildListSpacesResponse() {
  var o = api.ListSpacesResponse();
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    o.nextPageToken = 'foo';
    o.spaces = buildUnnamed2964();
  }
  buildCounterListSpacesResponse--;
  return o;
}

void checkListSpacesResponse(api.ListSpacesResponse o) {
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2964(o.spaces);
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
    unittest.expect(o.resourceName, unittest.equals('foo'));
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
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUser(o.member);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

core.List<api.Annotation> buildUnnamed2965() {
  var o = <api.Annotation>[];
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

void checkUnnamed2965(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

core.List<api.Attachment> buildUnnamed2966() {
  var o = <api.Attachment>[];
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

void checkUnnamed2966(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.List<api.Card> buildUnnamed2967() {
  var o = <api.Card>[];
  o.add(buildCard());
  o.add(buildCard());
  return o;
}

void checkUnnamed2967(core.List<api.Card> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCard(o[0]);
  checkCard(o[1]);
}

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  var o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.actionResponse = buildActionResponse();
    o.annotations = buildUnnamed2965();
    o.argumentText = 'foo';
    o.attachment = buildUnnamed2966();
    o.cards = buildUnnamed2967();
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
    checkActionResponse(o.actionResponse);
    checkUnnamed2965(o.annotations);
    unittest.expect(o.argumentText, unittest.equals('foo'));
    checkUnnamed2966(o.attachment);
    checkUnnamed2967(o.cards);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.fallbackText, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.previewText, unittest.equals('foo'));
    checkUser(o.sender);
    checkSlashCommand(o.slashCommand);
    checkSpace(o.space);
    unittest.expect(o.text, unittest.equals('foo'));
    checkThread(o.thread);
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
    checkFormAction(o.action);
    checkOpenLink(o.openLink);
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
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOpenLink--;
}

core.List<api.WidgetMarkup> buildUnnamed2968() {
  var o = <api.WidgetMarkup>[];
  o.add(buildWidgetMarkup());
  o.add(buildWidgetMarkup());
  return o;
}

void checkUnnamed2968(core.List<api.WidgetMarkup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidgetMarkup(o[0]);
  checkWidgetMarkup(o[1]);
}

core.int buildCounterSection = 0;
api.Section buildSection() {
  var o = api.Section();
  buildCounterSection++;
  if (buildCounterSection < 3) {
    o.header = 'foo';
    o.widgets = buildUnnamed2968();
  }
  buildCounterSection--;
  return o;
}

void checkSection(api.Section o) {
  buildCounterSection++;
  if (buildCounterSection < 3) {
    unittest.expect(o.header, unittest.equals('foo'));
    checkUnnamed2968(o.widgets);
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
    unittest.expect(o.commandId, unittest.equals('foo'));
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
    checkUser(o.bot);
    unittest.expect(o.commandId, unittest.equals('foo'));
    unittest.expect(o.commandName, unittest.equals('foo'));
    unittest.expect(o.triggersDialog, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
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
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.singleUserBotDm, unittest.isTrue);
    unittest.expect(o.threaded, unittest.isTrue);
    unittest.expect(o.type, unittest.equals('foo'));
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
    checkOnClick(o.onClick);
    unittest.expect(o.text, unittest.equals('foo'));
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
    unittest.expect(o.text, unittest.equals('foo'));
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
    unittest.expect(o.name, unittest.equals('foo'));
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
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.domainId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
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
    unittest.expect(o.type, unittest.equals('foo'));
    checkUser(o.user);
  }
  buildCounterUserMentionMetadata--;
}

core.List<api.Button> buildUnnamed2969() {
  var o = <api.Button>[];
  o.add(buildButton());
  o.add(buildButton());
  return o;
}

void checkUnnamed2969(core.List<api.Button> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkButton(o[0]);
  checkButton(o[1]);
}

core.int buildCounterWidgetMarkup = 0;
api.WidgetMarkup buildWidgetMarkup() {
  var o = api.WidgetMarkup();
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    o.buttons = buildUnnamed2969();
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
    checkUnnamed2969(o.buttons);
    checkImage(o.image);
    checkKeyValue(o.keyValue);
    checkTextParagraph(o.textParagraph);
  }
  buildCounterWidgetMarkup--;
}

void main() {
  unittest.group('obj-schema-ActionParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildActionParameter();
      var od = api.ActionParameter.fromJson(o.toJson());
      checkActionParameter(od);
    });
  });

  unittest.group('obj-schema-ActionResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildActionResponse();
      var od = api.ActionResponse.fromJson(o.toJson());
      checkActionResponse(od);
    });
  });

  unittest.group('obj-schema-Annotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildAnnotation();
      var od = api.Annotation.fromJson(o.toJson());
      checkAnnotation(od);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttachment();
      var od = api.Attachment.fromJson(o.toJson());
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-AttachmentDataRef', () {
    unittest.test('to-json--from-json', () {
      var o = buildAttachmentDataRef();
      var od = api.AttachmentDataRef.fromJson(o.toJson());
      checkAttachmentDataRef(od);
    });
  });

  unittest.group('obj-schema-Button', () {
    unittest.test('to-json--from-json', () {
      var o = buildButton();
      var od = api.Button.fromJson(o.toJson());
      checkButton(od);
    });
  });

  unittest.group('obj-schema-Card', () {
    unittest.test('to-json--from-json', () {
      var o = buildCard();
      var od = api.Card.fromJson(o.toJson());
      checkCard(od);
    });
  });

  unittest.group('obj-schema-CardAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildCardAction();
      var od = api.CardAction.fromJson(o.toJson());
      checkCardAction(od);
    });
  });

  unittest.group('obj-schema-CardHeader', () {
    unittest.test('to-json--from-json', () {
      var o = buildCardHeader();
      var od = api.CardHeader.fromJson(o.toJson());
      checkCardHeader(od);
    });
  });

  unittest.group('obj-schema-DeprecatedEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeprecatedEvent();
      var od = api.DeprecatedEvent.fromJson(o.toJson());
      checkDeprecatedEvent(od);
    });
  });

  unittest.group('obj-schema-DriveDataRef', () {
    unittest.test('to-json--from-json', () {
      var o = buildDriveDataRef();
      var od = api.DriveDataRef.fromJson(o.toJson());
      checkDriveDataRef(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-FormAction', () {
    unittest.test('to-json--from-json', () {
      var o = buildFormAction();
      var od = api.FormAction.fromJson(o.toJson());
      checkFormAction(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () {
      var o = buildImage();
      var od = api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageButton', () {
    unittest.test('to-json--from-json', () {
      var o = buildImageButton();
      var od = api.ImageButton.fromJson(o.toJson());
      checkImageButton(od);
    });
  });

  unittest.group('obj-schema-KeyValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyValue();
      var od = api.KeyValue.fromJson(o.toJson());
      checkKeyValue(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListMembershipsResponse();
      var od = api.ListMembershipsResponse.fromJson(o.toJson());
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSpacesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSpacesResponse();
      var od = api.ListSpacesResponse.fromJson(o.toJson());
      checkListSpacesResponse(od);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () {
      var o = buildMedia();
      var od = api.Media.fromJson(o.toJson());
      checkMedia(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () {
      var o = buildMembership();
      var od = api.Membership.fromJson(o.toJson());
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () {
      var o = buildMessage();
      var od = api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group('obj-schema-OnClick', () {
    unittest.test('to-json--from-json', () {
      var o = buildOnClick();
      var od = api.OnClick.fromJson(o.toJson());
      checkOnClick(od);
    });
  });

  unittest.group('obj-schema-OpenLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildOpenLink();
      var od = api.OpenLink.fromJson(o.toJson());
      checkOpenLink(od);
    });
  });

  unittest.group('obj-schema-Section', () {
    unittest.test('to-json--from-json', () {
      var o = buildSection();
      var od = api.Section.fromJson(o.toJson());
      checkSection(od);
    });
  });

  unittest.group('obj-schema-SlashCommand', () {
    unittest.test('to-json--from-json', () {
      var o = buildSlashCommand();
      var od = api.SlashCommand.fromJson(o.toJson());
      checkSlashCommand(od);
    });
  });

  unittest.group('obj-schema-SlashCommandMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSlashCommandMetadata();
      var od = api.SlashCommandMetadata.fromJson(o.toJson());
      checkSlashCommandMetadata(od);
    });
  });

  unittest.group('obj-schema-Space', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpace();
      var od = api.Space.fromJson(o.toJson());
      checkSpace(od);
    });
  });

  unittest.group('obj-schema-TextButton', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextButton();
      var od = api.TextButton.fromJson(o.toJson());
      checkTextButton(od);
    });
  });

  unittest.group('obj-schema-TextParagraph', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextParagraph();
      var od = api.TextParagraph.fromJson(o.toJson());
      checkTextParagraph(od);
    });
  });

  unittest.group('obj-schema-Thread', () {
    unittest.test('to-json--from-json', () {
      var o = buildThread();
      var od = api.Thread.fromJson(o.toJson());
      checkThread(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () {
      var o = buildUser();
      var od = api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserMentionMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserMentionMetadata();
      var od = api.UserMentionMetadata.fromJson(o.toJson());
      checkUserMentionMetadata(od);
    });
  });

  unittest.group('obj-schema-WidgetMarkup', () {
    unittest.test('to-json--from-json', () {
      var o = buildWidgetMarkup();
      var od = api.WidgetMarkup.fromJson(o.toJson());
      checkWidgetMarkup(od);
    });
  });

  unittest.group('resource-MediaResourceApi', () {
    unittest.test('method--download', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      var res = api.ChatApi(mock).media;
      var arg_resourceName = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/media/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .download(arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMedia(response);
      })));
    });
  });

  unittest.group('resource-SpacesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildSpace());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpace(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/spaces"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSpacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSpacesResponse(response);
      })));
    });
  });

  unittest.group('resource-SpacesMembersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.members;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembership(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.members;
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
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMembershipsResponse(response);
      })));
    });
  });

  unittest.group('resource-SpacesMessagesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_parent = 'foo';
      var arg_threadKey = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["threadKey"].first, unittest.equals(arg_threadKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              threadKey: arg_threadKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.messages;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.messages;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMessage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });
  });

  unittest.group('resource-SpacesMessagesAttachmentsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.ChatApi(mock).spaces.messages.attachments;
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
            path.substring(pathOffset, pathOffset + 3), unittest.equals("v1/"));
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        var resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAttachment(response);
      })));
    });
  });
}
