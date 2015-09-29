// This is a generated file (see the discoveryapis_generator project).

library googleapis.classroom.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client classroom/v1';

/** Google Classroom API */
class ClassroomApi {
  /** Manage your Google Classroom classes */
  static const ClassroomCoursesScope = "https://www.googleapis.com/auth/classroom.courses";

  /** View your Google Classroom classes */
  static const ClassroomCoursesReadonlyScope = "https://www.googleapis.com/auth/classroom.courses.readonly";

  /** View the email addresses of people in your classes */
  static const ClassroomProfileEmailsScope = "https://www.googleapis.com/auth/classroom.profile.emails";

  /** View the profile photos of people in your classes */
  static const ClassroomProfilePhotosScope = "https://www.googleapis.com/auth/classroom.profile.photos";

  /** Manage your Google Classroom class rosters */
  static const ClassroomRostersScope = "https://www.googleapis.com/auth/classroom.rosters";

  /** View your Google Classroom class rosters */
  static const ClassroomRostersReadonlyScope = "https://www.googleapis.com/auth/classroom.rosters.readonly";


  final commons.ApiRequester _requester;

  CoursesResourceApi get courses => new CoursesResourceApi(_requester);
  InvitationsResourceApi get invitations => new InvitationsResourceApi(_requester);
  UserProfilesResourceApi get userProfiles => new UserProfilesResourceApi(_requester);

