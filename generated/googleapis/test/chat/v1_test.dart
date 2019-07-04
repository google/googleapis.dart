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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterActionParameter = 0;
buildActionParameter() {
  var o = new api.ActionParameter();
  buildCounterActionParameter++;
  if (buildCounterActionParameter < 3) {
    o.key = "foo";
    o.value = "foo";
  }
  buildCounterActionParameter--;
  return o;
}

checkActionParameter(api.ActionParameter o) {
  buildCounterActionParameter++;
  if (buildCounterActionParameter < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterActionParameter--;
}

core.int buildCounterActionResponse = 0;
buildActionResponse() {
  var o = new api.ActionResponse();
  buildCounterActionResponse++;
  if (buildCounterActionResponse < 3) {
    o.type = "foo";
    o.url = "foo";
  }
  buildCounterActionResponse--;
  return o;
}

checkActionResponse(api.ActionResponse o) {
  buildCounterActionResponse++;
  if (buildCounterActionResponse < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterActionResponse--;
}

core.int buildCounterAnnotation = 0;
buildAnnotation() {
  var o = new api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.length = 42;
    o.startIndex = 42;
    o.type = "foo";
    o.userMention = buildUserMentionMetadata();
  }
  buildCounterAnnotation--;
  return o;
}

checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    unittest.expect(o.length, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUserMentionMetadata(o.userMention);
  }
  buildCounterAnnotation--;
}

core.int buildCounterButton = 0;
buildButton() {
  var o = new api.Button();
  buildCounterButton++;
  if (buildCounterButton < 3) {
    o.imageButton = buildImageButton();
    o.textButton = buildTextButton();
  }
  buildCounterButton--;
  return o;
}

checkButton(api.Button o) {
  buildCounterButton++;
  if (buildCounterButton < 3) {
    checkImageButton(o.imageButton);
    checkTextButton(o.textButton);
  }
  buildCounterButton--;
}

buildUnnamed3202() {
  var o = new core.List<api.CardAction>();
  o.add(buildCardAction());
  o.add(buildCardAction());
  return o;
}

checkUnnamed3202(core.List<api.CardAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCardAction(o[0]);
  checkCardAction(o[1]);
}

buildUnnamed3203() {
  var o = new core.List<api.Section>();
  o.add(buildSection());
  o.add(buildSection());
  return o;
}

checkUnnamed3203(core.List<api.Section> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSection(o[0]);
  checkSection(o[1]);
}

core.int buildCounterCard = 0;
buildCard() {
  var o = new api.Card();
  buildCounterCard++;
  if (buildCounterCard < 3) {
    o.cardActions = buildUnnamed3202();
    o.header = buildCardHeader();
    o.name = "foo";
    o.sections = buildUnnamed3203();
  }
  buildCounterCard--;
  return o;
}

checkCard(api.Card o) {
  buildCounterCard++;
  if (buildCounterCard < 3) {
    checkUnnamed3202(o.cardActions);
    checkCardHeader(o.header);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3203(o.sections);
  }
  buildCounterCard--;
}

core.int buildCounterCardAction = 0;
buildCardAction() {
  var o = new api.CardAction();
  buildCounterCardAction++;
  if (buildCounterCardAction < 3) {
    o.actionLabel = "foo";
    o.onClick = buildOnClick();
  }
  buildCounterCardAction--;
  return o;
}

checkCardAction(api.CardAction o) {
  buildCounterCardAction++;
  if (buildCounterCardAction < 3) {
    unittest.expect(o.actionLabel, unittest.equals('foo'));
    checkOnClick(o.onClick);
  }
  buildCounterCardAction--;
}

core.int buildCounterCardHeader = 0;
buildCardHeader() {
  var o = new api.CardHeader();
  buildCounterCardHeader++;
  if (buildCounterCardHeader < 3) {
    o.imageStyle = "foo";
    o.imageUrl = "foo";
    o.subtitle = "foo";
    o.title = "foo";
  }
  buildCounterCardHeader--;
  return o;
}

