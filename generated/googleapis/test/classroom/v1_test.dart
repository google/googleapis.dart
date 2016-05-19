library googleapis.classroom.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

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
      return request.finalize()
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
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

buildUnnamed612() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed612(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterAssignmentSubmission = 0;
buildAssignmentSubmission() {
  var o = new api.AssignmentSubmission();
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    o.attachments = buildUnnamed612();
  }
  buildCounterAssignmentSubmission--;
  return o;
}

checkAssignmentSubmission(api.AssignmentSubmission o) {
  buildCounterAssignmentSubmission++;
  if (buildCounterAssignmentSubmission < 3) {
    checkUnnamed612(o.attachments);
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

buildUnnamed613() {
  var o = new core.List<api.CourseMaterialSet>();
  o.add(buildCourseMaterialSet());
  o.add(buildCourseMaterialSet());
  return o;
}

checkUnnamed613(core.List<api.CourseMaterialSet> o) {
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
    o.courseGroupEmail = "foo";
    o.courseMaterialSets = buildUnnamed613();
    o.courseState = "foo";
    o.creationTime = "foo";
    o.description = "foo";
    o.descriptionHeading = "foo";
    o.enrollmentCode = "foo";
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
    unittest.expect(o.courseGroupEmail, unittest.equals('foo'));
    checkUnnamed613(o.courseMaterialSets);
    unittest.expect(o.courseState, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.descriptionHeading, unittest.equals('foo'));
    unittest.expect(o.enrollmentCode, unittest.equals('foo'));
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

buildUnnamed614() {
  var o = new core.List<api.CourseMaterial>();
  o.add(buildCourseMaterial());
  o.add(buildCourseMaterial());
  return o;
}

checkUnnamed614(core.List<api.CourseMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseMaterial(o[0]);
  checkCourseMaterial(o[1]);
}

core.int buildCounterCourseMaterialSet = 0;
buildCourseMaterialSet() {
  var o = new api.CourseMaterialSet();
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    o.materials = buildUnnamed614();
    o.title = "foo";
  }
  buildCounterCourseMaterialSet--;
  return o;
}

checkCourseMaterialSet(api.CourseMaterialSet o) {
  buildCounterCourseMaterialSet++;
  if (buildCounterCourseMaterialSet < 3) {
    checkUnnamed614(o.materials);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterCourseMaterialSet--;
}

buildUnnamed615() {
  var o = new core.List<api.Material>();
  o.add(buildMaterial());
  o.add(buildMaterial());
  return o;
}

checkUnnamed615(core.List<api.Material> o) {
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
    o.assignment = buildAssignment();
    o.associatedWithDeveloper = true;
    o.courseId = "foo";
    o.creationTime = "foo";
    o.description = "foo";
    o.dueDate = buildDate();
    o.dueTime = buildTimeOfDay();
    o.id = "foo";
    o.materials = buildUnnamed615();
    o.maxPoints = 42.0;
    o.multipleChoiceQuestion = buildMultipleChoiceQuestion();
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
    checkAssignment(o.assignment);
    unittest.expect(o.associatedWithDeveloper, unittest.isTrue);
    unittest.expect(o.courseId, unittest.equals('foo'));
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkDate(o.dueDate);
    checkTimeOfDay(o.dueTime);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed615(o.materials);
    unittest.expect(o.maxPoints, unittest.equals(42.0));
    checkMultipleChoiceQuestion(o.multipleChoiceQuestion);
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
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {
  }
  buildCounterEmpty--;
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

buildUnnamed616() {
  var o = new core.List<api.CourseAlias>();
  o.add(buildCourseAlias());
  o.add(buildCourseAlias());
  return o;
}

checkUnnamed616(core.List<api.CourseAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseAlias(o[0]);
  checkCourseAlias(o[1]);
}

core.int buildCounterListCourseAliasesResponse = 0;
buildListCourseAliasesResponse() {
  var o = new api.ListCourseAliasesResponse();
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    o.aliases = buildUnnamed616();
    o.nextPageToken = "foo";
  }
  buildCounterListCourseAliasesResponse--;
  return o;
}

checkListCourseAliasesResponse(api.ListCourseAliasesResponse o) {
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    checkUnnamed616(o.aliases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCourseAliasesResponse--;
}

buildUnnamed617() {
  var o = new core.List<api.CourseWork>();
  o.add(buildCourseWork());
  o.add(buildCourseWork());
  return o;
}

checkUnnamed617(core.List<api.CourseWork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseWork(o[0]);
  checkCourseWork(o[1]);
}

core.int buildCounterListCourseWorkResponse = 0;
buildListCourseWorkResponse() {
  var o = new api.ListCourseWorkResponse();
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    o.courseWork = buildUnnamed617();
    o.nextPageToken = "foo";
  }
  buildCounterListCourseWorkResponse--;
  return o;
}

checkListCourseWorkResponse(api.ListCourseWorkResponse o) {
  buildCounterListCourseWorkResponse++;
  if (buildCounterListCourseWorkResponse < 3) {
    checkUnnamed617(o.courseWork);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCourseWorkResponse--;
}

buildUnnamed618() {
  var o = new core.List<api.Course>();
  o.add(buildCourse());
  o.add(buildCourse());
  return o;
}

checkUnnamed618(core.List<api.Course> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourse(o[0]);
  checkCourse(o[1]);
}

core.int buildCounterListCoursesResponse = 0;
buildListCoursesResponse() {
  var o = new api.ListCoursesResponse();
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    o.courses = buildUnnamed618();
    o.nextPageToken = "foo";
  }
  buildCounterListCoursesResponse--;
  return o;
}

checkListCoursesResponse(api.ListCoursesResponse o) {
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    checkUnnamed618(o.courses);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoursesResponse--;
}

buildUnnamed619() {
  var o = new core.List<api.Invitation>();
  o.add(buildInvitation());
  o.add(buildInvitation());
  return o;
}

checkUnnamed619(core.List<api.Invitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvitation(o[0]);
  checkInvitation(o[1]);
}

core.int buildCounterListInvitationsResponse = 0;
buildListInvitationsResponse() {
  var o = new api.ListInvitationsResponse();
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    o.invitations = buildUnnamed619();
    o.nextPageToken = "foo";
  }
  buildCounterListInvitationsResponse--;
  return o;
}

checkListInvitationsResponse(api.ListInvitationsResponse o) {
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    checkUnnamed619(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInvitationsResponse--;
}

buildUnnamed620() {
  var o = new core.List<api.StudentSubmission>();
  o.add(buildStudentSubmission());
  o.add(buildStudentSubmission());
  return o;
}

checkUnnamed620(core.List<api.StudentSubmission> o) {
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
    o.studentSubmissions = buildUnnamed620();
  }
  buildCounterListStudentSubmissionsResponse--;
  return o;
}

checkListStudentSubmissionsResponse(api.ListStudentSubmissionsResponse o) {
  buildCounterListStudentSubmissionsResponse++;
  if (buildCounterListStudentSubmissionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed620(o.studentSubmissions);
  }
  buildCounterListStudentSubmissionsResponse--;
}

buildUnnamed621() {
  var o = new core.List<api.Student>();
  o.add(buildStudent());
  o.add(buildStudent());
  return o;
}

checkUnnamed621(core.List<api.Student> o) {
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
    o.students = buildUnnamed621();
  }
  buildCounterListStudentsResponse--;
  return o;
}

checkListStudentsResponse(api.ListStudentsResponse o) {
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed621(o.students);
  }
  buildCounterListStudentsResponse--;
}

