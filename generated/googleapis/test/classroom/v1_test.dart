library googleapis.classroom.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/classroom/v1.dart' as api;

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
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed791() {
  var o = new core.List<api.Material>();
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

checkUnnamed791(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterAnnouncement = 0;
buildAnnouncement() {
  var o = new api.Announcement();
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    o.alternateLink = "foo";
    o.assigneeMode = "foo";
    o.courseId = "foo";
    o.creationTime = "foo";
    o.creatorUserId = "foo";
    o.id = "foo";
    o.individualStudentsOptions = buildIndividualStudentsOptions();
    o.materials = buildUnnamed791();
    o.scheduledTime = "foo";
    o.state = "foo";
    o.text = "foo";
    o.updateTime = "foo";
  }
  buildCounterAnnouncement--;
  return o;
}

checkAnnouncement(api.Announcement o) {
  buildCounterAnnouncement++;
  if (buildCounterAnnouncement < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.assigneeMode, unittest.equals('foo'));
    unittest.expect(o.courseId, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.creatorUserId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkIndividualStudentsOptions(o.individualStudentsOptions);
    checkUnnamed791(o.materials);
    unittest.expect(o.scheduledTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterAnnouncement--;
}

core.int buildCounterAssignment = 0;
buildAssignment() {
  var o = new api.Assignment();
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    o.studentWorkFolder = buildDriveFolder();
  }
  buildCounterAssignment--;
  return o;
}

checkAssignment(api.Assignment o) {
  buildCounterAssignment++;
  if (buildCounterAssignment < 3) {
    checkDriveFolder(o.studentWorkFolder);
  }
  buildCounterAssignment--;
}

buildUnnamed792() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed792(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterAssignmentSubmission = 0;
buildAssignmentSubmission() {
  var o = new api.AssignmentSubmission();
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    o.attachments = buildUnnamed792();
  }
  buildCounterAssignmentSubmission--;
  return o;
}

checkAssignmentSubmission(api.AssignmentSubmission o) {
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    checkUnnamed792(o.attachments);
  }
  buildCounterAssignmentSubmission--;
}

core.int buildCounterAttachment = 0;
buildAttachment() {
  var o = new api.Attachment();
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

checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    checkDriveFile(o.driveFile);
    checkForm(o.form);
    checkLink(o.link);
    checkYouTubeVideo(o.youTubeVideo);
  }
  buildCounterAttachment--;
}

core.int buildCounterCloudPubsubTopic = 0;
buildCloudPubsubTopic() {
  var o = new api.CloudPubsubTopic();
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    o.topicName = "foo";
  }
  buildCounterCloudPubsubTopic--;
  return o;
}

checkCloudPubsubTopic(api.CloudPubsubTopic o) {
  buildCounterCloudPubsubTopic++;
  if (buildCounterCloudPubsubTopic < 3) {
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterCloudPubsubTopic--;
}

buildUnnamed793() {
  var o = new core.List<api.CourseMaterialSet>();
  o.add(buildCourseMaterialSet());
  o.add(buildCourseMaterialSet());
  return o;
}

checkUnnamed793(core.List<api.CourseMaterialSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseMaterialSet(o[0]);
  checkCourseMaterialSet(o[1]);
}

core.int buildCounterCourse = 0;
buildCourse() {
  var o = new api.Course();
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    o.alternateLink = "foo";
    o.calendarId = "foo";
    o.courseGroupEmail = "foo";
    o.courseMaterialSets = buildUnnamed793();
    o.courseState = "foo";
    o.creationTime = "foo";
    o.description = "foo";
    o.descriptionHeading = "foo";
    o.enrollmentCode = "foo";
    o.guardiansEnabled = true;
    o.id = "foo";
    o.name = "foo";
    o.ownerId = "foo";
    o.room = "foo";
    o.section = "foo";
    o.teacherFolder = buildDriveFolder();
    o.teacherGroupEmail = "foo";
    o.updateTime = "foo";
  }
  buildCounterCourse--;
  return o;
}

checkCourse(api.Course o) {
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.calendarId, unittest.equals('foo'));
    unittest.expect(o.courseGroupEmail, unittest.equals('foo'));
    checkUnnamed793(o.courseMaterialSets);
    unittest.expect(o.courseState, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.descriptionHeading, unittest.equals('foo'));
    unittest.expect(o.enrollmentCode, unittest.equals('foo'));
    unittest.expect(o.guardiansEnabled, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerId, unittest.equals('foo'));
    unittest.expect(o.room, unittest.equals('foo'));
    unittest.expect(o.section, unittest.equals('foo'));
    checkDriveFolder(o.teacherFolder);
    unittest.expect(o.teacherGroupEmail, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterCourse--;
}

core.int buildCounterCourseAlias = 0;
buildCourseAlias() {
  var o = new api.CourseAlias();
  buildCounterCourseAlias++;
  if (buildCounterCourseAlias < 3) {
    o.alias = "foo";
  }
  buildCounterCourseAlias--;
  return o;
}

checkCourseAlias(api.CourseAlias o) {
  buildCounterCourseAlias++;
  if (buildCounterCourseAlias < 3) {
    unittest.expect(o.alias, unittest.equals('foo'));
  }
  buildCounterCourseAlias--;
}

core.int buildCounterCourseMaterial = 0;
buildCourseMaterial() {
  var o = new api.CourseMaterial();
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

checkCourseMaterial(api.CourseMaterial o) {
  buildCounterCourseMaterial++;
  if (buildCounterCourseMaterial < 3) {
    checkDriveFile(o.driveFile);
    checkForm(o.form);
    checkLink(o.link);
    checkYouTubeVideo(o.youTubeVideo);
  }
  buildCounterCourseMaterial--;
}

buildUnnamed794() {
  var o = new core.List<api.CourseMaterial>();
  o.add(buildCourseMaterial());
  o.add(buildCourseMaterial());
  return o;
}

checkUnnamed794(core.List<api.CourseMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseMaterial(o[0]);
  checkCourseMaterial(o[1]);
}

core.int buildCounterCourseMaterialSet = 0;
buildCourseMaterialSet() {
  var o = new api.CourseMaterialSet();
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    o.materials = buildUnnamed794();
    o.title = "foo";
  }
  buildCounterCourseMaterialSet--;
  return o;
}

checkCourseMaterialSet(api.CourseMaterialSet o) {
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    checkUnnamed794(o.materials);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCourseMaterialSet--;
}

core.int buildCounterCourseRosterChangesInfo = 0;
buildCourseRosterChangesInfo() {
  var o = new api.CourseRosterChangesInfo();
  buildCounterCourseRosterChangesInfo++;
  if (buildCounterCourseRosterChangesInfo < 3) {
    o.courseId = "foo";
  }
  buildCounterCourseRosterChangesInfo--;
  return o;
}

checkCourseRosterChangesInfo(api.CourseRosterChangesInfo o) {
  buildCounterCourseRosterChangesInfo++;
  if (buildCounterCourseRosterChangesInfo < 3) {
    unittest.expect(o.courseId, unittest.equals('foo'));
  }
  buildCounterCourseRosterChangesInfo--;
}

