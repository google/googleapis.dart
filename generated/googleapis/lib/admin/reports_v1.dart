// Copyright 2014 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Admin SDK API - reports_v1
///
/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc. It also provides audit and usage reports of
/// domain.
///
/// For more information, see <https://developers.google.com/workspace/admin/>
///
/// Create an instance of [ReportsApi] to access these resources:
///
/// - [ActivitiesResource]
/// - [ChannelsResource]
/// - [CustomerUsageReportsResource]
/// - [EntityUsageReportsResource]
/// - [UserUsageReportResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Admin SDK lets administrators of enterprise domains to view and manage
/// resources like user, groups etc.
///
/// It also provides audit and usage reports of domain.
class ReportsApi {
  /// View audit reports for your Google Workspace domain
  static const adminReportsAuditReadonlyScope =
      'https://www.googleapis.com/auth/admin.reports.audit.readonly';

  /// View usage reports for your Google Workspace domain
  static const adminReportsUsageReadonlyScope =
      'https://www.googleapis.com/auth/admin.reports.usage.readonly';

  final commons.ApiRequester _requester;

  ActivitiesResource get activities => ActivitiesResource(_requester);
  ChannelsResource get channels => ChannelsResource(_requester);
  CustomerUsageReportsResource get customerUsageReports =>
      CustomerUsageReportsResource(_requester);
  EntityUsageReportsResource get entityUsageReports =>
      EntityUsageReportsResource(_requester);
  UserUsageReportResource get userUsageReport =>
      UserUsageReportResource(_requester);

