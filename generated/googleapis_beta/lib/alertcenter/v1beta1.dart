// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.alertcenter.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client alertcenter/v1beta1';

/// Manages alerts on issues affecting your domain.
class AlertcenterApi {
  /// See and delete your domain's G Suite alerts, and send alert feedback
  static const AppsAlertsScope = "https://www.googleapis.com/auth/apps.alerts";

  final commons.ApiRequester _requester;

  AlertsResourceApi get alerts => new AlertsResourceApi(_requester);
  V1beta1ResourceApi get v1beta1 => new V1beta1ResourceApi(_requester);

  AlertcenterApi(http.Client client,
      {core.String rootUrl = "https://alertcenter.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class AlertsResourceApi {
  final commons.ApiRequester _requester;

  AlertsFeedbackResourceApi get feedback =>
      new AlertsFeedbackResourceApi(_requester);

  AlertsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Marks the specified alert for deletion. An alert that has been marked for
  /// deletion is removed from Alert Center after 30 days.
  /// Marking an alert for deletion has no effect on an alert which has
  /// already been marked for deletion. Attempting to mark a nonexistent alert
  /// for deletion results in a `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to delete.
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert is associated with.
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
  async.Future<Empty> delete(core.String alertId,
      {core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (alertId == null) {
      throw new core.ArgumentError("Parameter alertId is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts/' + commons.Escaper.ecapeVariable('$alertId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /// Gets the specified alert. Attempting to get a nonexistent alert returns
  /// `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert to retrieve.
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert is associated with.
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
  async.Future<Alert> get(core.String alertId,
      {core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (alertId == null) {
      throw new core.ArgumentError("Parameter alertId is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts/' + commons.Escaper.ecapeVariable('$alertId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Alert.fromJson(data));
  }

  /// Lists the alerts.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  /// If empty, a new iteration is started. To continue an iteration, pass in
  /// the value from the previous ListAlertsResponse's
  /// next_page_token field.
  ///
  /// [orderBy] - Optional. The sort order of the list results.
  /// If not specified results may be returned in arbitrary order.
  /// You can sort the results in descending order based on the creation
  /// timestamp using `order_by="create_time desc"`.
  /// Currently, supported sorting are `create_time asc`, `create_time desc`,
  /// `update_time desc`
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alerts are associated with.
  /// Inferred from the caller identity if not provided.
  ///
  /// [pageSize] - Optional. The requested page size. Server may return fewer
  /// items than
  /// requested. If unspecified, server picks an appropriate default.
  ///
  /// [filter] - Optional. A query string for filtering alert results.
  /// For more details, see [Query
  /// filters](/admin-sdk/alertcenter/guides/query-filters) and [Supported
  /// query filter
  /// fields](/admin-sdk/alertcenter/reference/filter-fields#alerts.list).
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
  async.Future<ListAlertsResponse> list(
      {core.String pageToken,
      core.String orderBy,
      core.String customerId,
      core.int pageSize,
      core.String filter,
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
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListAlertsResponse.fromJson(data));
  }

  /// Restores, or "undeletes", an alert that was marked for deletion within the
  /// past 30 days. Attempting to undelete an alert which was marked for
  /// deletion
  /// over 30 days ago (which has been removed from the Alert Center database)
  /// or
  /// a nonexistent alert returns a `NOT_FOUND` error. Attempting to
  /// undelete an alert which has not been marked for deletion has no effect.
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
      UndeleteAlertRequest request, core.String alertId,
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
    if (alertId == null) {
      throw new core.ArgumentError("Parameter alertId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts/' +
        commons.Escaper.ecapeVariable('$alertId') +
        ':undelete';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Alert.fromJson(data));
  }
}

class AlertsFeedbackResourceApi {
  final commons.ApiRequester _requester;

  AlertsFeedbackResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates new feedback for an alert. Attempting to create a feedback for
  /// a non-existent alert returns `NOT_FOUND` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The identifier of the alert this feedback belongs
  /// to.
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert is associated with.
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
  async.Future<AlertFeedback> create(AlertFeedback request, core.String alertId,
      {core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (alertId == null) {
      throw new core.ArgumentError("Parameter alertId is required.");
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts/' +
        commons.Escaper.ecapeVariable('$alertId') +
        '/feedback';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AlertFeedback.fromJson(data));
  }

  /// Lists all the feedback for an alert. Attempting to list feedbacks for
  /// a non-existent alert returns `NOT_FOUND` error.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Required. The alert identifier.
  /// The "-" wildcard could be used to represent all alerts.
  ///
  /// [filter] - Optional. A query string for filtering alert feedback results.
  /// For more details, see [Query
  /// filters](/admin-sdk/alertcenter/guides/query-filters) and [Supported
  /// query filter
  /// fields](/admin-sdk/alertcenter/reference/filter-fields#alerts.feedback.list).
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert feedback are associated with.
  /// Inferred from the caller identity if not provided.
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
  async.Future<ListAlertFeedbackResponse> list(core.String alertId,
      {core.String filter, core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (alertId == null) {
      throw new core.ArgumentError("Parameter alertId is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/alerts/' +
        commons.Escaper.ecapeVariable('$alertId') +
        '/feedback';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListAlertFeedbackResponse.fromJson(data));
  }
}

class V1beta1ResourceApi {
  final commons.ApiRequester _requester;

  V1beta1ResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns customer-level settings.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert settings are associated with.
  /// Inferred from the caller identity if not provided.
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
  async.Future<Settings> getSettings(
      {core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/settings';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Settings.fromJson(data));
  }

  /// Updates the customer-level settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customerId] - Optional. The unique identifier of the G Suite organization
  /// account of the
  /// customer the alert settings are associated with.
  /// Inferred from the caller identity if not provided.
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
  async.Future<Settings> updateSettings(Settings request,
      {core.String customerId, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (customerId != null) {
      _queryParams["customerId"] = [customerId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1beta1/settings';

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Settings.fromJson(data));
  }
}

/// Alerts for user account warning events.
class AccountWarning {
  /// Required. The email of the user that this event belongs to.
  core.String email;

  /// Optional. Details of the login action associated with the warning event.
  /// This is only available for:
  ///
  /// * Suspicious login
  /// * Suspicious login (less secure app)
  /// * Suspicious programmatic login
  /// * User suspended (suspicious activity)
  LoginDetails loginDetails;

  AccountWarning();

  AccountWarning.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("loginDetails")) {
      loginDetails = new LoginDetails.fromJson(_json["loginDetails"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (loginDetails != null) {
      _json["loginDetails"] = (loginDetails).toJson();
    }
    return _json;
  }
}

/// Alerts from G Suite Security Center rules service configured by admin.
class ActivityRule {
  /// List of action names associated with the rule threshold.
  core.List<core.String> actionNames;

  /// Rule create timestamp.
  core.String createTime;

  /// Description of the rule.
  core.String description;

  /// Alert display name.
  core.String displayName;

  /// Rule name.
  core.String name;

  /// Query that is used to get the data from the associated source.
  core.String query;

  /// List of alert ids superseded by this alert. It is used to indicate that
  /// this alert is essentially extension of superseded alerts and we found the
  /// relationship after creating these alerts.
  core.List<core.String> supersededAlerts;

  /// Alert id superseding this alert. It is used to indicate that superseding
  /// alert is essentially extension of this alert and we found the relationship
  /// after creating both alerts.
  core.String supersedingAlert;

  /// Alert threshold is for example “COUNT > 5”.
  core.String threshold;

  /// The trigger sources for this rule.
  ///
  /// * GMAIL_EVENTS
  /// * DEVICE_EVENTS
  /// * USER_EVENTS
  core.String triggerSource;

  /// The timestamp of the last update to the rule.
  core.String updateTime;

  /// Rule window size. Possible values are 1 hour or 24 hours.
  core.String windowSize;

  ActivityRule();

  ActivityRule.fromJson(core.Map _json) {
    if (_json.containsKey("actionNames")) {
      actionNames = (_json["actionNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("supersededAlerts")) {
      supersededAlerts =
          (_json["supersededAlerts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("supersedingAlert")) {
      supersedingAlert = _json["supersedingAlert"];
    }
    if (_json.containsKey("threshold")) {
      threshold = _json["threshold"];
    }
    if (_json.containsKey("triggerSource")) {
      triggerSource = _json["triggerSource"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
    if (_json.containsKey("windowSize")) {
      windowSize = _json["windowSize"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (actionNames != null) {
      _json["actionNames"] = actionNames;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (supersededAlerts != null) {
      _json["supersededAlerts"] = supersededAlerts;
    }
    if (supersedingAlert != null) {
      _json["supersedingAlert"] = supersedingAlert;
    }
    if (threshold != null) {
      _json["threshold"] = threshold;
    }
    if (triggerSource != null) {
      _json["triggerSource"] = triggerSource;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    if (windowSize != null) {
      _json["windowSize"] = windowSize;
    }
    return _json;
  }
}

/// An alert affecting a customer.
class Alert {
  /// Output only. The unique identifier for the alert.
  core.String alertId;

  /// Output only. The time this alert was created.
  core.String createTime;

  /// Output only. The unique identifier of the Google account of the customer.
  core.String customerId;

  /// Optional. The data associated with this alert, for example
  /// google.apps.alertcenter.type.DeviceCompromised.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> data;

  /// Output only. `True` if this alert is marked for deletion.
  core.bool deleted;

  /// Optional. The time the event that caused this alert ceased being active.
  /// If provided, the end time must not be earlier than the start time.
  /// If not provided, it indicates an ongoing alert.
  core.String endTime;

  /// Output only. An optional
  /// [Security Investigation Tool](https://support.google.com/a/answer/7575955)
  /// query for this alert.
  core.String securityInvestigationToolLink;

  /// Required. A unique identifier for the system that reported the alert.
  /// This is output only after alert is created.
  ///
  /// Supported sources are any of the following:
  ///
  /// * Google Operations
  /// * Mobile device management
  /// * Gmail phishing
  /// * Domain wide takeout
  /// * Government attack warning
  /// * Google identity
  core.String source;

  /// Required. The time the event that caused this alert was started or
  /// detected.
  core.String startTime;

  /// Required. The type of the alert.
  /// This is output only after alert is created.
  /// For a list of available alert types see
  /// [G Suite Alert types](/admin-sdk/alertcenter/reference/alert-types).
  core.String type;

  /// Output only. The time this alert was last updated.
  core.String updateTime;

  Alert();

  Alert.fromJson(core.Map _json) {
    if (_json.containsKey("alertId")) {
      alertId = _json["alertId"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("data")) {
      data = (_json["data"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("securityInvestigationToolLink")) {
      securityInvestigationToolLink = _json["securityInvestigationToolLink"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alertId != null) {
      _json["alertId"] = alertId;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (data != null) {
      _json["data"] = data;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (securityInvestigationToolLink != null) {
      _json["securityInvestigationToolLink"] = securityInvestigationToolLink;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// A customer feedback about an alert.
class AlertFeedback {
  /// Output only. The alert identifier.
  core.String alertId;

  /// Output only. The time this feedback was created.
  core.String createTime;

  /// Output only. The unique identifier of the Google account of the customer.
  core.String customerId;

  /// Output only. The email of the user that provided the feedback.
  core.String email;

  /// Output only. The unique identifier for the feedback.
  core.String feedbackId;

  /// Required. The type of the feedback.
  /// Possible string values are:
  /// - "ALERT_FEEDBACK_TYPE_UNSPECIFIED" : The feedback type is not specified.
  /// - "NOT_USEFUL" : The alert report is not useful.
  /// - "SOMEWHAT_USEFUL" : The alert report is somewhat useful.
  /// - "VERY_USEFUL" : The alert report is very useful.
  core.String type;

  AlertFeedback();

  AlertFeedback.fromJson(core.Map _json) {
    if (_json.containsKey("alertId")) {
      alertId = _json["alertId"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("feedbackId")) {
      feedbackId = _json["feedbackId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alertId != null) {
      _json["alertId"] = alertId;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (feedbackId != null) {
      _json["feedbackId"] = feedbackId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Attachment with application-specific information about an alert.
class Attachment {
  /// A CSV file attachment.
  Csv csv;

  Attachment();

  Attachment.fromJson(core.Map _json) {
    if (_json.containsKey("csv")) {
      csv = new Csv.fromJson(_json["csv"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (csv != null) {
      _json["csv"] = (csv).toJson();
    }
    return _json;
  }
}

/// Alert for setting the domain or IP that malicious email comes from as
/// whitelisted domain or IP in Gmail advanced settings.
class BadWhitelist {
  /// The domain ID.
  DomainId domainId;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo> messages;

  /// The source IP address of the malicious email, for example,
  /// `127.0.0.1`.
  core.String sourceIp;

  BadWhitelist();

  BadWhitelist.fromJson(core.Map _json) {
    if (_json.containsKey("domainId")) {
      domainId = new DomainId.fromJson(_json["domainId"]);
    }
    if (_json.containsKey("maliciousEntity")) {
      maliciousEntity = new MaliciousEntity.fromJson(_json["maliciousEntity"]);
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<GmailMessageInfo>(
              (value) => new GmailMessageInfo.fromJson(value))
          .toList();
    }
    if (_json.containsKey("sourceIp")) {
      sourceIp = _json["sourceIp"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainId != null) {
      _json["domainId"] = (domainId).toJson();
    }
    if (maliciousEntity != null) {
      _json["maliciousEntity"] = (maliciousEntity).toJson();
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    if (sourceIp != null) {
      _json["sourceIp"] = sourceIp;
    }
    return _json;
  }
}

/// A reference to a Cloud Pubsub topic.
///
/// To register for notifications, the owner of the topic must grant
/// `alerts-api-push-notifications@system.gserviceaccount.com` the
///  `projects.topics.publish` permission.
class CloudPubsubTopic {
  /// Optional. The format of the payload that would be sent.
  /// If not specified the format will be JSON.
  /// Possible string values are:
  /// - "PAYLOAD_FORMAT_UNSPECIFIED" : Payload format is not specified (will use
  /// JSON as default).
  /// - "JSON" : Use JSON.
  core.String payloadFormat;

  /// The `name` field of a Cloud Pubsub [Topic]
  /// (https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics#Topic).
  core.String topicName;

  CloudPubsubTopic();

  CloudPubsubTopic.fromJson(core.Map _json) {
    if (_json.containsKey("payloadFormat")) {
      payloadFormat = _json["payloadFormat"];
    }
    if (_json.containsKey("topicName")) {
      topicName = _json["topicName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (payloadFormat != null) {
      _json["payloadFormat"] = payloadFormat;
    }
    if (topicName != null) {
      _json["topicName"] = topicName;
    }
    return _json;
  }
}

/// A representation of a CSV file attachment, as a list of column headers and
/// a list of data rows.
class Csv {
  /// The list of data rows in a CSV file, as string arrays rather than as a
  /// single comma-separated string.
  core.List<CsvRow> dataRows;

  /// The list of headers for data columns in a CSV file.
  core.List<core.String> headers;

  Csv();

  Csv.fromJson(core.Map _json) {
    if (_json.containsKey("dataRows")) {
      dataRows = (_json["dataRows"] as core.List)
          .map<CsvRow>((value) => new CsvRow.fromJson(value))
          .toList();
    }
    if (_json.containsKey("headers")) {
      headers = (_json["headers"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataRows != null) {
      _json["dataRows"] = dataRows.map((value) => (value).toJson()).toList();
    }
    if (headers != null) {
      _json["headers"] = headers;
    }
    return _json;
  }
}

/// A representation of a single data row in a CSV file.
class CsvRow {
  /// The data entries in a CSV file row, as a string array rather than a
  /// single comma-separated string.
  core.List<core.String> entries;

  CsvRow();

  CsvRow.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = (_json["entries"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entries != null) {
      _json["entries"] = entries;
    }
    return _json;
  }
}

/// A mobile device compromised alert. Derived from audit logs.
class DeviceCompromised {
  /// The email of the user this alert was created for.
  core.String email;

  /// Required. The list of security events.
  core.List<DeviceCompromisedSecurityDetail> events;

  DeviceCompromised();

  DeviceCompromised.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List)
          .map<DeviceCompromisedSecurityDetail>(
              (value) => new DeviceCompromisedSecurityDetail.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detailed information of a single MDM device compromised event.
class DeviceCompromisedSecurityDetail {
  /// The device compromised state. Possible values are "`Compromised`" or
  /// "`Not Compromised`".
  core.String deviceCompromisedState;

  /// Required. The device ID.
  core.String deviceId;

  /// The model of the device.
  core.String deviceModel;

  /// The type of the device.
  core.String deviceType;

  /// Required for iOS, empty for others.
  core.String iosVendorId;

  /// The device resource ID.
  core.String resourceId;

  /// The serial number of the device.
  core.String serialNumber;

  DeviceCompromisedSecurityDetail();

  DeviceCompromisedSecurityDetail.fromJson(core.Map _json) {
    if (_json.containsKey("deviceCompromisedState")) {
      deviceCompromisedState = _json["deviceCompromisedState"];
    }
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceModel")) {
      deviceModel = _json["deviceModel"];
    }
    if (_json.containsKey("deviceType")) {
      deviceType = _json["deviceType"];
    }
    if (_json.containsKey("iosVendorId")) {
      iosVendorId = _json["iosVendorId"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceCompromisedState != null) {
      _json["deviceCompromisedState"] = deviceCompromisedState;
    }
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceModel != null) {
      _json["deviceModel"] = deviceModel;
    }
    if (deviceType != null) {
      _json["deviceType"] = deviceType;
    }
    if (iosVendorId != null) {
      _json["iosVendorId"] = iosVendorId;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    return _json;
  }
}

/// Domain ID of Gmail phishing alerts.
class DomainId {
  /// The primary domain for the customer.
  core.String customerPrimaryDomain;

  DomainId();

  DomainId.fromJson(core.Map _json) {
    if (_json.containsKey("customerPrimaryDomain")) {
      customerPrimaryDomain = _json["customerPrimaryDomain"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerPrimaryDomain != null) {
      _json["customerPrimaryDomain"] = customerPrimaryDomain;
    }
    return _json;
  }
}

/// A takeout operation for the entire domain was initiated by an admin. Derived
/// from audit logs.
class DomainWideTakeoutInitiated {
  /// The email of the admin who initiated the takeout.
  core.String email;

  /// The takeout request ID.
  core.String takeoutRequestId;

  DomainWideTakeoutInitiated();

  DomainWideTakeoutInitiated.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("takeoutRequestId")) {
      takeoutRequestId = _json["takeoutRequestId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (takeoutRequestId != null) {
      _json["takeoutRequestId"] = takeoutRequestId;
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

/// Details of a message in phishing spike alert.
class GmailMessageInfo {
  /// The `SHA256` hash of email's attachment and all MIME parts.
  core.List<core.String> attachmentsSha256Hash;

  /// The date the malicious email was sent.
  core.String date;

  /// The hash of the message body text.
  core.String md5HashMessageBody;

  /// The MD5 Hash of email's subject (only available for reported emails).
  core.String md5HashSubject;

  /// The snippet of the message body text (only available for reported emails).
  core.String messageBodySnippet;

  /// The message ID.
  core.String messageId;

  /// The recipient of this email.
  core.String recipient;

  /// The email subject text (only available for reported emails).
  core.String subjectText;

  GmailMessageInfo();

  GmailMessageInfo.fromJson(core.Map _json) {
    if (_json.containsKey("attachmentsSha256Hash")) {
      attachmentsSha256Hash =
          (_json["attachmentsSha256Hash"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("date")) {
      date = _json["date"];
    }
    if (_json.containsKey("md5HashMessageBody")) {
      md5HashMessageBody = _json["md5HashMessageBody"];
    }
    if (_json.containsKey("md5HashSubject")) {
      md5HashSubject = _json["md5HashSubject"];
    }
    if (_json.containsKey("messageBodySnippet")) {
      messageBodySnippet = _json["messageBodySnippet"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("recipient")) {
      recipient = _json["recipient"];
    }
    if (_json.containsKey("subjectText")) {
      subjectText = _json["subjectText"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attachmentsSha256Hash != null) {
      _json["attachmentsSha256Hash"] = attachmentsSha256Hash;
    }
    if (date != null) {
      _json["date"] = date;
    }
    if (md5HashMessageBody != null) {
      _json["md5HashMessageBody"] = md5HashMessageBody;
    }
    if (md5HashSubject != null) {
      _json["md5HashSubject"] = md5HashSubject;
    }
    if (messageBodySnippet != null) {
      _json["messageBodySnippet"] = messageBodySnippet;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (recipient != null) {
      _json["recipient"] = recipient;
    }
    if (subjectText != null) {
      _json["subjectText"] = subjectText;
    }
    return _json;
  }
}

/// An incident reported by Google Operations for a G Suite application.
class GoogleOperations {
  /// The list of emails which correspond to the users directly affected by the
  /// incident.
  core.List<core.String> affectedUserEmails;

  /// Optional. Application-specific data for an incident, provided when the
  /// G Suite application which reported the incident cannot be completely
  /// restored to a valid state.
  Attachment attachmentData;

  /// A detailed, freeform incident description.
  core.String description;

  /// A one-line incident description.
  core.String title;

  GoogleOperations();

  GoogleOperations.fromJson(core.Map _json) {
    if (_json.containsKey("affectedUserEmails")) {
      affectedUserEmails =
          (_json["affectedUserEmails"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("attachmentData")) {
      attachmentData = new Attachment.fromJson(_json["attachmentData"]);
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (affectedUserEmails != null) {
      _json["affectedUserEmails"] = affectedUserEmails;
    }
    if (attachmentData != null) {
      _json["attachmentData"] = (attachmentData).toJson();
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (title != null) {
      _json["title"] = title;
    }
    return _json;
  }
}

/// Response message for an alert feedback listing request.
class ListAlertFeedbackResponse {
  /// The list of alert feedback.
  /// Feedback entries for each alert are ordered by creation time descending.
  core.List<AlertFeedback> feedback;

  ListAlertFeedbackResponse();

  ListAlertFeedbackResponse.fromJson(core.Map _json) {
    if (_json.containsKey("feedback")) {
      feedback = (_json["feedback"] as core.List)
          .map<AlertFeedback>((value) => new AlertFeedback.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (feedback != null) {
      _json["feedback"] = feedback.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response message for an alert listing request.
class ListAlertsResponse {
  /// The list of alerts.
  core.List<Alert> alerts;

  /// The token for the next page. If not empty, indicates that there may be
  /// more
  /// alerts that match the listing request; this value can be used in a
  /// subsequent ListAlertsRequest to get alerts continuing from last result
  /// of the current list call.
  core.String nextPageToken;

  ListAlertsResponse();

  ListAlertsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("alerts")) {
      alerts = (_json["alerts"] as core.List)
          .map<Alert>((value) => new Alert.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alerts != null) {
      _json["alerts"] = alerts.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// The details of the login action.
class LoginDetails {
  /// Optional. The human-readable IP address (for example,
  /// `11.22.33.44`) that is associated with the warning event.
  core.String ipAddress;

  /// Optional. The successful login time that is associated with the warning
  /// event. This will not be present for blocked login attempts.
  core.String loginTime;

  LoginDetails();

  LoginDetails.fromJson(core.Map _json) {
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("loginTime")) {
      loginTime = _json["loginTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (loginTime != null) {
      _json["loginTime"] = loginTime;
    }
    return _json;
  }
}

/// Proto for all phishing alerts with common payload.
/// Supported types are any of the following:
///
/// * User reported phishing
/// * User reported spam spike
/// * Suspicious message reported
/// * Phishing reclassification
/// * Malware reclassification
class MailPhishing {
  /// The domain ID.
  DomainId domainId;

  /// If `true`, the email originated from within the organization.
  core.bool isInternal;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo> messages;

  MailPhishing();

  MailPhishing.fromJson(core.Map _json) {
    if (_json.containsKey("domainId")) {
      domainId = new DomainId.fromJson(_json["domainId"]);
    }
    if (_json.containsKey("isInternal")) {
      isInternal = _json["isInternal"];
    }
    if (_json.containsKey("maliciousEntity")) {
      maliciousEntity = new MaliciousEntity.fromJson(_json["maliciousEntity"]);
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<GmailMessageInfo>(
              (value) => new GmailMessageInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainId != null) {
      _json["domainId"] = (domainId).toJson();
    }
    if (isInternal != null) {
      _json["isInternal"] = isInternal;
    }
    if (maliciousEntity != null) {
      _json["maliciousEntity"] = (maliciousEntity).toJson();
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Entity whose actions triggered a Gmail phishing alert.
class MaliciousEntity {
  /// The header from display name.
  core.String displayName;

  /// The sender email address.
  core.String fromHeader;

  MaliciousEntity();

  MaliciousEntity.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("fromHeader")) {
      fromHeader = _json["fromHeader"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (fromHeader != null) {
      _json["fromHeader"] = fromHeader;
    }
    return _json;
  }
}

/// Settings for callback notifications.
/// For more details see [G Suite Alert
/// Notification](/admin-sdk/alertcenter/guides/notifications).
class Notification {
  /// A Google Cloud Pub/sub topic destination.
  CloudPubsubTopic cloudPubsubTopic;

  Notification();

  Notification.fromJson(core.Map _json) {
    if (_json.containsKey("cloudPubsubTopic")) {
      cloudPubsubTopic =
          new CloudPubsubTopic.fromJson(_json["cloudPubsubTopic"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloudPubsubTopic != null) {
      _json["cloudPubsubTopic"] = (cloudPubsubTopic).toJson();
    }
    return _json;
  }
}

/// Alert for a spike in user reported phishing.
/// <aside class="warning"><b>Warning</b>: This type has been deprecated. Use
/// [MailPhishing](/admin-sdk/alertcenter/reference/rest/v1beta1/MailPhishing)
/// instead.</aside>
class PhishingSpike {
  /// The domain ID.
  DomainId domainId;

  /// If `true`, the email originated from within the organization.
  core.bool isInternal;

  /// The entity whose actions triggered a Gmail phishing alert.
  MaliciousEntity maliciousEntity;

  /// The list of messages contained by this alert.
  core.List<GmailMessageInfo> messages;

  PhishingSpike();

  PhishingSpike.fromJson(core.Map _json) {
    if (_json.containsKey("domainId")) {
      domainId = new DomainId.fromJson(_json["domainId"]);
    }
    if (_json.containsKey("isInternal")) {
      isInternal = _json["isInternal"];
    }
    if (_json.containsKey("maliciousEntity")) {
      maliciousEntity = new MaliciousEntity.fromJson(_json["maliciousEntity"]);
    }
    if (_json.containsKey("messages")) {
      messages = (_json["messages"] as core.List)
          .map<GmailMessageInfo>(
              (value) => new GmailMessageInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domainId != null) {
      _json["domainId"] = (domainId).toJson();
    }
    if (isInternal != null) {
      _json["isInternal"] = isInternal;
    }
    if (maliciousEntity != null) {
      _json["maliciousEntity"] = (maliciousEntity).toJson();
    }
    if (messages != null) {
      _json["messages"] = messages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Customer-level settings.
class Settings {
  /// The list of notifications.
  core.List<Notification> notifications;

  Settings();

  Settings.fromJson(core.Map _json) {
    if (_json.containsKey("notifications")) {
      notifications = (_json["notifications"] as core.List)
          .map<Notification>((value) => new Notification.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (notifications != null) {
      _json["notifications"] =
          notifications.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A state-sponsored attack alert. Derived from audit logs.
class StateSponsoredAttack {
  /// The email of the user this incident was created for.
  core.String email;

  StateSponsoredAttack();

  StateSponsoredAttack.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    return _json;
  }
}

/// A mobile suspicious activity alert. Derived from audit logs.
class SuspiciousActivity {
  /// The email of the user this alert was created for.
  core.String email;

  /// Required. The list of security events.
  core.List<SuspiciousActivitySecurityDetail> events;

  SuspiciousActivity();

  SuspiciousActivity.fromJson(core.Map _json) {
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("events")) {
      events = (_json["events"] as core.List)
          .map<SuspiciousActivitySecurityDetail>(
              (value) => new SuspiciousActivitySecurityDetail.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (email != null) {
      _json["email"] = email;
    }
    if (events != null) {
      _json["events"] = events.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detailed information of a single MDM suspicious activity event.
class SuspiciousActivitySecurityDetail {
  /// Required. The device ID.
  core.String deviceId;

  /// The model of the device.
  core.String deviceModel;

  /// The device property which was changed.
  core.String deviceProperty;

  /// The type of the device.
  core.String deviceType;

  /// Required for iOS, empty for others.
  core.String iosVendorId;

  /// The new value of the device property after the change.
  core.String newValue;

  /// The old value of the device property before the change.
  core.String oldValue;

  /// The device resource ID.
  core.String resourceId;

  /// The serial number of the device.
  core.String serialNumber;

  SuspiciousActivitySecurityDetail();

  SuspiciousActivitySecurityDetail.fromJson(core.Map _json) {
    if (_json.containsKey("deviceId")) {
      deviceId = _json["deviceId"];
    }
    if (_json.containsKey("deviceModel")) {
      deviceModel = _json["deviceModel"];
    }
    if (_json.containsKey("deviceProperty")) {
      deviceProperty = _json["deviceProperty"];
    }
    if (_json.containsKey("deviceType")) {
      deviceType = _json["deviceType"];
    }
    if (_json.containsKey("iosVendorId")) {
      iosVendorId = _json["iosVendorId"];
    }
    if (_json.containsKey("newValue")) {
      newValue = _json["newValue"];
    }
    if (_json.containsKey("oldValue")) {
      oldValue = _json["oldValue"];
    }
    if (_json.containsKey("resourceId")) {
      resourceId = _json["resourceId"];
    }
    if (_json.containsKey("serialNumber")) {
      serialNumber = _json["serialNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deviceId != null) {
      _json["deviceId"] = deviceId;
    }
    if (deviceModel != null) {
      _json["deviceModel"] = deviceModel;
    }
    if (deviceProperty != null) {
      _json["deviceProperty"] = deviceProperty;
    }
    if (deviceType != null) {
      _json["deviceType"] = deviceType;
    }
    if (iosVendorId != null) {
      _json["iosVendorId"] = iosVendorId;
    }
    if (newValue != null) {
      _json["newValue"] = newValue;
    }
    if (oldValue != null) {
      _json["oldValue"] = oldValue;
    }
    if (resourceId != null) {
      _json["resourceId"] = resourceId;
    }
    if (serialNumber != null) {
      _json["serialNumber"] = serialNumber;
    }
    return _json;
  }
}

/// A request to undelete a specific alert that was marked for deletion.
class UndeleteAlertRequest {
  /// Optional. The unique identifier of the G Suite organization account of the
  /// customer the alert is associated with.
  /// Inferred from the caller identity if not provided.
  core.String customerId;

  UndeleteAlertRequest();

  UndeleteAlertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    return _json;
  }
}