checkCardHeader(api.CardHeader o) {
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
buildDeprecatedEvent() {
  var o = new api.DeprecatedEvent();
  buildCounterDeprecatedEvent++;
  if (buildCounterDeprecatedEvent < 3) {
    o.action = buildFormAction();
    o.configCompleteRedirectUrl = "foo";
    o.eventTime = "foo";
    o.message = buildMessage();
    o.space = buildSpace();
    o.threadKey = "foo";
    o.token = "foo";
    o.type = "foo";
    o.user = buildUser();
  }
  buildCounterDeprecatedEvent--;
  return o;
}

checkDeprecatedEvent(api.DeprecatedEvent o) {
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

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

buildUnnamed3204() {
  var o = new core.List<api.ActionParameter>();
  o.add(buildActionParameter());
  o.add(buildActionParameter());
  return o;
}

checkUnnamed3204(core.List<api.ActionParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkActionParameter(o[0]);
  checkActionParameter(o[1]);
}

core.int buildCounterFormAction = 0;
buildFormAction() {
  var o = new api.FormAction();
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    o.actionMethodName = "foo";
    o.parameters = buildUnnamed3204();
  }
  buildCounterFormAction--;
  return o;
}

checkFormAction(api.FormAction o) {
  buildCounterFormAction++;
  if (buildCounterFormAction < 3) {
    unittest.expect(o.actionMethodName, unittest.equals('foo'));
    checkUnnamed3204(o.parameters);
  }
  buildCounterFormAction--;
}

core.int buildCounterImage = 0;
buildImage() {
  var o = new api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.aspectRatio = 42.0;
    o.imageUrl = "foo";
    o.onClick = buildOnClick();
  }
  buildCounterImage--;
  return o;
}

checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(o.aspectRatio, unittest.equals(42.0));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
    checkOnClick(o.onClick);
  }
  buildCounterImage--;
}

core.int buildCounterImageButton = 0;
buildImageButton() {
  var o = new api.ImageButton();
  buildCounterImageButton++;
  if (buildCounterImageButton < 3) {
    o.icon = "foo";
    o.iconUrl = "foo";
    o.name = "foo";
    o.onClick = buildOnClick();
  }
  buildCounterImageButton--;
  return o;
}

checkImageButton(api.ImageButton o) {
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
buildKeyValue() {
  var o = new api.KeyValue();
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    o.bottomLabel = "foo";
    o.button = buildButton();
    o.content = "foo";
    o.contentMultiline = true;
    o.icon = "foo";
    o.iconUrl = "foo";
    o.onClick = buildOnClick();
    o.topLabel = "foo";
  }
  buildCounterKeyValue--;
  return o;
}

checkKeyValue(api.KeyValue o) {
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

buildUnnamed3205() {
  var o = new core.List<api.Membership>();
  o.add(buildMembership());
  o.add(buildMembership());
  return o;
}

checkUnnamed3205(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
buildListMembershipsResponse() {
  var o = new api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed3205();
    o.nextPageToken = "foo";
  }
  buildCounterListMembershipsResponse--;
  return o;
}

checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed3205(o.memberships);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListMembershipsResponse--;
}

buildUnnamed3206() {
  var o = new core.List<api.Space>();
  o.add(buildSpace());
  o.add(buildSpace());
  return o;
}

checkUnnamed3206(core.List<api.Space> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpace(o[0]);
  checkSpace(o[1]);
}

core.int buildCounterListSpacesResponse = 0;
buildListSpacesResponse() {
  var o = new api.ListSpacesResponse();
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    o.nextPageToken = "foo";
    o.spaces = buildUnnamed3206();
  }
  buildCounterListSpacesResponse--;
  return o;
}

checkListSpacesResponse(api.ListSpacesResponse o) {
  buildCounterListSpacesResponse++;
  if (buildCounterListSpacesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3206(o.spaces);
  }
  buildCounterListSpacesResponse--;
}

core.int buildCounterMembership = 0;
buildMembership() {
  var o = new api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = "foo";
    o.member = buildUser();
    o.name = "foo";
    o.state = "foo";
  }
  buildCounterMembership--;
  return o;
}

checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUser(o.member);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