  ReportsApi(
    http.Client client, {
    core.String rootUrl = 'https://admin.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ActivitiesResource {
  final commons.ApiRequester _requester;

  ActivitiesResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a list of activities for a specific customer's account and
  /// application such as the Admin console application or the Google Drive
  /// application.
  ///
  /// For more information, see the guides for administrator and Google Drive
  /// activity reports. For more information about the activity report's
  /// parameters, see the activity parameters reference guides.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile ID or the user email for which the data
  /// should be filtered. Can be `all` for all information, or `userKey` for a
  /// user's unique Google Workspace profile ID or their primary email address.
  /// Must not be a deleted user. For a deleted user, call `users.list` in
  /// Directory API with `showDeleted=true`, then use the returned `ID` as the
  /// `userKey`.
  ///
  /// [applicationName] - Application name for which the events are to be
  /// retrieved.
  /// Value must have pattern
  /// `(access_evaluation)|(access_transparency)|(admin)|(admin_data_action)|(assignments)|(calendar)|(chat)|(chrome)|(classroom)|(cloud_search)|(contacts)|(context_aware_access)|(data_studio)|(data_migration)|(directory_sync)|(drive)|(gcp)|(gmail)|(gplus)|(graduation)|(groups)|(groups_enterprise)|(jamboard)|(keep)|(ldap)|(login)|(meet)|(meet_hardware)|(mobile)|(profile)|(rules)|(saml)|(token)|(user_accounts)|(vault)|(gemini_in_workspace_apps)|(tasks)|(takeout)|(voice)|(chrome_sync)|(workspace_studio)`.
  /// Possible string values are:
  /// - "access_transparency" : The Google Workspace Access Transparency
  /// activity reports return information about different types of Access
  /// Transparency activity events.
  /// - "admin" : The Admin console application's activity reports return
  /// account information about different types of administrator activity
  /// events.
  /// - "calendar" : The Google Calendar application's activity reports return
  /// information about various Calendar activity events.
  /// - "chat" : The Chat activity reports return information about various Chat
  /// activity events.
  /// - "drive" : The Google Drive application's activity reports return
  /// information about various Google Drive activity events. The Drive activity
  /// report is only available for Google Workspace Business and Enterprise
  /// customers.
  /// - "gcp" : The Google Cloud Platform application's activity reports return
  /// information about various GCP activity events.
  /// - "gmail" : The Gmail application's activity reports return information
  /// about various \[Gmail activity
  /// events\](/admin-sdk/reports/v1/appendix/activity/gmail).
  /// - "gplus" : The Google+ application's activity reports return information
  /// about various Google+ activity events.
  /// - "groups" : The Google Groups application's activity reports return
  /// information about various Groups activity events.
  /// - "groups_enterprise" : The Enterprise Groups activity reports return
  /// information about various Enterprise group activity events.
  /// - "jamboard" : The Jamboard activity reports return information about
  /// various Jamboard activity events.
  /// - "login" : The Login application's activity reports return account
  /// information about different types of Login activity events.
  /// - "meet" : The Meet Audit activity report returns information about
  /// different types of Meet Audit activity events.
  /// - "mobile" : The Device Audit activity report returns information about
  /// different types of Device Audit activity events.
  /// - "rules" : The Rules activity report returns information about different
  /// types of Rules activity events.
  /// - "saml" : The SAML activity report returns information about different
  /// types of SAML activity events.
  /// - "token" : The Token application's activity reports return account
  /// information about different types of Token activity events.
  /// - "user_accounts" : The User Accounts application's activity reports
  /// return account information about different types of User Accounts activity
  /// events.
  /// - "context_aware_access" : The Context-aware access activity reports
  /// return information about users' access denied events due to Context-aware
  /// access rules.
  /// - "chrome" : The Chrome activity reports return information about Chrome
  /// browser and Chrome OS events.
  /// - "data_studio" : The Data Studio activity reports return information
  /// about various types of Data Studio activity events.
  /// - "keep" : The Keep application's activity reports return information
  /// about various Google Keep activity events. The Keep activity report is
  /// only available for Google Workspace Business and Enterprise customers.
  /// - "vault" : The Vault activity reports return information about various
  /// types of Vault activity events.
  /// - "gemini_in_workspace_apps" : The Gemini for Workspace activity reports
  /// return information about various types of Gemini activity events performed
  /// by users within a Workspace application.
  /// - "classroom" : The Classroom activity reports return information about
  /// different types of
  /// [Classroom activity events](https://developers.google.com/workspace/admin/reports/v1/appendix/activity/classroom).
  /// - "assignments" : The assignments application's activity reports return
  /// information about various types of assignments activity events.
  /// - "cloud_search" : The Cloud Search application's activity reports return
  /// information about various types of cloud_search activity events.
  /// - "tasks" : The Tasks application's activity reports return information
  /// about various types of Tasks activity events.
  /// - "data_migration" : The Data Migration application's activity reports
  /// return information about various types of data migration activity events.
  /// - "meet_hardware" : The Meet Hardware application's activity reports
  /// return information about various types of Meet Hardware activity events.
  /// - "directory_sync" : The Directory Sync application's activity reports
  /// return information about various types of Directory Sync activity events.
  /// - "ldap" : The ldap application's activity reports return information
  /// about various types of ldap activity events.
  /// - "profile" : The Profile application's activity reports return
  /// information about various types of Profile activity events.
  /// - "access_evaluation" : The Access Evaluation activity reports return
  /// information about various types of Access Evaluation activity events.
  /// - "admin_data_action" : The Admin Data Action application's activity
  /// reports return information about various types of Admin Data Action
  /// activity events.
  /// - "contacts" : The Contacts application's activity reports return
  /// information about various types of Contacts activity events.
  /// - "takeout" : The Takeout application's activity reports return
  /// information about various types of Takeout activity events.
  /// - "graduation" : The Graduation application's activity reports return
  /// information about various types of Graduation activity events.
  /// - "voice" : The Voice application's activity reports return information
  /// about various types of Voice activity events.
  /// - "chrome_sync" : The Chrome Sync application's activity reports return
  /// information about various types of Chrome Sync activity events.
  /// - "workspace_studio" : The Workspace Studio application's activity reports
  /// return information about various types of Workspace Studio activity
  /// events.
  ///
  /// [actorIpAddress] - The Internet Protocol (IP) Address of host where the
  /// event was performed. This is an additional way to filter a report's
  /// summary using the IP address of the user whose activity is being reported.
  /// This IP address may or may not reflect the user's physical location. For
  /// example, the IP address can be the user's proxy server's address or a
  /// virtual private network (VPN) address. This parameter supports both IPv4
  /// and IPv6 address versions.
  ///
  /// [agentInfoFilter] - Optional. Filters on agent info fields in the
  /// activity. This filter gets applied in conjunction(AND) with other filters.
  /// Example: "agentInfoFilter=agentId=\"agent-id\" AND
  /// agentName=\"agent-name\" AND agentOwnerEmail=\"agent-owner-email\""
  ///
  /// [applicationInfoFilter] - Optional. Used to filter on the `oAuthClientId`
  /// field present in \[`ApplicationInfo`\](#applicationinfo) message.
  /// **Usage** ``` GET...&applicationInfoFilter=oAuthClientId="clientId"
  /// GET...&applicationInfoFilter=oAuthClientId=%22clientId%22 ```
  ///
  /// [customerId] - The unique ID of the customer to retrieve data for.
  /// Value must have pattern `C.+|my_customer`.
  ///
  /// [deviceFilter] - Optional. Used to filter on the fields present in
  /// \[`UserDeviceInfo`\](#userdeviceinfo) message like `deviceId`,
  /// `deviceType`, and `deviceOsVersion`. **Usage** ```
  /// GET...&deviceFilter=deviceId="123"
  /// GET...&deviceFilter=deviceType="ANDROID"
  /// GET...&deviceFilter=deviceOsVersion="14.0" ```
  ///
  /// [endTime] - Sets the end of the range of time shown in the report. The
  /// date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The
  /// default value is the approximate time of the API request. An API report
  /// has three basic time concepts: - *Date of the API's request for a report*:
  /// When the API created and retrieved the report. - *Report's start time*:
  /// The beginning of the timespan shown in the report. The `startTime` must be
  /// before the `endTime` (if specified) and the current time when the request
  /// is made, or the API returns an error. - *Report's end time*: The end of
  /// the timespan shown in the report. For example, the timespan of events
  /// summarized in a report can start in April and end in May. The report
  /// itself can be requested in August. If the `endTime` is not specified, the
  /// report returns all activities from the `startTime` until the current time
  /// or the most recent 180 days if the `startTime` is more than 180 days in
  /// the past. For Gmail requests, `startTime` and `endTime` must be provided
  /// and the difference must not be greater than 30 days.
  /// Value must have pattern
  /// `(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|(\[-+\])(\d\d):(\d\d))`.
  ///
  /// [eventName] - The name of the event being queried by the API. Each
  /// `eventName` is related to a specific Google Workspace service or feature
  /// which the API organizes into types of events. An example is the Google
  /// Calendar events in the Admin console application's reports. The Calendar
  /// Settings `type` structure has all of the Calendar `eventName` activities
  /// reported by the API. When an administrator changes a Calendar setting, the
  /// API reports this activity in the Calendar Settings `type` and `eventName`
  /// parameters. For more information about `eventName` query strings and
  /// parameters, see the list of event names for various applications above in
  /// `applicationName`.
  ///
  /// [filters] - The `filters` query string is a comma-separated list composed
  /// of event parameters manipulated by relational operators. Event parameters
  /// are in the form `{parameter1 name}{relational operator}{parameter1
  /// value},{parameter2 name}{relational operator}{parameter2 value},...` These
  /// event parameters are associated with a specific `eventName`. An empty
  /// report is returned if the request's parameter doesn't belong to the
  /// `eventName`. For more information about the available `eventName` fields
  /// for each application and their associated parameters, go to the
  /// \[ApplicationName\](#applicationname) table, then click through to the
  /// Activity Events page in the Appendix for the application you want. In the
  /// following Drive activity examples, the returned list consists of all
  /// `edit` events where the `doc_id` parameter value matches the conditions
  /// defined by the relational operator. In the first example, the request
  /// returns all edited documents with a `doc_id` value equal to `12345`. In
  /// the second example, the report returns any edited documents where the
  /// `doc_id` value is not equal to `98765`. The `<>` operator is URL-encoded
  /// in the request's query string (`%3C%3E`): ```
  /// GET...&eventName=edit&filters=doc_id==12345
  /// GET...&eventName=edit&filters=doc_id%3C%3E98765 ``` A `filters` query
  /// supports these relational operators: * `==`—'equal to'. * `<>`—'not equal
  /// to'. Must be URL-encoded (%3C%3E). * `<`—'less than'. Must be URL-encoded
  /// (%3C). * `<=`—'less than or equal to'. Must be URL-encoded (%3C=). *
  /// `>`—'greater than'. Must be URL-encoded (%3E). * `>=`—'greater than or
  /// equal to'. Must be URL-encoded (%3E=). **Note:** The API doesn't accept
  /// multiple values of the same parameter. If a parameter is supplied more
  /// than once in the API request, the API only accepts the last value of that
  /// parameter. In addition, if an invalid parameter is supplied in the API
  /// request, the API ignores that parameter and returns the response
  /// corresponding to the remaining valid parameters. If no parameters are
  /// requested, all parameters are returned.
  /// Value must have pattern
  /// `(.+\[\<,\<=,==,\>=,\>,\<\>\].+,)*(.+\[\<,\<=,==,\>=,\>,\<\>\].+)`.
  ///
  /// [groupIdFilter] - Comma separated group ids (obfuscated) on which user
  /// activities are filtered, i.e. the response will contain activities for
  /// only those users that are a part of at least one of the group ids
  /// mentioned here. Format: "id:abc123,id:xyz456" *Important:* To filter by
  /// groups, you must explicitly add the groups to your filtering groups
  /// allowlist. For more information about adding groups to filtering groups
  /// allowlist, see
  /// [Filter results by Google Group](https://support.google.com/a/answer/11482175)
  /// Value must have pattern `(id:\[a-z0-9\]+(,id:\[a-z0-9\]+)*)`.
  ///
  /// [includeSensitiveData] - Optional. When set to `true`, this field allows
  /// sensitive user-generated content to be included in the returned audit
  /// logs. This parameter is supported only for Rules (DLP) and Chat
  /// applications; using it with any other application will result in a
  /// permission error.
  ///
  /// [maxResults] - Determines how many activity records are shown on each
  /// response page. For example, if the request sets `maxResults=1` and the
  /// report has two activities, the report has two pages. The response's
  /// `nextPageToken` property has the token to the second page. The
  /// `maxResults` query string is optional in the request. The default value is
  /// 1000.
  /// Value must be between "1" and "1000".
  ///
  /// [networkInfoFilter] - Optional. Used to filter on the `regionCode` field
  /// present in \[`NetworkInfo`\](#networkinfo) message. **Usage** ```
  /// GET...&networkInfoFilter=regionCode="IN"
  /// GET...&networkInfoFilter=regionCode=%22IN%22 ```
  ///
  /// [orgUnitID] - ID of the organizational unit to report on. Activity records
  /// will be shown only for users who belong to the specified organizational
  /// unit. Data before Dec 17, 2018 doesn't appear in the filtered results.
  /// Value must have pattern `(id:\[a-z0-9\]+)`.
  ///
  /// [pageToken] - The token to specify next page. A report with multiple pages
  /// has a `nextPageToken` property in the response. In your follow-on request
  /// getting the next page of the report, enter the `nextPageToken` value in
  /// the `pageToken` query string.
  ///
  /// [resourceDetailsFilter] - Optional. The `resourceDetailsFilter` query
  /// string is an AND separated list composed of \[Resource
  /// Details\](#resourcedetails) fields manipulated by relational operators.
  /// Resource Details Filters are in the form
  /// `{resourceDetails.field1}{relational operator}{field1 value} AND
  /// {resourceDetails.field2}{relational operator}{field2 value}...` All the
  /// inner fields are traversed using the `.` operator, as shown in the
  /// following example: ``` resourceDetails.id = "resourceId" AND
  /// resourceDetails.appliedLabels.id = "appliedLabelId" AND
  /// resourceDetails.appliedLabels.fieldValue.id = "fieldValueId" ```
  /// `resourceDetailsFilter` query supports these relational operators: *
  /// `=`—'equal to'. * `!=`—'not equal to'. * `:`—'exists'. This is used for
  /// filtering on repeated fields. \[`FieldValue`\](#fieldvalue) types that are
  /// repeated in nature uses `exists` operator for filtering. The following
  /// \[`FieldValue`\](#fieldvalue) types are repeated: *
  /// \[`TextListValue`\](#textlistvalue) *
  /// \[`SelectionListValue`\](#selectionlistvalue) *
  /// \[`UserListValue`\](#userlistvalue) For example, in the following filter,
  /// \[`SelectionListValue`\](#selectionlistvalue), is a repeated field. The
  /// filter checks whether \[`SelectionListValue`\](#selectionlistvalue)
  /// contains `selection_id`: ``` resourceDetails.id = "resourceId" AND
  /// resourceDetails.appliedLabels.id = "appliedLabelId" AND
  /// resourceDetails.appliedLabels.fieldValue.id = "fieldValueId" AND
  /// resourceDetails.appliedLabels.fieldValue.type = "SELECTION_LIST_VALUE" AND
  /// resourceDetails.appliedLabels.fieldValue.selectionListValue.id: "id" ```
  /// **Usage** ``` GET...&resourceDetailsFilter=resourceDetails.id =
  /// "resourceId" AND resourceDetails.appliedLabels.id = "appliedLabelId"
  /// GET...&resourceDetailsFilter=resourceDetails.id=%22resourceId%22%20AND%20resourceDetails.appliedLabels.id=%22appliedLabelId%22
  /// ``` **Note the following**: * You must URL encode the query string before
  /// sending the request. * The API supports a maximum of 5 fields separated by
  /// the AND operator. - When filtering on deeper levels (e.g.,
  /// \[`AppliedLabel`\](#appliedlabel), \[`FieldValue`\](#fieldvalue)), the IDs
  /// of all preceding levels in the hierarchy must be included in the filter.
  /// For example: Filtering on \[`FieldValue`\](#fieldvalue) requires
  /// \[`AppliedLabel`\](#appliedlabel) ID and resourceDetails ID to be present.
  /// *Sample Query*: ``` resourceDetails.id = "resourceId" AND
  /// resourceDetails.appliedLabels.id = "appliedLabelId" AND
  /// resourceDetails.appliedLabels.fieldValue.id = "fieldValueId" ``` *
  /// Filtering on inner \[`FieldValue`\](#fieldvalue) types like
  /// `longTextValue` and `textValue` requires
  /// `resourceDetails.appliedLabels.fieldValue.type` to be present. * Only
  /// Filtering on a single \[`AppliedLabel`\](#appliedlabel) id and
  /// \[`FieldValue`\](#fieldvalue) id is supported.
  ///
  /// [startTime] - Sets the beginning of the range of time shown in the report.
  /// The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z.
  /// The report returns all activities from `startTime` until `endTime`. The
  /// `startTime` must be before the `endTime` (if specified) and the current
  /// time when the request is made, or the API returns an error. For Gmail
  /// requests, `startTime` and `endTime` must be provided and the difference
  /// must not be greater than 30 days.
  /// Value must have pattern
  /// `(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|(\[-+\])(\d\d):(\d\d))`.
  ///
  /// [statusFilter] - Optional. Used to filter on the `statusCode` field
  /// present in \[`Status`\](#status) message. **Usage** ```
  /// GET...&statusFilter=statusCode="200"
  /// GET...&statusFilter=statusCode=%22200%22 ```
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Activities].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Activities> list(
    core.String userKey,
    core.String applicationName, {
    core.String? actorIpAddress,
    core.String? agentInfoFilter,
    core.String? applicationInfoFilter,
    core.String? customerId,
    core.String? deviceFilter,
    core.String? endTime,
    core.String? eventName,
    core.String? filters,
    core.String? groupIdFilter,
    core.bool? includeSensitiveData,
    core.int? maxResults,
    core.String? networkInfoFilter,
    core.String? orgUnitID,
    core.String? pageToken,
    core.String? resourceDetailsFilter,
    core.String? startTime,
    core.String? statusFilter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'actorIpAddress': ?actorIpAddress == null ? null : [actorIpAddress],
      'agentInfoFilter': ?agentInfoFilter == null ? null : [agentInfoFilter],
      'applicationInfoFilter': ?applicationInfoFilter == null
          ? null
          : [applicationInfoFilter],
      'customerId': ?customerId == null ? null : [customerId],
      'deviceFilter': ?deviceFilter == null ? null : [deviceFilter],
      'endTime': ?endTime == null ? null : [endTime],
      'eventName': ?eventName == null ? null : [eventName],
      'filters': ?filters == null ? null : [filters],
      'groupIdFilter': ?groupIdFilter == null ? null : [groupIdFilter],
      'includeSensitiveData': ?includeSensitiveData == null
          ? null
          : ['${includeSensitiveData}'],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'networkInfoFilter': ?networkInfoFilter == null
          ? null
          : [networkInfoFilter],
      'orgUnitID': ?orgUnitID == null ? null : [orgUnitID],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'resourceDetailsFilter': ?resourceDetailsFilter == null
          ? null
          : [resourceDetailsFilter],
      'startTime': ?startTime == null ? null : [startTime],
      'statusFilter': ?statusFilter == null ? null : [statusFilter],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'admin/reports/v1/activity/users/' +
        commons.escapeVariable('$userKey') +
        '/applications/' +
        commons.escapeVariable('$applicationName');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Activities.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Start receiving notifications for account activities.
  ///
  /// For more information, see Receiving Push Notifications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile ID or the user email for which the data
  /// should be filtered. Can be `all` for all information, or `userKey` for a
  /// user's unique Google Workspace profile ID or their primary email address.
  /// Must not be a deleted user. For a deleted user, call `users.list` in
  /// Directory API with `showDeleted=true`, then use the returned `ID` as the
  /// `userKey`.
  ///
  /// [applicationName] - Application name for which the events are to be
  /// retrieved.
  /// Value must have pattern
  /// `(access_transparency)|(admin)|(calendar)|(chat)|(chrome)|(classroom)|(context_aware_access)|(data_studio)|(drive)|(gcp)|(gplus)|(groups)|(groups_enterprise)|(jamboard)|(keep)|(login)|(meet)|(mobile)|(rules)|(saml)|(token)|(user_accounts)`.
  /// Possible string values are:
  /// - "access_transparency" : The Google Workspace Access Transparency
  /// activity reports return information about different types of Access
  /// Transparency activity events.
  /// - "admin" : The Admin console application's activity reports return
  /// account information about different types of administrator activity
  /// events.
  /// - "calendar" : The Google Calendar application's activity reports return
  /// information about various Calendar activity events.
  /// - "chat" : The Chat activity reports return information about various Chat
  /// activity events.
  /// - "drive" : The Google Drive application's activity reports return
  /// information about various Google Drive activity events. The Drive activity
  /// report is only available for Google Workspace Business and Google
  /// Workspace Enterprise customers.
  /// - "gcp" : The Google Cloud Platform application's activity reports return
  /// information about various GCP activity events.
  /// - "gplus" : The Google+ application's activity reports return information
  /// about various Google+ activity events.
  /// - "groups" : The Google Groups application's activity reports return
  /// information about various Groups activity events.
  /// - "groups_enterprise" : The Enterprise Groups activity reports return
  /// information about various Enterprise group activity events.
  /// - "jamboard" : The Jamboard activity reports return information about
  /// various Jamboard activity events.
  /// - "login" : The Login application's activity reports return account
  /// information about different types of Login activity events.
  /// - "meet" : The Meet Audit activity report returns information about
  /// different types of Meet Audit activity events.
  /// - "mobile" : The Device Audit activity report returns information about
  /// different types of Device Audit activity events.
  /// - "rules" : The Rules activity report returns information about different
  /// types of Rules activity events.
  /// - "saml" : The SAML activity report returns information about different
  /// types of SAML activity events.
  /// - "token" : The Token application's activity reports return account
  /// information about different types of Token activity events.
  /// - "user_accounts" : The User Accounts application's activity reports
  /// return account information about different types of User Accounts activity
  /// events.
  /// - "context_aware_access" : The Context-aware access activity reports
  /// return information about users' access denied events due to Context-aware
  /// access rules.
  /// - "chrome" : The Chrome activity reports return information about Chrome
  /// browser and Chrome OS events.
  /// - "data_studio" : The Data Studio activity reports return information
  /// about various types of Data Studio activity events.
  /// - "keep" : The Keep application's activity reports return information
  /// about various Google Keep activity events. The Keep activity report is
  /// only available for Google Workspace Business and Enterprise customers.
  /// - "classroom" : The Classroom activity reports return information about
  /// different types of
  /// [Classroom activity events](https://developers.google.com/workspace/admin/reports/v1/appendix/activity/classroom).
  ///
  /// [actorIpAddress] - The Internet Protocol (IP) Address of host where the
  /// event was performed. This is an additional way to filter a report's
  /// summary using the IP address of the user whose activity is being reported.
  /// This IP address may or may not reflect the user's physical location. For
  /// example, the IP address can be the user's proxy server's address or a
  /// virtual private network (VPN) address. This parameter supports both IPv4
  /// and IPv6 address versions.
  ///
  /// [customerId] - The unique ID of the customer to retrieve data for.
  /// Value must have pattern `C.+|my_customer`.
  ///
  /// [endTime] - Sets the end of the range of time shown in the report. The
  /// date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The
  /// default value is the approximate time of the API request. An API report
  /// has three basic time concepts: - *Date of the API's request for a report*:
  /// When the API created and retrieved the report. - *Report's start time*:
  /// The beginning of the timespan shown in the report. The `startTime` must be
  /// before the `endTime` (if specified) and the current time when the request
  /// is made, or the API returns an error. - *Report's end time*: The end of
  /// the timespan shown in the report. For example, the timespan of events
  /// summarized in a report can start in April and end in May. The report
  /// itself can be requested in August. If the `endTime` is not specified, the
  /// report returns all activities from the `startTime` until the current time
  /// or the most recent 180 days if the `startTime` is more than 180 days in
  /// the past.
  /// Value must have pattern
  /// `(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|(\[-+\])(\d\d):(\d\d))`.
  ///
  /// [eventName] - The name of the event being queried by the API. Each
  /// `eventName` is related to a specific Google Workspace service or feature
  /// which the API organizes into types of events. An example is the Google
  /// Calendar events in the Admin console application's reports. The Calendar
  /// Settings `type` structure has all of the Calendar `eventName` activities
  /// reported by the API. When an administrator changes a Calendar setting, the
  /// API reports this activity in the Calendar Settings `type` and `eventName`
  /// parameters. For more information about `eventName` query strings and
  /// parameters, see the list of event names for various applications above in
  /// `applicationName`.
  ///
  /// [filters] - The `filters` query string is a comma-separated list composed
  /// of event parameters manipulated by relational operators. Event parameters
  /// are in the form `{parameter1 name}{relational operator}{parameter1
  /// value},{parameter2 name}{relational operator}{parameter2 value},...` These
  /// event parameters are associated with a specific `eventName`. An empty
  /// report is returned if the request's parameter doesn't belong to the
  /// `eventName`. For more information about the available `eventName` fields
  /// for each application and their associated parameters, go to the
  /// \[ApplicationName\](#applicationname) table, then click through to the
  /// Activity Events page in the Appendix for the application you want. In the
  /// following Drive activity examples, the returned list consists of all
  /// `edit` events where the `doc_id` parameter value matches the conditions
  /// defined by the relational operator. In the first example, the request
  /// returns all edited documents with a `doc_id` value equal to `12345`. In
  /// the second example, the report returns any edited documents where the
  /// `doc_id` value is not equal to `98765`. The `<>` operator is URL-encoded
  /// in the request's query string (`%3C%3E`): ```
  /// GET...&eventName=edit&filters=doc_id==12345
  /// GET...&eventName=edit&filters=doc_id%3C%3E98765 ``` A `filters` query
  /// supports these relational operators: * `==`—'equal to'. * `<>`—'not equal
  /// to'. Must be URL-encoded (%3C%3E). * `<`—'less than'. Must be URL-encoded
  /// (%3C). * `<=`—'less than or equal to'. Must be URL-encoded (%3C=). *
  /// `>`—'greater than'. Must be URL-encoded (%3E). * `>=`—'greater than or
  /// equal to'. Must be URL-encoded (%3E=). **Note:** The API doesn't accept
  /// multiple values of the same parameter. If a parameter is supplied more
  /// than once in the API request, the API only accepts the last value of that
  /// parameter. In addition, if an invalid parameter is supplied in the API
  /// request, the API ignores that parameter and returns the response
  /// corresponding to the remaining valid parameters. If no parameters are
  /// requested, all parameters are returned.
  /// Value must have pattern
  /// `(.+\[\<,\<=,==,\>=,\>,\<\>\].+,)*(.+\[\<,\<=,==,\>=,\>,\<\>\].+)`.
  ///
  /// [groupIdFilter] - `Deprecated`. This field is deprecated and is no longer
  /// supported. Comma separated group ids (obfuscated) on which user activities
  /// are filtered, i.e. the response will contain activities for only those
  /// users that are a part of at least one of the group ids mentioned here.
  /// Format: "id:abc123,id:xyz456" *Important:* To filter by groups, you must
  /// explicitly add the groups to your filtering groups allowlist. For more
  /// information about adding groups to filtering groups allowlist, see
  /// [Filter results by Google Group](https://support.google.com/a/answer/11482175)
  /// Value must have pattern `(id:\[a-z0-9\]+(,id:\[a-z0-9\]+)*)`.
  ///
  /// [maxResults] - Determines how many activity records are shown on each
  /// response page. For example, if the request sets `maxResults=1` and the
  /// report has two activities, the report has two pages. The response's
  /// `nextPageToken` property has the token to the second page. The
  /// `maxResults` query string is optional in the request. The default value is
  /// 1000.
  /// Value must be between "1" and "1000".
  ///
  /// [orgUnitID] - `Deprecated`. This field is deprecated and is no longer
  /// supported. ID of the organizational unit to report on. Activity records
  /// will be shown only for users who belong to the specified organizational
  /// unit. Data before Dec 17, 2018 doesn't appear in the filtered results.
  /// Value must have pattern `(id:\[a-z0-9\]+)`.
  ///
  /// [pageToken] - The token to specify next page. A report with multiple pages
  /// has a `nextPageToken` property in the response. In your follow-on request
  /// getting the next page of the report, enter the `nextPageToken` value in
  /// the `pageToken` query string.
  ///
  /// [startTime] - Sets the beginning of the range of time shown in the report.
  /// The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z.
  /// The report returns all activities from `startTime` until `endTime`. The
  /// `startTime` must be before the `endTime` (if specified) and the current
  /// time when the request is made, or the API returns an error.
  /// Value must have pattern
  /// `(\d\d\d\d)-(\d\d)-(\d\d)T(\d\d):(\d\d):(\d\d)(?:\.(\d+))?(?:(Z)|(\[-+\])(\d\d):(\d\d))`.
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
    core.String userKey,
    core.String applicationName, {
    core.String? actorIpAddress,
    core.String? customerId,
    core.String? endTime,
    core.String? eventName,
    core.String? filters,
    core.String? groupIdFilter,
    core.int? maxResults,
    core.String? orgUnitID,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'actorIpAddress': ?actorIpAddress == null ? null : [actorIpAddress],
      'customerId': ?customerId == null ? null : [customerId],
      'endTime': ?endTime == null ? null : [endTime],
      'eventName': ?eventName == null ? null : [eventName],
      'filters': ?filters == null ? null : [filters],
      'groupIdFilter': ?groupIdFilter == null ? null : [groupIdFilter],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'orgUnitID': ?orgUnitID == null ? null : [orgUnitID],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'startTime': ?startTime == null ? null : [startTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'admin/reports/v1/activity/users/' +
        commons.escapeVariable('$userKey') +
        '/applications/' +
        commons.escapeVariable('$applicationName') +
        '/watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Channel.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ChannelsResource {
  final commons.ApiRequester _requester;

  ChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Stop watching resources through this channel.
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
  async.Future<void> stop(Channel request, {core.String? $fields}) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'admin/reports_v1/channels/stop';

    await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      downloadOptions: null,
    );
  }
}

class CustomerUsageReportsResource {
  final commons.ApiRequester _requester;

  CustomerUsageReportsResource(commons.ApiRequester client)
    : _requester = client;

  /// Retrieves a report which is a collection of properties and statistics for
  /// a specific customer's account.
  ///
  /// For more information, see the Customers Usage Report guide. For more
  /// information about the customer report's parameters, see the Customers
  /// Usage parameters reference guides.
  ///
  /// Request parameters:
  ///
  /// [date] - Represents the date the usage occurred, based on UTC-8:00
  /// (Pacific Standard Time). The timestamp is in the
  /// [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601), `yyyy-mm-dd`.
  /// Value must have pattern `(\d){4}-(\d){2}-(\d){2}`.
  ///
  /// [customerId] - The unique ID of the customer to retrieve data for.
  /// Value must have pattern `C.+|my_customer`.
  ///
  /// [pageToken] - Token to specify next page. A report with multiple pages has
  /// a `nextPageToken` property in the response. For your follow-on requests
  /// getting all of the report's pages, enter the `nextPageToken` value in the
  /// `pageToken` query string.
  ///
  /// [parameters] - The `parameters` query string is a comma-separated list of
  /// event parameters that refine a report's results. The parameter is
  /// associated with a specific application. The application values for the
  /// Customers usage report include `accounts`, `app_maker`, `apps_scripts`,
  /// `calendar`, `chat`, `classroom`, `cros`, `docs`, `gmail`, `gplus`,
  /// `device_management`, `meet`, and `sites`. A `parameters` query string is
  /// in the CSV form of `app_name1:param_name1, app_name2:param_name2`. *Note:*
  /// The API doesn't accept multiple values of a parameter. If a particular
  /// parameter is supplied more than once in the API request, the API only
  /// accepts the last value of that request parameter. In addition, if an
  /// invalid request parameter is supplied in the API request, the API ignores
  /// that request parameter and returns the response corresponding to the
  /// remaining valid request parameters. An example of an invalid request
  /// parameter is one that does not belong to the application. If no parameters
  /// are requested, all parameters are returned.
  /// Value must have pattern
  /// `(((accounts)|(app_maker)|(apps_scripts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):\[^,\]+,)*(((accounts)|(app_maker)|(apps_scripts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):\[^,\]+)`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(
    core.String date, {
    core.String? customerId,
    core.String? pageToken,
    core.String? parameters,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customerId': ?customerId == null ? null : [customerId],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'parameters': ?parameters == null ? null : [parameters],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'admin/reports/v1/usage/dates/' + commons.escapeVariable('$date');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UsageReports.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class EntityUsageReportsResource {
  final commons.ApiRequester _requester;

  EntityUsageReportsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report which is a collection of properties and statistics for
  /// entities used by users within the account.
  ///
  /// For more information, see the Entities Usage Report guide. For more
  /// information about the entities report's parameters, see the Entities Usage
  /// parameters reference guides.
  ///
  /// Request parameters:
  ///
  /// [entityType] - Represents the type of entity for the report.
  /// Value must have pattern `(gplus_communities)`.
  /// Possible string values are:
  /// - "gplus_communities" : Returns a report on Google+ communities.
  ///
  /// [entityKey] - Represents the key of the object to filter the data with. It
  /// is a string which can take the value `all` to get activity events for all
  /// users, or any other value for an app-specific entity. For details on how
  /// to obtain the `entityKey` for a particular `entityType`, see the Entities
  /// Usage parameters reference guides.
  ///
  /// [date] - Represents the date the usage occurred, based on UTC-8:00
  /// (Pacific Standard Time). The timestamp is in the
  /// [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601), `yyyy-mm-dd`.
  /// Value must have pattern `(\d){4}-(\d){2}-(\d){2}`.
  ///
  /// [customerId] - The unique ID of the customer to retrieve data for.
  /// Value must have pattern `C.+|my_customer`.
  ///
  /// [filters] - The `filters` query string is a comma-separated list of an
  /// application's event parameters where the parameter's value is manipulated
  /// by a relational operator. The `filters` query string includes the name of
  /// the application whose usage is returned in the report. The application
  /// values for the Entities usage report include `accounts`, `docs`, and
  /// `gmail`. Filters are in the form `[application name]:parameter
  /// name[parameter value],...`. In this example, the `<>` 'not equal to'
  /// operator is URL-encoded in the request's query string (%3C%3E): GET
  /// https://www.googleapis.com/admin/reports/v1/usage/gplus_communities/all/dates/2017-12-01
  /// ?parameters=gplus:community_name,gplus:num_total_members
  /// &filters=gplus:num_total_members%3C%3E0 The relational operators include:
  /// - `==` - 'equal to'. - `<>` - 'not equal to'. It is URL-encoded (%3C%3E).
  /// - `<` - 'less than'. It is URL-encoded (%3C). - `<=` - 'less than or equal
  /// to'. It is URL-encoded (%3C=). - `>` - 'greater than'. It is URL-encoded
  /// (%3E). - `>=` - 'greater than or equal to'. It is URL-encoded (%3E=).
  /// Filters can only be applied to numeric parameters.
  /// Value must have pattern
  /// `(((gplus)):\[a-z0-9_\]+\[\<,\<=,==,\>=,\>,!=\]\[^,\]+,)*(((gplus)):\[a-z0-9_\]+\[\<,\<=,==,\>=,\>,!=\]\[^,\]+)`.
  ///
  /// [maxResults] - Determines how many activity records are shown on each
  /// response page. For example, if the request sets `maxResults=1` and the
  /// report has two activities, the report has two pages. The response's
  /// `nextPageToken` property has the token to the second page.
  /// Value must be between "1" and "1000".
  ///
  /// [pageToken] - Token to specify next page. A report with multiple pages has
  /// a `nextPageToken` property in the response. In your follow-on request
  /// getting the next page of the report, enter the `nextPageToken` value in
  /// the `pageToken` query string.
  ///
  /// [parameters] - The `parameters` query string is a comma-separated list of
  /// event parameters that refine a report's results. The parameter is
  /// associated with a specific application. The application values for the
  /// Entities usage report are only `gplus`. A `parameter` query string is in
  /// the CSV form of `[app_name1:param_name1], [app_name2:param_name2]...`.
  /// *Note:* The API doesn't accept multiple values of a parameter. If a
  /// particular parameter is supplied more than once in the API request, the
  /// API only accepts the last value of that request parameter. In addition, if
  /// an invalid request parameter is supplied in the API request, the API
  /// ignores that request parameter and returns the response corresponding to
  /// the remaining valid request parameters. An example of an invalid request
  /// parameter is one that does not belong to the application. If no parameters
  /// are requested, all parameters are returned.
  /// Value must have pattern `(((gplus)):\[^,\]+,)*(((gplus)):\[^,\]+)`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(
    core.String entityType,
    core.String entityKey,
    core.String date, {
    core.String? customerId,
    core.String? filters,
    core.int? maxResults,
    core.String? pageToken,
    core.String? parameters,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customerId': ?customerId == null ? null : [customerId],
      'filters': ?filters == null ? null : [filters],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'parameters': ?parameters == null ? null : [parameters],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'admin/reports/v1/usage/' +
        commons.escapeVariable('$entityType') +
        '/' +
        commons.escapeVariable('$entityKey') +
        '/dates/' +
        commons.escapeVariable('$date');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UsageReports.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UserUsageReportResource {
  final commons.ApiRequester _requester;

  UserUsageReportResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves a report which is a collection of properties and statistics for
  /// a set of users with the account.
  ///
  /// For more information, see the User Usage Report guide. For more
  /// information about the user report's parameters, see the Users Usage
  /// parameters reference guides.
  ///
  /// Request parameters:
  ///
  /// [userKey] - Represents the profile ID or the user email for which the data
  /// should be filtered. Can be `all` for all information, or `userKey` for a
  /// user's unique Google Workspace profile ID or their primary email address.
  /// Must not be a deleted user. For a deleted user, call `users.list` in
  /// Directory API with `showDeleted=true`, then use the returned `ID` as the
  /// `userKey`.
  ///
  /// [date] - Represents the date the usage occurred, based on UTC-8:00
  /// (Pacific Standard Time). The timestamp is in the
  /// [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601), `yyyy-mm-dd`.
  /// Value must have pattern `(\d){4}-(\d){2}-(\d){2}`.
  ///
  /// [customerId] - The unique ID of the customer to retrieve data for.
  /// Value must have pattern `C.+|my_customer`.
  ///
  /// [filters] - The `filters` query string is a comma-separated list of an
  /// application's event parameters where the parameter's value is manipulated
  /// by a relational operator. The `filters` query string includes the name of
  /// the application whose usage is returned in the report. The application
  /// values for the Users Usage Report include `accounts`, `chat`, `docs`, and
  /// `gmail`. Filters are in the form `[application name]:parameter
  /// name[parameter value],...`. In this example, the `<>` 'not equal to'
  /// operator is URL-encoded in the request's query string (%3C%3E): GET
  /// https://www.googleapis.com/admin/reports/v1/usage/users/all/dates/2013-03-03
  /// ?parameters=accounts:last_login_time
  /// &filters=accounts:last_login_time%3C%3E2010-10-28T10:26:35.000Z The
  /// relational operators include: - `==` - 'equal to'. - `<>` - 'not equal
  /// to'. It is URL-encoded (%3C%3E). - `<` - 'less than'. It is URL-encoded
  /// (%3C). - `<=` - 'less than or equal to'. It is URL-encoded (%3C=). - `>` -
  /// 'greater than'. It is URL-encoded (%3E). - `>=` - 'greater than or equal
  /// to'. It is URL-encoded (%3E=).
  /// Value must have pattern
  /// `(((accounts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):\[a-z0-9_\]+\[\<,\<=,==,\>=,\>,!=\]\[^,\]+,)*(((accounts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):\[a-z0-9_\]+\[\<,\<=,==,\>=,\>,!=\]\[^,\]+)`.
  ///
  /// [groupIdFilter] - Comma separated group ids (obfuscated) on which user
  /// activities are filtered, i.e. the response will contain activities for
  /// only those users that are a part of at least one of the group ids
  /// mentioned here. Format: "id:abc123,id:xyz456"
  /// Value must have pattern `(id:\[a-z0-9\]+(,id:\[a-z0-9\]+)*)`.
  ///
  /// [maxResults] - Determines how many activity records are shown on each
  /// response page. For example, if the request sets `maxResults=1` and the
  /// report has two activities, the report has two pages. The response's
  /// `nextPageToken` property has the token to the second page. The
  /// `maxResults` query string is optional.
  /// Value must be between "1" and "1000".
  ///
  /// [orgUnitID] - ID of the organizational unit to report on. User activity
  /// will be shown only for users who belong to the specified organizational
  /// unit. Data before Dec 17, 2018 doesn't appear in the filtered results.
  /// Value must have pattern `(id:\[a-z0-9\]+)`.
  ///
  /// [pageToken] - Token to specify next page. A report with multiple pages has
  /// a `nextPageToken` property in the response. In your follow-on request
  /// getting the next page of the report, enter the `nextPageToken` value in
  /// the `pageToken` query string.
  ///
  /// [parameters] - The `parameters` query string is a comma-separated list of
  /// event parameters that refine a report's results. The parameter is
  /// associated with a specific application. The application values for the
  /// Customers Usage report include `accounts`, `app_maker`, `apps_scripts`,
  /// `calendar`, `chat`, `classroom`, `cros`, `docs`, `gmail`, `gplus`,
  /// `device_management`, `meet`, and `sites`. A `parameters` query string is
  /// in the CSV form of `app_name1:param_name1, app_name2:param_name2`. *Note:*
  /// The API doesn't accept multiple values of a parameter. If a particular
  /// parameter is supplied more than once in the API request, the API only
  /// accepts the last value of that request parameter. In addition, if an
  /// invalid request parameter is supplied in the API request, the API ignores
  /// that request parameter and returns the response corresponding to the
  /// remaining valid request parameters. An example of an invalid request
  /// parameter is one that does not belong to the application. If no parameters
  /// are requested, all parameters are returned.
  /// Value must have pattern
  /// `(((accounts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):\[^,\]+,)*(((accounts)|(chat)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):\[^,\]+)`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsageReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsageReports> get(
    core.String userKey,
    core.String date, {
    core.String? customerId,
    core.String? filters,
    core.String? groupIdFilter,
    core.int? maxResults,
    core.String? orgUnitID,
    core.String? pageToken,
    core.String? parameters,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'customerId': ?customerId == null ? null : [customerId],
      'filters': ?filters == null ? null : [filters],
      'groupIdFilter': ?groupIdFilter == null ? null : [groupIdFilter],
      'maxResults': ?maxResults == null ? null : ['${maxResults}'],
      'orgUnitID': ?orgUnitID == null ? null : [orgUnitID],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'parameters': ?parameters == null ? null : [parameters],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'admin/reports/v1/usage/users/' +
        commons.escapeVariable('$userKey') +
        '/dates/' +
        commons.escapeVariable('$date');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UsageReports.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// JSON template for a collection of activities.
class Activities {
  /// ETag of the resource.
  core.String? etag;

  /// Each activity record in the response.
  core.List<Activity>? items;

  /// The type of API resource.
  ///
  /// For an activity report, the value is `reports#activities`.
  core.String? kind;

  /// Token for retrieving the follow-on next page of the report.
  ///
  /// The `nextPageToken` value is used in the request's `pageToken` query
  /// string.
  core.String? nextPageToken;

  Activities({this.etag, this.items, this.kind, this.nextPageToken});

  Activities.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        items: (json_['items'] as core.List?)
            ?.map(
              (value) => Activity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final items = this.items;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    return {
      'etag': ?etag,
      'items': ?items,
      'kind': ?kind,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Details of the application that was the actor for the activity.
class ActivityActorApplicationInfo {
  /// Name of the application used to perform the action.
  core.String? applicationName;

  /// Whether the application was impersonating a user.
  core.bool? impersonation;

  /// OAuth client id of the third party application used to perform the action.
  core.String? oauthClientId;

  ActivityActorApplicationInfo({
    this.applicationName,
    this.impersonation,
    this.oauthClientId,
  });

  ActivityActorApplicationInfo.fromJson(core.Map json_)
    : this(
        applicationName: json_['applicationName'] as core.String?,
        impersonation: json_['impersonation'] as core.bool?,
        oauthClientId: json_['oauthClientId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationName = this.applicationName;
    final impersonation = this.impersonation;
    final oauthClientId = this.oauthClientId;
    return {
      'applicationName': ?applicationName,
      'impersonation': ?impersonation,
      'oauthClientId': ?oauthClientId,
    };
  }
}

/// User doing the action.
class ActivityActor {
  /// Details of the AI agent that was the actor for the activity.
  AgentAttributionInfo? agentAttributionInfo;

  /// Details of the application that was the actor for the activity.
  ActivityActorApplicationInfo? applicationInfo;

  /// The type of actor.
  core.String? callerType;

  /// The primary email address of the actor.
  ///
  /// May be absent if there is no email address associated with the actor.
  core.String? email;

  /// Only present when `callerType` is `KEY`.
  ///
  /// Can be the `consumer_key` of the requestor for OAuth 2LO API requests or
  /// an identifier for robot accounts.
  core.String? key;

  /// The unique Google Workspace profile ID of the actor.
  ///
  /// This value might be absent if the actor is not a Google Workspace user, or
  /// may be the number 105250506097979753968 which acts as a placeholder ID.
  core.String? profileId;

  ActivityActor({
    this.agentAttributionInfo,
    this.applicationInfo,
    this.callerType,
    this.email,
    this.key,
    this.profileId,
  });

  ActivityActor.fromJson(core.Map json_)
    : this(
        agentAttributionInfo: json_.containsKey('agentAttributionInfo')
            ? AgentAttributionInfo.fromJson(
                json_['agentAttributionInfo']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        applicationInfo: json_.containsKey('applicationInfo')
            ? ActivityActorApplicationInfo.fromJson(
                json_['applicationInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        callerType: json_['callerType'] as core.String?,
        email: json_['email'] as core.String?,
        key: json_['key'] as core.String?,
        profileId: json_['profileId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentAttributionInfo = this.agentAttributionInfo;
    final applicationInfo = this.applicationInfo;
    final callerType = this.callerType;
    final email = this.email;
    final key = this.key;
    final profileId = this.profileId;
    return {
      'agentAttributionInfo': ?agentAttributionInfo,
      'applicationInfo': ?applicationInfo,
      'callerType': ?callerType,
      'email': ?email,
      'key': ?key,
      'profileId': ?profileId,
    };
  }
}

/// Nested parameter value pairs associated with this parameter.
///
/// Complex value type for a parameter are returned as a list of parameter
/// values. For example, the address parameter may have a value as `[{parameter:
/// [{name: city, value: abc}]}]`
class ActivityEventsParametersMessageValue {
  /// Parameter values
  core.List<NestedParameter>? parameter;

  ActivityEventsParametersMessageValue({this.parameter});

  ActivityEventsParametersMessageValue.fromJson(core.Map json_)
    : this(
        parameter: (json_['parameter'] as core.List?)
            ?.map(
              (value) => NestedParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    return {'parameter': ?parameter};
  }
}

class ActivityEventsParametersMultiMessageValue {
  /// Parameter values
  core.List<NestedParameter>? parameter;

  ActivityEventsParametersMultiMessageValue({this.parameter});

  ActivityEventsParametersMultiMessageValue.fromJson(core.Map json_)
    : this(
        parameter: (json_['parameter'] as core.List?)
            ?.map(
              (value) => NestedParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    return {'parameter': ?parameter};
  }
}

class ActivityEventsParameters {
  /// Boolean value of the parameter.
  core.bool? boolValue;

  /// Integer value of the parameter.
  core.String? intValue;

  /// Nested parameter value pairs associated with this parameter.
  ///
  /// Complex value type for a parameter are returned as a list of parameter
  /// values. For example, the address parameter may have a value as
  /// `[{parameter: [{name: city, value: abc}]}]`
  ActivityEventsParametersMessageValue? messageValue;

  /// Integer values of the parameter.
  core.List<core.String>? multiIntValue;

  /// List of `messageValue` objects.
  core.List<ActivityEventsParametersMultiMessageValue>? multiMessageValue;

  /// String values of the parameter.
  core.List<core.String>? multiValue;

  /// The name of the parameter.
  core.String? name;

  /// String value of the parameter.
  core.String? value;

  ActivityEventsParameters({
    this.boolValue,
    this.intValue,
    this.messageValue,
    this.multiIntValue,
    this.multiMessageValue,
    this.multiValue,
    this.name,
    this.value,
  });

  ActivityEventsParameters.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        intValue: json_['intValue'] as core.String?,
        messageValue: json_.containsKey('messageValue')
            ? ActivityEventsParametersMessageValue.fromJson(
                json_['messageValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        multiIntValue: (json_['multiIntValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        multiMessageValue: (json_['multiMessageValue'] as core.List?)
            ?.map(
              (value) => ActivityEventsParametersMultiMessageValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        multiValue: (json_['multiValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final intValue = this.intValue;
    final messageValue = this.messageValue;
    final multiIntValue = this.multiIntValue;
    final multiMessageValue = this.multiMessageValue;
    final multiValue = this.multiValue;
    final name = this.name;
    final value = this.value;
    return {
      'boolValue': ?boolValue,
      'intValue': ?intValue,
      'messageValue': ?messageValue,
      'multiIntValue': ?multiIntValue,
      'multiMessageValue': ?multiMessageValue,
      'multiValue': ?multiValue,
      'name': ?name,
      'value': ?value,
    };
  }
}

/// Nested parameter value pairs associated with this parameter.
///
/// Complex value type for a parameter are returned as a list of parameter
/// values. For example, the address parameter may have a value as `[{parameter:
/// [{name: city, value: abc}]}]`
class ActivityEventsSensitiveParametersMessageValue {
  /// Parameter values
  core.List<NestedParameter>? parameter;

  ActivityEventsSensitiveParametersMessageValue({this.parameter});

  ActivityEventsSensitiveParametersMessageValue.fromJson(core.Map json_)
    : this(
        parameter: (json_['parameter'] as core.List?)
            ?.map(
              (value) => NestedParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    return {'parameter': ?parameter};
  }
}

class ActivityEventsSensitiveParametersMultiMessageValue {
  /// Parameter values
  core.List<NestedParameter>? parameter;

  ActivityEventsSensitiveParametersMultiMessageValue({this.parameter});

  ActivityEventsSensitiveParametersMultiMessageValue.fromJson(core.Map json_)
    : this(
        parameter: (json_['parameter'] as core.List?)
            ?.map(
              (value) => NestedParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameter = this.parameter;
    return {'parameter': ?parameter};
  }
}

class ActivityEventsSensitiveParameters {
  /// Boolean value of the parameter.
  core.bool? boolValue;

  /// Integer value of the parameter.
  core.String? intValue;

  /// Nested parameter value pairs associated with this parameter.
  ///
  /// Complex value type for a parameter are returned as a list of parameter
  /// values. For example, the address parameter may have a value as
  /// `[{parameter: [{name: city, value: abc}]}]`
  ActivityEventsSensitiveParametersMessageValue? messageValue;

  /// Integer values of the parameter.
  core.List<core.String>? multiIntValue;

  /// List of `messageValue` objects.
  core.List<ActivityEventsSensitiveParametersMultiMessageValue>?
  multiMessageValue;

  /// String values of the parameter.
  core.List<core.String>? multiValue;

  /// The name of the parameter.
  core.String? name;

  /// String value of the parameter.
  core.String? value;

  ActivityEventsSensitiveParameters({
    this.boolValue,
    this.intValue,
    this.messageValue,
    this.multiIntValue,
    this.multiMessageValue,
    this.multiValue,
    this.name,
    this.value,
  });

  ActivityEventsSensitiveParameters.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        intValue: json_['intValue'] as core.String?,
        messageValue: json_.containsKey('messageValue')
            ? ActivityEventsSensitiveParametersMessageValue.fromJson(
                json_['messageValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        multiIntValue: (json_['multiIntValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        multiMessageValue: (json_['multiMessageValue'] as core.List?)
            ?.map(
              (value) =>
                  ActivityEventsSensitiveParametersMultiMessageValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
            )
            .toList(),
        multiValue: (json_['multiValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final intValue = this.intValue;
    final messageValue = this.messageValue;
    final multiIntValue = this.multiIntValue;
    final multiMessageValue = this.multiMessageValue;
    final multiValue = this.multiValue;
    final name = this.name;
    final value = this.value;
    return {
      'boolValue': ?boolValue,
      'intValue': ?intValue,
      'messageValue': ?messageValue,
      'multiIntValue': ?multiIntValue,
      'multiMessageValue': ?multiMessageValue,
      'multiValue': ?multiValue,
      'name': ?name,
      'value': ?value,
    };
  }
}

class ActivityEvents {
  /// Name of the event.
  ///
  /// This is the specific name of the activity reported by the API. And each
  /// `eventName` is related to a specific Google Workspace service or feature
  /// which the API organizes into types of events. For `eventName` request
  /// parameters in general: - If no `eventName` is given, the report returns
  /// all possible instances of an `eventName`. - When you request an
  /// `eventName`, the API's response returns all activities which contain that
  /// `eventName`. For more information about `eventName` properties, see the
  /// list of event names for various applications above in `applicationName`.
  core.String? name;

  /// Parameter value pairs for various applications.
  ///
  /// For more information about `eventName` parameters, see the list of event
  /// names for various applications above in `applicationName`.
  core.List<ActivityEventsParameters>? parameters;

  /// Resource ids associated with the event.
  core.List<core.String>? resourceIds;

  /// Includes sensitive parameter value pairs for various applications.
  core.List<ActivityEventsSensitiveParameters>? sensitiveParameters;

  /// Status of the event.
  ///
  /// Note: Not all events have status.
  ActivityEventsStatus? status;

  /// Type of event.
  ///
  /// The Google Workspace service or feature that an administrator changes is
  /// identified in the `type` property which identifies an event using the
  /// `eventName` property. For a full list of the API's `type` categories, see
  /// the list of event names for various applications above in
  /// `applicationName`.
  core.String? type;

  ActivityEvents({
    this.name,
    this.parameters,
    this.resourceIds,
    this.sensitiveParameters,
    this.status,
    this.type,
  });

  ActivityEvents.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => ActivityEventsParameters.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resourceIds: (json_['resourceIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        sensitiveParameters: (json_['sensitiveParameters'] as core.List?)
            ?.map(
              (value) => ActivityEventsSensitiveParameters.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        status: json_.containsKey('status')
            ? ActivityEventsStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final parameters = this.parameters;
    final resourceIds = this.resourceIds;
    final sensitiveParameters = this.sensitiveParameters;
    final status = this.status;
    final type = this.type;
    return {
      'name': ?name,
      'parameters': ?parameters,
      'resourceIds': ?resourceIds,
      'sensitiveParameters': ?sensitiveParameters,
      'status': ?status,
      'type': ?type,
    };
  }
}

/// Unique identifier for each activity record.
class ActivityId {
  /// Application name to which the event belongs.
  ///
  /// For possible values see the list of applications above in
  /// `applicationName`.
  core.String? applicationName;

  /// The unique identifier for a Google Workspace account.
  core.String? customerId;

  /// Time of occurrence of the activity.
  ///
  /// This is in UNIX epoch time in seconds.
  core.DateTime? time;

  /// Unique qualifier if multiple events have the same time.
  core.String? uniqueQualifier;

  ActivityId({
    this.applicationName,
    this.customerId,
    this.time,
    this.uniqueQualifier,
  });

  ActivityId.fromJson(core.Map json_)
    : this(
        applicationName: json_['applicationName'] as core.String?,
        customerId: json_['customerId'] as core.String?,
        time: json_.containsKey('time')
            ? core.DateTime.parse(json_['time'] as core.String)
            : null,
        uniqueQualifier: json_['uniqueQualifier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final applicationName = this.applicationName;
    final customerId = this.customerId;
    final time = this.time;
    final uniqueQualifier = this.uniqueQualifier;
    return {
      'applicationName': ?applicationName,
      'customerId': ?customerId,
      'time': ?time?.toUtc().toIso8601String(),
      'uniqueQualifier': ?uniqueQualifier,
    };
  }
}

/// JSON template for the activity resource.
class Activity {
  /// User doing the action.
  ActivityActor? actor;

  /// ETag of the entry.
  core.String? etag;

  /// Activity events in the report.
  core.List<ActivityEvents>? events;

  /// Unique identifier for each activity record.
  ActivityId? id;

  /// IP address of the user doing the action.
  ///
  /// This is the Internet Protocol (IP) address of the user when logging into
  /// Google Workspace, which may or may not reflect the user's physical
  /// location. For example, the IP address can be the user's proxy server's
  /// address or a virtual private network (VPN) address. The API supports IPv4
  /// and IPv6.
  core.String? ipAddress;

  /// Whether the activity was performed by an agent.
  core.bool? isAgenticAction;

  /// The type of API resource.
  ///
  /// For an activity report, the value is `audit#activity`.
  core.String? kind;

  /// Network information of the user doing the action.
  ActivityNetworkInfo? networkInfo;

  /// This is the domain that is affected by the report's event.
  ///
  /// For example domain of Admin console or the Drive application's document
  /// owner.
  core.String? ownerDomain;

  /// Details of the resource on which the action was performed.
  core.List<ResourceDetails>? resourceDetails;

  /// Device details of the user doing the action.
  ActivityUserDeviceInfo? userDeviceInfo;

  Activity({
    this.actor,
    this.etag,
    this.events,
    this.id,
    this.ipAddress,
    this.isAgenticAction,
    this.kind,
    this.networkInfo,
    this.ownerDomain,
    this.resourceDetails,
    this.userDeviceInfo,
  });

  Activity.fromJson(core.Map json_)
    : this(
        actor: json_.containsKey('actor')
            ? ActivityActor.fromJson(
                json_['actor'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        events: (json_['events'] as core.List?)
            ?.map(
              (value) => ActivityEvents.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_.containsKey('id')
            ? ActivityId.fromJson(
                json_['id'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ipAddress: json_['ipAddress'] as core.String?,
        isAgenticAction: json_['isAgenticAction'] as core.bool?,
        kind: json_['kind'] as core.String?,
        networkInfo: json_.containsKey('networkInfo')
            ? ActivityNetworkInfo.fromJson(
                json_['networkInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        ownerDomain: json_['ownerDomain'] as core.String?,
        resourceDetails: (json_['resourceDetails'] as core.List?)
            ?.map(
              (value) => ResourceDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        userDeviceInfo: json_.containsKey('userDeviceInfo')
            ? ActivityUserDeviceInfo.fromJson(
                json_['userDeviceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actor = this.actor;
    final etag = this.etag;
    final events = this.events;
    final id = this.id;
    final ipAddress = this.ipAddress;
    final isAgenticAction = this.isAgenticAction;
    final kind = this.kind;
    final networkInfo = this.networkInfo;
    final ownerDomain = this.ownerDomain;
    final resourceDetails = this.resourceDetails;
    final userDeviceInfo = this.userDeviceInfo;
    return {
      'actor': ?actor,
      'etag': ?etag,
      'events': ?events,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'isAgenticAction': ?isAgenticAction,
      'kind': ?kind,
      'networkInfo': ?networkInfo,
      'ownerDomain': ?ownerDomain,
      'resourceDetails': ?resourceDetails,
      'userDeviceInfo': ?userDeviceInfo,
    };
  }
}

/// Status of the event.
///
/// Note: Not all events have status.
class ActivityEventsStatus {
  /// Error code of the event.
  ///
  /// Note: Field can be empty.
  core.String? errorCode;

  /// Error message of the event.
  ///
  /// Note: Field can be empty.
  core.String? errorMessage;

  /// Status of the event.
  ///
  /// Possible values if not empty: - UNKNOWN_EVENT_STATUS - SUCCEEDED -
  /// SUCCEEDED_WITH_WARNINGS - FAILED - SKIPPED
  core.String? eventStatus;

  /// Status code of the event.
  ///
  /// Note: Field can be empty.
  core.int? httpStatusCode;

  ActivityEventsStatus({
    this.errorCode,
    this.errorMessage,
    this.eventStatus,
    this.httpStatusCode,
  });

  ActivityEventsStatus.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.String?,
        errorMessage: json_['errorMessage'] as core.String?,
        eventStatus: json_['eventStatus'] as core.String?,
        httpStatusCode: json_['httpStatusCode'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final errorCode = this.errorCode;
    final errorMessage = this.errorMessage;
    final eventStatus = this.eventStatus;
    final httpStatusCode = this.httpStatusCode;
    return {
      'errorCode': ?errorCode,
      'errorMessage': ?errorMessage,
      'eventStatus': ?eventStatus,
      'httpStatusCode': ?httpStatusCode,
    };
  }
}

/// Network information of the user doing the action.
class ActivityNetworkInfo {
  /// IP Address of the user doing the action.
  core.List<core.int>? ipAsn;

  /// ISO 3166-1 alpha-2 region code of the user doing the action.
  core.String? regionCode;

  /// ISO 3166-2 region code (states and provinces) for countries of the user
  /// doing the action.
  core.String? subdivisionCode;

  ActivityNetworkInfo({this.ipAsn, this.regionCode, this.subdivisionCode});

  ActivityNetworkInfo.fromJson(core.Map json_)
    : this(
        ipAsn: (json_['ipAsn'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        regionCode: json_['regionCode'] as core.String?,
        subdivisionCode: json_['subdivisionCode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ipAsn = this.ipAsn;
    final regionCode = this.regionCode;
    final subdivisionCode = this.subdivisionCode;
    return {
      'ipAsn': ?ipAsn,
      'regionCode': ?regionCode,
      'subdivisionCode': ?subdivisionCode,
    };
  }
}

/// Device details of the user doing the action.
class ActivityUserDeviceInfo {
  /// Device ID of the user's device.
  ///
  /// Output only.
  core.String? deviceId;

  /// Device OS version of the user's device.
  ///
  /// Output only.
  core.String? deviceOsVersion;

  /// The type of the user's device.
  ///
  /// Output only.
  core.String? deviceType;

  ActivityUserDeviceInfo({
    this.deviceId,
    this.deviceOsVersion,
    this.deviceType,
  });

  ActivityUserDeviceInfo.fromJson(core.Map json_)
    : this(
        deviceId: json_['deviceId'] as core.String?,
        deviceOsVersion: json_['deviceOsVersion'] as core.String?,
        deviceType: json_['deviceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deviceId = this.deviceId;
    final deviceOsVersion = this.deviceOsVersion;
    final deviceType = this.deviceType;
    return {
      'deviceId': ?deviceId,
      'deviceOsVersion': ?deviceOsVersion,
      'deviceType': ?deviceType,
    };
  }
}

/// Details of the AI agent that was the actor for the activity.
class AgentAttributionInfo {
  /// The ID of the agent.
  core.String? agentId;

  /// The user visible name of the agent.
  core.String? agentName;

  /// The owner of the agent.
  AgentAttributionInfoAgentOwner? agentOwner;

  /// Type of the agent.
  core.String? agentType;

  AgentAttributionInfo({
    this.agentId,
    this.agentName,
    this.agentOwner,
    this.agentType,
  });

  AgentAttributionInfo.fromJson(core.Map json_)
    : this(
        agentId: json_['agentId'] as core.String?,
        agentName: json_['agentName'] as core.String?,
        agentOwner: json_.containsKey('agentOwner')
            ? AgentAttributionInfoAgentOwner.fromJson(
                json_['agentOwner'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        agentType: json_['agentType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final agentId = this.agentId;
    final agentName = this.agentName;
    final agentOwner = this.agentOwner;
    final agentType = this.agentType;
    return {
      'agentId': ?agentId,
      'agentName': ?agentName,
      'agentOwner': ?agentOwner,
      'agentType': ?agentType,
    };
  }
}

/// Details of the owner of the AI agent.
class AgentAttributionInfoAgentOwner {
  /// The email of the agent owner.
  core.String? email;

  AgentAttributionInfoAgentOwner({this.email});

  AgentAttributionInfoAgentOwner.fromJson(core.Map json_)
    : this(email: json_['email'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    return {'email': ?email};
  }
}

/// Details of the label applied on the resource.
class AppliedLabel {
  /// List of fields which are part of the label and have been set by the user.
  ///
  /// If label has a field which was not set by the user, it would not be
  /// present in this list.
  core.List<FieldValue>? fieldValues;

  /// Identifier of the label - Only the label id, not the full OnePlatform
  /// resource name.
  core.String? id;

  /// The reason why the label was applied on the resource.
  Reason? reason;

  /// Title of the label
  core.String? title;

  AppliedLabel({this.fieldValues, this.id, this.reason, this.title});

  AppliedLabel.fromJson(core.Map json_)
    : this(
        fieldValues: (json_['fieldValues'] as core.List?)
            ?.map(
              (value) => FieldValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_['id'] as core.String?,
        reason: json_.containsKey('reason')
            ? Reason.fromJson(
                json_['reason'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldValues = this.fieldValues;
    final id = this.id;
    final reason = this.reason;
    final title = this.title;
    return {
      'fieldValues': ?fieldValues,
      'id': ?id,
      'reason': ?reason,
      'title': ?title,
    };
  }
}

/// A notification channel used to watch for resource changes.
class Channel {
  /// The address where notifications are delivered for this channel.
  core.String? address;

  /// Date and time of notification channel expiration, expressed as a Unix
  /// timestamp, in milliseconds.
  ///
  /// Optional.
  core.String? expiration;

  /// A UUID or similar unique string that identifies this channel.
  core.String? id;

  /// Identifies this as a notification channel used to watch for changes to a
  /// resource, which is "`api#channel`".
  core.String? kind;

  /// Additional parameters controlling delivery channel behavior.
  ///
  /// Optional.
  core.Map<core.String, core.String>? params;

  /// A Boolean value to indicate whether payload is wanted.
  ///
  /// A payload is data that is sent in the body of an HTTP POST, PUT, or PATCH
  /// message and contains important information about the request. Optional.
  core.bool? payload;

  /// An opaque ID that identifies the resource being watched on this channel.
  ///
  /// Stable across different API versions.
  core.String? resourceId;

  /// A version-specific identifier for the watched resource.
  core.String? resourceUri;

  /// An arbitrary string delivered to the target address with each notification
  /// delivered over this channel.
  ///
  /// Optional.
  core.String? token;

  /// The type of delivery mechanism used for this channel.
  ///
  /// The value should be set to `"web_hook"`.
  core.String? type;

  Channel({
    this.address,
    this.expiration,
    this.id,
    this.kind,
    this.params,
    this.payload,
    this.resourceId,
    this.resourceUri,
    this.token,
    this.type,
  });

  Channel.fromJson(core.Map json_)
    : this(
        address: json_['address'] as core.String?,
        expiration: json_['expiration'] as core.String?,
        id: json_['id'] as core.String?,
        kind: json_['kind'] as core.String?,
        params: (json_['params'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        payload: json_['payload'] as core.bool?,
        resourceId: json_['resourceId'] as core.String?,
        resourceUri: json_['resourceUri'] as core.String?,
        token: json_['token'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final address = this.address;
    final expiration = this.expiration;
    final id = this.id;
    final kind = this.kind;
    final params = this.params;
    final payload = this.payload;
    final resourceId = this.resourceId;
    final resourceUri = this.resourceUri;
    final token = this.token;
    final type = this.type;
    return {
      'address': ?address,
      'expiration': ?expiration,
      'id': ?id,
      'kind': ?kind,
      'params': ?params,
      'payload': ?payload,
      'resourceId': ?resourceId,
      'resourceUri': ?resourceUri,
      'token': ?token,
      'type': ?type,
    };
  }
}

/// Identity of the Google Workspace customer who owns the resource.
class CustomerIdentity {
  /// Customer id.
  core.String? id;

  CustomerIdentity({this.id});

  CustomerIdentity.fromJson(core.Map json_)
    : this(id: json_['id'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    return {'id': ?id};
  }
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

/// Details of the field value set by the user for the particular label.
class FieldValue {
  /// Setting a date value.
  Date? dateValue;

  /// Display name of the field
  core.String? displayName;

  /// Identifier of the field
  core.String? id;

  /// Setting an integer value.
  core.String? integerValue;

  /// Setting a long text value.
  core.String? longTextValue;

  /// The reason why the field was applied to the label.
  Reason? reason;

  /// Setting a selection list value by selecting multiple values from a
  /// dropdown.
  FieldValueSelectionListValue? selectionListValue;

  /// Setting a selection value by selecting a single value from a dropdown.
  FieldValueSelectionValue? selectionValue;

  /// Setting a text list value.
  FieldValueTextListValue? textListValue;

  /// Setting a text value.
  core.String? textValue;

  /// Type of the field
  core.String? type;

  /// If the field is unset, this will be true.
  core.bool? unsetValue;

  /// Setting a user list value by selecting multiple users.
  FieldValueUserListValue? userListValue;

  /// Setting a user value by selecting a single user.
  FieldValueUserValue? userValue;

  FieldValue({
    this.dateValue,
    this.displayName,
    this.id,
    this.integerValue,
    this.longTextValue,
    this.reason,
    this.selectionListValue,
    this.selectionValue,
    this.textListValue,
    this.textValue,
    this.type,
    this.unsetValue,
    this.userListValue,
    this.userValue,
  });

  FieldValue.fromJson(core.Map json_)
    : this(
        dateValue: json_.containsKey('dateValue')
            ? Date.fromJson(
                json_['dateValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
        integerValue: json_['integerValue'] as core.String?,
        longTextValue: json_['longTextValue'] as core.String?,
        reason: json_.containsKey('reason')
            ? Reason.fromJson(
                json_['reason'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        selectionListValue: json_.containsKey('selectionListValue')
            ? FieldValueSelectionListValue.fromJson(
                json_['selectionListValue']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        selectionValue: json_.containsKey('selectionValue')
            ? FieldValueSelectionValue.fromJson(
                json_['selectionValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textListValue: json_.containsKey('textListValue')
            ? FieldValueTextListValue.fromJson(
                json_['textListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        textValue: json_['textValue'] as core.String?,
        type: json_['type'] as core.String?,
        unsetValue: json_['unsetValue'] as core.bool?,
        userListValue: json_.containsKey('userListValue')
            ? FieldValueUserListValue.fromJson(
                json_['userListValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        userValue: json_.containsKey('userValue')
            ? FieldValueUserValue.fromJson(
                json_['userValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dateValue = this.dateValue;
    final displayName = this.displayName;
    final id = this.id;
    final integerValue = this.integerValue;
    final longTextValue = this.longTextValue;
    final reason = this.reason;
    final selectionListValue = this.selectionListValue;
    final selectionValue = this.selectionValue;
    final textListValue = this.textListValue;
    final textValue = this.textValue;
    final type = this.type;
    final unsetValue = this.unsetValue;
    final userListValue = this.userListValue;
    final userValue = this.userValue;
    return {
      'dateValue': ?dateValue,
      'displayName': ?displayName,
      'id': ?id,
      'integerValue': ?integerValue,
      'longTextValue': ?longTextValue,
      'reason': ?reason,
      'selectionListValue': ?selectionListValue,
      'selectionValue': ?selectionValue,
      'textListValue': ?textListValue,
      'textValue': ?textValue,
      'type': ?type,
      'unsetValue': ?unsetValue,
      'userListValue': ?userListValue,
      'userValue': ?userValue,
    };
  }
}

/// Setting a selection list value by selecting multiple values from a dropdown.
class FieldValueSelectionListValue {
  /// List of selections.
  core.List<FieldValueSelectionValue>? values;

  FieldValueSelectionListValue({this.values});

  FieldValueSelectionListValue.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => FieldValueSelectionValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Setting a selection value by selecting a single value from a dropdown.
class FieldValueSelectionValue {
  /// Whether the selection is badged.
  core.bool? badged;

  /// Display name of the selection.
  core.String? displayName;

  /// Identifier of the selection.
  core.String? id;

  FieldValueSelectionValue({this.badged, this.displayName, this.id});

  FieldValueSelectionValue.fromJson(core.Map json_)
    : this(
        badged: json_['badged'] as core.bool?,
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final badged = this.badged;
    final displayName = this.displayName;
    final id = this.id;
    return {'badged': ?badged, 'displayName': ?displayName, 'id': ?id};
  }
}

/// Setting a text list value.
typedef FieldValueTextListValue = $Shared12;

/// Setting a user list value by selecting multiple users.
class FieldValueUserListValue {
  /// List of users.
  core.List<FieldValueUserValue>? values;

  FieldValueUserListValue({this.values});

  FieldValueUserListValue.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map(
              (value) => FieldValueUserValue.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
}

/// Setting a user value by selecting a single user.
class FieldValueUserValue {
  /// Email of the user.
  core.String? email;

  FieldValueUserValue({this.email});

  FieldValueUserValue.fromJson(core.Map json_)
    : this(email: json_['email'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    return {'email': ?email};
  }
}

/// Identity of the group who owns the resource.
class GroupIdentity {
  /// Group email.
  core.String? groupEmail;

  /// Group gaia id.
  core.String? id;

  GroupIdentity({this.groupEmail, this.id});

  GroupIdentity.fromJson(core.Map json_)
    : this(
        groupEmail: json_['groupEmail'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final groupEmail = this.groupEmail;
    final id = this.id;
    return {'groupEmail': ?groupEmail, 'id': ?id};
  }
}

/// JSON template for a parameter used in various reports.
class NestedParameter {
  /// Boolean value of the parameter.
  core.bool? boolValue;

  /// Integer value of the parameter.
  core.String? intValue;

  /// Multiple boolean values of the parameter.
  core.List<core.bool>? multiBoolValue;

  /// Multiple integer values of the parameter.
  core.List<core.String>? multiIntValue;

  /// Multiple string values of the parameter.
  core.List<core.String>? multiValue;

  /// The name of the parameter.
  core.String? name;

  /// String value of the parameter.
  core.String? value;

  NestedParameter({
    this.boolValue,
    this.intValue,
    this.multiBoolValue,
    this.multiIntValue,
    this.multiValue,
    this.name,
    this.value,
  });

  NestedParameter.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        intValue: json_['intValue'] as core.String?,
        multiBoolValue: (json_['multiBoolValue'] as core.List?)
            ?.map((value) => value as core.bool)
            .toList(),
        multiIntValue: (json_['multiIntValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        multiValue: (json_['multiValue'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final intValue = this.intValue;
    final multiBoolValue = this.multiBoolValue;
    final multiIntValue = this.multiIntValue;
    final multiValue = this.multiValue;
    final name = this.name;
    final value = this.value;
    return {
      'boolValue': ?boolValue,
      'intValue': ?intValue,
      'multiBoolValue': ?multiBoolValue,
      'multiIntValue': ?multiIntValue,
      'multiValue': ?multiValue,
      'name': ?name,
      'value': ?value,
    };
  }
}

/// Details of the owner of the resource.
class OwnerDetails {
  /// Identity details of the owner(s) of the resource.
  core.List<OwnerIdentity>? ownerIdentity;

  /// Type of the owner of the resource.
  core.String? ownerType;

  OwnerDetails({this.ownerIdentity, this.ownerType});

  OwnerDetails.fromJson(core.Map json_)
    : this(
        ownerIdentity: (json_['ownerIdentity'] as core.List?)
            ?.map(
              (value) => OwnerIdentity.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        ownerType: json_['ownerType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ownerIdentity = this.ownerIdentity;
    final ownerType = this.ownerType;
    return {'ownerIdentity': ?ownerIdentity, 'ownerType': ?ownerType};
  }
}

/// Identity details of the owner of the resource.
class OwnerIdentity {
  /// Identity of the Google Workspace customer who owns the resource.
  CustomerIdentity? customerIdentity;

  /// Identity of the group who owns the resource.
  GroupIdentity? groupIdentity;

  /// Identity of the shared drive who owns the resource.
  SharedDriveIdentity? sharedDriveIdentity;

  /// Identity of the user who owns the resource.
  UserIdentity? userIdentity;

  OwnerIdentity({
    this.customerIdentity,
    this.groupIdentity,
    this.sharedDriveIdentity,
    this.userIdentity,
  });

  OwnerIdentity.fromJson(core.Map json_)
    : this(
        customerIdentity: json_.containsKey('customerIdentity')
            ? CustomerIdentity.fromJson(
                json_['customerIdentity']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        groupIdentity: json_.containsKey('groupIdentity')
            ? GroupIdentity.fromJson(
                json_['groupIdentity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sharedDriveIdentity: json_.containsKey('sharedDriveIdentity')
            ? SharedDriveIdentity.fromJson(
                json_['sharedDriveIdentity']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        userIdentity: json_.containsKey('userIdentity')
            ? UserIdentity.fromJson(
                json_['userIdentity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerIdentity = this.customerIdentity;
    final groupIdentity = this.groupIdentity;
    final sharedDriveIdentity = this.sharedDriveIdentity;
    final userIdentity = this.userIdentity;
    return {
      'customerIdentity': ?customerIdentity,
      'groupIdentity': ?groupIdentity,
      'sharedDriveIdentity': ?sharedDriveIdentity,
      'userIdentity': ?userIdentity,
    };
  }
}

/// The reason why the label/field was applied.
class Reason {
  /// The type of the reason.
  core.String? reasonType;

  Reason({this.reasonType});

  Reason.fromJson(core.Map json_)
    : this(reasonType: json_['reasonType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final reasonType = this.reasonType;
    return {'reasonType': ?reasonType};
  }
}

/// Details of the resource on which the action was performed.
class ResourceDetails {
  /// List of labels applied on the resource
  core.List<AppliedLabel>? appliedLabels;

  /// Identifier of the resource, such as a doc_id for a Drive document, a
  /// conference_id for a Meet conference, or a "gaia_id/rfc2822_message_id" for
  /// an email.
  core.String? id;

  /// Owner details of the resource.
  OwnerDetails? ownerDetails;

  /// Defines relationship of the resource to the events
  core.String? relation;

  /// Title of the resource.
  ///
  /// For instance, in case of a drive document, this would be the title of the
  /// document. In case of an email, this would be the subject.
  core.String? title;

  /// Type of the resource - document, email, chat message
  core.String? type;

  ResourceDetails({
    this.appliedLabels,
    this.id,
    this.ownerDetails,
    this.relation,
    this.title,
    this.type,
  });

  ResourceDetails.fromJson(core.Map json_)
    : this(
        appliedLabels: (json_['appliedLabels'] as core.List?)
            ?.map(
              (value) => AppliedLabel.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_['id'] as core.String?,
        ownerDetails: json_.containsKey('ownerDetails')
            ? OwnerDetails.fromJson(
                json_['ownerDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        relation: json_['relation'] as core.String?,
        title: json_['title'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appliedLabels = this.appliedLabels;
    final id = this.id;
    final ownerDetails = this.ownerDetails;
    final relation = this.relation;
    final title = this.title;
    final type = this.type;
    return {
      'appliedLabels': ?appliedLabels,
      'id': ?id,
      'ownerDetails': ?ownerDetails,
      'relation': ?relation,
      'title': ?title,
      'type': ?type,
    };
  }
}

/// Identity of the shared drive who owns the resource.
class SharedDriveIdentity {
  /// Shared drive gaia id.
  core.String? id;

  /// Shared drive name.
  core.String? sharedDriveName;

  SharedDriveIdentity({this.id, this.sharedDriveName});

  SharedDriveIdentity.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        sharedDriveName: json_['sharedDriveName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final sharedDriveName = this.sharedDriveName;
    return {'id': ?id, 'sharedDriveName': ?sharedDriveName};
  }
}

/// Information about the type of the item.
///
/// Output only.
class UsageReportEntity {
  /// The unique identifier of the customer's account.
  ///
  /// Output only.
  core.String? customerId;

  /// Object key.
  ///
  /// Only relevant if entity.type = "OBJECT" Note: external-facing name of
  /// report is "Entities" rather than "Objects".
  ///
  /// Output only.
  core.String? entityId;

  /// The user's immutable Google Workspace profile identifier.
  ///
  /// Output only.
  core.String? profileId;

  /// The type of item.
  ///
  /// The value is `user`.
  ///
  /// Output only.
  core.String? type;

  /// The user's email address.
  ///
  /// Only relevant if entity.type = "USER"
  ///
  /// Output only.
  core.String? userEmail;

  UsageReportEntity({
    this.customerId,
    this.entityId,
    this.profileId,
    this.type,
    this.userEmail,
  });

  UsageReportEntity.fromJson(core.Map json_)
    : this(
        customerId: json_['customerId'] as core.String?,
        entityId: json_['entityId'] as core.String?,
        profileId: json_['profileId'] as core.String?,
        type: json_['type'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerId = this.customerId;
    final entityId = this.entityId;
    final profileId = this.profileId;
    final type = this.type;
    final userEmail = this.userEmail;
    return {
      'customerId': ?customerId,
      'entityId': ?entityId,
      'profileId': ?profileId,
      'type': ?type,
      'userEmail': ?userEmail,
    };
  }
}

class UsageReportParameters {
  /// Boolean value of the parameter.
  ///
  /// Output only.
  core.bool? boolValue;

  /// The RFC 3339 formatted value of the parameter, for example
  /// 2010-10-28T10:26:35.000Z.
  core.DateTime? datetimeValue;

  /// Integer value of the parameter.
  ///
  /// Output only.
  core.String? intValue;

  /// Nested message value of the parameter.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? msgValue;

  /// The name of the parameter.
  ///
  /// For the User Usage Report parameter names, see the User Usage parameters
  /// reference.
  core.String? name;

  /// String value of the parameter.
  ///
  /// Output only.
  core.String? stringValue;

  UsageReportParameters({
    this.boolValue,
    this.datetimeValue,
    this.intValue,
    this.msgValue,
    this.name,
    this.stringValue,
  });

  UsageReportParameters.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        datetimeValue: json_.containsKey('datetimeValue')
            ? core.DateTime.parse(json_['datetimeValue'] as core.String)
            : null,
        intValue: json_['intValue'] as core.String?,
        msgValue: (json_['msgValue'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        name: json_['name'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final boolValue = this.boolValue;
    final datetimeValue = this.datetimeValue;
    final intValue = this.intValue;
    final msgValue = this.msgValue;
    final name = this.name;
    final stringValue = this.stringValue;
    return {
      'boolValue': ?boolValue,
      'datetimeValue': ?datetimeValue?.toUtc().toIso8601String(),
      'intValue': ?intValue,
      'msgValue': ?msgValue,
      'name': ?name,
      'stringValue': ?stringValue,
    };
  }
}

/// JSON template for a usage report.
class UsageReport {
  /// The date of the report request.
  ///
  /// Output only.
  core.String? date;

  /// Information about the type of the item.
  ///
  /// Output only.
  UsageReportEntity? entity;

  /// ETag of the resource.
  core.String? etag;

  /// The type of API resource.
  ///
  /// For a usage report, the value is `admin#reports#usageReport`.
  core.String? kind;

  /// Parameter value pairs for various applications.
  ///
  /// For the Entity Usage Report parameters and values, see
  /// [the Entity Usage parameters reference](https://developers.google.com/workspace/admin/reports/v1/reference/usage-ref-appendix-a/entities).
  ///
  /// Output only.
  core.List<UsageReportParameters>? parameters;

  UsageReport({this.date, this.entity, this.etag, this.kind, this.parameters});

  UsageReport.fromJson(core.Map json_)
    : this(
        date: json_['date'] as core.String?,
        entity: json_.containsKey('entity')
            ? UsageReportEntity.fromJson(
                json_['entity'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        etag: json_['etag'] as core.String?,
        kind: json_['kind'] as core.String?,
        parameters: (json_['parameters'] as core.List?)
            ?.map(
              (value) => UsageReportParameters.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final date = this.date;
    final entity = this.entity;
    final etag = this.etag;
    final kind = this.kind;
    final parameters = this.parameters;
    return {
      'date': ?date,
      'entity': ?entity,
      'etag': ?etag,
      'kind': ?kind,
      'parameters': ?parameters,
    };
  }
}

class UsageReportsWarningsData {
  /// Key associated with a key-value pair to give detailed information on the
  /// warning.
  core.String? key;

  /// Value associated with a key-value pair to give detailed information on the
  /// warning.
  core.String? value;

  UsageReportsWarningsData({this.key, this.value});

  UsageReportsWarningsData.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final value = this.value;
    return {'key': ?key, 'value': ?value};
  }
}

class UsageReportsWarnings {
  /// Machine readable code or warning type.
  ///
  /// The warning code value is `200`.
  core.String? code;

  /// Key-value pairs to give detailed information on the warning.
  core.List<UsageReportsWarningsData>? data;

  /// The human readable messages for a warning are: - Data is not available
  /// warning - Sorry, data for date yyyy-mm-dd for application "`application
  /// name`" is not available.
  ///
  /// - Partial data is available warning - Data for date yyyy-mm-dd for
  /// application "`application name`" is not available right now, please try
  /// again after a few hours.
  core.String? message;

  UsageReportsWarnings({this.code, this.data, this.message});

  UsageReportsWarnings.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        data: (json_['data'] as core.List?)
            ?.map(
              (value) => UsageReportsWarningsData.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final data = this.data;
    final message = this.message;
    return {'code': ?code, 'data': ?data, 'message': ?message};
  }
}

class UsageReports {
  /// ETag of the resource.
  core.String? etag;

  /// The type of API resource.
  ///
  /// For a usage report, the value is `admin#reports#usageReports`.
  core.String? kind;

  /// Token to specify next page.
  ///
  /// A report with multiple pages has a `nextPageToken` property in the
  /// response. For your follow-on requests getting all of the report's pages,
  /// enter the `nextPageToken` value in the `pageToken` query string.
  core.String? nextPageToken;

  /// Various application parameter records.
  core.List<UsageReport>? usageReports;

  /// Warnings, if any.
  core.List<UsageReportsWarnings>? warnings;

  UsageReports({
    this.etag,
    this.kind,
    this.nextPageToken,
    this.usageReports,
    this.warnings,
  });

  UsageReports.fromJson(core.Map json_)
    : this(
        etag: json_['etag'] as core.String?,
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        usageReports: (json_['usageReports'] as core.List?)
            ?.map(
              (value) => UsageReport.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        warnings: (json_['warnings'] as core.List?)
            ?.map(
              (value) => UsageReportsWarnings.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final etag = this.etag;
    final kind = this.kind;
    final nextPageToken = this.nextPageToken;
    final usageReports = this.usageReports;
    final warnings = this.warnings;
    return {
      'etag': ?etag,
      'kind': ?kind,
      'nextPageToken': ?nextPageToken,
      'usageReports': ?usageReports,
      'warnings': ?warnings,
    };
  }
}

/// Identity of the user who owns the resource.
class UserIdentity {
  /// User gaia id.
  core.String? id;

  /// User email.
  core.String? userEmail;

  UserIdentity({this.id, this.userEmail});

  UserIdentity.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.String?,
        userEmail: json_['userEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final id = this.id;
    final userEmail = this.userEmail;
    return {'id': ?id, 'userEmail': ?userEmail};
  }
}
