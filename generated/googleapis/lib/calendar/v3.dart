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

/// Calendar API - v3
///
/// Manipulates events and other calendar data.
///
/// For more information, see
/// <https://developers.google.com/google-apps/calendar/firstapp>
///
/// Create an instance of [CalendarApi] to access these resources:
///
/// - [AclResource]
/// - [CalendarListResource]
/// - [CalendarsResource]
/// - [ChannelsResource]
/// - [ColorsResource]
/// - [EventsResource]
/// - [FreebusyResource]
/// - [SettingsResource]
library calendar.v3;

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

/// Manipulates events and other calendar data.
class CalendarApi {
  /// See, edit, share, and permanently delete all the calendars you can access
  /// using Google Calendar
  static const calendarScope = 'https://www.googleapis.com/auth/calendar';

  /// View and edit events on all your calendars
  static const calendarEventsScope =
      'https://www.googleapis.com/auth/calendar.events';

  /// View events on all your calendars
  static const calendarEventsReadonlyScope =
      'https://www.googleapis.com/auth/calendar.events.readonly';

  /// See and download any calendar you can access using your Google Calendar
  static const calendarReadonlyScope =
      'https://www.googleapis.com/auth/calendar.readonly';

  /// View your Calendar settings
  static const calendarSettingsReadonlyScope =
      'https://www.googleapis.com/auth/calendar.settings.readonly';

  final commons.ApiRequester _requester;

  AclResource get acl => AclResource(_requester);
  CalendarListResource get calendarList => CalendarListResource(_requester);
  CalendarsResource get calendars => CalendarsResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  ColorsResource get colors => ColorsResource(_requester);
  EventsResource get events => EventsResource(_requester);
  FreebusyResource get freebusy => FreebusyResource(_requester);
  SettingsResource get settings => SettingsResource(_requester);

  CalendarApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'calendar/v3/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AclResource {
  final commons.ApiRequester _requester;

  AclResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an access control rule.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [ruleId] - ACL rule identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String calendarId,
    core.String ruleId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/acl/' +
        commons.escapeVariable('$ruleId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns an access control rule.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [ruleId] - ACL rule identifier.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AclRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AclRule> get(
    core.String calendarId,
    core.String ruleId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/acl/' +
        commons.escapeVariable('$ruleId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AclRule.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an access control rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [sendNotifications] - Whether to send notifications about the calendar
  /// sharing change. Optional. The default is True.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AclRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AclRule> insert(
    AclRule request,
    core.String calendarId, {
    core.bool? sendNotifications,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId') + '/acl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AclRule.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the rules in the access control list for the calendar.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [showDeleted] - Whether to include deleted ACLs in the result. Deleted
  /// ACLs are represented by role equal to "none". Deleted ACLs will always be
  /// included if syncToken is provided. Optional. The default is False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// All entries deleted since the previous list request will always be in the
  /// result set and it is not allowed to set showDeleted to False.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Acl].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Acl> list(
    core.String calendarId, {
    core.int? maxResults,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId') + '/acl';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Acl.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an access control rule.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [ruleId] - ACL rule identifier.
  ///
  /// [sendNotifications] - Whether to send notifications about the calendar
  /// sharing change. Note that there are no notifications on access removal.
  /// Optional. The default is True.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AclRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AclRule> patch(
    AclRule request,
    core.String calendarId,
    core.String ruleId, {
    core.bool? sendNotifications,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/acl/' +
        commons.escapeVariable('$ruleId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AclRule.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an access control rule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [ruleId] - ACL rule identifier.
  ///
  /// [sendNotifications] - Whether to send notifications about the calendar
  /// sharing change. Note that there are no notifications on access removal.
  /// Optional. The default is True.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AclRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AclRule> update(
    AclRule request,
    core.String calendarId,
    core.String ruleId, {
    core.bool? sendNotifications,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/acl/' +
        commons.escapeVariable('$ruleId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AclRule.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watch for changes to ACL resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [showDeleted] - Whether to include deleted ACLs in the result. Deleted
  /// ACLs are represented by role equal to "none". Deleted ACLs will always be
  /// included if syncToken is provided. Optional. The default is False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// All entries deleted since the previous list request will always be in the
  /// result set and it is not allowed to set showDeleted to False.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request,
    core.String calendarId, {
    core.int? maxResults,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/acl/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CalendarListResource {
  final commons.ApiRequester _requester;

  CalendarListResource(commons.ApiRequester client) : _requester = client;

  /// Removes a calendar from the user's calendar list.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'users/me/calendarList/' + commons.escapeVariable('$calendarId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns a calendar from the user's calendar list.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarListEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarListEntry> get(
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'users/me/calendarList/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CalendarListEntry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an existing calendar into the user's calendar list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [colorRgbFormat] - Whether to use the foregroundColor and backgroundColor
  /// fields to write the calendar colors (RGB). If this feature is used, the
  /// index-based colorId field will be set to the best matching option
  /// automatically. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarListEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarListEntry> insert(
    CalendarListEntry request, {
    core.bool? colorRgbFormat,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (colorRgbFormat != null) 'colorRgbFormat': ['${colorRgbFormat}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'users/me/calendarList';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarListEntry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the calendars on the user's calendar list.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [minAccessRole] - The minimum access role for the user in the returned
  /// entries. Optional. The default is no restriction.
  /// Possible string values are:
  /// - "freeBusyReader" : The user can read free/busy information.
  /// - "owner" : The user can read and modify events and access control lists.
  /// - "reader" : The user can read events that are not private.
  /// - "writer" : The user can read and modify events.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [showDeleted] - Whether to include deleted calendar list entries in the
  /// result. Optional. The default is False.
  ///
  /// [showHidden] - Whether to show hidden entries. Optional. The default is
  /// False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then. If
  /// only read-only fields such as calendar properties or ACLs have changed,
  /// the entry won't be returned. All entries deleted and hidden since the
  /// previous list request will always be in the result set and it is not
  /// allowed to set showDeleted neither showHidden to False.
  /// To ensure client state consistency minAccessRole query parameter cannot be
  /// specified together with nextSyncToken.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarList> list({
    core.int? maxResults,
    core.String? minAccessRole,
    core.String? pageToken,
    core.bool? showDeleted,
    core.bool? showHidden,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (minAccessRole != null) 'minAccessRole': [minAccessRole],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (showHidden != null) 'showHidden': ['${showHidden}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'users/me/calendarList';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CalendarList.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing calendar on the user's calendar list.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [colorRgbFormat] - Whether to use the foregroundColor and backgroundColor
  /// fields to write the calendar colors (RGB). If this feature is used, the
  /// index-based colorId field will be set to the best matching option
  /// automatically. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarListEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarListEntry> patch(
    CalendarListEntry request,
    core.String calendarId, {
    core.bool? colorRgbFormat,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (colorRgbFormat != null) 'colorRgbFormat': ['${colorRgbFormat}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'users/me/calendarList/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarListEntry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing calendar on the user's calendar list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [colorRgbFormat] - Whether to use the foregroundColor and backgroundColor
  /// fields to write the calendar colors (RGB). If this feature is used, the
  /// index-based colorId field will be set to the best matching option
  /// automatically. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CalendarListEntry].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CalendarListEntry> update(
    CalendarListEntry request,
    core.String calendarId, {
    core.bool? colorRgbFormat,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (colorRgbFormat != null) 'colorRgbFormat': ['${colorRgbFormat}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'users/me/calendarList/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CalendarListEntry.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watch for changes to CalendarList resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [minAccessRole] - The minimum access role for the user in the returned
  /// entries. Optional. The default is no restriction.
  /// Possible string values are:
  /// - "freeBusyReader" : The user can read free/busy information.
  /// - "owner" : The user can read and modify events and access control lists.
  /// - "reader" : The user can read events that are not private.
  /// - "writer" : The user can read and modify events.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [showDeleted] - Whether to include deleted calendar list entries in the
  /// result. Optional. The default is False.
  ///
  /// [showHidden] - Whether to show hidden entries. Optional. The default is
  /// False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then. If
  /// only read-only fields such as calendar properties or ACLs have changed,
  /// the entry won't be returned. All entries deleted and hidden since the
  /// previous list request will always be in the result set and it is not
  /// allowed to set showDeleted neither showHidden to False.
  /// To ensure client state consistency minAccessRole query parameter cannot be
  /// specified together with nextSyncToken.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request, {
    core.int? maxResults,
    core.String? minAccessRole,
    core.String? pageToken,
    core.bool? showDeleted,
    core.bool? showHidden,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (minAccessRole != null) 'minAccessRole': [minAccessRole],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (showHidden != null) 'showHidden': ['${showHidden}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'users/me/calendarList/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class CalendarsResource {
  final commons.ApiRequester _requester;

  CalendarsResource(commons.ApiRequester client) : _requester = client;

  /// Clears a primary calendar.
  ///
  /// This operation deletes all events associated with the primary calendar of
  /// an account.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> clear(
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/clear';

    await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Deletes a secondary calendar.
  ///
  /// Use calendars.clear for clearing all events on primary calendars.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns metadata for a calendar.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Calendar].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Calendar> get(
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Calendar.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a secondary calendar.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Calendar].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Calendar> insert(
    Calendar request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'calendars';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Calendar.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates metadata for a calendar.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Calendar].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Calendar> patch(
    Calendar request,
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Calendar.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates metadata for a calendar.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Calendar].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Calendar> update(
    Calendar request,
    core.String calendarId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' + commons.escapeVariable('$calendarId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Calendar.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> stop(
    Channel request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'channels/stop';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class ColorsResource {
  final commons.ApiRequester _requester;

  ColorsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the color definitions for calendars and events.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Colors].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Colors> get({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'colors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Colors.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class EventsResource {
  final commons.ApiRequester _requester;

  EventsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes an event.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [eventId] - Event identifier.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the deletion of the event. Note that
  /// some emails might still be sent even if you set the value to false. The
  /// default is false.
  ///
  /// [sendUpdates] - Guests who should receive notifications about the deletion
  /// of the event.
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. For calendar migration tasks,
  /// consider using the Events.import method instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String calendarId,
    core.String eventId, {
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId');

    await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }

  /// Returns an event based on its Google Calendar ID.
  ///
  /// To retrieve an event using its iCalendar ID, call the events.list method
  /// using the iCalUID parameter.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [eventId] - Event identifier.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [timeZone] - Time zone used in the response. Optional. The default is the
  /// time zone of the calendar.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> get(
    core.String calendarId,
    core.String eventId, {
    core.bool? alwaysIncludeEmail,
    core.int? maxAttendees,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports an event.
  ///
  /// This operation is used to add a private copy of an existing event to a
  /// calendar.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [conferenceDataVersion] - Version number of conference data supported by
  /// the API client. Version 0 assumes no conference data support and ignores
  /// conference data in the event's body. Version 1 enables support for copying
  /// of ConferenceData as well as for creating new conferences using the
  /// createRequest field of conferenceData. The default is 0.
  /// Value must be between "0" and "1".
  ///
  /// [supportsAttachments] - Whether API client performing operation supports
  /// event attachments. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> import(
    Event request,
    core.String calendarId, {
    core.int? conferenceDataVersion,
    core.bool? supportsAttachments,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conferenceDataVersion != null)
        'conferenceDataVersion': ['${conferenceDataVersion}'],
      if (supportsAttachments != null)
        'supportsAttachments': ['${supportsAttachments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/events/import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [conferenceDataVersion] - Version number of conference data supported by
  /// the API client. Version 0 assumes no conference data support and ignores
  /// conference data in the event's body. Version 1 enables support for copying
  /// of ConferenceData as well as for creating new conferences using the
  /// createRequest field of conferenceData. The default is 0.
  /// Value must be between "0" and "1".
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the creation of the new event. Note
  /// that some emails might still be sent even if you set the value to false.
  /// The default is false.
  ///
  /// [sendUpdates] - Whether to send notifications about the creation of the
  /// new event. Note that some emails might still be sent. The default is
  /// false.
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. Warning: Using the value none can
  /// have significant adverse effects, including events not syncing to external
  /// calendars or events being lost altogether for some users. For calendar
  /// migration tasks, consider using the events.import method instead.
  ///
  /// [supportsAttachments] - Whether API client performing operation supports
  /// event attachments. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> insert(
    Event request,
    core.String calendarId, {
    core.int? conferenceDataVersion,
    core.int? maxAttendees,
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.bool? supportsAttachments,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conferenceDataVersion != null)
        'conferenceDataVersion': ['${conferenceDataVersion}'],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if (supportsAttachments != null)
        'supportsAttachments': ['${supportsAttachments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/events';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns instances of the specified recurring event.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [eventId] - Recurring event identifier.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [maxResults] - Maximum number of events returned on one result page. By
  /// default the value is 250 events. The page size can never be larger than
  /// 2500 events. Optional.
  ///
  /// [originalStart] - The original start time of the instance in the result.
  /// Optional.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [showDeleted] - Whether to include deleted events (with status equals
  /// "cancelled") in the result. Cancelled instances of recurring events will
  /// still be included if singleEvents is False. Optional. The default is
  /// False.
  ///
  /// [timeMax] - Upper bound (exclusive) for an event's start time to filter
  /// by. Optional. The default is not to filter by start time. Must be an
  /// RFC3339 timestamp with mandatory time zone offset.
  ///
  /// [timeMin] - Lower bound (inclusive) for an event's end time to filter by.
  /// Optional. The default is not to filter by end time. Must be an RFC3339
  /// timestamp with mandatory time zone offset.
  ///
  /// [timeZone] - Time zone used in the response. Optional. The default is the
  /// time zone of the calendar.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Events].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Events> instances(
    core.String calendarId,
    core.String eventId, {
    core.bool? alwaysIncludeEmail,
    core.int? maxAttendees,
    core.int? maxResults,
    core.String? originalStart,
    core.String? pageToken,
    core.bool? showDeleted,
    core.DateTime? timeMax,
    core.DateTime? timeMin,
    core.String? timeZone,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (originalStart != null) 'originalStart': [originalStart],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (timeMax != null) 'timeMax': [timeMax.toUtc().toIso8601String()],
      if (timeMin != null) 'timeMin': [timeMin.toUtc().toIso8601String()],
      if (timeZone != null) 'timeZone': [timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId') +
        '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Events.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns events on the specified calendar.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [iCalUID] - Specifies an event ID in the iCalendar format to be provided
  /// in the response. Optional. Use this if you want to search for an event by
  /// its iCalendar ID.
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [maxResults] - Maximum number of events returned on one result page. The
  /// number of events in the resulting page may be less than this value, or
  /// none at all, even if there are more events matching the query. Incomplete
  /// pages can be detected by a non-empty nextPageToken field in the response.
  /// By default the value is 250 events. The page size can never be larger than
  /// 2500 events. Optional.
  ///
  /// [orderBy] - The order of the events returned in the result. Optional. The
  /// default is an unspecified, stable order.
  /// Possible string values are:
  /// - "startTime" : Order by the start date/time (ascending). This is only
  /// available when querying single events (i.e. the parameter singleEvents is
  /// True)
  /// - "updated" : Order by last modification time (ascending).
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [privateExtendedProperty] - Extended properties constraint specified as
  /// propertyName=value. Matches only private properties. This parameter might
  /// be repeated multiple times to return events that match all given
  /// constraints.
  ///
  /// [q] - Free text search terms to find events that match these terms in the
  /// following fields: summary, description, location, attendee's displayName,
  /// attendee's email. Optional.
  ///
  /// [sharedExtendedProperty] - Extended properties constraint specified as
  /// propertyName=value. Matches only shared properties. This parameter might
  /// be repeated multiple times to return events that match all given
  /// constraints.
  ///
  /// [showDeleted] - Whether to include deleted events (with status equals
  /// "cancelled") in the result. Cancelled instances of recurring events (but
  /// not the underlying recurring event) will still be included if showDeleted
  /// and singleEvents are both False. If showDeleted and singleEvents are both
  /// True, only single instances of deleted events (but not the underlying
  /// recurring events) are returned. Optional. The default is False.
  ///
  /// [showHiddenInvitations] - Whether to include hidden invitations in the
  /// result. Optional. The default is False.
  ///
  /// [singleEvents] - Whether to expand recurring events into instances and
  /// only return single one-off events and instances of recurring events, but
  /// not the underlying recurring events themselves. Optional. The default is
  /// False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// All events deleted since the previous list request will always be in the
  /// result set and it is not allowed to set showDeleted to False.
  /// There are several query parameters that cannot be specified together with
  /// nextSyncToken to ensure consistency of the client state.
  ///
  /// These are:
  /// - iCalUID
  /// - orderBy
  /// - privateExtendedProperty
  /// - q
  /// - sharedExtendedProperty
  /// - timeMin
  /// - timeMax
  /// - updatedMin If the syncToken expires, the server will respond with a 410
  /// GONE response code and the client should clear its storage and perform a
  /// full synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [timeMax] - Upper bound (exclusive) for an event's start time to filter
  /// by. Optional. The default is not to filter by start time. Must be an
  /// RFC3339 timestamp with mandatory time zone offset, for example,
  /// 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
  /// provided but are ignored. If timeMin is set, timeMax must be greater than
  /// timeMin.
  ///
  /// [timeMin] - Lower bound (exclusive) for an event's end time to filter by.
  /// Optional. The default is not to filter by end time. Must be an RFC3339
  /// timestamp with mandatory time zone offset, for example,
  /// 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
  /// provided but are ignored. If timeMax is set, timeMin must be smaller than
  /// timeMax.
  ///
  /// [timeZone] - Time zone used in the response. Optional. The default is the
  /// time zone of the calendar.
  ///
  /// [updatedMin] - Lower bound for an event's last modification time (as a
  /// RFC3339 timestamp) to filter by. When specified, entries deleted since
  /// this time will always be included regardless of showDeleted. Optional. The
  /// default is not to filter by last modification time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Events].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Events> list(
    core.String calendarId, {
    core.bool? alwaysIncludeEmail,
    core.String? iCalUID,
    core.int? maxAttendees,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.List<core.String>? privateExtendedProperty,
    core.String? q,
    core.List<core.String>? sharedExtendedProperty,
    core.bool? showDeleted,
    core.bool? showHiddenInvitations,
    core.bool? singleEvents,
    core.String? syncToken,
    core.DateTime? timeMax,
    core.DateTime? timeMin,
    core.String? timeZone,
    core.DateTime? updatedMin,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (iCalUID != null) 'iCalUID': [iCalUID],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (privateExtendedProperty != null)
        'privateExtendedProperty': privateExtendedProperty,
      if (q != null) 'q': [q],
      if (sharedExtendedProperty != null)
        'sharedExtendedProperty': sharedExtendedProperty,
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (showHiddenInvitations != null)
        'showHiddenInvitations': ['${showHiddenInvitations}'],
      if (singleEvents != null) 'singleEvents': ['${singleEvents}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if (timeMax != null) 'timeMax': [timeMax.toUtc().toIso8601String()],
      if (timeMin != null) 'timeMin': [timeMin.toUtc().toIso8601String()],
      if (timeZone != null) 'timeZone': [timeZone],
      if (updatedMin != null)
        'updatedMin': [updatedMin.toUtc().toIso8601String()],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/events';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Events.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Moves an event to another calendar, i.e. changes an event's organizer.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier of the source calendar where the event
  /// currently is on.
  ///
  /// [eventId] - Event identifier.
  ///
  /// [destination] - Calendar identifier of the target calendar where the event
  /// is to be moved to.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the change of the event's organizer.
  /// Note that some emails might still be sent even if you set the value to
  /// false. The default is false.
  ///
  /// [sendUpdates] - Guests who should receive notifications about the change
  /// of the event's organizer.
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. For calendar migration tasks,
  /// consider using the Events.import method instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> move(
    core.String calendarId,
    core.String eventId,
    core.String destination, {
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'destination': [destination],
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId') +
        '/move';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an event.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [eventId] - Event identifier.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [conferenceDataVersion] - Version number of conference data supported by
  /// the API client. Version 0 assumes no conference data support and ignores
  /// conference data in the event's body. Version 1 enables support for copying
  /// of ConferenceData as well as for creating new conferences using the
  /// createRequest field of conferenceData. The default is 0.
  /// Value must be between "0" and "1".
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the event update (for example,
  /// description changes, etc.). Note that some emails might still be sent even
  /// if you set the value to false. The default is false.
  ///
  /// [sendUpdates] - Guests who should receive notifications about the event
  /// update (for example, title changes, etc.).
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. For calendar migration tasks,
  /// consider using the Events.import method instead.
  ///
  /// [supportsAttachments] - Whether API client performing operation supports
  /// event attachments. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> patch(
    Event request,
    core.String calendarId,
    core.String eventId, {
    core.bool? alwaysIncludeEmail,
    core.int? conferenceDataVersion,
    core.int? maxAttendees,
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.bool? supportsAttachments,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (conferenceDataVersion != null)
        'conferenceDataVersion': ['${conferenceDataVersion}'],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if (supportsAttachments != null)
        'supportsAttachments': ['${supportsAttachments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an event based on a simple text string.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [text] - The text describing the event to be created.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the creation of the event. Note that
  /// some emails might still be sent even if you set the value to false. The
  /// default is false.
  ///
  /// [sendUpdates] - Guests who should receive notifications about the creation
  /// of the new event.
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. For calendar migration tasks,
  /// consider using the Events.import method instead.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> quickAdd(
    core.String calendarId,
    core.String text, {
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'text': [text],
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/quickAdd';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [eventId] - Event identifier.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [conferenceDataVersion] - Version number of conference data supported by
  /// the API client. Version 0 assumes no conference data support and ignores
  /// conference data in the event's body. Version 1 enables support for copying
  /// of ConferenceData as well as for creating new conferences using the
  /// createRequest field of conferenceData. The default is 0.
  /// Value must be between "0" and "1".
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [sendNotifications] - Deprecated. Please use sendUpdates instead.
  ///
  /// Whether to send notifications about the event update (for example,
  /// description changes, etc.). Note that some emails might still be sent even
  /// if you set the value to false. The default is false.
  ///
  /// [sendUpdates] - Guests who should receive notifications about the event
  /// update (for example, title changes, etc.).
  /// Possible string values are:
  /// - "all" : Notifications are sent to all guests.
  /// - "externalOnly" : Notifications are sent to non-Google Calendar guests
  /// only.
  /// - "none" : No notifications are sent. For calendar migration tasks,
  /// consider using the Events.import method instead.
  ///
  /// [supportsAttachments] - Whether API client performing operation supports
  /// event attachments. Optional. The default is False.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> update(
    Event request,
    core.String calendarId,
    core.String eventId, {
    core.bool? alwaysIncludeEmail,
    core.int? conferenceDataVersion,
    core.int? maxAttendees,
    core.bool? sendNotifications,
    core.String? sendUpdates,
    core.bool? supportsAttachments,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (conferenceDataVersion != null)
        'conferenceDataVersion': ['${conferenceDataVersion}'],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (sendNotifications != null)
        'sendNotifications': ['${sendNotifications}'],
      if (sendUpdates != null) 'sendUpdates': [sendUpdates],
      if (supportsAttachments != null)
        'supportsAttachments': ['${supportsAttachments}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'calendars/' +
        commons.escapeVariable('$calendarId') +
        '/events/' +
        commons.escapeVariable('$eventId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watch for changes to Events resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [calendarId] - Calendar identifier. To retrieve calendar IDs call the
  /// calendarList.list method. If you want to access the primary calendar of
  /// the currently logged in user, use the "primary" keyword.
  ///
  /// [alwaysIncludeEmail] - Deprecated and ignored. A value will always be
  /// returned in the email field for the organizer, creator and attendees, even
  /// if no real email address is available (i.e. a generated, non-working value
  /// will be provided).
  ///
  /// [iCalUID] - Specifies an event ID in the iCalendar format to be provided
  /// in the response. Optional. Use this if you want to search for an event by
  /// its iCalendar ID.
  ///
  /// [maxAttendees] - The maximum number of attendees to include in the
  /// response. If there are more than the specified number of attendees, only
  /// the participant is returned. Optional.
  ///
  /// [maxResults] - Maximum number of events returned on one result page. The
  /// number of events in the resulting page may be less than this value, or
  /// none at all, even if there are more events matching the query. Incomplete
  /// pages can be detected by a non-empty nextPageToken field in the response.
  /// By default the value is 250 events. The page size can never be larger than
  /// 2500 events. Optional.
  ///
  /// [orderBy] - The order of the events returned in the result. Optional. The
  /// default is an unspecified, stable order.
  /// Possible string values are:
  /// - "startTime" : Order by the start date/time (ascending). This is only
  /// available when querying single events (i.e. the parameter singleEvents is
  /// True)
  /// - "updated" : Order by last modification time (ascending).
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [privateExtendedProperty] - Extended properties constraint specified as
  /// propertyName=value. Matches only private properties. This parameter might
  /// be repeated multiple times to return events that match all given
  /// constraints.
  ///
  /// [q] - Free text search terms to find events that match these terms in the
  /// following fields: summary, description, location, attendee's displayName,
  /// attendee's email. Optional.
  ///
  /// [sharedExtendedProperty] - Extended properties constraint specified as
  /// propertyName=value. Matches only shared properties. This parameter might
  /// be repeated multiple times to return events that match all given
  /// constraints.
  ///
  /// [showDeleted] - Whether to include deleted events (with status equals
  /// "cancelled") in the result. Cancelled instances of recurring events (but
  /// not the underlying recurring event) will still be included if showDeleted
  /// and singleEvents are both False. If showDeleted and singleEvents are both
  /// True, only single instances of deleted events (but not the underlying
  /// recurring events) are returned. Optional. The default is False.
  ///
  /// [showHiddenInvitations] - Whether to include hidden invitations in the
  /// result. Optional. The default is False.
  ///
  /// [singleEvents] - Whether to expand recurring events into instances and
  /// only return single one-off events and instances of recurring events, but
  /// not the underlying recurring events themselves. Optional. The default is
  /// False.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// All events deleted since the previous list request will always be in the
  /// result set and it is not allowed to set showDeleted to False.
  /// There are several query parameters that cannot be specified together with
  /// nextSyncToken to ensure consistency of the client state.
  ///
  /// These are:
  /// - iCalUID
  /// - orderBy
  /// - privateExtendedProperty
  /// - q
  /// - sharedExtendedProperty
  /// - timeMin
  /// - timeMax
  /// - updatedMin If the syncToken expires, the server will respond with a 410
  /// GONE response code and the client should clear its storage and perform a
  /// full synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [timeMax] - Upper bound (exclusive) for an event's start time to filter
  /// by. Optional. The default is not to filter by start time. Must be an
  /// RFC3339 timestamp with mandatory time zone offset, for example,
  /// 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
  /// provided but are ignored. If timeMin is set, timeMax must be greater than
  /// timeMin.
  ///
  /// [timeMin] - Lower bound (exclusive) for an event's end time to filter by.
  /// Optional. The default is not to filter by end time. Must be an RFC3339
  /// timestamp with mandatory time zone offset, for example,
  /// 2011-06-03T10:00:00-07:00, 2011-06-03T10:00:00Z. Milliseconds may be
  /// provided but are ignored. If timeMax is set, timeMin must be smaller than
  /// timeMax.
  ///
  /// [timeZone] - Time zone used in the response. Optional. The default is the
  /// time zone of the calendar.
  ///
  /// [updatedMin] - Lower bound for an event's last modification time (as a
  /// RFC3339 timestamp) to filter by. When specified, entries deleted since
  /// this time will always be included regardless of showDeleted. Optional. The
  /// default is not to filter by last modification time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request,
    core.String calendarId, {
    core.bool? alwaysIncludeEmail,
    core.String? iCalUID,
    core.int? maxAttendees,
    core.int? maxResults,
    core.String? orderBy,
    core.String? pageToken,
    core.List<core.String>? privateExtendedProperty,
    core.String? q,
    core.List<core.String>? sharedExtendedProperty,
    core.bool? showDeleted,
    core.bool? showHiddenInvitations,
    core.bool? singleEvents,
    core.String? syncToken,
    core.DateTime? timeMax,
    core.DateTime? timeMin,
    core.String? timeZone,
    core.DateTime? updatedMin,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (alwaysIncludeEmail != null)
        'alwaysIncludeEmail': ['${alwaysIncludeEmail}'],
      if (iCalUID != null) 'iCalUID': [iCalUID],
      if (maxAttendees != null) 'maxAttendees': ['${maxAttendees}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageToken != null) 'pageToken': [pageToken],
      if (privateExtendedProperty != null)
        'privateExtendedProperty': privateExtendedProperty,
      if (q != null) 'q': [q],
      if (sharedExtendedProperty != null)
        'sharedExtendedProperty': sharedExtendedProperty,
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (showHiddenInvitations != null)
        'showHiddenInvitations': ['${showHiddenInvitations}'],
      if (singleEvents != null) 'singleEvents': ['${singleEvents}'],
      if (syncToken != null) 'syncToken': [syncToken],
      if (timeMax != null) 'timeMax': [timeMax.toUtc().toIso8601String()],
      if (timeMin != null) 'timeMin': [timeMin.toUtc().toIso8601String()],
      if (timeZone != null) 'timeZone': [timeZone],
      if (updatedMin != null)
        'updatedMin': [updatedMin.toUtc().toIso8601String()],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'calendars/' + commons.escapeVariable('$calendarId') + '/events/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FreebusyResource {
  final commons.ApiRequester _requester;

  FreebusyResource(commons.ApiRequester client) : _requester = client;

  /// Returns free/busy information for a set of calendars.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FreeBusyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FreeBusyResponse> query(
    FreeBusyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'freeBusy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FreeBusyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SettingsResource {
  final commons.ApiRequester _requester;

  SettingsResource(commons.ApiRequester client) : _requester = client;

  /// Returns a single user setting.
  ///
  /// Request parameters:
  ///
  /// [setting] - The id of the user setting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Setting].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Setting> get(
    core.String setting, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'users/me/settings/' + commons.escapeVariable('$setting');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Setting.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all user settings for the authenticated user.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'users/me/settings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watch for changes to Settings resources.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - Maximum number of entries returned on one result page. By
  /// default the value is 100 entries. The page size can never be larger than
  /// 250 entries. Optional.
  ///
  /// [pageToken] - Token specifying which result page to return. Optional.
  ///
  /// [syncToken] - Token obtained from the nextSyncToken field returned on the
  /// last page of results from the previous list request. It makes the result
  /// of this list request contain only entries that have changed since then.
  /// If the syncToken expires, the server will respond with a 410 GONE response
  /// code and the client should clear its storage and perform a full
  /// synchronization without any syncToken.
  /// Learn more about incremental synchronization.
  /// Optional. The default is to return all entries.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> watch(
    Channel request, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? syncToken,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (syncToken != null) 'syncToken': [syncToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'users/me/settings/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class Acl {
  /// ETag of the collection.
  core.String? etag;

  /// List of rules on the access control list.
  core.List<AclRule>? items;

  /// Type of the collection ("calendar#acl").
  core.String? kind;

  /// Token used to access the next page of this result.
  ///
  /// Omitted if no further results are available, in which case nextSyncToken
  /// is provided.
  core.String? nextPageToken;

  /// Token used at a later point in time to retrieve only the entries that have
  /// changed since this result was returned.
  ///
  /// Omitted if further results are available, in which case nextPageToken is
  /// provided.
  core.String? nextSyncToken;

  Acl({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.nextSyncToken,
  });

  Acl.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => AclRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
      };
}

/// The extent to which calendar access is granted by this ACL rule.
class AclRuleScope {
  /// The type of the scope.
  ///
  /// Possible values are:
  /// - "default" - The public scope. This is the default value.
  /// - "user" - Limits the scope to a single user.
  /// - "group" - Limits the scope to a group.
  /// - "domain" - Limits the scope to a domain. Note: The permissions granted
  /// to the "default", or public, scope apply to any user, authenticated or
  /// not.
  core.String? type;

  /// The email address of a user or group, or the name of a domain, depending
  /// on the scope type.
  ///
  /// Omitted for type "default".
  core.String? value;

  AclRuleScope({
    this.type,
    this.value,
  });

  AclRuleScope.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

class AclRule {
  /// ETag of the resource.
  core.String? etag;

  /// Identifier of the Access Control List (ACL) rule.
  ///
  /// See Sharing calendars.
  core.String? id;

  /// Type of the resource ("calendar#aclRule").
  core.String? kind;

  /// The role assigned to the scope.
  ///
  /// Possible values are:
  /// - "none" - Provides no access.
  /// - "freeBusyReader" - Provides read access to free/busy information.
  /// - "reader" - Provides read access to the calendar. Private events will
  /// appear to users with reader access, but event details will be hidden.
  /// - "writer" - Provides read and write access to the calendar. Private
  /// events will appear to users with writer access, and event details will be
  /// visible.
  /// - "owner" - Provides ownership of the calendar. This role has all of the
  /// permissions of the writer role with the additional ability to see and
  /// manipulate ACLs.
  core.String? role;

  /// The extent to which calendar access is granted by this ACL rule.
  AclRuleScope? scope;

  AclRule({
    this.etag,
    this.id,
    this.kind,
    this.role,
    this.scope,
  });

  AclRule.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
          scope: json_.containsKey('scope')
              ? AclRuleScope.fromJson(
                  json_['scope'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (role != null) 'role': role!,
        if (scope != null) 'scope': scope!,
      };
}

class Calendar {
  /// Conferencing properties for this calendar, for example what types of
  /// conferences are allowed.
  ConferenceProperties? conferenceProperties;

  /// Description of the calendar.
  ///
  /// Optional.
  core.String? description;

  /// ETag of the resource.
  core.String? etag;

  /// Identifier of the calendar.
  ///
  /// To retrieve IDs call the calendarList.list() method.
  core.String? id;

  /// Type of the resource ("calendar#calendar").
  core.String? kind;

  /// Geographic location of the calendar as free-form text.
  ///
  /// Optional.
  core.String? location;

  /// Title of the calendar.
  core.String? summary;

  /// The time zone of the calendar.
  ///
  /// (Formatted as an IANA Time Zone Database name, e.g. "Europe/Zurich".)
  /// Optional.
  core.String? timeZone;

  Calendar({
    this.conferenceProperties,
    this.description,
    this.etag,
    this.id,
    this.kind,
    this.location,
    this.summary,
    this.timeZone,
  });

  Calendar.fromJson(core.Map json_)
      : this(
          conferenceProperties: json_.containsKey('conferenceProperties')
              ? ConferenceProperties.fromJson(json_['conferenceProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conferenceProperties != null)
          'conferenceProperties': conferenceProperties!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (location != null) 'location': location!,
        if (summary != null) 'summary': summary!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

class CalendarList {
  /// ETag of the collection.
  core.String? etag;

  /// Calendars that are present on the user's calendar list.
  core.List<CalendarListEntry>? items;

  /// Type of the collection ("calendar#calendarList").
  core.String? kind;

  /// Token used to access the next page of this result.
  ///
  /// Omitted if no further results are available, in which case nextSyncToken
  /// is provided.
  core.String? nextPageToken;

  /// Token used at a later point in time to retrieve only the entries that have
  /// changed since this result was returned.
  ///
  /// Omitted if further results are available, in which case nextPageToken is
  /// provided.
  core.String? nextSyncToken;

  CalendarList({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.nextSyncToken,
  });

  CalendarList.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => CalendarListEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
      };
}

/// The notifications that the authenticated user is receiving for this
/// calendar.
class CalendarListEntryNotificationSettings {
  /// The list of notifications set for this calendar.
  core.List<CalendarNotification>? notifications;

  CalendarListEntryNotificationSettings({
    this.notifications,
  });

  CalendarListEntryNotificationSettings.fromJson(core.Map json_)
      : this(
          notifications: json_.containsKey('notifications')
              ? (json_['notifications'] as core.List)
                  .map((value) => CalendarNotification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifications != null) 'notifications': notifications!,
      };
}

class CalendarListEntry {
  /// The effective access role that the authenticated user has on the calendar.
  ///
  /// Read-only. Possible values are:
  /// - "freeBusyReader" - Provides read access to free/busy information.
  /// - "reader" - Provides read access to the calendar. Private events will
  /// appear to users with reader access, but event details will be hidden.
  /// - "writer" - Provides read and write access to the calendar. Private
  /// events will appear to users with writer access, and event details will be
  /// visible.
  /// - "owner" - Provides ownership of the calendar. This role has all of the
  /// permissions of the writer role with the additional ability to see and
  /// manipulate ACLs.
  core.String? accessRole;

  /// The main color of the calendar in the hexadecimal format "#0088aa".
  ///
  /// This property supersedes the index-based colorId property. To set or
  /// change this property, you need to specify colorRgbFormat=true in the
  /// parameters of the insert, update and patch methods. Optional.
  core.String? backgroundColor;

  /// The color of the calendar.
  ///
  /// This is an ID referring to an entry in the calendar section of the colors
  /// definition (see the colors endpoint). This property is superseded by the
  /// backgroundColor and foregroundColor properties and can be ignored when
  /// using these properties. Optional.
  core.String? colorId;

  /// Conferencing properties for this calendar, for example what types of
  /// conferences are allowed.
  ConferenceProperties? conferenceProperties;

  /// The default reminders that the authenticated user has for this calendar.
  core.List<EventReminder>? defaultReminders;

  /// Whether this calendar list entry has been deleted from the calendar list.
  ///
  /// Read-only. Optional. The default is False.
  core.bool? deleted;

  /// Description of the calendar.
  ///
  /// Optional. Read-only.
  core.String? description;

  /// ETag of the resource.
  core.String? etag;

  /// The foreground color of the calendar in the hexadecimal format "#ffffff".
  ///
  /// This property supersedes the index-based colorId property. To set or
  /// change this property, you need to specify colorRgbFormat=true in the
  /// parameters of the insert, update and patch methods. Optional.
  core.String? foregroundColor;

  /// Whether the calendar has been hidden from the list.
  ///
  /// Optional. The attribute is only returned when the calendar is hidden, in
  /// which case the value is true.
  core.bool? hidden;

  /// Identifier of the calendar.
  core.String? id;

  /// Type of the resource ("calendar#calendarListEntry").
  core.String? kind;

  /// Geographic location of the calendar as free-form text.
  ///
  /// Optional. Read-only.
  core.String? location;

  /// The notifications that the authenticated user is receiving for this
  /// calendar.
  CalendarListEntryNotificationSettings? notificationSettings;

  /// Whether the calendar is the primary calendar of the authenticated user.
  ///
  /// Read-only. Optional. The default is False.
  core.bool? primary;

  /// Whether the calendar content shows up in the calendar UI.
  ///
  /// Optional. The default is False.
  core.bool? selected;

  /// Title of the calendar.
  ///
  /// Read-only.
  core.String? summary;

  /// The summary that the authenticated user has set for this calendar.
  ///
  /// Optional.
  core.String? summaryOverride;

  /// The time zone of the calendar.
  ///
  /// Optional. Read-only.
  core.String? timeZone;

  CalendarListEntry({
    this.accessRole,
    this.backgroundColor,
    this.colorId,
    this.conferenceProperties,
    this.defaultReminders,
    this.deleted,
    this.description,
    this.etag,
    this.foregroundColor,
    this.hidden,
    this.id,
    this.kind,
    this.location,
    this.notificationSettings,
    this.primary,
    this.selected,
    this.summary,
    this.summaryOverride,
    this.timeZone,
  });

  CalendarListEntry.fromJson(core.Map json_)
      : this(
          accessRole: json_.containsKey('accessRole')
              ? json_['accessRole'] as core.String
              : null,
          backgroundColor: json_.containsKey('backgroundColor')
              ? json_['backgroundColor'] as core.String
              : null,
          colorId: json_.containsKey('colorId')
              ? json_['colorId'] as core.String
              : null,
          conferenceProperties: json_.containsKey('conferenceProperties')
              ? ConferenceProperties.fromJson(json_['conferenceProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          defaultReminders: json_.containsKey('defaultReminders')
              ? (json_['defaultReminders'] as core.List)
                  .map((value) => EventReminder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          foregroundColor: json_.containsKey('foregroundColor')
              ? json_['foregroundColor'] as core.String
              : null,
          hidden:
              json_.containsKey('hidden') ? json_['hidden'] as core.bool : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          notificationSettings: json_.containsKey('notificationSettings')
              ? CalendarListEntryNotificationSettings.fromJson(
                  json_['notificationSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          primary: json_.containsKey('primary')
              ? json_['primary'] as core.bool
              : null,
          selected: json_.containsKey('selected')
              ? json_['selected'] as core.bool
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
          summaryOverride: json_.containsKey('summaryOverride')
              ? json_['summaryOverride'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRole != null) 'accessRole': accessRole!,
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (colorId != null) 'colorId': colorId!,
        if (conferenceProperties != null)
          'conferenceProperties': conferenceProperties!,
        if (defaultReminders != null) 'defaultReminders': defaultReminders!,
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (foregroundColor != null) 'foregroundColor': foregroundColor!,
        if (hidden != null) 'hidden': hidden!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (location != null) 'location': location!,
        if (notificationSettings != null)
          'notificationSettings': notificationSettings!,
        if (primary != null) 'primary': primary!,
        if (selected != null) 'selected': selected!,
        if (summary != null) 'summary': summary!,
        if (summaryOverride != null) 'summaryOverride': summaryOverride!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

class CalendarNotification {
  /// The method used to deliver the notification.
  ///
  /// The possible value is:
  /// - "email" - Notifications are sent via email.
  /// Required when adding a notification.
  core.String? method;

  /// The type of notification.
  ///
  /// Possible values are:
  /// - "eventCreation" - Notification sent when a new event is put on the
  /// calendar.
  /// - "eventChange" - Notification sent when an event is changed.
  /// - "eventCancellation" - Notification sent when an event is cancelled.
  /// - "eventResponse" - Notification sent when an attendee responds to the
  /// event invitation.
  /// - "agenda" - An agenda with the events of the day (sent out in the
  /// morning).
  /// Required when adding a notification.
  core.String? type;

  CalendarNotification({
    this.method,
    this.type,
  });

  CalendarNotification.fromJson(core.Map json_)
      : this(
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (type != null) 'type': type!,
      };
}

typedef Channel = $Channel00;

class ColorDefinition {
  /// The background color associated with this color definition.
  core.String? background;

  /// The foreground color that can be used to write on top of a background with
  /// 'background' color.
  core.String? foreground;

  ColorDefinition({
    this.background,
    this.foreground,
  });

  ColorDefinition.fromJson(core.Map json_)
      : this(
          background: json_.containsKey('background')
              ? json_['background'] as core.String
              : null,
          foreground: json_.containsKey('foreground')
              ? json_['foreground'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (background != null) 'background': background!,
        if (foreground != null) 'foreground': foreground!,
      };
}

class Colors {
  /// A global palette of calendar colors, mapping from the color ID to its
  /// definition.
  ///
  /// A calendarListEntry resource refers to one of these color IDs in its
  /// colorId field. Read-only.
  core.Map<core.String, ColorDefinition>? calendar;

  /// A global palette of event colors, mapping from the color ID to its
  /// definition.
  ///
  /// An event resource may refer to one of these color IDs in its colorId
  /// field. Read-only.
  core.Map<core.String, ColorDefinition>? event;

  /// Type of the resource ("calendar#colors").
  core.String? kind;

  /// Last modification time of the color palette (as a RFC3339 timestamp).
  ///
  /// Read-only.
  core.DateTime? updated;

  Colors({
    this.calendar,
    this.event,
    this.kind,
    this.updated,
  });

  Colors.fromJson(core.Map json_)
      : this(
          calendar: json_.containsKey('calendar')
              ? (json_['calendar'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    ColorDefinition.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          event: json_.containsKey('event')
              ? (json_['event'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    ColorDefinition.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calendar != null) 'calendar': calendar!,
        if (event != null) 'event': event!,
        if (kind != null) 'kind': kind!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

class ConferenceData {
  /// The ID of the conference.
  /// Can be used by developers to keep track of conferences, should not be
  /// displayed to users.
  /// The ID value is formed differently for each conference solution type:
  /// - eventHangout: ID is not set.
  ///
  /// (This conference type is deprecated.)
  /// - eventNamedHangout: ID is the name of the Hangout. (This conference type
  /// is deprecated.)
  /// - hangoutsMeet: ID is the 10-letter meeting code, for example
  /// aaa-bbbb-ccc.
  /// - addOn: ID is defined by the third-party provider.  Optional.
  core.String? conferenceId;

  /// The conference solution, such as Google Meet.
  /// Unset for a conference with a failed create request.
  /// Either conferenceSolution and at least one entryPoint, or createRequest is
  /// required.
  ConferenceSolution? conferenceSolution;

  /// A request to generate a new conference and attach it to the event.
  ///
  /// The data is generated asynchronously. To see whether the data is present
  /// check the status field.
  /// Either conferenceSolution and at least one entryPoint, or createRequest is
  /// required.
  CreateConferenceRequest? createRequest;

  /// Information about individual conference entry points, such as URLs or
  /// phone numbers.
  /// All of them must belong to the same conference.
  /// Either conferenceSolution and at least one entryPoint, or createRequest is
  /// required.
  core.List<EntryPoint>? entryPoints;

  /// Additional notes (such as instructions from the domain administrator,
  /// legal notices) to display to the user.
  ///
  /// Can contain HTML. The maximum length is 2048 characters. Optional.
  core.String? notes;

  /// Additional properties related to a conference.
  ///
  /// An example would be a solution-specific setting for enabling video
  /// streaming.
  ConferenceParameters? parameters;

  /// The signature of the conference data.
  /// Generated on server side.
  /// Unset for a conference with a failed create request.
  /// Optional for a conference with a pending create request.
  core.String? signature;

  ConferenceData({
    this.conferenceId,
    this.conferenceSolution,
    this.createRequest,
    this.entryPoints,
    this.notes,
    this.parameters,
    this.signature,
  });

  ConferenceData.fromJson(core.Map json_)
      : this(
          conferenceId: json_.containsKey('conferenceId')
              ? json_['conferenceId'] as core.String
              : null,
          conferenceSolution: json_.containsKey('conferenceSolution')
              ? ConferenceSolution.fromJson(json_['conferenceSolution']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createRequest: json_.containsKey('createRequest')
              ? CreateConferenceRequest.fromJson(
                  json_['createRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          entryPoints: json_.containsKey('entryPoints')
              ? (json_['entryPoints'] as core.List)
                  .map((value) => EntryPoint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          notes:
              json_.containsKey('notes') ? json_['notes'] as core.String : null,
          parameters: json_.containsKey('parameters')
              ? ConferenceParameters.fromJson(
                  json_['parameters'] as core.Map<core.String, core.dynamic>)
              : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conferenceId != null) 'conferenceId': conferenceId!,
        if (conferenceSolution != null)
          'conferenceSolution': conferenceSolution!,
        if (createRequest != null) 'createRequest': createRequest!,
        if (entryPoints != null) 'entryPoints': entryPoints!,
        if (notes != null) 'notes': notes!,
        if (parameters != null) 'parameters': parameters!,
        if (signature != null) 'signature': signature!,
      };
}

class ConferenceParameters {
  /// Additional add-on specific data.
  ConferenceParametersAddOnParameters? addOnParameters;

  ConferenceParameters({
    this.addOnParameters,
  });

  ConferenceParameters.fromJson(core.Map json_)
      : this(
          addOnParameters: json_.containsKey('addOnParameters')
              ? ConferenceParametersAddOnParameters.fromJson(
                  json_['addOnParameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addOnParameters != null) 'addOnParameters': addOnParameters!,
      };
}

class ConferenceParametersAddOnParameters {
  core.Map<core.String, core.String>? parameters;

  ConferenceParametersAddOnParameters({
    this.parameters,
  });

  ConferenceParametersAddOnParameters.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
      };
}

class ConferenceProperties {
  /// The types of conference solutions that are supported for this calendar.
  /// The possible values are:
  /// - "eventHangout"
  /// - "eventNamedHangout"
  /// - "hangoutsMeet"  Optional.
  core.List<core.String>? allowedConferenceSolutionTypes;

  ConferenceProperties({
    this.allowedConferenceSolutionTypes,
  });

  ConferenceProperties.fromJson(core.Map json_)
      : this(
          allowedConferenceSolutionTypes:
              json_.containsKey('allowedConferenceSolutionTypes')
                  ? (json_['allowedConferenceSolutionTypes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedConferenceSolutionTypes != null)
          'allowedConferenceSolutionTypes': allowedConferenceSolutionTypes!,
      };
}

class ConferenceRequestStatus {
  /// The current status of the conference create request.
  ///
  /// Read-only.
  /// The possible values are:
  /// - "pending": the conference create request is still being processed.
  /// - "success": the conference create request succeeded, the entry points are
  /// populated.
  /// - "failure": the conference create request failed, there are no entry
  /// points.
  core.String? statusCode;

  ConferenceRequestStatus({
    this.statusCode,
  });

  ConferenceRequestStatus.fromJson(core.Map json_)
      : this(
          statusCode: json_.containsKey('statusCode')
              ? json_['statusCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (statusCode != null) 'statusCode': statusCode!,
      };
}

class ConferenceSolution {
  /// The user-visible icon for this solution.
  core.String? iconUri;

  /// The key which can uniquely identify the conference solution for this
  /// event.
  ConferenceSolutionKey? key;

  /// The user-visible name of this solution.
  ///
  /// Not localized.
  core.String? name;

  ConferenceSolution({
    this.iconUri,
    this.key,
    this.name,
  });

  ConferenceSolution.fromJson(core.Map json_)
      : this(
          iconUri: json_.containsKey('iconUri')
              ? json_['iconUri'] as core.String
              : null,
          key: json_.containsKey('key')
              ? ConferenceSolutionKey.fromJson(
                  json_['key'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iconUri != null) 'iconUri': iconUri!,
        if (key != null) 'key': key!,
        if (name != null) 'name': name!,
      };
}

class ConferenceSolutionKey {
  /// The conference solution type.
  /// If a client encounters an unfamiliar or empty type, it should still be
  /// able to display the entry points.
  ///
  /// However, it should disallow modifications.
  /// The possible values are:
  /// - "eventHangout" for Hangouts for consumers (deprecated; existing events
  /// may show this conference solution type but new conferences cannot be
  /// created)
  /// - "eventNamedHangout" for classic Hangouts for Google Workspace users
  /// (deprecated; existing events may show this conference solution type but
  /// new conferences cannot be created)
  /// - "hangoutsMeet" for Google Meet (http://meet.google.com)
  /// - "addOn" for 3P conference providers
  core.String? type;

  ConferenceSolutionKey({
    this.type,
  });

  ConferenceSolutionKey.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

class CreateConferenceRequest {
  /// The conference solution, such as Hangouts or Google Meet.
  ConferenceSolutionKey? conferenceSolutionKey;

  /// The client-generated unique ID for this request.
  /// Clients should regenerate this ID for every new request.
  ///
  /// If an ID provided is the same as for the previous request, the request is
  /// ignored.
  core.String? requestId;

  /// The status of the conference create request.
  ConferenceRequestStatus? status;

  CreateConferenceRequest({
    this.conferenceSolutionKey,
    this.requestId,
    this.status,
  });

  CreateConferenceRequest.fromJson(core.Map json_)
      : this(
          conferenceSolutionKey: json_.containsKey('conferenceSolutionKey')
              ? ConferenceSolutionKey.fromJson(json_['conferenceSolutionKey']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          status: json_.containsKey('status')
              ? ConferenceRequestStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conferenceSolutionKey != null)
          'conferenceSolutionKey': conferenceSolutionKey!,
        if (requestId != null) 'requestId': requestId!,
        if (status != null) 'status': status!,
      };
}

class EntryPoint {
  /// The access code to access the conference.
  ///
  /// The maximum length is 128 characters.
  /// When creating new conference data, populate only the subset of
  /// {meetingCode, accessCode, passcode, password, pin} fields that match the
  /// terminology that the conference provider uses. Only the populated fields
  /// should be displayed.
  /// Optional.
  core.String? accessCode;

  /// Features of the entry point, such as being toll or toll-free.
  ///
  /// One entry point can have multiple features. However, toll and toll-free
  /// cannot be both set on the same entry point.
  core.List<core.String>? entryPointFeatures;

  /// The type of the conference entry point.
  /// Possible values are:
  /// - "video" - joining a conference over HTTP.
  ///
  /// A conference can have zero or one video entry point.
  /// - "phone" - joining a conference by dialing a phone number. A conference
  /// can have zero or more phone entry points.
  /// - "sip" - joining a conference over SIP. A conference can have zero or one
  /// sip entry point.
  /// - "more" - further conference joining instructions, for example additional
  /// phone numbers. A conference can have zero or one more entry point. A
  /// conference with only a more entry point is not a valid conference.
  core.String? entryPointType;

  /// The label for the URI.
  ///
  /// Visible to end users. Not localized. The maximum length is 512 characters.
  /// Examples:
  /// - for video: meet.google.com/aaa-bbbb-ccc
  /// - for phone: +1 123 268 2601
  /// - for sip: 12345678@altostrat.com
  /// - for more: should not be filled
  /// Optional.
  core.String? label;

  /// The meeting code to access the conference.
  ///
  /// The maximum length is 128 characters.
  /// When creating new conference data, populate only the subset of
  /// {meetingCode, accessCode, passcode, password, pin} fields that match the
  /// terminology that the conference provider uses. Only the populated fields
  /// should be displayed.
  /// Optional.
  core.String? meetingCode;

  /// The passcode to access the conference.
  ///
  /// The maximum length is 128 characters.
  /// When creating new conference data, populate only the subset of
  /// {meetingCode, accessCode, passcode, password, pin} fields that match the
  /// terminology that the conference provider uses. Only the populated fields
  /// should be displayed.
  core.String? passcode;

  /// The password to access the conference.
  ///
  /// The maximum length is 128 characters.
  /// When creating new conference data, populate only the subset of
  /// {meetingCode, accessCode, passcode, password, pin} fields that match the
  /// terminology that the conference provider uses. Only the populated fields
  /// should be displayed.
  /// Optional.
  core.String? password;

  /// The PIN to access the conference.
  ///
  /// The maximum length is 128 characters.
  /// When creating new conference data, populate only the subset of
  /// {meetingCode, accessCode, passcode, password, pin} fields that match the
  /// terminology that the conference provider uses. Only the populated fields
  /// should be displayed.
  /// Optional.
  core.String? pin;

  /// The CLDR/ISO 3166 region code for the country associated with this phone
  /// access.
  ///
  /// Example: "SE" for Sweden.
  /// Calendar backend will populate this field only for EntryPointType.PHONE.
  core.String? regionCode;

  /// The URI of the entry point.
  ///
  /// The maximum length is 1300 characters.
  /// Format:
  /// - for video, http: or https: schema is required.
  /// - for phone, tel: schema is required. The URI should include the entire
  /// dial sequence (e.g., tel:+12345678900,,,123456789;1234).
  /// - for sip, sip: schema is required, e.g., sip:12345678@myprovider.com.
  /// - for more, http: or https: schema is required.
  core.String? uri;

  EntryPoint({
    this.accessCode,
    this.entryPointFeatures,
    this.entryPointType,
    this.label,
    this.meetingCode,
    this.passcode,
    this.password,
    this.pin,
    this.regionCode,
    this.uri,
  });

  EntryPoint.fromJson(core.Map json_)
      : this(
          accessCode: json_.containsKey('accessCode')
              ? json_['accessCode'] as core.String
              : null,
          entryPointFeatures: json_.containsKey('entryPointFeatures')
              ? (json_['entryPointFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          entryPointType: json_.containsKey('entryPointType')
              ? json_['entryPointType'] as core.String
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          meetingCode: json_.containsKey('meetingCode')
              ? json_['meetingCode'] as core.String
              : null,
          passcode: json_.containsKey('passcode')
              ? json_['passcode'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          pin: json_.containsKey('pin') ? json_['pin'] as core.String : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessCode != null) 'accessCode': accessCode!,
        if (entryPointFeatures != null)
          'entryPointFeatures': entryPointFeatures!,
        if (entryPointType != null) 'entryPointType': entryPointType!,
        if (label != null) 'label': label!,
        if (meetingCode != null) 'meetingCode': meetingCode!,
        if (passcode != null) 'passcode': passcode!,
        if (password != null) 'password': password!,
        if (pin != null) 'pin': pin!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (uri != null) 'uri': uri!,
      };
}

class Error {
  /// Domain, or broad category, of the error.
  core.String? domain;

  /// Specific reason for the error.
  ///
  /// Some of the possible values are:
  /// - "groupTooBig" - The group of users requested is too large for a single
  /// query.
  /// - "tooManyCalendarsRequested" - The number of calendars requested is too
  /// large for a single query.
  /// - "notFound" - The requested resource was not found.
  /// - "internalError" - The API service has encountered an internal error.
  /// Additional error types may be added in the future, so clients should
  /// gracefully handle additional error statuses not included in this list.
  core.String? reason;

  Error({
    this.domain,
    this.reason,
  });

  Error.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (reason != null) 'reason': reason!,
      };
}

/// The creator of the event.
///
/// Read-only.
class EventCreator {
  /// The creator's name, if available.
  core.String? displayName;

  /// The creator's email address, if available.
  core.String? email;

  /// The creator's Profile ID, if available.
  core.String? id;

  /// Whether the creator corresponds to the calendar on which this copy of the
  /// event appears.
  ///
  /// Read-only. The default is False.
  core.bool? self;

  EventCreator({
    this.displayName,
    this.email,
    this.id,
    this.self,
  });

  EventCreator.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          self: json_.containsKey('self') ? json_['self'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (id != null) 'id': id!,
        if (self != null) 'self': self!,
      };
}

/// Extended properties of the event.
class EventExtendedProperties {
  /// Properties that are private to the copy of the event that appears on this
  /// calendar.
  core.Map<core.String, core.String>? private;

  /// Properties that are shared between copies of the event on other attendees'
  /// calendars.
  core.Map<core.String, core.String>? shared;

  EventExtendedProperties({
    this.private,
    this.shared,
  });

  EventExtendedProperties.fromJson(core.Map json_)
      : this(
          private: json_.containsKey('private')
              ? (json_['private'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          shared: json_.containsKey('shared')
              ? (json_['shared'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (private != null) 'private': private!,
        if (shared != null) 'shared': shared!,
      };
}

/// A gadget that extends this event.
///
/// Gadgets are deprecated; this structure is instead only used for returning
/// birthday calendar metadata.
class EventGadget {
  /// The gadget's display mode.
  ///
  /// Deprecated. Possible values are:
  /// - "icon" - The gadget displays next to the event's title in the calendar
  /// view.
  /// - "chip" - The gadget displays when the event is clicked.
  core.String? display;

  /// The gadget's height in pixels.
  ///
  /// The height must be an integer greater than 0. Optional. Deprecated.
  core.int? height;

  /// The gadget's icon URL.
  ///
  /// The URL scheme must be HTTPS. Deprecated.
  core.String? iconLink;

  /// The gadget's URL.
  ///
  /// The URL scheme must be HTTPS. Deprecated.
  core.String? link;

  /// Preferences.
  core.Map<core.String, core.String>? preferences;

  /// The gadget's title.
  ///
  /// Deprecated.
  core.String? title;

  /// The gadget's type.
  ///
  /// Deprecated.
  core.String? type;

  /// The gadget's width in pixels.
  ///
  /// The width must be an integer greater than 0. Optional. Deprecated.
  core.int? width;

  EventGadget({
    this.display,
    this.height,
    this.iconLink,
    this.link,
    this.preferences,
    this.title,
    this.type,
    this.width,
  });

  EventGadget.fromJson(core.Map json_)
      : this(
          display: json_.containsKey('display')
              ? json_['display'] as core.String
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          iconLink: json_.containsKey('iconLink')
              ? json_['iconLink'] as core.String
              : null,
          link: json_.containsKey('link') ? json_['link'] as core.String : null,
          preferences: json_.containsKey('preferences')
              ? (json_['preferences'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (display != null) 'display': display!,
        if (height != null) 'height': height!,
        if (iconLink != null) 'iconLink': iconLink!,
        if (link != null) 'link': link!,
        if (preferences != null) 'preferences': preferences!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
        if (width != null) 'width': width!,
      };
}

/// The organizer of the event.
///
/// If the organizer is also an attendee, this is indicated with a separate
/// entry in attendees with the organizer field set to True. To change the
/// organizer, use the move operation. Read-only, except when importing an
/// event.
class EventOrganizer {
  /// The organizer's name, if available.
  core.String? displayName;

  /// The organizer's email address, if available.
  ///
  /// It must be a valid email address as per RFC5322.
  core.String? email;

  /// The organizer's Profile ID, if available.
  core.String? id;

  /// Whether the organizer corresponds to the calendar on which this copy of
  /// the event appears.
  ///
  /// Read-only. The default is False.
  core.bool? self;

  EventOrganizer({
    this.displayName,
    this.email,
    this.id,
    this.self,
  });

  EventOrganizer.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          self: json_.containsKey('self') ? json_['self'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (id != null) 'id': id!,
        if (self != null) 'self': self!,
      };
}

/// Information about the event's reminders for the authenticated user.
class EventReminders {
  /// If the event doesn't use the default reminders, this lists the reminders
  /// specific to the event, or, if not set, indicates that no reminders are set
  /// for this event.
  ///
  /// The maximum number of override reminders is 5.
  core.List<EventReminder>? overrides;

  /// Whether the default reminders of the calendar apply to the event.
  core.bool? useDefault;

  EventReminders({
    this.overrides,
    this.useDefault,
  });

  EventReminders.fromJson(core.Map json_)
      : this(
          overrides: json_.containsKey('overrides')
              ? (json_['overrides'] as core.List)
                  .map((value) => EventReminder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useDefault: json_.containsKey('useDefault')
              ? json_['useDefault'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (overrides != null) 'overrides': overrides!,
        if (useDefault != null) 'useDefault': useDefault!,
      };
}

/// Source from which the event was created.
///
/// For example, a web page, an email message or any document identifiable by an
/// URL with HTTP or HTTPS scheme. Can only be seen or modified by the creator
/// of the event.
class EventSource {
  /// Title of the source; for example a title of a web page or an email
  /// subject.
  core.String? title;

  /// URL of the source pointing to a resource.
  ///
  /// The URL scheme must be HTTP or HTTPS.
  core.String? url;

  EventSource({
    this.title,
    this.url,
  });

  EventSource.fromJson(core.Map json_)
      : this(
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

class Event {
  /// Whether anyone can invite themselves to the event (deprecated).
  ///
  /// Optional. The default is False.
  core.bool? anyoneCanAddSelf;

  /// File attachments for the event.
  /// In order to modify attachments the supportsAttachments request parameter
  /// should be set to true.
  /// There can be at most 25 attachments per event,
  core.List<EventAttachment>? attachments;

  /// The attendees of the event.
  ///
  /// See the Events with attendees guide for more information on scheduling
  /// events with other calendar users. Service accounts need to use domain-wide
  /// delegation of authority to populate the attendee list.
  core.List<EventAttendee>? attendees;

  /// Whether attendees may have been omitted from the event's representation.
  ///
  /// When retrieving an event, this may be due to a restriction specified by
  /// the maxAttendee query parameter. When updating an event, this can be used
  /// to only update the participant's response. Optional. The default is False.
  core.bool? attendeesOmitted;

  /// The color of the event.
  ///
  /// This is an ID referring to an entry in the event section of the colors
  /// definition (see the colors endpoint). Optional.
  core.String? colorId;

  /// The conference-related information, such as details of a Google Meet
  /// conference.
  ///
  /// To create new conference details use the createRequest field. To persist
  /// your changes, remember to set the conferenceDataVersion request parameter
  /// to 1 for all event modification requests.
  ConferenceData? conferenceData;

  /// Creation time of the event (as a RFC3339 timestamp).
  ///
  /// Read-only.
  core.DateTime? created;

  /// The creator of the event.
  ///
  /// Read-only.
  EventCreator? creator;

  /// Description of the event.
  ///
  /// Can contain HTML. Optional.
  core.String? description;

  /// The (exclusive) end time of the event.
  ///
  /// For a recurring event, this is the end time of the first instance.
  EventDateTime? end;

  /// Whether the end time is actually unspecified.
  ///
  /// An end time is still provided for compatibility reasons, even if this
  /// attribute is set to True. The default is False.
  core.bool? endTimeUnspecified;

  /// ETag of the resource.
  core.String? etag;

  /// Specific type of the event.
  ///
  /// Read-only. Possible values are:
  /// - "default" - A regular event or not further specified.
  /// - "outOfOffice" - An out-of-office event.
  /// - "focusTime" - A focus-time event.
  core.String? eventType;

  /// Extended properties of the event.
  EventExtendedProperties? extendedProperties;

  /// A gadget that extends this event.
  ///
  /// Gadgets are deprecated; this structure is instead only used for returning
  /// birthday calendar metadata.
  EventGadget? gadget;

  /// Whether attendees other than the organizer can invite others to the event.
  ///
  /// Optional. The default is True.
  core.bool? guestsCanInviteOthers;

  /// Whether attendees other than the organizer can modify the event.
  ///
  /// Optional. The default is False.
  core.bool? guestsCanModify;

  /// Whether attendees other than the organizer can see who the event's
  /// attendees are.
  ///
  /// Optional. The default is True.
  core.bool? guestsCanSeeOtherGuests;

  /// An absolute link to the Google Hangout associated with this event.
  ///
  /// Read-only.
  core.String? hangoutLink;

  /// An absolute link to this event in the Google Calendar Web UI.
  ///
  /// Read-only.
  core.String? htmlLink;

  /// Event unique identifier as defined in RFC5545.
  ///
  /// It is used to uniquely identify events accross calendaring systems and
  /// must be supplied when importing events via the import method.
  /// Note that the iCalUID and the id are not identical and only one of them
  /// should be supplied at event creation time. One difference in their
  /// semantics is that in recurring events, all occurrences of one event have
  /// different ids while they all share the same iCalUIDs. To retrieve an event
  /// using its iCalUID, call the events.list method using the iCalUID
  /// parameter. To retrieve an event using its id, call the events.get method.
  core.String? iCalUID;

  /// Opaque identifier of the event.
  ///
  /// When creating new single or recurring events, you can specify their IDs.
  /// Provided IDs must follow these rules:
  /// - characters allowed in the ID are those used in base32hex encoding, i.e.
  /// lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938
  /// - the length of the ID must be between 5 and 1024 characters
  /// - the ID must be unique per calendar Due to the globally distributed
  /// nature of the system, we cannot guarantee that ID collisions will be
  /// detected at event creation time. To minimize the risk of collisions we
  /// recommend using an established UUID algorithm such as one described in
  /// RFC4122.
  /// If you do not specify an ID, it will be automatically generated by the
  /// server.
  /// Note that the icalUID and the id are not identical and only one of them
  /// should be supplied at event creation time. One difference in their
  /// semantics is that in recurring events, all occurrences of one event have
  /// different ids while they all share the same icalUIDs.
  core.String? id;

  /// Type of the resource ("calendar#event").
  core.String? kind;

  /// Geographic location of the event as free-form text.
  ///
  /// Optional.
  core.String? location;

  /// Whether this is a locked event copy where no changes can be made to the
  /// main event fields "summary", "description", "location", "start", "end" or
  /// "recurrence".
  ///
  /// The default is False. Read-Only.
  core.bool? locked;

  /// The organizer of the event.
  ///
  /// If the organizer is also an attendee, this is indicated with a separate
  /// entry in attendees with the organizer field set to True. To change the
  /// organizer, use the move operation. Read-only, except when importing an
  /// event.
  EventOrganizer? organizer;

  /// For an instance of a recurring event, this is the time at which this event
  /// would start according to the recurrence data in the recurring event
  /// identified by recurringEventId.
  ///
  /// It uniquely identifies the instance within the recurring event series even
  /// if the instance was moved to a different time. Immutable.
  EventDateTime? originalStartTime;

  /// If set to True, Event propagation is disabled.
  ///
  /// Note that it is not the same thing as Private event properties. Optional.
  /// Immutable. The default is False.
  core.bool? privateCopy;

  /// List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as
  /// specified in RFC5545.
  ///
  /// Note that DTSTART and DTEND lines are not allowed in this field; event
  /// start and end times are specified in the start and end fields. This field
  /// is omitted for single events or instances of recurring events.
  core.List<core.String>? recurrence;

  /// For an instance of a recurring event, this is the id of the recurring
  /// event to which this instance belongs.
  ///
  /// Immutable.
  core.String? recurringEventId;

  /// Information about the event's reminders for the authenticated user.
  EventReminders? reminders;

  /// Sequence number as per iCalendar.
  core.int? sequence;

  /// Source from which the event was created.
  ///
  /// For example, a web page, an email message or any document identifiable by
  /// an URL with HTTP or HTTPS scheme. Can only be seen or modified by the
  /// creator of the event.
  EventSource? source;

  /// The (inclusive) start time of the event.
  ///
  /// For a recurring event, this is the start time of the first instance.
  EventDateTime? start;

  /// Status of the event.
  ///
  /// Optional. Possible values are:
  /// - "confirmed" - The event is confirmed. This is the default status.
  /// - "tentative" - The event is tentatively confirmed.
  /// - "cancelled" - The event is cancelled (deleted). The list method returns
  /// cancelled events only on incremental sync (when syncToken or updatedMin
  /// are specified) or if the showDeleted flag is set to true. The get method
  /// always returns them.
  /// A cancelled status represents two different states depending on the event
  /// type:
  /// - Cancelled exceptions of an uncancelled recurring event indicate that
  /// this instance should no longer be presented to the user. Clients should
  /// store these events for the lifetime of the parent recurring event.
  /// Cancelled exceptions are only guaranteed to have values for the id,
  /// recurringEventId and originalStartTime fields populated. The other fields
  /// might be empty.
  /// - All other cancelled events represent deleted events. Clients should
  /// remove their locally synced copies. Such cancelled events will eventually
  /// disappear, so do not rely on them being available indefinitely.
  /// Deleted events are only guaranteed to have the id field populated. On the
  /// organizer's calendar, cancelled events continue to expose event details
  /// (summary, location, etc.) so that they can be restored (undeleted).
  /// Similarly, the events to which the user was invited and that they manually
  /// removed continue to provide details. However, incremental sync requests
  /// with showDeleted set to false will not return these details.
  /// If an event changes its organizer (for example via the move operation) and
  /// the original organizer is not on the attendee list, it will leave behind a
  /// cancelled event where only the id field is guaranteed to be populated.
  core.String? status;

  /// Title of the event.
  core.String? summary;

  /// Whether the event blocks time on the calendar.
  ///
  /// Optional. Possible values are:
  /// - "opaque" - Default value. The event does block time on the calendar.
  /// This is equivalent to setting Show me as to Busy in the Calendar UI.
  /// - "transparent" - The event does not block time on the calendar. This is
  /// equivalent to setting Show me as to Available in the Calendar UI.
  core.String? transparency;

  /// Last modification time of the event (as a RFC3339 timestamp).
  ///
  /// Read-only.
  core.DateTime? updated;

  /// Visibility of the event.
  ///
  /// Optional. Possible values are:
  /// - "default" - Uses the default visibility for events on the calendar. This
  /// is the default value.
  /// - "public" - The event is public and event details are visible to all
  /// readers of the calendar.
  /// - "private" - The event is private and only event attendees may view event
  /// details.
  /// - "confidential" - The event is private. This value is provided for
  /// compatibility reasons.
  core.String? visibility;

  Event({
    this.anyoneCanAddSelf,
    this.attachments,
    this.attendees,
    this.attendeesOmitted,
    this.colorId,
    this.conferenceData,
    this.created,
    this.creator,
    this.description,
    this.end,
    this.endTimeUnspecified,
    this.etag,
    this.eventType,
    this.extendedProperties,
    this.gadget,
    this.guestsCanInviteOthers,
    this.guestsCanModify,
    this.guestsCanSeeOtherGuests,
    this.hangoutLink,
    this.htmlLink,
    this.iCalUID,
    this.id,
    this.kind,
    this.location,
    this.locked,
    this.organizer,
    this.originalStartTime,
    this.privateCopy,
    this.recurrence,
    this.recurringEventId,
    this.reminders,
    this.sequence,
    this.source,
    this.start,
    this.status,
    this.summary,
    this.transparency,
    this.updated,
    this.visibility,
  });

  Event.fromJson(core.Map json_)
      : this(
          anyoneCanAddSelf: json_.containsKey('anyoneCanAddSelf')
              ? json_['anyoneCanAddSelf'] as core.bool
              : null,
          attachments: json_.containsKey('attachments')
              ? (json_['attachments'] as core.List)
                  .map((value) => EventAttachment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          attendees: json_.containsKey('attendees')
              ? (json_['attendees'] as core.List)
                  .map((value) => EventAttendee.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          attendeesOmitted: json_.containsKey('attendeesOmitted')
              ? json_['attendeesOmitted'] as core.bool
              : null,
          colorId: json_.containsKey('colorId')
              ? json_['colorId'] as core.String
              : null,
          conferenceData: json_.containsKey('conferenceData')
              ? ConferenceData.fromJson(json_['conferenceData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          created: json_.containsKey('created')
              ? core.DateTime.parse(json_['created'] as core.String)
              : null,
          creator: json_.containsKey('creator')
              ? EventCreator.fromJson(
                  json_['creator'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          end: json_.containsKey('end')
              ? EventDateTime.fromJson(
                  json_['end'] as core.Map<core.String, core.dynamic>)
              : null,
          endTimeUnspecified: json_.containsKey('endTimeUnspecified')
              ? json_['endTimeUnspecified'] as core.bool
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          eventType: json_.containsKey('eventType')
              ? json_['eventType'] as core.String
              : null,
          extendedProperties: json_.containsKey('extendedProperties')
              ? EventExtendedProperties.fromJson(json_['extendedProperties']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gadget: json_.containsKey('gadget')
              ? EventGadget.fromJson(
                  json_['gadget'] as core.Map<core.String, core.dynamic>)
              : null,
          guestsCanInviteOthers: json_.containsKey('guestsCanInviteOthers')
              ? json_['guestsCanInviteOthers'] as core.bool
              : null,
          guestsCanModify: json_.containsKey('guestsCanModify')
              ? json_['guestsCanModify'] as core.bool
              : null,
          guestsCanSeeOtherGuests: json_.containsKey('guestsCanSeeOtherGuests')
              ? json_['guestsCanSeeOtherGuests'] as core.bool
              : null,
          hangoutLink: json_.containsKey('hangoutLink')
              ? json_['hangoutLink'] as core.String
              : null,
          htmlLink: json_.containsKey('htmlLink')
              ? json_['htmlLink'] as core.String
              : null,
          iCalUID: json_.containsKey('iCalUID')
              ? json_['iCalUID'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          locked:
              json_.containsKey('locked') ? json_['locked'] as core.bool : null,
          organizer: json_.containsKey('organizer')
              ? EventOrganizer.fromJson(
                  json_['organizer'] as core.Map<core.String, core.dynamic>)
              : null,
          originalStartTime: json_.containsKey('originalStartTime')
              ? EventDateTime.fromJson(json_['originalStartTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateCopy: json_.containsKey('privateCopy')
              ? json_['privateCopy'] as core.bool
              : null,
          recurrence: json_.containsKey('recurrence')
              ? (json_['recurrence'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          recurringEventId: json_.containsKey('recurringEventId')
              ? json_['recurringEventId'] as core.String
              : null,
          reminders: json_.containsKey('reminders')
              ? EventReminders.fromJson(
                  json_['reminders'] as core.Map<core.String, core.dynamic>)
              : null,
          sequence: json_.containsKey('sequence')
              ? json_['sequence'] as core.int
              : null,
          source: json_.containsKey('source')
              ? EventSource.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          start: json_.containsKey('start')
              ? EventDateTime.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
          transparency: json_.containsKey('transparency')
              ? json_['transparency'] as core.String
              : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anyoneCanAddSelf != null) 'anyoneCanAddSelf': anyoneCanAddSelf!,
        if (attachments != null) 'attachments': attachments!,
        if (attendees != null) 'attendees': attendees!,
        if (attendeesOmitted != null) 'attendeesOmitted': attendeesOmitted!,
        if (colorId != null) 'colorId': colorId!,
        if (conferenceData != null) 'conferenceData': conferenceData!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (creator != null) 'creator': creator!,
        if (description != null) 'description': description!,
        if (end != null) 'end': end!,
        if (endTimeUnspecified != null)
          'endTimeUnspecified': endTimeUnspecified!,
        if (etag != null) 'etag': etag!,
        if (eventType != null) 'eventType': eventType!,
        if (extendedProperties != null)
          'extendedProperties': extendedProperties!,
        if (gadget != null) 'gadget': gadget!,
        if (guestsCanInviteOthers != null)
          'guestsCanInviteOthers': guestsCanInviteOthers!,
        if (guestsCanModify != null) 'guestsCanModify': guestsCanModify!,
        if (guestsCanSeeOtherGuests != null)
          'guestsCanSeeOtherGuests': guestsCanSeeOtherGuests!,
        if (hangoutLink != null) 'hangoutLink': hangoutLink!,
        if (htmlLink != null) 'htmlLink': htmlLink!,
        if (iCalUID != null) 'iCalUID': iCalUID!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (location != null) 'location': location!,
        if (locked != null) 'locked': locked!,
        if (organizer != null) 'organizer': organizer!,
        if (originalStartTime != null) 'originalStartTime': originalStartTime!,
        if (privateCopy != null) 'privateCopy': privateCopy!,
        if (recurrence != null) 'recurrence': recurrence!,
        if (recurringEventId != null) 'recurringEventId': recurringEventId!,
        if (reminders != null) 'reminders': reminders!,
        if (sequence != null) 'sequence': sequence!,
        if (source != null) 'source': source!,
        if (start != null) 'start': start!,
        if (status != null) 'status': status!,
        if (summary != null) 'summary': summary!,
        if (transparency != null) 'transparency': transparency!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (visibility != null) 'visibility': visibility!,
      };
}

class EventAttachment {
  /// ID of the attached file.
  ///
  /// Read-only.
  /// For Google Drive files, this is the ID of the corresponding Files resource
  /// entry in the Drive API.
  core.String? fileId;

  /// URL link to the attachment.
  /// For adding Google Drive file attachments use the same format as in
  /// alternateLink property of the Files resource in the Drive API.
  /// Required when adding an attachment.
  core.String? fileUrl;

  /// URL link to the attachment's icon.
  ///
  /// This field can only be modified for custom third-party attachments.
  core.String? iconLink;

  /// Internet media type (MIME type) of the attachment.
  core.String? mimeType;

  /// Attachment title.
  core.String? title;

  EventAttachment({
    this.fileId,
    this.fileUrl,
    this.iconLink,
    this.mimeType,
    this.title,
  });

  EventAttachment.fromJson(core.Map json_)
      : this(
          fileId: json_.containsKey('fileId')
              ? json_['fileId'] as core.String
              : null,
          fileUrl: json_.containsKey('fileUrl')
              ? json_['fileUrl'] as core.String
              : null,
          iconLink: json_.containsKey('iconLink')
              ? json_['iconLink'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileId != null) 'fileId': fileId!,
        if (fileUrl != null) 'fileUrl': fileUrl!,
        if (iconLink != null) 'iconLink': iconLink!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (title != null) 'title': title!,
      };
}

class EventAttendee {
  /// Number of additional guests.
  ///
  /// Optional. The default is 0.
  core.int? additionalGuests;

  /// The attendee's response comment.
  ///
  /// Optional.
  core.String? comment;

  /// The attendee's name, if available.
  ///
  /// Optional.
  core.String? displayName;

  /// The attendee's email address, if available.
  ///
  /// This field must be present when adding an attendee. It must be a valid
  /// email address as per RFC5322.
  /// Required when adding an attendee.
  core.String? email;

  /// The attendee's Profile ID, if available.
  core.String? id;

  /// Whether this is an optional attendee.
  ///
  /// Optional. The default is False.
  core.bool? optional;

  /// Whether the attendee is the organizer of the event.
  ///
  /// Read-only. The default is False.
  core.bool? organizer;

  /// Whether the attendee is a resource.
  ///
  /// Can only be set when the attendee is added to the event for the first
  /// time. Subsequent modifications are ignored. Optional. The default is
  /// False.
  core.bool? resource;

  /// The attendee's response status.
  ///
  /// Possible values are:
  /// - "needsAction" - The attendee has not responded to the invitation
  /// (recommended for new events).
  /// - "declined" - The attendee has declined the invitation.
  /// - "tentative" - The attendee has tentatively accepted the invitation.
  /// - "accepted" - The attendee has accepted the invitation. Warning: If you
  /// add an event using the values declined, tentative, or accepted, attendees
  /// with the "Add invitations to my calendar" setting set to "When I respond
  /// to invitation in email" won't see an event on their calendar unless they
  /// choose to change their invitation response in the event invitation email.
  core.String? responseStatus;

  /// Whether this entry represents the calendar on which this copy of the event
  /// appears.
  ///
  /// Read-only. The default is False.
  core.bool? self;

  EventAttendee({
    this.additionalGuests,
    this.comment,
    this.displayName,
    this.email,
    this.id,
    this.optional,
    this.organizer,
    this.resource,
    this.responseStatus,
    this.self,
  });

  EventAttendee.fromJson(core.Map json_)
      : this(
          additionalGuests: json_.containsKey('additionalGuests')
              ? json_['additionalGuests'] as core.int
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
              : null,
          organizer: json_.containsKey('organizer')
              ? json_['organizer'] as core.bool
              : null,
          resource: json_.containsKey('resource')
              ? json_['resource'] as core.bool
              : null,
          responseStatus: json_.containsKey('responseStatus')
              ? json_['responseStatus'] as core.String
              : null,
          self: json_.containsKey('self') ? json_['self'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalGuests != null) 'additionalGuests': additionalGuests!,
        if (comment != null) 'comment': comment!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (id != null) 'id': id!,
        if (optional != null) 'optional': optional!,
        if (organizer != null) 'organizer': organizer!,
        if (resource != null) 'resource': resource!,
        if (responseStatus != null) 'responseStatus': responseStatus!,
        if (self != null) 'self': self!,
      };
}

class EventDateTime {
  /// The date, in the format "yyyy-mm-dd", if this is an all-day event.
  core.DateTime? date;

  /// The time, as a combined date-time value (formatted according to RFC3339).
  ///
  /// A time zone offset is required unless a time zone is explicitly specified
  /// in timeZone.
  core.DateTime? dateTime;

  /// The time zone in which the time is specified.
  ///
  /// (Formatted as an IANA Time Zone Database name, e.g. "Europe/Zurich".) For
  /// recurring events this field is required and specifies the time zone in
  /// which the recurrence is expanded. For single events this field is optional
  /// and indicates a custom time zone for the event start/end.
  core.String? timeZone;

  EventDateTime({
    this.date,
    this.dateTime,
    this.timeZone,
  });

  EventDateTime.fromJson(core.Map json_)
      : this(
          date: json_.containsKey('date')
              ? core.DateTime.parse(json_['date'] as core.String)
              : null,
          dateTime: json_.containsKey('dateTime')
              ? core.DateTime.parse(json_['dateTime'] as core.String)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null)
          'date':
              "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        if (dateTime != null) 'dateTime': dateTime!.toUtc().toIso8601String(),
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

class EventReminder {
  /// The method used by this reminder.
  ///
  /// Possible values are:
  /// - "email" - Reminders are sent via email.
  /// - "popup" - Reminders are sent via a UI popup.
  /// Required when adding a reminder.
  core.String? method;

  /// Number of minutes before the start of the event when the reminder should
  /// trigger.
  ///
  /// Valid values are between 0 and 40320 (4 weeks in minutes).
  /// Required when adding a reminder.
  core.int? minutes;

  EventReminder({
    this.method,
    this.minutes,
  });

  EventReminder.fromJson(core.Map json_)
      : this(
          method: json_.containsKey('method')
              ? json_['method'] as core.String
              : null,
          minutes: json_.containsKey('minutes')
              ? json_['minutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (method != null) 'method': method!,
        if (minutes != null) 'minutes': minutes!,
      };
}

class Events {
  /// The user's access role for this calendar.
  ///
  /// Read-only. Possible values are:
  /// - "none" - The user has no access.
  /// - "freeBusyReader" - The user has read access to free/busy information.
  /// - "reader" - The user has read access to the calendar. Private events will
  /// appear to users with reader access, but event details will be hidden.
  /// - "writer" - The user has read and write access to the calendar. Private
  /// events will appear to users with writer access, and event details will be
  /// visible.
  /// - "owner" - The user has ownership of the calendar. This role has all of
  /// the permissions of the writer role with the additional ability to see and
  /// manipulate ACLs.
  core.String? accessRole;

  /// The default reminders on the calendar for the authenticated user.
  ///
  /// These reminders apply to all events on this calendar that do not
  /// explicitly override them (i.e. do not have reminders.useDefault set to
  /// True).
  core.List<EventReminder>? defaultReminders;

  /// Description of the calendar.
  ///
  /// Read-only.
  core.String? description;

  /// ETag of the collection.
  core.String? etag;

  /// List of events on the calendar.
  core.List<Event>? items;

  /// Type of the collection ("calendar#events").
  core.String? kind;

  /// Token used to access the next page of this result.
  ///
  /// Omitted if no further results are available, in which case nextSyncToken
  /// is provided.
  core.String? nextPageToken;

  /// Token used at a later point in time to retrieve only the entries that have
  /// changed since this result was returned.
  ///
  /// Omitted if further results are available, in which case nextPageToken is
  /// provided.
  core.String? nextSyncToken;

  /// Title of the calendar.
  ///
  /// Read-only.
  core.String? summary;

  /// The time zone of the calendar.
  ///
  /// Read-only.
  core.String? timeZone;

  /// Last modification time of the calendar (as a RFC3339 timestamp).
  ///
  /// Read-only.
  core.DateTime? updated;

  Events({
    this.accessRole,
    this.defaultReminders,
    this.description,
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.nextSyncToken,
    this.summary,
    this.timeZone,
    this.updated,
  });

  Events.fromJson(core.Map json_)
      : this(
          accessRole: json_.containsKey('accessRole')
              ? json_['accessRole'] as core.String
              : null,
          defaultReminders: json_.containsKey('defaultReminders')
              ? (json_['defaultReminders'] as core.List)
                  .map((value) => EventReminder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Event.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
          summary: json_.containsKey('summary')
              ? json_['summary'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          updated: json_.containsKey('updated')
              ? core.DateTime.parse(json_['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRole != null) 'accessRole': accessRole!,
        if (defaultReminders != null) 'defaultReminders': defaultReminders!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
        if (summary != null) 'summary': summary!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

class FreeBusyCalendar {
  /// List of time ranges during which this calendar should be regarded as busy.
  core.List<TimePeriod>? busy;

  /// Optional error(s) (if computation for the calendar failed).
  core.List<Error>? errors;

  FreeBusyCalendar({
    this.busy,
    this.errors,
  });

  FreeBusyCalendar.fromJson(core.Map json_)
      : this(
          busy: json_.containsKey('busy')
              ? (json_['busy'] as core.List)
                  .map((value) => TimePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (busy != null) 'busy': busy!,
        if (errors != null) 'errors': errors!,
      };
}

class FreeBusyGroup {
  /// List of calendars' identifiers within a group.
  core.List<core.String>? calendars;

  /// Optional error(s) (if computation for the group failed).
  core.List<Error>? errors;

  FreeBusyGroup({
    this.calendars,
    this.errors,
  });

  FreeBusyGroup.fromJson(core.Map json_)
      : this(
          calendars: json_.containsKey('calendars')
              ? (json_['calendars'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => Error.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calendars != null) 'calendars': calendars!,
        if (errors != null) 'errors': errors!,
      };
}

class FreeBusyRequest {
  /// Maximal number of calendars for which FreeBusy information is to be
  /// provided.
  ///
  /// Optional. Maximum value is 50.
  core.int? calendarExpansionMax;

  /// Maximal number of calendar identifiers to be provided for a single group.
  ///
  /// Optional. An error is returned for a group with more members than this
  /// value. Maximum value is 100.
  core.int? groupExpansionMax;

  /// List of calendars and/or groups to query.
  core.List<FreeBusyRequestItem>? items;

  /// The end of the interval for the query formatted as per RFC3339.
  core.DateTime? timeMax;

  /// The start of the interval for the query formatted as per RFC3339.
  core.DateTime? timeMin;

  /// Time zone used in the response.
  ///
  /// Optional. The default is UTC.
  core.String? timeZone;

  FreeBusyRequest({
    this.calendarExpansionMax,
    this.groupExpansionMax,
    this.items,
    this.timeMax,
    this.timeMin,
    this.timeZone,
  });

  FreeBusyRequest.fromJson(core.Map json_)
      : this(
          calendarExpansionMax: json_.containsKey('calendarExpansionMax')
              ? json_['calendarExpansionMax'] as core.int
              : null,
          groupExpansionMax: json_.containsKey('groupExpansionMax')
              ? json_['groupExpansionMax'] as core.int
              : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => FreeBusyRequestItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeMax: json_.containsKey('timeMax')
              ? core.DateTime.parse(json_['timeMax'] as core.String)
              : null,
          timeMin: json_.containsKey('timeMin')
              ? core.DateTime.parse(json_['timeMin'] as core.String)
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calendarExpansionMax != null)
          'calendarExpansionMax': calendarExpansionMax!,
        if (groupExpansionMax != null) 'groupExpansionMax': groupExpansionMax!,
        if (items != null) 'items': items!,
        if (timeMax != null) 'timeMax': timeMax!.toUtc().toIso8601String(),
        if (timeMin != null) 'timeMin': timeMin!.toUtc().toIso8601String(),
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

class FreeBusyRequestItem {
  /// The identifier of a calendar or a group.
  core.String? id;

  FreeBusyRequestItem({
    this.id,
  });

  FreeBusyRequestItem.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
      };
}

class FreeBusyResponse {
  /// List of free/busy information for calendars.
  core.Map<core.String, FreeBusyCalendar>? calendars;

  /// Expansion of groups.
  core.Map<core.String, FreeBusyGroup>? groups;

  /// Type of the resource ("calendar#freeBusy").
  core.String? kind;

  /// The end of the interval.
  core.DateTime? timeMax;

  /// The start of the interval.
  core.DateTime? timeMin;

  FreeBusyResponse({
    this.calendars,
    this.groups,
    this.kind,
    this.timeMax,
    this.timeMin,
  });

  FreeBusyResponse.fromJson(core.Map json_)
      : this(
          calendars: json_.containsKey('calendars')
              ? (json_['calendars'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    FreeBusyCalendar.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          groups: json_.containsKey('groups')
              ? (json_['groups'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    FreeBusyGroup.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          timeMax: json_.containsKey('timeMax')
              ? core.DateTime.parse(json_['timeMax'] as core.String)
              : null,
          timeMin: json_.containsKey('timeMin')
              ? core.DateTime.parse(json_['timeMin'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calendars != null) 'calendars': calendars!,
        if (groups != null) 'groups': groups!,
        if (kind != null) 'kind': kind!,
        if (timeMax != null) 'timeMax': timeMax!.toUtc().toIso8601String(),
        if (timeMin != null) 'timeMin': timeMin!.toUtc().toIso8601String(),
      };
}

class Setting {
  /// ETag of the resource.
  core.String? etag;

  /// The id of the user setting.
  core.String? id;

  /// Type of the resource ("calendar#setting").
  core.String? kind;

  /// Value of the user setting.
  ///
  /// The format of the value depends on the ID of the setting. It must always
  /// be a UTF-8 string of length up to 1024 characters.
  core.String? value;

  Setting({
    this.etag,
    this.id,
    this.kind,
    this.value,
  });

  Setting.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (value != null) 'value': value!,
      };
}

class Settings {
  /// Etag of the collection.
  core.String? etag;

  /// List of user settings.
  core.List<Setting>? items;

  /// Type of the collection ("calendar#settings").
  core.String? kind;

  /// Token used to access the next page of this result.
  ///
  /// Omitted if no further results are available, in which case nextSyncToken
  /// is provided.
  core.String? nextPageToken;

  /// Token used at a later point in time to retrieve only the entries that have
  /// changed since this result was returned.
  ///
  /// Omitted if further results are available, in which case nextPageToken is
  /// provided.
  core.String? nextSyncToken;

  Settings({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
    this.nextSyncToken,
  });

  Settings.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Setting.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          nextSyncToken: json_.containsKey('nextSyncToken')
              ? json_['nextSyncToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (nextSyncToken != null) 'nextSyncToken': nextSyncToken!,
      };
}

class TimePeriod {
  /// The (exclusive) end of the time period.
  core.DateTime? end;

  /// The (inclusive) start of the time period.
  core.DateTime? start;

  TimePeriod({
    this.end,
    this.start,
  });

  TimePeriod.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end')
              ? core.DateTime.parse(json_['end'] as core.String)
              : null,
          start: json_.containsKey('start')
              ? core.DateTime.parse(json_['start'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!.toUtc().toIso8601String(),
        if (start != null) 'start': start!.toUtc().toIso8601String(),
      };
}
