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

core.int buildCounterCourse = 0;
buildCourse() {
  var o = new api.Course();
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    o.alternateLink = "foo";
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
    o.updateTime = "foo";
  }
  buildCounterCourse--;
  return o;
}

checkCourse(api.Course o) {
  buildCounterCourse++;
  if (buildCounterCourse < 3) {
    unittest.expect(o.alternateLink, unittest.equals('foo'));
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

buildUnnamed761() {
  var o = new core.List<api.CourseAlias>();
  o.add(buildCourseAlias());
  o.add(buildCourseAlias());
  return o;
}

checkUnnamed761(core.List<api.CourseAlias> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourseAlias(o[0]);
  checkCourseAlias(o[1]);
}

core.int buildCounterListCourseAliasesResponse = 0;
buildListCourseAliasesResponse() {
  var o = new api.ListCourseAliasesResponse();
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    o.aliases = buildUnnamed761();
    o.nextPageToken = "foo";
  }
  buildCounterListCourseAliasesResponse--;
  return o;
}

checkListCourseAliasesResponse(api.ListCourseAliasesResponse o) {
  buildCounterListCourseAliasesResponse++;
  if (buildCounterListCourseAliasesResponse < 3) {
    checkUnnamed761(o.aliases);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCourseAliasesResponse--;
}

buildUnnamed762() {
  var o = new core.List<api.Course>();
  o.add(buildCourse());
  o.add(buildCourse());
  return o;
}

checkUnnamed762(core.List<api.Course> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCourse(o[0]);
  checkCourse(o[1]);
}

core.int buildCounterListCoursesResponse = 0;
buildListCoursesResponse() {
  var o = new api.ListCoursesResponse();
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    o.courses = buildUnnamed762();
    o.nextPageToken = "foo";
  }
  buildCounterListCoursesResponse--;
  return o;
}

checkListCoursesResponse(api.ListCoursesResponse o) {
  buildCounterListCoursesResponse++;
  if (buildCounterListCoursesResponse < 3) {
    checkUnnamed762(o.courses);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoursesResponse--;
}

buildUnnamed763() {
  var o = new core.List<api.Invitation>();
  o.add(buildInvitation());
  o.add(buildInvitation());
  return o;
}

checkUnnamed763(core.List<api.Invitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvitation(o[0]);
  checkInvitation(o[1]);
}

core.int buildCounterListInvitationsResponse = 0;
buildListInvitationsResponse() {
  var o = new api.ListInvitationsResponse();
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    o.invitations = buildUnnamed763();
    o.nextPageToken = "foo";
  }
  buildCounterListInvitationsResponse--;
  return o;
}

checkListInvitationsResponse(api.ListInvitationsResponse o) {
  buildCounterListInvitationsResponse++;
  if (buildCounterListInvitationsResponse < 3) {
    checkUnnamed763(o.invitations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListInvitationsResponse--;
}

buildUnnamed764() {
  var o = new core.List<api.Student>();
  o.add(buildStudent());
  o.add(buildStudent());
  return o;
}

checkUnnamed764(core.List<api.Student> o) {
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
    o.students = buildUnnamed764();
  }
  buildCounterListStudentsResponse--;
  return o;
}

checkListStudentsResponse(api.ListStudentsResponse o) {
  buildCounterListStudentsResponse++;
  if (buildCounterListStudentsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed764(o.students);
  }
  buildCounterListStudentsResponse--;
}

buildUnnamed765() {
  var o = new core.List<api.Teacher>();
  o.add(buildTeacher());
  o.add(buildTeacher());
  return o;
}

checkUnnamed765(core.List<api.Teacher> o) {
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
    o.teachers = buildUnnamed765();
  }
  buildCounterListTeachersResponse--;
  return o;
}

checkListTeachersResponse(api.ListTeachersResponse o) {
  buildCounterListTeachersResponse++;
  if (buildCounterListTeachersResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed765(o.teachers);
  }
  buildCounterListTeachersResponse--;
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

core.int buildCounterStudent = 0;
buildStudent() {
  var o = new api.Student();
  buildCounterStudent++;
  if (buildCounterStudent < 3) {
    o.courseId = "foo";
    o.profile = buildUserProfile();
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
    unittest.expect(o.userId, unittest.equals('foo'));
  }
  buildCounterStudent--;
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

buildUnnamed766() {
  var o = new core.List<api.GlobalPermission>();
  o.add(buildGlobalPermission());
  o.add(buildGlobalPermission());
  return o;
}

checkUnnamed766(core.List<api.GlobalPermission> o) {
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
    o.permissions = buildUnnamed766();
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
    checkUnnamed766(o.permissions);
    unittest.expect(o.photoUrl, unittest.equals('foo'));
  }
  buildCounterUserProfile--;
}


main() {
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


  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
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


  unittest.group("obj-schema-ListCourseAliasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCourseAliasesResponse();
      var od = new api.ListCourseAliasesResponse.fromJson(o.toJson());
      checkListCourseAliasesResponse(od);
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


  unittest.group("obj-schema-Name", () {
    unittest.test("to-json--from-json", () {
      var o = buildName();
      var od = new api.Name.fromJson(o.toJson());
      checkName(od);
    });
  });


  unittest.group("obj-schema-Student", () {
    unittest.test("to-json--from-json", () {
      var o = buildStudent();
      var od = new api.Student.fromJson(o.toJson());
      checkStudent(od);
    });
  });


  unittest.group("obj-schema-Teacher", () {
    unittest.test("to-json--from-json", () {
      var o = buildTeacher();
      var od = new api.Teacher.fromJson(o.toJson());
      checkTeacher(od);
    });
  });


  unittest.group("obj-schema-UserProfile", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserProfile();
      var od = new api.UserProfile.fromJson(o.toJson());
      checkUserProfile(od);
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