buildUnnamed795() {
  var o = new core.List<api.Material>();
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

checkUnnamed795(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterCourseWork = 0;
buildCourseWork() {
  var o = new api.CourseWork();
  buildCounterCourseWork++;
  if (buildCounterCourseWork < 3) {
    o.alternateLink = "foo";
    o.assigneeMode = "foo";
    o.assignment = buildAssignment();
    o.associatedWithDeveloper = true;
    o.courseId = "foo";
    o.creationTime = "foo";
    o.creatorUserId = "foo";
    o.description = "foo";
    o.dueDate = buildDate();
    o.dueTime = buildTimeOfDay();
    o.id = "foo";
    o.individualStudentsOptions = buildIndividualStudentsOptions();
    o.materials = buildUnnamed795();
    o.maxPoints = 42.0;
    o.multipleChoiceQuestion = buildMultipleChoiceQuestion();
    o.scheduledTime = "foo";
    o.state = "foo";
    o.submissionModificationMode = "foo";
    o.title = "foo";
    o.updateTime = "foo";
    o.workType = "foo";
  }
  buildCounterCourseWork--;
  return o;
}

checkCourseWork(api.CourseWork o) {
  buildCounterCourseWork++;
  if (buildCounterCourseWork < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.assigneeMode, unittest.equals('foo'));
    checkAssignment(o.assignment);
    unittest.expect(o.associatedWithDeveloper, unittest.isTrue);
    unittest.expect(o.courseId, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.creatorUserId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkDate(o.dueDate);
    checkTimeOfDay(o.dueTime);
    unittest.expect(o.id, unittest.equals('foo'));
    checkIndividualStudentsOptions(o.individualStudentsOptions);
    checkUnnamed795(o.materials);
    unittest.expect(o.maxPoints, unittest.equals(42.0));
    checkMultipleChoiceQuestion(o.multipleChoiceQuestion);
    unittest.expect(o.scheduledTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.submissionModificationMode, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.workType, unittest.equals('foo'));
  }
  buildCounterCourseWork--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

core.int buildCounterDriveFile = 0;
buildDriveFile() {
  var o = new api.DriveFile();
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {
    o.alternateLink = "foo";
    o.id = "foo";
    o.thumbnailUrl = "foo";
    o.title = "foo";
  }
  buildCounterDriveFile--;
  return o;
}

checkDriveFile(api.DriveFile o) {
  buildCounterDriveFile++;
  if (buildCounterDriveFile < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveFile--;
}

core.int buildCounterDriveFolder = 0;
buildDriveFolder() {
  var o = new api.DriveFolder();
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    o.alternateLink = "foo";
    o.id = "foo";
    o.title = "foo";
  }
  buildCounterDriveFolder--;
  return o;
}

checkDriveFolder(api.DriveFolder o) {
  buildCounterDriveFolder++;
  if (buildCounterDriveFolder < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDriveFolder--;
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

core.int buildCounterFeed = 0;
buildFeed() {
  var o = new api.Feed();
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    o.courseRosterChangesInfo = buildCourseRosterChangesInfo();
    o.feedType = "foo";
  }
  buildCounterFeed--;
  return o;
}

checkFeed(api.Feed o) {
  buildCounterFeed++;
  if (buildCounterFeed < 3) {
    checkCourseRosterChangesInfo(o.courseRosterChangesInfo);
    unittest.expect(o.feedType, unittest.equals('foo'));
  }
  buildCounterFeed--;
}

core.int buildCounterForm = 0;
buildForm() {
  var o = new api.Form();
  buildCounterForm++;
  if (buildCounterForm < 3) {
    o.formUrl = "foo";
    o.responseUrl = "foo";
    o.thumbnailUrl = "foo";
    o.title = "foo";
  }
  buildCounterForm--;
  return o;
}

checkForm(api.Form o) {
  buildCounterForm++;
  if (buildCounterForm < 3) {
    unittest.expect(o.formUrl, unittest.equals('foo'));
    unittest.expect(o.responseUrl, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterForm--;
}

core.int buildCounterGlobalPermission = 0;
buildGlobalPermission() {
  var o = new api.GlobalPermission();
  buildCounterGlobalPermission++;
  if (buildCounterGlobalPermission < 3) {
    o.permission = "foo";
  }
  buildCounterGlobalPermission--;
  return o;
}

checkGlobalPermission(api.GlobalPermission o) {
  buildCounterGlobalPermission++;
  if (buildCounterGlobalPermission < 3) {
    unittest.expect(o.permission, unittest.equals('foo'));
  }
  buildCounterGlobalPermission--;
}

core.int buildCounterGradeHistory = 0;
buildGradeHistory() {
  var o = new api.GradeHistory();
  buildCounterGradeHistory++;
  if (buildCounterGradeHistory < 3) {
    o.actorUserId = "foo";
    o.gradeChangeType = "foo";
    o.gradeTimestamp = "foo";
    o.maxPoints = 42.0;
    o.pointsEarned = 42.0;
  }
  buildCounterGradeHistory--;
  return o;
}

checkGradeHistory(api.GradeHistory o) {
  buildCounterGradeHistory++;
  if (buildCounterGradeHistory < 3) {
    unittest.expect(o.actorUserId, unittest.equals('foo'));
    unittest.expect(o.gradeChangeType, unittest.equals('foo'));
    unittest.expect(o.gradeTimestamp, unittest.equals('foo'));
    unittest.expect(o.maxPoints, unittest.equals(42.0));
    unittest.expect(o.pointsEarned, unittest.equals(42.0));
  }
  buildCounterGradeHistory--;
}

core.int buildCounterGuardian = 0;
buildGuardian() {
  var o = new api.Guardian();
  buildCounterGuardian++;
  if (buildCounterGuardian < 3) {
    o.guardianId = "foo";
    o.guardianProfile = buildUserProfile();
    o.invitedEmailAddress = "foo";
    o.studentId = "foo";
  }
  buildCounterGuardian--;
  return o;
}

checkGuardian(api.Guardian o) {
  buildCounterGuardian++;
  if (buildCounterGuardian < 3) {
    unittest.expect(o.guardianId, unittest.equals('foo'));
    checkUserProfile(o.guardianProfile);
    unittest.expect(o.invitedEmailAddress, unittest.equals('foo'));
    unittest.expect(o.studentId, unittest.equals('foo'));
  }
  buildCounterGuardian--;
}

core.int buildCounterGuardianInvitation = 0;
buildGuardianInvitation() {
  var o = new api.GuardianInvitation();
  buildCounterGuardianInvitation++;
  if (buildCounterGuardianInvitation < 3) {
    o.creationTime = "foo";
    o.invitationId = "foo";
    o.invitedEmailAddress = "foo";
    o.state = "foo";
    o.studentId = "foo";
  }
  buildCounterGuardianInvitation--;
  return o;
}

checkGuardianInvitation(api.GuardianInvitation o) {
  buildCounterGuardianInvitation++;
  if (buildCounterGuardianInvitation < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.invitationId, unittest.equals('foo'));
    unittest.expect(o.invitedEmailAddress, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.studentId, unittest.equals('foo'));
  }
  buildCounterGuardianInvitation--;
}

buildUnnamed796() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed796(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIndividualStudentsOptions = 0;
buildIndividualStudentsOptions() {
  var o = new api.IndividualStudentsOptions();
  buildCounterIndividualStudentsOptions++;
  if (buildCounterIndividualStudentsOptions < 3) {
    o.studentIds = buildUnnamed796();
  }
  buildCounterIndividualStudentsOptions--;
  return o;
}

checkIndividualStudentsOptions(api.IndividualStudentsOptions o) {
  buildCounterIndividualStudentsOptions++;
  if (buildCounterIndividualStudentsOptions < 3) {
    checkUnnamed796(o.studentIds);
  }
  buildCounterIndividualStudentsOptions--;
}

core.int buildCounterInvitation = 0;
buildInvitation() {
  var o = new api.Invitation();
  buildCounterInvitation++;
  if (buildCounterInvitation < 3) {
    o.courseId = "foo";
    o.id = "foo";
    o.role = "foo";
    o.userId = "foo";
  }
  buildCounterInvitation--;
  return o;
}

checkInvitation(api.Invitation o) {
  buildCounterInvitation++;
  if (buildCounterInvitation < 3) {
    unittest.expect(o.courseId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.role, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterInvitation--;
}

core.int buildCounterLink = 0;
buildLink() {
  var o = new api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.thumbnailUrl = "foo";
    o.title = "foo";
    o.url = "foo";
  }
  buildCounterLink--;
  return o;
}

checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(o.thumbnailUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLink--;
}

buildUnnamed797() {
  var o = new core.List<api.Announcement>();
  o.add(buildAnnouncement());
  o.add(buildAnnouncement());
  return o;
}

checkUnnamed797(core.List<api.Announcement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnouncement(o[0]);
  checkAnnouncement(o[1]);
}

core.int buildCounterListAnnouncementsResponse = 0;
buildListAnnouncementsResponse() {
  var o = new api.ListAnnouncementsResponse();
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    o.announcements = buildUnnamed797();
    o.nextPageToken = "foo";
  }
  buildCounterListAnnouncementsResponse--;
  return o;
}

checkListAnnouncementsResponse(api.ListAnnouncementsResponse o) {
  buildCounterListAnnouncementsResponse++;
  if (buildCounterListAnnouncementsResponse < 3) {
    checkUnnamed797(o.announcements);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListAnnouncementsResponse--;
}

buildUnnamed798() {
  var o = new core.List<api.CourseAlias>();
  o.add(buildCourseAlias());
  o.add(buildCourseAlias());
  return o;
}

checkUnnamed798(core.List<api.CourseAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseAlias(o[0]);
  checkCourseAlias(o[1]);
}

core.int buildCounterListCourseAliasesResponse = 0;
buildListCourseAliasesResponse() {
  var o = new api.ListCourseAliasesResponse();
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    o.aliases = buildUnnamed798();
    o.nextPageToken = "foo";
  }
  buildCounterListCourseAliasesResponse--;
  return o;
}

checkListCourseAliasesResponse(api.ListCourseAliasesResponse o) {
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    checkUnnamed798(o.aliases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCourseAliasesResponse--;
}

buildUnnamed799() {
  var o = new core.List<api.CourseWork>();
  o.add(buildCourseWork());
  o.add(buildCourseWork());
  return o;
}

checkUnnamed799(core.List<api.CourseWork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseWork(o[0]);
  checkCourseWork(o[1]);
}

core.int buildCounterListCourseWorkResponse = 0;
buildListCourseWorkResponse() {
  var o = new api.ListCourseWorkResponse();
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    o.courseWork = buildUnnamed799();
    o.nextPageToken = "foo";
  }
  buildCounterListCourseWorkResponse--;
  return o;
}

checkListCourseWorkResponse(api.ListCourseWorkResponse o) {
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    checkUnnamed799(o.courseWork);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCourseWorkResponse--;
}

buildUnnamed800() {
  var o = new core.List<api.Course>();
  o.add(buildCourse());
  o.add(buildCourse());
  return o;
}

checkUnnamed800(core.List<api.Course> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourse(o[0]);
  checkCourse(o[1]);
}

core.int buildCounterListCoursesResponse = 0;
buildListCoursesResponse() {
  var o = new api.ListCoursesResponse();
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    o.courses = buildUnnamed800();
    o.nextPageToken = "foo";
  }
  buildCounterListCoursesResponse--;
  return o;
}

checkListCoursesResponse(api.ListCoursesResponse o) {
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    checkUnnamed800(o.courses);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoursesResponse--;
}

buildUnnamed801() {
  var o = new core.List<api.GuardianInvitation>();
  o.add(buildGuardianInvitation());
  o.add(buildGuardianInvitation());
  return o;
}

checkUnnamed801(core.List<api.GuardianInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardianInvitation(o[0]);
  checkGuardianInvitation(o[1]);
}

core.int buildCounterListGuardianInvitationsResponse = 0;
buildListGuardianInvitationsResponse() {
  var o = new api.ListGuardianInvitationsResponse();
  buildCounterListGuardianInvitationsResponse++;
  if (buildCounterListGuardianInvitationsResponse < 3) {
    o.guardianInvitations = buildUnnamed801();
    o.nextPageToken = "foo";
  }
  buildCounterListGuardianInvitationsResponse--;
  return o;
}

checkListGuardianInvitationsResponse(api.ListGuardianInvitationsResponse o) {
  buildCounterListGuardianInvitationsResponse++;
  if (buildCounterListGuardianInvitationsResponse < 3) {
    checkUnnamed801(o.guardianInvitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGuardianInvitationsResponse--;
}

buildUnnamed802() {
  var o = new core.List<api.Guardian>();
  o.add(buildGuardian());
  o.add(buildGuardian());
  return o;
}

checkUnnamed802(core.List<api.Guardian> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuardian(o[0]);
  checkGuardian(o[1]);
}

core.int buildCounterListGuardiansResponse = 0;
buildListGuardiansResponse() {
  var o = new api.ListGuardiansResponse();
  buildCounterListGuardiansResponse++;
  if (buildCounterListGuardiansResponse < 3) {
    o.guardians = buildUnnamed802();
    o.nextPageToken = "foo";
  }
  buildCounterListGuardiansResponse--;
  return o;
}

checkListGuardiansResponse(api.ListGuardiansResponse o) {
  buildCounterListGuardiansResponse++;
  if (buildCounterListGuardiansResponse < 3) {
    checkUnnamed802(o.guardians);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListGuardiansResponse--;
}

buildUnnamed803() {
  var o = new core.List<api.Invitation>();
  o.add(buildInvitation());
  o.add(buildInvitation());
  return o;
}

checkUnnamed803(core.List<api.Invitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvitation(o[0]);
  checkInvitation(o[1]);
}

core.int buildCounterListInvitationsResponse = 0;
buildListInvitationsResponse() {
  var o = new api.ListInvitationsResponse();
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    o.invitations = buildUnnamed803();
    o.nextPageToken = "foo";
  }
  buildCounterListInvitationsResponse--;
  return o;
}

checkListInvitationsResponse(api.ListInvitationsResponse o) {
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    checkUnnamed803(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInvitationsResponse--;
}

buildUnnamed804() {
  var o = new core.List<api.StudentSubmission>();
  o.add(buildStudentSubmission());
  o.add(buildStudentSubmission());
  return o;
}

checkUnnamed804(core.List<api.StudentSubmission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStudentSubmission(o[0]);
  checkStudentSubmission(o[1]);
}

core.int buildCounterListStudentSubmissionsResponse = 0;
buildListStudentSubmissionsResponse() {
  var o = new api.ListStudentSubmissionsResponse();
  buildCounterListStudentSubmissionsResponse++;
  if (buildCounterListStudentSubmissionsResponse < 3) {
    o.nextPageToken = "foo";
    o.studentSubmissions = buildUnnamed804();
  }
  buildCounterListStudentSubmissionsResponse--;
  return o;
}

checkListStudentSubmissionsResponse(api.ListStudentSubmissionsResponse o) {
  buildCounterListStudentSubmissionsResponse++;
  if (buildCounterListStudentSubmissionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed804(o.studentSubmissions);
  }
  buildCounterListStudentSubmissionsResponse--;
}

buildUnnamed805() {
  var o = new core.List<api.Student>();
  o.add(buildStudent());
  o.add(buildStudent());
  return o;
}

checkUnnamed805(core.List<api.Student> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStudent(o[0]);
  checkStudent(o[1]);
}

core.int buildCounterListStudentsResponse = 0;
buildListStudentsResponse() {
  var o = new api.ListStudentsResponse();
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    o.nextPageToken = "foo";
    o.students = buildUnnamed805();
  }
  buildCounterListStudentsResponse--;
  return o;
}

checkListStudentsResponse(api.ListStudentsResponse o) {
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed805(o.students);
  }
  buildCounterListStudentsResponse--;
}

buildUnnamed806() {
  var o = new core.List<api.Teacher>();
  o.add(buildTeacher());
  o.add(buildTeacher());
  return o;
}

checkUnnamed806(core.List<api.Teacher> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTeacher(o[0]);
  checkTeacher(o[1]);
}

core.int buildCounterListTeachersResponse = 0;
buildListTeachersResponse() {
  var o = new api.ListTeachersResponse();
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    o.nextPageToken = "foo";
    o.teachers = buildUnnamed806();
  }
  buildCounterListTeachersResponse--;
  return o;
}

checkListTeachersResponse(api.ListTeachersResponse o) {
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed806(o.teachers);
  }
  buildCounterListTeachersResponse--;
}

core.int buildCounterMaterial = 0;
buildMaterial() {
  var o = new api.Material();
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

checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkSharedDriveFile(o.driveFile);
    checkForm(o.form);
    checkLink(o.link);
    checkYouTubeVideo(o.youtubeVideo);
  }
  buildCounterMaterial--;
}

core.int buildCounterModifyAnnouncementAssigneesRequest = 0;
buildModifyAnnouncementAssigneesRequest() {
  var o = new api.ModifyAnnouncementAssigneesRequest();
  buildCounterModifyAnnouncementAssigneesRequest++;
  if (buildCounterModifyAnnouncementAssigneesRequest < 3) {
    o.assigneeMode = "foo";
    o.modifyIndividualStudentsOptions = buildModifyIndividualStudentsOptions();
  }
  buildCounterModifyAnnouncementAssigneesRequest--;
  return o;
}

checkModifyAnnouncementAssigneesRequest(
    api.ModifyAnnouncementAssigneesRequest o) {
  buildCounterModifyAnnouncementAssigneesRequest++;
  if (buildCounterModifyAnnouncementAssigneesRequest < 3) {
    unittest.expect(o.assigneeMode, unittest.equals('foo'));
    checkModifyIndividualStudentsOptions(o.modifyIndividualStudentsOptions);
  }
  buildCounterModifyAnnouncementAssigneesRequest--;
}

buildUnnamed807() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed807(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterModifyAttachmentsRequest = 0;
buildModifyAttachmentsRequest() {
  var o = new api.ModifyAttachmentsRequest();
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    o.addAttachments = buildUnnamed807();
  }
  buildCounterModifyAttachmentsRequest--;
  return o;
}

checkModifyAttachmentsRequest(api.ModifyAttachmentsRequest o) {
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    checkUnnamed807(o.addAttachments);
  }
  buildCounterModifyAttachmentsRequest--;
}

core.int buildCounterModifyCourseWorkAssigneesRequest = 0;
buildModifyCourseWorkAssigneesRequest() {
  var o = new api.ModifyCourseWorkAssigneesRequest();
  buildCounterModifyCourseWorkAssigneesRequest++;
  if (buildCounterModifyCourseWorkAssigneesRequest < 3) {
    o.assigneeMode = "foo";
    o.modifyIndividualStudentsOptions = buildModifyIndividualStudentsOptions();
  }
  buildCounterModifyCourseWorkAssigneesRequest--;
  return o;
}

checkModifyCourseWorkAssigneesRequest(api.ModifyCourseWorkAssigneesRequest o) {
  buildCounterModifyCourseWorkAssigneesRequest++;
  if (buildCounterModifyCourseWorkAssigneesRequest < 3) {
    unittest.expect(o.assigneeMode, unittest.equals('foo'));
    checkModifyIndividualStudentsOptions(o.modifyIndividualStudentsOptions);
  }
  buildCounterModifyCourseWorkAssigneesRequest--;
}

buildUnnamed808() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed808(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed809() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed809(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyIndividualStudentsOptions = 0;
buildModifyIndividualStudentsOptions() {
  var o = new api.ModifyIndividualStudentsOptions();
  buildCounterModifyIndividualStudentsOptions++;
  if (buildCounterModifyIndividualStudentsOptions < 3) {
    o.addStudentIds = buildUnnamed808();
    o.removeStudentIds = buildUnnamed809();
  }
  buildCounterModifyIndividualStudentsOptions--;
  return o;
}

checkModifyIndividualStudentsOptions(api.ModifyIndividualStudentsOptions o) {
  buildCounterModifyIndividualStudentsOptions++;
  if (buildCounterModifyIndividualStudentsOptions < 3) {
    checkUnnamed808(o.addStudentIds);
    checkUnnamed809(o.removeStudentIds);
  }
  buildCounterModifyIndividualStudentsOptions--;
}

buildUnnamed810() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed810(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMultipleChoiceQuestion = 0;
buildMultipleChoiceQuestion() {
  var o = new api.MultipleChoiceQuestion();
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    o.choices = buildUnnamed810();
  }
  buildCounterMultipleChoiceQuestion--;
  return o;
}

checkMultipleChoiceQuestion(api.MultipleChoiceQuestion o) {
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    checkUnnamed810(o.choices);
  }
  buildCounterMultipleChoiceQuestion--;
}

core.int buildCounterMultipleChoiceSubmission = 0;
buildMultipleChoiceSubmission() {
  var o = new api.MultipleChoiceSubmission();
  buildCounterMultipleChoiceSubmission++;
  if (buildCounterMultipleChoiceSubmission < 3) {
    o.answer = "foo";
  }
  buildCounterMultipleChoiceSubmission--;
  return o;
}

checkMultipleChoiceSubmission(api.MultipleChoiceSubmission o) {
  buildCounterMultipleChoiceSubmission++;
  if (buildCounterMultipleChoiceSubmission < 3) {
    unittest.expect(o.answer, unittest.equals('foo'));
  }
  buildCounterMultipleChoiceSubmission--;
}

core.int buildCounterName = 0;
buildName() {
  var o = new api.Name();
  buildCounterName++;
  if (buildCounterName < 3) {
    o.familyName = "foo";
    o.fullName = "foo";
    o.givenName = "foo";
  }
  buildCounterName--;
  return o;
}

checkName(api.Name o) {
  buildCounterName++;
  if (buildCounterName < 3) {
    unittest.expect(o.familyName, unittest.equals('foo'));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.givenName, unittest.equals('foo'));
  }
  buildCounterName--;
}

core.int buildCounterReclaimStudentSubmissionRequest = 0;
buildReclaimStudentSubmissionRequest() {
  var o = new api.ReclaimStudentSubmissionRequest();
  buildCounterReclaimStudentSubmissionRequest++;
  if (buildCounterReclaimStudentSubmissionRequest < 3) {}
  buildCounterReclaimStudentSubmissionRequest--;
  return o;
}

checkReclaimStudentSubmissionRequest(api.ReclaimStudentSubmissionRequest o) {
  buildCounterReclaimStudentSubmissionRequest++;
  if (buildCounterReclaimStudentSubmissionRequest < 3) {}
  buildCounterReclaimStudentSubmissionRequest--;
}

core.int buildCounterRegistration = 0;
buildRegistration() {
  var o = new api.Registration();
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    o.cloudPubsubTopic = buildCloudPubsubTopic();
    o.expiryTime = "foo";
    o.feed = buildFeed();
    o.registrationId = "foo";
  }
  buildCounterRegistration--;
  return o;
}

checkRegistration(api.Registration o) {
  buildCounterRegistration++;
  if (buildCounterRegistration < 3) {
    checkCloudPubsubTopic(o.cloudPubsubTopic);
    unittest.expect(o.expiryTime, unittest.equals('foo'));
    checkFeed(o.feed);
    unittest.expect(o.registrationId, unittest.equals('foo'));
  }
  buildCounterRegistration--;
}

core.int buildCounterReturnStudentSubmissionRequest = 0;
buildReturnStudentSubmissionRequest() {
  var o = new api.ReturnStudentSubmissionRequest();
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {}
  buildCounterReturnStudentSubmissionRequest--;
  return o;
}

checkReturnStudentSubmissionRequest(api.ReturnStudentSubmissionRequest o) {
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {}
  buildCounterReturnStudentSubmissionRequest--;
}

core.int buildCounterSharedDriveFile = 0;
buildSharedDriveFile() {
  var o = new api.SharedDriveFile();
  buildCounterSharedDriveFile++;
  if (buildCounterSharedDriveFile < 3) {
    o.driveFile = buildDriveFile();
    o.shareMode = "foo";
  }
  buildCounterSharedDriveFile--;
  return o;
}

checkSharedDriveFile(api.SharedDriveFile o) {
  buildCounterSharedDriveFile++;
  if (buildCounterSharedDriveFile < 3) {
    checkDriveFile(o.driveFile);
    unittest.expect(o.shareMode, unittest.equals('foo'));
  }
  buildCounterSharedDriveFile--;
}

core.int buildCounterShortAnswerSubmission = 0;
buildShortAnswerSubmission() {
  var o = new api.ShortAnswerSubmission();
  buildCounterShortAnswerSubmission++;
  if (buildCounterShortAnswerSubmission < 3) {
    o.answer = "foo";
  }
  buildCounterShortAnswerSubmission--;
  return o;
}

checkShortAnswerSubmission(api.ShortAnswerSubmission o) {
  buildCounterShortAnswerSubmission++;
  if (buildCounterShortAnswerSubmission < 3) {
    unittest.expect(o.answer, unittest.equals('foo'));
  }
  buildCounterShortAnswerSubmission--;
}

core.int buildCounterStateHistory = 0;
buildStateHistory() {
  var o = new api.StateHistory();
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    o.actorUserId = "foo";
    o.state = "foo";
    o.stateTimestamp = "foo";
  }
  buildCounterStateHistory--;
  return o;
}

