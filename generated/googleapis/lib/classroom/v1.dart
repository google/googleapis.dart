// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Google Classroom API - v1
///
/// Manages classes, rosters, and invitations in Google Classroom.
///
/// For more information, see <https://developers.google.com/classroom/>
///
/// Create an instance of [ClassroomApi] to access these resources:
///
/// - [CoursesResource]
///   - [CoursesAliasesResource]
///   - [CoursesAnnouncementsResource]
///   - [CoursesCourseWorkResource]
///     - [CoursesCourseWorkStudentSubmissionsResource]
///   - [CoursesCourseWorkMaterialsResource]
///   - [CoursesStudentsResource]
///   - [CoursesTeachersResource]
///   - [CoursesTopicsResource]
/// - [InvitationsResource]
/// - [RegistrationsResource]
/// - [UserProfilesResource]
///   - [UserProfilesGuardianInvitationsResource]
///   - [UserProfilesGuardiansResource]
library classroom.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages classes, rosters, and invitations in Google Classroom.
class ClassroomApi {
  /// View and manage announcements in Google Classroom
  static const classroomAnnouncementsScope =
      'https://www.googleapis.com/auth/classroom.announcements';

  /// View announcements in Google Classroom
  static const classroomAnnouncementsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.announcements.readonly';

  /// See, edit, create, and permanently delete your Google Classroom classes
  static const classroomCoursesScope =
      'https://www.googleapis.com/auth/classroom.courses';

  /// View your Google Classroom classes
  static const classroomCoursesReadonlyScope =
      'https://www.googleapis.com/auth/classroom.courses.readonly';

  /// See, create and edit coursework items including assignments, questions,
  /// and grades
  static const classroomCourseworkMeScope =
      'https://www.googleapis.com/auth/classroom.coursework.me';

  /// View your course work and grades in Google Classroom
  static const classroomCourseworkMeReadonlyScope =
      'https://www.googleapis.com/auth/classroom.coursework.me.readonly';

  /// Manage course work and grades for students in the Google Classroom classes
  /// you teach and view the course work and grades for classes you administer
  static const classroomCourseworkStudentsScope =
      'https://www.googleapis.com/auth/classroom.coursework.students';

  /// View course work and grades for students in the Google Classroom classes
  /// you teach or administer
  static const classroomCourseworkStudentsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.coursework.students.readonly';

  /// See, edit, and create classwork materials in Google Classroom
  static const classroomCourseworkmaterialsScope =
      'https://www.googleapis.com/auth/classroom.courseworkmaterials';

  /// See all classwork materials for your Google Classroom classes
  static const classroomCourseworkmaterialsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.courseworkmaterials.readonly';

  /// View your Google Classroom guardians
  static const classroomGuardianlinksMeReadonlyScope =
      'https://www.googleapis.com/auth/classroom.guardianlinks.me.readonly';

  /// View and manage guardians for students in your Google Classroom classes
  static const classroomGuardianlinksStudentsScope =
      'https://www.googleapis.com/auth/classroom.guardianlinks.students';

  /// View guardians for students in your Google Classroom classes
  static const classroomGuardianlinksStudentsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.guardianlinks.students.readonly';

  /// View the email addresses of people in your classes
  static const classroomProfileEmailsScope =
      'https://www.googleapis.com/auth/classroom.profile.emails';

  /// View the profile photos of people in your classes
  static const classroomProfilePhotosScope =
      'https://www.googleapis.com/auth/classroom.profile.photos';

  /// Receive notifications about your Google Classroom data
  static const classroomPushNotificationsScope =
      'https://www.googleapis.com/auth/classroom.push-notifications';

  /// Manage your Google Classroom class rosters
  static const classroomRostersScope =
      'https://www.googleapis.com/auth/classroom.rosters';

  /// View your Google Classroom class rosters
  static const classroomRostersReadonlyScope =
      'https://www.googleapis.com/auth/classroom.rosters.readonly';

  /// View your course work and grades in Google Classroom
  static const classroomStudentSubmissionsMeReadonlyScope =
      'https://www.googleapis.com/auth/classroom.student-submissions.me.readonly';

  /// View course work and grades for students in the Google Classroom classes
  /// you teach or administer
  static const classroomStudentSubmissionsStudentsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.student-submissions.students.readonly';

  /// See, create, and edit topics in Google Classroom
  static const classroomTopicsScope =
      'https://www.googleapis.com/auth/classroom.topics';

  /// View topics in Google Classroom
  static const classroomTopicsReadonlyScope =
      'https://www.googleapis.com/auth/classroom.topics.readonly';

  final commons.ApiRequester _requester;

  CoursesResource get courses => CoursesResource(_requester);
  InvitationsResource get invitations => InvitationsResource(_requester);
  RegistrationsResource get registrations => RegistrationsResource(_requester);
  UserProfilesResource get userProfiles => UserProfilesResource(_requester);

