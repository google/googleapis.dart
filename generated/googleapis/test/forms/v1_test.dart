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

import 'package:googleapis/forms/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnswer = 0;
api.Answer buildAnswer() {
  final o = api.Answer();
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    o.fileUploadAnswers = buildFileUploadAnswers();
    o.grade = buildGrade();
    o.questionId = 'foo';
    o.textAnswers = buildTextAnswers();
  }
  buildCounterAnswer--;
  return o;
}

void checkAnswer(api.Answer o) {
  buildCounterAnswer++;
  if (buildCounterAnswer < 3) {
    checkFileUploadAnswers(o.fileUploadAnswers!);
    checkGrade(o.grade!);
    unittest.expect(
      o.questionId!,
      unittest.equals('foo'),
    );
    checkTextAnswers(o.textAnswers!);
  }
  buildCounterAnswer--;
}

core.List<api.Request> buildUnnamed0() => [
      buildRequest(),
      buildRequest(),
    ];

void checkUnnamed0(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdateFormRequest = 0;
api.BatchUpdateFormRequest buildBatchUpdateFormRequest() {
  final o = api.BatchUpdateFormRequest();
  buildCounterBatchUpdateFormRequest++;
  if (buildCounterBatchUpdateFormRequest < 3) {
    o.includeFormInResponse = true;
    o.requests = buildUnnamed0();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateFormRequest--;
  return o;
}

void checkBatchUpdateFormRequest(api.BatchUpdateFormRequest o) {
  buildCounterBatchUpdateFormRequest++;
  if (buildCounterBatchUpdateFormRequest < 3) {
    unittest.expect(o.includeFormInResponse!, unittest.isTrue);
    checkUnnamed0(o.requests!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateFormRequest--;
}

core.List<api.Response> buildUnnamed1() => [
      buildResponse(),
      buildResponse(),
    ];

void checkUnnamed1(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateFormResponse = 0;
api.BatchUpdateFormResponse buildBatchUpdateFormResponse() {
  final o = api.BatchUpdateFormResponse();
  buildCounterBatchUpdateFormResponse++;
  if (buildCounterBatchUpdateFormResponse < 3) {
    o.form = buildForm();
    o.replies = buildUnnamed1();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateFormResponse--;
  return o;
}

void checkBatchUpdateFormResponse(api.BatchUpdateFormResponse o) {
  buildCounterBatchUpdateFormResponse++;
  if (buildCounterBatchUpdateFormResponse < 3) {
    checkForm(o.form!);
    checkUnnamed1(o.replies!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateFormResponse--;
}

core.List<api.Option> buildUnnamed2() => [
      buildOption(),
      buildOption(),
    ];

void checkUnnamed2(core.List<api.Option> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOption(o[0]);
  checkOption(o[1]);
}

core.int buildCounterChoiceQuestion = 0;
api.ChoiceQuestion buildChoiceQuestion() {
  final o = api.ChoiceQuestion();
  buildCounterChoiceQuestion++;
  if (buildCounterChoiceQuestion < 3) {
    o.options = buildUnnamed2();
    o.shuffle = true;
    o.type = 'foo';
  }
  buildCounterChoiceQuestion--;
  return o;
}

void checkChoiceQuestion(api.ChoiceQuestion o) {
  buildCounterChoiceQuestion++;
  if (buildCounterChoiceQuestion < 3) {
    checkUnnamed2(o.options!);
    unittest.expect(o.shuffle!, unittest.isTrue);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterChoiceQuestion--;
}

core.int buildCounterCloudPubsubTopic = 0;
api.CloudPubsubTopic buildCloudPubsubTopic() {
  final o = api.CloudPubsubTopic();
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    o.topicName = 'foo';
  }
  buildCounterCloudPubsubTopic--;
  return o;
}

void checkCloudPubsubTopic(api.CloudPubsubTopic o) {
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudPubsubTopic--;
}

core.int buildCounterCorrectAnswer = 0;
api.CorrectAnswer buildCorrectAnswer() {
  final o = api.CorrectAnswer();
  buildCounterCorrectAnswer++;
  if (buildCounterCorrectAnswer < 3) {
    o.value = 'foo';
  }
  buildCounterCorrectAnswer--;
  return o;
}

void checkCorrectAnswer(api.CorrectAnswer o) {
  buildCounterCorrectAnswer++;
  if (buildCounterCorrectAnswer < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterCorrectAnswer--;
}

core.List<api.CorrectAnswer> buildUnnamed3() => [
      buildCorrectAnswer(),
      buildCorrectAnswer(),
    ];

void checkUnnamed3(core.List<api.CorrectAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCorrectAnswer(o[0]);
  checkCorrectAnswer(o[1]);
}

core.int buildCounterCorrectAnswers = 0;
api.CorrectAnswers buildCorrectAnswers() {
  final o = api.CorrectAnswers();
  buildCounterCorrectAnswers++;
  if (buildCounterCorrectAnswers < 3) {
    o.answers = buildUnnamed3();
  }
  buildCounterCorrectAnswers--;
  return o;
}

void checkCorrectAnswers(api.CorrectAnswers o) {
  buildCounterCorrectAnswers++;
  if (buildCounterCorrectAnswers < 3) {
    checkUnnamed3(o.answers!);
  }
  buildCounterCorrectAnswers--;
}

core.int buildCounterCreateItemRequest = 0;
api.CreateItemRequest buildCreateItemRequest() {
  final o = api.CreateItemRequest();
  buildCounterCreateItemRequest++;
  if (buildCounterCreateItemRequest < 3) {
    o.item = buildItem();
    o.location = buildLocation();
  }
  buildCounterCreateItemRequest--;
  return o;
}

void checkCreateItemRequest(api.CreateItemRequest o) {
  buildCounterCreateItemRequest++;
  if (buildCounterCreateItemRequest < 3) {
    checkItem(o.item!);
    checkLocation(o.location!);
  }
  buildCounterCreateItemRequest--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterCreateItemResponse = 0;
api.CreateItemResponse buildCreateItemResponse() {
  final o = api.CreateItemResponse();
  buildCounterCreateItemResponse++;
  if (buildCounterCreateItemResponse < 3) {
    o.itemId = 'foo';
    o.questionId = buildUnnamed4();
  }
  buildCounterCreateItemResponse--;
  return o;
}

void checkCreateItemResponse(api.CreateItemResponse o) {
  buildCounterCreateItemResponse++;
  if (buildCounterCreateItemResponse < 3) {
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.questionId!);
  }
  buildCounterCreateItemResponse--;
}

core.int buildCounterCreateWatchRequest = 0;
api.CreateWatchRequest buildCreateWatchRequest() {
  final o = api.CreateWatchRequest();
  buildCounterCreateWatchRequest++;
  if (buildCounterCreateWatchRequest < 3) {
    o.watch = buildWatch();
    o.watchId = 'foo';
  }
  buildCounterCreateWatchRequest--;
  return o;
}

void checkCreateWatchRequest(api.CreateWatchRequest o) {
  buildCounterCreateWatchRequest++;
  if (buildCounterCreateWatchRequest < 3) {
    checkWatch(o.watch!);
    unittest.expect(
      o.watchId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateWatchRequest--;
}

core.int buildCounterDateQuestion = 0;
api.DateQuestion buildDateQuestion() {
  final o = api.DateQuestion();
  buildCounterDateQuestion++;
  if (buildCounterDateQuestion < 3) {
    o.includeTime = true;
    o.includeYear = true;
  }
  buildCounterDateQuestion--;
  return o;
}

void checkDateQuestion(api.DateQuestion o) {
  buildCounterDateQuestion++;
  if (buildCounterDateQuestion < 3) {
    unittest.expect(o.includeTime!, unittest.isTrue);
    unittest.expect(o.includeYear!, unittest.isTrue);
  }
  buildCounterDateQuestion--;
}

core.int buildCounterDeleteItemRequest = 0;
api.DeleteItemRequest buildDeleteItemRequest() {
  final o = api.DeleteItemRequest();
  buildCounterDeleteItemRequest++;
  if (buildCounterDeleteItemRequest < 3) {
    o.location = buildLocation();
  }
  buildCounterDeleteItemRequest--;
  return o;
}

void checkDeleteItemRequest(api.DeleteItemRequest o) {
  buildCounterDeleteItemRequest++;
  if (buildCounterDeleteItemRequest < 3) {
    checkLocation(o.location!);
  }
  buildCounterDeleteItemRequest--;
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

core.int buildCounterExtraMaterial = 0;
api.ExtraMaterial buildExtraMaterial() {
  final o = api.ExtraMaterial();
  buildCounterExtraMaterial++;
  if (buildCounterExtraMaterial < 3) {
    o.link = buildTextLink();
    o.video = buildVideoLink();
  }
  buildCounterExtraMaterial--;
  return o;
}

void checkExtraMaterial(api.ExtraMaterial o) {
  buildCounterExtraMaterial++;
  if (buildCounterExtraMaterial < 3) {
    checkTextLink(o.link!);
    checkVideoLink(o.video!);
  }
  buildCounterExtraMaterial--;
}

core.List<api.ExtraMaterial> buildUnnamed5() => [
      buildExtraMaterial(),
      buildExtraMaterial(),
    ];

void checkUnnamed5(core.List<api.ExtraMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtraMaterial(o[0]);
  checkExtraMaterial(o[1]);
}

core.int buildCounterFeedback = 0;
api.Feedback buildFeedback() {
  final o = api.Feedback();
  buildCounterFeedback++;
  if (buildCounterFeedback < 3) {
    o.material = buildUnnamed5();
    o.text = 'foo';
  }
  buildCounterFeedback--;
  return o;
}

void checkFeedback(api.Feedback o) {
  buildCounterFeedback++;
  if (buildCounterFeedback < 3) {
    checkUnnamed5(o.material!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeedback--;
}

core.int buildCounterFileUploadAnswer = 0;
api.FileUploadAnswer buildFileUploadAnswer() {
  final o = api.FileUploadAnswer();
  buildCounterFileUploadAnswer++;
  if (buildCounterFileUploadAnswer < 3) {
    o.fileId = 'foo';
    o.fileName = 'foo';
    o.mimeType = 'foo';
  }
  buildCounterFileUploadAnswer--;
  return o;
}

void checkFileUploadAnswer(api.FileUploadAnswer o) {
  buildCounterFileUploadAnswer++;
  if (buildCounterFileUploadAnswer < 3) {
    unittest.expect(
      o.fileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileUploadAnswer--;
}

core.List<api.FileUploadAnswer> buildUnnamed6() => [
      buildFileUploadAnswer(),
      buildFileUploadAnswer(),
    ];

void checkUnnamed6(core.List<api.FileUploadAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileUploadAnswer(o[0]);
  checkFileUploadAnswer(o[1]);
}

core.int buildCounterFileUploadAnswers = 0;
api.FileUploadAnswers buildFileUploadAnswers() {
  final o = api.FileUploadAnswers();
  buildCounterFileUploadAnswers++;
  if (buildCounterFileUploadAnswers < 3) {
    o.answers = buildUnnamed6();
  }
  buildCounterFileUploadAnswers--;
  return o;
}

void checkFileUploadAnswers(api.FileUploadAnswers o) {
  buildCounterFileUploadAnswers++;
  if (buildCounterFileUploadAnswers < 3) {
    checkUnnamed6(o.answers!);
  }
  buildCounterFileUploadAnswers--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterFileUploadQuestion = 0;
api.FileUploadQuestion buildFileUploadQuestion() {
  final o = api.FileUploadQuestion();
  buildCounterFileUploadQuestion++;
  if (buildCounterFileUploadQuestion < 3) {
    o.folderId = 'foo';
    o.maxFileSize = 'foo';
    o.maxFiles = 42;
    o.types = buildUnnamed7();
  }
  buildCounterFileUploadQuestion--;
  return o;
}

void checkFileUploadQuestion(api.FileUploadQuestion o) {
  buildCounterFileUploadQuestion++;
  if (buildCounterFileUploadQuestion < 3) {
    unittest.expect(
      o.folderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxFileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxFiles!,
      unittest.equals(42),
    );
    checkUnnamed7(o.types!);
  }
  buildCounterFileUploadQuestion--;
}

core.List<api.Item> buildUnnamed8() => [
      buildItem(),
      buildItem(),
    ];

void checkUnnamed8(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterForm = 0;
api.Form buildForm() {
  final o = api.Form();
  buildCounterForm++;
  if (buildCounterForm < 3) {
    o.formId = 'foo';
    o.info = buildInfo();
    o.items = buildUnnamed8();
    o.linkedSheetId = 'foo';
    o.responderUri = 'foo';
    o.revisionId = 'foo';
    o.settings = buildFormSettings();
  }
  buildCounterForm--;
  return o;
}

void checkForm(api.Form o) {
  buildCounterForm++;
  if (buildCounterForm < 3) {
    unittest.expect(
      o.formId!,
      unittest.equals('foo'),
    );
    checkInfo(o.info!);
    checkUnnamed8(o.items!);
    unittest.expect(
      o.linkedSheetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responderUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkFormSettings(o.settings!);
  }
  buildCounterForm--;
}

core.Map<core.String, api.Answer> buildUnnamed9() => {
      'x': buildAnswer(),
      'y': buildAnswer(),
    };

void checkUnnamed9(core.Map<core.String, api.Answer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnswer(o['x']!);
  checkAnswer(o['y']!);
}

core.int buildCounterFormResponse = 0;
api.FormResponse buildFormResponse() {
  final o = api.FormResponse();
  buildCounterFormResponse++;
  if (buildCounterFormResponse < 3) {
    o.answers = buildUnnamed9();
    o.createTime = 'foo';
    o.formId = 'foo';
    o.lastSubmittedTime = 'foo';
    o.respondentEmail = 'foo';
    o.responseId = 'foo';
    o.totalScore = 42.0;
  }
  buildCounterFormResponse--;
  return o;
}

void checkFormResponse(api.FormResponse o) {
  buildCounterFormResponse++;
  if (buildCounterFormResponse < 3) {
    checkUnnamed9(o.answers!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.formId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSubmittedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.respondentEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalScore!,
      unittest.equals(42.0),
    );
  }
  buildCounterFormResponse--;
}

core.int buildCounterFormSettings = 0;
api.FormSettings buildFormSettings() {
  final o = api.FormSettings();
  buildCounterFormSettings++;
  if (buildCounterFormSettings < 3) {
    o.quizSettings = buildQuizSettings();
  }
  buildCounterFormSettings--;
  return o;
}

void checkFormSettings(api.FormSettings o) {
  buildCounterFormSettings++;
  if (buildCounterFormSettings < 3) {
    checkQuizSettings(o.quizSettings!);
  }
  buildCounterFormSettings--;
}

core.int buildCounterGrade = 0;
api.Grade buildGrade() {
  final o = api.Grade();
  buildCounterGrade++;
  if (buildCounterGrade < 3) {
    o.correct = true;
    o.feedback = buildFeedback();
    o.score = 42.0;
  }
  buildCounterGrade--;
  return o;
}

void checkGrade(api.Grade o) {
  buildCounterGrade++;
  if (buildCounterGrade < 3) {
    unittest.expect(o.correct!, unittest.isTrue);
    checkFeedback(o.feedback!);
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGrade--;
}

core.int buildCounterGrading = 0;
api.Grading buildGrading() {
  final o = api.Grading();
  buildCounterGrading++;
  if (buildCounterGrading < 3) {
    o.correctAnswers = buildCorrectAnswers();
    o.generalFeedback = buildFeedback();
    o.pointValue = 42;
    o.whenRight = buildFeedback();
    o.whenWrong = buildFeedback();
  }
  buildCounterGrading--;
  return o;
}

void checkGrading(api.Grading o) {
  buildCounterGrading++;
  if (buildCounterGrading < 3) {
    checkCorrectAnswers(o.correctAnswers!);
    checkFeedback(o.generalFeedback!);
    unittest.expect(
      o.pointValue!,
      unittest.equals(42),
    );
    checkFeedback(o.whenRight!);
    checkFeedback(o.whenWrong!);
  }
  buildCounterGrading--;
}

core.int buildCounterGrid = 0;
api.Grid buildGrid() {
  final o = api.Grid();
  buildCounterGrid++;
  if (buildCounterGrid < 3) {
    o.columns = buildChoiceQuestion();
    o.shuffleQuestions = true;
  }
  buildCounterGrid--;
  return o;
}

void checkGrid(api.Grid o) {
  buildCounterGrid++;
  if (buildCounterGrid < 3) {
    checkChoiceQuestion(o.columns!);
    unittest.expect(o.shuffleQuestions!, unittest.isTrue);
  }
  buildCounterGrid--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.altText = 'foo';
    o.contentUri = 'foo';
    o.properties = buildMediaProperties();
    o.sourceUri = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.altText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentUri!,
      unittest.equals('foo'),
    );
    checkMediaProperties(o.properties!);
    unittest.expect(
      o.sourceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.int buildCounterImageItem = 0;
api.ImageItem buildImageItem() {
  final o = api.ImageItem();
  buildCounterImageItem++;
  if (buildCounterImageItem < 3) {
    o.image = buildImage();
  }
  buildCounterImageItem--;
  return o;
}

void checkImageItem(api.ImageItem o) {
  buildCounterImageItem++;
  if (buildCounterImageItem < 3) {
    checkImage(o.image!);
  }
  buildCounterImageItem--;
}

core.int buildCounterInfo = 0;
api.Info buildInfo() {
  final o = api.Info();
  buildCounterInfo++;
  if (buildCounterInfo < 3) {
    o.description = 'foo';
    o.documentTitle = 'foo';
    o.title = 'foo';
  }
  buildCounterInfo--;
  return o;
}

void checkInfo(api.Info o) {
  buildCounterInfo++;
  if (buildCounterInfo < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentTitle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterInfo--;
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.description = 'foo';
    o.imageItem = buildImageItem();
    o.itemId = 'foo';
    o.pageBreakItem = buildPageBreakItem();
    o.questionGroupItem = buildQuestionGroupItem();
    o.questionItem = buildQuestionItem();
    o.textItem = buildTextItem();
    o.title = 'foo';
    o.videoItem = buildVideoItem();
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkImageItem(o.imageItem!);
    unittest.expect(
      o.itemId!,
      unittest.equals('foo'),
    );
    checkPageBreakItem(o.pageBreakItem!);
    checkQuestionGroupItem(o.questionGroupItem!);
    checkQuestionItem(o.questionItem!);
    checkTextItem(o.textItem!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkVideoItem(o.videoItem!);
  }
  buildCounterItem--;
}

core.List<api.FormResponse> buildUnnamed10() => [
      buildFormResponse(),
      buildFormResponse(),
    ];

void checkUnnamed10(core.List<api.FormResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFormResponse(o[0]);
  checkFormResponse(o[1]);
}

core.int buildCounterListFormResponsesResponse = 0;
api.ListFormResponsesResponse buildListFormResponsesResponse() {
  final o = api.ListFormResponsesResponse();
  buildCounterListFormResponsesResponse++;
  if (buildCounterListFormResponsesResponse < 3) {
    o.nextPageToken = 'foo';
    o.responses = buildUnnamed10();
  }
  buildCounterListFormResponsesResponse--;
  return o;
}

void checkListFormResponsesResponse(api.ListFormResponsesResponse o) {
  buildCounterListFormResponsesResponse++;
  if (buildCounterListFormResponsesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.responses!);
  }
  buildCounterListFormResponsesResponse--;
}

core.List<api.Watch> buildUnnamed11() => [
      buildWatch(),
      buildWatch(),
    ];

void checkUnnamed11(core.List<api.Watch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWatch(o[0]);
  checkWatch(o[1]);
}

core.int buildCounterListWatchesResponse = 0;
api.ListWatchesResponse buildListWatchesResponse() {
  final o = api.ListWatchesResponse();
  buildCounterListWatchesResponse++;
  if (buildCounterListWatchesResponse < 3) {
    o.watches = buildUnnamed11();
  }
  buildCounterListWatchesResponse--;
  return o;
}

void checkListWatchesResponse(api.ListWatchesResponse o) {
  buildCounterListWatchesResponse++;
  if (buildCounterListWatchesResponse < 3) {
    checkUnnamed11(o.watches!);
  }
  buildCounterListWatchesResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.index = 42;
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMediaProperties = 0;
api.MediaProperties buildMediaProperties() {
  final o = api.MediaProperties();
  buildCounterMediaProperties++;
  if (buildCounterMediaProperties < 3) {
    o.alignment = 'foo';
    o.width = 42;
  }
  buildCounterMediaProperties--;
  return o;
}

void checkMediaProperties(api.MediaProperties o) {
  buildCounterMediaProperties++;
  if (buildCounterMediaProperties < 3) {
    unittest.expect(
      o.alignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterMediaProperties--;
}

core.int buildCounterMoveItemRequest = 0;
api.MoveItemRequest buildMoveItemRequest() {
  final o = api.MoveItemRequest();
  buildCounterMoveItemRequest++;
  if (buildCounterMoveItemRequest < 3) {
    o.newLocation = buildLocation();
    o.originalLocation = buildLocation();
  }
  buildCounterMoveItemRequest--;
  return o;
}

void checkMoveItemRequest(api.MoveItemRequest o) {
  buildCounterMoveItemRequest++;
  if (buildCounterMoveItemRequest < 3) {
    checkLocation(o.newLocation!);
    checkLocation(o.originalLocation!);
  }
  buildCounterMoveItemRequest--;
}

core.int buildCounterOption = 0;
api.Option buildOption() {
  final o = api.Option();
  buildCounterOption++;
  if (buildCounterOption < 3) {
    o.goToAction = 'foo';
    o.goToSectionId = 'foo';
    o.image = buildImage();
    o.isOther = true;
    o.value = 'foo';
  }
  buildCounterOption--;
  return o;
}

void checkOption(api.Option o) {
  buildCounterOption++;
  if (buildCounterOption < 3) {
    unittest.expect(
      o.goToAction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.goToSectionId!,
      unittest.equals('foo'),
    );
    checkImage(o.image!);
    unittest.expect(o.isOther!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterOption--;
}

core.int buildCounterPageBreakItem = 0;
api.PageBreakItem buildPageBreakItem() {
  final o = api.PageBreakItem();
  buildCounterPageBreakItem++;
  if (buildCounterPageBreakItem < 3) {}
  buildCounterPageBreakItem--;
  return o;
}

void checkPageBreakItem(api.PageBreakItem o) {
  buildCounterPageBreakItem++;
  if (buildCounterPageBreakItem < 3) {}
  buildCounterPageBreakItem--;
}

core.int buildCounterQuestion = 0;
api.Question buildQuestion() {
  final o = api.Question();
  buildCounterQuestion++;
  if (buildCounterQuestion < 3) {
    o.choiceQuestion = buildChoiceQuestion();
    o.dateQuestion = buildDateQuestion();
    o.fileUploadQuestion = buildFileUploadQuestion();
    o.grading = buildGrading();
    o.questionId = 'foo';
    o.required = true;
    o.rowQuestion = buildRowQuestion();
    o.scaleQuestion = buildScaleQuestion();
    o.textQuestion = buildTextQuestion();
    o.timeQuestion = buildTimeQuestion();
  }
  buildCounterQuestion--;
  return o;
}

void checkQuestion(api.Question o) {
  buildCounterQuestion++;
  if (buildCounterQuestion < 3) {
    checkChoiceQuestion(o.choiceQuestion!);
    checkDateQuestion(o.dateQuestion!);
    checkFileUploadQuestion(o.fileUploadQuestion!);
    checkGrading(o.grading!);
    unittest.expect(
      o.questionId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.required!, unittest.isTrue);
    checkRowQuestion(o.rowQuestion!);
    checkScaleQuestion(o.scaleQuestion!);
    checkTextQuestion(o.textQuestion!);
    checkTimeQuestion(o.timeQuestion!);
  }
  buildCounterQuestion--;
}

core.List<api.Question> buildUnnamed12() => [
      buildQuestion(),
      buildQuestion(),
    ];

void checkUnnamed12(core.List<api.Question> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQuestion(o[0]);
  checkQuestion(o[1]);
}

core.int buildCounterQuestionGroupItem = 0;
api.QuestionGroupItem buildQuestionGroupItem() {
  final o = api.QuestionGroupItem();
  buildCounterQuestionGroupItem++;
  if (buildCounterQuestionGroupItem < 3) {
    o.grid = buildGrid();
    o.image = buildImage();
    o.questions = buildUnnamed12();
  }
  buildCounterQuestionGroupItem--;
  return o;
}

void checkQuestionGroupItem(api.QuestionGroupItem o) {
  buildCounterQuestionGroupItem++;
  if (buildCounterQuestionGroupItem < 3) {
    checkGrid(o.grid!);
    checkImage(o.image!);
    checkUnnamed12(o.questions!);
  }
  buildCounterQuestionGroupItem--;
}

core.int buildCounterQuestionItem = 0;
api.QuestionItem buildQuestionItem() {
  final o = api.QuestionItem();
  buildCounterQuestionItem++;
  if (buildCounterQuestionItem < 3) {
    o.image = buildImage();
    o.question = buildQuestion();
  }
  buildCounterQuestionItem--;
  return o;
}

void checkQuestionItem(api.QuestionItem o) {
  buildCounterQuestionItem++;
  if (buildCounterQuestionItem < 3) {
    checkImage(o.image!);
    checkQuestion(o.question!);
  }
  buildCounterQuestionItem--;
}

core.int buildCounterQuizSettings = 0;
api.QuizSettings buildQuizSettings() {
  final o = api.QuizSettings();
  buildCounterQuizSettings++;
  if (buildCounterQuizSettings < 3) {
    o.isQuiz = true;
  }
  buildCounterQuizSettings--;
  return o;
}

void checkQuizSettings(api.QuizSettings o) {
  buildCounterQuizSettings++;
  if (buildCounterQuizSettings < 3) {
    unittest.expect(o.isQuiz!, unittest.isTrue);
  }
  buildCounterQuizSettings--;
}

core.int buildCounterRenewWatchRequest = 0;
api.RenewWatchRequest buildRenewWatchRequest() {
  final o = api.RenewWatchRequest();
  buildCounterRenewWatchRequest++;
  if (buildCounterRenewWatchRequest < 3) {}
  buildCounterRenewWatchRequest--;
  return o;
}

void checkRenewWatchRequest(api.RenewWatchRequest o) {
  buildCounterRenewWatchRequest++;
  if (buildCounterRenewWatchRequest < 3) {}
  buildCounterRenewWatchRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  final o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.createItem = buildCreateItemRequest();
    o.deleteItem = buildDeleteItemRequest();
    o.moveItem = buildMoveItemRequest();
    o.updateFormInfo = buildUpdateFormInfoRequest();
    o.updateItem = buildUpdateItemRequest();
    o.updateSettings = buildUpdateSettingsRequest();
  }
  buildCounterRequest--;
  return o;
}

void checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkCreateItemRequest(o.createItem!);
    checkDeleteItemRequest(o.deleteItem!);
    checkMoveItemRequest(o.moveItem!);
    checkUpdateFormInfoRequest(o.updateFormInfo!);
    checkUpdateItemRequest(o.updateItem!);
    checkUpdateSettingsRequest(o.updateSettings!);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  final o = api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.createItem = buildCreateItemResponse();
  }
  buildCounterResponse--;
  return o;
}

void checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    checkCreateItemResponse(o.createItem!);
  }
  buildCounterResponse--;
}

core.int buildCounterRowQuestion = 0;
api.RowQuestion buildRowQuestion() {
  final o = api.RowQuestion();
  buildCounterRowQuestion++;
  if (buildCounterRowQuestion < 3) {
    o.title = 'foo';
  }
  buildCounterRowQuestion--;
  return o;
}

void checkRowQuestion(api.RowQuestion o) {
  buildCounterRowQuestion++;
  if (buildCounterRowQuestion < 3) {
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterRowQuestion--;
}

core.int buildCounterScaleQuestion = 0;
api.ScaleQuestion buildScaleQuestion() {
  final o = api.ScaleQuestion();
  buildCounterScaleQuestion++;
  if (buildCounterScaleQuestion < 3) {
    o.high = 42;
    o.highLabel = 'foo';
    o.low = 42;
    o.lowLabel = 'foo';
  }
  buildCounterScaleQuestion--;
  return o;
}

void checkScaleQuestion(api.ScaleQuestion o) {
  buildCounterScaleQuestion++;
  if (buildCounterScaleQuestion < 3) {
    unittest.expect(
      o.high!,
      unittest.equals(42),
    );
    unittest.expect(
      o.highLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.low!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lowLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterScaleQuestion--;
}

core.int buildCounterTextAnswer = 0;
api.TextAnswer buildTextAnswer() {
  final o = api.TextAnswer();
  buildCounterTextAnswer++;
  if (buildCounterTextAnswer < 3) {
    o.value = 'foo';
  }
  buildCounterTextAnswer--;
  return o;
}

void checkTextAnswer(api.TextAnswer o) {
  buildCounterTextAnswer++;
  if (buildCounterTextAnswer < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextAnswer--;
}

core.List<api.TextAnswer> buildUnnamed13() => [
      buildTextAnswer(),
      buildTextAnswer(),
    ];

void checkUnnamed13(core.List<api.TextAnswer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextAnswer(o[0]);
  checkTextAnswer(o[1]);
}

core.int buildCounterTextAnswers = 0;
api.TextAnswers buildTextAnswers() {
  final o = api.TextAnswers();
  buildCounterTextAnswers++;
  if (buildCounterTextAnswers < 3) {
    o.answers = buildUnnamed13();
  }
  buildCounterTextAnswers--;
  return o;
}

void checkTextAnswers(api.TextAnswers o) {
  buildCounterTextAnswers++;
  if (buildCounterTextAnswers < 3) {
    checkUnnamed13(o.answers!);
  }
  buildCounterTextAnswers--;
}

core.int buildCounterTextItem = 0;
api.TextItem buildTextItem() {
  final o = api.TextItem();
  buildCounterTextItem++;
  if (buildCounterTextItem < 3) {}
  buildCounterTextItem--;
  return o;
}

void checkTextItem(api.TextItem o) {
  buildCounterTextItem++;
  if (buildCounterTextItem < 3) {}
  buildCounterTextItem--;
}

core.int buildCounterTextLink = 0;
api.TextLink buildTextLink() {
  final o = api.TextLink();
  buildCounterTextLink++;
  if (buildCounterTextLink < 3) {
    o.displayText = 'foo';
    o.uri = 'foo';
  }
  buildCounterTextLink--;
  return o;
}

void checkTextLink(api.TextLink o) {
  buildCounterTextLink++;
  if (buildCounterTextLink < 3) {
    unittest.expect(
      o.displayText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextLink--;
}

core.int buildCounterTextQuestion = 0;
api.TextQuestion buildTextQuestion() {
  final o = api.TextQuestion();
  buildCounterTextQuestion++;
  if (buildCounterTextQuestion < 3) {
    o.paragraph = true;
  }
  buildCounterTextQuestion--;
  return o;
}

void checkTextQuestion(api.TextQuestion o) {
  buildCounterTextQuestion++;
  if (buildCounterTextQuestion < 3) {
    unittest.expect(o.paragraph!, unittest.isTrue);
  }
  buildCounterTextQuestion--;
}

core.int buildCounterTimeQuestion = 0;
api.TimeQuestion buildTimeQuestion() {
  final o = api.TimeQuestion();
  buildCounterTimeQuestion++;
  if (buildCounterTimeQuestion < 3) {
    o.duration = true;
  }
  buildCounterTimeQuestion--;
  return o;
}

void checkTimeQuestion(api.TimeQuestion o) {
  buildCounterTimeQuestion++;
  if (buildCounterTimeQuestion < 3) {
    unittest.expect(o.duration!, unittest.isTrue);
  }
  buildCounterTimeQuestion--;
}

core.int buildCounterUpdateFormInfoRequest = 0;
api.UpdateFormInfoRequest buildUpdateFormInfoRequest() {
  final o = api.UpdateFormInfoRequest();
  buildCounterUpdateFormInfoRequest++;
  if (buildCounterUpdateFormInfoRequest < 3) {
    o.info = buildInfo();
    o.updateMask = 'foo';
  }
  buildCounterUpdateFormInfoRequest--;
  return o;
}

void checkUpdateFormInfoRequest(api.UpdateFormInfoRequest o) {
  buildCounterUpdateFormInfoRequest++;
  if (buildCounterUpdateFormInfoRequest < 3) {
    checkInfo(o.info!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateFormInfoRequest--;
}

core.int buildCounterUpdateItemRequest = 0;
api.UpdateItemRequest buildUpdateItemRequest() {
  final o = api.UpdateItemRequest();
  buildCounterUpdateItemRequest++;
  if (buildCounterUpdateItemRequest < 3) {
    o.item = buildItem();
    o.location = buildLocation();
    o.updateMask = 'foo';
  }
  buildCounterUpdateItemRequest--;
  return o;
}

void checkUpdateItemRequest(api.UpdateItemRequest o) {
  buildCounterUpdateItemRequest++;
  if (buildCounterUpdateItemRequest < 3) {
    checkItem(o.item!);
    checkLocation(o.location!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateItemRequest--;
}

core.int buildCounterUpdateSettingsRequest = 0;
api.UpdateSettingsRequest buildUpdateSettingsRequest() {
  final o = api.UpdateSettingsRequest();
  buildCounterUpdateSettingsRequest++;
  if (buildCounterUpdateSettingsRequest < 3) {
    o.settings = buildFormSettings();
    o.updateMask = 'foo';
  }
  buildCounterUpdateSettingsRequest--;
  return o;
}

void checkUpdateSettingsRequest(api.UpdateSettingsRequest o) {
  buildCounterUpdateSettingsRequest++;
  if (buildCounterUpdateSettingsRequest < 3) {
    checkFormSettings(o.settings!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateSettingsRequest--;
}

core.int buildCounterVideo = 0;
api.Video buildVideo() {
  final o = api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.properties = buildMediaProperties();
    o.youtubeUri = 'foo';
  }
  buildCounterVideo--;
  return o;
}

void checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    checkMediaProperties(o.properties!);
    unittest.expect(
      o.youtubeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideo--;
}

core.int buildCounterVideoItem = 0;
api.VideoItem buildVideoItem() {
  final o = api.VideoItem();
  buildCounterVideoItem++;
  if (buildCounterVideoItem < 3) {
    o.caption = 'foo';
    o.video = buildVideo();
  }
  buildCounterVideoItem--;
  return o;
}

void checkVideoItem(api.VideoItem o) {
  buildCounterVideoItem++;
  if (buildCounterVideoItem < 3) {
    unittest.expect(
      o.caption!,
      unittest.equals('foo'),
    );
    checkVideo(o.video!);
  }
  buildCounterVideoItem--;
}

core.int buildCounterVideoLink = 0;
api.VideoLink buildVideoLink() {
  final o = api.VideoLink();
  buildCounterVideoLink++;
  if (buildCounterVideoLink < 3) {
    o.displayText = 'foo';
    o.youtubeUri = 'foo';
  }
  buildCounterVideoLink--;
  return o;
}

void checkVideoLink(api.VideoLink o) {
  buildCounterVideoLink++;
  if (buildCounterVideoLink < 3) {
    unittest.expect(
      o.displayText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.youtubeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterVideoLink--;
}

core.int buildCounterWatch = 0;
api.Watch buildWatch() {
  final o = api.Watch();
  buildCounterWatch++;
  if (buildCounterWatch < 3) {
    o.createTime = 'foo';
    o.errorType = 'foo';
    o.eventType = 'foo';
    o.expireTime = 'foo';
    o.id = 'foo';
    o.state = 'foo';
    o.target = buildWatchTarget();
  }
  buildCounterWatch--;
  return o;
}

void checkWatch(api.Watch o) {
  buildCounterWatch++;
  if (buildCounterWatch < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkWatchTarget(o.target!);
  }
  buildCounterWatch--;
}

core.int buildCounterWatchTarget = 0;
api.WatchTarget buildWatchTarget() {
  final o = api.WatchTarget();
  buildCounterWatchTarget++;
  if (buildCounterWatchTarget < 3) {
    o.topic = buildCloudPubsubTopic();
  }
  buildCounterWatchTarget--;
  return o;
}

void checkWatchTarget(api.WatchTarget o) {
  buildCounterWatchTarget++;
  if (buildCounterWatchTarget < 3) {
    checkCloudPubsubTopic(o.topic!);
  }
  buildCounterWatchTarget--;
}

core.int buildCounterWriteControl = 0;
api.WriteControl buildWriteControl() {
  final o = api.WriteControl();
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    o.requiredRevisionId = 'foo';
    o.targetRevisionId = 'foo';
  }
  buildCounterWriteControl--;
  return o;
}

void checkWriteControl(api.WriteControl o) {
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    unittest.expect(
      o.requiredRevisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetRevisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteControl--;
}

void main() {
  unittest.group('obj-schema-Answer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Answer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAnswer(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateFormRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateFormRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateFormRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateFormRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateFormResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateFormResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateFormResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateFormResponse(od);
    });
  });

  unittest.group('obj-schema-ChoiceQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoiceQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoiceQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChoiceQuestion(od);
    });
  });

  unittest.group('obj-schema-CloudPubsubTopic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudPubsubTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudPubsubTopic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group('obj-schema-CorrectAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCorrectAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CorrectAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCorrectAnswer(od);
    });
  });

  unittest.group('obj-schema-CorrectAnswers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCorrectAnswers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CorrectAnswers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCorrectAnswers(od);
    });
  });

  unittest.group('obj-schema-CreateItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateItemRequest(od);
    });
  });

  unittest.group('obj-schema-CreateItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateItemResponse(od);
    });
  });

  unittest.group('obj-schema-CreateWatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateWatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateWatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateWatchRequest(od);
    });
  });

  unittest.group('obj-schema-DateQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDateQuestion(od);
    });
  });

  unittest.group('obj-schema-DeleteItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteItemRequest(od);
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

  unittest.group('obj-schema-ExtraMaterial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtraMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtraMaterial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtraMaterial(od);
    });
  });

  unittest.group('obj-schema-Feedback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feedback.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeedback(od);
    });
  });

  unittest.group('obj-schema-FileUploadAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileUploadAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileUploadAnswer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileUploadAnswer(od);
    });
  });

  unittest.group('obj-schema-FileUploadAnswers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileUploadAnswers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileUploadAnswers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileUploadAnswers(od);
    });
  });

  unittest.group('obj-schema-FileUploadQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileUploadQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileUploadQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileUploadQuestion(od);
    });
  });

  unittest.group('obj-schema-Form', () {
    unittest.test('to-json--from-json', () async {
      final o = buildForm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Form.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkForm(od);
    });
  });

  unittest.group('obj-schema-FormResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFormResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FormResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFormResponse(od);
    });
  });

  unittest.group('obj-schema-FormSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFormSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FormSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFormSettings(od);
    });
  });

  unittest.group('obj-schema-Grade', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrade();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Grade.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrade(od);
    });
  });

  unittest.group('obj-schema-Grading', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrading();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Grading.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrading(od);
    });
  });

  unittest.group('obj-schema-Grid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Grid.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrid(od);
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

  unittest.group('obj-schema-ImageItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImageItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImageItem(od);
    });
  });

  unittest.group('obj-schema-Info', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Info.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInfo(od);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Item.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkItem(od);
    });
  });

  unittest.group('obj-schema-ListFormResponsesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListFormResponsesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListFormResponsesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListFormResponsesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWatchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWatchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWatchesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWatchesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MediaProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMediaProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MediaProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMediaProperties(od);
    });
  });

  unittest.group('obj-schema-MoveItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMoveItemRequest(od);
    });
  });

  unittest.group('obj-schema-Option', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Option.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOption(od);
    });
  });

  unittest.group('obj-schema-PageBreakItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageBreakItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageBreakItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageBreakItem(od);
    });
  });

  unittest.group('obj-schema-Question', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Question.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQuestion(od);
    });
  });

  unittest.group('obj-schema-QuestionGroupItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuestionGroupItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuestionGroupItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuestionGroupItem(od);
    });
  });

  unittest.group('obj-schema-QuestionItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuestionItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuestionItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuestionItem(od);
    });
  });

  unittest.group('obj-schema-QuizSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuizSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QuizSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQuizSettings(od);
    });
  });

  unittest.group('obj-schema-RenewWatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRenewWatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RenewWatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRenewWatchRequest(od);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Request.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRequest(od);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Response.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResponse(od);
    });
  });

  unittest.group('obj-schema-RowQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRowQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RowQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRowQuestion(od);
    });
  });

  unittest.group('obj-schema-ScaleQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScaleQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScaleQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScaleQuestion(od);
    });
  });

  unittest.group('obj-schema-TextAnswer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextAnswer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextAnswer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextAnswer(od);
    });
  });

  unittest.group('obj-schema-TextAnswers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextAnswers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextAnswers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextAnswers(od);
    });
  });

  unittest.group('obj-schema-TextItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextItem(od);
    });
  });

  unittest.group('obj-schema-TextLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextLink(od);
    });
  });

  unittest.group('obj-schema-TextQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextQuestion(od);
    });
  });

  unittest.group('obj-schema-TimeQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTimeQuestion(od);
    });
  });

  unittest.group('obj-schema-UpdateFormInfoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateFormInfoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateFormInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateFormInfoRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateItemRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSettingsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-Video', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Video.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVideo(od);
    });
  });

  unittest.group('obj-schema-VideoItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VideoItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVideoItem(od);
    });
  });

  unittest.group('obj-schema-VideoLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VideoLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVideoLink(od);
    });
  });

  unittest.group('obj-schema-Watch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Watch.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWatch(od);
    });
  });

  unittest.group('obj-schema-WatchTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWatchTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WatchTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWatchTarget(od);
    });
  });

  unittest.group('obj-schema-WriteControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteControl(od);
    });
  });

  unittest.group('resource-FormsResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms;
      final arg_request = buildBatchUpdateFormRequest();
      final arg_formId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateFormRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateFormRequest(obj);

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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':batchUpdate'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchUpdateFormResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_formId, $fields: arg_$fields);
      checkBatchUpdateFormResponse(response as api.BatchUpdateFormResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms;
      final arg_request = buildForm();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Form.fromJson(json as core.Map<core.String, core.dynamic>);
        checkForm(obj);

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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/forms'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildForm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkForm(response as api.Form);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms;
      final arg_formId = 'foo';
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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );

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
        final resp = convert.json.encode(buildForm());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_formId, $fields: arg_$fields);
      checkForm(response as api.Form);
    });
  });

  unittest.group('resource-FormsResponsesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.responses;
      final arg_formId = 'foo';
      final arg_responseId = 'foo';
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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/responses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/responses/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_responseId'),
        );

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
        final resp = convert.json.encode(buildFormResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_formId, arg_responseId, $fields: arg_$fields);
      checkFormResponse(response as api.FormResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.responses;
      final arg_formId = 'foo';
      final arg_filter = 'foo';
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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/responses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/responses'),
        );
        pathOffset += 10;

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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListFormResponsesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_formId,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListFormResponsesResponse(response as api.ListFormResponsesResponse);
    });
  });

  unittest.group('resource-FormsWatchesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.watches;
      final arg_request = buildCreateWatchRequest();
      final arg_formId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateWatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateWatchRequest(obj);

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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/watches', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/watches'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildWatch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_formId, $fields: arg_$fields);
      checkWatch(response as api.Watch);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.watches;
      final arg_formId = 'foo';
      final arg_watchId = 'foo';
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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/watches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/watches/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_watchId'),
        );

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
      final response =
          await res.delete(arg_formId, arg_watchId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.watches;
      final arg_formId = 'foo';
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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/watches', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/watches'),
        );
        pathOffset += 8;

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
        final resp = convert.json.encode(buildListWatchesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_formId, $fields: arg_$fields);
      checkListWatchesResponse(response as api.ListWatchesResponse);
    });

    unittest.test('method--renew', () async {
      final mock = HttpServerMock();
      final res = api.FormsApi(mock).forms.watches;
      final arg_request = buildRenewWatchRequest();
      final arg_formId = 'foo';
      final arg_watchId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RenewWatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRenewWatchRequest(obj);

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
          unittest.equals('v1/forms/'),
        );
        pathOffset += 9;
        index = path.indexOf('/watches/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_formId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/watches/'),
        );
        pathOffset += 9;
        index = path.indexOf(':renew', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_watchId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':renew'),
        );
        pathOffset += 6;

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
        final resp = convert.json.encode(buildWatch());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.renew(arg_request, arg_formId, arg_watchId,
          $fields: arg_$fields);
      checkWatch(response as api.Watch);
    });
  });
}