buildUnnamed622() {
  var o = new core.List<api.Teacher>();
  o.add(buildTeacher());
  o.add(buildTeacher());
  return o;
}

checkUnnamed622(core.List<api.Teacher> o) {
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
    o.teachers = buildUnnamed622();
  }
  buildCounterListTeachersResponse--;
  return o;
}

checkListTeachersResponse(api.ListTeachersResponse o) {
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed622(o.teachers);
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

buildUnnamed623() {
  var o = new core.List<api.Attachment>();
  o.add(buildAttachment());
  o.add(buildAttachment());
  return o;
}

checkUnnamed623(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterModifyAttachmentsRequest = 0;
buildModifyAttachmentsRequest() {
  var o = new api.ModifyAttachmentsRequest();
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    o.addAttachments = buildUnnamed623();
  }
  buildCounterModifyAttachmentsRequest--;
  return o;
}

checkModifyAttachmentsRequest(api.ModifyAttachmentsRequest o) {
  buildCounterModifyAttachmentsRequest++;
  if (buildCounterModifyAttachmentsRequest < 3) {
    checkUnnamed623(o.addAttachments);
  }
  buildCounterModifyAttachmentsRequest--;
}

buildUnnamed624() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed624(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMultipleChoiceQuestion = 0;
buildMultipleChoiceQuestion() {
  var o = new api.MultipleChoiceQuestion();
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    o.choices = buildUnnamed624();
  }
  buildCounterMultipleChoiceQuestion--;
  return o;
}

checkMultipleChoiceQuestion(api.MultipleChoiceQuestion o) {
  buildCounterMultipleChoiceQuestion++;
  if (buildCounterMultipleChoiceQuestion < 3) {
    checkUnnamed624(o.choices);
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
  if (buildCounterReclaimStudentSubmissionRequest < 3) {
  }
  buildCounterReclaimStudentSubmissionRequest--;
  return o;
}

checkReclaimStudentSubmissionRequest(api.ReclaimStudentSubmissionRequest o) {
  buildCounterReclaimStudentSubmissionRequest++;
  if (buildCounterReclaimStudentSubmissionRequest < 3) {
  }
  buildCounterReclaimStudentSubmissionRequest--;
}

core.int buildCounterReturnStudentSubmissionRequest = 0;
buildReturnStudentSubmissionRequest() {
  var o = new api.ReturnStudentSubmissionRequest();
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {
  }
  buildCounterReturnStudentSubmissionRequest--;
  return o;
}

checkReturnStudentSubmissionRequest(api.ReturnStudentSubmissionRequest o) {
  buildCounterReturnStudentSubmissionRequest++;
  if (buildCounterReturnStudentSubmissionRequest < 3) {
  }
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
    unittest.expect(o.updateTime, unittest.equals('foo'));
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterStudentSubmission--;
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
  if (buildCounterTurnInStudentSubmissionRequest < 3) {
  }
  buildCounterTurnInStudentSubmissionRequest--;
  return o;
}

checkTurnInStudentSubmissionRequest(api.TurnInStudentSubmissionRequest o) {
  buildCounterTurnInStudentSubmissionRequest++;
  if (buildCounterTurnInStudentSubmissionRequest < 3) {
  }
  buildCounterTurnInStudentSubmissionRequest--;
}

buildUnnamed625() {
  var o = new core.List<api.GlobalPermission>();
  o.add(buildGlobalPermission());
  o.add(buildGlobalPermission());
  return o;
}

checkUnnamed625(core.List<api.GlobalPermission> o) {
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
    o.permissions = buildUnnamed625();
    o.photoUrl = "foo";
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
    checkUnnamed625(o.permissions);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
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

buildUnnamed626() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed626(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed627() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed627(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}


main() {
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


  unittest.group("obj-schema-ModifyAttachmentsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildModifyAttachmentsRequest();
      var od = new api.ModifyAttachmentsRequest.fromJson(o.toJson());
      checkModifyAttachmentsRequest(od);
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
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("v1/courses"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_studentId = "foo";
      var arg_teacherId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("v1/courses"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["studentId"].first, unittest.equals(arg_studentId));
        unittest.expect(queryMap["teacherId"].first, unittest.equals(arg_teacherId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCoursesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(studentId: arg_studentId, teacherId: arg_teacherId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListCoursesResponse response) {
        checkListCoursesResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_request = buildCourse();
      var arg_id = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id, updateMask: arg_updateMask).then(unittest.expectAsync(((api.Course response) {
        checkCourse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.CoursesResourceApi res = new api.ClassroomApi(mock).courses;
      var arg_request = buildCourse();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Course.fromJson(json);
        checkCourse(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_id).then(unittest.expectAsync(((api.Course response) {
        checkCourse(response);
      })));
    });

  });


  unittest.group("resource-CoursesAliasesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res = new api.ClassroomApi(mock).courses.aliases;
      var arg_request = buildCourseAlias();
      var arg_courseId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CourseAlias.fromJson(json);
        checkCourseAlias(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourseAlias());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_courseId).then(unittest.expectAsync(((api.CourseAlias response) {
        checkCourseAlias(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res = new api.ClassroomApi(mock).courses.aliases;
      var arg_courseId = "foo";
      var arg_alias = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/aliases/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_courseId, arg_alias).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesAliasesResourceApi res = new api.ClassroomApi(mock).courses.aliases;
      var arg_courseId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/aliases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/aliases"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCourseAliasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_courseId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListCourseAliasesResponse response) {
        checkListCourseAliasesResponse(response);
      })));
    });

  });


  unittest.group("resource-CoursesCourseWorkResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res = new api.ClassroomApi(mock).courses.courseWork;
      var arg_request = buildCourseWork();
      var arg_courseId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CourseWork.fromJson(json);
        checkCourseWork(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/courseWork"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_courseId).then(unittest.expectAsync(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res = new api.ClassroomApi(mock).courses.courseWork;
      var arg_courseId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCourseWork());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_courseId, arg_id).then(unittest.expectAsync(((api.CourseWork response) {
        checkCourseWork(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkResourceApi res = new api.ClassroomApi(mock).courses.courseWork;
      var arg_courseId = "foo";
      var arg_courseWorkStates = buildUnnamed626();
      var arg_orderBy = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("/courseWork"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["courseWorkStates"], unittest.equals(arg_courseWorkStates));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCourseWorkResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_courseId, courseWorkStates: arg_courseWorkStates, orderBy: arg_orderBy, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListCourseWorkResponse response) {
        checkListCourseWorkResponse(response);
      })));
    });

  });


  unittest.group("resource-CoursesCourseWorkStudentSubmissionsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_courseId, arg_courseWorkId, arg_id).then(unittest.expectAsync(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_userId = "foo";
      var arg_states = buildUnnamed627();
      var arg_late = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("/studentSubmissions"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(queryMap["states"], unittest.equals(arg_states));
        unittest.expect(queryMap["late"].first, unittest.equals(arg_late));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStudentSubmissionsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_courseId, arg_courseWorkId, userId: arg_userId, states: arg_states, late: arg_late, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListStudentSubmissionsResponse response) {
        checkListStudentSubmissionsResponse(response);
      })));
    });

    unittest.test("method--modifyAttachments", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildModifyAttachmentsRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ModifyAttachmentsRequest.fromJson(json);
        checkModifyAttachmentsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":modifyAttachments", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals(":modifyAttachments"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.modifyAttachments(arg_request, arg_courseId, arg_courseWorkId, arg_id).then(unittest.expectAsync(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildStudentSubmission();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      var arg_updateMask = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.StudentSubmission.fromJson(json);
        checkStudentSubmission(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["updateMask"].first, unittest.equals(arg_updateMask));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudentSubmission());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_courseId, arg_courseWorkId, arg_id, updateMask: arg_updateMask).then(unittest.expectAsync(((api.StudentSubmission response) {
        checkStudentSubmission(response);
      })));
    });

    unittest.test("method--reclaim", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildReclaimStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ReclaimStudentSubmissionRequest.fromJson(json);
        checkReclaimStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":reclaim", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals(":reclaim"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.reclaim(arg_request, arg_courseId, arg_courseWorkId, arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--return_", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildReturnStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ReturnStudentSubmissionRequest.fromJson(json);
        checkReturnStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":return", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals(":return"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.return_(arg_request, arg_courseId, arg_courseWorkId, arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--turnIn", () {

      var mock = new HttpServerMock();
      api.CoursesCourseWorkStudentSubmissionsResourceApi res = new api.ClassroomApi(mock).courses.courseWork.studentSubmissions;
      var arg_request = buildTurnInStudentSubmissionRequest();
      var arg_courseId = "foo";
      var arg_courseWorkId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TurnInStudentSubmissionRequest.fromJson(json);
        checkTurnInStudentSubmissionRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/courseWork/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("/courseWork/"));
        pathOffset += 12;
        index = path.indexOf("/studentSubmissions/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseWorkId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/studentSubmissions/"));
        pathOffset += 20;
        index = path.indexOf(":turnIn", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals(":turnIn"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.turnIn(arg_request, arg_courseId, arg_courseWorkId, arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

  });


  unittest.group("resource-CoursesStudentsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res = new api.ClassroomApi(mock).courses.students;
      var arg_request = buildStudent();
      var arg_courseId = "foo";
      var arg_enrollmentCode = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Student.fromJson(json);
        checkStudent(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/students"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["enrollmentCode"].first, unittest.equals(arg_enrollmentCode));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_courseId, enrollmentCode: arg_enrollmentCode).then(unittest.expectAsync(((api.Student response) {
        checkStudent(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res = new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/students/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_courseId, arg_userId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res = new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/students/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildStudent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_courseId, arg_userId).then(unittest.expectAsync(((api.Student response) {
        checkStudent(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesStudentsResourceApi res = new api.ClassroomApi(mock).courses.students;
      var arg_courseId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/students", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/students"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListStudentsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_courseId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListStudentsResponse response) {
        checkListStudentsResponse(response);
      })));
    });

  });


  unittest.group("resource-CoursesTeachersResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res = new api.ClassroomApi(mock).courses.teachers;
      var arg_request = buildTeacher();
      var arg_courseId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Teacher.fromJson(json);
        checkTeacher(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/teachers"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTeacher());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_courseId).then(unittest.expectAsync(((api.Teacher response) {
        checkTeacher(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res = new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/teachers/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_courseId, arg_userId).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res = new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/teachers/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTeacher());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_courseId, arg_userId).then(unittest.expectAsync(((api.Teacher response) {
        checkTeacher(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.CoursesTeachersResourceApi res = new api.ClassroomApi(mock).courses.teachers;
      var arg_courseId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("v1/courses/"));
        pathOffset += 11;
        index = path.indexOf("/teachers", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_courseId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/teachers"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListTeachersResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_courseId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListTeachersResponse response) {
        checkListTeachersResponse(response);
      })));
    });

  });


  unittest.group("resource-InvitationsResourceApi", () {
    unittest.test("method--accept", () {

      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("v1/invitations/"));
        pathOffset += 15;
        index = path.indexOf(":accept", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals(":accept"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.accept(arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_request = buildInvitation();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Invitation.fromJson(json);
        checkInvitation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("v1/invitations"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Invitation response) {
        checkInvitation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("v1/invitations/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync(((api.Empty response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("v1/invitations/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildInvitation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Invitation response) {
        checkInvitation(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.InvitationsResourceApi res = new api.ClassroomApi(mock).invitations;
      var arg_userId = "foo";
      var arg_courseId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("v1/invitations"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["userId"].first, unittest.equals(arg_userId));
        unittest.expect(queryMap["courseId"].first, unittest.equals(arg_courseId));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListInvitationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(userId: arg_userId, courseId: arg_courseId, pageSize: arg_pageSize, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ListInvitationsResponse response) {
        checkListInvitationsResponse(response);
      })));
    });

  });


  unittest.group("resource-UserProfilesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.UserProfilesResourceApi res = new api.ClassroomApi(mock).userProfiles;
      var arg_userId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("v1/userProfiles/"));
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildUserProfile());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_userId).then(unittest.expectAsync(((api.UserProfile response) {
        checkUserProfile(response);
      })));
    });

  });


}