buildUnnamed3207() {
  var o = new core.List<api.Annotation>();
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

checkUnnamed3207(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

buildUnnamed3208() {
  var o = new core.List<api.Card>();
  o.add(buildCard());
  o.add(buildCard());
  return o;
}

checkUnnamed3208(core.List<api.Card> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCard(o[0]);
  checkCard(o[1]);
}

core.int buildCounterMessage = 0;
buildMessage() {
  var o = new api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.actionResponse = buildActionResponse();
    o.annotations = buildUnnamed3207();
    o.argumentText = "foo";
    o.cards = buildUnnamed3208();
    o.createTime = "foo";
    o.fallbackText = "foo";
    o.name = "foo";
    o.previewText = "foo";
    o.sender = buildUser();
    o.space = buildSpace();
    o.text = "foo";
    o.thread = buildThread();
  }
  buildCounterMessage--;
  return o;
}

checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    checkActionResponse(o.actionResponse);
    checkUnnamed3207(o.annotations);
    unittest.expect(o.argumentText, unittest.equals('foo'));
    checkUnnamed3208(o.cards);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.fallbackText, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.previewText, unittest.equals('foo'));
    checkUser(o.sender);
    checkSpace(o.space);
    unittest.expect(o.text, unittest.equals('foo'));
    checkThread(o.thread);
  }
  buildCounterMessage--;
}

core.int buildCounterOnClick = 0;
buildOnClick() {
  var o = new api.OnClick();
  buildCounterOnClick++;
  if (buildCounterOnClick < 3) {
    o.action = buildFormAction();
    o.openLink = buildOpenLink();
  }
  buildCounterOnClick--;
  return o;
}

checkOnClick(api.OnClick o) {
  buildCounterOnClick++;
  if (buildCounterOnClick < 3) {
    checkFormAction(o.action);
    checkOpenLink(o.openLink);
  }
  buildCounterOnClick--;
}

core.int buildCounterOpenLink = 0;
buildOpenLink() {
  var o = new api.OpenLink();
  buildCounterOpenLink++;
  if (buildCounterOpenLink < 3) {
    o.url = "foo";
  }
  buildCounterOpenLink--;
  return o;
}

