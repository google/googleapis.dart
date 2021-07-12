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

import 'package:googleapis/classroom/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Material> buildUnnamed6028() {
  final o = <api.Material>[];
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

void checkUnnamed6028(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterAnnouncement = 0;
api.Announcement buildAnnouncement() {
  final o = api.Announcement();
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    o.alternateLink = 'foo';
    o.assigneeMode = 'foo';
    o.courseId = 'foo';
    o.creationTime = 'foo';
    o.creatorUserId = 'foo';
    o.id = 'foo';
    o.individualStudentsOptions = buildIndividualStudentsOptions();
    o.materials = buildUnnamed6028();
    o.scheduledTime = 'foo';
    o.state = 'foo';
    o.text = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterAnnouncement--;
  return o;
}

void checkAnnouncement(api.Announcement o) {
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assigneeMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkIndividualStudentsOptions(o.individualStudentsOptions!);
    checkUnnamed6028(o.materials!);
    unittest.expect(
      o.scheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAnnouncement--;
}

core.int buildCounterAssignment = 0;
api.Assignment buildAssignment() {
  final o = api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.studentWorkFolder = buildDriveFolder();
  }
  buildCounterAssignment--;
  return o;
}

void checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    checkDriveFolder(o.studentWorkFolder!);
  }
  buildCounterAssignment--;
}

core.List<api.Attachment> buildUnnamed6029() {
  final o = <api.Attachment>[];
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

void checkUnnamed6029(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterAssignmentSubmission = 0;
api.AssignmentSubmission buildAssignmentSubmission() {
  final o = api.AssignmentSubmission();
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    o.attachments = buildUnnamed6029();
  }
  buildCounterAssignmentSubmission--;
  return o;
}

void checkAssignmentSubmission(api.AssignmentSubmission o) {
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    checkUnnamed6029(o.attachments!);
  }
  buildCounterAssignmentSubmission--;
}

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  final o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.driveFile = buildDriveFile();
    o.form = buildForm();
    o.link = buildLink();
    o.youTubeVideo = buildYouTubeVideo();
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkDriveFile(o.driveFile!);
    checkForm(o.form!);
    checkLink(o.link!);
    checkYouTubeVideo(o.youTubeVideo!);
  }
  buildCounterAttachment--;
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

core.List<api.CourseMaterialSet> buildUnnamed6030() {
  final o = <api.CourseMaterialSet>[];
  o.add(buildCourseMaterialSet());
  o.add(buildCourseMaterialSet());
  return o;
}

void checkUnnamed6030(core.List<api.CourseMaterialSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseMaterialSet(o[0]);
  checkCourseMaterialSet(o[1]);
}

core.int buildCounterCourse = 0;
api.Course buildCourse() {
  final o = api.Course();
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    o.alternateLink = 'foo';
    o.calendarId = 'foo';
    o.courseGroupEmail = 'foo';
    o.courseMaterialSets = buildUnnamed6030();
    o.courseState = 'foo';
    o.creationTime = 'foo';
    o.description = 'foo';
    o.descriptionHeading = 'foo';
    o.enrollmentCode = 'foo';
    o.guardiansEnabled = true;
    o.id = 'foo';
    o.name = 'foo';
    o.ownerId = 'foo';
    o.room = 'foo';
    o.section = 'foo';
    o.teacherFolder = buildDriveFolder();
    o.teacherGroupEmail = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCourse--;
  return o;
}

void checkCourse(api.Course o) {
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.calendarId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.courseGroupEmail!,
      unittest.equals('foo'),
    );
    checkUnnamed6030(o.courseMaterialSets!);
    unittest.expect(
      o.courseState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.descriptionHeading!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrollmentCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.guardiansEnabled!, unittest.isTrue);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.room!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.section!,
      unittest.equals('foo'),
    );
    checkDriveFolder(o.teacherFolder!);
    unittest.expect(
      o.teacherGroupEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourse--;
}

core.int buildCounterCourseAlias = 0;
api.CourseAlias buildCourseAlias() {
  final o = api.CourseAlias();
  buildCounterCourseAlias++;
  if (buildCounterCourseAlias < 3) {
    o.alias = 'foo';
  }
  buildCounterCourseAlias--;
  return o;
}

void checkCourseAlias(api.CourseAlias o) {
  buildCounterCourseAlias++;
  if (buildCounterCourseAlias < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseAlias--;
}

core.int buildCounterCourseMaterial = 0;
api.CourseMaterial buildCourseMaterial() {
  final o = api.CourseMaterial();
  buildCounterCourseMaterial++;
  if (buildCounterCourseMaterial < 3) {
    o.driveFile = buildDriveFile();
    o.form = buildForm();
    o.link = buildLink();
    o.youTubeVideo = buildYouTubeVideo();
  }
  buildCounterCourseMaterial--;
  return o;
}

void checkCourseMaterial(api.CourseMaterial o) {
  buildCounterCourseMaterial++;
  if (buildCounterCourseMaterial < 3) {
    checkDriveFile(o.driveFile!);
    checkForm(o.form!);
    checkLink(o.link!);
    checkYouTubeVideo(o.youTubeVideo!);
  }
  buildCounterCourseMaterial--;
}

core.List<api.CourseMaterial> buildUnnamed6031() {
  final o = <api.CourseMaterial>[];
  o.add(buildCourseMaterial());
  o.add(buildCourseMaterial());
  return o;
}

void checkUnnamed6031(core.List<api.CourseMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseMaterial(o[0]);
  checkCourseMaterial(o[1]);
}

core.int buildCounterCourseMaterialSet = 0;
api.CourseMaterialSet buildCourseMaterialSet() {
  final o = api.CourseMaterialSet();
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    o.materials = buildUnnamed6031();
    o.title = 'foo';
  }
  buildCounterCourseMaterialSet--;
  return o;
}

