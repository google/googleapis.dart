// This is a generated file (see the discoveryapis_generator project).

library googleapis.coordinate.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client coordinate/v1';

/** Lets you view and manage jobs in a Coordinate team. */
class CoordinateApi {
  /** View and manage your Google Maps Coordinate jobs */
  static const CoordinateScope = "https://www.googleapis.com/auth/coordinate";

  /** View your Google Coordinate jobs */
  static const CoordinateReadonlyScope = "https://www.googleapis.com/auth/coordinate.readonly";


  final commons.ApiRequester _requester;

  CustomFieldDefResourceApi get customFieldDef => new CustomFieldDefResourceApi(_requester);
  JobsResourceApi get jobs => new JobsResourceApi(_requester);
  LocationResourceApi get location => new LocationResourceApi(_requester);
  ScheduleResourceApi get schedule => new ScheduleResourceApi(_requester);
  TeamResourceApi get team => new TeamResourceApi(_requester);
  WorkerResourceApi get worker => new WorkerResourceApi(_requester);

  CoordinateApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "coordinate/v1/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class CustomFieldDefResourceApi {
  final commons.ApiRequester _requester;

  CustomFieldDefResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of custom field definitions for a team.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * Completes with a [CustomFieldDefListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CustomFieldDefListResponse> list(core.String teamId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/custom_fields';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CustomFieldDefListResponse.fromJson(data));
  }

}


class JobsResourceApi {
  final commons.ApiRequester _requester;

  JobsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a job, including all the changes made to the job.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> get(core.String teamId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Inserts a new job. Only the state field of the job should be set.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [title] - Job title
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Sets the value of custom fields. To set a custom field,
   * pass the field id (from /team/teamId/custom_fields), a URL escaped '='
   * character, and the desired value as a parameter. For example,
   * customField=12%3DAlice. Repeat the parameter for each custom field. Note
   * that '=' cannot appear in the parameter value. Specifying an invalid, or
   * inactive enum field will result in an error 500.
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> insert(Job request, core.String teamId, core.String address, core.double lat, core.double lng, core.String title, {core.String assignee, core.List<core.String> customField, core.String customerName, core.String customerPhoneNumber, core.String note}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (address == null) {
      throw new core.ArgumentError("Parameter address is required.");
    }
    _queryParams["address"] = [address];
    if (lat == null) {
      throw new core.ArgumentError("Parameter lat is required.");
    }
    _queryParams["lat"] = ["${lat}"];
    if (lng == null) {
      throw new core.ArgumentError("Parameter lng is required.");
    }
    _queryParams["lng"] = ["${lng}"];
    if (title == null) {
      throw new core.ArgumentError("Parameter title is required.");
    }
    _queryParams["title"] = [title];
    if (assignee != null) {
      _queryParams["assignee"] = [assignee];
    }
    if (customField != null) {
      _queryParams["customField"] = customField;
    }
    if (customerName != null) {
      _queryParams["customerName"] = [customerName];
    }
    if (customerPhoneNumber != null) {
      _queryParams["customerPhoneNumber"] = [customerPhoneNumber];
    }
    if (note != null) {
      _queryParams["note"] = [note];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Retrieves jobs created or modified since the given timestamp.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [maxResults] - Maximum number of results to return in one page.
   *
   * [minModifiedTimestampMs] - Minimum time a job was modified in milliseconds
   * since epoch.
   *
   * [omitJobChanges] - Whether to omit detail job history information.
   *
   * [pageToken] - Continuation token
   *
   * Completes with a [JobListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<JobListResponse> list(core.String teamId, {core.int maxResults, core.String minModifiedTimestampMs, core.bool omitJobChanges, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (minModifiedTimestampMs != null) {
      _queryParams["minModifiedTimestampMs"] = [minModifiedTimestampMs];
    }
    if (omitJobChanges != null) {
      _queryParams["omitJobChanges"] = ["${omitJobChanges}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new JobListResponse.fromJson(data));
  }

  /**
   * Updates a job. Fields that are set in the job state will be updated. This
   * method supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Sets the value of custom fields. To set a custom field,
   * pass the field id (from /team/teamId/custom_fields), a URL escaped '='
   * character, and the desired value as a parameter. For example,
   * customField=12%3DAlice. Repeat the parameter for each custom field. Note
   * that '=' cannot appear in the parameter value. Specifying an invalid, or
   * inactive enum field will result in an error 500.
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * [progress] - Job progress
   * Possible string values are:
   * - "COMPLETED" : Completed
   * - "IN_PROGRESS" : In progress
   * - "NOT_ACCEPTED" : Not accepted
   * - "NOT_STARTED" : Not started
   * - "OBSOLETE" : Obsolete
   *
   * [title] - Job title
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> patch(Job request, core.String teamId, core.String jobId, {core.String address, core.String assignee, core.List<core.String> customField, core.String customerName, core.String customerPhoneNumber, core.double lat, core.double lng, core.String note, core.String progress, core.String title}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (address != null) {
      _queryParams["address"] = [address];
    }
    if (assignee != null) {
      _queryParams["assignee"] = [assignee];
    }
    if (customField != null) {
      _queryParams["customField"] = customField;
    }
    if (customerName != null) {
      _queryParams["customerName"] = [customerName];
    }
    if (customerPhoneNumber != null) {
      _queryParams["customerPhoneNumber"] = [customerPhoneNumber];
    }
    if (lat != null) {
      _queryParams["lat"] = ["${lat}"];
    }
    if (lng != null) {
      _queryParams["lng"] = ["${lng}"];
    }
    if (note != null) {
      _queryParams["note"] = [note];
    }
    if (progress != null) {
      _queryParams["progress"] = [progress];
    }
    if (title != null) {
      _queryParams["title"] = [title];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

  /**
   * Updates a job. Fields that are set in the job state will be updated.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [address] - Job address as newline (Unix) separated string
   *
   * [assignee] - Assignee email address, or empty string to unassign.
   *
   * [customField] - Sets the value of custom fields. To set a custom field,
   * pass the field id (from /team/teamId/custom_fields), a URL escaped '='
   * character, and the desired value as a parameter. For example,
   * customField=12%3DAlice. Repeat the parameter for each custom field. Note
   * that '=' cannot appear in the parameter value. Specifying an invalid, or
   * inactive enum field will result in an error 500.
   *
   * [customerName] - Customer name
   *
   * [customerPhoneNumber] - Customer phone number
   *
   * [lat] - The latitude coordinate of this job's location.
   *
   * [lng] - The longitude coordinate of this job's location.
   *
   * [note] - Job note as newline (Unix) separated string
   *
   * [progress] - Job progress
   * Possible string values are:
   * - "COMPLETED" : Completed
   * - "IN_PROGRESS" : In progress
   * - "NOT_ACCEPTED" : Not accepted
   * - "NOT_STARTED" : Not started
   * - "OBSOLETE" : Obsolete
   *
   * [title] - Job title
   *
   * Completes with a [Job].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Job> update(Job request, core.String teamId, core.String jobId, {core.String address, core.String assignee, core.List<core.String> customField, core.String customerName, core.String customerPhoneNumber, core.double lat, core.double lng, core.String note, core.String progress, core.String title}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (address != null) {
      _queryParams["address"] = [address];
    }
    if (assignee != null) {
      _queryParams["assignee"] = [assignee];
    }
    if (customField != null) {
      _queryParams["customField"] = customField;
    }
    if (customerName != null) {
      _queryParams["customerName"] = [customerName];
    }
    if (customerPhoneNumber != null) {
      _queryParams["customerPhoneNumber"] = [customerPhoneNumber];
    }
    if (lat != null) {
      _queryParams["lat"] = ["${lat}"];
    }
    if (lng != null) {
      _queryParams["lng"] = ["${lng}"];
    }
    if (note != null) {
      _queryParams["note"] = [note];
    }
    if (progress != null) {
      _queryParams["progress"] = [progress];
    }
    if (title != null) {
      _queryParams["title"] = [title];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Job.fromJson(data));
  }

}


class LocationResourceApi {
  final commons.ApiRequester _requester;

  LocationResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of locations for a worker.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [workerEmail] - Worker email address.
   *
   * [startTimestampMs] - Start timestamp in milliseconds since the epoch.
   *
   * [maxResults] - Maximum number of results to return in one page.
   *
   * [pageToken] - Continuation token
   *
   * Completes with a [LocationListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LocationListResponse> list(core.String teamId, core.String workerEmail, core.String startTimestampMs, {core.int maxResults, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (workerEmail == null) {
      throw new core.ArgumentError("Parameter workerEmail is required.");
    }
    if (startTimestampMs == null) {
      throw new core.ArgumentError("Parameter startTimestampMs is required.");
    }
    _queryParams["startTimestampMs"] = [startTimestampMs];
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/workers/' + commons.Escaper.ecapeVariable('$workerEmail') + '/locations';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LocationListResponse.fromJson(data));
  }

}


class ScheduleResourceApi {
  final commons.ApiRequester _requester;

  ScheduleResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves the schedule for a job.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * Completes with a [Schedule].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Schedule> get(core.String teamId, core.String jobId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/schedule';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Schedule.fromJson(data));
  }

  /**
   * Replaces the schedule of a job with the provided schedule. This method
   * supports patch semantics.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [allDay] - Whether the job is scheduled for the whole day. Time of day in
   * start/end times is ignored if this is true.
   *
   * [duration] - Job duration in milliseconds.
   *
   * [endTime] - Scheduled end time in milliseconds since epoch.
   *
   * [startTime] - Scheduled start time in milliseconds since epoch.
   *
   * Completes with a [Schedule].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Schedule> patch(Schedule request, core.String teamId, core.String jobId, {core.bool allDay, core.String duration, core.String endTime, core.String startTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (allDay != null) {
      _queryParams["allDay"] = ["${allDay}"];
    }
    if (duration != null) {
      _queryParams["duration"] = [duration];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/schedule';

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Schedule.fromJson(data));
  }

  /**
   * Replaces the schedule of a job with the provided schedule.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * [jobId] - Job number
   *
   * [allDay] - Whether the job is scheduled for the whole day. Time of day in
   * start/end times is ignored if this is true.
   *
   * [duration] - Job duration in milliseconds.
   *
   * [endTime] - Scheduled end time in milliseconds since epoch.
   *
   * [startTime] - Scheduled start time in milliseconds since epoch.
   *
   * Completes with a [Schedule].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Schedule> update(Schedule request, core.String teamId, core.String jobId, {core.bool allDay, core.String duration, core.String endTime, core.String startTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }
    if (jobId == null) {
      throw new core.ArgumentError("Parameter jobId is required.");
    }
    if (allDay != null) {
      _queryParams["allDay"] = ["${allDay}"];
    }
    if (duration != null) {
      _queryParams["duration"] = [duration];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/jobs/' + commons.Escaper.ecapeVariable('$jobId') + '/schedule';

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Schedule.fromJson(data));
  }

}


class TeamResourceApi {
  final commons.ApiRequester _requester;

  TeamResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of teams for a user.
   *
   * Request parameters:
   *
   * [admin] - Whether to include teams for which the user has the Admin role.
   *
   * [dispatcher] - Whether to include teams for which the user has the
   * Dispatcher role.
   *
   * [worker] - Whether to include teams for which the user has the Worker role.
   *
   * Completes with a [TeamListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<TeamListResponse> list({core.bool admin, core.bool dispatcher, core.bool worker}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (admin != null) {
      _queryParams["admin"] = ["${admin}"];
    }
    if (dispatcher != null) {
      _queryParams["dispatcher"] = ["${dispatcher}"];
    }
    if (worker != null) {
      _queryParams["worker"] = ["${worker}"];
    }

    _url = 'teams';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new TeamListResponse.fromJson(data));
  }

}


class WorkerResourceApi {
  final commons.ApiRequester _requester;

  WorkerResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Retrieves a list of workers in a team.
   *
   * Request parameters:
   *
   * [teamId] - Team ID
   *
   * Completes with a [WorkerListResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WorkerListResponse> list(core.String teamId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (teamId == null) {
      throw new core.ArgumentError("Parameter teamId is required.");
    }

    _url = 'teams/' + commons.Escaper.ecapeVariable('$teamId') + '/workers';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new WorkerListResponse.fromJson(data));
  }

}



/** Custom field. */
class CustomField {
  /** Custom field id. */
  core.String customFieldId;
  /** Identifies this object as a custom field. */
  core.String kind;
  /** Custom field value. */
  core.String value;

  CustomField();

  CustomField.fromJson(core.Map _json) {
    if (_json.containsKey("customFieldId")) {
      customFieldId = _json["customFieldId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (customFieldId != null) {
      _json["customFieldId"] = customFieldId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/** Custom field definition. */
class CustomFieldDef {
  /** Whether the field is enabled. */
  core.bool enabled;
  /**
   * List of enum items for this custom field. Populated only if the field type
   * is enum. Enum fields appear as 'lists' in the Coordinate web and mobile UI.
   */
  core.List<EnumItemDef> enumitems;
  /** Custom field id. */
  core.String id;
  /** Identifies this object as a custom field definition. */
  core.String kind;
  /** Custom field name. */
  core.String name;
  /** Whether the field is required for checkout. */
  core.bool requiredForCheckout;
  /** Custom field type. */
  core.String type;

  CustomFieldDef();

  CustomFieldDef.fromJson(core.Map _json) {
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("enumitems")) {
      enumitems = _json["enumitems"].map((value) => new EnumItemDef.fromJson(value)).toList();
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("requiredForCheckout")) {
      requiredForCheckout = _json["requiredForCheckout"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (enumitems != null) {
      _json["enumitems"] = enumitems.map((value) => (value).toJson()).toList();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (requiredForCheckout != null) {
      _json["requiredForCheckout"] = requiredForCheckout;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** Collection of custom field definitions for a team. */
class CustomFieldDefListResponse {
  /** Collection of custom field definitions in a team. */
  core.List<CustomFieldDef> items;
  /**
   * Identifies this object as a collection of custom field definitions in a
   * team.
   */
  core.String kind;

  CustomFieldDefListResponse();

  CustomFieldDefListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new CustomFieldDef.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Collection of custom fields. */
class CustomFields {
  /** Collection of custom fields. */
  core.List<CustomField> customField;
  /** Identifies this object as a collection of custom fields. */
  core.String kind;

  CustomFields();

  CustomFields.fromJson(core.Map _json) {
    if (_json.containsKey("customField")) {
      customField = _json["customField"].map((value) => new CustomField.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (customField != null) {
      _json["customField"] = customField.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Enum Item definition. */
class EnumItemDef {
  /**
   * Whether the enum item is active. Jobs may contain inactive enum values;
   * however, setting an enum to an inactive value when creating or updating a
   * job will result in a 500 error.
   */
  core.bool active;
  /** Identifies this object as an enum item definition. */
  core.String kind;
  /** Custom field value. */
  core.String value;

  EnumItemDef();

  EnumItemDef.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (active != null) {
      _json["active"] = active;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/** A job. */
class Job {
  /** Job id. */
  core.String id;
  /**
   * List of job changes since it was created. The first change corresponds to
   * the state of the job when it was created.
   */
  core.List<JobChange> jobChange;
  /** Identifies this object as a job. */
  core.String kind;
  /** Current job state. */
  JobState state;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("jobChange")) {
      jobChange = _json["jobChange"].map((value) => new JobChange.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("state")) {
      state = new JobState.fromJson(_json["state"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (jobChange != null) {
      _json["jobChange"] = jobChange.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (state != null) {
      _json["state"] = (state).toJson();
    }
    return _json;
  }
}

/** Change to a job. For example assigning the job to a different worker. */
class JobChange {
  /** Identifies this object as a job change. */
  core.String kind;
  /** Change applied to the job. Only the fields that were changed are set. */
  JobState state;
  /** Time at which this change was applied. */
  core.String timestamp;

  JobChange();

  JobChange.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("state")) {
      state = new JobState.fromJson(_json["state"]);
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (state != null) {
      _json["state"] = (state).toJson();
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    return _json;
  }
}

/** Response from a List Jobs request. */
class JobListResponse {
  /** Jobs in the collection. */
  core.List<Job> items;
  /** Identifies this object as a list of jobs. */
  core.String kind;
  /** A token to provide to get the next page of results. */
  core.String nextPageToken;

  JobListResponse();

  JobListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Job.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Current state of a job. */
class JobState {
  /**
   * Email address of the assignee, or the string "DELETED_USER" if the account
   * is no longer available.
   */
  core.String assignee;
  /** Custom fields. */
  CustomFields customFields;
  /** Customer name. */
  core.String customerName;
  /** Customer phone number. */
  core.String customerPhoneNumber;
  /** Identifies this object as a job state. */
  core.String kind;
  /** Job location. */
  Location location;
  /** Note added to the job. */
  core.List<core.String> note;
  /** Job progress. */
  core.String progress;
  /** Job title. */
  core.String title;

  JobState();

  JobState.fromJson(core.Map _json) {
    if (_json.containsKey("assignee")) {
      assignee = _json["assignee"];
    }
    if (_json.containsKey("customFields")) {
      customFields = new CustomFields.fromJson(_json["customFields"]);
    }
    if (_json.containsKey("customerName")) {
      customerName = _json["customerName"];
    }
    if (_json.containsKey("customerPhoneNumber")) {
      customerPhoneNumber = _json["customerPhoneNumber"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("location")) {
      location = new Location.fromJson(_json["location"]);
    }
    if (_json.containsKey("note")) {
      note = _json["note"];
    }
    if (_json.containsKey("progress")) {
      progress = _json["progress"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (assignee != null) {
      _json["assignee"] = assignee;
    }
    if (customFields != null) {
      _json["customFields"] = (customFields).toJson();
    }
    if (customerName != null) {
      _json["customerName"] = customerName;
    }
    if (customerPhoneNumber != null) {
      _json["customerPhoneNumber"] = customerPhoneNumber;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (note != null) {
      _json["note"] = note;
    }
    if (progress != null) {
      _json["progress"] = progress;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/** Location of a job. */
class Location {
  /** Address. */
  core.List<core.String> addressLine;
  /** Identifies this object as a location. */
  core.String kind;
  /** Latitude. */
  core.double lat;
  /** Longitude. */
  core.double lng;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("addressLine")) {
      addressLine = _json["addressLine"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("lat")) {
      lat = _json["lat"];
    }
    if (_json.containsKey("lng")) {
      lng = _json["lng"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (addressLine != null) {
      _json["addressLine"] = addressLine;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (lat != null) {
      _json["lat"] = lat;
    }
    if (lng != null) {
      _json["lng"] = lng;
    }
    return _json;
  }
}

/** Response from a List Locations request. */
class LocationListResponse {
  /** Locations in the collection. */
  core.List<LocationRecord> items;
  /** Identifies this object as a list of locations. */
  core.String kind;
  /** A token to provide to get the next page of results. */
  core.String nextPageToken;
  /** Pagination information for token pagination. */
  TokenPagination tokenPagination;

  LocationListResponse();

  LocationListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new LocationRecord.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("tokenPagination")) {
      tokenPagination = new TokenPagination.fromJson(_json["tokenPagination"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (tokenPagination != null) {
      _json["tokenPagination"] = (tokenPagination).toJson();
    }
    return _json;
  }
}

/** Recorded location of a worker. */
class LocationRecord {
  /** The collection time in milliseconds since the epoch. */
  core.String collectionTime;
  /**
   * The location accuracy in meters. This is the radius of a 95% confidence
   * interval around the location measurement.
   */
  core.double confidenceRadius;
  /** Identifies this object as a location. */
  core.String kind;
  /** Latitude. */
  core.double latitude;
  /** Longitude. */
  core.double longitude;

  LocationRecord();

  LocationRecord.fromJson(core.Map _json) {
    if (_json.containsKey("collectionTime")) {
      collectionTime = _json["collectionTime"];
    }
    if (_json.containsKey("confidenceRadius")) {
      confidenceRadius = _json["confidenceRadius"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("latitude")) {
      latitude = _json["latitude"];
    }
    if (_json.containsKey("longitude")) {
      longitude = _json["longitude"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (collectionTime != null) {
      _json["collectionTime"] = collectionTime;
    }
    if (confidenceRadius != null) {
      _json["confidenceRadius"] = confidenceRadius;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (latitude != null) {
      _json["latitude"] = latitude;
    }
    if (longitude != null) {
      _json["longitude"] = longitude;
    }
    return _json;
  }
}

/** Job schedule. */
class Schedule {
  /**
   * Whether the job is scheduled for the whole day. Time of day in start/end
   * times is ignored if this is true.
   */
  core.bool allDay;
  /** Job duration in milliseconds. */
  core.String duration;
  /** Scheduled end time in milliseconds since epoch. */
  core.String endTime;
  /** Identifies this object as a job schedule. */
  core.String kind;
  /** Scheduled start time in milliseconds since epoch. */
  core.String startTime;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey("allDay")) {
      allDay = _json["allDay"];
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allDay != null) {
      _json["allDay"] = allDay;
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** A Coordinate team. */
class Team {
  /**
   * Team id, as found in a coordinate team url e.g.
   * https://coordinate.google.com/f/xyz where "xyz" is the team id.
   */
  core.String id;
  /** Identifies this object as a team. */
  core.String kind;
  /** Team name */
  core.String name;

  Team();

  Team.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Response from a List Teams request. */
class TeamListResponse {
  /** Teams in the collection. */
  core.List<Team> items;
  /** Identifies this object as a list of teams. */
  core.String kind;

  TeamListResponse();

  TeamListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Team.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Pagination information. */
class TokenPagination {
  /** Identifies this object as pagination information. */
  core.String kind;
  /** A token to provide to get the next page of results. */
  core.String nextPageToken;
  /** A token to provide to get the previous page of results. */
  core.String previousPageToken;

  TokenPagination();

  TokenPagination.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("previousPageToken")) {
      previousPageToken = _json["previousPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (previousPageToken != null) {
      _json["previousPageToken"] = previousPageToken;
    }
    return _json;
  }
}

/** A worker in a Coordinate team. */
class Worker {
  /**
   * Worker email address. If a worker has been deleted from your team, the
   * email address will appear as DELETED_USER.
   */
  core.String id;
  /** Identifies this object as a worker. */
  core.String kind;

  Worker();

  Worker.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/** Response from a List Workers request. */
class WorkerListResponse {
  /** Workers in the collection. */
  core.List<Worker> items;
  /** Identifies this object as a list of workers. */
  core.String kind;

  WorkerListResponse();

  WorkerListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new Worker.fromJson(value)).toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}
