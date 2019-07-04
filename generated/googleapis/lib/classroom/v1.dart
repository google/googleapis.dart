// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.classroom.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client classroom/v1';

/// Manages classes, rosters, and invitations in Google Classroom.
class ClassroomApi {
  /// View and manage announcements in Google Classroom
  static const ClassroomAnnouncementsScope =
      "https://www.googleapis.com/auth/classroom.announcements";

  /// View announcements in Google Classroom
  static const ClassroomAnnouncementsReadonlyScope =
      "https://www.googleapis.com/auth/classroom.announcements.readonly";

  /// Manage your Google Classroom classes
  static const ClassroomCoursesScope =
      "https://www.googleapis.com/auth/classroom.courses";

  /// View your Google Classroom classes
  static const ClassroomCoursesReadonlyScope =
      "https://www.googleapis.com/auth/classroom.courses.readonly";

  /// Manage your course work and view your grades in Google Classroom
  static const ClassroomCourseworkMeScope =
      "https://www.googleapis.com/auth/classroom.coursework.me";

  /// View your course work and grades in Google Classroom
  static const ClassroomCourseworkMeReadonlyScope =
      "https://www.googleapis.com/auth/classroom.coursework.me.readonly";

  /// Manage course work and grades for students in the Google Classroom classes
  /// you teach and view the course work and grades for classes you administer
  static const ClassroomCourseworkStudentsScope =
      "https://www.googleapis.com/auth/classroom.coursework.students";

  /// View course work and grades for students in the Google Classroom classes
  /// you teach or administer
  static const ClassroomCourseworkStudentsReadonlyScope =
      "https://www.googleapis.com/auth/classroom.coursework.students.readonly";

  /// View your Google Classroom guardians
  static const ClassroomGuardianlinksMeReadonlyScope =
      "https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly";

  /// View and manage guardians for students in your Google Classroom classes
  static const ClassroomGuardianlinksStudentsScope =
      "https://www.googleapis.com/auth/classroom.guardianlinks.students";

  /// View guardians for students in your Google Classroom classes
  static const ClassroomGuardianlinksStudentsReadonlyScope =
      "https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly";

  /// View the email addresses of people in your classes
  static const ClassroomProfileEmailsScope =
      "https://www.googleapis.com/auth/classroom.profile.emails";

  /// View the profile photos of people in your classes
  static const ClassroomProfilePhotosScope =
      "https://www.googleapis.com/auth/classroom.profile.photos";

  /// Receive notifications about your Google Classroom data
  static const ClassroomPushNotificationsScope =
      "https://www.googleapis.com/auth/classroom.push-notifications";

  /// Manage your Google Classroom class rosters
  static const ClassroomRostersScope =
      "https://www.googleapis.com/auth/classroom.rosters";

  /// View your Google Classroom class rosters
  static const ClassroomRostersReadonlyScope =
      "https://www.googleapis.com/auth/classroom.rosters.readonly";

  /// View your course work and grades in Google Classroom
  static const ClassroomStudentSubmissionsMeReadonlyScope =
      "https://www.googleapis.com/auth/classroom.student-submissions.me.readonly";

  /// View course work and grades for students in the Google Classroom classes
  /// you teach or administer
  static const ClassroomStudentSubmissionsStudentsReadonlyScope =
      "https://www.googleapis.com/auth/classroom.student-submissions.students.readonly";

  /// See, create, and edit topics in Google Classroom
  static const ClassroomTopicsScope =
      "https://www.googleapis.com/auth/classroom.topics";

  /// View topics in Google Classroom
  static const ClassroomTopicsReadonlyScope =
      "https://www.googleapis.com/auth/classroom.topics.readonly";

  final commons.ApiRequester _requester;

  CoursesResourceApi get courses => new CoursesResourceApi(_requester);
  InvitationsResourceApi get invitations =>
      new InvitationsResourceApi(_requester);
  RegistrationsResourceApi get registrations =>
      new RegistrationsResourceApi(_requester);
  UserProfilesResourceApi get userProfiles =>
      new UserProfilesResourceApi(_requester);

  ClassroomApi(http.Client client,
      {core.String rootUrl = "https://classroom.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class CoursesResourceApi {
  final commons.ApiRequester _requester;

  CoursesAliasesResourceApi get aliases =>
      new CoursesAliasesResourceApi(_requester);
  CoursesAnnouncementsResourceApi get announcements =>
      new CoursesAnnouncementsResourceApi(_requester);
  CoursesCourseWorkResourceApi get courseWork =>
      new CoursesCourseWorkResourceApi(_requester);
  CoursesStudentsResourceApi get students =>
      new CoursesStudentsResourceApi(_requester);
  CoursesTeachersResourceApi get teachers =>
      new CoursesTeachersResourceApi(_requester);
  CoursesTopicsResourceApi get topics =>
      new CoursesTopicsResourceApi(_requester);

  CoursesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a course.
  ///
  /// The user specified in `ownerId` is the owner of the created course
  /// and added as a teacher.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to create
  /// courses or for access errors.
  /// * `NOT_FOUND` if the primary teacher is not a valid user.
  /// * `FAILED_PRECONDITION` if the course owner's account is disabled or for
  /// the following request errors:
  ///     * UserGroupsMembershipLimitReached
  /// * `ALREADY_EXISTS` if an alias was specified in the `id` and
  /// already exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Course].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Course> create(Course request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /// Deletes a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to delete
  /// the
  /// requested course or for access errors.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to delete.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String id, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or for access errors.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to return.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Course].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Course> get(core.String id, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /// Returns a list of courses that the requesting user is permitted to view,
  /// restricted to those that match the request. Returned courses are ordered
  /// by
  /// creation time, with the most recently created coming first.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` for access errors.
  /// * `INVALID_ARGUMENT` if the query argument is malformed.
  /// * `NOT_FOUND` if any users specified in the query arguments do not exist.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request must be
  /// otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [teacherId] - Restricts returned courses to those having a teacher with
  /// the specified
  /// identifier. The identifier can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [courseStates] - Restricts returned courses to those in one of the
  /// specified states
  /// The default value is ACTIVE, ARCHIVED, PROVISIONED, DECLINED.
  ///
  /// [studentId] - Restricts returned courses to those having a student with
  /// the specified
  /// identifier. The identifier can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCoursesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCoursesResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.String teacherId,
      core.List<core.String> courseStates,
      core.String studentId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (teacherId != null) {
      _queryParams["teacherId"] = [teacherId];
    }
    if (courseStates != null) {
      _queryParams["courseStates"] = courseStates;
    }
    if (studentId != null) {
      _queryParams["studentId"] = [studentId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCoursesResponse.fromJson(data));
  }

  /// Updates one or more fields in a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to modify
  /// the
  /// requested course or for access errors.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  /// * `INVALID_ARGUMENT` if invalid fields are specified in the update mask or
  /// if no update mask is supplied.
  /// * `FAILED_PRECONDITION` for the following request errors:
  ///     * CourseNotModifiable
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to update.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [updateMask] - Mask that identifies which fields on the course to update.
  /// This field is required to do an update. The update will fail if invalid
  /// fields are specified. The following fields are valid:
  ///
  /// * `name`
  /// * `section`
  /// * `descriptionHeading`
  /// * `description`
  /// * `room`
  /// * `courseState`
  /// * `ownerId`
  ///
  /// Note: patches to ownerId are treated as being effective immediately, but
  /// in
  /// practice it may take some time for the ownership transfer of all affected
  /// resources to complete.
  ///
  /// When set in a query parameter, this field should be specified as
  ///
  /// `updateMask=<field1>,<field2>,...`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Course].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Course> patch(Course request, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Course.fromJson(data));
  }

  /// Updates a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to modify
  /// the
  /// requested course or for access errors.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  /// * `FAILED_PRECONDITION` for the following request errors:
  ///     * CourseNotModifiable
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to update.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Course].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Course> update(Course request, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PUT",
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

  CoursesAliasesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates an alias for a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to create
  /// the
  /// alias or for access errors.
  /// * `NOT_FOUND` if the course does not exist.
  /// * `ALREADY_EXISTS` if the alias already exists.
  /// * `FAILED_PRECONDITION` if the alias requested does not make sense for the
  ///   requesting user or course (for example, if a user not in a domain
  ///   attempts to access a domain-scoped alias).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course to alias.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseAlias].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseAlias> create(CourseAlias request, core.String courseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/aliases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseAlias.fromJson(data));
  }

  /// Deletes an alias of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to remove
  /// the
  /// alias or for access errors.
  /// * `NOT_FOUND` if the alias does not exist.
  /// * `FAILED_PRECONDITION` if the alias requested does not make sense for the
  ///   requesting user or course (for example, if a user not in a domain
  ///   attempts to delete a domain-scoped alias).
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course whose alias should be deleted.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [alias] - Alias to delete.
  /// This may not be the Classroom-assigned identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String alias,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (alias == null) {
      throw new core.ArgumentError("Parameter alias is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/aliases/' +
        commons.Escaper.ecapeVariable('$alias');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a list of aliases for a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// course or for access errors.
  /// * `NOT_FOUND` if the course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - The identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCourseAliasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCourseAliasesResponse> list(core.String courseId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/aliases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListCourseAliasesResponse.fromJson(data));
  }
}

class CoursesAnnouncementsResourceApi {
  final commons.ApiRequester _requester;

  CoursesAnnouncementsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates an announcement.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course, create announcements in the requested course, share a
  /// Drive attachment, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  /// * `FAILED_PRECONDITION` for the following request error:
  ///     * AttachmentNotVisible
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Announcement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Announcement> create(Announcement request, core.String courseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Announcement.fromJson(data));
  }

  /// Deletes an announcement.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding announcement item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding announcement, if the requesting user is not permitted
  /// to delete the requested course or for access errors.
  /// * `FAILED_PRECONDITION` if the requested announcement has already been
  /// deleted.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the announcement to delete.
  /// This identifier is a Classroom-assigned identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns an announcement.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or announcement, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or announcement does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the announcement.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Announcement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Announcement> get(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Announcement.fromJson(data));
  }

  /// Returns a list of announcements that the requester is permitted to view.
  ///
  /// Course students may only view `PUBLISHED` announcements. Course teachers
  /// and domain administrators may view all announcements.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the requested course or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [orderBy] - Optional sort ordering for results. A comma-separated list of
  /// fields with
  /// an optional sort direction keyword. Supported field is `updateTime`.
  /// Supported direction keywords are `asc` and `desc`.
  /// If not specified, `updateTime desc` is the default behavior.
  /// Examples: `updateTime asc`, `updateTime`
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [announcementStates] - Restriction on the `state` of announcements
  /// returned.
  /// If this argument is left unspecified, the default value is `PUBLISHED`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAnnouncementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAnnouncementsResponse> list(core.String courseId,
      {core.String orderBy,
      core.String pageToken,
      core.int pageSize,
      core.List<core.String> announcementStates,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (announcementStates != null) {
      _queryParams["announcementStates"] = announcementStates;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAnnouncementsResponse.fromJson(data));
  }

  /// Modifies assignee mode and options of an announcement.
  ///
  /// Only a teacher of the course that contains the announcement may
  /// call this method.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or course work does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the announcement.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Announcement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Announcement> modifyAssignees(
      ModifyAnnouncementAssigneesRequest request,
      core.String courseId,
      core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements/' +
        commons.Escaper.ecapeVariable('$id') +
        ':modifyAssignees';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Announcement.fromJson(data));
  }

  /// Updates one or more fields of an announcement.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding announcement or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `FAILED_PRECONDITION` if the requested announcement has already been
  /// deleted.
  /// * `NOT_FOUND` if the requested course or announcement does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the announcement.
  ///
  /// [updateMask] - Mask that identifies which fields on the announcement to
  /// update.
  /// This field is required to do an update. The update fails if invalid
  /// fields are specified. If a field supports empty values, it can be cleared
  /// by specifying it in the update mask and not in the Announcement object. If
  /// a field that does not support empty values is included in the update mask
  /// and not set in the Announcement object, an `INVALID_ARGUMENT` error will
  /// be
  /// returned.
  ///
  /// The following fields may be specified by teachers:
  ///
  /// * `text`
  /// * `state`
  /// * `scheduled_time`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Announcement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Announcement> patch(
      Announcement request, core.String courseId, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/announcements/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Announcement.fromJson(data));
  }
}

class CoursesCourseWorkResourceApi {
  final commons.ApiRequester _requester;

  CoursesCourseWorkStudentSubmissionsResourceApi get studentSubmissions =>
      new CoursesCourseWorkStudentSubmissionsResourceApi(_requester);

  CoursesCourseWorkResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates course work.
  ///
  /// The resulting course work (and corresponding student submissions) are
  /// associated with the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// make the request. Classroom API requests to modify course work and student
  /// submissions must be made with an OAuth client ID from the associated
  /// Developer Console project.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course, create course work in the requested course, share a
  /// Drive attachment, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  /// * `FAILED_PRECONDITION` for the following request error:
  ///     * AttachmentNotVisible
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWork> create(CourseWork request, core.String courseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseWork.fromJson(data));
  }

  /// Deletes a course work.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding course work, if the requesting user is not permitted
  /// to delete the requested course or for access errors.
  /// * `FAILED_PRECONDITION` if the requested course work has already been
  /// deleted.
  /// * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the course work to delete.
  /// This identifier is a Classroom-assigned identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns course work.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or course work does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the course work.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWork> get(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseWork.fromJson(data));
  }

  /// Returns a list of course work that the requester is permitted to view.
  ///
  /// Course students may only view `PUBLISHED` course work. Course teachers
  /// and domain administrators may view all course work.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the requested course or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkStates] - Restriction on the work status to return. Only
  /// courseWork that matches
  /// is returned. If unspecified, items with a work status of `PUBLISHED`
  /// is returned.
  ///
  /// [orderBy] - Optional sort ordering for results. A comma-separated list of
  /// fields with
  /// an optional sort direction keyword. Supported fields are `updateTime`
  /// and `dueDate`. Supported direction keywords are `asc` and `desc`.
  /// If not specified, `updateTime desc` is the default behavior.
  /// Examples: `dueDate asc,updateTime desc`, `updateTime,dueDate desc`
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCourseWorkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCourseWorkResponse> list(core.String courseId,
      {core.List<core.String> courseWorkStates,
      core.String orderBy,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkStates != null) {
      _queryParams["courseWorkStates"] = courseWorkStates;
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListCourseWorkResponse.fromJson(data));
  }

  /// Modifies assignee mode and options of a coursework.
  ///
  /// Only a teacher of the course that contains the coursework may
  /// call this method.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or course work does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the coursework.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWork> modifyAssignees(
      ModifyCourseWorkAssigneesRequest request,
      core.String courseId,
      core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$id') +
        ':modifyAssignees';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseWork.fromJson(data));
  }

  /// Updates one or more fields of a course work.
  ///
  /// See google.classroom.v1.CourseWork for details
  /// of which fields may be updated and who may change them.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding course work, if the user is not permitted to make the
  /// requested modification to the student submission, or for
  /// access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `FAILED_PRECONDITION` if the requested course work has already been
  /// deleted.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the course work.
  ///
  /// [updateMask] - Mask that identifies which fields on the course work to
  /// update.
  /// This field is required to do an update. The update fails if invalid
  /// fields are specified. If a field supports empty values, it can be cleared
  /// by specifying it in the update mask and not in the CourseWork object. If a
  /// field that does not support empty values is included in the update mask
  /// and
  /// not set in the CourseWork object, an `INVALID_ARGUMENT` error will be
  /// returned.
  ///
  /// The following fields may be specified by teachers:
  ///
  /// * `title`
  /// * `description`
  /// * `state`
  /// * `due_date`
  /// * `due_time`
  /// * `max_points`
  /// * `scheduled_time`
  /// * `submission_modification_mode`
  /// * `topic_id`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWork> patch(
      CourseWork request, core.String courseId, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CourseWork.fromJson(data));
  }
}

class CoursesCourseWorkStudentSubmissionsResourceApi {
  final commons.ApiRequester _requester;

  CoursesCourseWorkStudentSubmissionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Returns a student submission.
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course, course work, or student submission or for
  /// access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StudentSubmission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StudentSubmission> get(
      core.String courseId, core.String courseWorkId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StudentSubmission.fromJson(data));
  }

  /// Returns a list of student submissions that the requester is permitted to
  /// view, factoring in the OAuth scopes of the request.
  /// `-` may be specified as the `course_work_id` to include student
  /// submissions for multiple course work items.
  ///
  /// Course students may only view their own work. Course teachers
  /// and domain administrators may view all student submissions.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the student work to request.
  /// This may be set to the string literal `"-"` to request student work for
  /// all course work in the specified course.
  ///
  /// [late] - Requested lateness value. If specified, returned student
  /// submissions are
  /// restricted by the requested value.
  /// If unspecified, submissions are returned regardless of `late` value.
  /// Possible string values are:
  /// - "LATE_VALUES_UNSPECIFIED" : A LATE_VALUES_UNSPECIFIED.
  /// - "LATE_ONLY" : A LATE_ONLY.
  /// - "NOT_LATE_ONLY" : A NOT_LATE_ONLY.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [states] - Requested submission states. If specified, returned student
  /// submissions
  /// match one of the specified submission states.
  ///
  /// [userId] - Optional argument to restrict returned student work to those
  /// owned by the
  /// student with the specified identifier. The identifier can be one of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStudentSubmissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStudentSubmissionsResponse> list(
      core.String courseId, core.String courseWorkId,
      {core.String late,
      core.String pageToken,
      core.int pageSize,
      core.List<core.String> states,
      core.String userId,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (late != null) {
      _queryParams["late"] = [late];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (states != null) {
      _queryParams["states"] = states;
    }
    if (userId != null) {
      _queryParams["userId"] = [userId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListStudentSubmissionsResponse.fromJson(data));
  }

  /// Modifies attachments of student submission.
  ///
  /// Attachments may only be added to student submissions belonging to course
  /// work objects with a `workType` of `ASSIGNMENT`.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, if the user is not permitted to modify
  /// attachments on the requested student submission, or for
  /// access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StudentSubmission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StudentSubmission> modifyAttachments(
      ModifyAttachmentsRequest request,
      core.String courseId,
      core.String courseWorkId,
      core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id') +
        ':modifyAttachments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StudentSubmission.fromJson(data));
  }

  /// Updates one or more fields of a student submission.
  ///
  /// See google.classroom.v1.StudentSubmission for details
  /// of which fields may be updated and who may change them.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding course work, if the user is not permitted to make the
  /// requested modification to the student submission, or for
  /// access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [updateMask] - Mask that identifies which fields on the student submission
  /// to update.
  /// This field is required to do an update. The update fails if invalid
  /// fields are specified.
  ///
  /// The following fields may be specified by teachers:
  ///
  /// * `draft_grade`
  /// * `assigned_grade`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StudentSubmission].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StudentSubmission> patch(StudentSubmission request,
      core.String courseId, core.String courseWorkId, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new StudentSubmission.fromJson(data));
  }

  /// Reclaims a student submission on behalf of the student that owns it.
  ///
  /// Reclaiming a student submission transfers ownership of attached Drive
  /// files to the student and updates the submission state.
  ///
  /// Only the student that owns the requested student submission may call this
  /// method, and only for a student submission that has been turned in.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, unsubmit the requested student
  /// submission,
  /// or for access errors.
  /// * `FAILED_PRECONDITION` if the student submission has not been turned in.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> reclaim(ReclaimStudentSubmissionRequest request,
      core.String courseId, core.String courseWorkId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id') +
        ':reclaim';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a student submission.
  ///
  /// Returning a student submission transfers ownership of attached Drive
  /// files to the student and may also update the submission state.
  /// Unlike the Classroom application, returning a student submission does not
  /// set assignedGrade to the draftGrade value.
  ///
  /// Only a teacher of the course that contains the requested student
  /// submission
  /// may call this method.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, return the requested student submission,
  /// or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> return_(ReturnStudentSubmissionRequest request,
      core.String courseId, core.String courseWorkId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id') +
        ':return';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Turns in a student submission.
  ///
  /// Turning in a student submission transfers ownership of attached Drive
  /// files to the teacher and may also update the submission state.
  ///
  /// This may only be called by the student that owns the specified student
  /// submission.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or course work, turn in the requested student submission,
  /// or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> turnIn(TurnInStudentSubmissionRequest request,
      core.String courseId, core.String courseWorkId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (courseWorkId == null) {
      throw new core.ArgumentError("Parameter courseWorkId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/courseWork/' +
        commons.Escaper.ecapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.Escaper.ecapeVariable('$id') +
        ':turnIn';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class CoursesStudentsResourceApi {
  final commons.ApiRequester _requester;

  CoursesStudentsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Adds a user as a student of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to create
  /// students in this course or for access errors.
  /// * `NOT_FOUND` if the requested course ID does not exist.
  /// * `FAILED_PRECONDITION` if the requested user's account is disabled,
  /// for the following request errors:
  ///     * CourseMemberLimitReached
  ///     * CourseNotModifiable
  ///     * UserGroupsMembershipLimitReached
  /// * `ALREADY_EXISTS` if the user is already a student or teacher in the
  /// course.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course to create the student in.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [enrollmentCode] - Enrollment code of the course to create the student in.
  /// This code is required if userId
  /// corresponds to the requesting user; it may be omitted if the requesting
  /// user has administrative permissions to create students for any user.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Student].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Student> create(Student request, core.String courseId,
      {core.String enrollmentCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (enrollmentCode != null) {
      _queryParams["enrollmentCode"] = [enrollmentCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/students';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Student.fromJson(data));
  }

  /// Deletes a student of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to delete
  /// students of this course or for access errors.
  /// * `NOT_FOUND` if no student of this course has the requested ID or if the
  /// course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [userId] - Identifier of the student to delete. The identifier can be one
  /// of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/students/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a student of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to view
  /// students of this course or for access errors.
  /// * `NOT_FOUND` if no student of this course has the requested ID or if the
  /// course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [userId] - Identifier of the student to return. The identifier can be one
  /// of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Student].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Student> get(core.String courseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/students/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Student.fromJson(data));
  }

  /// Returns a list of students of this course that the requester
  /// is permitted to view.
  ///
  /// This method returns the following error codes:
  ///
  /// * `NOT_FOUND` if the course does not exist.
  /// * `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call, indicating that
  /// the subsequent page of results should be returned.
  ///
  /// The list request must be
  /// otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero means no maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStudentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStudentsResponse> list(core.String courseId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/students';

    var _response = _requester.request(_url, "GET",
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

  CoursesTeachersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a teacher of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not  permitted to create
  /// teachers in this course or for access errors.
  /// * `NOT_FOUND` if the requested course ID does not exist.
  /// * `FAILED_PRECONDITION` if the requested user's account is disabled,
  /// for the following request errors:
  ///     * CourseMemberLimitReached
  ///     * CourseNotModifiable
  ///     * CourseTeacherLimitReached
  ///     * UserGroupsMembershipLimitReached
  /// * `ALREADY_EXISTS` if the user is already a teacher or student in the
  /// course.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Teacher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Teacher> create(Teacher request, core.String courseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/teachers';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Teacher.fromJson(data));
  }

  /// Deletes a teacher of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to delete
  /// teachers of this course or for access errors.
  /// * `NOT_FOUND` if no teacher of this course has the requested ID or if the
  /// course does not exist.
  /// * `FAILED_PRECONDITION` if the requested ID belongs to the primary teacher
  /// of this course.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [userId] - Identifier of the teacher to delete. The identifier can be one
  /// of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/teachers/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a teacher of a course.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to view
  /// teachers of this course or for access errors.
  /// * `NOT_FOUND` if no teacher of this course has the requested ID or if the
  /// course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [userId] - Identifier of the teacher to return. The identifier can be one
  /// of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Teacher].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Teacher> get(core.String courseId, core.String userId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/teachers/' +
        commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Teacher.fromJson(data));
  }

  /// Returns a list of teachers of this course that the requester
  /// is permitted to view.
  ///
  /// This method returns the following error codes:
  ///
  /// * `NOT_FOUND` if the course does not exist.
  /// * `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call, indicating that
  /// the subsequent page of results should be returned.
  ///
  /// The list request must be
  /// otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero means no maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTeachersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTeachersResponse> list(core.String courseId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/teachers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTeachersResponse.fromJson(data));
  }
}

class CoursesTopicsResourceApi {
  final commons.ApiRequester _requester;

  CoursesTopicsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a topic.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course, create a topic in the requested course,
  /// or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> create(Topic request, core.String courseId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/topics';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }

  /// Deletes a topic.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not allowed to delete the
  /// requested topic or for access errors.
  /// * `FAILED_PRECONDITION` if the requested topic has already been
  /// deleted.
  /// * `NOT_FOUND` if no course or topic exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the topic to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/topics/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a topic.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the
  /// requested course or topic, or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or topic does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  ///
  /// [id] - Identifier of the topic.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> get(core.String courseId, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/topics/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }

  /// Returns the list of topics that the requester is permitted to view.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the requested course or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicResponse> list(core.String courseId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/courses/' + commons.Escaper.ecapeVariable('$courseId') + '/topics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTopicResponse.fromJson(data));
  }

  /// Updates one or more fields of a topic.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting developer project did not create
  /// the corresponding topic or for access errors.
  /// * `INVALID_ARGUMENT` if the request is malformed.
  /// * `NOT_FOUND` if the requested course or topic does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course.
  /// This identifier can be either the Classroom-assigned identifier or an
  /// alias.
  ///
  /// [id] - Identifier of the topic.
  ///
  /// [updateMask] - Mask that identifies which fields on the topic to update.
  /// This field is required to do an update. The update fails if invalid
  /// fields are specified. If a field supports empty values, it can be cleared
  /// by specifying it in the update mask and not in the Topic object. If a
  /// field that does not support empty values is included in the update mask
  /// and
  /// not set in the Topic object, an `INVALID_ARGUMENT` error will be
  /// returned.
  ///
  /// The following fields may be specified:
  ///
  /// * `name`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> patch(Topic request, core.String courseId, core.String id,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (courseId == null) {
      throw new core.ArgumentError("Parameter courseId is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/courses/' +
        commons.Escaper.ecapeVariable('$courseId') +
        '/topics/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Topic.fromJson(data));
  }
}