checkOpenLink(api.OpenLink o) {
  buildCounterOpenLink++;
  if (buildCounterOpenLink < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterOpenLink--;
}

buildUnnamed3209() {
  var o = new core.List<api.WidgetMarkup>();
  o.add(buildWidgetMarkup());
  o.add(buildWidgetMarkup());
  return o;
}

checkUnnamed3209(core.List<api.WidgetMarkup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWidgetMarkup(o[0]);
  checkWidgetMarkup(o[1]);
}

core.int buildCounterSection = 0;
buildSection() {
  var o = new api.Section();
  buildCounterSection++;
  if (buildCounterSection < 3) {
    o.header = "foo";
    o.widgets = buildUnnamed3209();
  }
  buildCounterSection--;
  return o;
}

checkSection(api.Section o) {
  buildCounterSection++;
  if (buildCounterSection < 3) {
    unittest.expect(o.header, unittest.equals('foo'));
    checkUnnamed3209(o.widgets);
  }
  buildCounterSection--;
}

core.int buildCounterSpace = 0;
buildSpace() {
  var o = new api.Space();
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterSpace--;
  return o;
}

checkSpace(api.Space o) {
  buildCounterSpace++;
  if (buildCounterSpace < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSpace--;
}

core.int buildCounterTextButton = 0;
buildTextButton() {
  var o = new api.TextButton();
  buildCounterTextButton++;
  if (buildCounterTextButton < 3) {
    o.onClick = buildOnClick();
    o.text = "foo";
  }
  buildCounterTextButton--;
  return o;
}

checkTextButton(api.TextButton o) {
  buildCounterTextButton++;
  if (buildCounterTextButton < 3) {
    checkOnClick(o.onClick);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterTextButton--;
}

core.int buildCounterTextParagraph = 0;
buildTextParagraph() {
  var o = new api.TextParagraph();
  buildCounterTextParagraph++;
  if (buildCounterTextParagraph < 3) {
    o.text = "foo";
  }
  buildCounterTextParagraph--;
  return o;
}

checkTextParagraph(api.TextParagraph o) {
  buildCounterTextParagraph++;
  if (buildCounterTextParagraph < 3) {
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterTextParagraph--;
}

core.int buildCounterThread = 0;
buildThread() {
  var o = new api.Thread();
  buildCounterThread++;
  if (buildCounterThread < 3) {
    o.name = "foo";
  }
  buildCounterThread--;
  return o;
}

checkThread(api.Thread o) {
  buildCounterThread++;
  if (buildCounterThread < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterThread--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.displayName = "foo";
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.displayName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.int buildCounterUserMentionMetadata = 0;
buildUserMentionMetadata() {
  var o = new api.UserMentionMetadata();
  buildCounterUserMentionMetadata++;
  if (buildCounterUserMentionMetadata < 3) {
    o.type = "foo";
    o.user = buildUser();
  }
  buildCounterUserMentionMetadata--;
  return o;
}

checkUserMentionMetadata(api.UserMentionMetadata o) {
  buildCounterUserMentionMetadata++;
  if (buildCounterUserMentionMetadata < 3) {
    unittest.expect(o.type, unittest.equals('foo'));
    checkUser(o.user);
  }
  buildCounterUserMentionMetadata--;
}

buildUnnamed3210() {
  var o = new core.List<api.Button>();
  o.add(buildButton());
  o.add(buildButton());
  return o;
}

checkUnnamed3210(core.List<api.Button> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkButton(o[0]);
  checkButton(o[1]);
}

core.int buildCounterWidgetMarkup = 0;
buildWidgetMarkup() {
  var o = new api.WidgetMarkup();
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    o.buttons = buildUnnamed3210();
    o.image = buildImage();
    o.keyValue = buildKeyValue();
    o.textParagraph = buildTextParagraph();
  }
  buildCounterWidgetMarkup--;
  return o;
}

checkWidgetMarkup(api.WidgetMarkup o) {
  buildCounterWidgetMarkup++;
  if (buildCounterWidgetMarkup < 3) {
    checkUnnamed3210(o.buttons);
    checkImage(o.image);
    checkKeyValue(o.keyValue);
    checkTextParagraph(o.textParagraph);
  }
  buildCounterWidgetMarkup--;
}

main() {
  unittest.group("obj-schema-ActionParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildActionParameter();
      var od = new api.ActionParameter.fromJson(o.toJson());
      checkActionParameter(od);
    });
  });

  unittest.group("obj-schema-ActionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildActionResponse();
      var od = new api.ActionResponse.fromJson(o.toJson());
      checkActionResponse(od);
    });
  });

  unittest.group("obj-schema-Annotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotation();
      var od = new api.Annotation.fromJson(o.toJson());
      checkAnnotation(od);
    });
  });

  unittest.group("obj-schema-Button", () {
    unittest.test("to-json--from-json", () {
      var o = buildButton();
      var od = new api.Button.fromJson(o.toJson());
      checkButton(od);
    });
  });

  unittest.group("obj-schema-Card", () {
    unittest.test("to-json--from-json", () {
      var o = buildCard();
      var od = new api.Card.fromJson(o.toJson());
      checkCard(od);
    });
  });

  unittest.group("obj-schema-CardAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildCardAction();
      var od = new api.CardAction.fromJson(o.toJson());
      checkCardAction(od);
    });
  });

  unittest.group("obj-schema-CardHeader", () {
    unittest.test("to-json--from-json", () {
      var o = buildCardHeader();
      var od = new api.CardHeader.fromJson(o.toJson());
      checkCardHeader(od);
    });
  });

  unittest.group("obj-schema-DeprecatedEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeprecatedEvent();
      var od = new api.DeprecatedEvent.fromJson(o.toJson());
      checkDeprecatedEvent(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-FormAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildFormAction();
      var od = new api.FormAction.fromJson(o.toJson());
      checkFormAction(od);
    });
  });

  unittest.group("obj-schema-Image", () {
    unittest.test("to-json--from-json", () {
      var o = buildImage();
      var od = new api.Image.fromJson(o.toJson());
      checkImage(od);
    });
  });

  unittest.group("obj-schema-ImageButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageButton();
      var od = new api.ImageButton.fromJson(o.toJson());
      checkImageButton(od);
    });
  });

  unittest.group("obj-schema-KeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyValue();
      var od = new api.KeyValue.fromJson(o.toJson());
      checkKeyValue(od);
    });
  });

  unittest.group("obj-schema-ListMembershipsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListMembershipsResponse();
      var od = new api.ListMembershipsResponse.fromJson(o.toJson());
      checkListMembershipsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSpacesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSpacesResponse();
      var od = new api.ListSpacesResponse.fromJson(o.toJson());
      checkListSpacesResponse(od);
    });
  });

  unittest.group("obj-schema-Membership", () {
    unittest.test("to-json--from-json", () {
      var o = buildMembership();
      var od = new api.Membership.fromJson(o.toJson());
      checkMembership(od);
    });
  });

  unittest.group("obj-schema-Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessage();
      var od = new api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group("obj-schema-OnClick", () {
    unittest.test("to-json--from-json", () {
      var o = buildOnClick();
      var od = new api.OnClick.fromJson(o.toJson());
      checkOnClick(od);
    });
  });

  unittest.group("obj-schema-OpenLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildOpenLink();
      var od = new api.OpenLink.fromJson(o.toJson());
      checkOpenLink(od);
    });
  });

  unittest.group("obj-schema-Section", () {
    unittest.test("to-json--from-json", () {
      var o = buildSection();
      var od = new api.Section.fromJson(o.toJson());
      checkSection(od);
    });
  });

  unittest.group("obj-schema-Space", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpace();
      var od = new api.Space.fromJson(o.toJson());
      checkSpace(od);
    });
  });

  unittest.group("obj-schema-TextButton", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextButton();
      var od = new api.TextButton.fromJson(o.toJson());
      checkTextButton(od);
    });
  });

  unittest.group("obj-schema-TextParagraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextParagraph();
      var od = new api.TextParagraph.fromJson(o.toJson());
      checkTextParagraph(od);
    });
  });

  unittest.group("obj-schema-Thread", () {
    unittest.test("to-json--from-json", () {
      var o = buildThread();
      var od = new api.Thread.fromJson(o.toJson());
      checkThread(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("obj-schema-UserMentionMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserMentionMetadata();
      var od = new api.UserMentionMetadata.fromJson(o.toJson());
      checkUserMentionMetadata(od);
    });
  });

  unittest.group("obj-schema-WidgetMarkup", () {
    unittest.test("to-json--from-json", () {
      var o = buildWidgetMarkup();
      var od = new api.WidgetMarkup.fromJson(o.toJson());
      checkWidgetMarkup(od);
    });
  });

  unittest.group("resource-SpacesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpacesResourceApi res = new api.ChatApi(mock).spaces;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSpace());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSpace(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SpacesResourceApi res = new api.ChatApi(mock).spaces;
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/spaces"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSpacesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSpacesResponse(response);
      })));
    });
  });

  unittest.group("resource-SpacesMembersResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpacesMembersResourceApi res = new api.ChatApi(mock).spaces.members;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMembership());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMembership(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.SpacesMembersResourceApi res = new api.ChatApi(mock).spaces.members;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListMembershipsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListMembershipsResponse(response);
      })));
    });
  });

  unittest.group("resource-SpacesMessagesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SpacesMessagesResourceApi res = new api.ChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_parent = "foo";
      var arg_threadKey = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["threadKey"].first, unittest.equals(arg_threadKey));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent,
              threadKey: arg_threadKey, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.SpacesMessagesResourceApi res = new api.ChatApi(mock).spaces.messages;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.SpacesMessagesResourceApi res = new api.ChatApi(mock).spaces.messages;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.SpacesMessagesResourceApi res = new api.ChatApi(mock).spaces.messages;
      var arg_request = buildMessage();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Message.fromJson(json);
        checkMessage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildMessage());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMessage(response);
      })));
    });
  });
}