checkStateHistory(api.StateHistory o) {
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    unittest.expect(o.actorUserId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateTimestamp, unittest.equals('foo'));
  }
  buildCounterStateHistory--;
}

core.int buildCounterStudent = 0;
buildStudent() {
  var o = new api.Student();
  buildCounterStudent++;
  if (buildCounterStudent < 3) {
    o.courseId = "foo";
    o.profile = buildUserProfile();
    o.studentWorkFolder = buildDriveFolder();
    o.userId = "foo";
  }
  buildCounterStudent--;
  return o;
}

checkStudent(api.Student o) {
  buildCounterStudent++;
  if (buildCounterStudent < 3) {
    unittest.expect(o.courseId, unittest.equals('foo'));
    checkUserProfile(o.profile);
    checkDriveFolder(o.studentWorkFolder);
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterStudent--;
}

buildUnnamed811() {
  var o = new core.List<api.SubmissionHistory>();
  o.add(buildSubmissionHistory());
  o.add(buildSubmissionHistory());
  return o;
}

checkUnnamed811(core.List<api.SubmissionHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubmissionHistory(o[0]);
  checkSubmissionHistory(o[1]);
}

core.int buildCounterStudentSubmission = 0;
buildStudentSubmission() {
  var o = new api.StudentSubmission();
  buildCounterStudentSubmission++;
  if (buildCounterStudentSubmission < 3) {
    o.alternateLink = "foo";
    o.assignedGrade = 42.0;
    o.assignmentSubmission = buildAssignmentSubmission();
    o.associatedWithDeveloper = true;
    o.courseId = "foo";
    o.courseWorkId = "foo";
    o.courseWorkType = "foo";
    o.creationTime = "foo";
    o.draftGrade = 42.0;
    o.id = "foo";
    o.late = true;
    o.multipleChoiceSubmission = buildMultipleChoiceSubmission();
    o.shortAnswerSubmission = buildShortAnswerSubmission();
    o.state = "foo";
    o.submissionHistory = buildUnnamed811();
    o.updateTime = "foo";
    o.userId = "foo";
  }
  buildCounterStudentSubmission--;
  return o;
}

checkStudentSubmission(api.StudentSubmission o) {
  buildCounterStudentSubmission++;
  if (buildCounterStudentSubmission < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.assignedGrade, unittest.equals(42.0));
    checkAssignmentSubmission(o.assignmentSubmission);
    unittest.expect(o.associatedWithDeveloper, unittest.isTrue);
    unittest.expect(o.courseId, unittest.equals('foo'));
    unittest.expect(o.courseWorkId, unittest.equals('foo'));
    unittest.expect(o.courseWorkType, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.draftGrade, unittest.equals(42.0));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.late, unittest.isTrue);
    checkMultipleChoiceSubmission(o.multipleChoiceSubmission);
    checkShortAnswerSubmission(o.shortAnswerSubmission);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed811(o.submissionHistory);
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterStudentSubmission--;
}