  ClassroomApi(http.Client client,
      {core.String rootUrl = 'https://classroom.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class CoursesResource {
  final commons.ApiRequester _requester;

  CoursesAliasesResource get aliases => CoursesAliasesResource(_requester);
  CoursesAnnouncementsResource get announcements =>
      CoursesAnnouncementsResource(_requester);
  CoursesCourseWorkResource get courseWork =>
      CoursesCourseWorkResource(_requester);
  CoursesCourseWorkMaterialsResource get courseWorkMaterials =>
      CoursesCourseWorkMaterialsResource(_requester);
  CoursesStudentsResource get students => CoursesStudentsResource(_requester);
  CoursesTeachersResource get teachers => CoursesTeachersResource(_requester);
  CoursesTopicsResource get topics => CoursesTopicsResource(_requester);

  CoursesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a course.
  ///
  /// The user specified in `ownerId` is the owner of the created course and
  /// added as a teacher. A non-admin requesting user can only create a course
  /// with themselves as the owner. Domain admins can create courses owned by
  /// any user within their domain. This method returns the following error
  /// codes: * `PERMISSION_DENIED` if the requesting user is not permitted to
  /// create courses or for access errors. * `NOT_FOUND` if the primary teacher
  /// is not a valid user. * `FAILED_PRECONDITION` if the course owner's account
  /// is disabled or for the following request errors: *
  /// UserGroupsMembershipLimitReached * `ALREADY_EXISTS` if an alias was
  /// specified in the `id` and already exists.
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
  async.Future<Course> create(
    Course request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/courses';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Course.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to delete the requested course or for
  /// access errors. * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to delete. This identifier can be either
  /// the Classroom-assigned identifier or an alias.
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
  async.Future<Empty> delete(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or for
  /// access errors. * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to return. This identifier can be either
  /// the Classroom-assigned identifier or an alias.
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
  async.Future<Course> get(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Course.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of courses that the requesting user is permitted to view,
  /// restricted to those that match the request.
  ///
  /// Returned courses are ordered by creation time, with the most recently
  /// created coming first. This method returns the following error codes: *
  /// `PERMISSION_DENIED` for access errors. * `INVALID_ARGUMENT` if the query
  /// argument is malformed. * `NOT_FOUND` if any users specified in the query
  /// arguments do not exist.
  ///
  /// Request parameters:
  ///
  /// [courseStates] - Restricts returned courses to those in one of the
  /// specified states The default value is ACTIVE, ARCHIVED, PROVISIONED,
  /// DECLINED.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
  ///
  /// [studentId] - Restricts returned courses to those having a student with
  /// the specified identifier. The identifier can be one of the following: *
  /// the numeric identifier for the user * the email address of the user * the
  /// string literal `"me"`, indicating the requesting user
  ///
  /// [teacherId] - Restricts returned courses to those having a teacher with
  /// the specified identifier. The identifier can be one of the following: *
  /// the numeric identifier for the user * the email address of the user * the
  /// string literal `"me"`, indicating the requesting user
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
  async.Future<ListCoursesResponse> list({
    core.List<core.String>? courseStates,
    core.int? pageSize,
    core.String? pageToken,
    core.String? studentId,
    core.String? teacherId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (courseStates != null) 'courseStates': courseStates,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (studentId != null) 'studentId': [studentId],
      if (teacherId != null) 'teacherId': [teacherId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/courses';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCoursesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields in a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to modify the requested course or for
  /// access errors. * `NOT_FOUND` if no course exists with the requested ID. *
  /// `INVALID_ARGUMENT` if invalid fields are specified in the update mask or
  /// if no update mask is supplied. * `FAILED_PRECONDITION` for the following
  /// request errors: * CourseNotModifiable * InactiveCourseOwner
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to update. This identifier can be either
  /// the Classroom-assigned identifier or an alias.
  ///
  /// [updateMask] - Mask that identifies which fields on the course to update.
  /// This field is required to do an update. The update will fail if invalid
  /// fields are specified. The following fields are valid: * `name` * `section`
  /// * `descriptionHeading` * `description` * `room` * `courseState` *
  /// `ownerId` Note: patches to ownerId are treated as being effective
  /// immediately, but in practice it may take some time for the ownership
  /// transfer of all affected resources to complete. When set in a query
  /// parameter, this field should be specified as `updateMask=,,...`
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
  async.Future<Course> patch(
    Course request,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Course.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to modify the requested course or for
  /// access errors. * `NOT_FOUND` if no course exists with the requested ID. *
  /// `FAILED_PRECONDITION` for the following request errors: *
  /// CourseNotModifiable
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [id] - Identifier of the course to update. This identifier can be either
  /// the Classroom-assigned identifier or an alias.
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
  async.Future<Course> update(
    Course request,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Course.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesAliasesResource {
  final commons.ApiRequester _requester;

  CoursesAliasesResource(commons.ApiRequester client) : _requester = client;

  /// Creates an alias for a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to create the alias or for access
  /// errors. * `NOT_FOUND` if the course does not exist. * `ALREADY_EXISTS` if
  /// the alias already exists. * `FAILED_PRECONDITION` if the alias requested
  /// does not make sense for the requesting user or course (for example, if a
  /// user not in a domain attempts to access a domain-scoped alias).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course to alias. This identifier can be
  /// either the Classroom-assigned identifier or an alias.
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
  async.Future<CourseAlias> create(
    CourseAlias request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/aliases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseAlias.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an alias of a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to remove the alias or for access
  /// errors. * `NOT_FOUND` if the alias does not exist. * `FAILED_PRECONDITION`
  /// if the alias requested does not make sense for the requesting user or
  /// course (for example, if a user not in a domain attempts to delete a
  /// domain-scoped alias).
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course whose alias should be deleted. This
  /// identifier can be either the Classroom-assigned identifier or an alias.
  ///
  /// [alias] - Alias to delete. This may not be the Classroom-assigned
  /// identifier.
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String alias, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/aliases/' +
        commons.escapeVariable('$alias');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of aliases for a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the course or for access
  /// errors. * `NOT_FOUND` if the course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - The identifier of the course. This identifier can be either
  /// the Classroom-assigned identifier or an alias.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListCourseAliasesResponse> list(
    core.String courseId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/aliases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCourseAliasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesAnnouncementsResource {
  final commons.ApiRequester _requester;

  CoursesAnnouncementsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an announcement.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course,
  /// create announcements in the requested course, share a Drive attachment, or
  /// for access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course does not exist. *
  /// `FAILED_PRECONDITION` for the following request error: *
  /// AttachmentNotVisible
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Announcement> create(
    Announcement request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/announcements';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Announcement.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an announcement.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding announcement item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting developer
  /// project did not create the corresponding announcement, if the requesting
  /// user is not permitted to delete the requested course or for access errors.
  /// * `FAILED_PRECONDITION` if the requested announcement has already been
  /// deleted. * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the announcement to delete. This identifier is a
  /// Classroom-assigned identifier.
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/announcements/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns an announcement.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or
  /// announcement, or for access errors. * `INVALID_ARGUMENT` if the request is
  /// malformed. * `NOT_FOUND` if the requested course or announcement does not
  /// exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Announcement> get(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/announcements/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Announcement.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of announcements that the requester is permitted to view.
  ///
  /// Course students may only view `PUBLISHED` announcements. Course teachers
  /// and domain administrators may view all announcements. This method returns
  /// the following error codes: * `PERMISSION_DENIED` if the requesting user is
  /// not permitted to access the requested course or for access errors. *
  /// `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the
  /// requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [announcementStates] - Restriction on the `state` of announcements
  /// returned. If this argument is left unspecified, the default value is
  /// `PUBLISHED`.
  ///
  /// [orderBy] - Optional sort ordering for results. A comma-separated list of
  /// fields with an optional sort direction keyword. Supported field is
  /// `updateTime`. Supported direction keywords are `asc` and `desc`. If not
  /// specified, `updateTime desc` is the default behavior. Examples:
  /// `updateTime asc`, `updateTime`
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListAnnouncementsResponse> list(
    core.String courseId, {
    core.List<core.String>? announcementStates,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (announcementStates != null) 'announcementStates': announcementStates,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/announcements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAnnouncementsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies assignee mode and options of an announcement.
  ///
  /// Only a teacher of the course that contains the announcement may call this
  /// method. This method returns the following error codes: *
  /// `PERMISSION_DENIED` if the requesting user is not permitted to access the
  /// requested course or course work or for access errors. * `INVALID_ARGUMENT`
  /// if the request is malformed. * `NOT_FOUND` if the requested course or
  /// course work does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/announcements/' +
        commons.escapeVariable('$id') +
        ':modifyAssignees';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Announcement.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields of an announcement.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting developer project did not create the corresponding
  /// announcement or for access errors. * `INVALID_ARGUMENT` if the request is
  /// malformed. * `FAILED_PRECONDITION` if the requested announcement has
  /// already been deleted. * `NOT_FOUND` if the requested course or
  /// announcement does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the announcement.
  ///
  /// [updateMask] - Mask that identifies which fields on the announcement to
  /// update. This field is required to do an update. The update fails if
  /// invalid fields are specified. If a field supports empty values, it can be
  /// cleared by specifying it in the update mask and not in the Announcement
  /// object. If a field that does not support empty values is included in the
  /// update mask and not set in the Announcement object, an `INVALID_ARGUMENT`
  /// error is returned. The following fields may be specified by teachers: *
  /// `text` * `state` * `scheduled_time`
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
    Announcement request,
    core.String courseId,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/announcements/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Announcement.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesCourseWorkResource {
  final commons.ApiRequester _requester;

  CoursesCourseWorkStudentSubmissionsResource get studentSubmissions =>
      CoursesCourseWorkStudentSubmissionsResource(_requester);

  CoursesCourseWorkResource(commons.ApiRequester client) : _requester = client;

  /// Creates course work.
  ///
  /// The resulting course work (and corresponding student submissions) are
  /// associated with the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// make the request. Classroom API requests to modify course work and student
  /// submissions must be made with an OAuth client ID from the associated
  /// Developer Console project. This method returns the following error codes:
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the requested course, create course work in the requested course, share a
  /// Drive attachment, or for access errors. * `INVALID_ARGUMENT` if the
  /// request is malformed. * `NOT_FOUND` if the requested course does not
  /// exist. * `FAILED_PRECONDITION` for the following request error: *
  /// AttachmentNotVisible
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<CourseWork> create(
    CourseWork request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/courseWork';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseWork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a course work.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting developer
  /// project did not create the corresponding course work, if the requesting
  /// user is not permitted to delete the requested course or for access errors.
  /// * `FAILED_PRECONDITION` if the requested course work has already been
  /// deleted. * `NOT_FOUND` if no course exists with the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the course work to delete. This identifier is a
  /// Classroom-assigned identifier.
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns course work.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or
  /// course work, or for access errors. * `INVALID_ARGUMENT` if the request is
  /// malformed. * `NOT_FOUND` if the requested course or course work does not
  /// exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<CourseWork> get(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CourseWork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of course work that the requester is permitted to view.
  ///
  /// Course students may only view `PUBLISHED` course work. Course teachers and
  /// domain administrators may view all course work. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to access the requested course or for access errors. *
  /// `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the
  /// requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [courseWorkStates] - Restriction on the work status to return. Only
  /// courseWork that matches is returned. If unspecified, items with a work
  /// status of `PUBLISHED` is returned.
  ///
  /// [orderBy] - Optional sort ordering for results. A comma-separated list of
  /// fields with an optional sort direction keyword. Supported fields are
  /// `updateTime` and `dueDate`. Supported direction keywords are `asc` and
  /// `desc`. If not specified, `updateTime desc` is the default behavior.
  /// Examples: `dueDate asc,updateTime desc`, `updateTime,dueDate desc`
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListCourseWorkResponse> list(
    core.String courseId, {
    core.List<core.String>? courseWorkStates,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (courseWorkStates != null) 'courseWorkStates': courseWorkStates,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/courseWork';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCourseWorkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies assignee mode and options of a coursework.
  ///
  /// Only a teacher of the course that contains the coursework may call this
  /// method. This method returns the following error codes: *
  /// `PERMISSION_DENIED` if the requesting user is not permitted to access the
  /// requested course or course work or for access errors. * `INVALID_ARGUMENT`
  /// if the request is malformed. * `NOT_FOUND` if the requested course or
  /// course work does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$id') +
        ':modifyAssignees';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseWork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields of a course work.
  ///
  /// See google.classroom.v1.CourseWork for details of which fields may be
  /// updated and who may change them. This request must be made by the
  /// Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting developer
  /// project did not create the corresponding course work, if the user is not
  /// permitted to make the requested modification to the student submission, or
  /// for access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `FAILED_PRECONDITION` if the requested course work has already been
  /// deleted. * `NOT_FOUND` if the requested course, course work, or student
  /// submission does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the course work.
  ///
  /// [updateMask] - Mask that identifies which fields on the course work to
  /// update. This field is required to do an update. The update fails if
  /// invalid fields are specified. If a field supports empty values, it can be
  /// cleared by specifying it in the update mask and not in the CourseWork
  /// object. If a field that does not support empty values is included in the
  /// update mask and not set in the CourseWork object, an `INVALID_ARGUMENT`
  /// error is returned. The following fields may be specified by teachers: *
  /// `title` * `description` * `state` * `due_date` * `due_time` * `max_points`
  /// * `scheduled_time` * `submission_modification_mode` * `topic_id`
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
    CourseWork request,
    core.String courseId,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseWork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesCourseWorkStudentSubmissionsResource {
  final commons.ApiRequester _requester;

  CoursesCourseWorkStudentSubmissionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns a student submission.
  ///
  /// * `PERMISSION_DENIED` if the requesting user is not permitted to access
  /// the requested course, course work, or student submission or for access
  /// errors. * `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if
  /// the requested course, course work, or student submission does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
    core.String courseId,
    core.String courseWorkId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StudentSubmission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of student submissions that the requester is permitted to
  /// view, factoring in the OAuth scopes of the request.
  ///
  /// `-` may be specified as the `course_work_id` to include student
  /// submissions for multiple course work items. Course students may only view
  /// their own work. Course teachers and domain administrators may view all
  /// student submissions. This method returns the following error codes: *
  /// `PERMISSION_DENIED` if the requesting user is not permitted to access the
  /// requested course or course work, or for access errors. *
  /// `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the
  /// requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [courseWorkId] - Identifier of the student work to request. This may be
  /// set to the string literal `"-"` to request student work for all course
  /// work in the specified course.
  ///
  /// [late] - Requested lateness value. If specified, returned student
  /// submissions are restricted by the requested value. If unspecified,
  /// submissions are returned regardless of `late` value.
  /// Possible string values are:
  /// - "LATE_VALUES_UNSPECIFIED" : No restriction on submission late values
  /// specified.
  /// - "LATE_ONLY" : Return StudentSubmissions where late is true.
  /// - "NOT_LATE_ONLY" : Return StudentSubmissions where late is false.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
  ///
  /// [states] - Requested submission states. If specified, returned student
  /// submissions match one of the specified submission states.
  ///
  /// [userId] - Optional argument to restrict returned student work to those
  /// owned by the student with the specified identifier. The identifier can be
  /// one of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
    core.String courseId,
    core.String courseWorkId, {
    core.String? late,
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? states,
    core.String? userId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (late != null) 'late': [late],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (states != null) 'states': states,
      if (userId != null) 'userId': [userId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListStudentSubmissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies attachments of student submission.
  ///
  /// Attachments may only be added to student submissions belonging to course
  /// work objects with a `workType` of `ASSIGNMENT`. This request must be made
  /// by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to access the requested course or course work, if the user is
  /// not permitted to modify attachments on the requested student submission,
  /// or for access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id') +
        ':modifyAttachments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return StudentSubmission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields of a student submission.
  ///
  /// See google.classroom.v1.StudentSubmission for details of which fields may
  /// be updated and who may change them. This request must be made by the
  /// Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting developer
  /// project did not create the corresponding course work, if the user is not
  /// permitted to make the requested modification to the student submission, or
  /// for access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course, course work, or student submission
  /// does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [courseWorkId] - Identifier of the course work.
  ///
  /// [id] - Identifier of the student submission.
  ///
  /// [updateMask] - Mask that identifies which fields on the student submission
  /// to update. This field is required to do an update. The update fails if
  /// invalid fields are specified. The following fields may be specified by
  /// teachers: * `draft_grade` * `assigned_grade`
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
  async.Future<StudentSubmission> patch(
    StudentSubmission request,
    core.String courseId,
    core.String courseWorkId,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return StudentSubmission.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reclaims a student submission on behalf of the student that owns it.
  ///
  /// Reclaiming a student submission transfers ownership of attached Drive
  /// files to the student and updates the submission state. Only the student
  /// that owns the requested student submission may call this method, and only
  /// for a student submission that has been turned in. This request must be
  /// made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to access the requested course or course work, unsubmit the
  /// requested student submission, or for access errors. *
  /// `FAILED_PRECONDITION` if the student submission has not been turned in. *
  /// `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the
  /// requested course, course work, or student submission does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Empty> reclaim(
    ReclaimStudentSubmissionRequest request,
    core.String courseId,
    core.String courseWorkId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id') +
        ':reclaim';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a student submission.
  ///
  /// Returning a student submission transfers ownership of attached Drive files
  /// to the student and may also update the submission state. Unlike the
  /// Classroom application, returning a student submission does not set
  /// assignedGrade to the draftGrade value. Only a teacher of the course that
  /// contains the requested student submission may call this method. This
  /// request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to access the requested course or course work, return the
  /// requested student submission, or for access errors. * `INVALID_ARGUMENT`
  /// if the request is malformed. * `NOT_FOUND` if the requested course, course
  /// work, or student submission does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Empty> return_(
    ReturnStudentSubmissionRequest request,
    core.String courseId,
    core.String courseWorkId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id') +
        ':return';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Turns in a student submission.
  ///
  /// Turning in a student submission transfers ownership of attached Drive
  /// files to the teacher and may also update the submission state. This may
  /// only be called by the student that owns the specified student submission.
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work item. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to access the requested course or course work, turn in the
  /// requested student submission, or for access errors. * `INVALID_ARGUMENT`
  /// if the request is malformed. * `NOT_FOUND` if the requested course, course
  /// work, or student submission does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Empty> turnIn(
    TurnInStudentSubmissionRequest request,
    core.String courseId,
    core.String courseWorkId,
    core.String id, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWork/' +
        commons.escapeVariable('$courseWorkId') +
        '/studentSubmissions/' +
        commons.escapeVariable('$id') +
        ':turnIn';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesCourseWorkMaterialsResource {
  final commons.ApiRequester _requester;

  CoursesCourseWorkMaterialsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a course work material.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course,
  /// create course work material in the requested course, share a Drive
  /// attachment, or for access errors. * `INVALID_ARGUMENT` if the request is
  /// malformed or if more than 20 * materials are provided. * `NOT_FOUND` if
  /// the requested course does not exist. * `FAILED_PRECONDITION` for the
  /// following request error: * AttachmentNotVisible
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWorkMaterial].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWorkMaterial> create(
    CourseWorkMaterial request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWorkMaterials';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseWorkMaterial.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a course work material.
  ///
  /// This request must be made by the Developer Console project of the
  /// [OAuth client ID](https://support.google.com/cloud/answer/6158849) used to
  /// create the corresponding course work material item. This method returns
  /// the following error codes: * `PERMISSION_DENIED` if the requesting
  /// developer project did not create the corresponding course work material,
  /// if the requesting user is not permitted to delete the requested course or
  /// for access errors. * `FAILED_PRECONDITION` if the requested course work
  /// material has already been deleted. * `NOT_FOUND` if no course exists with
  /// the requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the course work material to delete. This identifier
  /// is a Classroom-assigned identifier.
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWorkMaterials/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a course work material.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or
  /// course work material, or for access errors. * `INVALID_ARGUMENT` if the
  /// request is malformed. * `NOT_FOUND` if the requested course or course work
  /// material does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the course work material.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWorkMaterial].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWorkMaterial> get(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWorkMaterials/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CourseWorkMaterial.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of course work material that the requester is permitted to
  /// view.
  ///
  /// Course students may only view `PUBLISHED` course work material. Course
  /// teachers and domain administrators may view all course work material. This
  /// method returns the following error codes: * `PERMISSION_DENIED` if the
  /// requesting user is not permitted to access the requested course or for
  /// access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [courseWorkMaterialStates] - Restriction on the work status to return.
  /// Only course work material that matches is returned. If unspecified, items
  /// with a work status of `PUBLISHED` is returned.
  ///
  /// [materialDriveId] - Optional filtering for course work material with at
  /// least one Drive material whose ID matches the provided string. If
  /// `material_link` is also specified, course work material must have
  /// materials matching both filters.
  ///
  /// [materialLink] - Optional filtering for course work material with at least
  /// one link material whose URL partially matches the provided string.
  ///
  /// [orderBy] - Optional sort ordering for results. A comma-separated list of
  /// fields with an optional sort direction keyword. Supported field is
  /// `updateTime`. Supported direction keywords are `asc` and `desc`. If not
  /// specified, `updateTime desc` is the default behavior. Examples:
  /// `updateTime asc`, `updateTime`
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCourseWorkMaterialResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCourseWorkMaterialResponse> list(
    core.String courseId, {
    core.List<core.String>? courseWorkMaterialStates,
    core.String? materialDriveId,
    core.String? materialLink,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (courseWorkMaterialStates != null)
        'courseWorkMaterialStates': courseWorkMaterialStates,
      if (materialDriveId != null) 'materialDriveId': [materialDriveId],
      if (materialLink != null) 'materialLink': [materialLink],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWorkMaterials';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCourseWorkMaterialResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields of a course work material.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting developer project for access errors. * `INVALID_ARGUMENT`
  /// if the request is malformed. * `FAILED_PRECONDITION` if the requested
  /// course work material has already been deleted. * `NOT_FOUND` if the
  /// requested course or course work material does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the course work material.
  ///
  /// [updateMask] - Mask that identifies which fields on the course work
  /// material to update. This field is required to do an update. The update
  /// fails if invalid fields are specified. If a field supports empty values,
  /// it can be cleared by specifying it in the update mask and not in the
  /// course work material object. If a field that does not support empty values
  /// is included in the update mask and not set in the course work material
  /// object, an `INVALID_ARGUMENT` error is returned. The following fields may
  /// be specified by teachers: * `title` * `description` * `state` *
  /// `scheduled_time` * `topic_id`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CourseWorkMaterial].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CourseWorkMaterial> patch(
    CourseWorkMaterial request,
    core.String courseId,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/courseWorkMaterials/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CourseWorkMaterial.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesStudentsResource {
  final commons.ApiRequester _requester;

  CoursesStudentsResource(commons.ApiRequester client) : _requester = client;

  /// Adds a user as a student of a course.
  ///
  /// Domain administrators are permitted to
  /// [directly add](https://developers.google.com/classroom/guides/manage-users)
  /// users within their domain as students to courses within their domain.
  /// Students are permitted to add themselves to a course using an enrollment
  /// code. This method returns the following error codes: * `PERMISSION_DENIED`
  /// if the requesting user is not permitted to create students in this course
  /// or for access errors. * `NOT_FOUND` if the requested course ID does not
  /// exist. * `FAILED_PRECONDITION` if the requested user's account is
  /// disabled, for the following request errors: * CourseMemberLimitReached *
  /// CourseNotModifiable * UserGroupsMembershipLimitReached *
  /// InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a student or
  /// teacher in the course.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course to create the student in. This
  /// identifier can be either the Classroom-assigned identifier or an alias.
  ///
  /// [enrollmentCode] - Enrollment code of the course to create the student in.
  /// This code is required if userId corresponds to the requesting user; it may
  /// be omitted if the requesting user has administrative permissions to create
  /// students for any user.
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
  async.Future<Student> create(
    Student request,
    core.String courseId, {
    core.String? enrollmentCode,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enrollmentCode != null) 'enrollmentCode': [enrollmentCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/students';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Student.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a student of a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to delete students of this course or
  /// for access errors. * `NOT_FOUND` if no student of this course has the
  /// requested ID or if the course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [userId] - Identifier of the student to delete. The identifier can be one
  /// of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/students/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a student of a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to view students of this course or
  /// for access errors. * `NOT_FOUND` if no student of this course has the
  /// requested ID or if the course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [userId] - Identifier of the student to return. The identifier can be one
  /// of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
  async.Future<Student> get(
    core.String courseId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/students/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Student.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of students of this course that the requester is permitted
  /// to view.
  ///
  /// This method returns the following error codes: * `NOT_FOUND` if the course
  /// does not exist. * `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [pageSize] - Maximum number of items to return. The default is 30 if
  /// unspecified or `0`. The server may return fewer than the specified number
  /// of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListStudentsResponse> list(
    core.String courseId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/students';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListStudentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesTeachersResource {
  final commons.ApiRequester _requester;

  CoursesTeachersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a teacher of a course.
  ///
  /// Domain administrators are permitted to
  /// [directly add](https://developers.google.com/classroom/guides/manage-users)
  /// users within their domain as teachers to courses within their domain.
  /// Non-admin users should send an Invitation instead. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to create teachers in this course or for access errors. *
  /// `NOT_FOUND` if the requested course ID does not exist. *
  /// `FAILED_PRECONDITION` if the requested user's account is disabled, for the
  /// following request errors: * CourseMemberLimitReached * CourseNotModifiable
  /// * CourseTeacherLimitReached * UserGroupsMembershipLimitReached *
  /// InactiveCourseOwner * `ALREADY_EXISTS` if the user is already a teacher or
  /// student in the course.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Teacher> create(
    Teacher request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/teachers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Teacher.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes the specified teacher from the specified course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to delete teachers of this course or
  /// for access errors. * `NOT_FOUND` if no teacher of this course has the
  /// requested ID or if the course does not exist. * `FAILED_PRECONDITION` if
  /// the requested ID belongs to the primary teacher of this course. *
  /// `FAILED_PRECONDITION` if the requested ID belongs to the owner of the
  /// course Drive folder. * `FAILED_PRECONDITION` if the course no longer has
  /// an active owner.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [userId] - Identifier of the teacher to delete. The identifier can be one
  /// of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/teachers/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a teacher of a course.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to view teachers of this course or
  /// for access errors. * `NOT_FOUND` if no teacher of this course has the
  /// requested ID or if the course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [userId] - Identifier of the teacher to return. The identifier can be one
  /// of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
  async.Future<Teacher> get(
    core.String courseId,
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/teachers/' +
        commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Teacher.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of teachers of this course that the requester is permitted
  /// to view.
  ///
  /// This method returns the following error codes: * `NOT_FOUND` if the course
  /// does not exist. * `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [pageSize] - Maximum number of items to return. The default is 30 if
  /// unspecified or `0`. The server may return fewer than the specified number
  /// of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListTeachersResponse> list(
    core.String courseId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/teachers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTeachersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CoursesTopicsResource {
  final commons.ApiRequester _requester;

  CoursesTopicsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a topic.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course,
  /// create a topic in the requested course, or for access errors. *
  /// `INVALID_ARGUMENT` if the request is malformed. * `NOT_FOUND` if the
  /// requested course does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Topic> create(
    Topic request,
    core.String courseId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/topics';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a topic.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not allowed to delete the requested topic or for
  /// access errors. * `FAILED_PRECONDITION` if the requested topic has already
  /// been deleted. * `NOT_FOUND` if no course or topic exists with the
  /// requested ID.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
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
  async.Future<Empty> delete(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/topics/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a topic.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or
  /// topic, or for access errors. * `INVALID_ARGUMENT` if the request is
  /// malformed. * `NOT_FOUND` if the requested course or topic does not exist.
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
  async.Future<Topic> get(
    core.String courseId,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/topics/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the list of topics that the requester is permitted to view.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access the requested course or for
  /// access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course does not exist.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListTopicResponse> list(
    core.String courseId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/courses/' + commons.escapeVariable('$courseId') + '/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates one or more fields of a topic.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting developer project did not create the corresponding topic or
  /// for access errors. * `INVALID_ARGUMENT` if the request is malformed. *
  /// `NOT_FOUND` if the requested course or topic does not exist
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Identifier of the course. This identifier can be either the
  /// Classroom-assigned identifier or an alias.
  ///
  /// [id] - Identifier of the topic.
  ///
  /// [updateMask] - Mask that identifies which fields on the topic to update.
  /// This field is required to do an update. The update fails if invalid fields
  /// are specified. If a field supports empty values, it can be cleared by
  /// specifying it in the update mask and not in the Topic object. If a field
  /// that does not support empty values is included in the update mask and not
  /// set in the Topic object, an `INVALID_ARGUMENT` error is returned. The
  /// following fields may be specified: * `name`
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
  async.Future<Topic> patch(
    Topic request,
    core.String courseId,
    core.String id, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/courses/' +
        commons.escapeVariable('$courseId') +
        '/topics/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class InvitationsResource {
  final commons.ApiRequester _requester;

  InvitationsResource(commons.ApiRequester client) : _requester = client;

  /// Accepts an invitation, removing it and adding the invited user to the
  /// teachers or students (as appropriate) of the specified course.
  ///
  /// Only the invited user may accept an invitation. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if the requesting user is not
  /// permitted to accept the requested invitation or for access errors. *
  /// `FAILED_PRECONDITION` for the following request errors: *
  /// CourseMemberLimitReached * CourseNotModifiable * CourseTeacherLimitReached
  /// * UserGroupsMembershipLimitReached * `NOT_FOUND` if no invitation exists
  /// with the requested ID.
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
  async.Future<Empty> accept(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/invitations/' + commons.escapeVariable('$id') + ':accept';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an invitation.
  ///
  /// Only one invitation for a user and course may exist at a time. Delete and
  /// re-create an invitation to make changes. This method returns the following
  /// error codes: * `PERMISSION_DENIED` if the requesting user is not permitted
  /// to create invitations for this course or for access errors. * `NOT_FOUND`
  /// if the course or the user does not exist. * `FAILED_PRECONDITION` if the
  /// requested user's account is disabled or if the user already has this role
  /// or a role with greater permissions. * `ALREADY_EXISTS` if an invitation
  /// for the specified user and course already exists.
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
  async.Future<Invitation> create(
    Invitation request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/invitations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Invitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an invitation.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to delete the requested invitation or
  /// for access errors. * `NOT_FOUND` if no invitation exists with the
  /// requested ID.
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
  async.Future<Empty> delete(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/invitations/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns an invitation.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to view the requested invitation or
  /// for access errors. * `NOT_FOUND` if no invitation exists with the
  /// requested ID.
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
  async.Future<Invitation> get(
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/invitations/' + commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Invitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of invitations that the requesting user is permitted to
  /// view, restricted to those that match the list request.
  ///
  /// *Note:* At least one of `user_id` or `course_id` must be supplied. Both
  /// fields can be supplied. This method returns the following error codes: *
  /// `PERMISSION_DENIED` for access errors.
  ///
  /// Request parameters:
  ///
  /// [courseId] - Restricts returned invitations to those for a course with the
  /// specified identifier.
  ///
  /// [pageSize] - Maximum number of items to return. The default is 500 if
  /// unspecified or `0`. The server may return fewer than the specified number
  /// of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
  ///
  /// [userId] - Restricts returned invitations to those for a specific user.
  /// The identifier can be one of the following: * the numeric identifier for
  /// the user * the email address of the user * the string literal `"me"`,
  /// indicating the requesting user
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
  async.Future<ListInvitationsResponse> list({
    core.String? courseId,
    core.int? pageSize,
    core.String? pageToken,
    core.String? userId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (courseId != null) 'courseId': [courseId],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (userId != null) 'userId': [userId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/invitations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInvitationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RegistrationsResource {
  final commons.ApiRequester _requester;

  RegistrationsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a `Registration`, causing Classroom to start sending notifications
  /// from the provided `feed` to the destination provided in
  /// `cloudPubSubTopic`.
  ///
  /// Returns the created `Registration`. Currently, this will be the same as
  /// the argument, but with server-assigned fields such as `expiry_time` and
  /// `id` filled in. Note that any value specified for the `expiry_time` or
  /// `id` fields will be ignored. While Classroom may validate the
  /// `cloudPubSubTopic` and return errors on a best effort basis, it is the
  /// caller's responsibility to ensure that it exists and that Classroom has
  /// permission to publish to it. This method may return the following error
  /// codes: * `PERMISSION_DENIED` if: * the authenticated user does not have
  /// permission to receive notifications from the requested field; or * the
  /// current user has not granted access to the current Cloud project with the
  /// appropriate scope for the requested feed. Note that domain-wide delegation
  /// of authority is not currently supported for this purpose. If the request
  /// has the appropriate scope, but no grant exists, a Request Errors is
  /// returned. * another access error is encountered. * `INVALID_ARGUMENT` if:
  /// * no `cloudPubsubTopic` is specified, or the specified `cloudPubsubTopic`
  /// is not valid; or * no `feed` is specified, or the specified `feed` is not
  /// valid. * `NOT_FOUND` if: * the specified `feed` cannot be located, or the
  /// requesting user does not have permission to determine whether or not it
  /// exists; or * the specified `cloudPubsubTopic` cannot be located, or
  /// Classroom has not been granted permission to publish to it.
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
  async.Future<Registration> create(
    Registration request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/registrations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Registration.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Empty> delete(
    core.String registrationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/registrations/' + commons.escapeVariable('$registrationId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserProfilesResource {
  final commons.ApiRequester _requester;

  UserProfilesGuardianInvitationsResource get guardianInvitations =>
      UserProfilesGuardianInvitationsResource(_requester);
  UserProfilesGuardiansResource get guardians =>
      UserProfilesGuardiansResource(_requester);

  UserProfilesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a user profile.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to access this user profile, if no
  /// profile exists with the requested ID, or for access errors.
  ///
  /// Request parameters:
  ///
  /// [userId] - Identifier of the profile to return. The identifier can be one
  /// of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
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
  async.Future<UserProfile> get(
    core.String userId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' + commons.escapeVariable('$userId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UserProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserProfilesGuardianInvitationsResource {
  final commons.ApiRequester _requester;

  UserProfilesGuardianInvitationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a guardian invitation, and sends an email to the guardian asking
  /// them to confirm that they are the student's guardian.
  ///
  /// Once the guardian accepts the invitation, their `state` will change to
  /// `COMPLETED` and they will start receiving guardian notifications. A
  /// `Guardian` resource will also be created to represent the active guardian.
  /// The request object must have the `student_id` and `invited_email_address`
  /// fields set. Failing to set these fields, or setting any other fields in
  /// the request, will result in an error. This method returns the following
  /// error codes: * `PERMISSION_DENIED` if the current user does not have
  /// permission to manage guardians, if the guardian in question has already
  /// rejected too many requests for that student, if guardians are not enabled
  /// for the domain in question, or for other access errors. *
  /// `RESOURCE_EXHAUSTED` if the student or guardian has exceeded the guardian
  /// link limit. * `INVALID_ARGUMENT` if the guardian email address is not
  /// valid (for example, if it is too long), or if the format of the student ID
  /// provided cannot be recognized (it is not an email address, nor a `user_id`
  /// from this API). This error will also be returned if read-only fields are
  /// set, or if the `state` field is set to to a value other than `PENDING`. *
  /// `NOT_FOUND` if the student ID provided is a valid student ID, but
  /// Classroom has no record of that student. * `ALREADY_EXISTS` if there is
  /// already a pending guardian invitation for the student and
  /// `invited_email_address` provided, or if the provided
  /// `invited_email_address` matches the Google account of an existing
  /// `Guardian` for this user.
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
    GuardianInvitation request,
    core.String studentId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardianInvitations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GuardianInvitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a specific guardian invitation.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if
  /// the requesting user is not permitted to view guardian invitations for the
  /// student identified by the `student_id`, if guardians are not enabled for
  /// the domain in question, or for other access errors. * `INVALID_ARGUMENT`
  /// if a `student_id` is specified, but its format cannot be recognized (it is
  /// not an email address, nor a `student_id` from the API, nor the literal
  /// string `me`). * `NOT_FOUND` if Classroom cannot find any record of the
  /// given student or `invitation_id`. May also be returned if the student
  /// exists, but the requesting user does not have access to see that student.
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
    core.String studentId,
    core.String invitationId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardianInvitations/' +
        commons.escapeVariable('$invitationId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GuardianInvitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of guardian invitations that the requesting user is
  /// permitted to view, filtered by the parameters provided.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if a
  /// `student_id` is specified, and the requesting user is not permitted to
  /// view guardian invitations for that student, if `"-"` is specified as the
  /// `student_id` and the user is not a domain administrator, if guardians are
  /// not enabled for the domain in question, or for other access errors. *
  /// `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  /// be recognized (it is not an email address, nor a `student_id` from the
  /// API, nor the literal string `me`). May also be returned if an invalid
  /// `page_token` or `state` is provided. * `NOT_FOUND` if a `student_id` is
  /// specified, and its format can be recognized, but Classroom has no record
  /// of that student.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The ID of the student whose guardian invitations are to be
  /// returned. The identifier can be one of the following: * the numeric
  /// identifier for the user * the email address of the user * the string
  /// literal `"me"`, indicating the requesting user * the string literal `"-"`,
  /// indicating that results should be returned for all students that the
  /// requesting user is permitted to view guardian invitations.
  ///
  /// [invitedEmailAddress] - If specified, only results with the specified
  /// `invited_email_address` are returned.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
  ///
  /// [states] - If specified, only results with the specified `state` values
  /// are returned. Otherwise, results with a `state` of `PENDING` are returned.
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
  async.Future<ListGuardianInvitationsResponse> list(
    core.String studentId, {
    core.String? invitedEmailAddress,
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? states,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (invitedEmailAddress != null)
        'invitedEmailAddress': [invitedEmailAddress],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (states != null) 'states': states,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardianInvitations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGuardianInvitationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies a guardian invitation.
  ///
  /// Currently, the only valid modification is to change the `state` from
  /// `PENDING` to `COMPLETE`. This has the effect of withdrawing the
  /// invitation. This method returns the following error codes: *
  /// `PERMISSION_DENIED` if the current user does not have permission to manage
  /// guardians, if guardians are not enabled for the domain in question or for
  /// other access errors. * `FAILED_PRECONDITION` if the guardian link is not
  /// in the `PENDING` state. * `INVALID_ARGUMENT` if the format of the student
  /// ID provided cannot be recognized (it is not an email address, nor a
  /// `user_id` from this API), or if the passed `GuardianInvitation` has a
  /// `state` other than `COMPLETE`, or if it modifies fields other than
  /// `state`. * `NOT_FOUND` if the student ID provided is a valid student ID,
  /// but Classroom has no record of that student, or if the `id` field does not
  /// refer to a guardian invitation known to Classroom.
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
  /// This field is required to do an update. The update fails if invalid fields
  /// are specified. The following fields are valid: * `state` When set in a
  /// query parameter, this field should be specified as `updateMask=,,...`
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
  async.Future<GuardianInvitation> patch(
    GuardianInvitation request,
    core.String studentId,
    core.String invitationId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardianInvitations/' +
        commons.escapeVariable('$invitationId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GuardianInvitation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class UserProfilesGuardiansResource {
  final commons.ApiRequester _requester;

  UserProfilesGuardiansResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a guardian.
  ///
  /// The guardian will no longer receive guardian notifications and the
  /// guardian will no longer be accessible via the API. This method returns the
  /// following error codes: * `PERMISSION_DENIED` if no user that matches the
  /// provided `student_id` is visible to the requesting user, if the requesting
  /// user is not permitted to manage guardians for the student identified by
  /// the `student_id`, if guardians are not enabled for the domain in question,
  /// or for other access errors. * `INVALID_ARGUMENT` if a `student_id` is
  /// specified, but its format cannot be recognized (it is not an email
  /// address, nor a `student_id` from the API). * `NOT_FOUND` if the requesting
  /// user is permitted to modify guardians for the requested `student_id`, but
  /// no `Guardian` record exists for that student with the provided
  /// `guardian_id`.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The student whose guardian is to be deleted. One of the
  /// following: * the numeric identifier for the user * the email address of
  /// the user * the string literal `"me"`, indicating the requesting user
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
  async.Future<Empty> delete(
    core.String studentId,
    core.String guardianId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardians/' +
        commons.escapeVariable('$guardianId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a specific guardian.
  ///
  /// This method returns the following error codes: * `PERMISSION_DENIED` if no
  /// user that matches the provided `student_id` is visible to the requesting
  /// user, if the requesting user is not permitted to view guardian information
  /// for the student identified by the `student_id`, if guardians are not
  /// enabled for the domain in question, or for other access errors. *
  /// `INVALID_ARGUMENT` if a `student_id` is specified, but its format cannot
  /// be recognized (it is not an email address, nor a `student_id` from the
  /// API, nor the literal string `me`). * `NOT_FOUND` if the requesting user is
  /// permitted to view guardians for the requested `student_id`, but no
  /// `Guardian` record exists for that student that matches the provided
  /// `guardian_id`.
  ///
  /// Request parameters:
  ///
  /// [studentId] - The student whose guardian is being requested. One of the
  /// following: * the numeric identifier for the user * the email address of
  /// the user * the string literal `"me"`, indicating the requesting user
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
  async.Future<Guardian> get(
    core.String studentId,
    core.String guardianId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardians/' +
        commons.escapeVariable('$guardianId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Guardian.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of guardians that the requesting user is permitted to view,
  /// restricted to those that match the request.
  ///
  /// To list guardians for any student that the requesting user may view
  /// guardians for, use the literal character `-` for the student ID. This
  /// method returns the following error codes: * `PERMISSION_DENIED` if a
  /// `student_id` is specified, and the requesting user is not permitted to
  /// view guardian information for that student, if `"-"` is specified as the
  /// `student_id` and the user is not a domain administrator, if guardians are
  /// not enabled for the domain in question, if the `invited_email_address`
  /// filter is set by a user who is not a domain administrator, or for other
  /// access errors. * `INVALID_ARGUMENT` if a `student_id` is specified, but
  /// its format cannot be recognized (it is not an email address, nor a
  /// `student_id` from the API, nor the literal string `me`). May also be
  /// returned if an invalid `page_token` is provided. * `NOT_FOUND` if a
  /// `student_id` is specified, and its format can be recognized, but Classroom
  /// has no record of that student.
  ///
  /// Request parameters:
  ///
  /// [studentId] - Filter results by the student who the guardian is linked to.
  /// The identifier can be one of the following: * the numeric identifier for
  /// the user * the email address of the user * the string literal `"me"`,
  /// indicating the requesting user * the string literal `"-"`, indicating that
  /// results should be returned for all students that the requesting user has
  /// access to view.
  ///
  /// [invitedEmailAddress] - Filter results by the email address that the
  /// original invitation was sent to, resulting in this guardian link. This
  /// filter can only be used by domain administrators.
  ///
  /// [pageSize] - Maximum number of items to return. Zero or unspecified
  /// indicates that the server may assign a maximum. The server may return
  /// fewer than the specified number of results.
  ///
  /// [pageToken] - nextPageToken value returned from a previous list call,
  /// indicating that the subsequent page of results should be returned. The
  /// list request must be otherwise identical to the one that resulted in this
  /// token.
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
  async.Future<ListGuardiansResponse> list(
    core.String studentId, {
    core.String? invitedEmailAddress,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (invitedEmailAddress != null)
        'invitedEmailAddress': [invitedEmailAddress],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/userProfiles/' +
        commons.escapeVariable('$studentId') +
        '/guardians';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGuardiansResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Announcement created by a teacher for students of the course
class Announcement {
  /// Absolute link to this announcement in the Classroom web UI.
  ///
  /// This is only populated if `state` is `PUBLISHED`. Read-only.
  core.String? alternateLink;

  /// Assignee mode of the announcement.
  ///
  /// If unspecified, the default value is `ALL_STUDENTS`.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item. This is the default
  /// state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String? assigneeMode;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Timestamp when this announcement was created.
  ///
  /// Read-only.
  core.String? creationTime;

  /// Identifier for the user that created the announcement.
  ///
  /// Read-only.
  core.String? creatorUserId;

  /// Classroom-assigned identifier of this announcement, unique per course.
  ///
  /// Read-only.
  core.String? id;

  /// Identifiers of students with access to the announcement.
  ///
  /// This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the
  /// `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in
  /// this field can see the announcement.
  IndividualStudentsOptions? individualStudentsOptions;

  /// Additional materials.
  ///
  /// Announcements must have no more than 20 material items.
  core.List<Material>? materials;

  /// Optional timestamp when this announcement is scheduled to be published.
  core.String? scheduledTime;

  /// Status of this announcement.
  ///
  /// If unspecified, the default state is `DRAFT`.
  /// Possible string values are:
  /// - "ANNOUNCEMENT_STATE_UNSPECIFIED" : No state specified. This is never
  /// returned.
  /// - "PUBLISHED" : Status for announcement that has been published. This is
  /// the default state.
  /// - "DRAFT" : Status for an announcement that is not yet published.
  /// Announcement in this state is visible only to course teachers and domain
  /// administrators.
  /// - "DELETED" : Status for announcement that was published but is now
  /// deleted. Announcement in this state is visible only to course teachers and
  /// domain administrators. Announcement in this state is deleted after some
  /// time.
  core.String? state;

  /// Description of this announcement.
  ///
  /// The text must be a valid UTF-8 string containing no more than 30,000
  /// characters.
  core.String? text;

  /// Timestamp of the most recent change to this announcement.
  ///
  /// Read-only.
  core.String? updateTime;

  Announcement({
    this.alternateLink,
    this.assigneeMode,
    this.courseId,
    this.creationTime,
    this.creatorUserId,
    this.id,
    this.individualStudentsOptions,
    this.materials,
    this.scheduledTime,
    this.state,
    this.text,
    this.updateTime,
  });

  Announcement.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          assigneeMode: json_.containsKey('assigneeMode')
              ? json_['assigneeMode'] as core.String
              : null,
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          creatorUserId: json_.containsKey('creatorUserId')
              ? json_['creatorUserId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          individualStudentsOptions:
              json_.containsKey('individualStudentsOptions')
                  ? IndividualStudentsOptions.fromJson(
                      json_['individualStudentsOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => Material.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          scheduledTime: json_.containsKey('scheduledTime')
              ? json_['scheduledTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (assigneeMode != null) 'assigneeMode': assigneeMode!,
        if (courseId != null) 'courseId': courseId!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (creatorUserId != null) 'creatorUserId': creatorUserId!,
        if (id != null) 'id': id!,
        if (individualStudentsOptions != null)
          'individualStudentsOptions': individualStudentsOptions!,
        if (materials != null) 'materials': materials!,
        if (scheduledTime != null) 'scheduledTime': scheduledTime!,
        if (state != null) 'state': state!,
        if (text != null) 'text': text!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Additional details for assignments.
class Assignment {
  /// Drive folder where attachments from student submissions are placed.
  ///
  /// This is only populated for course teachers and administrators.
  DriveFolder? studentWorkFolder;

  Assignment({
    this.studentWorkFolder,
  });

  Assignment.fromJson(core.Map json_)
      : this(
          studentWorkFolder: json_.containsKey('studentWorkFolder')
              ? DriveFolder.fromJson(json_['studentWorkFolder']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (studentWorkFolder != null) 'studentWorkFolder': studentWorkFolder!,
      };
}

/// Student work for an assignment.
class AssignmentSubmission {
  /// Attachments added by the student.
  ///
  /// Drive files that correspond to materials with a share mode of STUDENT_COPY
  /// may not exist yet if the student has not accessed the assignment in
  /// Classroom. Some attachment metadata is only populated if the requesting
  /// user has permission to access it. Identifier and alternate_link fields are
  /// always available, but others (for example, title) may not be.
  core.List<Attachment>? attachments;

  AssignmentSubmission({
    this.attachments,
  });

  AssignmentSubmission.fromJson(core.Map json_)
      : this(
          attachments: json_.containsKey('attachments')
              ? (json_['attachments'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachments != null) 'attachments': attachments!,
      };
}

/// Attachment added to student assignment work.
///
/// When creating attachments, setting the `form` field is not supported.
class Attachment {
  /// Google Drive file attachment.
  DriveFile? driveFile;

  /// Google Forms attachment.
  Form? form;

  /// Link attachment.
  Link? link;

  /// Youtube video attachment.
  YouTubeVideo? youTubeVideo;

  Attachment({
    this.driveFile,
    this.form,
    this.link,
    this.youTubeVideo,
  });

  Attachment.fromJson(core.Map json_)
      : this(
          driveFile: json_.containsKey('driveFile')
              ? DriveFile.fromJson(
                  json_['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          form: json_.containsKey('form')
              ? Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          youTubeVideo: json_.containsKey('youTubeVideo')
              ? YouTubeVideo.fromJson(
                  json_['youTubeVideo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (form != null) 'form': form!,
        if (link != null) 'link': link!,
        if (youTubeVideo != null) 'youTubeVideo': youTubeVideo!,
      };
}

/// A reference to a Cloud Pub/Sub topic.
///
/// To register for notifications, the owner of the topic must grant
/// `classroom-notifications@system.gserviceaccount.com` the
/// `projects.topics.publish` permission.
class CloudPubsubTopic {
  /// The `name` field of a Cloud Pub/Sub
  /// [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  core.String? topicName;

  CloudPubsubTopic({
    this.topicName,
  });

  CloudPubsubTopic.fromJson(core.Map json_)
      : this(
          topicName: json_.containsKey('topicName')
              ? json_['topicName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topicName != null) 'topicName': topicName!,
      };
}

/// A Course in Classroom.
class Course {
  /// Absolute link to this course in the Classroom web UI.
  ///
  /// Read-only.
  core.String? alternateLink;

  /// The Calendar ID for a calendar that all course members can see, to which
  /// Classroom adds events for course work and announcements in the course.
  ///
  /// Read-only.
  core.String? calendarId;

  /// The email address of a Google group containing all members of the course.
  ///
  /// This group does not accept email and can only be used for permissions.
  /// Read-only.
  core.String? courseGroupEmail;

  /// Sets of materials that appear on the "about" page of this course.
  ///
  /// Read-only.
  core.List<CourseMaterialSet>? courseMaterialSets;

  /// State of the course.
  ///
  /// If unspecified, the default state is `PROVISIONED`.
  /// Possible string values are:
  /// - "COURSE_STATE_UNSPECIFIED" : No course state. No returned Course message
  /// will use this value.
  /// - "ACTIVE" : The course is active.
  /// - "ARCHIVED" : The course has been archived. You cannot modify it except
  /// to change it to a different state.
  /// - "PROVISIONED" : The course has been created, but not yet activated. It
  /// is accessible by the primary teacher and domain administrators, who may
  /// modify it or change it to the `ACTIVE` or `DECLINED` states. A course may
  /// only be changed to `PROVISIONED` if it is in the `DECLINED` state.
  /// - "DECLINED" : The course has been created, but declined. It is accessible
  /// by the course owner and domain administrators, though it will not be
  /// displayed in the web UI. You cannot modify the course except to change it
  /// to the `PROVISIONED` state. A course may only be changed to `DECLINED` if
  /// it is in the `PROVISIONED` state.
  /// - "SUSPENDED" : The course has been suspended. You cannot modify the
  /// course, and only the user identified by the `owner_id` can view the
  /// course. A course may be placed in this state if it potentially violates
  /// the Terms of Service.
  core.String? courseState;

  /// Creation time of the course.
  ///
  /// Specifying this field in a course update mask results in an error.
  /// Read-only.
  core.String? creationTime;

  /// Optional description.
  ///
  /// For example, "We'll be learning about the structure of living creatures
  /// from a combination of textbooks, guest lectures, and lab work. Expect to
  /// be excited!" If set, this field must be a valid UTF-8 string and no longer
  /// than 30,000 characters.
  core.String? description;

  /// Optional heading for the description.
  ///
  /// For example, "Welcome to 10th Grade Biology." If set, this field must be a
  /// valid UTF-8 string and no longer than 3600 characters.
  core.String? descriptionHeading;

  /// Enrollment code to use when joining this course.
  ///
  /// Specifying this field in a course update mask results in an error.
  /// Read-only.
  core.String? enrollmentCode;

  /// The gradebook settings that specify how a student's overall grade for the
  /// course will be calculated and who it will be displayed to.
  ///
  /// Read-only
  GradebookSettings? gradebookSettings;

  /// Whether or not guardian notifications are enabled for this course.
  ///
  /// Read-only.
  core.bool? guardiansEnabled;

  /// Identifier for this course assigned by Classroom.
  ///
  /// When creating a course, you may optionally set this identifier to an alias
  /// string in the request to create a corresponding alias. The `id` is still
  /// assigned by Classroom and cannot be updated after the course is created.
  /// Specifying this field in a course update mask results in an error.
  core.String? id;

  /// Name of the course.
  ///
  /// For example, "10th Grade Biology". The name is required. It must be
  /// between 1 and 750 characters and a valid UTF-8 string.
  core.String? name;

  /// The identifier of the owner of a course.
  ///
  /// When specified as a parameter of a create course request, this field is
  /// required. The identifier can be one of the following: * the numeric
  /// identifier for the user * the email address of the user * the string
  /// literal `"me"`, indicating the requesting user This must be set in a
  /// create request. Admins can also specify this field in a patch course
  /// request to transfer ownership. In other contexts, it is read-only.
  core.String? ownerId;

  /// Optional room location.
  ///
  /// For example, "301". If set, this field must be a valid UTF-8 string and no
  /// longer than 650 characters.
  core.String? room;

  /// Section of the course.
  ///
  /// For example, "Period 2". If set, this field must be a valid UTF-8 string
  /// and no longer than 2800 characters.
  core.String? section;

  /// Information about a Drive Folder that is shared with all teachers of the
  /// course.
  ///
  /// This field will only be set for teachers of the course and domain
  /// administrators. Read-only.
  DriveFolder? teacherFolder;

  /// The email address of a Google group containing all teachers of the course.
  ///
  /// This group does not accept email and can only be used for permissions.
  /// Read-only.
  core.String? teacherGroupEmail;

  /// Time of the most recent update to this course.
  ///
  /// Specifying this field in a course update mask results in an error.
  /// Read-only.
  core.String? updateTime;

  Course({
    this.alternateLink,
    this.calendarId,
    this.courseGroupEmail,
    this.courseMaterialSets,
    this.courseState,
    this.creationTime,
    this.description,
    this.descriptionHeading,
    this.enrollmentCode,
    this.gradebookSettings,
    this.guardiansEnabled,
    this.id,
    this.name,
    this.ownerId,
    this.room,
    this.section,
    this.teacherFolder,
    this.teacherGroupEmail,
    this.updateTime,
  });

  Course.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          calendarId: json_.containsKey('calendarId')
              ? json_['calendarId'] as core.String
              : null,
          courseGroupEmail: json_.containsKey('courseGroupEmail')
              ? json_['courseGroupEmail'] as core.String
              : null,
          courseMaterialSets: json_.containsKey('courseMaterialSets')
              ? (json_['courseMaterialSets'] as core.List)
                  .map((value) => CourseMaterialSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          courseState: json_.containsKey('courseState')
              ? json_['courseState'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          descriptionHeading: json_.containsKey('descriptionHeading')
              ? json_['descriptionHeading'] as core.String
              : null,
          enrollmentCode: json_.containsKey('enrollmentCode')
              ? json_['enrollmentCode'] as core.String
              : null,
          gradebookSettings: json_.containsKey('gradebookSettings')
              ? GradebookSettings.fromJson(json_['gradebookSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          guardiansEnabled: json_.containsKey('guardiansEnabled')
              ? json_['guardiansEnabled'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ownerId: json_.containsKey('ownerId')
              ? json_['ownerId'] as core.String
              : null,
          room: json_.containsKey('room') ? json_['room'] as core.String : null,
          section: json_.containsKey('section')
              ? json_['section'] as core.String
              : null,
          teacherFolder: json_.containsKey('teacherFolder')
              ? DriveFolder.fromJson(
                  json_['teacherFolder'] as core.Map<core.String, core.dynamic>)
              : null,
          teacherGroupEmail: json_.containsKey('teacherGroupEmail')
              ? json_['teacherGroupEmail'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (calendarId != null) 'calendarId': calendarId!,
        if (courseGroupEmail != null) 'courseGroupEmail': courseGroupEmail!,
        if (courseMaterialSets != null)
          'courseMaterialSets': courseMaterialSets!,
        if (courseState != null) 'courseState': courseState!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (descriptionHeading != null)
          'descriptionHeading': descriptionHeading!,
        if (enrollmentCode != null) 'enrollmentCode': enrollmentCode!,
        if (gradebookSettings != null) 'gradebookSettings': gradebookSettings!,
        if (guardiansEnabled != null) 'guardiansEnabled': guardiansEnabled!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (ownerId != null) 'ownerId': ownerId!,
        if (room != null) 'room': room!,
        if (section != null) 'section': section!,
        if (teacherFolder != null) 'teacherFolder': teacherFolder!,
        if (teacherGroupEmail != null) 'teacherGroupEmail': teacherGroupEmail!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Alternative identifier for a course.
///
/// An alias uniquely identifies a course. It must be unique within one of the
/// following scopes: * domain: A domain-scoped alias is visible to all users
/// within the alias creator's domain and can be created only by a domain admin.
/// A domain-scoped alias is often used when a course has an identifier external
/// to Classroom. * project: A project-scoped alias is visible to any request
/// from an application using the Developer Console project ID that created the
/// alias and can be created by any project. A project-scoped alias is often
/// used when an application has alternative identifiers. A random value can
/// also be used to avoid duplicate courses in the event of transmission
/// failures, as retrying a request will return `ALREADY_EXISTS` if a previous
/// one has succeeded.
class CourseAlias {
  /// Alias string.
  ///
  /// The format of the string indicates the desired alias scoping. * `d:`
  /// indicates a domain-scoped alias. Example: `d:math_101` * `p:` indicates a
  /// project-scoped alias. Example: `p:abc123` This field has a maximum length
  /// of 256 characters.
  core.String? alias;

  CourseAlias({
    this.alias,
  });

  CourseAlias.fromJson(core.Map json_)
      : this(
          alias:
              json_.containsKey('alias') ? json_['alias'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
      };
}

/// A material attached to a course as part of a material set.
class CourseMaterial {
  /// Google Drive file attachment.
  DriveFile? driveFile;

  /// Google Forms attachment.
  Form? form;

  /// Link atatchment.
  Link? link;

  /// Youtube video attachment.
  YouTubeVideo? youTubeVideo;

  CourseMaterial({
    this.driveFile,
    this.form,
    this.link,
    this.youTubeVideo,
  });

  CourseMaterial.fromJson(core.Map json_)
      : this(
          driveFile: json_.containsKey('driveFile')
              ? DriveFile.fromJson(
                  json_['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          form: json_.containsKey('form')
              ? Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          youTubeVideo: json_.containsKey('youTubeVideo')
              ? YouTubeVideo.fromJson(
                  json_['youTubeVideo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (form != null) 'form': form!,
        if (link != null) 'link': link!,
        if (youTubeVideo != null) 'youTubeVideo': youTubeVideo!,
      };
}

/// A set of materials that appears on the "About" page of the course.
///
/// These materials might include a syllabus, schedule, or other background
/// information relating to the course as a whole.
class CourseMaterialSet {
  /// Materials attached to this set.
  core.List<CourseMaterial>? materials;

  /// Title for this set.
  core.String? title;

  CourseMaterialSet({
    this.materials,
    this.title,
  });

  CourseMaterialSet.fromJson(core.Map json_)
      : this(
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => CourseMaterial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (materials != null) 'materials': materials!,
        if (title != null) 'title': title!,
      };
}

/// Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
class CourseRosterChangesInfo {
  /// The `course_id` of the course to subscribe to roster changes for.
  core.String? courseId;

  CourseRosterChangesInfo({
    this.courseId,
  });

  CourseRosterChangesInfo.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
      };
}

/// Course work created by a teacher for students of the course.
class CourseWork {
  /// Absolute link to this course work in the Classroom web UI.
  ///
  /// This is only populated if `state` is `PUBLISHED`. Read-only.
  core.String? alternateLink;

  /// Assignee mode of the coursework.
  ///
  /// If unspecified, the default value is `ALL_STUDENTS`.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item. This is the default
  /// state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String? assigneeMode;

  /// Assignment details.
  ///
  /// This is populated only when `work_type` is `ASSIGNMENT`. Read-only.
  Assignment? assignment;

  /// Whether this course work item is associated with the Developer Console
  /// project making the request.
  ///
  /// See CreateCourseWork for more details. Read-only.
  core.bool? associatedWithDeveloper;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Timestamp when this course work was created.
  ///
  /// Read-only.
  core.String? creationTime;

  /// Identifier for the user that created the coursework.
  ///
  /// Read-only.
  core.String? creatorUserId;

  /// Optional description of this course work.
  ///
  /// If set, the description must be a valid UTF-8 string containing no more
  /// than 30,000 characters.
  core.String? description;

  /// Optional date, in UTC, that submissions for this course work are due.
  ///
  /// This must be specified if `due_time` is specified.
  Date? dueDate;

  /// Optional time of day, in UTC, that submissions for this course work are
  /// due.
  ///
  /// This must be specified if `due_date` is specified.
  TimeOfDay? dueTime;

  /// The category that this coursework's grade contributes to.
  ///
  /// Present only when a category has been chosen for the coursework. May be
  /// used in calculating the overall grade. Read-only.
  GradeCategory? gradeCategory;

  /// Classroom-assigned identifier of this course work, unique per course.
  ///
  /// Read-only.
  core.String? id;

  /// Identifiers of students with access to the coursework.
  ///
  /// This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the
  /// `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in
  /// this field are assigned the coursework.
  IndividualStudentsOptions? individualStudentsOptions;

  /// Additional materials.
  ///
  /// CourseWork must have no more than 20 material items.
  core.List<Material>? materials;

  /// Maximum grade for this course work.
  ///
  /// If zero or unspecified, this assignment is considered ungraded. This must
  /// be a non-negative integer value.
  core.double? maxPoints;

  /// Multiple choice question details.
  ///
  /// For read operations, this field is populated only when `work_type` is
  /// `MULTIPLE_CHOICE_QUESTION`. For write operations, this field must be
  /// specified when creating course work with a `work_type` of
  /// `MULTIPLE_CHOICE_QUESTION`, and it must not be set otherwise.
  MultipleChoiceQuestion? multipleChoiceQuestion;

  /// Optional timestamp when this course work is scheduled to be published.
  core.String? scheduledTime;

  /// Status of this course work.
  ///
  /// If unspecified, the default state is `DRAFT`.
  /// Possible string values are:
  /// - "COURSE_WORK_STATE_UNSPECIFIED" : No state specified. This is never
  /// returned.
  /// - "PUBLISHED" : Status for work that has been published. This is the
  /// default state.
  /// - "DRAFT" : Status for work that is not yet published. Work in this state
  /// is visible only to course teachers and domain administrators.
  /// - "DELETED" : Status for work that was published but is now deleted. Work
  /// in this state is visible only to course teachers and domain
  /// administrators. Work in this state is deleted after some time.
  core.String? state;

  /// Setting to determine when students are allowed to modify submissions.
  ///
  /// If unspecified, the default value is `MODIFIABLE_UNTIL_TURNED_IN`.
  /// Possible string values are:
  /// - "SUBMISSION_MODIFICATION_MODE_UNSPECIFIED" : No modification mode
  /// specified. This is never returned.
  /// - "MODIFIABLE_UNTIL_TURNED_IN" : Submissions can be modified before being
  /// turned in.
  /// - "MODIFIABLE" : Submissions can be modified at any time.
  core.String? submissionModificationMode;

  /// Title of this course work.
  ///
  /// The title must be a valid UTF-8 string containing between 1 and 3000
  /// characters.
  core.String? title;

  /// Identifier for the topic that this coursework is associated with.
  ///
  /// Must match an existing topic in the course.
  core.String? topicId;

  /// Timestamp of the most recent change to this course work.
  ///
  /// Read-only.
  core.String? updateTime;

  /// Type of this course work.
  ///
  /// The type is set when the course work is created and cannot be changed.
  /// Possible string values are:
  /// - "COURSE_WORK_TYPE_UNSPECIFIED" : No work type specified. This is never
  /// returned.
  /// - "ASSIGNMENT" : An assignment.
  /// - "SHORT_ANSWER_QUESTION" : A short answer question.
  /// - "MULTIPLE_CHOICE_QUESTION" : A multiple-choice question.
  core.String? workType;

  CourseWork({
    this.alternateLink,
    this.assigneeMode,
    this.assignment,
    this.associatedWithDeveloper,
    this.courseId,
    this.creationTime,
    this.creatorUserId,
    this.description,
    this.dueDate,
    this.dueTime,
    this.gradeCategory,
    this.id,
    this.individualStudentsOptions,
    this.materials,
    this.maxPoints,
    this.multipleChoiceQuestion,
    this.scheduledTime,
    this.state,
    this.submissionModificationMode,
    this.title,
    this.topicId,
    this.updateTime,
    this.workType,
  });

  CourseWork.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          assigneeMode: json_.containsKey('assigneeMode')
              ? json_['assigneeMode'] as core.String
              : null,
          assignment: json_.containsKey('assignment')
              ? Assignment.fromJson(
                  json_['assignment'] as core.Map<core.String, core.dynamic>)
              : null,
          associatedWithDeveloper: json_.containsKey('associatedWithDeveloper')
              ? json_['associatedWithDeveloper'] as core.bool
              : null,
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          creatorUserId: json_.containsKey('creatorUserId')
              ? json_['creatorUserId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          dueDate: json_.containsKey('dueDate')
              ? Date.fromJson(
                  json_['dueDate'] as core.Map<core.String, core.dynamic>)
              : null,
          dueTime: json_.containsKey('dueTime')
              ? TimeOfDay.fromJson(
                  json_['dueTime'] as core.Map<core.String, core.dynamic>)
              : null,
          gradeCategory: json_.containsKey('gradeCategory')
              ? GradeCategory.fromJson(
                  json_['gradeCategory'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          individualStudentsOptions:
              json_.containsKey('individualStudentsOptions')
                  ? IndividualStudentsOptions.fromJson(
                      json_['individualStudentsOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => Material.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxPoints: json_.containsKey('maxPoints')
              ? (json_['maxPoints'] as core.num).toDouble()
              : null,
          multipleChoiceQuestion: json_.containsKey('multipleChoiceQuestion')
              ? MultipleChoiceQuestion.fromJson(json_['multipleChoiceQuestion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          scheduledTime: json_.containsKey('scheduledTime')
              ? json_['scheduledTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          submissionModificationMode:
              json_.containsKey('submissionModificationMode')
                  ? json_['submissionModificationMode'] as core.String
                  : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          topicId: json_.containsKey('topicId')
              ? json_['topicId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          workType: json_.containsKey('workType')
              ? json_['workType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (assigneeMode != null) 'assigneeMode': assigneeMode!,
        if (assignment != null) 'assignment': assignment!,
        if (associatedWithDeveloper != null)
          'associatedWithDeveloper': associatedWithDeveloper!,
        if (courseId != null) 'courseId': courseId!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (creatorUserId != null) 'creatorUserId': creatorUserId!,
        if (description != null) 'description': description!,
        if (dueDate != null) 'dueDate': dueDate!,
        if (dueTime != null) 'dueTime': dueTime!,
        if (gradeCategory != null) 'gradeCategory': gradeCategory!,
        if (id != null) 'id': id!,
        if (individualStudentsOptions != null)
          'individualStudentsOptions': individualStudentsOptions!,
        if (materials != null) 'materials': materials!,
        if (maxPoints != null) 'maxPoints': maxPoints!,
        if (multipleChoiceQuestion != null)
          'multipleChoiceQuestion': multipleChoiceQuestion!,
        if (scheduledTime != null) 'scheduledTime': scheduledTime!,
        if (state != null) 'state': state!,
        if (submissionModificationMode != null)
          'submissionModificationMode': submissionModificationMode!,
        if (title != null) 'title': title!,
        if (topicId != null) 'topicId': topicId!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workType != null) 'workType': workType!,
      };
}

/// Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
class CourseWorkChangesInfo {
  /// The `course_id` of the course to subscribe to work changes for.
  core.String? courseId;

  CourseWorkChangesInfo({
    this.courseId,
  });

  CourseWorkChangesInfo.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
      };
}

/// Course work material created by a teacher for students of the course
class CourseWorkMaterial {
  /// Absolute link to this course work material in the Classroom web UI.
  ///
  /// This is only populated if `state` is `PUBLISHED`. Read-only.
  core.String? alternateLink;

  /// Assignee mode of the course work material.
  ///
  /// If unspecified, the default value is `ALL_STUDENTS`.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item. This is the default
  /// state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String? assigneeMode;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Timestamp when this course work material was created.
  ///
  /// Read-only.
  core.String? creationTime;

  /// Identifier for the user that created the course work material.
  ///
  /// Read-only.
  core.String? creatorUserId;

  /// Optional description of this course work material.
  ///
  /// The text must be a valid UTF-8 string containing no more than 30,000
  /// characters.
  core.String? description;

  /// Classroom-assigned identifier of this course work material, unique per
  /// course.
  ///
  /// Read-only.
  core.String? id;

  /// Identifiers of students with access to the course work material.
  ///
  /// This field is set only if `assigneeMode` is `INDIVIDUAL_STUDENTS`. If the
  /// `assigneeMode` is `INDIVIDUAL_STUDENTS`, then only students specified in
  /// this field can see the course work material.
  IndividualStudentsOptions? individualStudentsOptions;

  /// Additional materials.
  ///
  /// A course work material must have no more than 20 material items.
  core.List<Material>? materials;

  /// Optional timestamp when this course work material is scheduled to be
  /// published.
  core.String? scheduledTime;

  /// Status of this course work material.
  ///
  /// If unspecified, the default state is `DRAFT`.
  /// Possible string values are:
  /// - "COURSEWORK_MATERIAL_STATE_UNSPECIFIED" : No state specified. This is
  /// never returned.
  /// - "PUBLISHED" : Status for course work material that has been published.
  /// This is the default state.
  /// - "DRAFT" : Status for an course work material that is not yet published.
  /// Course work material in this state is visible only to course teachers and
  /// domain administrators.
  /// - "DELETED" : Status for course work material that was published but is
  /// now deleted. Course work material in this state is visible only to course
  /// teachers and domain administrators. Course work material in this state is
  /// deleted after some time.
  core.String? state;

  /// Title of this course work material.
  ///
  /// The title must be a valid UTF-8 string containing between 1 and 3000
  /// characters.
  core.String? title;

  /// Identifier for the topic that this course work material is associated
  /// with.
  ///
  /// Must match an existing topic in the course.
  core.String? topicId;

  /// Timestamp of the most recent change to this course work material.
  ///
  /// Read-only.
  core.String? updateTime;

  CourseWorkMaterial({
    this.alternateLink,
    this.assigneeMode,
    this.courseId,
    this.creationTime,
    this.creatorUserId,
    this.description,
    this.id,
    this.individualStudentsOptions,
    this.materials,
    this.scheduledTime,
    this.state,
    this.title,
    this.topicId,
    this.updateTime,
  });

  CourseWorkMaterial.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          assigneeMode: json_.containsKey('assigneeMode')
              ? json_['assigneeMode'] as core.String
              : null,
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          creatorUserId: json_.containsKey('creatorUserId')
              ? json_['creatorUserId'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          individualStudentsOptions:
              json_.containsKey('individualStudentsOptions')
                  ? IndividualStudentsOptions.fromJson(
                      json_['individualStudentsOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          materials: json_.containsKey('materials')
              ? (json_['materials'] as core.List)
                  .map((value) => Material.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          scheduledTime: json_.containsKey('scheduledTime')
              ? json_['scheduledTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          topicId: json_.containsKey('topicId')
              ? json_['topicId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (assigneeMode != null) 'assigneeMode': assigneeMode!,
        if (courseId != null) 'courseId': courseId!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (creatorUserId != null) 'creatorUserId': creatorUserId!,
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (individualStudentsOptions != null)
          'individualStudentsOptions': individualStudentsOptions!,
        if (materials != null) 'materials': materials!,
        if (scheduledTime != null) 'scheduledTime': scheduledTime!,
        if (state != null) 'state': state!,
        if (title != null) 'title': title!,
        if (topicId != null) 'topicId': topicId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// Representation of a Google Drive file.
class DriveFile {
  /// URL that can be used to access the Drive item.
  ///
  /// Read-only.
  core.String? alternateLink;

  /// Drive API resource ID.
  core.String? id;

  /// URL of a thumbnail image of the Drive item.
  ///
  /// Read-only.
  core.String? thumbnailUrl;

  /// Title of the Drive item.
  ///
  /// Read-only.
  core.String? title;

  DriveFile({
    this.alternateLink,
    this.id,
    this.thumbnailUrl,
    this.title,
  });

  DriveFile.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          thumbnailUrl: json_.containsKey('thumbnailUrl')
              ? json_['thumbnailUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (id != null) 'id': id!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (title != null) 'title': title!,
      };
}

/// Representation of a Google Drive folder.
class DriveFolder {
  /// URL that can be used to access the Drive folder.
  ///
  /// Read-only.
  core.String? alternateLink;

  /// Drive API resource ID.
  core.String? id;

  /// Title of the Drive folder.
  ///
  /// Read-only.
  core.String? title;

  DriveFolder({
    this.alternateLink,
    this.id,
    this.title,
  });

  DriveFolder.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (id != null) 'id': id!,
        if (title != null) 'title': title!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A class of notifications that an application can register to receive.
///
/// For example: "all roster changes for a domain".
class Feed {
  /// Information about a `Feed` with a `feed_type` of `COURSE_ROSTER_CHANGES`.
  ///
  /// This field must be specified if `feed_type` is `COURSE_ROSTER_CHANGES`.
  CourseRosterChangesInfo? courseRosterChangesInfo;

  /// Information about a `Feed` with a `feed_type` of `COURSE_WORK_CHANGES`.
  ///
  /// This field must be specified if `feed_type` is `COURSE_WORK_CHANGES`.
  CourseWorkChangesInfo? courseWorkChangesInfo;

  /// The type of feed.
  /// Possible string values are:
  /// - "FEED_TYPE_UNSPECIFIED" : Should never be returned or provided.
  /// - "DOMAIN_ROSTER_CHANGES" : All roster changes for a particular domain.
  /// Notifications will be generated whenever a user joins or leaves a course.
  /// No notifications will be generated when an invitation is created or
  /// deleted, but notifications will be generated when a user joins a course by
  /// accepting an invitation.
  /// - "COURSE_ROSTER_CHANGES" : All roster changes for a particular course.
  /// Notifications will be generated whenever a user joins or leaves a course.
  /// No notifications will be generated when an invitation is created or
  /// deleted, but notifications will be generated when a user joins a course by
  /// accepting an invitation.
  /// - "COURSE_WORK_CHANGES" : All course work activity for a particular
  /// course. Notifications will be generated when a CourseWork or
  /// StudentSubmission object is created or modified. No notification will be
  /// generated when a StudentSubmission object is created in connection with
  /// the creation or modification of its parent CourseWork object (but a
  /// notification will be generated for that CourseWork object's creation or
  /// modification).
  core.String? feedType;

  Feed({
    this.courseRosterChangesInfo,
    this.courseWorkChangesInfo,
    this.feedType,
  });

  Feed.fromJson(core.Map json_)
      : this(
          courseRosterChangesInfo: json_.containsKey('courseRosterChangesInfo')
              ? CourseRosterChangesInfo.fromJson(
                  json_['courseRosterChangesInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          courseWorkChangesInfo: json_.containsKey('courseWorkChangesInfo')
              ? CourseWorkChangesInfo.fromJson(json_['courseWorkChangesInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          feedType: json_.containsKey('feedType')
              ? json_['feedType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseRosterChangesInfo != null)
          'courseRosterChangesInfo': courseRosterChangesInfo!,
        if (courseWorkChangesInfo != null)
          'courseWorkChangesInfo': courseWorkChangesInfo!,
        if (feedType != null) 'feedType': feedType!,
      };
}

/// Google Forms item.
class Form {
  /// URL of the form.
  core.String? formUrl;

  /// URL of the form responses document.
  ///
  /// Only set if respsonses have been recorded and only when the requesting
  /// user is an editor of the form. Read-only.
  core.String? responseUrl;

  /// URL of a thumbnail image of the Form.
  ///
  /// Read-only.
  core.String? thumbnailUrl;

  /// Title of the Form.
  ///
  /// Read-only.
  core.String? title;

  Form({
    this.formUrl,
    this.responseUrl,
    this.thumbnailUrl,
    this.title,
  });

  Form.fromJson(core.Map json_)
      : this(
          formUrl: json_.containsKey('formUrl')
              ? json_['formUrl'] as core.String
              : null,
          responseUrl: json_.containsKey('responseUrl')
              ? json_['responseUrl'] as core.String
              : null,
          thumbnailUrl: json_.containsKey('thumbnailUrl')
              ? json_['thumbnailUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (formUrl != null) 'formUrl': formUrl!,
        if (responseUrl != null) 'responseUrl': responseUrl!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (title != null) 'title': title!,
      };
}

/// Global user permission description.
class GlobalPermission {
  /// Permission value.
  /// Possible string values are:
  /// - "PERMISSION_UNSPECIFIED" : No permission is specified. This is not
  /// returned and is not a valid value.
  /// - "CREATE_COURSE" : User is permitted to create a course.
  core.String? permission;

  GlobalPermission({
    this.permission,
  });

  GlobalPermission.fromJson(core.Map json_)
      : this(
          permission: json_.containsKey('permission')
              ? json_['permission'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permission != null) 'permission': permission!,
      };
}

/// Details for a grade category in a course.
///
/// Coursework may have zero or one grade category, and the category may be used
/// in computing the overall grade. See the
/// [help center article](https://support.google.com/edu/classroom/answer/9184995)
/// for details.
class GradeCategory {
  /// Default value of denominator.
  ///
  /// Only applicable when grade calculation type is TOTAL_POINTS.
  core.int? defaultGradeDenominator;

  /// ID of the grade category.
  core.String? id;

  /// Name of the grade category.
  core.String? name;

  /// The weight of the category average as part of overall average.
  ///
  /// A weight of 12.34% is represented as 123400 (100% is 1,000,000). The last
  /// two digits should always be zero since we use two decimal precision. Only
  /// applicable when grade calculation type is WEIGHTED_CATEGORIES.
  core.int? weight;

  GradeCategory({
    this.defaultGradeDenominator,
    this.id,
    this.name,
    this.weight,
  });

  GradeCategory.fromJson(core.Map json_)
      : this(
          defaultGradeDenominator: json_.containsKey('defaultGradeDenominator')
              ? json_['defaultGradeDenominator'] as core.int
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          weight:
              json_.containsKey('weight') ? json_['weight'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultGradeDenominator != null)
          'defaultGradeDenominator': defaultGradeDenominator!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (weight != null) 'weight': weight!,
      };
}

/// The history of each grade on this submission.
class GradeHistory {
  /// The teacher who made the grade change.
  core.String? actorUserId;

  /// The type of grade change at this time in the submission grade history.
  /// Possible string values are:
  /// - "UNKNOWN_GRADE_CHANGE_TYPE" : No grade change type specified. This
  /// should never be returned.
  /// - "DRAFT_GRADE_POINTS_EARNED_CHANGE" : A change in the numerator of the
  /// draft grade.
  /// - "ASSIGNED_GRADE_POINTS_EARNED_CHANGE" : A change in the numerator of the
  /// assigned grade.
  /// - "MAX_POINTS_CHANGE" : A change in the denominator of the grade.
  core.String? gradeChangeType;

  /// When the grade of the submission was changed.
  core.String? gradeTimestamp;

  /// The denominator of the grade at this time in the submission grade history.
  core.double? maxPoints;

  /// The numerator of the grade at this time in the submission grade history.
  core.double? pointsEarned;

  GradeHistory({
    this.actorUserId,
    this.gradeChangeType,
    this.gradeTimestamp,
    this.maxPoints,
    this.pointsEarned,
  });

  GradeHistory.fromJson(core.Map json_)
      : this(
          actorUserId: json_.containsKey('actorUserId')
              ? json_['actorUserId'] as core.String
              : null,
          gradeChangeType: json_.containsKey('gradeChangeType')
              ? json_['gradeChangeType'] as core.String
              : null,
          gradeTimestamp: json_.containsKey('gradeTimestamp')
              ? json_['gradeTimestamp'] as core.String
              : null,
          maxPoints: json_.containsKey('maxPoints')
              ? (json_['maxPoints'] as core.num).toDouble()
              : null,
          pointsEarned: json_.containsKey('pointsEarned')
              ? (json_['pointsEarned'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actorUserId != null) 'actorUserId': actorUserId!,
        if (gradeChangeType != null) 'gradeChangeType': gradeChangeType!,
        if (gradeTimestamp != null) 'gradeTimestamp': gradeTimestamp!,
        if (maxPoints != null) 'maxPoints': maxPoints!,
        if (pointsEarned != null) 'pointsEarned': pointsEarned!,
      };
}

/// The gradebook settings for a course.
///
/// See the
/// [help center article](https://support.google.com/edu/classroom/answer/9184995)
/// for details.
class GradebookSettings {
  /// Indicates how the overall grade is calculated.
  /// Possible string values are:
  /// - "CALCULATION_TYPE_UNSPECIFIED" : No method specified. This is never
  /// returned.
  /// - "TOTAL_POINTS" : Overall grade is the sum of grades divided by the sum
  /// of total points regardless of category.
  /// - "WEIGHTED_CATEGORIES" : Overall grade is the weighted average by
  /// category.
  core.String? calculationType;

  /// Indicates who can see the overall grade..
  /// Possible string values are:
  /// - "DISPLAY_SETTING_UNSPECIFIED" : No setting specified. This is never
  /// returned.
  /// - "SHOW_OVERALL_GRADE" : Shows overall grade in the gradebook and student
  /// profile to both teachers and students.
  /// - "HIDE_OVERALL_GRADE" : Does not show overall grade in the gradebook or
  /// student profile.
  /// - "SHOW_TEACHERS_ONLY" : Shows the overall grade to teachers in the
  /// gradebook and student profile. Hides from students in their student
  /// profile.
  core.String? displaySetting;

  /// Grade categories that are available for coursework in the course.
  core.List<GradeCategory>? gradeCategories;

  GradebookSettings({
    this.calculationType,
    this.displaySetting,
    this.gradeCategories,
  });

  GradebookSettings.fromJson(core.Map json_)
      : this(
          calculationType: json_.containsKey('calculationType')
              ? json_['calculationType'] as core.String
              : null,
          displaySetting: json_.containsKey('displaySetting')
              ? json_['displaySetting'] as core.String
              : null,
          gradeCategories: json_.containsKey('gradeCategories')
              ? (json_['gradeCategories'] as core.List)
                  .map((value) => GradeCategory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calculationType != null) 'calculationType': calculationType!,
        if (displaySetting != null) 'displaySetting': displaySetting!,
        if (gradeCategories != null) 'gradeCategories': gradeCategories!,
      };
}

/// Association between a student and a guardian of that student.
///
/// The guardian may receive information about the student's course work.
class Guardian {
  /// Identifier for the guardian.
  core.String? guardianId;

  /// User profile for the guardian.
  UserProfile? guardianProfile;

  /// The email address to which the initial guardian invitation was sent.
  ///
  /// This field is only visible to domain administrators.
  core.String? invitedEmailAddress;

  /// Identifier for the student to whom the guardian relationship applies.
  core.String? studentId;

  Guardian({
    this.guardianId,
    this.guardianProfile,
    this.invitedEmailAddress,
    this.studentId,
  });

  Guardian.fromJson(core.Map json_)
      : this(
          guardianId: json_.containsKey('guardianId')
              ? json_['guardianId'] as core.String
              : null,
          guardianProfile: json_.containsKey('guardianProfile')
              ? UserProfile.fromJson(json_['guardianProfile']
                  as core.Map<core.String, core.dynamic>)
              : null,
          invitedEmailAddress: json_.containsKey('invitedEmailAddress')
              ? json_['invitedEmailAddress'] as core.String
              : null,
          studentId: json_.containsKey('studentId')
              ? json_['studentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (guardianId != null) 'guardianId': guardianId!,
        if (guardianProfile != null) 'guardianProfile': guardianProfile!,
        if (invitedEmailAddress != null)
          'invitedEmailAddress': invitedEmailAddress!,
        if (studentId != null) 'studentId': studentId!,
      };
}

/// An invitation to become the guardian of a specified user, sent to a
/// specified email address.
class GuardianInvitation {
  /// The time that this invitation was created.
  ///
  /// Read-only.
  core.String? creationTime;

  /// Unique identifier for this invitation.
  ///
  /// Read-only.
  core.String? invitationId;

  /// Email address that the invitation was sent to.
  ///
  /// This field is only visible to domain administrators.
  core.String? invitedEmailAddress;

  /// The state that this invitation is in.
  /// Possible string values are:
  /// - "GUARDIAN_INVITATION_STATE_UNSPECIFIED" : Should never be returned.
  /// - "PENDING" : The invitation is active and awaiting a response.
  /// - "COMPLETE" : The invitation is no longer active. It may have been
  /// accepted, declined, withdrawn or it may have expired.
  core.String? state;

  /// ID of the student (in standard format)
  core.String? studentId;

  GuardianInvitation({
    this.creationTime,
    this.invitationId,
    this.invitedEmailAddress,
    this.state,
    this.studentId,
  });

  GuardianInvitation.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          invitationId: json_.containsKey('invitationId')
              ? json_['invitationId'] as core.String
              : null,
          invitedEmailAddress: json_.containsKey('invitedEmailAddress')
              ? json_['invitedEmailAddress'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          studentId: json_.containsKey('studentId')
              ? json_['studentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (invitationId != null) 'invitationId': invitationId!,
        if (invitedEmailAddress != null)
          'invitedEmailAddress': invitedEmailAddress!,
        if (state != null) 'state': state!,
        if (studentId != null) 'studentId': studentId!,
      };
}

/// Assignee details about a coursework/announcement.
///
/// This field is set if and only if `assigneeMode` is `INDIVIDUAL_STUDENTS`.
class IndividualStudentsOptions {
  /// Identifiers for the students that have access to the
  /// coursework/announcement.
  core.List<core.String>? studentIds;

  IndividualStudentsOptions({
    this.studentIds,
  });

  IndividualStudentsOptions.fromJson(core.Map json_)
      : this(
          studentIds: json_.containsKey('studentIds')
              ? (json_['studentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (studentIds != null) 'studentIds': studentIds!,
      };
}

/// An invitation to join a course.
class Invitation {
  /// Identifier of the course to invite the user to.
  core.String? courseId;

  /// Identifier assigned by Classroom.
  ///
  /// Read-only.
  core.String? id;

  /// Role to invite the user to have.
  ///
  /// Must not be `COURSE_ROLE_UNSPECIFIED`.
  /// Possible string values are:
  /// - "COURSE_ROLE_UNSPECIFIED" : No course role.
  /// - "STUDENT" : Student in the course.
  /// - "TEACHER" : Teacher of the course.
  /// - "OWNER" : Owner of the course.
  core.String? role;

  /// Identifier of the invited user.
  ///
  /// When specified as a parameter of a request, this identifier can be set to
  /// one of the following: * the numeric identifier for the user * the email
  /// address of the user * the string literal `"me"`, indicating the requesting
  /// user
  core.String? userId;

  Invitation({
    this.courseId,
    this.id,
    this.role,
    this.userId,
  });

  Invitation.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
        if (id != null) 'id': id!,
        if (role != null) 'role': role!,
        if (userId != null) 'userId': userId!,
      };
}

/// URL item.
class Link {
  /// URL of a thumbnail image of the target URL.
  ///
  /// Read-only.
  core.String? thumbnailUrl;

  /// Title of the target of the URL.
  ///
  /// Read-only.
  core.String? title;

  /// URL to link to.
  ///
  /// This must be a valid UTF-8 string containing between 1 and 2024
  /// characters.
  core.String? url;

  Link({
    this.thumbnailUrl,
    this.title,
    this.url,
  });

  Link.fromJson(core.Map json_)
      : this(
          thumbnailUrl: json_.containsKey('thumbnailUrl')
              ? json_['thumbnailUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

/// Response when listing course work.
class ListAnnouncementsResponse {
  /// Announcement items that match the request.
  core.List<Announcement>? announcements;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListAnnouncementsResponse({
    this.announcements,
    this.nextPageToken,
  });

  ListAnnouncementsResponse.fromJson(core.Map json_)
      : this(
          announcements: json_.containsKey('announcements')
              ? (json_['announcements'] as core.List)
                  .map((value) => Announcement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (announcements != null) 'announcements': announcements!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing course aliases.
class ListCourseAliasesResponse {
  /// The course aliases.
  core.List<CourseAlias>? aliases;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListCourseAliasesResponse({
    this.aliases,
    this.nextPageToken,
  });

  ListCourseAliasesResponse.fromJson(core.Map json_)
      : this(
          aliases: json_.containsKey('aliases')
              ? (json_['aliases'] as core.List)
                  .map((value) => CourseAlias.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aliases != null) 'aliases': aliases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing course work material.
class ListCourseWorkMaterialResponse {
  /// Course work material items that match the request.
  core.List<CourseWorkMaterial>? courseWorkMaterial;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListCourseWorkMaterialResponse({
    this.courseWorkMaterial,
    this.nextPageToken,
  });

  ListCourseWorkMaterialResponse.fromJson(core.Map json_)
      : this(
          courseWorkMaterial: json_.containsKey('courseWorkMaterial')
              ? (json_['courseWorkMaterial'] as core.List)
                  .map((value) => CourseWorkMaterial.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseWorkMaterial != null)
          'courseWorkMaterial': courseWorkMaterial!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing course work.
class ListCourseWorkResponse {
  /// Course work items that match the request.
  core.List<CourseWork>? courseWork;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListCourseWorkResponse({
    this.courseWork,
    this.nextPageToken,
  });

  ListCourseWorkResponse.fromJson(core.Map json_)
      : this(
          courseWork: json_.containsKey('courseWork')
              ? (json_['courseWork'] as core.List)
                  .map((value) => CourseWork.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseWork != null) 'courseWork': courseWork!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing courses.
class ListCoursesResponse {
  /// Courses that match the list request.
  core.List<Course>? courses;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListCoursesResponse({
    this.courses,
    this.nextPageToken,
  });

  ListCoursesResponse.fromJson(core.Map json_)
      : this(
          courses: json_.containsKey('courses')
              ? (json_['courses'] as core.List)
                  .map((value) => Course.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courses != null) 'courses': courses!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing guardian invitations.
class ListGuardianInvitationsResponse {
  /// Guardian invitations that matched the list request.
  core.List<GuardianInvitation>? guardianInvitations;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListGuardianInvitationsResponse({
    this.guardianInvitations,
    this.nextPageToken,
  });

  ListGuardianInvitationsResponse.fromJson(core.Map json_)
      : this(
          guardianInvitations: json_.containsKey('guardianInvitations')
              ? (json_['guardianInvitations'] as core.List)
                  .map((value) => GuardianInvitation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (guardianInvitations != null)
          'guardianInvitations': guardianInvitations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing guardians.
class ListGuardiansResponse {
  /// Guardians on this page of results that met the criteria specified in the
  /// request.
  core.List<Guardian>? guardians;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListGuardiansResponse({
    this.guardians,
    this.nextPageToken,
  });

  ListGuardiansResponse.fromJson(core.Map json_)
      : this(
          guardians: json_.containsKey('guardians')
              ? (json_['guardians'] as core.List)
                  .map((value) => Guardian.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (guardians != null) 'guardians': guardians!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing invitations.
class ListInvitationsResponse {
  /// Invitations that match the list request.
  core.List<Invitation>? invitations;

  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  ListInvitationsResponse({
    this.invitations,
    this.nextPageToken,
  });

  ListInvitationsResponse.fromJson(core.Map json_)
      : this(
          invitations: json_.containsKey('invitations')
              ? (json_['invitations'] as core.List)
                  .map((value) => Invitation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invitations != null) 'invitations': invitations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response when listing student submissions.
class ListStudentSubmissionsResponse {
  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  /// Student work that matches the request.
  core.List<StudentSubmission>? studentSubmissions;

  ListStudentSubmissionsResponse({
    this.nextPageToken,
    this.studentSubmissions,
  });

  ListStudentSubmissionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          studentSubmissions: json_.containsKey('studentSubmissions')
              ? (json_['studentSubmissions'] as core.List)
                  .map((value) => StudentSubmission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (studentSubmissions != null)
          'studentSubmissions': studentSubmissions!,
      };
}

/// Response when listing students.
class ListStudentsResponse {
  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  /// Students who match the list request.
  core.List<Student>? students;

  ListStudentsResponse({
    this.nextPageToken,
    this.students,
  });

  ListStudentsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          students: json_.containsKey('students')
              ? (json_['students'] as core.List)
                  .map((value) => Student.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (students != null) 'students': students!,
      };
}

/// Response when listing teachers.
class ListTeachersResponse {
  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  /// Teachers who match the list request.
  core.List<Teacher>? teachers;

  ListTeachersResponse({
    this.nextPageToken,
    this.teachers,
  });

  ListTeachersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          teachers: json_.containsKey('teachers')
              ? (json_['teachers'] as core.List)
                  .map((value) => Teacher.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (teachers != null) 'teachers': teachers!,
      };
}

/// Response when listing topics.
class ListTopicResponse {
  /// Token identifying the next page of results to return.
  ///
  /// If empty, no further results are available.
  core.String? nextPageToken;

  /// Topic items that match the request.
  core.List<Topic>? topic;

  ListTopicResponse({
    this.nextPageToken,
    this.topic,
  });

  ListTopicResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          topic: json_.containsKey('topic')
              ? (json_['topic'] as core.List)
                  .map((value) => Topic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (topic != null) 'topic': topic!,
      };
}

/// Material attached to course work.
///
/// When creating attachments, setting the `form` field is not supported.
class Material {
  /// Google Drive file material.
  SharedDriveFile? driveFile;

  /// Google Forms material.
  Form? form;

  /// Link material.
  ///
  /// On creation, this is upgraded to a more appropriate type if possible, and
  /// this is reflected in the response.
  Link? link;

  /// YouTube video material.
  YouTubeVideo? youtubeVideo;

  Material({
    this.driveFile,
    this.form,
    this.link,
    this.youtubeVideo,
  });

  Material.fromJson(core.Map json_)
      : this(
          driveFile: json_.containsKey('driveFile')
              ? SharedDriveFile.fromJson(
                  json_['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          form: json_.containsKey('form')
              ? Form.fromJson(
                  json_['form'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link')
              ? Link.fromJson(
                  json_['link'] as core.Map<core.String, core.dynamic>)
              : null,
          youtubeVideo: json_.containsKey('youtubeVideo')
              ? YouTubeVideo.fromJson(
                  json_['youtubeVideo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (form != null) 'form': form!,
        if (link != null) 'link': link!,
        if (youtubeVideo != null) 'youtubeVideo': youtubeVideo!,
      };
}

/// Request to modify assignee mode and options of an announcement.
class ModifyAnnouncementAssigneesRequest {
  /// Mode of the announcement describing whether it is accessible by all
  /// students or specified individual students.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item. This is the default
  /// state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String? assigneeMode;

  /// Set which students can view or cannot view the announcement.
  ///
  /// Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  ModifyIndividualStudentsOptions? modifyIndividualStudentsOptions;

  ModifyAnnouncementAssigneesRequest({
    this.assigneeMode,
    this.modifyIndividualStudentsOptions,
  });

  ModifyAnnouncementAssigneesRequest.fromJson(core.Map json_)
      : this(
          assigneeMode: json_.containsKey('assigneeMode')
              ? json_['assigneeMode'] as core.String
              : null,
          modifyIndividualStudentsOptions:
              json_.containsKey('modifyIndividualStudentsOptions')
                  ? ModifyIndividualStudentsOptions.fromJson(
                      json_['modifyIndividualStudentsOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assigneeMode != null) 'assigneeMode': assigneeMode!,
        if (modifyIndividualStudentsOptions != null)
          'modifyIndividualStudentsOptions': modifyIndividualStudentsOptions!,
      };
}

/// Request to modify the attachments of a student submission.
class ModifyAttachmentsRequest {
  /// Attachments to add.
  ///
  /// A student submission may not have more than 20 attachments. Form
  /// attachments are not supported.
  core.List<Attachment>? addAttachments;

  ModifyAttachmentsRequest({
    this.addAttachments,
  });

  ModifyAttachmentsRequest.fromJson(core.Map json_)
      : this(
          addAttachments: json_.containsKey('addAttachments')
              ? (json_['addAttachments'] as core.List)
                  .map((value) => Attachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addAttachments != null) 'addAttachments': addAttachments!,
      };
}

/// Request to modify assignee mode and options of a coursework.
class ModifyCourseWorkAssigneesRequest {
  /// Mode of the coursework describing whether it will be assigned to all
  /// students or specified individual students.
  /// Possible string values are:
  /// - "ASSIGNEE_MODE_UNSPECIFIED" : No mode specified. This is never returned.
  /// - "ALL_STUDENTS" : All students can see the item. This is the default
  /// state.
  /// - "INDIVIDUAL_STUDENTS" : A subset of the students can see the item.
  core.String? assigneeMode;

  /// Set which students are assigned or not assigned to the coursework.
  ///
  /// Must be specified only when `assigneeMode` is `INDIVIDUAL_STUDENTS`.
  ModifyIndividualStudentsOptions? modifyIndividualStudentsOptions;

  ModifyCourseWorkAssigneesRequest({
    this.assigneeMode,
    this.modifyIndividualStudentsOptions,
  });

  ModifyCourseWorkAssigneesRequest.fromJson(core.Map json_)
      : this(
          assigneeMode: json_.containsKey('assigneeMode')
              ? json_['assigneeMode'] as core.String
              : null,
          modifyIndividualStudentsOptions:
              json_.containsKey('modifyIndividualStudentsOptions')
                  ? ModifyIndividualStudentsOptions.fromJson(
                      json_['modifyIndividualStudentsOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assigneeMode != null) 'assigneeMode': assigneeMode!,
        if (modifyIndividualStudentsOptions != null)
          'modifyIndividualStudentsOptions': modifyIndividualStudentsOptions!,
      };
}

/// Contains fields to add or remove students from a course work or announcement
/// where the `assigneeMode` is set to `INDIVIDUAL_STUDENTS`.
class ModifyIndividualStudentsOptions {
  /// IDs of students to be added as having access to this
  /// coursework/announcement.
  core.List<core.String>? addStudentIds;

  /// IDs of students to be removed from having access to this
  /// coursework/announcement.
  core.List<core.String>? removeStudentIds;

  ModifyIndividualStudentsOptions({
    this.addStudentIds,
    this.removeStudentIds,
  });

  ModifyIndividualStudentsOptions.fromJson(core.Map json_)
      : this(
          addStudentIds: json_.containsKey('addStudentIds')
              ? (json_['addStudentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          removeStudentIds: json_.containsKey('removeStudentIds')
              ? (json_['removeStudentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addStudentIds != null) 'addStudentIds': addStudentIds!,
        if (removeStudentIds != null) 'removeStudentIds': removeStudentIds!,
      };
}

/// Additional details for multiple-choice questions.
class MultipleChoiceQuestion {
  /// Possible choices.
  core.List<core.String>? choices;

  MultipleChoiceQuestion({
    this.choices,
  });

  MultipleChoiceQuestion.fromJson(core.Map json_)
      : this(
          choices: json_.containsKey('choices')
              ? (json_['choices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choices != null) 'choices': choices!,
      };
}

/// Student work for a multiple-choice question.
class MultipleChoiceSubmission {
  /// Student's select choice.
  core.String? answer;

  MultipleChoiceSubmission({
    this.answer,
  });

  MultipleChoiceSubmission.fromJson(core.Map json_)
      : this(
          answer: json_.containsKey('answer')
              ? json_['answer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
      };
}

/// Details of the user's name.
class Name {
  /// The user's last name.
  ///
  /// Read-only.
  core.String? familyName;

  /// The user's full name formed by concatenating the first and last name
  /// values.
  ///
  /// Read-only.
  core.String? fullName;

  /// The user's first name.
  ///
  /// Read-only.
  core.String? givenName;

  Name({
    this.familyName,
    this.fullName,
    this.givenName,
  });

  Name.fromJson(core.Map json_)
      : this(
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          fullName: json_.containsKey('fullName')
              ? json_['fullName'] as core.String
              : null,
          givenName: json_.containsKey('givenName')
              ? json_['givenName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (familyName != null) 'familyName': familyName!,
        if (fullName != null) 'fullName': fullName!,
        if (givenName != null) 'givenName': givenName!,
      };
}

/// Request to reclaim a student submission.
typedef ReclaimStudentSubmissionRequest = $Empty;

/// An instruction to Classroom to send notifications from the `feed` to the
/// provided destination.
class Registration {
  /// The Cloud Pub/Sub topic that notifications are to be sent to.
  CloudPubsubTopic? cloudPubsubTopic;

  /// The time until which the `Registration` is effective.
  ///
  /// This is a read-only field assigned by the server.
  core.String? expiryTime;

  /// Specification for the class of notifications that Classroom should deliver
  /// to the destination.
  Feed? feed;

  /// A server-generated unique identifier for this `Registration`.
  ///
  /// Read-only.
  core.String? registrationId;

  Registration({
    this.cloudPubsubTopic,
    this.expiryTime,
    this.feed,
    this.registrationId,
  });

  Registration.fromJson(core.Map json_)
      : this(
          cloudPubsubTopic: json_.containsKey('cloudPubsubTopic')
              ? CloudPubsubTopic.fromJson(json_['cloudPubsubTopic']
                  as core.Map<core.String, core.dynamic>)
              : null,
          expiryTime: json_.containsKey('expiryTime')
              ? json_['expiryTime'] as core.String
              : null,
          feed: json_.containsKey('feed')
              ? Feed.fromJson(
                  json_['feed'] as core.Map<core.String, core.dynamic>)
              : null,
          registrationId: json_.containsKey('registrationId')
              ? json_['registrationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudPubsubTopic != null) 'cloudPubsubTopic': cloudPubsubTopic!,
        if (expiryTime != null) 'expiryTime': expiryTime!,
        if (feed != null) 'feed': feed!,
        if (registrationId != null) 'registrationId': registrationId!,
      };
}

/// Request to return a student submission.
typedef ReturnStudentSubmissionRequest = $Empty;

/// Drive file that is used as material for course work.
class SharedDriveFile {
  /// Drive file details.
  DriveFile? driveFile;

  /// Mechanism by which students access the Drive item.
  /// Possible string values are:
  /// - "UNKNOWN_SHARE_MODE" : No sharing mode specified. This should never be
  /// returned.
  /// - "VIEW" : Students can view the shared file.
  /// - "EDIT" : Students can edit the shared file.
  /// - "STUDENT_COPY" : Students have a personal copy of the shared file.
  core.String? shareMode;

  SharedDriveFile({
    this.driveFile,
    this.shareMode,
  });

  SharedDriveFile.fromJson(core.Map json_)
      : this(
          driveFile: json_.containsKey('driveFile')
              ? DriveFile.fromJson(
                  json_['driveFile'] as core.Map<core.String, core.dynamic>)
              : null,
          shareMode: json_.containsKey('shareMode')
              ? json_['shareMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (driveFile != null) 'driveFile': driveFile!,
        if (shareMode != null) 'shareMode': shareMode!,
      };
}

/// Student work for a short answer question.
class ShortAnswerSubmission {
  /// Student response to a short-answer question.
  core.String? answer;

  ShortAnswerSubmission({
    this.answer,
  });

  ShortAnswerSubmission.fromJson(core.Map json_)
      : this(
          answer: json_.containsKey('answer')
              ? json_['answer'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (answer != null) 'answer': answer!,
      };
}

/// The history of each state this submission has been in.
class StateHistory {
  /// The teacher or student who made the change.
  core.String? actorUserId;

  /// The workflow pipeline stage.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified. This should never be returned.
  /// - "CREATED" : The Submission has been created.
  /// - "TURNED_IN" : The student has turned in an assigned document, which may
  /// or may not be a template.
  /// - "RETURNED" : The teacher has returned the assigned document to the
  /// student.
  /// - "RECLAIMED_BY_STUDENT" : The student turned in the assigned document,
  /// and then chose to "unsubmit" the assignment, giving the student control
  /// again as the owner.
  /// - "STUDENT_EDITED_AFTER_TURN_IN" : The student edited their submission
  /// after turning it in. Currently, only used by Questions, when the student
  /// edits their answer.
  core.String? state;

  /// When the submission entered this state.
  core.String? stateTimestamp;

  StateHistory({
    this.actorUserId,
    this.state,
    this.stateTimestamp,
  });

  StateHistory.fromJson(core.Map json_)
      : this(
          actorUserId: json_.containsKey('actorUserId')
              ? json_['actorUserId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateTimestamp: json_.containsKey('stateTimestamp')
              ? json_['stateTimestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actorUserId != null) 'actorUserId': actorUserId!,
        if (state != null) 'state': state!,
        if (stateTimestamp != null) 'stateTimestamp': stateTimestamp!,
      };
}

/// Student in a course.
class Student {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Global user information for the student.
  ///
  /// Read-only.
  UserProfile? profile;

  /// Information about a Drive Folder for this student's work in this course.
  ///
  /// Only visible to the student and domain administrators. Read-only.
  DriveFolder? studentWorkFolder;

  /// Identifier of the user.
  ///
  /// When specified as a parameter of a request, this identifier can be one of
  /// the following: * the numeric identifier for the user * the email address
  /// of the user * the string literal `"me"`, indicating the requesting user
  core.String? userId;

  Student({
    this.courseId,
    this.profile,
    this.studentWorkFolder,
    this.userId,
  });

  Student.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          profile: json_.containsKey('profile')
              ? UserProfile.fromJson(
                  json_['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          studentWorkFolder: json_.containsKey('studentWorkFolder')
              ? DriveFolder.fromJson(json_['studentWorkFolder']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
        if (profile != null) 'profile': profile!,
        if (studentWorkFolder != null) 'studentWorkFolder': studentWorkFolder!,
        if (userId != null) 'userId': userId!,
      };
}

/// Student submission for course work.
///
/// StudentSubmission items are generated when a CourseWork item is created.
/// StudentSubmissions that have never been accessed (i.e. with `state` = NEW)
/// may not have a creation time or update time.
class StudentSubmission {
  /// Absolute link to the submission in the Classroom web UI.
  ///
  /// Read-only.
  core.String? alternateLink;

  /// Optional grade.
  ///
  /// If unset, no grade was set. This value must be non-negative. Decimal (that
  /// is, non-integer) values are allowed, but are rounded to two decimal
  /// places. This may be modified only by course teachers.
  core.double? assignedGrade;

  /// Submission content when course_work_type is ASSIGNMENT.
  ///
  /// Students can modify this content using ModifyAttachments.
  AssignmentSubmission? assignmentSubmission;

  /// Whether this student submission is associated with the Developer Console
  /// project making the request.
  ///
  /// See CreateCourseWork for more details. Read-only.
  core.bool? associatedWithDeveloper;

  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Identifier for the course work this corresponds to.
  ///
  /// Read-only.
  core.String? courseWorkId;

  /// Type of course work this submission is for.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "COURSE_WORK_TYPE_UNSPECIFIED" : No work type specified. This is never
  /// returned.
  /// - "ASSIGNMENT" : An assignment.
  /// - "SHORT_ANSWER_QUESTION" : A short answer question.
  /// - "MULTIPLE_CHOICE_QUESTION" : A multiple-choice question.
  core.String? courseWorkType;

  /// Creation time of this submission.
  ///
  /// This may be unset if the student has not accessed this item. Read-only.
  core.String? creationTime;

  /// Optional pending grade.
  ///
  /// If unset, no grade was set. This value must be non-negative. Decimal (that
  /// is, non-integer) values are allowed, but are rounded to two decimal
  /// places. This is only visible to and modifiable by course teachers.
  core.double? draftGrade;

  /// Classroom-assigned Identifier for the student submission.
  ///
  /// This is unique among submissions for the relevant course work. Read-only.
  core.String? id;

  /// Whether this submission is late.
  ///
  /// Read-only.
  core.bool? late;

  /// Submission content when course_work_type is MULTIPLE_CHOICE_QUESTION.
  MultipleChoiceSubmission? multipleChoiceSubmission;

  /// Submission content when course_work_type is SHORT_ANSWER_QUESTION.
  ShortAnswerSubmission? shortAnswerSubmission;

  /// State of this submission.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "SUBMISSION_STATE_UNSPECIFIED" : No state specified. This should never
  /// be returned.
  /// - "NEW" : The student has never accessed this submission. Attachments are
  /// not returned and timestamps is not set.
  /// - "CREATED" : Has been created.
  /// - "TURNED_IN" : Has been turned in to the teacher.
  /// - "RETURNED" : Has been returned to the student.
  /// - "RECLAIMED_BY_STUDENT" : Student chose to "unsubmit" the assignment.
  core.String? state;

  /// The history of the submission (includes state and grade histories).
  ///
  /// Read-only.
  core.List<SubmissionHistory>? submissionHistory;

  /// Last update time of this submission.
  ///
  /// This may be unset if the student has not accessed this item. Read-only.
  core.String? updateTime;

  /// Identifier for the student that owns this submission.
  ///
  /// Read-only.
  core.String? userId;

  StudentSubmission({
    this.alternateLink,
    this.assignedGrade,
    this.assignmentSubmission,
    this.associatedWithDeveloper,
    this.courseId,
    this.courseWorkId,
    this.courseWorkType,
    this.creationTime,
    this.draftGrade,
    this.id,
    this.late,
    this.multipleChoiceSubmission,
    this.shortAnswerSubmission,
    this.state,
    this.submissionHistory,
    this.updateTime,
    this.userId,
  });

  StudentSubmission.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          assignedGrade: json_.containsKey('assignedGrade')
              ? (json_['assignedGrade'] as core.num).toDouble()
              : null,
          assignmentSubmission: json_.containsKey('assignmentSubmission')
              ? AssignmentSubmission.fromJson(json_['assignmentSubmission']
                  as core.Map<core.String, core.dynamic>)
              : null,
          associatedWithDeveloper: json_.containsKey('associatedWithDeveloper')
              ? json_['associatedWithDeveloper'] as core.bool
              : null,
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          courseWorkId: json_.containsKey('courseWorkId')
              ? json_['courseWorkId'] as core.String
              : null,
          courseWorkType: json_.containsKey('courseWorkType')
              ? json_['courseWorkType'] as core.String
              : null,
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          draftGrade: json_.containsKey('draftGrade')
              ? (json_['draftGrade'] as core.num).toDouble()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          late: json_.containsKey('late') ? json_['late'] as core.bool : null,
          multipleChoiceSubmission:
              json_.containsKey('multipleChoiceSubmission')
                  ? MultipleChoiceSubmission.fromJson(
                      json_['multipleChoiceSubmission']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          shortAnswerSubmission: json_.containsKey('shortAnswerSubmission')
              ? ShortAnswerSubmission.fromJson(json_['shortAnswerSubmission']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          submissionHistory: json_.containsKey('submissionHistory')
              ? (json_['submissionHistory'] as core.List)
                  .map((value) => SubmissionHistory.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (assignedGrade != null) 'assignedGrade': assignedGrade!,
        if (assignmentSubmission != null)
          'assignmentSubmission': assignmentSubmission!,
        if (associatedWithDeveloper != null)
          'associatedWithDeveloper': associatedWithDeveloper!,
        if (courseId != null) 'courseId': courseId!,
        if (courseWorkId != null) 'courseWorkId': courseWorkId!,
        if (courseWorkType != null) 'courseWorkType': courseWorkType!,
        if (creationTime != null) 'creationTime': creationTime!,
        if (draftGrade != null) 'draftGrade': draftGrade!,
        if (id != null) 'id': id!,
        if (late != null) 'late': late!,
        if (multipleChoiceSubmission != null)
          'multipleChoiceSubmission': multipleChoiceSubmission!,
        if (shortAnswerSubmission != null)
          'shortAnswerSubmission': shortAnswerSubmission!,
        if (state != null) 'state': state!,
        if (submissionHistory != null) 'submissionHistory': submissionHistory!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (userId != null) 'userId': userId!,
      };
}

/// The history of the submission.
///
/// This currently includes state and grade histories.
class SubmissionHistory {
  /// The grade history information of the submission, if present.
  GradeHistory? gradeHistory;

  /// The state history information of the submission, if present.
  StateHistory? stateHistory;

  SubmissionHistory({
    this.gradeHistory,
    this.stateHistory,
  });

  SubmissionHistory.fromJson(core.Map json_)
      : this(
          gradeHistory: json_.containsKey('gradeHistory')
              ? GradeHistory.fromJson(
                  json_['gradeHistory'] as core.Map<core.String, core.dynamic>)
              : null,
          stateHistory: json_.containsKey('stateHistory')
              ? StateHistory.fromJson(
                  json_['stateHistory'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gradeHistory != null) 'gradeHistory': gradeHistory!,
        if (stateHistory != null) 'stateHistory': stateHistory!,
      };
}

/// Teacher of a course.
class Teacher {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// Global user information for the teacher.
  ///
  /// Read-only.
  UserProfile? profile;

  /// Identifier of the user.
  ///
  /// When specified as a parameter of a request, this identifier can be one of
  /// the following: * the numeric identifier for the user * the email address
  /// of the user * the string literal `"me"`, indicating the requesting user
  core.String? userId;

  Teacher({
    this.courseId,
    this.profile,
    this.userId,
  });

  Teacher.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          profile: json_.containsKey('profile')
              ? UserProfile.fromJson(
                  json_['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
        if (profile != null) 'profile': profile!,
        if (userId != null) 'userId': userId!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Topic created by a teacher for the course
class Topic {
  /// Identifier of the course.
  ///
  /// Read-only.
  core.String? courseId;

  /// The name of the topic, generated by the user.
  ///
  /// Leading and trailing whitespaces, if any, are trimmed. Also, multiple
  /// consecutive whitespaces are collapsed into one inside the name. The result
  /// must be a non-empty string. Topic names are case sensitive, and must be no
  /// longer than 100 characters.
  core.String? name;

  /// Unique identifier for the topic.
  ///
  /// Read-only.
  core.String? topicId;

  /// The time the topic was last updated by the system.
  ///
  /// Read-only.
  core.String? updateTime;

  Topic({
    this.courseId,
    this.name,
    this.topicId,
    this.updateTime,
  });

  Topic.fromJson(core.Map json_)
      : this(
          courseId: json_.containsKey('courseId')
              ? json_['courseId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          topicId: json_.containsKey('topicId')
              ? json_['topicId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (courseId != null) 'courseId': courseId!,
        if (name != null) 'name': name!,
        if (topicId != null) 'topicId': topicId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request to turn in a student submission.
typedef TurnInStudentSubmissionRequest = $Empty;

/// Global information for a user.
class UserProfile {
  /// Email address of the user.
  ///
  /// Read-only.
  core.String? emailAddress;

  /// Identifier of the user.
  ///
  /// Read-only.
  core.String? id;

  /// Name of the user.
  ///
  /// Read-only.
  Name? name;

  /// Global permissions of the user.
  ///
  /// Read-only.
  core.List<GlobalPermission>? permissions;

  /// URL of user's profile photo.
  ///
  /// Read-only.
  core.String? photoUrl;

  /// Represents whether a G Suite for Education user's domain administrator has
  /// explicitly verified them as being a teacher.
  ///
  /// If the user is not a member of a G Suite for Education domain, than this
  /// field is always false. Read-only
  core.bool? verifiedTeacher;

  UserProfile({
    this.emailAddress,
    this.id,
    this.name,
    this.permissions,
    this.photoUrl,
    this.verifiedTeacher,
  });

  UserProfile.fromJson(core.Map json_)
      : this(
          emailAddress: json_.containsKey('emailAddress')
              ? json_['emailAddress'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name')
              ? Name.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => GlobalPermission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          photoUrl: json_.containsKey('photoUrl')
              ? json_['photoUrl'] as core.String
              : null,
          verifiedTeacher: json_.containsKey('verifiedTeacher')
              ? json_['verifiedTeacher'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (permissions != null) 'permissions': permissions!,
        if (photoUrl != null) 'photoUrl': photoUrl!,
        if (verifiedTeacher != null) 'verifiedTeacher': verifiedTeacher!,
      };
}

/// YouTube video item.
class YouTubeVideo {
  /// URL that can be used to view the YouTube video.
  ///
  /// Read-only.
  core.String? alternateLink;

  /// YouTube API resource ID.
  core.String? id;

  /// URL of a thumbnail image of the YouTube video.
  ///
  /// Read-only.
  core.String? thumbnailUrl;

  /// Title of the YouTube video.
  ///
  /// Read-only.
  core.String? title;

  YouTubeVideo({
    this.alternateLink,
    this.id,
    this.thumbnailUrl,
    this.title,
  });

  YouTubeVideo.fromJson(core.Map json_)
      : this(
          alternateLink: json_.containsKey('alternateLink')
              ? json_['alternateLink'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          thumbnailUrl: json_.containsKey('thumbnailUrl')
              ? json_['thumbnailUrl'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateLink != null) 'alternateLink': alternateLink!,
        if (id != null) 'id': id!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (title != null) 'title': title!,
      };
}