class InvitationsResourceApi {
  final commons.ApiRequester _requester;

  InvitationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Accepts an invitation, removing it and adding the invited user to the
  /// teachers or students (as appropriate) of the specified course. Only the
  /// invited user may accept an invitation.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to accept
  /// the
  /// requested invitation or for access errors.
  /// * `FAILED_PRECONDITION` for the following request errors:
  ///     * CourseMemberLimitReached
  ///     * CourseNotModifiable
  ///     * CourseTeacherLimitReached
  ///     * UserGroupsMembershipLimitReached
  /// * `NOT_FOUND` if no invitation exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the invitation to accept.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> accept(core.String id, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id') + ':accept';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Creates an invitation. Only one invitation for a user and course may exist
  /// at a time. Delete and re-create an invitation to make changes.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to create
  /// invitations for this course or for access errors.
  /// * `NOT_FOUND` if the course or the user does not exist.
  /// * `FAILED_PRECONDITION` if the requested user's account is disabled or if
  /// the user already has this role or a role with greater permissions.
  /// * `ALREADY_EXISTS` if an invitation for the specified user and course
  /// already exists.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invitation> create(Invitation request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/invitations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invitation.fromJson(data));
  }

  /// Deletes an invitation.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to delete
  /// the
  /// requested invitation or for access errors.
  /// * `NOT_FOUND` if no invitation exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the invitation to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String id, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns an invitation.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to view the
  /// requested invitation or for access errors.
  /// * `NOT_FOUND` if no invitation exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the invitation to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invitation> get(core.String id, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/invitations/' + commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invitation.fromJson(data));
  }

  /// Returns a list of invitations that the requesting user is permitted to
  /// view, restricted to those that match the list request.
  ///
  /// *Note:* At least one of `user_id` or `course_id` must be supplied. Both
  /// fields can be supplied.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Restricts returned invitations to those for a course with the
  /// specified
  /// identifier.
  ///
  /// [userId] - Restricts returned invitations to those for a specific user.
  /// The identifier
  /// can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call, indicating
  /// that the subsequent page of results should be returned.
  ///
  /// The list request must be
  /// otherwise identical to the one that resulted in this token.
  ///
  /// [pageSize] - Maximum number of items to return. Zero means no maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInvitationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInvitationsResponse> list(
      {core.String courseId,
      core.String userId,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (courseId != null) {
      _queryParams["courseId"] = [courseId];
    }
    if (userId != null) {
      _queryParams["userId"] = [userId];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/invitations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInvitationsResponse.fromJson(data));
  }
}

class RegistrationsResourceApi {
  final commons.ApiRequester _requester;

  RegistrationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a `Registration`, causing Classroom to start sending notifications
  /// from the provided `feed` to the destination provided in
  /// `cloudPubSubTopic`.
  ///
  /// Returns the created `Registration`. Currently, this will be the same as
  /// the argument, but with server-assigned fields such as `expiry_time` and
  /// `id` filled in.
  ///
  /// Note that any value specified for the `expiry_time` or `id` fields will be
  /// ignored.
  ///
  /// While Classroom may validate the `cloudPubSubTopic` and return errors on a
  /// best effort basis, it is the caller's responsibility to ensure that it
  /// exists and that Classroom has permission to publish to it.
  ///
  /// This method may return the following error codes:
  ///
  /// * `PERMISSION_DENIED` if:
  ///     * the authenticated user does not have permission to receive
  ///       notifications from the requested field; or
  ///     * the credential provided does not include the appropriate scope for
  ///       the requested feed.
  ///     * another access error is encountered.
  /// * `INVALID_ARGUMENT` if:
  ///     * no `cloudPubsubTopic` is specified, or the specified
  ///       `cloudPubsubTopic` is not valid; or
  ///     * no `feed` is specified, or the specified `feed` is not valid.
  /// * `NOT_FOUND` if:
  ///     * the specified `feed` cannot be located, or the requesting user does
  ///       not have permission to determine whether or not it exists; or
  /// * the specified `cloudPubsubTopic` cannot be located, or Classroom has
  ///       not been granted permission to publish to it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Registration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Registration> create(Registration request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/registrations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Registration.fromJson(data));
  }

  /// Deletes a `Registration`, causing Classroom to stop sending notifications
  /// for that `Registration`.
  ///
  /// Request parameters:
  ///
  /// [registrationId] - The `registration_id` of the `Registration` to be
  /// deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String registrationId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (registrationId == null) {
      throw new core.ArgumentError("Parameter registrationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v1/registrations/' + commons.Escaper.ecapeVariable('$registrationId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }
}

class UserProfilesResourceApi {
  final commons.ApiRequester _requester;

  UserProfilesGuardianInvitationsResourceApi get guardianInvitations =>
      new UserProfilesGuardianInvitationsResourceApi(_requester);
  UserProfilesGuardiansResourceApi get guardians =>
      new UserProfilesGuardiansResourceApi(_requester);

  UserProfilesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a user profile.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// this user profile, if no profile exists with the requested ID, or for
  /// access errors.
  ///
  /// Request parameters:
  ///
  /// [userId] - Identifier of the profile to return. The identifier can be one
  /// of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserProfile> get(core.String userId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userId == null) {
      throw new core.ArgumentError("Parameter userId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' + commons.Escaper.ecapeVariable('$userId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserProfile.fromJson(data));
  }
}

class UserProfilesGuardianInvitationsResourceApi {
  final commons.ApiRequester _requester;

  UserProfilesGuardianInvitationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a guardian invitation, and sends an email to the guardian asking
  /// them to confirm that they are the student's guardian.
  ///
  /// Once the guardian accepts the invitation, their `state` will change to
  /// `COMPLETED` and they will start receiving guardian notifications. A
  /// `Guardian` resource will also be created to represent the active guardian.
  ///
  /// The request object must have the `student_id` and
  /// `invited_email_address` fields set. Failing to set these fields, or
  /// setting any other fields in the request, will result in an error.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the current user does not have permission to
  ///   manage guardians, if the guardian in question has already rejected
  /// too many requests for that student, if guardians are not enabled for the
  ///   domain in question, or for other access errors.
  /// * `RESOURCE_EXHAUSTED` if the student or guardian has exceeded the
  /// guardian
  ///   link limit.
  /// * `INVALID_ARGUMENT` if the guardian email address is not valid (for
  /// example, if it is too long), or if the format of the student ID provided
  ///   cannot be recognized (it is not an email address, nor a `user_id` from
  /// this API). This error will also be returned if read-only fields are set,
  ///   or if the `state` field is set to to a value other than `PENDING`.
  /// * `NOT_FOUND` if the student ID provided is a valid student ID, but
  ///   Classroom has no record of that student.
  /// * `ALREADY_EXISTS` if there is already a pending guardian invitation for
  ///   the student and `invited_email_address` provided, or if the provided
  ///   `invited_email_address` matches the Google account of an existing
  ///   `Guardian` for this user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [studentId] - ID of the student (in standard format)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuardianInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuardianInvitation> create(
      GuardianInvitation request, core.String studentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardianInvitations';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GuardianInvitation.fromJson(data));
  }

  /// Returns a specific guardian invitation.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to view
  ///   guardian invitations for the student identified by the `student_id`, if
  ///   guardians are not enabled for the domain in question, or for other
  ///   access errors.
  /// * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  ///   be recognized (it is not an email address, nor a `student_id` from the
  ///   API, nor the literal string `me`).
  /// * `NOT_FOUND` if Classroom cannot find any record of the given student or
  ///   `invitation_id`. May also be returned if the student exists, but the
  ///   requesting user does not have access to see that student.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The ID of the student whose guardian invitation is being
  /// requested.
  ///
  /// [invitationId] - The `id` field of the `GuardianInvitation` being
  /// requested.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuardianInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuardianInvitation> get(
      core.String studentId, core.String invitationId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (invitationId == null) {
      throw new core.ArgumentError("Parameter invitationId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardianInvitations/' +
        commons.Escaper.ecapeVariable('$invitationId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GuardianInvitation.fromJson(data));
  }

  /// Returns a list of guardian invitations that the requesting user is
  /// permitted to view, filtered by the parameters provided.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting
  ///   user is not permitted to view guardian invitations for that student, if
  ///   `"-"` is specified as the `student_id` and the user is not a domain
  ///   administrator, if guardians are not enabled for the domain in question,
  ///   or for other access errors.
  /// * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  ///   be recognized (it is not an email address, nor a `student_id` from the
  ///   API, nor the literal string `me`). May also be returned if an invalid
  ///   `page_token` or `state` is provided.
  /// * `NOT_FOUND` if a `student_id` is specified, and its format can be
  ///   recognized, but Classroom has no record of that student.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The ID of the student whose guardian invitations are to be
  /// returned.
  /// The identifier can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  /// * the string literal `"-"`, indicating that results should be returned for
  ///   all students that the requesting user is permitted to view guardian
  ///   invitations.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [invitedEmailAddress] - If specified, only results with the specified
  /// `invited_email_address`
  /// will be returned.
  ///
  /// [states] - If specified, only results with the specified `state` values
  /// will be
  /// returned. Otherwise, results with a `state` of `PENDING` will be returned.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGuardianInvitationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGuardianInvitationsResponse> list(core.String studentId,
      {core.String pageToken,
      core.String invitedEmailAddress,
      core.List<core.String> states,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (invitedEmailAddress != null) {
      _queryParams["invitedEmailAddress"] = [invitedEmailAddress];
    }
    if (states != null) {
      _queryParams["states"] = states;
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardianInvitations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListGuardianInvitationsResponse.fromJson(data));
  }

  /// Modifies a guardian invitation.
  ///
  /// Currently, the only valid modification is to change the `state` from
  /// `PENDING` to `COMPLETE`. This has the effect of withdrawing the
  /// invitation.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if the current user does not have permission to
  /// manage guardians, if guardians are not enabled for the domain in question
  ///   or for other access errors.
  /// * `FAILED_PRECONDITION` if the guardian link is not in the `PENDING`
  /// state.
  /// * `INVALID_ARGUMENT` if the format of the student ID provided
  ///   cannot be recognized (it is not an email address, nor a `user_id` from
  /// this API), or if the passed `GuardianInvitation` has a `state` other than
  ///   `COMPLETE`, or if it modifies fields other than `state`.
  /// * `NOT_FOUND` if the student ID provided is a valid student ID, but
  ///   Classroom has no record of that student, or if the `id` field does not
  ///   refer to a guardian invitation known to Classroom.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The ID of the student whose guardian invitation is to be
  /// modified.
  ///
  /// [invitationId] - The `id` field of the `GuardianInvitation` to be
  /// modified.
  ///
  /// [updateMask] - Mask that identifies which fields on the course to update.
  /// This field is required to do an update. The update will fail if invalid
  /// fields are specified. The following fields are valid:
  ///
  /// * `state`
  ///
  /// When set in a query parameter, this field should be specified as
  ///
  /// `updateMask=<field1>,<field2>,...`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GuardianInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GuardianInvitation> patch(GuardianInvitation request,
      core.String studentId, core.String invitationId,
      {core.String updateMask, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (invitationId == null) {
      throw new core.ArgumentError("Parameter invitationId is required.");
    }
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardianInvitations/' +
        commons.Escaper.ecapeVariable('$invitationId');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GuardianInvitation.fromJson(data));
  }
}

class UserProfilesGuardiansResourceApi {
  final commons.ApiRequester _requester;

  UserProfilesGuardiansResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a guardian.
  ///
  /// The guardian will no longer receive guardian notifications and the
  /// guardian
  /// will no longer be accessible via the API.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if no user that matches the provided `student_id`
  ///   is visible to the requesting user, if the requesting user is not
  ///   permitted to manage guardians for the student identified by the
  ///   `student_id`, if guardians are not enabled for the domain in question,
  ///   or for other access errors.
  /// * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  ///   be recognized (it is not an email address, nor a `student_id` from the
  ///   API).
  /// * `NOT_FOUND` if the requesting user is permitted to modify guardians for
  ///   the requested `student_id`, but no `Guardian` record exists for that
  ///   student with the provided `guardian_id`.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The student whose guardian is to be deleted. One of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [guardianId] - The `id` field from a `Guardian`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(core.String studentId, core.String guardianId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (guardianId == null) {
      throw new core.ArgumentError("Parameter guardianId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardians/' +
        commons.Escaper.ecapeVariable('$guardianId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Returns a specific guardian.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if no user that matches the provided `student_id`
  ///   is visible to the requesting user, if the requesting user is not
  /// permitted to view guardian information for the student identified by the
  ///   `student_id`, if guardians are not enabled for the domain in question,
  ///   or for other access errors.
  /// * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  ///   be recognized (it is not an email address, nor a `student_id` from the
  ///   API, nor the literal string `me`).
  /// * `NOT_FOUND` if the requesting user is permitted to view guardians for
  ///   the requested `student_id`, but no `Guardian` record exists for that
  ///   student that matches the provided `guardian_id`.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The student whose guardian is being requested. One of the
  /// following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// [guardianId] - The `id` field from a `Guardian`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Guardian].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Guardian> get(core.String studentId, core.String guardianId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (guardianId == null) {
      throw new core.ArgumentError("Parameter guardianId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardians/' +
        commons.Escaper.ecapeVariable('$guardianId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Guardian.fromJson(data));
  }

  /// Returns a list of guardians that the requesting user is permitted to
  /// view, restricted to those that match the request.
  ///
  /// To list guardians for any student that the requesting user may view
  /// guardians for, use the literal character `-` for the student ID.
  ///
  /// This method returns the following error codes:
  ///
  /// * `PERMISSION_DENIED` if a `student_id` is specified, and the requesting
  ///   user is not permitted to view guardian information for that student, if
  ///   `"-"` is specified as the `student_id` and the user is not a domain
  ///   administrator, if guardians are not enabled for the domain in question,
  ///   if the `invited_email_address` filter is set by a user who is not a
  ///   domain administrator, or for other access errors.
  /// * `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  ///   be recognized (it is not an email address, nor a `student_id` from the
  ///   API, nor the literal string `me`). May also be returned if an invalid
  ///   `page_token` is provided.
  /// * `NOT_FOUND` if a `student_id` is specified, and its format can be
  ///   recognized, but Classroom has no record of that student.
  ///
  /// Request parameters:
  ///
  /// [studentId] - Filter results by the student who the guardian is linked to.
  /// The identifier can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  /// * the string literal `"-"`, indicating that results should be returned for
  ///   all students that the requesting user has access to view.
  ///
  /// [pageToken] - nextPageToken
  /// value returned from a previous
  /// list call,
  /// indicating that the subsequent page of results should be returned.
  ///
  /// The list request
  /// must be otherwise identical to the one that resulted in this token.
  ///
  /// [invitedEmailAddress] - Filter results by the email address that the
  /// original invitation was sent
  /// to, resulting in this guardian link.
  /// This filter can only be used by domain administrators.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the
  /// server may assign a maximum.
  ///
  /// The server may return fewer than the specified number of results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGuardiansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGuardiansResponse> list(core.String studentId,
      {core.String pageToken,
      core.String invitedEmailAddress,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (studentId == null) {
      throw new core.ArgumentError("Parameter studentId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (invitedEmailAddress != null) {
      _queryParams["invitedEmailAddress"] = [invitedEmailAddress];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/userProfiles/' +
        commons.Escaper.ecapeVariable('$studentId') +
        '/guardians';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListGuardiansResponse.fromJson(data));
  }
}

/// Announcement created by a teacher for students of the course
class Announcement {
  /// Absolute link to this announcement in the Classroom web UI.
  /// This is only populated if `state` is `PUBLISHED`.
  ///
  /// Read-only.
  core.String alternateLink;

  /// Assignee mode of the announcement.
  /// If unspecified, the default value is `ALL_STUDENTS`.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item.
  /// This is the default state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String assigneeMode;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// Timestamp when this announcement was created.
  ///
  /// Read-only.
  core.String creationTime;

  /// Identifier for the user that created the announcement.
  ///
  /// Read-only.
  core.String creatorUserId;

  /// Classroom-assigned identifier of this announcement, unique per course.
  ///
  /// Read-only.
  core.String id;

  /// Identifiers of students with access to the announcement.
  /// This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  /// If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students
  /// specified in this field will be able to see the announcement.
  IndividualStudentsOptions individualStudentsOptions;

  /// Additional materials.
  ///
  /// Announcements must have no more than 20 material items.
  core.List<Material> materials;

  /// Optional timestamp when this announcement is scheduled to be published.
  core.String scheduledTime;

  /// Status of this announcement.
  /// If unspecified, the default state is `DRAFT`.
  /// Possible string values are:
  /// - "ANNOUNCEMENT_STATE_UNSPECIFIED" : No state specified. This is never
  /// returned.
  /// - "PUBLISHED" : Status for announcement that has been published.
  /// This is the default state.
  /// - "DRAFT" : Status for an announcement that is not yet published.
  /// Announcement in this state is visible only to course teachers and domain
  /// administrators.
  /// - "DELETED" : Status for announcement that was published but is now
  /// deleted.
  /// Announcement in this state is visible only to course teachers and domain
  /// administrators.
  /// Announcement in this state is deleted after some time.
  core.String state;

  /// Description of this announcement.
  /// The text must be a valid UTF-8 string containing no more
  /// than 30,000 characters.
  core.String text;

  /// Timestamp of the most recent change to this announcement.
  ///
  /// Read-only.
  core.String updateTime;

  Announcement();

  Announcement.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("assigneeMode")) {
      assigneeMode = _json["assigneeMode"];
    }
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("creatorUserId")) {
      creatorUserId = _json["creatorUserId"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("individualStudentsOptions")) {
      individualStudentsOptions = new IndividualStudentsOptions.fromJson(
          _json["individualStudentsOptions"]);
    }
    if (_json.containsKey("materials")) {
      materials = (_json["materials"] as core.List)
          .map<Material>((value) => new Material.fromJson(value))
          .toList();
    }
    if (_json.containsKey("scheduledTime")) {
      scheduledTime = _json["scheduledTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (assigneeMode != null) {
      _json["assigneeMode"] = assigneeMode;
    }
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (creatorUserId != null) {
      _json["creatorUserId"] = creatorUserId;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (individualStudentsOptions != null) {
      _json["individualStudentsOptions"] = (individualStudentsOptions).toJson();
    }
    if (materials != null) {
      _json["materials"] = materials.map((value) => (value).toJson()).toList();
    }
    if (scheduledTime != null) {
      _json["scheduledTime"] = scheduledTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (text != null) {
      _json["text"] = text;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Additional details for assignments.
class Assignment {
  /// Drive folder where attachments from student submissions are placed.
  /// This is only populated for course teachers and administrators.
  DriveFolder studentWorkFolder;

  Assignment();

  Assignment.fromJson(core.Map _json) {
    if (_json.containsKey("studentWorkFolder")) {
      studentWorkFolder = new DriveFolder.fromJson(_json["studentWorkFolder"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (studentWorkFolder != null) {
      _json["studentWorkFolder"] = (studentWorkFolder).toJson();
    }
    return _json;
  }
}

/// Student work for an assignment.
class AssignmentSubmission {
  /// Attachments added by the student.
  /// Drive files that correspond to materials with a share mode of
  /// STUDENT_COPY may not exist yet if the student has not accessed the
  /// assignment in Classroom.
  ///
  /// Some attachment metadata is only populated if the requesting user has
  /// permission to access it. Identifier and alternate_link fields are always
  /// available, but others (e.g. title) may not be.
  core.List<Attachment> attachments;

  AssignmentSubmission();

  AssignmentSubmission.fromJson(core.Map _json) {
    if (_json.containsKey("attachments")) {
      attachments = (_json["attachments"] as core.List)
          .map<Attachment>((value) => new Attachment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attachments != null) {
      _json["attachments"] =
          attachments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Attachment added to student assignment work.
///
/// When creating attachments, setting the `form` field is not supported.
class Attachment {
  /// Google Drive file attachment.
  DriveFile driveFile;

  /// Google Forms attachment.
  Form form;

  /// Link attachment.
  Link link;

  /// Youtube video attachment.
  YouTubeVideo youTubeVideo;

  Attachment();

  Attachment.fromJson(core.Map _json) {
    if (_json.containsKey("driveFile")) {
      driveFile = new DriveFile.fromJson(_json["driveFile"]);
    }
    if (_json.containsKey("form")) {
      form = new Form.fromJson(_json["form"]);
    }
    if (_json.containsKey("link")) {
      link = new Link.fromJson(_json["link"]);
    }
    if (_json.containsKey("youTubeVideo")) {
      youTubeVideo = new YouTubeVideo.fromJson(_json["youTubeVideo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveFile != null) {
      _json["driveFile"] = (driveFile).toJson();
    }
    if (form != null) {
      _json["form"] = (form).toJson();
    }
    if (link != null) {
      _json["link"] = (link).toJson();
    }
    if (youTubeVideo != null) {
      _json["youTubeVideo"] = (youTubeVideo).toJson();
    }
    return _json;
  }
}

/// A reference to a Cloud Pub/Sub topic.
///
/// To register for notifications, the owner of the topic must grant
/// `classroom-notifications@system.gserviceaccount.com` the
///  `projects.topics.publish` permission.
class CloudPubsubTopic {
  /// The `name` field of a Cloud Pub/Sub
  /// [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  core.String topicName;

  CloudPubsubTopic();

  CloudPubsubTopic.fromJson(core.Map _json) {
    if (_json.containsKey("topicName")) {
      topicName = _json["topicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/// A Course in Classroom.
class Course {
  /// Absolute link to this course in the Classroom web UI.
  ///
  /// Read-only.
  core.String alternateLink;

  /// The Calendar ID for a calendar that all course members can see, to which
  /// Classroom adds events for course work and announcements in the course.
  ///
  /// Read-only.
  core.String calendarId;

  /// The email address of a Google group containing all members of the course.
  /// This group does not accept email and can only be used for permissions.
  ///
  /// Read-only.
  core.String courseGroupEmail;

  /// Sets of materials that appear on the "about" page of this course.
  ///
  /// Read-only.
  core.List<CourseMaterialSet> courseMaterialSets;

  /// State of the course.
  /// If unspecified, the default state is `PROVISIONED`.
  /// Possible string values are:
  /// - "COURSE_STATE_UNSPECIFIED" : No course state. No returned Course message
  /// will use this value.
  /// - "ACTIVE" : The course is active.
  /// - "ARCHIVED" : The course has been archived. You cannot modify it except
  /// to change it
  /// to a different state.
  /// - "PROVISIONED" : The course has been created, but not yet activated. It
  /// is accessible by
  /// the primary teacher and domain administrators, who may modify it or
  /// change it to the `ACTIVE` or `DECLINED` states.
  /// A course may only be changed to `PROVISIONED` if it is in the `DECLINED`
  /// state.
  /// - "DECLINED" : The course has been created, but declined. It is accessible
  /// by the
  /// course owner and domain administrators, though it will not be
  /// displayed in the web UI. You cannot modify the course except to change it
  /// to the `PROVISIONED` state.
  /// A course may only be changed to `DECLINED` if it is in the `PROVISIONED`
  /// state.
  /// - "SUSPENDED" : The course has been suspended. You cannot modify the
  /// course, and only the
  /// user identified by the `owner_id` can view the course.
  /// A course may be placed in this state if it potentially violates the
  /// Terms of Service.
  core.String courseState;

  /// Creation time of the course.
  /// Specifying this field in a course update mask results in an error.
  ///
  /// Read-only.
  core.String creationTime;

  /// Optional description.
  /// For example, "We'll be learning about the structure of living
  /// creatures from a combination of textbooks, guest lectures, and lab work.
  /// Expect to be excited!"
  /// If set, this field must be a valid UTF-8 string and no longer than 30,000
  /// characters.
  core.String description;

  /// Optional heading for the description.
  /// For example, "Welcome to 10th Grade Biology."
  /// If set, this field must be a valid UTF-8 string and no longer than 3600
  /// characters.
  core.String descriptionHeading;

  /// Enrollment code to use when joining this course.
  /// Specifying this field in a course update mask results in an error.
  ///
  /// Read-only.
  core.String enrollmentCode;

  /// Whether or not guardian notifications are enabled for this course.
  ///
  /// Read-only.
  core.bool guardiansEnabled;

  /// Identifier for this course assigned by Classroom.
  ///
  /// When
  /// creating a course,
  /// you may optionally set this identifier to an
  /// alias string in the
  /// request to create a corresponding alias. The `id` is still assigned by
  /// Classroom and cannot be updated after the course is created.
  ///
  /// Specifying this field in a course update mask results in an error.
  core.String id;

  /// Name of the course.
  /// For example, "10th Grade Biology".
  /// The name is required. It must be between 1 and 750 characters and a valid
  /// UTF-8 string.
  core.String name;

  /// The identifier of the owner of a course.
  ///
  /// When specified as a parameter of a
  /// create course request, this
  /// field is required.
  /// The identifier can be one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  ///
  /// This must be set in a create request. Admins can also specify this field
  /// in a patch course request to
  /// transfer ownership. In other contexts, it is read-only.
  core.String ownerId;

  /// Optional room location.
  /// For example, "301".
  /// If set, this field must be a valid UTF-8 string and no longer than 650
  /// characters.
  core.String room;

  /// Section of the course.
  /// For example, "Period 2".
  /// If set, this field must be a valid UTF-8 string and no longer than 2800
  /// characters.
  core.String section;

  /// Information about a Drive Folder that is shared with all teachers of the
  /// course.
  ///
  /// This field will only be set for teachers of the course and domain
  /// administrators.
  ///
  /// Read-only.
  DriveFolder teacherFolder;

  /// The email address of a Google group containing all teachers of the course.
  /// This group does not accept email and can only be used for permissions.
  ///
  /// Read-only.
  core.String teacherGroupEmail;

  /// Time of the most recent update to this course.
  /// Specifying this field in a course update mask results in an error.
  ///
  /// Read-only.
  core.String updateTime;

  Course();

  Course.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("calendarId")) {
      calendarId = _json["calendarId"];
    }
    if (_json.containsKey("courseGroupEmail")) {
      courseGroupEmail = _json["courseGroupEmail"];
    }
    if (_json.containsKey("courseMaterialSets")) {
      courseMaterialSets = (_json["courseMaterialSets"] as core.List)
          .map<CourseMaterialSet>(
              (value) => new CourseMaterialSet.fromJson(value))
          .toList();
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
    if (_json.containsKey("guardiansEnabled")) {
      guardiansEnabled = _json["guardiansEnabled"];
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
    if (_json.containsKey("teacherFolder")) {
      teacherFolder = new DriveFolder.fromJson(_json["teacherFolder"]);
    }
    if (_json.containsKey("teacherGroupEmail")) {
      teacherGroupEmail = _json["teacherGroupEmail"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (calendarId != null) {
      _json["calendarId"] = calendarId;
    }
    if (courseGroupEmail != null) {
      _json["courseGroupEmail"] = courseGroupEmail;
    }
    if (courseMaterialSets != null) {
      _json["courseMaterialSets"] =
          courseMaterialSets.map((value) => (value).toJson()).toList();
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
    if (guardiansEnabled != null) {
      _json["guardiansEnabled"] = guardiansEnabled;
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
    if (teacherFolder != null) {
      _json["teacherFolder"] = (teacherFolder).toJson();
    }
    if (teacherGroupEmail != null) {
      _json["teacherGroupEmail"] = teacherGroupEmail;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Alternative identifier for a course.
///
/// An alias uniquely identifies a course. It must be unique within one of the
/// following scopes:
///
/// * domain: A domain-scoped alias is visible to all users within the alias
/// creator's domain and can be created only by a domain admin. A domain-scoped
/// alias is often used when a course has an identifier external to Classroom.
///
/// * project: A project-scoped alias is visible to any request from an
/// application using the Developer Console project ID that created the alias
/// and can be created by any project. A project-scoped alias is often used when
/// an application has alternative identifiers. A random value can also be used
/// to avoid duplicate courses in the event of transmission failures, as
/// retrying
/// a request will return `ALREADY_EXISTS` if a previous one has succeeded.
class CourseAlias {
  /// Alias string. The format of the string indicates the desired alias
  /// scoping.
  ///
  /// * `d:<name>` indicates a domain-scoped alias.
  ///   Example: `d:math_101`
  /// * `p:<name>` indicates a project-scoped alias.
  ///   Example: `p:abc123`
  ///
  /// This field has a maximum length of 256 characters.
  core.String alias;

  CourseAlias();

  CourseAlias.fromJson(core.Map _json) {
    if (_json.containsKey("alias")) {
      alias = _json["alias"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alias != null) {
      _json["alias"] = alias;
    }
    return _json;
  }
}

/// A material attached to a course as part of a material set.
class CourseMaterial {
  /// Google Drive file attachment.
  DriveFile driveFile;

  /// Google Forms attachment.
  Form form;

  /// Link atatchment.
  Link link;

  /// Youtube video attachment.
  YouTubeVideo youTubeVideo;

  CourseMaterial();

  CourseMaterial.fromJson(core.Map _json) {
    if (_json.containsKey("driveFile")) {
      driveFile = new DriveFile.fromJson(_json["driveFile"]);
    }
    if (_json.containsKey("form")) {
      form = new Form.fromJson(_json["form"]);
    }
    if (_json.containsKey("link")) {
      link = new Link.fromJson(_json["link"]);
    }
    if (_json.containsKey("youTubeVideo")) {
      youTubeVideo = new YouTubeVideo.fromJson(_json["youTubeVideo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveFile != null) {
      _json["driveFile"] = (driveFile).toJson();
    }
    if (form != null) {
      _json["form"] = (form).toJson();
    }
    if (link != null) {
      _json["link"] = (link).toJson();
    }
    if (youTubeVideo != null) {
      _json["youTubeVideo"] = (youTubeVideo).toJson();
    }
    return _json;
  }
}

/// A set of materials that appears on the "About" page of the course.
/// These materials might include a syllabus, schedule, or other background
/// information relating to the course as a whole.
class CourseMaterialSet {
  /// Materials attached to this set.
  core.List<CourseMaterial> materials;

  /// Title for this set.
  core.String title;

  CourseMaterialSet();

  CourseMaterialSet.fromJson(core.Map _json) {
    if (_json.containsKey("materials")) {
      materials = (_json["materials"] as core.List)
          .map<CourseMaterial>((value) => new CourseMaterial.fromJson(value))
          .toList();
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (materials != null) {
      _json["materials"] = materials.map((value) => (value).toJson()).toList();
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
class CourseRosterChangesInfo {
  /// The `course_id` of the course to subscribe to roster changes for.
  core.String courseId;

  CourseRosterChangesInfo();

  CourseRosterChangesInfo.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    return _json;
  }
}

/// Course work created by a teacher for students of the course.
class CourseWork {
  /// Absolute link to this course work in the Classroom web UI.
  /// This is only populated if `state` is `PUBLISHED`.
  ///
  /// Read-only.
  core.String alternateLink;

  /// Assignee mode of the coursework.
  /// If unspecified, the default value is `ALL_STUDENTS`.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item.
  /// This is the default state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String assigneeMode;

  /// Assignment details.
  /// This is populated only when `work_type` is `ASSIGNMENT`.
  ///
  /// Read-only.
  Assignment assignment;

  /// Whether this course work item is associated with the Developer Console
  /// project making the request.
  ///
  /// See google.classroom.Work.CreateCourseWork for more
  /// details.
  ///
  /// Read-only.
  core.bool associatedWithDeveloper;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// Timestamp when this course work was created.
  ///
  /// Read-only.
  core.String creationTime;

  /// Identifier for the user that created the coursework.
  ///
  /// Read-only.
  core.String creatorUserId;

  /// Optional description of this course work.
  /// If set, the description must be a valid UTF-8 string containing no more
  /// than 30,000 characters.
  core.String description;

  /// Optional date, in UTC, that submissions for this course work are due.
  /// This must be specified if `due_time` is specified.
  Date dueDate;

  /// Optional time of day, in UTC, that submissions for this course work
  /// are due.
  /// This must be specified if `due_date` is specified.
  TimeOfDay dueTime;

  /// Classroom-assigned identifier of this course work, unique per course.
  ///
  /// Read-only.
  core.String id;

  /// Identifiers of students with access to the coursework.
  /// This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  /// If the `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students
  /// specified in this field will be assigned the coursework.
  IndividualStudentsOptions individualStudentsOptions;

  /// Additional materials.
  ///
  /// CourseWork must have no more than 20 material items.
  core.List<Material> materials;

  /// Maximum grade for this course work.
  /// If zero or unspecified, this assignment is considered ungraded.
  /// This must be a non-negative integer value.
  core.double maxPoints;

  /// Multiple choice question details.
  /// For read operations, this field is populated only when `work_type` is
  /// `MULTIPLE_CHOICE_QUESTION`.
  /// For write operations, this field must be specified when creating course
  /// work with a `work_type` of `MULTIPLE_CHOICE_QUESTION`, and it must not be
  /// set otherwise.
  MultipleChoiceQuestion multipleChoiceQuestion;

  /// Optional timestamp when this course work is scheduled to be published.
  core.String scheduledTime;

  /// Status of this course work.
  /// If unspecified, the default state is `DRAFT`.
  /// Possible string values are:
  /// - "COURSE_WORK_STATE_UNSPECIFIED" : No state specified. This is never
  /// returned.
  /// - "PUBLISHED" : Status for work that has been published.
  /// This is the default state.
  /// - "DRAFT" : Status for work that is not yet published.
  /// Work in this state is visible only to course teachers and domain
  /// administrators.
  /// - "DELETED" : Status for work that was published but is now deleted.
  /// Work in this state is visible only to course teachers and domain
  /// administrators.
  /// Work in this state is deleted after some time.
  core.String state;

  /// Setting to determine when students are allowed to modify submissions.
  /// If unspecified, the default value is `MODIFIABLE_UNTIL_TURNED_IN`.
  /// Possible string values are:
  /// - "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED" : No modification mode
  /// specified. This is never returned.
  /// - "MODIFIABLE_UNTIL_TURNED_IN" : Submissions can be modified before being
  /// turned in.
  /// - "MODIFIABLE" : Submissions can be modified at any time.
  core.String submissionModificationMode;

  /// Title of this course work.
  /// The title must be a valid UTF-8 string containing between 1 and 3000
  /// characters.
  core.String title;

  /// Identifier for the topic that this coursework is associated with.
  /// Must match an existing topic in the course.
  core.String topicId;

  /// Timestamp of the most recent change to this course work.
  ///
  /// Read-only.
  core.String updateTime;

  /// Type of this course work.
  ///
  /// The type is set when the course work is created and cannot be changed.
  /// Possible string values are:
  /// - "COURSE_WORK_TYPE_UNSPECIFIED" : No work type specified. This is never
  /// returned.
  /// - "ASSIGNMENT" : An assignment.
  /// - "SHORT_ANSWER_QUESTION" : A short answer question.
  /// - "MULTIPLE_CHOICE_QUESTION" : A multiple-choice question.
  core.String workType;

  CourseWork();

  CourseWork.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("assigneeMode")) {
      assigneeMode = _json["assigneeMode"];
    }
    if (_json.containsKey("assignment")) {
      assignment = new Assignment.fromJson(_json["assignment"]);
    }
    if (_json.containsKey("associatedWithDeveloper")) {
      associatedWithDeveloper = _json["associatedWithDeveloper"];
    }
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("creatorUserId")) {
      creatorUserId = _json["creatorUserId"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("dueDate")) {
      dueDate = new Date.fromJson(_json["dueDate"]);
    }
    if (_json.containsKey("dueTime")) {
      dueTime = new TimeOfDay.fromJson(_json["dueTime"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("individualStudentsOptions")) {
      individualStudentsOptions = new IndividualStudentsOptions.fromJson(
          _json["individualStudentsOptions"]);
    }
    if (_json.containsKey("materials")) {
      materials = (_json["materials"] as core.List)
          .map<Material>((value) => new Material.fromJson(value))
          .toList();
    }
    if (_json.containsKey("maxPoints")) {
      maxPoints = _json["maxPoints"].toDouble();
    }
    if (_json.containsKey("multipleChoiceQuestion")) {
      multipleChoiceQuestion =
          new MultipleChoiceQuestion.fromJson(_json["multipleChoiceQuestion"]);
    }
    if (_json.containsKey("scheduledTime")) {
      scheduledTime = _json["scheduledTime"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submissionModificationMode")) {
      submissionModificationMode = _json["submissionModificationMode"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("topicId")) {
      topicId = _json["topicId"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("workType")) {
      workType = _json["workType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (assigneeMode != null) {
      _json["assigneeMode"] = assigneeMode;
    }
    if (assignment != null) {
      _json["assignment"] = (assignment).toJson();
    }
    if (associatedWithDeveloper != null) {
      _json["associatedWithDeveloper"] = associatedWithDeveloper;
    }
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (creatorUserId != null) {
      _json["creatorUserId"] = creatorUserId;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (dueDate != null) {
      _json["dueDate"] = (dueDate).toJson();
    }
    if (dueTime != null) {
      _json["dueTime"] = (dueTime).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (individualStudentsOptions != null) {
      _json["individualStudentsOptions"] = (individualStudentsOptions).toJson();
    }
    if (materials != null) {
      _json["materials"] = materials.map((value) => (value).toJson()).toList();
    }
    if (maxPoints != null) {
      _json["maxPoints"] = maxPoints;
    }
    if (multipleChoiceQuestion != null) {
      _json["multipleChoiceQuestion"] = (multipleChoiceQuestion).toJson();
    }
    if (scheduledTime != null) {
      _json["scheduledTime"] = scheduledTime;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submissionModificationMode != null) {
      _json["submissionModificationMode"] = submissionModificationMode;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (topicId != null) {
      _json["topicId"] = topicId;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (workType != null) {
      _json["workType"] = workType;
    }
    return _json;
  }
}

/// Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
class CourseWorkChangesInfo {
  /// The `course_id` of the course to subscribe to work changes for.
  core.String courseId;

  CourseWorkChangesInfo();

  CourseWorkChangesInfo.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day
/// and time zone are either specified elsewhere or are not significant. The
/// date
/// is relative to the Proleptic Gregorian Calendar. This can represent:
///
/// * A full date, with non-zero year, month and day values
/// * A month and day value, with a zero year, e.g. an anniversary
/// * A year on its own, with zero month and day values
/// * A year and month value, with a zero day, e.g. a credit card expiration
/// date
///
/// Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without
  /// a year.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Representation of a Google Drive file.
class DriveFile {
  /// URL that can be used to access the Drive item.
  ///
  /// Read-only.
  core.String alternateLink;

  /// Drive API resource ID.
  core.String id;

  /// URL of a thumbnail image of the Drive item.
  ///
  /// Read-only.
  core.String thumbnailUrl;

  /// Title of the Drive item.
  ///
  /// Read-only.
  core.String title;

  DriveFile();

  DriveFile.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("thumbnailUrl")) {
      thumbnailUrl = _json["thumbnailUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (thumbnailUrl != null) {
      _json["thumbnailUrl"] = thumbnailUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Representation of a Google Drive folder.
class DriveFolder {
  /// URL that can be used to access the Drive folder.
  ///
  /// Read-only.
  core.String alternateLink;

  /// Drive API resource ID.
  core.String id;

  /// Title of the Drive folder.
  ///
  /// Read-only.
  core.String title;

  DriveFolder();

  DriveFolder.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// A class of notifications that an application can register to receive.
/// For example: "all roster changes for a domain".
class Feed {
  /// Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
  /// This field must be specified if `feed_type` is `COURSE_ROSTER_CHANGES`.
  CourseRosterChangesInfo courseRosterChangesInfo;

  /// Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
  /// This field must be specified if `feed_type` is `COURSE_WORK_CHANGES`.
  CourseWorkChangesInfo courseWorkChangesInfo;

  /// The type of feed.
  /// Possible string values are:
  /// - "FEED_TYPE_UNSPECIFIED" : Should never be returned or provided.
  /// - "DOMAIN_ROSTER_CHANGES" : All roster changes for a particular domain.
  ///
  /// Notifications will be generated whenever a user joins or leaves a course.
  ///
  /// No notifications will be generated when an invitation is created or
  /// deleted, but notifications will be generated when a user joins a course
  /// by accepting an invitation.
  /// - "COURSE_ROSTER_CHANGES" : All roster changes for a particular course.
  ///
  /// Notifications will be generated whenever a user joins or leaves a course.
  ///
  /// No notifications will be generated when an invitation is created or
  /// deleted, but notifications will be generated when a user joins a course
  /// by accepting an invitation.
  /// - "COURSE_WORK_CHANGES" : All course work activity for a particular
  /// course.
  ///
  /// Notifications will be generated when a CourseWork or
  /// StudentSubmission object is created or modified. No notification will be
  /// generated when a StudentSubmission object is created in connection with
  /// the creation or modification of its parent CourseWork object (but a
  /// notification will be generated for that CourseWork object's creation or
  /// modification).
  core.String feedType;

  Feed();

  Feed.fromJson(core.Map _json) {
    if (_json.containsKey("courseRosterChangesInfo")) {
      courseRosterChangesInfo = new CourseRosterChangesInfo.fromJson(
          _json["courseRosterChangesInfo"]);
    }
    if (_json.containsKey("courseWorkChangesInfo")) {
      courseWorkChangesInfo =
          new CourseWorkChangesInfo.fromJson(_json["courseWorkChangesInfo"]);
    }
    if (_json.containsKey("feedType")) {
      feedType = _json["feedType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseRosterChangesInfo != null) {
      _json["courseRosterChangesInfo"] = (courseRosterChangesInfo).toJson();
    }
    if (courseWorkChangesInfo != null) {
      _json["courseWorkChangesInfo"] = (courseWorkChangesInfo).toJson();
    }
    if (feedType != null) {
      _json["feedType"] = feedType;
    }
    return _json;
  }
}

/// Google Forms item.
class Form {
  /// URL of the form.
  core.String formUrl;

  /// URL of the form responses document.
  /// Only set if respsonses have been recorded and only when the
  /// requesting user is an editor of the form.
  ///
  /// Read-only.
  core.String responseUrl;

  /// URL of a thumbnail image of the Form.
  ///
  /// Read-only.
  core.String thumbnailUrl;

  /// Title of the Form.
  ///
  /// Read-only.
  core.String title;

  Form();

  Form.fromJson(core.Map _json) {
    if (_json.containsKey("formUrl")) {
      formUrl = _json["formUrl"];
    }
    if (_json.containsKey("responseUrl")) {
      responseUrl = _json["responseUrl"];
    }
    if (_json.containsKey("thumbnailUrl")) {
      thumbnailUrl = _json["thumbnailUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (formUrl != null) {
      _json["formUrl"] = formUrl;
    }
    if (responseUrl != null) {
      _json["responseUrl"] = responseUrl;
    }
    if (thumbnailUrl != null) {
      _json["thumbnailUrl"] = thumbnailUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Global user permission description.
class GlobalPermission {
  /// Permission value.
  /// Possible string values are:
  /// - "PERMISSION_UNSPECIFIED" : No permission is specified. This is not
  /// returned and is not a
  /// valid value.
  /// - "CREATE_COURSE" : User is permitted to create a course.
  core.String permission;

  GlobalPermission();

  GlobalPermission.fromJson(core.Map _json) {
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (permission != null) {
      _json["permission"] = permission;
    }
    return _json;
  }
}

/// The history of each grade on this submission.
class GradeHistory {
  /// The teacher who made the grade change.
  core.String actorUserId;

  /// The type of grade change at this time in the submission grade history.
  /// Possible string values are:
  /// - "UNKNOWN_GRADE_CHANGE_TYPE" : No grade change type specified. This
  /// should never be returned.
  /// - "DRAFT_GRADE_POINTS_EARNED_CHANGE" : A change in the numerator of the
  /// draft grade.
  /// - "ASSIGNED_GRADE_POINTS_EARNED_CHANGE" : A change in the numerator of the
  /// assigned grade.
  /// - "MAX_POINTS_CHANGE" : A change in the denominator of the grade.
  core.String gradeChangeType;

  /// When the grade of the submission was changed.
  core.String gradeTimestamp;

  /// The denominator of the grade at this time in the submission grade
  /// history.
  core.double maxPoints;

  /// The numerator of the grade at this time in the submission grade history.
  core.double pointsEarned;

  GradeHistory();

  GradeHistory.fromJson(core.Map _json) {
    if (_json.containsKey("actorUserId")) {
      actorUserId = _json["actorUserId"];
    }
    if (_json.containsKey("gradeChangeType")) {
      gradeChangeType = _json["gradeChangeType"];
    }
    if (_json.containsKey("gradeTimestamp")) {
      gradeTimestamp = _json["gradeTimestamp"];
    }
    if (_json.containsKey("maxPoints")) {
      maxPoints = _json["maxPoints"].toDouble();
    }
    if (_json.containsKey("pointsEarned")) {
      pointsEarned = _json["pointsEarned"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actorUserId != null) {
      _json["actorUserId"] = actorUserId;
    }
    if (gradeChangeType != null) {
      _json["gradeChangeType"] = gradeChangeType;
    }
    if (gradeTimestamp != null) {
      _json["gradeTimestamp"] = gradeTimestamp;
    }
    if (maxPoints != null) {
      _json["maxPoints"] = maxPoints;
    }
    if (pointsEarned != null) {
      _json["pointsEarned"] = pointsEarned;
    }
    return _json;
  }
}

/// Association between a student and a guardian of that student. The guardian
/// may receive information about the student's course work.
class Guardian {
  /// Identifier for the guardian.
  core.String guardianId;

  /// User profile for the guardian.
  UserProfile guardianProfile;

  /// The email address to which the initial guardian invitation was sent.
  /// This field is only visible to domain administrators.
  core.String invitedEmailAddress;

  /// Identifier for the student to whom the guardian relationship applies.
  core.String studentId;

  Guardian();

  Guardian.fromJson(core.Map _json) {
    if (_json.containsKey("guardianId")) {
      guardianId = _json["guardianId"];
    }
    if (_json.containsKey("guardianProfile")) {
      guardianProfile = new UserProfile.fromJson(_json["guardianProfile"]);
    }
    if (_json.containsKey("invitedEmailAddress")) {
      invitedEmailAddress = _json["invitedEmailAddress"];
    }
    if (_json.containsKey("studentId")) {
      studentId = _json["studentId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (guardianId != null) {
      _json["guardianId"] = guardianId;
    }
    if (guardianProfile != null) {
      _json["guardianProfile"] = (guardianProfile).toJson();
    }
    if (invitedEmailAddress != null) {
      _json["invitedEmailAddress"] = invitedEmailAddress;
    }
    if (studentId != null) {
      _json["studentId"] = studentId;
    }
    return _json;
  }
}

/// An invitation to become the guardian of a specified user, sent to a
/// specified
/// email address.
class GuardianInvitation {
  /// The time that this invitation was created.
  ///
  /// Read-only.
  core.String creationTime;

  /// Unique identifier for this invitation.
  ///
  /// Read-only.
  core.String invitationId;

  /// Email address that the invitation was sent to.
  /// This field is only visible to domain administrators.
  core.String invitedEmailAddress;

  /// The state that this invitation is in.
  /// Possible string values are:
  /// - "GUARDIAN_INVITATION_STATE_UNSPECIFIED" : Should never be returned.
  /// - "PENDING" : The invitation is active and awaiting a response.
  /// - "COMPLETE" : The invitation is no longer active. It may have been
  /// accepted, declined,
  /// withdrawn or it may have expired.
  core.String state;

  /// ID of the student (in standard format)
  core.String studentId;

  GuardianInvitation();

  GuardianInvitation.fromJson(core.Map _json) {
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("invitationId")) {
      invitationId = _json["invitationId"];
    }
    if (_json.containsKey("invitedEmailAddress")) {
      invitedEmailAddress = _json["invitedEmailAddress"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("studentId")) {
      studentId = _json["studentId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (invitationId != null) {
      _json["invitationId"] = invitationId;
    }
    if (invitedEmailAddress != null) {
      _json["invitedEmailAddress"] = invitedEmailAddress;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (studentId != null) {
      _json["studentId"] = studentId;
    }
    return _json;
  }
}

/// Assignee details about a coursework/announcement.
/// This field is set if and only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
class IndividualStudentsOptions {
  /// Identifiers for the students that have access to the
  /// coursework/announcement.
  core.List<core.String> studentIds;

  IndividualStudentsOptions();

  IndividualStudentsOptions.fromJson(core.Map _json) {
    if (_json.containsKey("studentIds")) {
      studentIds = (_json["studentIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (studentIds != null) {
      _json["studentIds"] = studentIds;
    }
    return _json;
  }
}

/// An invitation to join a course.
class Invitation {
  /// Identifier of the course to invite the user to.
  core.String courseId;

  /// Identifier assigned by Classroom.
  ///
  /// Read-only.
  core.String id;

  /// Role to invite the user to have.
  /// Must not be `COURSE_ROLE_UNSPECIFIED`.
  /// Possible string values are:
  /// - "COURSE_ROLE_UNSPECIFIED" : No course role.
  /// - "STUDENT" : Student in the course.
  /// - "TEACHER" : Teacher of the course.
  /// - "OWNER" : Owner of the course.
  core.String role;

  /// Identifier of the invited user.
  ///
  /// When specified as a parameter of a request, this identifier can be set to
  /// one of the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// URL item.
class Link {
  /// URL of a thumbnail image of the target URL.
  ///
  /// Read-only.
  core.String thumbnailUrl;

  /// Title of the target of the URL.
  ///
  /// Read-only.
  core.String title;

  /// URL to link to.
  /// This must be a valid UTF-8 string containing between 1 and 2024
  /// characters.
  core.String url;

  Link();

  Link.fromJson(core.Map _json) {
    if (_json.containsKey("thumbnailUrl")) {
      thumbnailUrl = _json["thumbnailUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (thumbnailUrl != null) {
      _json["thumbnailUrl"] = thumbnailUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Response when listing course work.
class ListAnnouncementsResponse {
  /// Announcement items that match the request.
  core.List<Announcement> announcements;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListAnnouncementsResponse();

  ListAnnouncementsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("announcements")) {
      announcements = (_json["announcements"] as core.List)
          .map<Announcement>((value) => new Announcement.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (announcements != null) {
      _json["announcements"] =
          announcements.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing course aliases.
class ListCourseAliasesResponse {
  /// The course aliases.
  core.List<CourseAlias> aliases;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListCourseAliasesResponse();

  ListCourseAliasesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("aliases")) {
      aliases = (_json["aliases"] as core.List)
          .map<CourseAlias>((value) => new CourseAlias.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aliases != null) {
      _json["aliases"] = aliases.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing course work.
class ListCourseWorkResponse {
  /// Course work items that match the request.
  core.List<CourseWork> courseWork;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListCourseWorkResponse();

  ListCourseWorkResponse.fromJson(core.Map _json) {
    if (_json.containsKey("courseWork")) {
      courseWork = (_json["courseWork"] as core.List)
          .map<CourseWork>((value) => new CourseWork.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseWork != null) {
      _json["courseWork"] =
          courseWork.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing courses.
class ListCoursesResponse {
  /// Courses that match the list request.
  core.List<Course> courses;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListCoursesResponse();

  ListCoursesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("courses")) {
      courses = (_json["courses"] as core.List)
          .map<Course>((value) => new Course.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courses != null) {
      _json["courses"] = courses.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing guardian invitations.
class ListGuardianInvitationsResponse {
  /// Guardian invitations that matched the list request.
  core.List<GuardianInvitation> guardianInvitations;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListGuardianInvitationsResponse();

  ListGuardianInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("guardianInvitations")) {
      guardianInvitations = (_json["guardianInvitations"] as core.List)
          .map<GuardianInvitation>(
              (value) => new GuardianInvitation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (guardianInvitations != null) {
      _json["guardianInvitations"] =
          guardianInvitations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing guardians.
class ListGuardiansResponse {
  /// Guardians on this page of results that met the criteria specified in
  /// the request.
  core.List<Guardian> guardians;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListGuardiansResponse();

  ListGuardiansResponse.fromJson(core.Map _json) {
    if (_json.containsKey("guardians")) {
      guardians = (_json["guardians"] as core.List)
          .map<Guardian>((value) => new Guardian.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (guardians != null) {
      _json["guardians"] = guardians.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing invitations.
class ListInvitationsResponse {
  /// Invitations that match the list request.
  core.List<Invitation> invitations;

  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  ListInvitationsResponse();

  ListInvitationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("invitations")) {
      invitations = (_json["invitations"] as core.List)
          .map<Invitation>((value) => new Invitation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (invitations != null) {
      _json["invitations"] =
          invitations.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response when listing student submissions.
class ListStudentSubmissionsResponse {
  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  /// Student work that matches the request.
  core.List<StudentSubmission> studentSubmissions;

  ListStudentSubmissionsResponse();

  ListStudentSubmissionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("studentSubmissions")) {
      studentSubmissions = (_json["studentSubmissions"] as core.List)
          .map<StudentSubmission>(
              (value) => new StudentSubmission.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (studentSubmissions != null) {
      _json["studentSubmissions"] =
          studentSubmissions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response when listing students.
class ListStudentsResponse {
  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  /// Students who match the list request.
  core.List<Student> students;

  ListStudentsResponse();

  ListStudentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("students")) {
      students = (_json["students"] as core.List)
          .map<Student>((value) => new Student.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (students != null) {
      _json["students"] = students.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response when listing teachers.
class ListTeachersResponse {
  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  /// Teachers who match the list request.
  core.List<Teacher> teachers;

  ListTeachersResponse();

  ListTeachersResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("teachers")) {
      teachers = (_json["teachers"] as core.List)
          .map<Teacher>((value) => new Teacher.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (teachers != null) {
      _json["teachers"] = teachers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response when listing topics.
class ListTopicResponse {
  /// Token identifying the next page of results to return. If empty, no further
  /// results are available.
  core.String nextPageToken;

  /// Topic items that match the request.
  core.List<Topic> topic;

  ListTopicResponse();

  ListTopicResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("topic")) {
      topic = (_json["topic"] as core.List)
          .map<Topic>((value) => new Topic.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (topic != null) {
      _json["topic"] = topic.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Material attached to course work.
///
/// When creating attachments, setting the `form` field is not supported.
class Material {
  /// Google Drive file material.
  SharedDriveFile driveFile;

  /// Google Forms material.
  Form form;

  /// Link material. On creation, will be upgraded to a more appropriate type
  /// if possible, and this will be reflected in the response.
  Link link;

  /// YouTube video material.
  YouTubeVideo youtubeVideo;

  Material();

  Material.fromJson(core.Map _json) {
    if (_json.containsKey("driveFile")) {
      driveFile = new SharedDriveFile.fromJson(_json["driveFile"]);
    }
    if (_json.containsKey("form")) {
      form = new Form.fromJson(_json["form"]);
    }
    if (_json.containsKey("link")) {
      link = new Link.fromJson(_json["link"]);
    }
    if (_json.containsKey("youtubeVideo")) {
      youtubeVideo = new YouTubeVideo.fromJson(_json["youtubeVideo"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveFile != null) {
      _json["driveFile"] = (driveFile).toJson();
    }
    if (form != null) {
      _json["form"] = (form).toJson();
    }
    if (link != null) {
      _json["link"] = (link).toJson();
    }
    if (youtubeVideo != null) {
      _json["youtubeVideo"] = (youtubeVideo).toJson();
    }
    return _json;
  }
}

/// Request to modify assignee mode and options of an announcement.
class ModifyAnnouncementAssigneesRequest {
  /// Mode of the announcement describing whether it will be accessible by all
  /// students or specified individual students.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item.
  /// This is the default state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String assigneeMode;

  /// Set which students can view or cannot view the announcement.
  /// Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  ModifyIndividualStudentsOptions modifyIndividualStudentsOptions;

  ModifyAnnouncementAssigneesRequest();

  ModifyAnnouncementAssigneesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("assigneeMode")) {
      assigneeMode = _json["assigneeMode"];
    }
    if (_json.containsKey("modifyIndividualStudentsOptions")) {
      modifyIndividualStudentsOptions =
          new ModifyIndividualStudentsOptions.fromJson(
              _json["modifyIndividualStudentsOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assigneeMode != null) {
      _json["assigneeMode"] = assigneeMode;
    }
    if (modifyIndividualStudentsOptions != null) {
      _json["modifyIndividualStudentsOptions"] =
          (modifyIndividualStudentsOptions).toJson();
    }
    return _json;
  }
}

/// Request to modify the attachments of a student submission.
class ModifyAttachmentsRequest {
  /// Attachments to add.
  /// A student submission may not have more than 20 attachments.
  ///
  /// Form attachments are not supported.
  core.List<Attachment> addAttachments;

  ModifyAttachmentsRequest();

  ModifyAttachmentsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("addAttachments")) {
      addAttachments = (_json["addAttachments"] as core.List)
          .map<Attachment>((value) => new Attachment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addAttachments != null) {
      _json["addAttachments"] =
          addAttachments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Request to modify assignee mode and options of a coursework.
class ModifyCourseWorkAssigneesRequest {
  /// Mode of the coursework describing whether it will be assigned to all
  /// students or specified individual students.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item.
  /// This is the default state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String assigneeMode;

  /// Set which students are assigned or not assigned to the coursework.
  /// Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  ModifyIndividualStudentsOptions modifyIndividualStudentsOptions;

  ModifyCourseWorkAssigneesRequest();

  ModifyCourseWorkAssigneesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("assigneeMode")) {
      assigneeMode = _json["assigneeMode"];
    }
    if (_json.containsKey("modifyIndividualStudentsOptions")) {
      modifyIndividualStudentsOptions =
          new ModifyIndividualStudentsOptions.fromJson(
              _json["modifyIndividualStudentsOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assigneeMode != null) {
      _json["assigneeMode"] = assigneeMode;
    }
    if (modifyIndividualStudentsOptions != null) {
      _json["modifyIndividualStudentsOptions"] =
          (modifyIndividualStudentsOptions).toJson();
    }
    return _json;
  }
}

/// Contains fields to add or remove students from a course work or announcement
/// where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.
class ModifyIndividualStudentsOptions {
  /// Ids of students to be added as having access to this
  /// coursework/announcement.
  core.List<core.String> addStudentIds;

  /// Ids of students to be removed from having access to this
  /// coursework/announcement.
  core.List<core.String> removeStudentIds;

  ModifyIndividualStudentsOptions();

  ModifyIndividualStudentsOptions.fromJson(core.Map _json) {
    if (_json.containsKey("addStudentIds")) {
      addStudentIds = (_json["addStudentIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("removeStudentIds")) {
      removeStudentIds =
          (_json["removeStudentIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addStudentIds != null) {
      _json["addStudentIds"] = addStudentIds;
    }
    if (removeStudentIds != null) {
      _json["removeStudentIds"] = removeStudentIds;
    }
    return _json;
  }
}

/// Additional details for multiple-choice questions.
class MultipleChoiceQuestion {
  /// Possible choices.
  core.List<core.String> choices;

  MultipleChoiceQuestion();

  MultipleChoiceQuestion.fromJson(core.Map _json) {
    if (_json.containsKey("choices")) {
      choices = (_json["choices"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (choices != null) {
      _json["choices"] = choices;
    }
    return _json;
  }
}

/// Student work for a multiple-choice question.
class MultipleChoiceSubmission {
  /// Student's select choice.
  core.String answer;

  MultipleChoiceSubmission();

  MultipleChoiceSubmission.fromJson(core.Map _json) {
    if (_json.containsKey("answer")) {
      answer = _json["answer"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (answer != null) {
      _json["answer"] = answer;
    }
    return _json;
  }
}

/// Details of the user's name.
class Name {
  /// The user's last name.
  ///
  /// Read-only.
  core.String familyName;

  /// The user's full name formed by concatenating the first and last name
  /// values.
  ///
  /// Read-only.
  core.String fullName;

  /// The user's first name.
  ///
  /// Read-only.
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Request to reclaim a student submission.
class ReclaimStudentSubmissionRequest {
  ReclaimStudentSubmissionRequest();

  ReclaimStudentSubmissionRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// An instruction to Classroom to send notifications from the `feed` to the
/// provided destination.
class Registration {
  /// The Cloud Pub/Sub topic that notifications are to be sent to.
  CloudPubsubTopic cloudPubsubTopic;

  /// The time until which the `Registration` is effective.
  ///
  /// This is a read-only field assigned by the server.
  core.String expiryTime;

  /// Specification for the class of notifications that Classroom should deliver
  /// to the destination.
  Feed feed;

  /// A server-generated unique identifier for this `Registration`.
  ///
  /// Read-only.
  core.String registrationId;

  Registration();

  Registration.fromJson(core.Map _json) {
    if (_json.containsKey("cloudPubsubTopic")) {
      cloudPubsubTopic =
          new CloudPubsubTopic.fromJson(_json["cloudPubsubTopic"]);
    }
    if (_json.containsKey("expiryTime")) {
      expiryTime = _json["expiryTime"];
    }
    if (_json.containsKey("feed")) {
      feed = new Feed.fromJson(_json["feed"]);
    }
    if (_json.containsKey("registrationId")) {
      registrationId = _json["registrationId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudPubsubTopic != null) {
      _json["cloudPubsubTopic"] = (cloudPubsubTopic).toJson();
    }
    if (expiryTime != null) {
      _json["expiryTime"] = expiryTime;
    }
    if (feed != null) {
      _json["feed"] = (feed).toJson();
    }
    if (registrationId != null) {
      _json["registrationId"] = registrationId;
    }
    return _json;
  }
}

/// Request to return a student submission.
class ReturnStudentSubmissionRequest {
  ReturnStudentSubmissionRequest();

  ReturnStudentSubmissionRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Drive file that is used as material for course work.
class SharedDriveFile {
  /// Drive file details.
  DriveFile driveFile;

  /// Mechanism by which students access the Drive item.
  /// Possible string values are:
  /// - "UNKNOWN_SHARE_MODE" : No sharing mode specified. This should never be
  /// returned.
  /// - "VIEW" : Students can view the shared file.
  /// - "EDIT" : Students can edit the shared file.
  /// - "STUDENT_COPY" : Students have a personal copy of the shared file.
  core.String shareMode;

  SharedDriveFile();

  SharedDriveFile.fromJson(core.Map _json) {
    if (_json.containsKey("driveFile")) {
      driveFile = new DriveFile.fromJson(_json["driveFile"]);
    }
    if (_json.containsKey("shareMode")) {
      shareMode = _json["shareMode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveFile != null) {
      _json["driveFile"] = (driveFile).toJson();
    }
    if (shareMode != null) {
      _json["shareMode"] = shareMode;
    }
    return _json;
  }
}

/// Student work for a short answer question.
class ShortAnswerSubmission {
  /// Student response to a short-answer question.
  core.String answer;

  ShortAnswerSubmission();

  ShortAnswerSubmission.fromJson(core.Map _json) {
    if (_json.containsKey("answer")) {
      answer = _json["answer"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (answer != null) {
      _json["answer"] = answer;
    }
    return _json;
  }
}

/// The history of each state this submission has been in.
class StateHistory {
  /// The teacher or student who made the change
  core.String actorUserId;

  /// The workflow pipeline stage.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified. This should never be returned.
  /// - "CREATED" : The Submission has been created.
  /// - "TURNED_IN" : The student has turned in an assigned document, which may
  /// or may not be
  /// a template.
  /// - "RETURNED" : The teacher has returned the assigned document to the
  /// student.
  /// - "RECLAIMED_BY_STUDENT" : The student turned in the assigned document,
  /// and then chose to
  /// "unsubmit" the assignment, giving the student control again as the
  /// owner.
  /// - "STUDENT_EDITED_AFTER_TURN_IN" : The student edited their submission
  /// after turning it in. Currently,
  /// only used by Questions, when the student edits their answer.
  core.String state;

  /// When the submission entered this state.
  core.String stateTimestamp;

  StateHistory();

  StateHistory.fromJson(core.Map _json) {
    if (_json.containsKey("actorUserId")) {
      actorUserId = _json["actorUserId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateTimestamp")) {
      stateTimestamp = _json["stateTimestamp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actorUserId != null) {
      _json["actorUserId"] = actorUserId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateTimestamp != null) {
      _json["stateTimestamp"] = stateTimestamp;
    }
    return _json;
  }
}

/// Student in a course.
class Student {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// Global user information for the student.
  ///
  /// Read-only.
  UserProfile profile;

  /// Information about a Drive Folder for this student's work in this course.
  /// Only visible to the student and domain administrators.
  ///
  /// Read-only.
  DriveFolder studentWorkFolder;

  /// Identifier of the user.
  ///
  /// When specified as a parameter of a request, this identifier can be one of
  /// the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
  core.String userId;

  Student();

  Student.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("profile")) {
      profile = new UserProfile.fromJson(_json["profile"]);
    }
    if (_json.containsKey("studentWorkFolder")) {
      studentWorkFolder = new DriveFolder.fromJson(_json["studentWorkFolder"]);
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (profile != null) {
      _json["profile"] = (profile).toJson();
    }
    if (studentWorkFolder != null) {
      _json["studentWorkFolder"] = (studentWorkFolder).toJson();
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// Student submission for course work.
///
/// StudentSubmission items are generated when a CourseWork item is created.
///
/// StudentSubmissions that have never been accessed (i.e. with `state` = NEW)
/// may not have a creation time or update time.
class StudentSubmission {
  /// Absolute link to the submission in the Classroom web UI.
  ///
  /// Read-only.
  core.String alternateLink;

  /// Optional grade. If unset, no grade was set.
  /// This value must be non-negative. Decimal (i.e. non-integer) values are
  /// allowed, but will be rounded to two decimal places.
  ///
  /// This may be modified only by course teachers.
  core.double assignedGrade;

  /// Submission content when course_work_type is ASSIGNMENT.
  ///
  /// Students can modify this content using
  /// google.classroom.Work.ModifyAttachments.
  AssignmentSubmission assignmentSubmission;

  /// Whether this student submission is associated with the Developer Console
  /// project making the request.
  ///
  /// See google.classroom.Work.CreateCourseWork for more
  /// details.
  ///
  /// Read-only.
  core.bool associatedWithDeveloper;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// Identifier for the course work this corresponds to.
  ///
  /// Read-only.
  core.String courseWorkId;

  /// Type of course work this submission is for.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "COURSE_WORK_TYPE_UNSPECIFIED" : No work type specified. This is never
  /// returned.
  /// - "ASSIGNMENT" : An assignment.
  /// - "SHORT_ANSWER_QUESTION" : A short answer question.
  /// - "MULTIPLE_CHOICE_QUESTION" : A multiple-choice question.
  core.String courseWorkType;

  /// Creation time of this submission.
  /// This may be unset if the student has not accessed this item.
  ///
  /// Read-only.
  core.String creationTime;

  /// Optional pending grade. If unset, no grade was set.
  /// This value must be non-negative. Decimal (i.e. non-integer) values are
  /// allowed, but will be rounded to two decimal places.
  ///
  /// This is only visible to and modifiable by course teachers.
  core.double draftGrade;

  /// Classroom-assigned Identifier for the student submission.
  /// This is unique among submissions for the relevant course work.
  ///
  /// Read-only.
  core.String id;

  /// Whether this submission is late.
  ///
  /// Read-only.
  core.bool late;

  /// Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION.
  MultipleChoiceSubmission multipleChoiceSubmission;

  /// Submission content when course_work_type is SHORT_ANSWER_QUESTION.
  ShortAnswerSubmission shortAnswerSubmission;

  /// State of this submission.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "SUBMISSION_STATE_UNSPECIFIED" : No state specified. This should never
  /// be returned.
  /// - "NEW" : The student has never accessed this submission. Attachments are
  /// not
  /// returned and timestamps is not set.
  /// - "CREATED" : Has been created.
  /// - "TURNED_IN" : Has been turned in to the teacher.
  /// - "RETURNED" : Has been returned to the student.
  /// - "RECLAIMED_BY_STUDENT" : Student chose to "unsubmit" the assignment.
  core.String state;

  /// The history of the submission (includes state and grade histories).
  ///
  /// Read-only.
  core.List<SubmissionHistory> submissionHistory;

  /// Last update time of this submission.
  /// This may be unset if the student has not accessed this item.
  ///
  /// Read-only.
  core.String updateTime;

  /// Identifier for the student that owns this submission.
  ///
  /// Read-only.
  core.String userId;

  StudentSubmission();

  StudentSubmission.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("assignedGrade")) {
      assignedGrade = _json["assignedGrade"].toDouble();
    }
    if (_json.containsKey("assignmentSubmission")) {
      assignmentSubmission =
          new AssignmentSubmission.fromJson(_json["assignmentSubmission"]);
    }
    if (_json.containsKey("associatedWithDeveloper")) {
      associatedWithDeveloper = _json["associatedWithDeveloper"];
    }
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("courseWorkId")) {
      courseWorkId = _json["courseWorkId"];
    }
    if (_json.containsKey("courseWorkType")) {
      courseWorkType = _json["courseWorkType"];
    }
    if (_json.containsKey("creationTime")) {
      creationTime = _json["creationTime"];
    }
    if (_json.containsKey("draftGrade")) {
      draftGrade = _json["draftGrade"].toDouble();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("late")) {
      late = _json["late"];
    }
    if (_json.containsKey("multipleChoiceSubmission")) {
      multipleChoiceSubmission = new MultipleChoiceSubmission.fromJson(
          _json["multipleChoiceSubmission"]);
    }
    if (_json.containsKey("shortAnswerSubmission")) {
      shortAnswerSubmission =
          new ShortAnswerSubmission.fromJson(_json["shortAnswerSubmission"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("submissionHistory")) {
      submissionHistory = (_json["submissionHistory"] as core.List)
          .map<SubmissionHistory>(
              (value) => new SubmissionHistory.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (assignedGrade != null) {
      _json["assignedGrade"] = assignedGrade;
    }
    if (assignmentSubmission != null) {
      _json["assignmentSubmission"] = (assignmentSubmission).toJson();
    }
    if (associatedWithDeveloper != null) {
      _json["associatedWithDeveloper"] = associatedWithDeveloper;
    }
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (courseWorkId != null) {
      _json["courseWorkId"] = courseWorkId;
    }
    if (courseWorkType != null) {
      _json["courseWorkType"] = courseWorkType;
    }
    if (creationTime != null) {
      _json["creationTime"] = creationTime;
    }
    if (draftGrade != null) {
      _json["draftGrade"] = draftGrade;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (late != null) {
      _json["late"] = late;
    }
    if (multipleChoiceSubmission != null) {
      _json["multipleChoiceSubmission"] = (multipleChoiceSubmission).toJson();
    }
    if (shortAnswerSubmission != null) {
      _json["shortAnswerSubmission"] = (shortAnswerSubmission).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (submissionHistory != null) {
      _json["submissionHistory"] =
          submissionHistory.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    return _json;
  }
}

/// The history of the submission. This currently includes state and grade
/// histories.
class SubmissionHistory {
  /// The grade history information of the submission, if present.
  GradeHistory gradeHistory;

  /// The state history information of the submission, if present.
  StateHistory stateHistory;

  SubmissionHistory();

  SubmissionHistory.fromJson(core.Map _json) {
    if (_json.containsKey("gradeHistory")) {
      gradeHistory = new GradeHistory.fromJson(_json["gradeHistory"]);
    }
    if (_json.containsKey("stateHistory")) {
      stateHistory = new StateHistory.fromJson(_json["stateHistory"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gradeHistory != null) {
      _json["gradeHistory"] = (gradeHistory).toJson();
    }
    if (stateHistory != null) {
      _json["stateHistory"] = (stateHistory).toJson();
    }
    return _json;
  }
}

/// Teacher of a course.
class Teacher {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// Global user information for the teacher.
  ///
  /// Read-only.
  UserProfile profile;

  /// Identifier of the user.
  ///
  /// When specified as a parameter of a request, this identifier can be one of
  /// the following:
  ///
  /// * the numeric identifier for the user
  /// * the email address of the user
  /// * the string literal `"me"`, indicating the requesting user
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

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// Represents a time of day. The date and time zone are either not significant
/// or are specified elsewhere. An API may choose to allow leap seconds. Related
/// types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
  /// to allow the value "24:00:00" for scenarios like business closing time.
  core.int hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  core.int nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may
  /// allow the value 60 if it allows leap-seconds.
  core.int seconds;

  TimeOfDay();

  TimeOfDay.fromJson(core.Map _json) {
    if (_json.containsKey("hours")) {
      hours = _json["hours"];
    }
    if (_json.containsKey("minutes")) {
      minutes = _json["minutes"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("seconds")) {
      seconds = _json["seconds"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hours != null) {
      _json["hours"] = hours;
    }
    if (minutes != null) {
      _json["minutes"] = minutes;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (seconds != null) {
      _json["seconds"] = seconds;
    }
    return _json;
  }
}

/// Topic created by a teacher for the course
class Topic {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String courseId;

  /// The name of the topic, generated by the user.
  /// Leading and trailing whitespaces, if any, will be trimmed. Also, multiple
  /// consecutive whitespaces will be collapsed into one inside the name. The
  /// result must be a non-empty string. Topic names are case sensitive, and
  /// must
  /// be no longer than 100 characters.
  core.String name;

  /// Unique identifier for the topic.
  ///
  /// Read-only.
  core.String topicId;

  /// The time the topic was last updated by the system.
  ///
  /// Read-only.
  core.String updateTime;

  Topic();

  Topic.fromJson(core.Map _json) {
    if (_json.containsKey("courseId")) {
      courseId = _json["courseId"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("topicId")) {
      topicId = _json["topicId"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (courseId != null) {
      _json["courseId"] = courseId;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (topicId != null) {
      _json["topicId"] = topicId;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Request to turn in a student submission.
class TurnInStudentSubmissionRequest {
  TurnInStudentSubmissionRequest();

  TurnInStudentSubmissionRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Global information for a user.
class UserProfile {
  /// Email address of the user.
  ///
  /// Read-only.
  core.String emailAddress;

  /// Identifier of the user.
  ///
  /// Read-only.
  core.String id;

  /// Name of the user.
  ///
  /// Read-only.
  Name name;

  /// Global permissions of the user.
  ///
  /// Read-only.
  core.List<GlobalPermission> permissions;

  /// URL of user's profile photo.
  ///
  /// Read-only.
  core.String photoUrl;

  /// Represents whether a G Suite for Education user's domain administrator has
  /// explicitly verified them as being a teacher. If the user is not a member
  /// of
  /// a G Suite for Education domain, than this field will always be false.
  ///
  /// Read-only
  core.bool verifiedTeacher;

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
      permissions = (_json["permissions"] as core.List)
          .map<GlobalPermission>(
              (value) => new GlobalPermission.fromJson(value))
          .toList();
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
    if (_json.containsKey("verifiedTeacher")) {
      verifiedTeacher = _json["verifiedTeacher"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
      _json["permissions"] =
          permissions.map((value) => (value).toJson()).toList();
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
    }
    if (verifiedTeacher != null) {
      _json["verifiedTeacher"] = verifiedTeacher;
    }
    return _json;
  }
}

/// YouTube video item.
class YouTubeVideo {
  /// URL that can be used to view the YouTube video.
  ///
  /// Read-only.
  core.String alternateLink;

  /// YouTube API resource ID.
  core.String id;

  /// URL of a thumbnail image of the YouTube video.
  ///
  /// Read-only.
  core.String thumbnailUrl;

  /// Title of the YouTube video.
  ///
  /// Read-only.
  core.String title;

  YouTubeVideo();

  YouTubeVideo.fromJson(core.Map _json) {
    if (_json.containsKey("alternateLink")) {
      alternateLink = _json["alternateLink"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("thumbnailUrl")) {
      thumbnailUrl = _json["thumbnailUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternateLink != null) {
      _json["alternateLink"] = alternateLink;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (thumbnailUrl != null) {
      _json["thumbnailUrl"] = thumbnailUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}
