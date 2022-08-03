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

/// Google Workspace Alert Center API - v1beta1
///
/// Manages alerts on issues affecting your domain. Note: The current version of
/// this API (v1beta1) is available to all Google Workspace customers.
///
/// For more information, see
/// <https://developers.google.com/admin-sdk/alertcenter/>
///
/// Create an instance of [AlertCenterApi] to access these resources:
///
/// - [AlertsResource]
///   - [AlertsFeedbackResource]
/// - [V1beta1Resource]
library alertcenter.v1beta1;

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

/// Manages alerts on issues affecting your domain.
///
/// Note: The current version of this API (v1beta1) is available to all Google
/// Workspace customers.
class AlertCenterApi {
  /// See and delete your domain's G Suite alerts, and send alert feedback
  static const appsAlertsScope = 'https://www.googleapis.com/auth/apps.alerts';

  final commons.ApiRequester _requester;

  AlertsResource get alerts => AlertsResource(_requester);
  V1beta1Resource get v1beta1 => V1beta1Resource(_requester);

  AlertCenterApi(http.Client client,
      {core.String rootUrl = 'https://alertcenter.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AlertsResource {
  final commons.ApiRequester _requester;

  AlertsFeedbackResource get feedback => AlertsFeedbackResource(_requester);

  AlertsResource(commons.ApiRequester client) : _requester = client;

  /// Performs batch delete operation on alerts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchDeleteAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchDeleteAlertsResponse> batchDelete(
    BatchDeleteAlertsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1/alerts:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchDeleteAlertsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Performs batch undelete operation on alerts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUndeleteAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUndeleteAlertsResponse> batchUndelete(
    BatchUndeleteAlertsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1/alerts:batchUndelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUndeleteAlertsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the specified alert for deletion.
  ///
  /// An alert that has been marked for deletion is removed from Alert Center
  /// after 30 days. Marking an alert for deletion has no effect on an alert
  /// which has already been marked for deletion. Attempting to mark a
  /// nonexistent alert for deletion results in a `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to delete.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
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
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/alerts/' + commons.escapeVariable('$alertId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified alert.
  ///
  /// Attempting to get a nonexistent alert returns `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to retrieve.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alert> get(
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta1/alerts/' + commons.escapeVariable('$alertId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Alert.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the metadata of an alert.
  ///
  /// Attempting to get metadata for a non-existent alert returns `NOT_FOUND`
  /// error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert this metadata belongs
  /// to.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert metadata is associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertMetadata> getMetadata(
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/metadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AlertMetadata.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the alerts.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alerts are associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [filter] - Optional. A query string for filtering alert results. For more
  /// details, see
  /// [Query filters](https://developers.google.com/admin-sdk/alertcenter/guides/query-filters)
  /// and
  /// [Supported query filter fields](https://developers.google.com/admin-sdk/alertcenter/reference/filter-fields#alerts.list).
  ///
  /// [orderBy] - Optional. The sort order of the list results. If not specified
  /// results may be returned in arbitrary order. You can sort the results in
  /// descending order based on the creation timestamp using
  /// `order_by="create_time desc"`. Currently, supported sorting are
  /// `create_time asc`, `create_time desc`, `update_time desc`
  ///
  /// [pageSize] - Optional. The requested page size. Server may return fewer
  /// items than requested. If unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return. If empty, a new iteration is started. To continue an
  /// iteration, pass in the value from the previous ListAlertsResponse's
  /// next_page_token field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertsResponse> list({
    core.String? customerId,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1/alerts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAlertsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores, or "undeletes", an alert that was marked for deletion within the
  /// past 30 days.
  ///
  /// Attempting to undelete an alert which was marked for deletion over 30 days
  /// ago (which has been removed from the Alert Center database) or a
  /// nonexistent alert returns a `NOT_FOUND` error. Attempting to undelete an
  /// alert which has not been marked for deletion has no effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to undelete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alert> undelete(
    UndeleteAlertRequest request,
    core.String alertId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Alert.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AlertsFeedbackResource {
  final commons.ApiRequester _requester;

  AlertsFeedbackResource(commons.ApiRequester client) : _requester = client;

  /// Creates new feedback for an alert.
  ///
  /// Attempting to create a feedback for a non-existent alert returns
  /// \`NOT_FOUND\` error. Attempting to create a feedback for an alert that is
  /// marked for deletion returns \`FAILED_PRECONDITION' error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert this feedback belongs
  /// to.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AlertFeedback].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AlertFeedback> create(
    AlertFeedback request,
    core.String alertId, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/feedback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AlertFeedback.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the feedback for an alert.
  ///
  /// Attempting to list feedbacks for a non-existent alert returns `NOT_FOUND`
  /// error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The alert identifier. The "-" wildcard could be used
  /// to represent all alerts.
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert feedback are associated
  /// with. Inferred from the caller identity if not provided.
  ///
  /// [filter] - Optional. A query string for filtering alert feedback results.
  /// For more details, see
  /// [Query filters](https://developers.google.com/admin-sdk/alertcenter/guides/query-filters)
  /// and
  /// [Supported query filter fields](https://developers.google.com/admin-sdk/alertcenter/reference/filter-fields#alerts.feedback.list).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAlertFeedbackResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAlertFeedbackResponse> list(
    core.String alertId, {
    core.String? customerId,
    core.String? filter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if (filter != null) 'filter': [filter],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/alerts/' + commons.escapeVariable('$alertId') + '/feedback';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAlertFeedbackResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1beta1Resource {
  final commons.ApiRequester _requester;

  V1beta1Resource(commons.ApiRequester client) : _requester = client;

  /// Returns customer-level settings.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert settings are associated
  /// with. Inferred from the caller identity if not provided.
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
  async.Future<Settings> getSettings({
    core.String? customerId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1/settings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the customer-level settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the Google Workspace
  /// organization account of the customer the alert settings are associated
  /// with. Inferred from the caller identity if not provided.
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
  async.Future<Settings> updateSettings(
    Settings request, {
    core.String? customerId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customerId != null) 'customerId': [customerId],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta1/settings';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An alert affecting a customer.
class Alert {
  /// The unique identifier for the alert.
  ///
  /// Output only.
  core.String? alertId;

  /// The time this alert was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// The data associated with this alert, for example
  /// google.apps.alertcenter.type.DeviceCompromised.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// `True` if this alert is marked for deletion.
  ///
  /// Output only.
  core.bool? deleted;

  /// The time the event that caused this alert ceased being active.
  ///
  /// If provided, the end time must not be earlier than the start time. If not
  /// provided, it indicates an ongoing alert.
  ///
  /// Optional.
  core.String? endTime;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of an alert from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform alert updates in order to avoid race
  /// conditions: An `etag` is returned in the response which contains alerts,
  /// and systems are expected to put that etag in the request to update alert
  /// to ensure that their change will be applied to the same version of the
  /// alert. If no `etag` is provided in the call to update alert, then the
  /// existing alert is overwritten blindly.
  ///
  /// Optional.
  core.String? etag;

  /// The metadata associated with this alert.
  ///
  /// Output only.
  AlertMetadata? metadata;

  /// An optional
  /// [Security Investigation Tool](https://support.google.com/a/answer/7575955)
  /// query for this alert.
  ///
  /// Output only.
  core.String? securityInvestigationToolLink;

  /// A unique identifier for the system that reported the alert.
  ///
  /// This is output only after alert is created. Supported sources are any of
  /// the following: * Google Operations * Mobile device management * Gmail
  /// phishing * Data Loss Prevention * Domain wide takeout * State sponsored
  /// attack * Google identity * Apps outage
  ///
  /// Required.
  core.String? source;

  /// The time the event that caused this alert was started or detected.
  ///
  /// Required.
  core.String? startTime;

  /// The type of the alert.
  ///
  /// This is output only after alert is created. For a list of available alert
  /// types see
  /// [Google Workspace Alert types](https://developers.google.com/admin-sdk/alertcenter/reference/alert-types).
  ///
  /// Required.
  core.String? type;

  /// The time this alert was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Alert({
    this.alertId,
    this.createTime,
    this.customerId,
    this.data,
    this.deleted,
    this.endTime,
    this.etag,
    this.metadata,
    this.securityInvestigationToolLink,
    this.source,
    this.startTime,
    this.type,
    this.updateTime,
  });

  Alert.fromJson(core.Map json_)
      : this(
          alertId: json_.containsKey('alertId')
              ? json_['alertId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          data: json_.containsKey('data')
              ? json_['data'] as core.Map<core.String, core.dynamic>
              : null,
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          metadata: json_.containsKey('metadata')
              ? AlertMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          securityInvestigationToolLink:
              json_.containsKey('securityInvestigationToolLink')
                  ? json_['securityInvestigationToolLink'] as core.String
                  : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (createTime != null) 'createTime': createTime!,
        if (customerId != null) 'customerId': customerId!,
        if (data != null) 'data': data!,
        if (deleted != null) 'deleted': deleted!,
        if (endTime != null) 'endTime': endTime!,
        if (etag != null) 'etag': etag!,
        if (metadata != null) 'metadata': metadata!,
        if (securityInvestigationToolLink != null)
          'securityInvestigationToolLink': securityInvestigationToolLink!,
        if (source != null) 'source': source!,
        if (startTime != null) 'startTime': startTime!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A customer feedback about an alert.
class AlertFeedback {
  /// The alert identifier.
  ///
  /// Output only.
  core.String? alertId;

  /// The time this feedback was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// The email of the user that provided the feedback.
  ///
  /// Output only.
  core.String? email;

  /// The unique identifier for the feedback.
  ///
  /// Output only.
  core.String? feedbackId;

  /// The type of the feedback.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ALERT_FEEDBACK_TYPE_UNSPECIFIED" : The feedback type is not specified.
  /// - "NOT_USEFUL" : The alert report is not useful.
  /// - "SOMEWHAT_USEFUL" : The alert report is somewhat useful.
  /// - "VERY_USEFUL" : The alert report is very useful.
  core.String? type;

  AlertFeedback({
    this.alertId,
    this.createTime,
    this.customerId,
    this.email,
    this.feedbackId,
    this.type,
  });

  AlertFeedback.fromJson(core.Map json_)
      : this(
          alertId: json_.containsKey('alertId')
              ? json_['alertId'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          feedbackId: json_.containsKey('feedbackId')
              ? json_['feedbackId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (createTime != null) 'createTime': createTime!,
        if (customerId != null) 'customerId': customerId!,
        if (email != null) 'email': email!,
        if (feedbackId != null) 'feedbackId': feedbackId!,
        if (type != null) 'type': type!,
      };
}

/// An alert metadata.
class AlertMetadata {
  /// The alert identifier.
  ///
  /// Output only.
  core.String? alertId;

  /// The email address of the user assigned to the alert.
  core.String? assignee;

  /// The unique identifier of the Google account of the customer.
  ///
  /// Output only.
  core.String? customerId;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of an alert metadata from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform metadata updates in order to avoid race
  /// conditions: An `etag` is returned in the response which contains alert
  /// metadata, and systems are expected to put that etag in the request to
  /// update alert metadata to ensure that their change will be applied to the
  /// same version of the alert metadata. If no `etag` is provided in the call
  /// to update alert metadata, then the existing alert metadata is overwritten
  /// blindly.
  ///
  /// Optional.
  core.String? etag;

  /// The severity value of the alert.
  ///
  /// Alert Center will set this field at alert creation time, default's to an
  /// empty string when it could not be determined. The supported values for
  /// update actions on this field are the following: * HIGH * MEDIUM * LOW
  core.String? severity;

  /// The current status of the alert.
  ///
  /// The supported values are the following: * NOT_STARTED * IN_PROGRESS *
  /// CLOSED
  core.String? status;

  /// The time this metadata was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  AlertMetadata({
    this.alertId,
    this.assignee,
    this.customerId,
    this.etag,
    this.severity,
    this.status,
    this.updateTime,
  });

  AlertMetadata.fromJson(core.Map json_)
      : this(
          alertId: json_.containsKey('alertId')
              ? json_['alertId'] as core.String
              : null,
          assignee: json_.containsKey('assignee')
              ? json_['assignee'] as core.String
              : null,
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertId != null) 'alertId': alertId!,
        if (assignee != null) 'assignee': assignee!,
        if (customerId != null) 'customerId': customerId!,
        if (etag != null) 'etag': etag!,
        if (severity != null) 'severity': severity!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A request to perform batch delete on alerts.
typedef BatchDeleteAlertsRequest = $AlertsRequest;

/// Response to batch delete operation on alerts.
class BatchDeleteAlertsResponse {
  /// The status details for each failed alert_id.
  core.Map<core.String, Status>? failedAlertStatus;

  /// The successful list of alert IDs.
  core.List<core.String>? successAlertIds;

  BatchDeleteAlertsResponse({
    this.failedAlertStatus,
    this.successAlertIds,
  });

  BatchDeleteAlertsResponse.fromJson(core.Map json_)
      : this(
          failedAlertStatus: json_.containsKey('failedAlertStatus')
              ? (json_['failedAlertStatus']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Status.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          successAlertIds: json_.containsKey('successAlertIds')
              ? (json_['successAlertIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedAlertStatus != null) 'failedAlertStatus': failedAlertStatus!,
        if (successAlertIds != null) 'successAlertIds': successAlertIds!,
      };
}

/// A request to perform batch undelete on alerts.
typedef BatchUndeleteAlertsRequest = $AlertsRequest;

/// Response to batch undelete operation on alerts.
class BatchUndeleteAlertsResponse {
  /// The status details for each failed alert_id.
  core.Map<core.String, Status>? failedAlertStatus;

  /// The successful list of alert IDs.
  core.List<core.String>? successAlertIds;

  BatchUndeleteAlertsResponse({
    this.failedAlertStatus,
    this.successAlertIds,
  });

  BatchUndeleteAlertsResponse.fromJson(core.Map json_)
      : this(
          failedAlertStatus: json_.containsKey('failedAlertStatus')
              ? (json_['failedAlertStatus']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Status.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          successAlertIds: json_.containsKey('successAlertIds')
              ? (json_['successAlertIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedAlertStatus != null) 'failedAlertStatus': failedAlertStatus!,
        if (successAlertIds != null) 'successAlertIds': successAlertIds!,
      };
}

/// A reference to a Cloud Pubsub topic.
///
/// To register for notifications, the owner of the topic must grant
/// `alerts-api-push-notifications@system.gserviceaccount.com` the
/// `projects.topics.publish` permission.
class CloudPubsubTopic {
  /// The format of the payload that would be sent.
  ///
  /// If not specified the format will be JSON.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PAYLOAD_FORMAT_UNSPECIFIED" : Payload format is not specified (will use
  /// JSON as default).
  /// - "JSON" : Use JSON.
  core.String? payloadFormat;

  /// The `name` field of a Cloud Pubsub
  /// [Topic](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  core.String? topicName;

  CloudPubsubTopic({
    this.payloadFormat,
    this.topicName,
  });

  CloudPubsubTopic.fromJson(core.Map json_)
      : this(
          payloadFormat: json_.containsKey('payloadFormat')
              ? json_['payloadFormat'] as core.String
              : null,
          topicName: json_.containsKey('topicName')
              ? json_['topicName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payloadFormat != null) 'payloadFormat': payloadFormat!,
        if (topicName != null) 'topicName': topicName!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for an alert feedback listing request.
class ListAlertFeedbackResponse {
  /// The list of alert feedback.
  ///
  /// Feedback entries for each alert are ordered by creation time descending.
  core.List<AlertFeedback>? feedback;

  ListAlertFeedbackResponse({
    this.feedback,
  });

  ListAlertFeedbackResponse.fromJson(core.Map json_)
      : this(
          feedback: json_.containsKey('feedback')
              ? (json_['feedback'] as core.List)
                  .map((value) => AlertFeedback.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (feedback != null) 'feedback': feedback!,
      };
}

/// Response message for an alert listing request.
class ListAlertsResponse {
  /// The list of alerts.
  core.List<Alert>? alerts;

  /// The token for the next page.
  ///
  /// If not empty, indicates that there may be more alerts that match the
  /// listing request; this value can be used in a subsequent ListAlertsRequest
  /// to get alerts continuing from last result of the current list call.
  core.String? nextPageToken;

  ListAlertsResponse({
    this.alerts,
    this.nextPageToken,
  });

  ListAlertsResponse.fromJson(core.Map json_)
      : this(
          alerts: json_.containsKey('alerts')
              ? (json_['alerts'] as core.List)
                  .map((value) => Alert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alerts != null) 'alerts': alerts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Settings for callback notifications.
///
/// For more details see
/// [Google Workspace Alert Notification](https://developers.google.com/admin-sdk/alertcenter/guides/notifications).
class Notification {
  /// A Google Cloud Pub/sub topic destination.
  CloudPubsubTopic? cloudPubsubTopic;

  Notification({
    this.cloudPubsubTopic,
  });

  Notification.fromJson(core.Map json_)
      : this(
          cloudPubsubTopic: json_.containsKey('cloudPubsubTopic')
              ? CloudPubsubTopic.fromJson(json_['cloudPubsubTopic']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudPubsubTopic != null) 'cloudPubsubTopic': cloudPubsubTopic!,
      };
}

/// Customer-level settings.
class Settings {
  /// The list of notifications.
  core.List<Notification>? notifications;

  Settings({
    this.notifications,
  });

  Settings.fromJson(core.Map json_)
      : this(
          notifications: json_.containsKey('notifications')
              ? (json_['notifications'] as core.List)
                  .map((value) => Notification.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifications != null) 'notifications': notifications!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A request to undelete a specific alert that was marked for deletion.
class UndeleteAlertRequest {
  /// The unique identifier of the Google Workspace organization account of the
  /// customer the alert is associated with.
  ///
  /// Inferred from the caller identity if not provided.
  ///
  /// Optional.
  core.String? customerId;

  UndeleteAlertRequest({
    this.customerId,
  });

  UndeleteAlertRequest.fromJson(core.Map json_)
      : this(
          customerId: json_.containsKey('customerId')
              ? json_['customerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerId != null) 'customerId': customerId!,
      };
}