  ClassroomApi(http.Client client, {core.String rootUrl: "https://classroom.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class CoursesResourceApi {
  final commons.ApiRequester _requester;

  CoursesAliasesResourceApi get aliases => new CoursesAliasesResourceApi(_requester);
  CoursesStudentsResourceApi get students => new CoursesStudentsResourceApi(_requester);
  CoursesTeachersResourceApi get teachers => new CoursesTeachersResourceApi(_requester);

  CoursesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a course. The user specified in `ownerId` is the owner of the
   * created course and added as a teacher. This method returns the following
   * error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
   * to create courses or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if the primary teacher is not a valid user. *
   * `FAILED_PRECONDITION` if the course owner's account is disabled. *
   * `ALREADY_EXISTS` if an alias was specified in the `id` and already exists.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Course].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Course> create(Course request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/courses';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /**
   * Deletes a course. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to delete the
   * requested course or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if no course exists with the requested ID.
   *
   * Request parameters:
   *
   * [id] - Identifier of the course to delete. This identifier can be either
   * the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns a course. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to access the
   * requested course or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if no course exists with the requested ID.
   *
   * Request parameters:
   *
   * [id] - Identifier of the course to return. This identifier can be either
   * the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * Completes with a [Course].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Course> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /**
   * Returns a list of courses that the requesting user is permitted to view,
   * restricted to those that match the request. This method returns the
   * following error codes: * `PERMISSION_DENIED` for [general user permission
   * errors][User Permission Errors]. * `INVALID_ARGUMENT` if the query argument
   * is malformed. * `NOT_FOUND` if any users specified in the query arguments
   * do not exist.
   *
   * Request parameters:
   *
   * [studentId] - Restricts returned courses to those having a student with the
   * specified identifier. The identifier can be one of the following: * the
   * numeric identifier for the user * the email address of the user * the
   * string literal `"me"`, indicating the requesting user
   *
   * [teacherId] - Restricts returned courses to those having a teacher with the
   * specified identifier. The identifier can be one of the following: * the
   * numeric identifier for the user * the email address of the user * the
   * string literal `"me"`, indicating the requesting user
   *
   * [pageSize] - Maximum number of items to return. Zero or unspecified
   * indicates that the server may assign a maximum. The server may return fewer
   * than the specified number of results.
   *
   * [pageToken] -
   * [nextPageToken][google.classroom.v1.ListCoursesResponse.next_page_token]
   * value returned from a previous
   * [list][google.classroom.v1.Courses.ListCourses] call, indicating that the
   * subsequent page of results should be returned. The
   * [list][google.classroom.v1.Courses.ListCourses] request must be otherwise
   * identical to the one that resulted in this token.
   *
   * Completes with a [ListCoursesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCoursesResponse> list({core.String studentId, core.String teacherId, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (studentId != null) {
      _queryParams["studentId"] = [studentId];
    }
    if (teacherId != null) {
      _queryParams["teacherId"] = [teacherId];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/courses';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCoursesResponse.fromJson(data));
  }

  /**
   * Updates one or more fields in a course. This method returns the following
   * error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
   * to modify the requested course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no course exists with the requested
   * ID. * `INVALID_ARGUMENT` if invalid fields are specified in the update mask
   * or if no update mask is supplied.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - Identifier of the course to update. This identifier can be either
   * the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [updateMask] - Mask that identifies which fields on the course to update.
   * This field is required to do an update. The update will fail if invalid
   * fields are specified. The following fields are valid: * `name` * `section`
   * * `descriptionHeading` * `description` * `room` * `courseState` When set in
   * a query parameter, this field should be specified as `updateMask=,,...`
   *
   * Completes with a [Course].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Course> patch(Course request, core.String id, {core.String updateMask}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /**
   * Updates a course. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to modify the
   * requested course or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if no course exists with the requested ID.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [id] - Identifier of the course to update. This identifier can be either
   * the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * Completes with a [Course].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Course> update(Course request, core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

}


class CoursesAliasesResourceApi {
  final commons.ApiRequester _requester;

  CoursesAliasesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates an alias for a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * create the alias or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if the course does not exist. * `ALREADY_EXISTS` if
   * the alias already exists.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course to alias. This identifier can be
   * either the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * Completes with a [CourseAlias].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CourseAlias> create(CourseAlias request, core.String courseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/aliases';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseAlias.fromJson(data));
  }

  /**
   * Deletes an alias of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * remove the alias or for [general user permission errors][User Permission
   * Errors]. * `NOT_FOUND` if the alias does not exist.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course whose alias should be deleted. This
   * identifier can be either the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [alias] - Alias to delete. This may not be the Classroom-assigned
   * identifier.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String courseId, core.String alias) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (alias == null) {
      throw new core.ArgumentError("Parameter alias is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/aliases/' + commons.Escaper.ecapeVariable('$alias');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns a list of aliases for a course. This method returns the following
   * error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
   * to access the course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if the course does not exist.
   *
   * Request parameters:
   *
   * [courseId] - The identifier of the course. This identifier can be either
   * the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [pageSize] - Maximum number of items to return. Zero or unspecified
   * indicates that the server may assign a maximum. The server may return fewer
   * than the specified number of results.
   *
   * [pageToken] -
   * [nextPageToken][google.classroom.v1.ListCourseAliasesResponse.next_page_token]
   * value returned from a previous
   * [list][google.classroom.v1.Courses.ListCourseAliases] call, indicating that
   * the subsequent page of results should be returned. The
   * [list][google.classroom.v1.Courses.ListCourseAliases] request must be
   * otherwise identical to the one that resulted in this token.
   *
   * Completes with a [ListCourseAliasesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListCourseAliasesResponse> list(core.String courseId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/aliases';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCourseAliasesResponse.fromJson(data));
  }

}


class CoursesStudentsResourceApi {
  final commons.ApiRequester _requester;

  CoursesStudentsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Adds a user as a student of a course. This method returns the following
   * error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
   * to create students in this course or for [general user permission
   * errors][User Permission Errors]. * `NOT_FOUND` if the requested course ID
   * does not exist. * `FAILED_PRECONDITION` if the requested user's account is
   * disabled. * `ALREADY_EXISTS` if the user is already a student or teacher in
   * the course.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course to create the student in. This
   * identifier can be either the Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [enrollmentCode] - Enrollment code of the course to create the student in.
   * This code is required if [userId][google.classroom.v1.Student.user_id]
   * corresponds to the requesting user; it may be omitted if the requesting
   * user has administrative permissions to create students for any user.
   *
   * Completes with a [Student].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Student> create(Student request, core.String courseId, {core.String enrollmentCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (enrollmentCode != null) {
      _queryParams["enrollmentCode"] = [enrollmentCode];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/students';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Student.fromJson(data));
  }

  /**
   * Deletes a student of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * delete students of this course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no student of this course has the
   * requested ID or if the course does not exist.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [userId] - Identifier of the student to delete. The identifier can be one
   * of the following: * the numeric identifier for the user * the email address
   * of the user * the string literal `"me"`, indicating the requesting user
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String courseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/students/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns a student of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * view students of this course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no student of this course has the
   * requested ID or if the course does not exist.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [userId] - Identifier of the student to return. The identifier can be one
   * of the following: * the numeric identifier for the user * the email address
   * of the user * the string literal `"me"`, indicating the requesting user
   *
   * Completes with a [Student].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Student> get(core.String courseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/students/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Student.fromJson(data));
  }

  /**
   * Returns a list of students of this course that the requester is permitted
   * to view. This method returns the following error codes: * `NOT_FOUND` if
   * the course does not exist. * `PERMISSION_DENIED` for [general user
   * permission errors][User Permission Errors].
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [pageSize] - Maximum number of items to return. Zero means no maximum. The
   * server may return fewer than the specified number of results.
   *
   * [pageToken] -
   * [nextPageToken][google.classroom.v1.ListStudentsResponse.next_page_token]
   * value returned from a previous
   * [list][google.classroom.v1.Users.ListStudents] call, indicating that the
   * subsequent page of results should be returned. The
   * [list][google.classroom.v1.Users.ListStudents] request must be otherwise
   * identical to the one that resulted in this token.
   *
   * Completes with a [ListStudentsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListStudentsResponse> list(core.String courseId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/students';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListStudentsResponse.fromJson(data));
  }

}


class CoursesTeachersResourceApi {
  final commons.ApiRequester _requester;

  CoursesTeachersResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a teacher of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * create teachers in this course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if the requested course ID does not
   * exist. * `FAILED_PRECONDITION` if the requested user's account is disabled.
   * * `ALREADY_EXISTS` if the user is already a teacher or student in the
   * course.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * Completes with a [Teacher].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Teacher> create(Teacher request, core.String courseId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/teachers';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Teacher.fromJson(data));
  }

  /**
   * Deletes a teacher of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * delete teachers of this course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no teacher of this course has the
   * requested ID or if the course does not exist. * `FAILED_PRECONDITION` if
   * the requested ID belongs to the primary teacher of this course.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [userId] - Identifier of the teacher to delete. The identifier can be one
   * of the following: * the numeric identifier for the user * the email address
   * of the user * the string literal `"me"`, indicating the requesting user
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String courseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/teachers/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns a teacher of a course. This method returns the following error
   * codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
   * view teachers of this course or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no teacher of this course has the
   * requested ID or if the course does not exist.
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [userId] - Identifier of the teacher to return. The identifier can be one
   * of the following: * the numeric identifier for the user * the email address
   * of the user * the string literal `"me"`, indicating the requesting user
   *
   * Completes with a [Teacher].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Teacher> get(core.String courseId, core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/teachers/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Teacher.fromJson(data));
  }

  /**
   * Returns a list of teachers of this course that the requester is permitted
   * to view. This method returns the following error codes: * `NOT_FOUND` if
   * the course does not exist. * `PERMISSION_DENIED` for [general user
   * permission errors][User Permission Errors].
   *
   * Request parameters:
   *
   * [courseId] - Identifier of the course. This identifier can be either the
   * Classroom-assigned identifier or an
   * [alias][google.classroom.v1.CourseAlias].
   *
   * [pageSize] - Maximum number of items to return. Zero means no maximum. The
   * server may return fewer than the specified number of results.
   *
   * [pageToken] -
   * [nextPageToken][google.classroom.v1.ListTeachersResponse.next_page_token]
   * value returned from a previous
   * [list][google.classroom.v1.Users.ListTeachers] call, indicating that the
   * subsequent page of results should be returned. The
   * [list][google.classroom.v1.Users.ListTeachers] request must be otherwise
   * identical to the one that resulted in this token.
   *
   * Completes with a [ListTeachersResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTeachersResponse> list(core.String courseId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/teachers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTeachersResponse.fromJson(data));
  }

}


class InvitationsResourceApi {
  final commons.ApiRequester _requester;

  InvitationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Accepts an invitation, removing it and adding the invited user to the
   * teachers or students (as appropriate) of the specified course. Only the
   * invited user may accept an invitation. This method returns the following
   * error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
   * to accept the requested invitation or for [general user permission
   * errors][User Permission Errors]. * `NOT_FOUND` if no invitation exists with
   * the requested ID.
   *
   * Request parameters:
   *
   * [id] - Identifier of the invitation to accept.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> accept(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id') + ':accept';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Creates an invitation. Only one invitation for a user and course may exist
   * at a time. Delete and re-create an invitation to make changes. This method
   * returns the following error codes: * `PERMISSION_DENIED` if the requesting
   * user is not permitted to create invitations for this course or for [general
   * user permission errors][User Permission Errors]. * `NOT_FOUND` if the
   * course or the user does not exist. * `FAILED_PRECONDITION` if the requested
   * user's account is disabled or if the user already has this role or a role
   * with greater permissions. * `ALREADY_EXISTS` if an invitation for the
   * specified user and course already exists.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Invitation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Invitation> create(Invitation request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v1/invitations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Invitation.fromJson(data));
  }

  /**
   * Deletes an invitation. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to delete the
   * requested invitation or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no invitation exists with the
   * requested ID.
   *
   * Request parameters:
   *
   * [id] - Identifier of the invitation to delete.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns an invitation. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to view the
   * requested invitation or for [general user permission errors][User
   * Permission Errors]. * `NOT_FOUND` if no invitation exists with the
   * requested ID.
   *
   * Request parameters:
   *
   * [id] - Identifier of the invitation to return.
   *
   * Completes with a [Invitation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Invitation> get(core.String id) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Invitation.fromJson(data));
  }

  /**
   * Returns a list of invitations that the requesting user is permitted to
   * view, restricted to those that match the list request. *Note:* At least one
   * of `user_id` or `course_id` must be supplied. Both fields can be supplied.
   * This method returns the following error codes: * `PERMISSION_DENIED` for
   * [general user permission errors][User Permission Errors].
   *
   * Request parameters:
   *
   * [userId] - Restricts returned invitations to those for a specific user. The
   * identifier can be one of the following: * the numeric identifier for the
   * user * the email address of the user * the string literal `"me"`,
   * indicating the requesting user
   *
   * [courseId] - Restricts returned invitations to those for a course with the
   * specified identifier.
   *
   * [pageSize] - Maximum number of items to return. Zero means no maximum. The
   * server may return fewer than the specified number of results.
   *
   * [pageToken] -
   * [nextPageToken][google.classroom.v1.ListInvitationsResponse.next_page_token]
   * value returned from a previous
   * [list][google.classroom.v1.Invitations.ListInvitations] call, indicating
   * that the subsequent page of results should be returned. The
   * [list][google.classroom.v1.Invitations.ListInvitations] request must be
   * otherwise identical to the one that resulted in this token.
   *
   * Completes with a [ListInvitationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListInvitationsResponse> list({core.String userId, core.String courseId, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (userId != null) {
      _queryParams["userId"] = [userId];
    }
    if (courseId != null) {
      _queryParams["courseId"] = [courseId];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/invitations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInvitationsResponse.fromJson(data));
  }

}


class UserProfilesResourceApi {
  final commons.ApiRequester _requester;

  UserProfilesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a user profile. This method returns the following error codes: *
   * `PERMISSION_DENIED` if the requesting user is not permitted to access this
   * user profile or if no profile exists with the requested ID or for [general
   * user permission errors][User Permission Errors].
   *
   * Request parameters:
   *
   * [userId] - Identifier of the profile to return. The identifier can be one
   * of the following: * the numeric identifier for the user * the email address
   * of the user * the string literal `"me"`, indicating the requesting user
   *
   * Completes with a [UserProfile].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<UserProfile> get(core.String userId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }

    _url = 'v1/userProfiles/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new UserProfile.fromJson(data));
  }

}



/** A Course in Classroom. */
class Course {
  /** Absolute link to this course in the Classroom web UI. Read-only. */
  core.String alternateLink;
  /**
   * State of the course. If unspecified, the default state is `PROVISIONED`.
   * Possible string values are:
   * - "COURSE_STATE_UNSPECIFIED" : A COURSE_STATE_UNSPECIFIED.
   * - "ACTIVE" : A ACTIVE.
   * - "ARCHIVED" : A ARCHIVED.
   * - "PROVISIONED" : A PROVISIONED.
   * - "DECLINED" : A DECLINED.
   */
  core.String courseState;
  /**
   * Creation time of the course. Specifying this field in a course update mask
   * will result in an error. Read-only.
   */
  core.String creationTime;
  /**
   * Optional description. For example, "We'll be learning about the structure
   * of living creatures from a combination of textbooks, guest lectures, and
   * lab work. Expect to be excited!" If set, this field must be a valid UTF-8
   * string and no longer than 30,000 characters.
   */
  core.String description;
  /**
   * Optional heading for the description. For example, "Welcome to 10th Grade
   * Biology." If set, this field must be a valid UTF-8 string and no longer
   * than 3600 characters.
   */
  core.String descriptionHeading;
  /**
   * Enrollment code to use when joining this course. Specifying this field in a
   * course update mask will result in an error. Read-only.
   */
  core.String enrollmentCode;
  /**
   * Identifier for this course assigned by Classroom. When [creating a
   * course][google.classroom.v1.Courses.CreateCourse], you may optionally set
   * this identifier to an [alias string][google.classroom.v1.CourseAlias] in
   * the request to create a corresponding alias. The `id` is still assigned by
   * Classroom and cannot be updated after the course is created. Specifying
   * this field in a course update mask will result in an error.
   */
  core.String id;
  /**
   * Name of the course. For example, "10th Grade Biology". The name is
   * required. It must be between 1 and 750 characters and a valid UTF-8 string.
   */
  core.String name;
  /**
   * The identifier of the owner of a course. When specified as a parameter of a
   * [create course request][google.classroom.v1.Courses.CreateCourse], this
   * field is required. The identifier can be one of the following: * the
   * numeric identifier for the user * the email address of the user * the
   * string literal `"me"`, indicating the requesting user This must be set in a
   * create request. Specifying this field in a course update mask will result
   * in an `INVALID_ARGUMENT` error.
   */
  core.String ownerId;
  /**
   * Optional room location. For example, "301". If set, this field must be a
   * valid UTF-8 string and no longer than 650 characters.
   */
  core.String room;
  /**
   * Section of the course. For example, "Period 2". If set, this field must be
   * a valid UTF-8 string and no longer than 2800 characters.
   */
  core.String section;
  /**
   * Time of the most recent update to this course. Specifying this field in a
   * course update mask will result in an error. Read-only.
   */
  core.String updateTime;

  Course();

  Course.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("courseState")) {
      courseState = _json["courseState"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("descriptionHeading")) {
      descriptionHeading = _json["descriptionHeading"];
    }
    if (_json.containsKey("enrollmentCode")) {
      enrollmentCode = _json["enrollmentCode"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ownerId")) {
      ownerId = _json["ownerId"];
    }
    if (_json.containsKey("room")) {
      room = _json["room"];
    }
    if (_json.containsKey("section")) {
      section = _json["section"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (courseState != null) {
      _json["courseState"] = courseState;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (descriptionHeading != null) {
      _json["descriptionHeading"] = descriptionHeading;
    }
    if (enrollmentCode != null) {
      _json["enrollmentCode"] = enrollmentCode;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (ownerId != null) {
      _json["ownerId"] = ownerId;
    }
    if (room != null) {
      _json["room"] = room;
    }
    if (section != null) {
      _json["section"] = section;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/**
 * Alternative identifier for a course. An alias uniquely identifies a course.
 * It must be unique within one of the following scopes: * domain: A
 * domain-scoped alias is visible to all users within the alias creator's domain
 * and can be created only by a domain admin. A domain-scoped alias is often
 * used when a course has an identifier external to Classroom. * project: A
 * project-scoped alias is visible to any request from an application using the
 * Developer Console project ID that created the alias and can be created by any
 * project. A project-scoped alias is often used when an application has
 * alternative identifiers. A random value can also be used to avoid duplicate
 * courses in the event of transmission failures, as retrying a request will
 * return `ALREADY_EXISTS` if a previous one has succeeded.
 */
class CourseAlias {
  /**
   * Alias string. The format of the string indicates the desired alias scoping.
   * * `d:` indicates a domain-scoped alias. Example: `d:math_101` * `p:`
   * indicates a project-scoped alias. Example: `p:abc123` This field has a
   * maximum length of 256 characters.
   */
  core.String alias;

  CourseAlias();

  CourseAlias.fromJson(core.Map _json) {
    if (_json.containsKey("alias")) {
      alias = _json["alias"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (alias != null) {
      _json["alias"] = alias;
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Global user permission description. */
class GlobalPermission {
  /**
   * Permission value.
   * Possible string values are:
   * - "PERMISSION_UNSPECIFIED" : A PERMISSION_UNSPECIFIED.
   * - "CREATE_COURSE" : A CREATE_COURSE.
   */
  core.String permission;

  GlobalPermission();

  GlobalPermission.fromJson(core.Map _json) {
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}

/** An invitation to join a course. */
class Invitation {
  /** Identifier of the course to invite the user to. */
  core.String courseId;
  /** Identifier assigned by Classroom. Read-only. */
  core.String id;
  /**
   * Role to invite the user to have. Must not be `COURSE_ROLE_UNSPECIFIED`.
   * Possible string values are:
   * - "COURSE_ROLE_UNSPECIFIED" : A COURSE_ROLE_UNSPECIFIED.
   * - "STUDENT" : A STUDENT.
   * - "TEACHER" : A TEACHER.
   */
  core.String role;
  /**
   * Identifier of the invited user. When specified as a parameter of a request,
   * this identifier can be set to one of the following: * the numeric
   * identifier for the user * the email address of the user * the string
   * literal `"me"`, indicating the requesting user
   */
  core.String userId;

  Invitation();

  Invitation.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/** Response when listing course aliases. */
class ListCourseAliasesResponse {
  /** The course aliases. */
  core.List<CourseAlias> aliases;
  /**
   * Token identifying the next page of results to return. If empty, no further
   * results are available.
   */
  core.String nextPageToken;

  ListCourseAliasesResponse();

  ListCourseAliasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = _json["aliases"].map((value) => new CourseAlias.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aliases != null) {
      _json["aliases"] = aliases.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Response when listing courses. */
class ListCoursesResponse {
  /** Courses that match the list request. */
  core.List<Course> courses;
  /**
   * Token identifying the next page of results to return. If empty, no further
   * results are available.
   */
  core.String nextPageToken;

  ListCoursesResponse();

  ListCoursesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("courses")) {
      courses = _json["courses"].map((value) => new Course.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (courses != null) {
      _json["courses"] = courses.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Response when listing invitations. */
class ListInvitationsResponse {
  /** Invitations that match the list request. */
  core.List<Invitation> invitations;
  /**
   * Token identifying the next page of results to return. If empty, no further
   * results are available.
   */
  core.String nextPageToken;

  ListInvitationsResponse();

  ListInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("invitations")) {
      invitations = _json["invitations"].map((value) => new Invitation.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (invitations != null) {
      _json["invitations"] = invitations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Response when listing students. */
class ListStudentsResponse {
  /**
   * Token identifying the next page of results to return. If empty, no further
   * results are available.
   */
  core.String nextPageToken;
  /** Students who match the list request. */
  core.List<Student> students;

  ListStudentsResponse();

  ListStudentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("students")) {
      students = _json["students"].map((value) => new Student.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (students != null) {
      _json["students"] = students.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Response when listing teachers. */
class ListTeachersResponse {
  /**
   * Token identifying the next page of results to return. If empty, no further
   * results are available.
   */
  core.String nextPageToken;
  /** Teachers who match the list request. */
  core.List<Teacher> teachers;

  ListTeachersResponse();

  ListTeachersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("teachers")) {
      teachers = _json["teachers"].map((value) => new Teacher.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (teachers != null) {
      _json["teachers"] = teachers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Details of the user's name. */
class Name {
  /** The user's last name. Read-only. */
  core.String familyName;
  /**
   * The user's full name formed by concatenating the first and last name
   * values. Read-only.
   */
  core.String fullName;
  /** The user's first name. Read-only. */
  core.String givenName;

  Name();

  Name.fromJson(core.Map _json) {
    if (_json.containsKey("familyName")) {
      familyName = _json["familyName"];
    }
    if (_json.containsKey("fullName")) {
      fullName = _json["fullName"];
    }
    if (_json.containsKey("givenName")) {
      givenName = _json["givenName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (familyName != null) {
      _json["familyName"] = familyName;
    }
    if (fullName != null) {
      _json["fullName"] = fullName;
    }
    if (givenName != null) {
      _json["givenName"] = givenName;
    }
    return _json;
  }
}

/** Student in a course. */
class Student {
  /** Identifier of the course. Read-only. */
  core.String courseId;
  /** Global user information for the student. Read-only. */
  UserProfile profile;
  /**
   * Identifier of the user. When specified as a parameter of a request, this
   * identifier can be one of the following: * the numeric identifier for the
   * user * the email address of the user * the string literal `"me"`,
   * indicating the requesting user
   */
  core.String userId;

  Student();

  Student.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("profile")) {
      profile = new UserProfile.fromJson(_json["profile"]);
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (profile != null) {
      _json["profile"] = (profile).toJson();
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/** Teacher of a course. */
class Teacher {
  /** Identifier of the course. Read-only. */
  core.String courseId;
  /** Global user information for the teacher. Read-only. */
  UserProfile profile;
  /**
   * Identifier of the user. When specified as a parameter of a request, this
   * identifier can be one of the following: * the numeric identifier for the
   * user * the email address of the user * the string literal `"me"`,
   * indicating the requesting user
   */
  core.String userId;

  Teacher();

  Teacher.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("profile")) {
      profile = new UserProfile.fromJson(_json["profile"]);
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (profile != null) {
      _json["profile"] = (profile).toJson();
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/** Global information for a user. */
class UserProfile {
  /** Email address of the user. Read-only. */
  core.String emailAddress;
  /** Identifier of the user. Read-only. */
  core.String id;
  /** Name of the user. Read-only. */
  Name name;
  /** Global permissions of the user. Read-only. */
  core.List<GlobalPermission> permissions;
  /** URL of user's profile photo. Read-only. */
  core.String photoUrl;

  UserProfile();

  UserProfile.fromJson(core.Map _json) {
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = new Name.fromJson(_json["name"]);
    }
    if (_json.containsKey("permissions")) {
      permissions = _json["permissions"].map((value) => new GlobalPermission.fromJson(value)).toList();
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = (name).toJson();
    }
    if (permissions != null) {
      _json["permissions"] = permissions.map((value) => (value).toJson()).toList();
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    return _json;
  }
}