void checkCourseMaterialSet(api.CourseMaterialSet o) {
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    checkUnnamed6031(o.materials!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseMaterialSet--;
}

core.int buildCounterCourseRosterChangesInfo = 0;
api.CourseRosterChangesInfo buildCourseRosterChangesInfo() {
  final o = api.CourseRosterChangesInfo();
  buildCounterCourseRosterChangesInfo++;
  if (buildCounterCourseRosterChangesInfo < 3) {
    o.courseId = 'foo';
  }
  buildCounterCourseRosterChangesInfo--;
  return o;
}

void checkCourseRosterChangesInfo(api.CourseRosterChangesInfo o) {
  buildCounterCourseRosterChangesInfo++;
  if (buildCounterCourseRosterChangesInfo < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseRosterChangesInfo--;
}

core.List<api.Material> buildUnnamed6032() {
  final o = <api.Material>[];
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

void checkUnnamed6032(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterCourseWork = 0;
api.CourseWork buildCourseWork() {
  final o = api.CourseWork();
  buildCounterCourseWork++;
  if (buildCounterCourseWork < 3) {
    o.alternateLink = 'foo';
    o.assigneeMode = 'foo';
    o.assignment = buildAssignment();
    o.associatedWithDeveloper = true;
    o.courseId = 'foo';
    o.creationTime = 'foo';
    o.creatorUserId = 'foo';
    o.description = 'foo';
    o.dueDate = buildDate();
    o.dueTime = buildTimeOfDay();
    o.id = 'foo';
    o.individualStudentsOptions = buildIndividualStudentsOptions();
    o.materials = buildUnnamed6032();
    o.maxPoints = 42.0;
    o.multipleChoiceQuestion = buildMultipleChoiceQuestion();
    o.scheduledTime = 'foo';
    o.state = 'foo';
    o.submissionModificationMode = 'foo';
    o.title = 'foo';
    o.topicId = 'foo';
    o.updateTime = 'foo';
    o.workType = 'foo';
  }
  buildCounterCourseWork--;
  return o;
}

void checkCourseWork(api.CourseWork o) {
  buildCounterCourseWork++;
  if (buildCounterCourseWork < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assigneeMode!,
      unittest.equals('foo'),
    );
    checkAssignment(o.assignment!);
    unittest.expect(o.associatedWithDeveloper!, unittest.isTrue);
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkDate(o.dueDate!);
    checkTimeOfDay(o.dueTime!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkIndividualStudentsOptions(o.individualStudentsOptions!);
    checkUnnamed6032(o.materials!);
    unittest.expect(
      o.maxPoints!,
      unittest.equals(42.0),
    );
    checkMultipleChoiceQuestion(o.multipleChoiceQuestion!);
    unittest.expect(
      o.scheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.submissionModificationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseWork--;
}

core.int buildCounterCourseWorkChangesInfo = 0;
api.CourseWorkChangesInfo buildCourseWorkChangesInfo() {
  final o = api.CourseWorkChangesInfo();
  buildCounterCourseWorkChangesInfo++;
  if (buildCounterCourseWorkChangesInfo < 3) {
    o.courseId = 'foo';
  }
  buildCounterCourseWorkChangesInfo--;
  return o;
}

void checkCourseWorkChangesInfo(api.CourseWorkChangesInfo o) {
  buildCounterCourseWorkChangesInfo++;
  if (buildCounterCourseWorkChangesInfo < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseWorkChangesInfo--;
}

core.List<api.Material> buildUnnamed6033() {
  final o = <api.Material>[];
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

void checkUnnamed6033(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterCourseWorkMaterial = 0;
api.CourseWorkMaterial buildCourseWorkMaterial() {
  final o = api.CourseWorkMaterial();
  buildCounterCourseWorkMaterial++;
  if (buildCounterCourseWorkMaterial < 3) {
    o.alternateLink = 'foo';
    o.assigneeMode = 'foo';
    o.courseId = 'foo';
    o.creationTime = 'foo';
    o.creatorUserId = 'foo';
    o.description = 'foo';
    o.id = 'foo';
    o.individualStudentsOptions = buildIndividualStudentsOptions();
    o.materials = buildUnnamed6033();
    o.scheduledTime = 'foo';
    o.state = 'foo';
    o.title = 'foo';
    o.topicId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCourseWorkMaterial--;
  return o;
}

void checkCourseWorkMaterial(api.CourseWorkMaterial o) {
  buildCounterCourseWorkMaterial++;
  if (buildCounterCourseWorkMaterial < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assigneeMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creatorUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkIndividualStudentsOptions(o.individualStudentsOptions!);
    checkUnnamed6033(o.materials!);
    unittest.expect(
      o.scheduledTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCourseWorkMaterial--;
}

core.int buildCounterDate = 0;
api.Date buildDate() {
  final o = api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

void checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
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
  buildCounterDate--;
}

core.int buildCounterDriveFile = 0;
api.DriveFile buildDriveFile() {
  final o = api.DriveFile();
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {
    o.alternateLink = 'foo';
    o.id = 'foo';
    o.thumbnailUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterDriveFile--;
  return o;
}

void checkDriveFile(api.DriveFile o) {
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveFile--;
}

core.int buildCounterDriveFolder = 0;
api.DriveFolder buildDriveFolder() {
  final o = api.DriveFolder();
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    o.alternateLink = 'foo';
    o.id = 'foo';
    o.title = 'foo';
  }
  buildCounterDriveFolder--;
  return o;
}

void checkDriveFolder(api.DriveFolder o) {
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDriveFolder--;
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

core.int buildCounterFeed = 0;
api.Feed buildFeed() {
  final o = api.Feed();
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    o.courseRosterChangesInfo = buildCourseRosterChangesInfo();
    o.courseWorkChangesInfo = buildCourseWorkChangesInfo();
    o.feedType = 'foo';
  }
  buildCounterFeed--;
  return o;
}

void checkFeed(api.Feed o) {
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    checkCourseRosterChangesInfo(o.courseRosterChangesInfo!);
    checkCourseWorkChangesInfo(o.courseWorkChangesInfo!);
    unittest.expect(
      o.feedType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeed--;
}

core.int buildCounterForm = 0;
api.Form buildForm() {
  final o = api.Form();
  buildCounterForm++;
  if (buildCounterForm < 3) {
    o.formUrl = 'foo';
    o.responseUrl = 'foo';
    o.thumbnailUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterForm--;
  return o;
}

void checkForm(api.Form o) {
  buildCounterForm++;
  if (buildCounterForm < 3) {
    unittest.expect(
      o.formUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterForm--;
}

core.int buildCounterGlobalPermission = 0;
api.GlobalPermission buildGlobalPermission() {
  final o = api.GlobalPermission();
  buildCounterGlobalPermission++;
  if (buildCounterGlobalPermission < 3) {
    o.permission = 'foo';
  }
  buildCounterGlobalPermission--;
  return o;
}

void checkGlobalPermission(api.GlobalPermission o) {
  buildCounterGlobalPermission++;
  if (buildCounterGlobalPermission < 3) {
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
  }
  buildCounterGlobalPermission--;
}

core.int buildCounterGradeHistory = 0;
api.GradeHistory buildGradeHistory() {
  final o = api.GradeHistory();
  buildCounterGradeHistory++;
  if (buildCounterGradeHistory < 3) {
    o.actorUserId = 'foo';
    o.gradeChangeType = 'foo';
    o.gradeTimestamp = 'foo';
    o.maxPoints = 42.0;
    o.pointsEarned = 42.0;
  }
  buildCounterGradeHistory--;
  return o;
}

void checkGradeHistory(api.GradeHistory o) {
  buildCounterGradeHistory++;
  if (buildCounterGradeHistory < 3) {
    unittest.expect(
      o.actorUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gradeChangeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gradeTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxPoints!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pointsEarned!,
      unittest.equals(42.0),
    );
  }
  buildCounterGradeHistory--;
}

core.int buildCounterGuardian = 0;
api.Guardian buildGuardian() {
  final o = api.Guardian();
  buildCounterGuardian++;
  if (buildCounterGuardian < 3) {
    o.guardianId = 'foo';
    o.guardianProfile = buildUserProfile();
    o.invitedEmailAddress = 'foo';
    o.studentId = 'foo';
  }
  buildCounterGuardian--;
  return o;
}

void checkGuardian(api.Guardian o) {
  buildCounterGuardian++;
  if (buildCounterGuardian < 3) {
    unittest.expect(
      o.guardianId!,
      unittest.equals('foo'),
    );
    checkUserProfile(o.guardianProfile!);
    unittest.expect(
      o.invitedEmailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.studentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuardian--;
}

core.int buildCounterGuardianInvitation = 0;
api.GuardianInvitation buildGuardianInvitation() {
  final o = api.GuardianInvitation();
  buildCounterGuardianInvitation++;
  if (buildCounterGuardianInvitation < 3) {
    o.creationTime = 'foo';
    o.invitationId = 'foo';
    o.invitedEmailAddress = 'foo';
    o.state = 'foo';
    o.studentId = 'foo';
  }
  buildCounterGuardianInvitation--;
  return o;
}

void checkGuardianInvitation(api.GuardianInvitation o) {
  buildCounterGuardianInvitation++;
  if (buildCounterGuardianInvitation < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invitationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invitedEmailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.studentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuardianInvitation--;
}

core.List<core.String> buildUnnamed6034() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6034(core.List<core.String> o) {
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

core.int buildCounterIndividualStudentsOptions = 0;
api.IndividualStudentsOptions buildIndividualStudentsOptions() {
  final o = api.IndividualStudentsOptions();
  buildCounterIndividualStudentsOptions++;
  if (buildCounterIndividualStudentsOptions < 3) {
    o.studentIds = buildUnnamed6034();
  }
  buildCounterIndividualStudentsOptions--;
  return o;
}

void checkIndividualStudentsOptions(api.IndividualStudentsOptions o) {
  buildCounterIndividualStudentsOptions++;
  if (buildCounterIndividualStudentsOptions < 3) {
    checkUnnamed6034(o.studentIds!);
  }
  buildCounterIndividualStudentsOptions--;
}

core.int buildCounterInvitation = 0;
api.Invitation buildInvitation() {
  final o = api.Invitation();
  buildCounterInvitation++;
  if (buildCounterInvitation < 3) {
    o.courseId = 'foo';
    o.id = 'foo';
    o.role = 'foo';
    o.userId = 'foo';
  }
  buildCounterInvitation--;
  return o;
}

void checkInvitation(api.Invitation o) {
  buildCounterInvitation++;
  if (buildCounterInvitation < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvitation--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.thumbnailUrl = 'foo';
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.List<api.Announcement> buildUnnamed6035() {
  final o = <api.Announcement>[];
  o.add(buildAnnouncement());
  o.add(buildAnnouncement());
  return o;
}

void checkUnnamed6035(core.List<api.Announcement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnouncement(o[0]);
  checkAnnouncement(o[1]);
}

core.int buildCounterListAnnouncementsResponse = 0;
api.ListAnnouncementsResponse buildListAnnouncementsResponse() {
  final o = api.ListAnnouncementsResponse();
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    o.announcements = buildUnnamed6035();
    o.nextPageToken = 'foo';
  }
  buildCounterListAnnouncementsResponse--;
  return o;
}

void checkListAnnouncementsResponse(api.ListAnnouncementsResponse o) {
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    checkUnnamed6035(o.announcements!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAnnouncementsResponse--;
}

core.List<api.CourseAlias> buildUnnamed6036() {
  final o = <api.CourseAlias>[];
  o.add(buildCourseAlias());
  o.add(buildCourseAlias());
  return o;
}

void checkUnnamed6036(core.List<api.CourseAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseAlias(o[0]);
  checkCourseAlias(o[1]);
}

core.int buildCounterListCourseAliasesResponse = 0;
api.ListCourseAliasesResponse buildListCourseAliasesResponse() {
  final o = api.ListCourseAliasesResponse();
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    o.aliases = buildUnnamed6036();
    o.nextPageToken = 'foo';
  }
  buildCounterListCourseAliasesResponse--;
  return o;
}

void checkListCourseAliasesResponse(api.ListCourseAliasesResponse o) {
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    checkUnnamed6036(o.aliases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCourseAliasesResponse--;
}

core.List<api.CourseWorkMaterial> buildUnnamed6037() {
  final o = <api.CourseWorkMaterial>[];
  o.add(buildCourseWorkMaterial());
  o.add(buildCourseWorkMaterial());
  return o;
}

void checkUnnamed6037(core.List<api.CourseWorkMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseWorkMaterial(o[0]);
  checkCourseWorkMaterial(o[1]);
}

core.int buildCounterListCourseWorkMaterialResponse = 0;
api.ListCourseWorkMaterialResponse buildListCourseWorkMaterialResponse() {
  final o = api.ListCourseWorkMaterialResponse();
  buildCounterListCourseWorkMaterialResponse++;
  if (buildCounterListCourseWorkMaterialResponse < 3) {
    o.courseWorkMaterial = buildUnnamed6037();
    o.nextPageToken = 'foo';
  }
  buildCounterListCourseWorkMaterialResponse--;
  return o;
}

void checkListCourseWorkMaterialResponse(api.ListCourseWorkMaterialResponse o) {
  buildCounterListCourseWorkMaterialResponse++;
  if (buildCounterListCourseWorkMaterialResponse < 3) {
    checkUnnamed6037(o.courseWorkMaterial!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCourseWorkMaterialResponse--;
}

core.List<api.CourseWork> buildUnnamed6038() {
  final o = <api.CourseWork>[];
  o.add(buildCourseWork());
  o.add(buildCourseWork());
  return o;
}

void checkUnnamed6038(core.List<api.CourseWork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseWork(o[0]);
  checkCourseWork(o[1]);
}

core.int buildCounterListCourseWorkResponse = 0;
api.ListCourseWorkResponse buildListCourseWorkResponse() {
  final o = api.ListCourseWorkResponse();
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    o.courseWork = buildUnnamed6038();
    o.nextPageToken = 'foo';
  }
  buildCounterListCourseWorkResponse--;
  return o;
}

void checkListCourseWorkResponse(api.ListCourseWorkResponse o) {
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    checkUnnamed6038(o.courseWork!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCourseWorkResponse--;
}

core.List<api.Course> buildUnnamed6039() {
  final o = <api.Course>[];
  o.add(buildCourse());
  o.add(buildCourse());
  return o;
}

void checkUnnamed6039(core.List<api.Course> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourse(o[0]);
  checkCourse(o[1]);
}

core.int buildCounterListCoursesResponse = 0;
api.ListCoursesResponse buildListCoursesResponse() {
  final o = api.ListCoursesResponse();
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    o.courses = buildUnnamed6039();
    o.nextPageToken = 'foo';
  }
  buildCounterListCoursesResponse--;
  return o;
}

void checkListCoursesResponse(api.ListCoursesResponse o) {
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    checkUnnamed6039(o.courses!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCoursesResponse--;
}

core.List<api.GuardianInvitation> buildUnnamed6040() {
  final o = <api.GuardianInvitation>[];
  o.add(buildGuardianInvitation());
  o.add(buildGuardianInvitation());
  return o;
}

void checkUnnamed6040(core.List<api.GuardianInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardianInvitation(o[0]);
  checkGuardianInvitation(o[1]);
}

core.int buildCounterListGuardianInvitationsResponse = 0;
api.ListGuardianInvitationsResponse buildListGuardianInvitationsResponse() {
  final o = api.ListGuardianInvitationsResponse();
  buildCounterListGuardianInvitationsResponse++;
  if (buildCounterListGuardianInvitationsResponse < 3) {
    o.guardianInvitations = buildUnnamed6040();
    o.nextPageToken = 'foo';
  }
  buildCounterListGuardianInvitationsResponse--;
  return o;
}

void checkListGuardianInvitationsResponse(
    api.ListGuardianInvitationsResponse o) {
  buildCounterListGuardianInvitationsResponse++;
  if (buildCounterListGuardianInvitationsResponse < 3) {
    checkUnnamed6040(o.guardianInvitations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGuardianInvitationsResponse--;
}

core.List<api.Guardian> buildUnnamed6041() {
  final o = <api.Guardian>[];
  o.add(buildGuardian());
  o.add(buildGuardian());
  return o;
}

void checkUnnamed6041(core.List<api.Guardian> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardian(o[0]);
  checkGuardian(o[1]);
}

core.int buildCounterListGuardiansResponse = 0;
api.ListGuardiansResponse buildListGuardiansResponse() {
  final o = api.ListGuardiansResponse();
  buildCounterListGuardiansResponse++;
  if (buildCounterListGuardiansResponse < 3) {
    o.guardians = buildUnnamed6041();
    o.nextPageToken = 'foo';
  }
  buildCounterListGuardiansResponse--;
  return o;
}

void checkListGuardiansResponse(api.ListGuardiansResponse o) {
  buildCounterListGuardiansResponse++;
  if (buildCounterListGuardiansResponse < 3) {
    checkUnnamed6041(o.guardians!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListGuardiansResponse--;
}

core.List<api.Invitation> buildUnnamed6042() {
  final o = <api.Invitation>[];
  o.add(buildInvitation());
  o.add(buildInvitation());
  return o;
}

void checkUnnamed6042(core.List<api.Invitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvitation(o[0]);
  checkInvitation(o[1]);
}

core.int buildCounterListInvitationsResponse = 0;
api.ListInvitationsResponse buildListInvitationsResponse() {
  final o = api.ListInvitationsResponse();
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    o.invitations = buildUnnamed6042();
    o.nextPageToken = 'foo';
  }
  buildCounterListInvitationsResponse--;
  return o;
}

void checkListInvitationsResponse(api.ListInvitationsResponse o) {
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    checkUnnamed6042(o.invitations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListInvitationsResponse--;
}

core.List<api.StudentSubmission> buildUnnamed6043() {
  final o = <api.StudentSubmission>[];
  o.add(buildStudentSubmission());
  o.add(buildStudentSubmission());
  return o;
}

void checkUnnamed6043(core.List<api.StudentSubmission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStudentSubmission(o[0]);
  checkStudentSubmission(o[1]);
}

core.int buildCounterListStudentSubmissionsResponse = 0;
api.ListStudentSubmissionsResponse buildListStudentSubmissionsResponse() {
  final o = api.ListStudentSubmissionsResponse();
  buildCounterListStudentSubmissionsResponse++;
  if (buildCounterListStudentSubmissionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.studentSubmissions = buildUnnamed6043();
  }
  buildCounterListStudentSubmissionsResponse--;
  return o;
}

void checkListStudentSubmissionsResponse(api.ListStudentSubmissionsResponse o) {
  buildCounterListStudentSubmissionsResponse++;
  if (buildCounterListStudentSubmissionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6043(o.studentSubmissions!);
  }
  buildCounterListStudentSubmissionsResponse--;
}

core.List<api.Student> buildUnnamed6044() {
  final o = <api.Student>[];
  o.add(buildStudent());
  o.add(buildStudent());
  return o;
}

void checkUnnamed6044(core.List<api.Student> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStudent(o[0]);
  checkStudent(o[1]);
}

core.int buildCounterListStudentsResponse = 0;
api.ListStudentsResponse buildListStudentsResponse() {
  final o = api.ListStudentsResponse();
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    o.nextPageToken = 'foo';
    o.students = buildUnnamed6044();
  }
  buildCounterListStudentsResponse--;
  return o;
}

void checkListStudentsResponse(api.ListStudentsResponse o) {
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6044(o.students!);
  }
  buildCounterListStudentsResponse--;
}

core.List<api.Teacher> buildUnnamed6045() {
  final o = <api.Teacher>[];
  o.add(buildTeacher());
  o.add(buildTeacher());
  return o;
}

void checkUnnamed6045(core.List<api.Teacher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeacher(o[0]);
  checkTeacher(o[1]);
}

core.int buildCounterListTeachersResponse = 0;
api.ListTeachersResponse buildListTeachersResponse() {
  final o = api.ListTeachersResponse();
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    o.nextPageToken = 'foo';
    o.teachers = buildUnnamed6045();
  }
  buildCounterListTeachersResponse--;
  return o;
}

void checkListTeachersResponse(api.ListTeachersResponse o) {
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6045(o.teachers!);
  }
  buildCounterListTeachersResponse--;
}

core.List<api.Topic> buildUnnamed6046() {
  final o = <api.Topic>[];
  o.add(buildTopic());
  o.add(buildTopic());
  return o;
}

void checkUnnamed6046(core.List<api.Topic> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTopic(o[0]);
  checkTopic(o[1]);
}

core.int buildCounterListTopicResponse = 0;
api.ListTopicResponse buildListTopicResponse() {
  final o = api.ListTopicResponse();
  buildCounterListTopicResponse++;
  if (buildCounterListTopicResponse < 3) {
    o.nextPageToken = 'foo';
    o.topic = buildUnnamed6046();
  }
  buildCounterListTopicResponse--;
  return o;
}

void checkListTopicResponse(api.ListTopicResponse o) {
  buildCounterListTopicResponse++;
  if (buildCounterListTopicResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6046(o.topic!);
  }
  buildCounterListTopicResponse--;
}

core.int buildCounterMaterial = 0;
api.Material buildMaterial() {
  final o = api.Material();
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    o.driveFile = buildSharedDriveFile();
    o.form = buildForm();
    o.link = buildLink();
    o.youtubeVideo = buildYouTubeVideo();
  }
  buildCounterMaterial--;
  return o;
}

void checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkSharedDriveFile(o.driveFile!);
    checkForm(o.form!);
    checkLink(o.link!);
    checkYouTubeVideo(o.youtubeVideo!);
  }
  buildCounterMaterial--;
}

core.int buildCounterModifyAnnouncementAssigneesRequest = 0;
api.ModifyAnnouncementAssigneesRequest
    buildModifyAnnouncementAssigneesRequest() {
  final o = api.ModifyAnnouncementAssigneesRequest();
  buildCounterModifyAnnouncementAssigneesRequest++;
  if (buildCounterModifyAnnouncementAssigneesRequest < 3) {
    o.assigneeMode = 'foo';
    o.modifyIndividualStudentsOptions = buildModifyIndividualStudentsOptions();
  }
  buildCounterModifyAnnouncementAssigneesRequest--;
  return o;
}

void checkModifyAnnouncementAssigneesRequest(
    api.ModifyAnnouncementAssigneesRequest o) {
  buildCounterModifyAnnouncementAssigneesRequest++;
  if (buildCounterModifyAnnouncementAssigneesRequest < 3) {
    unittest.expect(
      o.assigneeMode!,
      unittest.equals('foo'),
    );
    checkModifyIndividualStudentsOptions(o.modifyIndividualStudentsOptions!);
  }
  buildCounterModifyAnnouncementAssigneesRequest--;
}

core.List<api.Attachment> buildUnnamed6047() {
  final o = <api.Attachment>[];
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

void checkUnnamed6047(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterModifyAttachmentsRequest = 0;
api.ModifyAttachmentsRequest buildModifyAttachmentsRequest() {
  final o = api.ModifyAttachmentsRequest();
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    o.addAttachments = buildUnnamed6047();
  }
  buildCounterModifyAttachmentsRequest--;
  return o;
}

void checkModifyAttachmentsRequest(api.ModifyAttachmentsRequest o) {
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    checkUnnamed6047(o.addAttachments!);
  }
  buildCounterModifyAttachmentsRequest--;
}

core.int buildCounterModifyCourseWorkAssigneesRequest = 0;
api.ModifyCourseWorkAssigneesRequest buildModifyCourseWorkAssigneesRequest() {
  final o = api.ModifyCourseWorkAssigneesRequest();
  buildCounterModifyCourseWorkAssigneesRequest++;
  if (buildCounterModifyCourseWorkAssigneesRequest < 3) {
    o.assigneeMode = 'foo';
    o.modifyIndividualStudentsOptions = buildModifyIndividualStudentsOptions();
  }
  buildCounterModifyCourseWorkAssigneesRequest--;
  return o;
}

void checkModifyCourseWorkAssigneesRequest(
    api.ModifyCourseWorkAssigneesRequest o) {
  buildCounterModifyCourseWorkAssigneesRequest++;
  if (buildCounterModifyCourseWorkAssigneesRequest < 3) {
    unittest.expect(
      o.assigneeMode!,
      unittest.equals('foo'),
    );
    checkModifyIndividualStudentsOptions(o.modifyIndividualStudentsOptions!);
  }
  buildCounterModifyCourseWorkAssigneesRequest--;
}

core.List<core.String> buildUnnamed6048() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6048(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6049() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6049(core.List<core.String> o) {
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

core.int buildCounterModifyIndividualStudentsOptions = 0;
api.ModifyIndividualStudentsOptions buildModifyIndividualStudentsOptions() {
  final o = api.ModifyIndividualStudentsOptions();
  buildCounterModifyIndividualStudentsOptions++;
  if (buildCounterModifyIndividualStudentsOptions < 3) {
    o.addStudentIds = buildUnnamed6048();
    o.removeStudentIds = buildUnnamed6049();
  }
  buildCounterModifyIndividualStudentsOptions--;
  return o;
}

void checkModifyIndividualStudentsOptions(
    api.ModifyIndividualStudentsOptions o) {
  buildCounterModifyIndividualStudentsOptions++;
  if (buildCounterModifyIndividualStudentsOptions < 3) {
    checkUnnamed6048(o.addStudentIds!);
    checkUnnamed6049(o.removeStudentIds!);
  }
  buildCounterModifyIndividualStudentsOptions--;
}

core.List<core.String> buildUnnamed6050() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6050(core.List<core.String> o) {
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

core.int buildCounterMultipleChoiceQuestion = 0;
api.MultipleChoiceQuestion buildMultipleChoiceQuestion() {
  final o = api.MultipleChoiceQuestion();
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    o.choices = buildUnnamed6050();
  }
  buildCounterMultipleChoiceQuestion--;
  return o;
}

void checkMultipleChoiceQuestion(api.MultipleChoiceQuestion o) {
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    checkUnnamed6050(o.choices!);
  }
  buildCounterMultipleChoiceQuestion--;
}

core.int buildCounterMultipleChoiceSubmission = 0;
api.MultipleChoiceSubmission buildMultipleChoiceSubmission() {
  final o = api.MultipleChoiceSubmission();
  buildCounterMultipleChoiceSubmission++;
  if (buildCounterMultipleChoiceSubmission < 3) {
    o.answer = 'foo';
  }
  buildCounterMultipleChoiceSubmission--;
  return o;
}

void checkMultipleChoiceSubmission(api.MultipleChoiceSubmission o) {
  buildCounterMultipleChoiceSubmission++;
  if (buildCounterMultipleChoiceSubmission < 3) {
    unittest.expect(
      o.answer!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultipleChoiceSubmission--;
}

core.int buildCounterName = 0;
api.Name buildName() {
  final o = api.Name();
  buildCounterName++;
  if (buildCounterName < 3) {
    o.familyName = 'foo';
    o.fullName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterName--;
  return o;
}

void checkName(api.Name o) {
  buildCounterName++;
  if (buildCounterName < 3) {
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
  }
  buildCounterName--;
}

core.int buildCounterReclaimStudentSubmissionRequest = 0;
api.ReclaimStudentSubmissionRequest buildReclaimStudentSubmissionRequest() {
  final o = api.ReclaimStudentSubmissionRequest();
  buildCounterReclaimStudentSubmissionRequest++;
  if (buildCounterReclaimStudentSubmissionRequest < 3) {}
  buildCounterReclaimStudentSubmissionRequest--;
  return o;
}

void checkReclaimStudentSubmissionRequest(
    api.ReclaimStudentSubmissionRequest o) {
  buildCounterReclaimStudentSubmissionRequest++;
  if (buildCounterReclaimStudentSubmissionRequest < 3) {}
  buildCounterReclaimStudentSubmissionRequest--;
}

core.int buildCounterRegistration = 0;
api.Registration buildRegistration() {
  final o = api.Registration();
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    o.cloudPubsubTopic = buildCloudPubsubTopic();
    o.expiryTime = 'foo';
    o.feed = buildFeed();
    o.registrationId = 'foo';
  }
  buildCounterRegistration--;
  return o;
}

void checkRegistration(api.Registration o) {
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    checkCloudPubsubTopic(o.cloudPubsubTopic!);
    unittest.expect(
      o.expiryTime!,
      unittest.equals('foo'),
    );
    checkFeed(o.feed!);
    unittest.expect(
      o.registrationId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegistration--;
}

core.int buildCounterReturnStudentSubmissionRequest = 0;
api.ReturnStudentSubmissionRequest buildReturnStudentSubmissionRequest() {
  final o = api.ReturnStudentSubmissionRequest();
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {}
  buildCounterReturnStudentSubmissionRequest--;
  return o;
}

void checkReturnStudentSubmissionRequest(api.ReturnStudentSubmissionRequest o) {
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {}
  buildCounterReturnStudentSubmissionRequest--;
}

core.int buildCounterSharedDriveFile = 0;
api.SharedDriveFile buildSharedDriveFile() {
  final o = api.SharedDriveFile();
  buildCounterSharedDriveFile++;
  if (buildCounterSharedDriveFile < 3) {
    o.driveFile = buildDriveFile();
    o.shareMode = 'foo';
  }
  buildCounterSharedDriveFile--;
  return o;
}

void checkSharedDriveFile(api.SharedDriveFile o) {
  buildCounterSharedDriveFile++;
  if (buildCounterSharedDriveFile < 3) {
    checkDriveFile(o.driveFile!);
    unittest.expect(
      o.shareMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSharedDriveFile--;
}

core.int buildCounterShortAnswerSubmission = 0;
api.ShortAnswerSubmission buildShortAnswerSubmission() {
  final o = api.ShortAnswerSubmission();
  buildCounterShortAnswerSubmission++;
  if (buildCounterShortAnswerSubmission < 3) {
    o.answer = 'foo';
  }
  buildCounterShortAnswerSubmission--;
  return o;
}

void checkShortAnswerSubmission(api.ShortAnswerSubmission o) {
  buildCounterShortAnswerSubmission++;
  if (buildCounterShortAnswerSubmission < 3) {
    unittest.expect(
      o.answer!,
      unittest.equals('foo'),
    );
  }
  buildCounterShortAnswerSubmission--;
}

core.int buildCounterStateHistory = 0;
api.StateHistory buildStateHistory() {
  final o = api.StateHistory();
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    o.actorUserId = 'foo';
    o.state = 'foo';
    o.stateTimestamp = 'foo';
  }
  buildCounterStateHistory--;
  return o;
}

void checkStateHistory(api.StateHistory o) {
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    unittest.expect(
      o.actorUserId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateTimestamp!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateHistory--;
}

core.int buildCounterStudent = 0;
api.Student buildStudent() {
  final o = api.Student();
  buildCounterStudent++;
  if (buildCounterStudent < 3) {
    o.courseId = 'foo';
    o.profile = buildUserProfile();
    o.studentWorkFolder = buildDriveFolder();
    o.userId = 'foo';
  }
  buildCounterStudent--;
  return o;
}

void checkStudent(api.Student o) {
  buildCounterStudent++;
  if (buildCounterStudent < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    checkUserProfile(o.profile!);
    checkDriveFolder(o.studentWorkFolder!);
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStudent--;
}

core.List<api.SubmissionHistory> buildUnnamed6051() {
  final o = <api.SubmissionHistory>[];
  o.add(buildSubmissionHistory());
  o.add(buildSubmissionHistory());
  return o;
}

void checkUnnamed6051(core.List<api.SubmissionHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubmissionHistory(o[0]);
  checkSubmissionHistory(o[1]);
}

core.int buildCounterStudentSubmission = 0;
api.StudentSubmission buildStudentSubmission() {
  final o = api.StudentSubmission();
  buildCounterStudentSubmission++;
  if (buildCounterStudentSubmission < 3) {
    o.alternateLink = 'foo';
    o.assignedGrade = 42.0;
    o.assignmentSubmission = buildAssignmentSubmission();
    o.associatedWithDeveloper = true;
    o.courseId = 'foo';
    o.courseWorkId = 'foo';
    o.courseWorkType = 'foo';
    o.creationTime = 'foo';
    o.draftGrade = 42.0;
    o.id = 'foo';
    o.late = true;
    o.multipleChoiceSubmission = buildMultipleChoiceSubmission();
    o.shortAnswerSubmission = buildShortAnswerSubmission();
    o.state = 'foo';
    o.submissionHistory = buildUnnamed6051();
    o.updateTime = 'foo';
    o.userId = 'foo';
  }
  buildCounterStudentSubmission--;
  return o;
}

void checkStudentSubmission(api.StudentSubmission o) {
  buildCounterStudentSubmission++;
  if (buildCounterStudentSubmission < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.assignedGrade!,
      unittest.equals(42.0),
    );
    checkAssignmentSubmission(o.assignmentSubmission!);
    unittest.expect(o.associatedWithDeveloper!, unittest.isTrue);
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.courseWorkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.courseWorkType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.draftGrade!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.late!, unittest.isTrue);
    checkMultipleChoiceSubmission(o.multipleChoiceSubmission!);
    checkShortAnswerSubmission(o.shortAnswerSubmission!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed6051(o.submissionHistory!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStudentSubmission--;
}

core.int buildCounterSubmissionHistory = 0;
api.SubmissionHistory buildSubmissionHistory() {
  final o = api.SubmissionHistory();
  buildCounterSubmissionHistory++;
  if (buildCounterSubmissionHistory < 3) {
    o.gradeHistory = buildGradeHistory();
    o.stateHistory = buildStateHistory();
  }
  buildCounterSubmissionHistory--;
  return o;
}

void checkSubmissionHistory(api.SubmissionHistory o) {
  buildCounterSubmissionHistory++;
  if (buildCounterSubmissionHistory < 3) {
    checkGradeHistory(o.gradeHistory!);
    checkStateHistory(o.stateHistory!);
  }
  buildCounterSubmissionHistory--;
}

core.int buildCounterTeacher = 0;
api.Teacher buildTeacher() {
  final o = api.Teacher();
  buildCounterTeacher++;
  if (buildCounterTeacher < 3) {
    o.courseId = 'foo';
    o.profile = buildUserProfile();
    o.userId = 'foo';
  }
  buildCounterTeacher--;
  return o;
}

void checkTeacher(api.Teacher o) {
  buildCounterTeacher++;
  if (buildCounterTeacher < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    checkUserProfile(o.profile!);
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
  }
  buildCounterTeacher--;
}

core.int buildCounterTimeOfDay = 0;
api.TimeOfDay buildTimeOfDay() {
  final o = api.TimeOfDay();
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    o.hours = 42;
    o.minutes = 42;
    o.nanos = 42;
    o.seconds = 42;
  }
  buildCounterTimeOfDay--;
  return o;
}

void checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
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
  buildCounterTimeOfDay--;
}

core.int buildCounterTopic = 0;
api.Topic buildTopic() {
  final o = api.Topic();
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    o.courseId = 'foo';
    o.name = 'foo';
    o.topicId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterTopic--;
  return o;
}

void checkTopic(api.Topic o) {
  buildCounterTopic++;
  if (buildCounterTopic < 3) {
    unittest.expect(
      o.courseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTopic--;
}

core.int buildCounterTurnInStudentSubmissionRequest = 0;
api.TurnInStudentSubmissionRequest buildTurnInStudentSubmissionRequest() {
  final o = api.TurnInStudentSubmissionRequest();
  buildCounterTurnInStudentSubmissionRequest++;
  if (buildCounterTurnInStudentSubmissionRequest < 3) {}
  buildCounterTurnInStudentSubmissionRequest--;
  return o;
}

void checkTurnInStudentSubmissionRequest(api.TurnInStudentSubmissionRequest o) {
  buildCounterTurnInStudentSubmissionRequest++;
  if (buildCounterTurnInStudentSubmissionRequest < 3) {}
  buildCounterTurnInStudentSubmissionRequest--;
}

core.List<api.GlobalPermission> buildUnnamed6052() {
  final o = <api.GlobalPermission>[];
  o.add(buildGlobalPermission());
  o.add(buildGlobalPermission());
  return o;
}

void checkUnnamed6052(core.List<api.GlobalPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlobalPermission(o[0]);
  checkGlobalPermission(o[1]);
}

core.int buildCounterUserProfile = 0;
api.UserProfile buildUserProfile() {
  final o = api.UserProfile();
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    o.emailAddress = 'foo';
    o.id = 'foo';
    o.name = buildName();
    o.permissions = buildUnnamed6052();
    o.photoUrl = 'foo';
    o.verifiedTeacher = true;
  }
  buildCounterUserProfile--;
  return o;
}

void checkUserProfile(api.UserProfile o) {
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkName(o.name!);
    checkUnnamed6052(o.permissions!);
    unittest.expect(
      o.photoUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verifiedTeacher!, unittest.isTrue);
  }
  buildCounterUserProfile--;
}

core.int buildCounterYouTubeVideo = 0;
api.YouTubeVideo buildYouTubeVideo() {
  final o = api.YouTubeVideo();
  buildCounterYouTubeVideo++;
  if (buildCounterYouTubeVideo < 3) {
    o.alternateLink = 'foo';
    o.id = 'foo';
    o.thumbnailUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterYouTubeVideo--;
  return o;
}

void checkYouTubeVideo(api.YouTubeVideo o) {
  buildCounterYouTubeVideo++;
  if (buildCounterYouTubeVideo < 3) {
    unittest.expect(
      o.alternateLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbnailUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterYouTubeVideo--;
}

core.List<core.String> buildUnnamed6053() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6053(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6054() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6054(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6055() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6055(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6056() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6056(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6057() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6057(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6058() {
  final o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6058(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-Announcement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnnouncement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Announcement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnnouncement(od);
    });
  });

  unittest.group('obj-schema-Assignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Assignment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssignment(od);
    });
  });

  unittest.group('obj-schema-AssignmentSubmission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssignmentSubmission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssignmentSubmission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssignmentSubmission(od);
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

  unittest.group('obj-schema-CloudPubsubTopic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudPubsubTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudPubsubTopic.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group('obj-schema-Course', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Course.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCourse(od);
    });
  });

  unittest.group('obj-schema-CourseAlias', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseAlias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseAlias.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseAlias(od);
    });
  });

  unittest.group('obj-schema-CourseMaterial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseMaterial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseMaterial(od);
    });
  });

  unittest.group('obj-schema-CourseMaterialSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseMaterialSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseMaterialSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseMaterialSet(od);
    });
  });

  unittest.group('obj-schema-CourseRosterChangesInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseRosterChangesInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseRosterChangesInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseRosterChangesInfo(od);
    });
  });

  unittest.group('obj-schema-CourseWork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseWork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CourseWork.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCourseWork(od);
    });
  });

  unittest.group('obj-schema-CourseWorkChangesInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseWorkChangesInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseWorkChangesInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseWorkChangesInfo(od);
    });
  });

  unittest.group('obj-schema-CourseWorkMaterial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCourseWorkMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CourseWorkMaterial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCourseWorkMaterial(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DriveFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DriveFile.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDriveFile(od);
    });
  });

  unittest.group('obj-schema-DriveFolder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveFolder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveFolder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDriveFolder(od);
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

  unittest.group('obj-schema-Feed', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeed();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feed.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeed(od);
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

  unittest.group('obj-schema-GlobalPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGlobalPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GlobalPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGlobalPermission(od);
    });
  });

  unittest.group('obj-schema-GradeHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGradeHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GradeHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGradeHistory(od);
    });
  });

  unittest.group('obj-schema-Guardian', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardian();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Guardian.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGuardian(od);
    });
  });

  unittest.group('obj-schema-GuardianInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuardianInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuardianInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuardianInvitation(od);
    });
  });

  unittest.group('obj-schema-IndividualStudentsOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndividualStudentsOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndividualStudentsOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIndividualStudentsOptions(od);
    });
  });

  unittest.group('obj-schema-Invitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Invitation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInvitation(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
    });
  });

  unittest.group('obj-schema-ListAnnouncementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAnnouncementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAnnouncementsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAnnouncementsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCourseAliasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCourseAliasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCourseAliasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCourseAliasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCourseWorkMaterialResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCourseWorkMaterialResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCourseWorkMaterialResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCourseWorkMaterialResponse(od);
    });
  });

  unittest.group('obj-schema-ListCourseWorkResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCourseWorkResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCourseWorkResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCourseWorkResponse(od);
    });
  });

  unittest.group('obj-schema-ListCoursesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCoursesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCoursesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCoursesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGuardianInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGuardianInvitationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGuardianInvitationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGuardianInvitationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListGuardiansResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGuardiansResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGuardiansResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGuardiansResponse(od);
    });
  });

  unittest.group('obj-schema-ListInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInvitationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInvitationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInvitationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStudentSubmissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStudentSubmissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStudentSubmissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStudentSubmissionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListStudentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListStudentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListStudentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListStudentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTeachersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTeachersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTeachersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTeachersResponse(od);
    });
  });

  unittest.group('obj-schema-ListTopicResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTopicResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTopicResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTopicResponse(od);
    });
  });

  unittest.group('obj-schema-Material', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Material.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMaterial(od);
    });
  });

  unittest.group('obj-schema-ModifyAnnouncementAssigneesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyAnnouncementAssigneesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyAnnouncementAssigneesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyAnnouncementAssigneesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyAttachmentsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyAttachmentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyAttachmentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyAttachmentsRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyCourseWorkAssigneesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyCourseWorkAssigneesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyCourseWorkAssigneesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyCourseWorkAssigneesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyIndividualStudentsOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyIndividualStudentsOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyIndividualStudentsOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyIndividualStudentsOptions(od);
    });
  });

  unittest.group('obj-schema-MultipleChoiceQuestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultipleChoiceQuestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultipleChoiceQuestion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultipleChoiceQuestion(od);
    });
  });

  unittest.group('obj-schema-MultipleChoiceSubmission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultipleChoiceSubmission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultipleChoiceSubmission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultipleChoiceSubmission(od);
    });
  });

  unittest.group('obj-schema-Name', () {
    unittest.test('to-json--from-json', () async {
      final o = buildName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Name.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkName(od);
    });
  });

  unittest.group('obj-schema-ReclaimStudentSubmissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReclaimStudentSubmissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReclaimStudentSubmissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReclaimStudentSubmissionRequest(od);
    });
  });

  unittest.group('obj-schema-Registration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegistration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Registration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegistration(od);
    });
  });

  unittest.group('obj-schema-ReturnStudentSubmissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReturnStudentSubmissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReturnStudentSubmissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReturnStudentSubmissionRequest(od);
    });
  });

  unittest.group('obj-schema-SharedDriveFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSharedDriveFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SharedDriveFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSharedDriveFile(od);
    });
  });

  unittest.group('obj-schema-ShortAnswerSubmission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShortAnswerSubmission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShortAnswerSubmission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShortAnswerSubmission(od);
    });
  });

  unittest.group('obj-schema-StateHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateHistory(od);
    });
  });

  unittest.group('obj-schema-Student', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStudent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Student.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStudent(od);
    });
  });

  unittest.group('obj-schema-StudentSubmission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStudentSubmission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StudentSubmission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStudentSubmission(od);
    });
  });

  unittest.group('obj-schema-SubmissionHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmissionHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmissionHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubmissionHistory(od);
    });
  });

  unittest.group('obj-schema-Teacher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTeacher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Teacher.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTeacher(od);
    });
  });

  unittest.group('obj-schema-TimeOfDay', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeOfDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeOfDay.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeOfDay(od);
    });
  });

  unittest.group('obj-schema-Topic', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopic();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Topic.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTopic(od);
    });
  });

  unittest.group('obj-schema-TurnInStudentSubmissionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTurnInStudentSubmissionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TurnInStudentSubmissionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTurnInStudentSubmissionRequest(od);
    });
  });

  unittest.group('obj-schema-UserProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserProfile(od);
    });
  });

  unittest.group('obj-schema-YouTubeVideo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYouTubeVideo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YouTubeVideo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkYouTubeVideo(od);
    });
  });

  unittest.group('resource-CoursesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_request = buildCourse();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Course.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCourse(obj);

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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/courses'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCourse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkCourse(response as api.Course);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
      final response = await res.delete(arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_id, $fields: arg_$fields);
      checkCourse(response as api.Course);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_courseStates = buildUnnamed6053();
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_studentId = 'foo';
      final arg_teacherId = 'foo';
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/courses'),
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
          queryMap['courseStates']!,
          unittest.equals(arg_courseStates),
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
          queryMap['studentId']!.first,
          unittest.equals(arg_studentId),
        );
        unittest.expect(
          queryMap['teacherId']!.first,
          unittest.equals(arg_teacherId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCoursesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          courseStates: arg_courseStates,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          studentId: arg_studentId,
          teacherId: arg_teacherId,
          $fields: arg_$fields);
      checkListCoursesResponse(response as api.ListCoursesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_request = buildCourse();
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Course.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCourse(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCourse(response as api.Course);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses;
      final arg_request = buildCourse();
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Course.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCourse(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_id, $fields: arg_$fields);
      checkCourse(response as api.Course);
    });
  });

  unittest.group('resource-CoursesAliasesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.aliases;
      final arg_request = buildCourseAlias();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CourseAlias.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCourseAlias(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
        final resp = convert.json.encode(buildCourseAlias());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkCourseAlias(response as api.CourseAlias);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.aliases;
      final arg_courseId = 'foo';
      final arg_alias = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/aliases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/aliases/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_alias'),
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
          await res.delete(arg_courseId, arg_alias, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.aliases;
      final arg_courseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/aliases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/aliases'),
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
        final resp = convert.json.encode(buildListCourseAliasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCourseAliasesResponse(response as api.ListCourseAliasesResponse);
    });
  });

  unittest.group('resource-CoursesAnnouncementsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_request = buildAnnouncement();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Announcement.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnouncement(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/announcements'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildAnnouncement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkAnnouncement(response as api.Announcement);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/announcements/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
          await res.delete(arg_courseId, arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/announcements/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildAnnouncement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_id, $fields: arg_$fields);
      checkAnnouncement(response as api.Announcement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_courseId = 'foo';
      final arg_announcementStates = buildUnnamed6054();
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/announcements'),
        );
        pathOffset += 14;

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
          queryMap['announcementStates']!,
          unittest.equals(arg_announcementStates),
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
        final resp = convert.json.encode(buildListAnnouncementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          announcementStates: arg_announcementStates,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAnnouncementsResponse(response as api.ListAnnouncementsResponse);
    });

    unittest.test('method--modifyAssignees', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_request = buildModifyAnnouncementAssigneesRequest();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyAnnouncementAssigneesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyAnnouncementAssigneesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/announcements/'),
        );
        pathOffset += 15;
        index = path.indexOf(':modifyAssignees', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':modifyAssignees'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildAnnouncement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyAssignees(
          arg_request, arg_courseId, arg_id,
          $fields: arg_$fields);
      checkAnnouncement(response as api.Announcement);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.announcements;
      final arg_request = buildAnnouncement();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Announcement.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAnnouncement(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/announcements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/announcements/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildAnnouncement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_courseId, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkAnnouncement(response as api.Announcement);
    });
  });

  unittest.group('resource-CoursesCourseWorkResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_request = buildCourseWork();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CourseWork.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCourseWork(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/courseWork'),
        );
        pathOffset += 11;

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
        final resp = convert.json.encode(buildCourseWork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkCourseWork(response as api.CourseWork);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
          await res.delete(arg_courseId, arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourseWork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_id, $fields: arg_$fields);
      checkCourseWork(response as api.CourseWork);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_courseId = 'foo';
      final arg_courseWorkStates = buildUnnamed6055();
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/courseWork'),
        );
        pathOffset += 11;

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
          queryMap['courseWorkStates']!,
          unittest.equals(arg_courseWorkStates),
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
        final resp = convert.json.encode(buildListCourseWorkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          courseWorkStates: arg_courseWorkStates,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCourseWorkResponse(response as api.ListCourseWorkResponse);
    });

    unittest.test('method--modifyAssignees', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_request = buildModifyCourseWorkAssigneesRequest();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyCourseWorkAssigneesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyCourseWorkAssigneesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf(':modifyAssignees', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':modifyAssignees'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildCourseWork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyAssignees(
          arg_request, arg_courseId, arg_id,
          $fields: arg_$fields);
      checkCourseWork(response as api.CourseWork);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork;
      final arg_request = buildCourseWork();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CourseWork.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCourseWork(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourseWork());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_courseId, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCourseWork(response as api.CourseWork);
    });
  });

  unittest.group('resource-CoursesCourseWorkStudentSubmissionsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildStudentSubmission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_courseId, arg_courseWorkId, arg_id,
          $fields: arg_$fields);
      checkStudentSubmission(response as api.StudentSubmission);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_late = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_states = buildUnnamed6056();
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/studentSubmissions'),
        );
        pathOffset += 19;

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
          queryMap['late']!.first,
          unittest.equals(arg_late),
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
          queryMap['states']!,
          unittest.equals(arg_states),
        );
        unittest.expect(
          queryMap['userId']!.first,
          unittest.equals(arg_userId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListStudentSubmissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId, arg_courseWorkId,
          late: arg_late,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          states: arg_states,
          userId: arg_userId,
          $fields: arg_$fields);
      checkListStudentSubmissionsResponse(
          response as api.ListStudentSubmissionsResponse);
    });

    unittest.test('method--modifyAttachments', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_request = buildModifyAttachmentsRequest();
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyAttachmentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyAttachmentsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        index = path.indexOf(':modifyAttachments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals(':modifyAttachments'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildStudentSubmission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyAttachments(
          arg_request, arg_courseId, arg_courseWorkId, arg_id,
          $fields: arg_$fields);
      checkStudentSubmission(response as api.StudentSubmission);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_request = buildStudentSubmission();
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StudentSubmission.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStudentSubmission(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildStudentSubmission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_courseId, arg_courseWorkId, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkStudentSubmission(response as api.StudentSubmission);
    });

    unittest.test('method--reclaim', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_request = buildReclaimStudentSubmissionRequest();
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReclaimStudentSubmissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReclaimStudentSubmissionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        index = path.indexOf(':reclaim', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':reclaim'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reclaim(
          arg_request, arg_courseId, arg_courseWorkId, arg_id,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--return_', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_request = buildReturnStudentSubmissionRequest();
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReturnStudentSubmissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReturnStudentSubmissionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        index = path.indexOf(':return', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':return'),
        );
        pathOffset += 7;

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
      final response = await res.return_(
          arg_request, arg_courseId, arg_courseWorkId, arg_id,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--turnIn', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      final arg_request = buildTurnInStudentSubmissionRequest();
      final arg_courseId = 'foo';
      final arg_courseWorkId = 'foo';
      final arg_id = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TurnInStudentSubmissionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTurnInStudentSubmissionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWork/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/courseWork/'),
        );
        pathOffset += 12;
        index = path.indexOf('/studentSubmissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseWorkId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/studentSubmissions/'),
        );
        pathOffset += 20;
        index = path.indexOf(':turnIn', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':turnIn'),
        );
        pathOffset += 7;

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
      final response = await res.turnIn(
          arg_request, arg_courseId, arg_courseWorkId, arg_id,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-CoursesCourseWorkMaterialsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWorkMaterials;
      final arg_request = buildCourseWorkMaterial();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CourseWorkMaterial.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCourseWorkMaterial(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWorkMaterials', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/courseWorkMaterials'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildCourseWorkMaterial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkCourseWorkMaterial(response as api.CourseWorkMaterial);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWorkMaterials;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWorkMaterials/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/courseWorkMaterials/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
          await res.delete(arg_courseId, arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWorkMaterials;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWorkMaterials/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/courseWorkMaterials/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourseWorkMaterial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_id, $fields: arg_$fields);
      checkCourseWorkMaterial(response as api.CourseWorkMaterial);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWorkMaterials;
      final arg_courseId = 'foo';
      final arg_courseWorkMaterialStates = buildUnnamed6057();
      final arg_materialDriveId = 'foo';
      final arg_materialLink = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWorkMaterials', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/courseWorkMaterials'),
        );
        pathOffset += 20;

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
          queryMap['courseWorkMaterialStates']!,
          unittest.equals(arg_courseWorkMaterialStates),
        );
        unittest.expect(
          queryMap['materialDriveId']!.first,
          unittest.equals(arg_materialDriveId),
        );
        unittest.expect(
          queryMap['materialLink']!.first,
          unittest.equals(arg_materialLink),
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
        final resp = convert.json.encode(buildListCourseWorkMaterialResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          courseWorkMaterialStates: arg_courseWorkMaterialStates,
          materialDriveId: arg_materialDriveId,
          materialLink: arg_materialLink,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCourseWorkMaterialResponse(
          response as api.ListCourseWorkMaterialResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.courseWorkMaterials;
      final arg_request = buildCourseWorkMaterial();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CourseWorkMaterial.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCourseWorkMaterial(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/courseWorkMaterials/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/courseWorkMaterials/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildCourseWorkMaterial());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_courseId, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCourseWorkMaterial(response as api.CourseWorkMaterial);
    });
  });

  unittest.group('resource-CoursesStudentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.students;
      final arg_request = buildStudent();
      final arg_courseId = 'foo';
      final arg_enrollmentCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Student.fromJson(json as core.Map<core.String, core.dynamic>);
        checkStudent(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/students', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/students'),
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
          queryMap['enrollmentCode']!.first,
          unittest.equals(arg_enrollmentCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStudent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_courseId,
          enrollmentCode: arg_enrollmentCode, $fields: arg_$fields);
      checkStudent(response as api.Student);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.students;
      final arg_courseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/students/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/students/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
          await res.delete(arg_courseId, arg_userId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.students;
      final arg_courseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/students/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/students/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
        final resp = convert.json.encode(buildStudent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_userId, $fields: arg_$fields);
      checkStudent(response as api.Student);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.students;
      final arg_courseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/students', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/students'),
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
        final resp = convert.json.encode(buildListStudentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListStudentsResponse(response as api.ListStudentsResponse);
    });
  });

  unittest.group('resource-CoursesTeachersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.teachers;
      final arg_request = buildTeacher();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Teacher.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTeacher(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/teachers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/teachers'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTeacher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkTeacher(response as api.Teacher);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.teachers;
      final arg_courseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/teachers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/teachers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
          await res.delete(arg_courseId, arg_userId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.teachers;
      final arg_courseId = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/teachers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/teachers/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
        final resp = convert.json.encode(buildTeacher());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_userId, $fields: arg_$fields);
      checkTeacher(response as api.Teacher);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.teachers;
      final arg_courseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/teachers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/teachers'),
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
        final resp = convert.json.encode(buildListTeachersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTeachersResponse(response as api.ListTeachersResponse);
    });
  });

  unittest.group('resource-CoursesTopicsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.topics;
      final arg_request = buildTopic();
      final arg_courseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/topics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/topics'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_courseId, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.topics;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/topics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/topics/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
          await res.delete(arg_courseId, arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.topics;
      final arg_courseId = 'foo';
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/topics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/topics/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_courseId, arg_id, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.topics;
      final arg_courseId = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/topics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/topics'),
        );
        pathOffset += 7;

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
        final resp = convert.json.encode(buildListTopicResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_courseId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListTopicResponse(response as api.ListTopicResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).courses.topics;
      final arg_request = buildTopic();
      final arg_courseId = 'foo';
      final arg_id = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Topic.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTopic(obj);

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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/courses/'),
        );
        pathOffset += 11;
        index = path.indexOf('/topics/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_courseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/topics/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildTopic());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_courseId, arg_id,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkTopic(response as api.Topic);
    });
  });

  unittest.group('resource-InvitationsResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).invitations;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/invitations/'),
        );
        pathOffset += 15;
        index = path.indexOf(':accept', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':accept'),
        );
        pathOffset += 7;

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
      final response = await res.accept(arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).invitations;
      final arg_request = buildInvitation();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Invitation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInvitation(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/invitations'),
        );
        pathOffset += 14;

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
        final resp = convert.json.encode(buildInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkInvitation(response as api.Invitation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).invitations;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/invitations/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
      final response = await res.delete(arg_id, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).invitations;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1/invitations/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_id'),
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
        final resp = convert.json.encode(buildInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_id, $fields: arg_$fields);
      checkInvitation(response as api.Invitation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).invitations;
      final arg_courseId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/invitations'),
        );
        pathOffset += 14;

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
          queryMap['courseId']!.first,
          unittest.equals(arg_courseId),
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
          queryMap['userId']!.first,
          unittest.equals(arg_userId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListInvitationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          courseId: arg_courseId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          userId: arg_userId,
          $fields: arg_$fields);
      checkListInvitationsResponse(response as api.ListInvitationsResponse);
    });
  });

  unittest.group('resource-RegistrationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).registrations;
      final arg_request = buildRegistration();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Registration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegistration(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/registrations'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildRegistration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkRegistration(response as api.Registration);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).registrations;
      final arg_registrationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/registrations/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_registrationId'),
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
          await res.delete(arg_registrationId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-UserProfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles;
      final arg_userId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_userId'),
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
        final resp = convert.json.encode(buildUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_userId, $fields: arg_$fields);
      checkUserProfile(response as api.UserProfile);
    });
  });

  unittest.group('resource-UserProfilesGuardianInvitationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardianInvitations;
      final arg_request = buildGuardianInvitation();
      final arg_studentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GuardianInvitation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGuardianInvitation(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardianInvitations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/guardianInvitations'),
        );
        pathOffset += 20;

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
        final resp = convert.json.encode(buildGuardianInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_studentId, $fields: arg_$fields);
      checkGuardianInvitation(response as api.GuardianInvitation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardianInvitations;
      final arg_studentId = 'foo';
      final arg_invitationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardianInvitations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/guardianInvitations/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_invitationId'),
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
        final resp = convert.json.encode(buildGuardianInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_studentId, arg_invitationId, $fields: arg_$fields);
      checkGuardianInvitation(response as api.GuardianInvitation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardianInvitations;
      final arg_studentId = 'foo';
      final arg_invitedEmailAddress = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_states = buildUnnamed6058();
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardianInvitations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/guardianInvitations'),
        );
        pathOffset += 20;

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
          queryMap['invitedEmailAddress']!.first,
          unittest.equals(arg_invitedEmailAddress),
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
          queryMap['states']!,
          unittest.equals(arg_states),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListGuardianInvitationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_studentId,
          invitedEmailAddress: arg_invitedEmailAddress,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          states: arg_states,
          $fields: arg_$fields);
      checkListGuardianInvitationsResponse(
          response as api.ListGuardianInvitationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardianInvitations;
      final arg_request = buildGuardianInvitation();
      final arg_studentId = 'foo';
      final arg_invitationId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GuardianInvitation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGuardianInvitation(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardianInvitations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/guardianInvitations/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_invitationId'),
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
        final resp = convert.json.encode(buildGuardianInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_studentId, arg_invitationId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGuardianInvitation(response as api.GuardianInvitation);
    });
  });

  unittest.group('resource-UserProfilesGuardiansResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardians;
      final arg_studentId = 'foo';
      final arg_guardianId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardians/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/guardians/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_guardianId'),
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
          await res.delete(arg_studentId, arg_guardianId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardians;
      final arg_studentId = 'foo';
      final arg_guardianId = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardians/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/guardians/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_guardianId'),
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
        final resp = convert.json.encode(buildGuardian());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_studentId, arg_guardianId, $fields: arg_$fields);
      checkGuardian(response as api.Guardian);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ClassroomApi(mock).userProfiles.guardians;
      final arg_studentId = 'foo';
      final arg_invitedEmailAddress = 'foo';
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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/userProfiles/'),
        );
        pathOffset += 16;
        index = path.indexOf('/guardians', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_studentId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/guardians'),
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
          queryMap['invitedEmailAddress']!.first,
          unittest.equals(arg_invitedEmailAddress),
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
        final resp = convert.json.encode(buildListGuardiansResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_studentId,
          invitedEmailAddress: arg_invitedEmailAddress,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListGuardiansResponse(response as api.ListGuardiansResponse);
    });
  });
}
