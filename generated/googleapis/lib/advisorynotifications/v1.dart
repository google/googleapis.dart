// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Advisory Notifications API - v1
///
/// An API for accessing Advisory Notifications in Google Cloud
///
/// For more information, see <https://cloud.google.com/advisory-notifications>
///
/// Create an instance of [AdvisorynotificationsApi] to access these resources:
///
/// - [OrganizationsResource]
///   - [OrganizationsLocationsResource]
///     - [OrganizationsLocationsNotificationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsNotificationsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// An API for accessing Advisory Notifications in Google Cloud
class AdvisorynotificationsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  AdvisorynotificationsApi(http.Client client,
      {core.String rootUrl = 'https://advisorynotifications.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsResource get locations =>
      OrganizationsLocationsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsLocationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsNotificationsResource get notifications =>
      OrganizationsLocationsNotificationsResource(_requester);

  OrganizationsLocationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get notification settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the settings to retrieve. Format:
  /// organizations/{organization}/locations/{location}/settings or
  /// projects/{projects}/locations/{location}/settings.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Settings> getSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update notification settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the settings to retrieve.
  /// Format: organizations/{organization}/locations/{location}/settings or
  /// projects/{projects}/locations/{location}/settings.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Settings> updateSettings(
    GoogleCloudAdvisorynotificationsV1Settings request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsLocationsNotificationsResource {
  final commons.ApiRequester _requester;

  OrganizationsLocationsNotificationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a notification.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the notification to retrieve. Format:
  /// organizations/{organization}/locations/{location}/notifications/{notification}
  /// or projects/{projects}/locations/{location}/notifications/{notification}.
  /// Value must have pattern
  /// `^organizations/\[^/\]+/locations/\[^/\]+/notifications/\[^/\]+$`.
  ///
  /// [languageCode] - ISO code for requested localization language. If unset,
  /// will be interpereted as "en". If the requested language is valid, but not
  /// supported for this notification, English will be returned with an "Not
  /// applicable" LocalizationState. If the ISO code is invalid (i.e. not a real
  /// language), this RPC will throw an error.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Notification> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Notification.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notifications under a given parent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// notifications. Must be of the form
  /// "organizations/{organization}/locations/{location}" or
  /// "projects/{project}/locations/{location}".
  /// Value must have pattern `^organizations/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [languageCode] - ISO code for requested localization language. If unset,
  /// will be interpereted as "en". If the requested language is valid, but not
  /// supported for this notification, English will be returned with an "Not
  /// applicable" LocalizationState. If the ISO code is invalid (i.e. not a real
  /// language), this RPC will throw an error.
  ///
  /// [pageSize] - The maximum number of notifications to return. The service
  /// may return fewer than this value. If unspecified or equal to 0, at most 50
  /// notifications will be returned. The maximum value is 50; values above 50
  /// will be coerced to 50.
  ///
  /// [pageToken] - A page token returned from a previous request. When
  /// paginating, all other parameters provided in the request must match the
  /// call that returned the page token.
  ///
  /// [view] - Specifies which parts of the notification resource should be
  /// returned in the response.
  /// Possible string values are:
  /// - "NOTIFICATION_VIEW_UNSPECIFIED" : Not specified, equivalent to BASIC.
  /// - "BASIC" : Server responses only include title, creation time and
  /// Notification ID. Note: for internal use responses also include the last
  /// update time, the latest message text and whether notification has
  /// attachments.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAdvisorynotificationsV1ListNotificationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1ListNotificationsResponse>
      list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/notifications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1ListNotificationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNotificationsResource get notifications =>
      ProjectsLocationsNotificationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Get notification settings.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the settings to retrieve. Format:
  /// organizations/{organization}/locations/{location}/settings or
  /// projects/{projects}/locations/{location}/settings.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Settings> getSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update notification settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the settings to retrieve.
  /// Format: organizations/{organization}/locations/{location}/settings or
  /// projects/{projects}/locations/{location}/settings.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Settings> updateSettings(
    GoogleCloudAdvisorynotificationsV1Settings request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Settings.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsNotificationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsNotificationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a notification.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the notification to retrieve. Format:
  /// organizations/{organization}/locations/{location}/notifications/{notification}
  /// or projects/{projects}/locations/{location}/notifications/{notification}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/notifications/\[^/\]+$`.
  ///
  /// [languageCode] - ISO code for requested localization language. If unset,
  /// will be interpereted as "en". If the requested language is valid, but not
  /// supported for this notification, English will be returned with an "Not
  /// applicable" LocalizationState. If the ISO code is invalid (i.e. not a real
  /// language), this RPC will throw an error.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudAdvisorynotificationsV1Notification].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1Notification> get(
    core.String name, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1Notification.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists notifications under a given parent.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// notifications. Must be of the form
  /// "organizations/{organization}/locations/{location}" or
  /// "projects/{project}/locations/{location}".
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [languageCode] - ISO code for requested localization language. If unset,
  /// will be interpereted as "en". If the requested language is valid, but not
  /// supported for this notification, English will be returned with an "Not
  /// applicable" LocalizationState. If the ISO code is invalid (i.e. not a real
  /// language), this RPC will throw an error.
  ///
  /// [pageSize] - The maximum number of notifications to return. The service
  /// may return fewer than this value. If unspecified or equal to 0, at most 50
  /// notifications will be returned. The maximum value is 50; values above 50
  /// will be coerced to 50.
  ///
  /// [pageToken] - A page token returned from a previous request. When
  /// paginating, all other parameters provided in the request must match the
  /// call that returned the page token.
  ///
  /// [view] - Specifies which parts of the notification resource should be
  /// returned in the response.
  /// Possible string values are:
  /// - "NOTIFICATION_VIEW_UNSPECIFIED" : Not specified, equivalent to BASIC.
  /// - "BASIC" : Server responses only include title, creation time and
  /// Notification ID. Note: for internal use responses also include the last
  /// update time, the latest message text and whether notification has
  /// attachments.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudAdvisorynotificationsV1ListNotificationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudAdvisorynotificationsV1ListNotificationsResponse>
      list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/notifications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudAdvisorynotificationsV1ListNotificationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Attachment with specific information about the issue.
class GoogleCloudAdvisorynotificationsV1Attachment {
  /// A CSV file attachment.
  ///
  /// Max size is 10 MB.
  GoogleCloudAdvisorynotificationsV1Csv? csv;

  /// The title of the attachment.
  core.String? displayName;

  GoogleCloudAdvisorynotificationsV1Attachment({
    this.csv,
    this.displayName,
  });

  GoogleCloudAdvisorynotificationsV1Attachment.fromJson(core.Map json_)
      : this(
          csv: json_.containsKey('csv')
              ? GoogleCloudAdvisorynotificationsV1Csv.fromJson(
                  json_['csv'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csv != null) 'csv': csv!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// A representation of a CSV file attachment, as a list of column headers and a
/// list of data rows.
class GoogleCloudAdvisorynotificationsV1Csv {
  /// The list of data rows in a CSV file, as string arrays rather than as a
  /// single comma-separated string.
  core.List<GoogleCloudAdvisorynotificationsV1CsvCsvRow>? dataRows;

  /// The list of headers for data columns in a CSV file.
  core.List<core.String>? headers;

  GoogleCloudAdvisorynotificationsV1Csv({
    this.dataRows,
    this.headers,
  });

  GoogleCloudAdvisorynotificationsV1Csv.fromJson(core.Map json_)
      : this(
          dataRows: json_.containsKey('dataRows')
              ? (json_['dataRows'] as core.List)
                  .map((value) =>
                      GoogleCloudAdvisorynotificationsV1CsvCsvRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataRows != null) 'dataRows': dataRows!,
        if (headers != null) 'headers': headers!,
      };
}

/// A representation of a single data row in a CSV file.
class GoogleCloudAdvisorynotificationsV1CsvCsvRow {
  /// The data entries in a CSV file row, as a string array rather than a single
  /// comma-separated string.
  core.List<core.String>? entries;

  GoogleCloudAdvisorynotificationsV1CsvCsvRow({
    this.entries,
  });

  GoogleCloudAdvisorynotificationsV1CsvCsvRow.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Response of ListNotifications endpoint.
class GoogleCloudAdvisorynotificationsV1ListNotificationsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of notifications under a given parent.
  core.List<GoogleCloudAdvisorynotificationsV1Notification>? notifications;

  /// Estimation of a total number of notifications.
  core.int? totalSize;

  GoogleCloudAdvisorynotificationsV1ListNotificationsResponse({
    this.nextPageToken,
    this.notifications,
    this.totalSize,
  });

  GoogleCloudAdvisorynotificationsV1ListNotificationsResponse.fromJson(
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          notifications: json_.containsKey('notifications')
              ? (json_['notifications'] as core.List)
                  .map((value) =>
                      GoogleCloudAdvisorynotificationsV1Notification.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (notifications != null) 'notifications': notifications!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A message which contains notification details.
class GoogleCloudAdvisorynotificationsV1Message {
  /// The attachments to download.
  core.List<GoogleCloudAdvisorynotificationsV1Attachment>? attachments;

  /// The message content.
  GoogleCloudAdvisorynotificationsV1MessageBody? body;

  /// The Message creation timestamp.
  core.String? createTime;

  /// Time when Message was localized
  core.String? localizationTime;

  GoogleCloudAdvisorynotificationsV1Message({
    this.attachments,
    this.body,
    this.createTime,
    this.localizationTime,
  });

  GoogleCloudAdvisorynotificationsV1Message.fromJson(core.Map json_)
      : this(
          attachments: json_.containsKey('attachments')
              ? (json_['attachments'] as core.List)
                  .map((value) =>
                      GoogleCloudAdvisorynotificationsV1Attachment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          body: json_.containsKey('body')
              ? GoogleCloudAdvisorynotificationsV1MessageBody.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          localizationTime: json_.containsKey('localizationTime')
              ? json_['localizationTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attachments != null) 'attachments': attachments!,
        if (body != null) 'body': body!,
        if (createTime != null) 'createTime': createTime!,
        if (localizationTime != null) 'localizationTime': localizationTime!,
      };
}

/// A message body containing text.
class GoogleCloudAdvisorynotificationsV1MessageBody {
  /// The text content of the message body.
  GoogleCloudAdvisorynotificationsV1Text? text;

  GoogleCloudAdvisorynotificationsV1MessageBody({
    this.text,
  });

  GoogleCloudAdvisorynotificationsV1MessageBody.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text')
              ? GoogleCloudAdvisorynotificationsV1Text.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A notification object for notifying customers about security and privacy
/// issues.
class GoogleCloudAdvisorynotificationsV1Notification {
  /// Time the notification was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A list of messages in the notification.
  core.List<GoogleCloudAdvisorynotificationsV1Message>? messages;

  /// The resource name of the notification.
  ///
  /// Format:
  /// organizations/{organization}/locations/{location}/notifications/{notification}
  /// or projects/{project}/locations/{location}/notifications/{notification}.
  core.String? name;

  /// Type of notification
  /// Possible string values are:
  /// - "NOTIFICATION_TYPE_UNSPECIFIED" : Default type
  /// - "NOTIFICATION_TYPE_SECURITY_PRIVACY_ADVISORY" : Security and privacy
  /// advisory notifications
  /// - "NOTIFICATION_TYPE_SENSITIVE_ACTIONS" : Sensitive action notifications
  /// - "NOTIFICATION_TYPE_SECURITY_MSA" : General security MSA
  /// - "NOTIFICATION_TYPE_THREAT_HORIZONS" : Threat horizons MSA
  core.String? notificationType;

  /// The subject line of the notification.
  GoogleCloudAdvisorynotificationsV1Subject? subject;

  GoogleCloudAdvisorynotificationsV1Notification({
    this.createTime,
    this.messages,
    this.name,
    this.notificationType,
    this.subject,
  });

  GoogleCloudAdvisorynotificationsV1Notification.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) =>
                      GoogleCloudAdvisorynotificationsV1Message.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationType: json_.containsKey('notificationType')
              ? json_['notificationType'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? GoogleCloudAdvisorynotificationsV1Subject.fromJson(
                  json_['subject'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (messages != null) 'messages': messages!,
        if (name != null) 'name': name!,
        if (notificationType != null) 'notificationType': notificationType!,
        if (subject != null) 'subject': subject!,
      };
}

/// Settings for each NotificationType.
class GoogleCloudAdvisorynotificationsV1NotificationSettings {
  /// Whether the associated NotificationType is enabled.
  core.bool? enabled;

  GoogleCloudAdvisorynotificationsV1NotificationSettings({
    this.enabled,
  });

  GoogleCloudAdvisorynotificationsV1NotificationSettings.fromJson(
      core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
      };
}

/// Settings for Advisory Notifications.
class GoogleCloudAdvisorynotificationsV1Settings {
  /// Fingerprint for optimistic concurrency returned in Get requests.
  ///
  /// Must be provided for Update requests. If the value provided does not match
  /// the value known to the server, ABORTED will be thrown, and the client
  /// should retry the read-modify-write cycle.
  ///
  /// Required.
  core.String? etag;

  /// Identifier.
  ///
  /// The resource name of the settings to retrieve. Format:
  /// organizations/{organization}/locations/{location}/settings or
  /// projects/{projects}/locations/{location}/settings.
  core.String? name;

  /// Map of each notification type and its settings to get/set all settings at
  /// once.
  ///
  /// The server will validate the value for each notification type.
  ///
  /// Required.
  core.Map<core.String, GoogleCloudAdvisorynotificationsV1NotificationSettings>?
      notificationSettings;

  GoogleCloudAdvisorynotificationsV1Settings({
    this.etag,
    this.name,
    this.notificationSettings,
  });

  GoogleCloudAdvisorynotificationsV1Settings.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationSettings: json_.containsKey('notificationSettings')
              ? (json_['notificationSettings']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudAdvisorynotificationsV1NotificationSettings
                        .fromJson(value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (notificationSettings != null)
          'notificationSettings': notificationSettings!,
      };
}

/// A subject line of a notification.
class GoogleCloudAdvisorynotificationsV1Subject {
  /// The text content.
  GoogleCloudAdvisorynotificationsV1Text? text;

  GoogleCloudAdvisorynotificationsV1Subject({
    this.text,
  });

  GoogleCloudAdvisorynotificationsV1Subject.fromJson(core.Map json_)
      : this(
          text: json_.containsKey('text')
              ? GoogleCloudAdvisorynotificationsV1Text.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (text != null) 'text': text!,
      };
}

/// A text object containing the English text and its localized copies.
class GoogleCloudAdvisorynotificationsV1Text {
  /// The English copy.
  core.String? enText;

  /// Status of the localization.
  /// Possible string values are:
  /// - "LOCALIZATION_STATE_UNSPECIFIED" : Not used.
  /// - "LOCALIZATION_STATE_NOT_APPLICABLE" : Localization is not applicable for
  /// requested language. This can happen when: - The requested language was not
  /// supported by Advisory Notifications at the time of localization (including
  /// notifications created before the localization feature was launched). - The
  /// requested language is English, so only the English text is returned.
  /// - "LOCALIZATION_STATE_PENDING" : Localization for requested language is in
  /// progress, and not ready yet.
  /// - "LOCALIZATION_STATE_COMPLETED" : Localization for requested language is
  /// completed.
  core.String? localizationState;

  /// The requested localized copy (if applicable).
  core.String? localizedText;

  GoogleCloudAdvisorynotificationsV1Text({
    this.enText,
    this.localizationState,
    this.localizedText,
  });

  GoogleCloudAdvisorynotificationsV1Text.fromJson(core.Map json_)
      : this(
          enText: json_.containsKey('enText')
              ? json_['enText'] as core.String
              : null,
          localizationState: json_.containsKey('localizationState')
              ? json_['localizationState'] as core.String
              : null,
          localizedText: json_.containsKey('localizedText')
              ? json_['localizedText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enText != null) 'enText': enText!,
        if (localizationState != null) 'localizationState': localizationState!,
        if (localizedText != null) 'localizedText': localizedText!,
      };
}