core.int buildCounterSubmissionHistory = 0;
buildSubmissionHistory() {
  var o = new api.SubmissionHistory();
  buildCounterSubmissionHistory++;
  if (buildCounterSubmissionHistory < 3) {
    o.gradeHistory = buildGradeHistory();
    o.stateHistory = buildStateHistory();
  }
  buildCounterSubmissionHistory--;
  return o;
}

checkSubmissionHistory(api.SubmissionHistory o) {
  buildCounterSubmissionHistory++;
  if (buildCounterSubmissionHistory < 3) {
    checkGradeHistory(o.gradeHistory);
    checkStateHistory(o.stateHistory);
  }
  buildCounterSubmissionHistory--;
}

core.int buildCounterTeacher = 0;
buildTeacher() {
  var o = new api.Teacher();
  buildCounterTeacher++;
  if (buildCounterTeacher < 3) {
    o.courseId = "foo";
    o.profile = buildUserProfile();
    o.userId = "foo";
  }
  buildCounterTeacher--;
  return o;
}

checkTeacher(api.Teacher o) {
  buildCounterTeacher++;
  if (buildCounterTeacher < 3) {
    unittest.expect(o.courseId, unittest.equals('foo'));
    checkUserProfile(o.profile);
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterTeacher--;
}

core.int buildCounterTimeOfDay = 0;
buildTimeOfDay() {
  var o = new api.TimeOfDay();
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

checkTimeOfDay(api.TimeOfDay o) {
  buildCounterTimeOfDay++;
  if (buildCounterTimeOfDay < 3) {
    unittest.expect(o.hours, unittest.equals(42));
    unittest.expect(o.minutes, unittest.equals(42));
    unittest.expect(o.nanos, unittest.equals(42));
    unittest.expect(o.seconds, unittest.equals(42));
  }
  buildCounterTimeOfDay--;
}

core.int buildCounterTurnInStudentSubmissionRequest = 0;
buildTurnInStudentSubmissionRequest() {
  var o = new api.TurnInStudentSubmissionRequest();
  buildCounterTurnInStudentSubmissionRequest++;
  if (buildCounterTurnInStudentSubmissionRequest < 3) {}
  buildCounterTurnInStudentSubmissionRequest--;
  return o;
}

checkTurnInStudentSubmissionRequest(api.TurnInStudentSubmissionRequest o) {
  buildCounterTurnInStudentSubmissionRequest++;
  if (buildCounterTurnInStudentSubmissionRequest < 3) {}
  buildCounterTurnInStudentSubmissionRequest--;
}

buildUnnamed812() {
  var o = new core.List<api.GlobalPermission>();
  o.add(buildGlobalPermission());
  o.add(buildGlobalPermission());
  return o;
}

checkUnnamed812(core.List<api.GlobalPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGlobalPermission(o[0]);
  checkGlobalPermission(o[1]);
}

core.int buildCounterUserProfile = 0;
buildUserProfile() {
  var o = new api.UserProfile();
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    o.emailAddress = "foo";
    o.id = "foo";
    o.name = buildName();
    o.permissions = buildUnnamed812();
    o.photoUrl = "foo";
    o.verifiedTeacher = true;
  }
  buildCounterUserProfile--;
  return o;
}

checkUserProfile(api.UserProfile o) {
  buildCounterUserProfile++;
  if (buildCounterUserProfile < 3) {
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkName(o.name);
    checkUnnamed812(o.permissions);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
    unittest.expect(o.verifiedTeacher, unittest.isTrue);
  }
  buildCounterUserProfile--;
}

core.int buildCounterYouTubeVideo = 0;
buildYouTubeVideo() {
  var o = new api.YouTubeVideo();
  buildCounterYouTubeVideo++;
  if (buildCounterYouTubeVideo < 3) {
    o.alternateLink = "foo";
    o.id = "foo";
    o.thumbnailUrl = "foo";
    o.title = "foo";
  }
  buildCounterYouTubeVideo--;
  return o;
}

checkYouTubeVideo(api.YouTubeVideo o) {
  buildCounterYouTubeVideo++;
  if (buildCounterYouTubeVideo < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.thumbnailUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterYouTubeVideo--;
}

buildUnnamed813() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed814() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed814(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed815() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed815(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed816() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed816(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed817() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed817(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Announcement", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnouncement();
      var od = new api.Announcement.fromJson(o.toJson());
      checkAnnouncement(od);
    });
  });

  unittest.group("obj-schema-Assignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssignment();
      var od = new api.Assignment.fromJson(o.toJson());
      checkAssignment(od);
    });
  });

  unittest.group("obj-schema-AssignmentSubmission", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssignmentSubmission();
      var od = new api.AssignmentSubmission.fromJson(o.toJson());
      checkAssignmentSubmission(od);
    });
  });

  unittest.group("obj-schema-Attachment", () {
    unittest.test("to-json--from-json", () {
      var o = buildAttachment();
      var od = new api.Attachment.fromJson(o.toJson());
      checkAttachment(od);
    });
  });

  unittest.group("obj-schema-CloudPubsubTopic", () {
    unittest.test("to-json--from-json", () {
      var o = buildCloudPubsubTopic();
      var od = new api.CloudPubsubTopic.fromJson(o.toJson());
      checkCloudPubsubTopic(od);
    });
  });

  unittest.group("obj-schema-Course", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourse();
      var od = new api.Course.fromJson(o.toJson());
      checkCourse(od);
    });
  });

  unittest.group("obj-schema-CourseAlias", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourseAlias();
      var od = new api.CourseAlias.fromJson(o.toJson());
      checkCourseAlias(od);
    });
  });

  unittest.group("obj-schema-CourseMaterial", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourseMaterial();
      var od = new api.CourseMaterial.fromJson(o.toJson());
      checkCourseMaterial(od);
    });
  });

  unittest.group("obj-schema-CourseMaterialSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourseMaterialSet();
      var od = new api.CourseMaterialSet.fromJson(o.toJson());
      checkCourseMaterialSet(od);
    });
  });

  unittest.group("obj-schema-CourseRosterChangesInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourseRosterChangesInfo();
      var od = new api.CourseRosterChangesInfo.fromJson(o.toJson());
      checkCourseRosterChangesInfo(od);
    });
  });

  unittest.group("obj-schema-CourseWork", () {
    unittest.test("to-json--from-json", () {
      var o = buildCourseWork();
      var od = new api.CourseWork.fromJson(o.toJson());
      checkCourseWork(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-DriveFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveFile();
      var od = new api.DriveFile.fromJson(o.toJson());
      checkDriveFile(od);
    });
  });

  unittest.group("obj-schema-DriveFolder", () {
    unittest.test("to-json--from-json", () {
      var o = buildDriveFolder();
      var od = new api.DriveFolder.fromJson(o.toJson());
      checkDriveFolder(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-Feed", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeed();
      var od = new api.Feed.fromJson(o.toJson());
      checkFeed(od);
    });
  });

  unittest.group("obj-schema-Form", () {
    unittest.test("to-json--from-json", () {
      var o = buildForm();
      var od = new api.Form.fromJson(o.toJson());
      checkForm(od);
    });
  });

  unittest.group("obj-schema-GlobalPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildGlobalPermission();
      var od = new api.GlobalPermission.fromJson(o.toJson());
      checkGlobalPermission(od);
    });
  });

  unittest.group("obj-schema-GradeHistory", () {
    unittest.test("to-json--from-json", () {
      var o = buildGradeHistory();
      var od = new api.GradeHistory.fromJson(o.toJson());
      checkGradeHistory(od);
    });
  });

  unittest.group("obj-schema-Guardian", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuardian();
      var od = new api.Guardian.fromJson(o.toJson());
      checkGuardian(od);
    });
  });

  unittest.group("obj-schema-GuardianInvitation", () {
    unittest.test("to-json--from-json", () {
      var o = buildGuardianInvitation();
      var od = new api.GuardianInvitation.fromJson(o.toJson());
      checkGuardianInvitation(od);
    });
  });

  unittest.group("obj-schema-IndividualStudentsOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildIndividualStudentsOptions();
      var od = new api.IndividualStudentsOptions.fromJson(o.toJson());
      checkIndividualStudentsOptions(od);
    });
  });

  unittest.group("obj-schema-Invitation", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvitation();
      var od = new api.Invitation.fromJson(o.toJson());
      checkInvitation(od);
    });
  });

  unittest.group("obj-schema-Link", () {
    unittest.test("to-json--from-json", () {
      var o = buildLink();
      var od = new api.Link.fromJson(o.toJson());
      checkLink(od);
    });
  });

  unittest.group("obj-schema-ListAnnouncementsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListAnnouncementsResponse();
      var od = new api.ListAnnouncementsResponse.fromJson(o.toJson());
      checkListAnnouncementsResponse(od);
    });
  });

  unittest.group("obj-schema-ListCourseAliasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCourseAliasesResponse();
      var od = new api.ListCourseAliasesResponse.fromJson(o.toJson());
      checkListCourseAliasesResponse(od);
    });
  });

  unittest.group("obj-schema-ListCourseWorkResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCourseWorkResponse();
      var od = new api.ListCourseWorkResponse.fromJson(o.toJson());
      checkListCourseWorkResponse(od);
    });
  });

  unittest.group("obj-schema-ListCoursesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCoursesResponse();
      var od = new api.ListCoursesResponse.fromJson(o.toJson());
      checkListCoursesResponse(od);
    });
  });

  unittest.group("obj-schema-ListGuardianInvitationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGuardianInvitationsResponse();
      var od = new api.ListGuardianInvitationsResponse.fromJson(o.toJson());
      checkListGuardianInvitationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListGuardiansResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListGuardiansResponse();
      var od = new api.ListGuardiansResponse.fromJson(o.toJson());
      checkListGuardiansResponse(od);
    });
  });

  unittest.group("obj-schema-ListInvitationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListInvitationsResponse();
      var od = new api.ListInvitationsResponse.fromJson(o.toJson());
      checkListInvitationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListStudentSubmissionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStudentSubmissionsResponse();
      var od = new api.ListStudentSubmissionsResponse.fromJson(o.toJson());
      checkListStudentSubmissionsResponse(od);
    });
  });

  unittest.group("obj-schema-ListStudentsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListStudentsResponse();
      var od = new api.ListStudentsResponse.fromJson(o.toJson());
      checkListStudentsResponse(od);
    });
  });

  unittest.group("obj-schema-ListTeachersResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListTeachersResponse();
      var od = new api.ListTeachersResponse.fromJson(o.toJson());
      checkListTeachersResponse(od);
    });
  });

  unittest.group("obj-schema-Material", () {
    unittest.test("to-json--from-json", () {
      var o = buildMaterial();
      var od = new api.Material.fromJson(o.toJson());
      checkMaterial(od);
    });
  });

  unittest.group("obj-schema-ModifyAnnouncementAssigneesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyAnnouncementAssigneesRequest();
      var od = new api.ModifyAnnouncementAssigneesRequest.fromJson(o.toJson());
      checkModifyAnnouncementAssigneesRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyAttachmentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyAttachmentsRequest();
      var od = new api.ModifyAttachmentsRequest.fromJson(o.toJson());
      checkModifyAttachmentsRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyCourseWorkAssigneesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyCourseWorkAssigneesRequest();
      var od = new api.ModifyCourseWorkAssigneesRequest.fromJson(o.toJson());
      checkModifyCourseWorkAssigneesRequest(od);
    });
  });

  unittest.group("obj-schema-ModifyIndividualStudentsOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyIndividualStudentsOptions();
      var od = new api.ModifyIndividualStudentsOptions.fromJson(o.toJson());
      checkModifyIndividualStudentsOptions(od);
    });
  });

  unittest.group("obj-schema-MultipleChoiceQuestion", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultipleChoiceQuestion();
      var od = new api.MultipleChoiceQuestion.fromJson(o.toJson());
      checkMultipleChoiceQuestion(od);
    });
  });

  unittest.group("obj-schema-MultipleChoiceSubmission", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultipleChoiceSubmission();
      var od = new api.MultipleChoiceSubmission.fromJson(o.toJson());
      checkMultipleChoiceSubmission(od);
    });
  });

  unittest.group("obj-schema-Name", () {
    unittest.test("to-json--from-json", () {
      var o = buildName();
      var od = new api.Name.fromJson(o.toJson());
      checkName(od);
    });
  });

  unittest.group("obj-schema-ReclaimStudentSubmissionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReclaimStudentSubmissionRequest();
      var od = new api.ReclaimStudentSubmissionRequest.fromJson(o.toJson());
      checkReclaimStudentSubmissionRequest(od);
    });
  });

  unittest.group("obj-schema-Registration", () {
    unittest.test("to-json--from-json", () {
      var o = buildRegistration();
      var od = new api.Registration.fromJson(o.toJson());
      checkRegistration(od);
    });
  });

  unittest.group("obj-schema-ReturnStudentSubmissionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReturnStudentSubmissionRequest();
      var od = new api.ReturnStudentSubmissionRequest.fromJson(o.toJson());
      checkReturnStudentSubmissionRequest(od);
    });
  });

  unittest.group("obj-schema-SharedDriveFile", () {
    unittest.test("to-json--from-json", () {
      var o = buildSharedDriveFile();
      var od = new api.SharedDriveFile.fromJson(o.toJson());
      checkSharedDriveFile(od);
    });
  });

  unittest.group("obj-schema-ShortAnswerSubmission", () {
    unittest.test("to-json--from-json", () {
      var o = buildShortAnswerSubmission();
      var od = new api.ShortAnswerSubmission.fromJson(o.toJson());
      checkShortAnswerSubmission(od);
    });
  });

  unittest.group("obj-schema-StateHistory", () {
    unittest.test("to-json--from-json", () {
      var o = buildStateHistory();
      var od = new api.StateHistory.fromJson(o.toJson());
      checkStateHistory(od);
    });
  });

  unittest.group("obj-schema-Student", () {
    unittest.test("to-json--from-json", () {
      var o = buildStudent();
      var od = new api.Student.fromJson(o.toJson());
      checkStudent(od);
    });
  });

  unittest.group("obj-schema-StudentSubmission", () {
    unittest.test("to-json--from-json", () {
      var o = buildStudentSubmission();
      var od = new api.StudentSubmission.fromJson(o.toJson());
      checkStudentSubmission(od);
    });
  });

  unittest.group("obj-schema-SubmissionHistory", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubmissionHistory();
      var od = new api.SubmissionHistory.fromJson(o.toJson());
      checkSubmissionHistory(od);
    });
  });

  unittest.group("obj-schema-Teacher", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeacher();
      var od = new api.Teacher.fromJson(o.toJson());
      checkTeacher(od);
    });
  });

  unittest.group("obj-schema-TimeOfDay", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDay();
      var od = new api.TimeOfDay.fromJson(o.toJson());
      checkTimeOfDay(od);
    });
  });

  unittest.group("obj-schema-TurnInStudentSubmissionRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTurnInStudentSubmissionRequest();
      var od = new api.TurnInStudentSubmissionRequest.fromJson(o.toJson());
      checkTurnInStudentSubmissionRequest(od);
    });
  });

  unittest.group("obj-schema-UserProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserProfile();
      var od = new api.UserProfile.fromJson(o.toJson());
      checkUserProfile(od);
    });
  });

  unittest.group("obj-schema-YouTubeVideo", () {
    unittest.test("to-json--from-json", () {
      var o = buildYouTubeVideo();
      var od = new api.YouTubeVideo.fromJson(o.toJson());
      checkYouTubeVideo(od);
    });
  });

  unittest.group("resource-CoursesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_request = buildCourse();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/courses"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_studentId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_courseStates = buildUnnamed813();
      var arg_teacherId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("v1/courses"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            queryMap["studentId"].first, unittest.equals(arg_studentId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["courseStates"], unittest.equals(arg_courseStates));
        unittest.expect(
            queryMap["teacherId"].first, unittest.equals(arg_teacherId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCoursesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              studentId: arg_studentId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              courseStates: arg_courseStates,
              teacherId: arg_teacherId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListCoursesResponse response) {
        checkListCoursesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_request = buildCourse();
      var arg_id = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_request = buildCourse();
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Course response) {
        checkCourse(response);
      })));
    });
  });

  unittest.group("resource-CoursesAliasesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res =
          new api.ClassroomApi(mock).courses.aliases;
      var arg_request = buildCourseAlias();
      var arg_courseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CourseAlias.fromJson(json);
        checkCourseAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourseAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_courseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CourseAlias response) {
        checkCourseAlias(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res =
          new api.ClassroomApi(mock).courses.aliases;
      var arg_courseId = "foo";
      var arg_alias = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/aliases/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_alias"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_courseId, arg_alias, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res =
          new api.ClassroomApi(mock).courses.aliases;
      var arg_courseId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/aliases"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListCourseAliasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.ListCourseAliasesResponse response) {
        checkListCourseAliasesResponse(response);
      })));
    });
  });

  unittest.group("resource-CoursesAnnouncementsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_request = buildAnnouncement();
      var arg_courseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Announcement.fromJson(json);
        checkAnnouncement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/announcements"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildAnnouncement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_courseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Announcement response) {
        checkAnnouncement(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/announcements/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_courseId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/announcements/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildAnnouncement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_courseId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Announcement response) {
        checkAnnouncement(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_courseId = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_announcementStates = buildUnnamed814();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/announcements"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["announcementStates"],
            unittest.equals(arg_announcementStates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListAnnouncementsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              announcementStates: arg_announcementStates,
              $fields: arg_$fields)
          .then(
              unittest.expectAsync1(((api.ListAnnouncementsResponse response) {
        checkListAnnouncementsResponse(response);
      })));
    });

    unittest.test("method--modifyAssignees", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_request = buildModifyAnnouncementAssigneesRequest();
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyAnnouncementAssigneesRequest.fromJson(json);
        checkModifyAnnouncementAssigneesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/announcements/"));
        pathOffset += 15;
        index = path.indexOf(":modifyAssignees", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":modifyAssignees"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildAnnouncement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyAssignees(arg_request, arg_courseId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Announcement response) {
        checkAnnouncement(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CoursesAnnouncementsResourceApi res =
          new api.ClassroomApi(mock).courses.announcements;
      var arg_request = buildAnnouncement();
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Announcement.fromJson(json);
        checkAnnouncement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/announcements/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/announcements/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildAnnouncement());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_courseId, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Announcement response) {
        checkAnnouncement(response);
      })));
    });
  });

  unittest.group("resource-CoursesCourseWorkResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_request = buildCourseWork();
      var arg_courseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CourseWork.fromJson(json);
        checkCourseWork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/courseWork"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_courseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_courseId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_courseId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_courseId = "foo";
      var arg_pageToken = "foo";
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_courseWorkStates = buildUnnamed815();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/courseWork"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(
            queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["courseWorkStates"],
            unittest.equals(arg_courseWorkStates));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCourseWorkResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId,
              pageToken: arg_pageToken,
              orderBy: arg_orderBy,
              pageSize: arg_pageSize,
              courseWorkStates: arg_courseWorkStates,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListCourseWorkResponse response) {
        checkListCourseWorkResponse(response);
      })));
    });

    unittest.test("method--modifyAssignees", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_request = buildModifyCourseWorkAssigneesRequest();
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyCourseWorkAssigneesRequest.fromJson(json);
        checkModifyCourseWorkAssigneesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf(":modifyAssignees", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals(":modifyAssignees"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyAssignees(arg_request, arg_courseId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork;
      var arg_request = buildCourseWork();
      var arg_courseId = "foo";
      var arg_id = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CourseWork.fromJson(json);
        checkCourseWork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_courseId, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });
  });

  unittest.group("resource-CoursesCourseWorkStudentSubmissionsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_courseId, arg_courseWorkId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_userId = "foo";
      var arg_late = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_states = buildUnnamed816();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/studentSubmissions"));
        pathOffset += 19;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(queryMap["late"].first, unittest.equals(arg_late));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStudentSubmissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId, arg_courseWorkId,
              userId: arg_userId,
              late: arg_late,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              states: arg_states,
              $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.ListStudentSubmissionsResponse response) {
        checkListStudentSubmissionsResponse(response);
      })));
    });

    unittest.test("method--modifyAttachments", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildModifyAttachmentsRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ModifyAttachmentsRequest.fromJson(json);
        checkModifyAttachmentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":modifyAttachments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals(":modifyAttachments"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .modifyAttachments(
              arg_request, arg_courseId, arg_courseWorkId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildStudentSubmission();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.StudentSubmission.fromJson(json);
        checkStudentSubmission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_courseId, arg_courseWorkId, arg_id,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--reclaim", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildReclaimStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReclaimStudentSubmissionRequest.fromJson(json);
        checkReclaimStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":reclaim", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals(":reclaim"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reclaim(arg_request, arg_courseId, arg_courseWorkId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--return_", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildReturnStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReturnStudentSubmissionRequest.fromJson(json);
        checkReturnStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":return", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":return"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .return_(arg_request, arg_courseId, arg_courseWorkId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--turnIn", () {
      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res =
          new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildTurnInStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.TurnInStudentSubmissionRequest.fromJson(json);
        checkTurnInStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":turnIn", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":turnIn"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .turnIn(arg_request, arg_courseId, arg_courseWorkId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-CoursesStudentsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res =
          new api.ClassroomApi(mock).courses.students;
      var arg_request = buildStudent();
      var arg_courseId = "foo";
      var arg_enrollmentCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Student.fromJson(json);
        checkStudent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/students"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["enrollmentCode"].first,
            unittest.equals(arg_enrollmentCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_courseId,
              enrollmentCode: arg_enrollmentCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Student response) {
        checkStudent(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res =
          new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/students/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_courseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res =
          new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/students/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildStudent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_courseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Student response) {
        checkStudent(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res =
          new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/students"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListStudentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListStudentsResponse response) {
        checkListStudentsResponse(response);
      })));
    });
  });

  unittest.group("resource-CoursesTeachersResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res =
          new api.ClassroomApi(mock).courses.teachers;
      var arg_request = buildTeacher();
      var arg_courseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Teacher.fromJson(json);
        checkTeacher(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/teachers"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildTeacher());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_courseId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Teacher response) {
        checkTeacher(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res =
          new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/teachers/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_courseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res =
          new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/teachers/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildTeacher());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_courseId, arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Teacher response) {
        checkTeacher(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res =
          new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
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
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/teachers"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildListTeachersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_courseId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListTeachersResponse response) {
        checkListTeachersResponse(response);
      })));
    });
  });

  unittest.group("resource-InvitationsResourceApi", () {
    unittest.test("method--accept", () {
      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/invitations/"));
        pathOffset += 15;
        index = path.indexOf(":accept", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals(":accept"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .accept(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_request = buildInvitation();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Invitation.fromJson(json);
        checkInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/invitations"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Invitation response) {
        checkInvitation(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/invitations/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("v1/invitations/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Invitation response) {
        checkInvitation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_pageToken = "foo";
      var arg_userId = "foo";
      var arg_pageSize = 42;
      var arg_courseId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/invitations"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["courseId"].first, unittest.equals(arg_courseId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              userId: arg_userId,
              pageSize: arg_pageSize,
              courseId: arg_courseId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListInvitationsResponse response) {
        checkListInvitationsResponse(response);
      })));
    });
  });

  unittest.group("resource-RegistrationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.RegistrationsResourceApi res =
          new api.ClassroomApi(mock).registrations;
      var arg_request = buildRegistration();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Registration.fromJson(json);
        checkRegistration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/registrations"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildRegistration());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Registration response) {
        checkRegistration(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.RegistrationsResourceApi res =
          new api.ClassroomApi(mock).registrations;
      var arg_registrationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("v1/registrations/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_registrationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_registrationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-UserProfilesResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UserProfilesResourceApi res = new api.ClassroomApi(mock).userProfiles;
      var arg_userId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_userId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildUserProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_userId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.UserProfile response) {
        checkUserProfile(response);
      })));
    });
  });

  unittest.group("resource-UserProfilesGuardianInvitationsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardianInvitationsResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardianInvitations;
      var arg_request = buildGuardianInvitation();
      var arg_studentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GuardianInvitation.fromJson(json);
        checkGuardianInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardianInvitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/guardianInvitations"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGuardianInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_studentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GuardianInvitation response) {
        checkGuardianInvitation(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardianInvitationsResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardianInvitations;
      var arg_studentId = "foo";
      var arg_invitationId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardianInvitations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/guardianInvitations/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_invitationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGuardianInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_studentId, arg_invitationId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GuardianInvitation response) {
        checkGuardianInvitation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardianInvitationsResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardianInvitations;
      var arg_studentId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_states = buildUnnamed817();
      var arg_invitedEmailAddress = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardianInvitations", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/guardianInvitations"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(queryMap["invitedEmailAddress"].first,
            unittest.equals(arg_invitedEmailAddress));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListGuardianInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_studentId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              states: arg_states,
              invitedEmailAddress: arg_invitedEmailAddress,
              $fields: arg_$fields)
          .then(unittest
              .expectAsync1(((api.ListGuardianInvitationsResponse response) {
        checkListGuardianInvitationsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardianInvitationsResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardianInvitations;
      var arg_request = buildGuardianInvitation();
      var arg_studentId = "foo";
      var arg_invitationId = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GuardianInvitation.fromJson(json);
        checkGuardianInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardianInvitations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/guardianInvitations/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_invitationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGuardianInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_studentId, arg_invitationId,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.GuardianInvitation response) {
        checkGuardianInvitation(response);
      })));
    });
  });

  unittest.group("resource-UserProfilesGuardiansResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardiansResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardians;
      var arg_studentId = "foo";
      var arg_guardianId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardians/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/guardians/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_guardianId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_studentId, arg_guardianId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardiansResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardians;
      var arg_studentId = "foo";
      var arg_guardianId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardians/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/guardians/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_guardianId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        var resp = convert.JSON.encode(buildGuardian());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_studentId, arg_guardianId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.Guardian response) {
        checkGuardian(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.UserProfilesGuardiansResourceApi res =
          new api.ClassroomApi(mock).userProfiles.guardians;
      var arg_studentId = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_invitedEmailAddress = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("v1/userProfiles/"));
        pathOffset += 16;
        index = path.indexOf("/guardians", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_studentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/guardians"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
        unittest.expect(queryMap["invitedEmailAddress"].first,
            unittest.equals(arg_invitedEmailAddress));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListGuardiansResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_studentId,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              invitedEmailAddress: arg_invitedEmailAddress,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((api.ListGuardiansResponse response) {
        checkListGuardiansResponse(response);
      })));
    });
  });
}
