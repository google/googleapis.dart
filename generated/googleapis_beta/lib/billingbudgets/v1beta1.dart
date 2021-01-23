// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.billingbudgets.v1beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const userAgent = 'dart-api-client billingbudgets/v1beta1';

/// The Cloud Billing Budget API stores Cloud Billing budgets, which define a
/// budget plan and the rules to execute as spend is tracked against that plan.
class BillingbudgetsApi {
  /// View and manage your Google Cloud Platform billing accounts
  static const cloudBillingScope =
      'https://www.googleapis.com/auth/cloud-billing';

  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BillingAccountsResourceApi get billingAccounts =>
      BillingAccountsResourceApi(_requester);

  BillingbudgetsApi(http.Client client,
      {core.String rootUrl = 'https://billingbudgets.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class BillingAccountsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsBudgetsResourceApi get budgets =>
      BillingAccountsBudgetsResourceApi(_requester);

  BillingAccountsResourceApi(commons.ApiRequester client) : _requester = client;
}

class BillingAccountsBudgetsResourceApi {
  final commons.ApiRequester _requester;

  BillingAccountsBudgetsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new budget. See Quotas and limits for more information on the
  /// limits of the number of budgets you can create.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the billing account to create the budget
  /// in. Values are of the form `billingAccounts/{billingAccountId}`.
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1beta1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1beta1Budget> create(
    GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/budgets';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudBillingBudgetsV1beta1Budget.fromJson(data));
  }

  /// Deletes a budget. Returns successfully if already deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the budget to delete. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern "^billingAccounts/[^/]+/budgets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => GoogleProtobufEmpty.fromJson(data));
  }

  /// Returns a budget. WARNING: There are some fields exposed on the Google
  /// Cloud Console that aren't available on this API. When reading from the
  /// API, you will not see these fields in the return value, though they may
  /// have been set in the Cloud Console.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of budget to get. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern "^billingAccounts/[^/]+/budgets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1beta1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1beta1Budget> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudBillingBudgetsV1beta1Budget.fromJson(data));
  }

  /// Returns a list of budgets for a billing account. WARNING: There are some
  /// fields exposed on the Google Cloud Console that aren't available on this
  /// API. When reading from the API, you will not see these fields in the
  /// return value, though they may have been set in the Cloud Console.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of billing account to list budgets under. Values
  /// are of the form `billingAccounts/{billingAccountId}`.
  /// Value must have pattern "^billingAccounts/[^/]+$".
  ///
  /// [pageSize] - Optional. The maximum number of budgets to return per page.
  /// The default and maximum value are 100.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListBudgetsResponse` which indicates that this is a continuation of a
  /// prior `ListBudgets` call, and that the system should return the next page
  /// of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse> list(
    core.String parent, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/budgets';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse.fromJson(data));
  }

  /// Updates a budget and returns the updated budget. WARNING: There are some
  /// fields exposed on the Google Cloud Console that aren't available on this
  /// API. Budget fields that are not exposed in this API will not be changed by
  /// this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the budget. The resource name
  /// implies the scope of a budget. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern "^billingAccounts/[^/]+/budgets/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1beta1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1beta1Budget> patch(
    GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest request,
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => GoogleCloudBillingBudgetsV1beta1Budget.fromJson(data));
  }
}

/// AllUpdatesRule defines notifications that are sent based on budget spend and
/// thresholds.
class GoogleCloudBillingBudgetsV1beta1AllUpdatesRule {
  /// Optional. When set to true, disables default notifications sent when a
  /// threshold is exceeded. Default notifications are sent to those with
  /// Billing Account Administrator and Billing Account User IAM roles for the
  /// target account.
  core.bool disableDefaultIamRecipients;

  /// Optional. Targets to send notifications to when a threshold is exceeded.
  /// This is in addition to default recipients who have billing account IAM
  /// roles. The value is the full REST resource name of a monitoring
  /// notification channel with the form
  /// `projects/{project_id}/notificationChannels/{channel_id}`. A maximum of 5
  /// channels are allowed. See
  /// https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients
  /// for more details.
  core.List<core.String> monitoringNotificationChannels;

  /// Optional. The name of the Pub/Sub topic where budget related messages will
  /// be published, in the form `projects/{project_id}/topics/{topic_id}`.
  /// Updates are sent at regular intervals to the topic. The topic needs to be
  /// created before the budget is created; see
  /// https://cloud.google.com/billing/docs/how-to/budgets#manage-notifications
  /// for more details. Caller is expected to have `pubsub.topics.setIamPolicy`
  /// permission on the topic when it's set for a budget, otherwise, the API
  /// call will fail with PERMISSION_DENIED. See
  /// https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications
  /// for more details on Pub/Sub roles and permissions.
  core.String pubsubTopic;

  /// Optional. The schema version of the notification sent to `pubsub_topic`.
  /// Only "1.0" is accepted. It represents the JSON schema as defined in
  /// https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format
  core.String schemaVersion;

  GoogleCloudBillingBudgetsV1beta1AllUpdatesRule();

  GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromJson(core.Map _json) {
    if (_json.containsKey('disableDefaultIamRecipients')) {
      disableDefaultIamRecipients = _json['disableDefaultIamRecipients'];
    }
    if (_json.containsKey('monitoringNotificationChannels')) {
      monitoringNotificationChannels =
          (_json['monitoringNotificationChannels'] as core.List)
              .cast<core.String>();
    }
    if (_json.containsKey('pubsubTopic')) {
      pubsubTopic = _json['pubsubTopic'];
    }
    if (_json.containsKey('schemaVersion')) {
      schemaVersion = _json['schemaVersion'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disableDefaultIamRecipients != null) {
      _json['disableDefaultIamRecipients'] = disableDefaultIamRecipients;
    }
    if (monitoringNotificationChannels != null) {
      _json['monitoringNotificationChannels'] = monitoringNotificationChannels;
    }
    if (pubsubTopic != null) {
      _json['pubsubTopic'] = pubsubTopic;
    }
    if (schemaVersion != null) {
      _json['schemaVersion'] = schemaVersion;
    }
    return _json;
  }
}

/// A budget is a plan that describes what you expect to spend on Cloud
/// projects, plus the rules to execute as spend is tracked against that plan,
/// (for example, send an alert when 90% of the target spend is met). Currently
/// all plans are monthly budgets so the usage period(s) tracked are implied
/// (calendar months of usage back-to-back).
class GoogleCloudBillingBudgetsV1beta1Budget {
  /// Optional. Rules to apply to notifications sent based on budget spend and
  /// thresholds.
  GoogleCloudBillingBudgetsV1beta1AllUpdatesRule allUpdatesRule;

  /// Required. Budgeted amount.
  GoogleCloudBillingBudgetsV1beta1BudgetAmount amount;

  /// Optional. Filters that define which resources are used to compute the
  /// actual spend against the budget.
  GoogleCloudBillingBudgetsV1beta1Filter budgetFilter;

  /// User data for display name in UI. Validation: <= 60 chars.
  core.String displayName;

  /// Optional. Etag to validate that the object is unchanged for a
  /// read-modify-write operation. An empty etag will cause an update to
  /// overwrite other changes.
  core.String etag;

  /// Output only. Resource name of the budget. The resource name implies the
  /// scope of a budget. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  core.String name;

  /// Optional. Rules that trigger alerts (notifications of thresholds being
  /// crossed) when spend exceeds the specified percentages of the budget.
  core.List<GoogleCloudBillingBudgetsV1beta1ThresholdRule> thresholdRules;

  GoogleCloudBillingBudgetsV1beta1Budget();

  GoogleCloudBillingBudgetsV1beta1Budget.fromJson(core.Map _json) {
    if (_json.containsKey('allUpdatesRule')) {
      allUpdatesRule = GoogleCloudBillingBudgetsV1beta1AllUpdatesRule.fromJson(
          _json['allUpdatesRule']);
    }
    if (_json.containsKey('amount')) {
      amount = GoogleCloudBillingBudgetsV1beta1BudgetAmount.fromJson(
          _json['amount']);
    }
    if (_json.containsKey('budgetFilter')) {
      budgetFilter = GoogleCloudBillingBudgetsV1beta1Filter.fromJson(
          _json['budgetFilter']);
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'];
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('thresholdRules')) {
      thresholdRules = (_json['thresholdRules'] as core.List)
          .map<GoogleCloudBillingBudgetsV1beta1ThresholdRule>((value) =>
              GoogleCloudBillingBudgetsV1beta1ThresholdRule.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allUpdatesRule != null) {
      _json['allUpdatesRule'] = allUpdatesRule.toJson();
    }
    if (amount != null) {
      _json['amount'] = amount.toJson();
    }
    if (budgetFilter != null) {
      _json['budgetFilter'] = budgetFilter.toJson();
    }
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (thresholdRules != null) {
      _json['thresholdRules'] =
          thresholdRules.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1beta1BudgetAmount {
  /// Use the last period's actual spend as the budget for the present period.
  GoogleCloudBillingBudgetsV1beta1LastPeriodAmount lastPeriodAmount;

  /// A specified amount to use as the budget. `currency_code` is optional. If
  /// specified, it must match the currency of the billing account. The
  /// `currency_code` is provided on output.
  GoogleTypeMoney specifiedAmount;

  GoogleCloudBillingBudgetsV1beta1BudgetAmount();

  GoogleCloudBillingBudgetsV1beta1BudgetAmount.fromJson(core.Map _json) {
    if (_json.containsKey('lastPeriodAmount')) {
      lastPeriodAmount =
          GoogleCloudBillingBudgetsV1beta1LastPeriodAmount.fromJson(
              _json['lastPeriodAmount']);
    }
    if (_json.containsKey('specifiedAmount')) {
      specifiedAmount = GoogleTypeMoney.fromJson(_json['specifiedAmount']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (lastPeriodAmount != null) {
      _json['lastPeriodAmount'] = lastPeriodAmount.toJson();
    }
    if (specifiedAmount != null) {
      _json['specifiedAmount'] = specifiedAmount.toJson();
    }
    return _json;
  }
}

/// Request for CreateBudget
class GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest {
  /// Required. Budget to create.
  GoogleCloudBillingBudgetsV1beta1Budget budget;

  GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest();

  GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest.fromJson(core.Map _json) {
    if (_json.containsKey('budget')) {
      budget = GoogleCloudBillingBudgetsV1beta1Budget.fromJson(_json['budget']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (budget != null) {
      _json['budget'] = budget.toJson();
    }
    return _json;
  }
}

/// A filter for a budget, limiting the scope of the cost to calculate.
class GoogleCloudBillingBudgetsV1beta1Filter {
  /// Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  /// Possible string values are:
  /// - "CREDIT_TYPES_TREATMENT_UNSPECIFIED"
  /// - "INCLUDE_ALL_CREDITS" : All types of credit are subtracted from the
  /// gross cost to determine the spend for threshold calculations.
  /// - "EXCLUDE_ALL_CREDITS" : All types of credit are added to the net cost to
  /// determine the spend for threshold calculations.
  core.String creditTypesTreatment;

  /// Optional. A single label and value pair specifying that usage from only
  /// this set of labeled resources should be included in the budget. Currently,
  /// multiple entries or multiple values per entry are not allowed. If omitted,
  /// the report will include all labeled and unlabeled usage.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.List<core.Object>> labels;

  /// Optional. A set of projects of the form `projects/{project}`, specifying
  /// that usage from only this set of projects should be included in the
  /// budget. If omitted, the report will include all usage for the billing
  /// account, regardless of which project the usage occurred on. Only zero or
  /// one project can be specified currently.
  core.List<core.String> projects;

  /// Optional. A set of services of the form `services/{service_id}`,
  /// specifying that usage from only this set of services should be included in
  /// the budget. If omitted, the report will include usage for all the
  /// services. The service names are available through the Catalog API:
  /// https://cloud.google.com/billing/v1/how-tos/catalog-api.
  core.List<core.String> services;

  /// Optional. A set of subaccounts of the form `billingAccounts/{account_id}`,
  /// specifying that usage from only this set of subaccounts should be included
  /// in the budget. If a subaccount is set to the name of the parent account,
  /// usage from the parent account will be included. If omitted, the report
  /// will include usage from the parent account and all subaccounts, if they
  /// exist.
  core.List<core.String> subaccounts;

  GoogleCloudBillingBudgetsV1beta1Filter();

  GoogleCloudBillingBudgetsV1beta1Filter.fromJson(core.Map _json) {
    if (_json.containsKey('creditTypesTreatment')) {
      creditTypesTreatment = _json['creditTypesTreatment'];
    }
    if (_json.containsKey('labels')) {
      labels = commons.mapMap<core.List, core.List<core.Object>>(
          _json['labels'].cast<core.String, core.List>(),
          (core.List item) => (item as core.List).cast<core.Object>());
    }
    if (_json.containsKey('projects')) {
      projects = (_json['projects'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('services')) {
      services = (_json['services'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('subaccounts')) {
      subaccounts = (_json['subaccounts'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (creditTypesTreatment != null) {
      _json['creditTypesTreatment'] = creditTypesTreatment;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (projects != null) {
      _json['projects'] = projects;
    }
    if (services != null) {
      _json['services'] = services;
    }
    if (subaccounts != null) {
      _json['subaccounts'] = subaccounts;
    }
    return _json;
  }
}

/// Describes a budget amount targeted to last period's spend. At this time, the
/// amount is automatically 100% of last period's spend; that is, there are no
/// other options yet. Future configuration will be described here (for example,
/// configuring a percentage of last period's spend).
class GoogleCloudBillingBudgetsV1beta1LastPeriodAmount {
  GoogleCloudBillingBudgetsV1beta1LastPeriodAmount();

  GoogleCloudBillingBudgetsV1beta1LastPeriodAmount.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Response for ListBudgets
class GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse {
  /// List of the budgets owned by the requested billing account.
  core.List<GoogleCloudBillingBudgetsV1beta1Budget> budgets;

  /// If not empty, indicates that there may be more budgets that match the
  /// request; this value should be passed in a new `ListBudgetsRequest`.
  core.String nextPageToken;

  GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse();

  GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('budgets')) {
      budgets = (_json['budgets'] as core.List)
          .map<GoogleCloudBillingBudgetsV1beta1Budget>(
              (value) => GoogleCloudBillingBudgetsV1beta1Budget.fromJson(value))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (budgets != null) {
      _json['budgets'] = budgets.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// ThresholdRule contains a definition of a threshold which triggers an alert
/// (a notification of a threshold being crossed) to be sent when spend goes
/// above the specified amount. Alerts are automatically e-mailed to users with
/// the Billing Account Administrator role or the Billing Account User role. The
/// thresholds here have no effect on notifications sent to anything configured
/// under `Budget.all_updates_rule`.
class GoogleCloudBillingBudgetsV1beta1ThresholdRule {
  /// Optional. The type of basis used to determine if spend has passed the
  /// threshold. Behavior defaults to CURRENT_SPEND if not set.
  /// Possible string values are:
  /// - "BASIS_UNSPECIFIED" : Unspecified threshold basis.
  /// - "CURRENT_SPEND" : Use current spend as the basis for comparison against
  /// the threshold.
  /// - "FORECASTED_SPEND" : Use forecasted spend for the period as the basis
  /// for comparison against the threshold.
  core.String spendBasis;

  /// Required. Send an alert when this threshold is exceeded. This is a
  /// 1.0-based percentage, so 0.5 = 50%. Validation: non-negative number.
  core.double thresholdPercent;

  GoogleCloudBillingBudgetsV1beta1ThresholdRule();

  GoogleCloudBillingBudgetsV1beta1ThresholdRule.fromJson(core.Map _json) {
    if (_json.containsKey('spendBasis')) {
      spendBasis = _json['spendBasis'];
    }
    if (_json.containsKey('thresholdPercent')) {
      thresholdPercent = _json['thresholdPercent'].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (spendBasis != null) {
      _json['spendBasis'] = spendBasis;
    }
    if (thresholdPercent != null) {
      _json['thresholdPercent'] = thresholdPercent;
    }
    return _json;
  }
}

/// Request for UpdateBudget
class GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest {
  /// Required. The updated budget object. The budget to update is specified by
  /// the budget name in the budget.
  GoogleCloudBillingBudgetsV1beta1Budget budget;

  /// Optional. Indicates which fields in the provided budget to update.
  /// Read-only fields (such as `name`) cannot be changed. If this is not
  /// provided, then only fields with non-default values from the request are
  /// updated. See
  /// https://developers.google.com/protocol-buffers/docs/proto3#default for
  /// more details about default values.
  core.String updateMask;

  GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest();

  GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest.fromJson(core.Map _json) {
    if (_json.containsKey('budget')) {
      budget = GoogleCloudBillingBudgetsV1beta1Budget.fromJson(_json['budget']);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (budget != null) {
      _json['budget'] = budget.toJson();
    }
    if (updateMask != null) {
      _json['updateMask'] = updateMask;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class GoogleTypeMoney {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount. The value must be between
  /// -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos`
  /// must be positive or zero. If `units` is zero, `nanos` can be positive,
  /// zero, or negative. If `units` is negative, `nanos` must be negative or
  /// zero. For example $-1.75 is represented as `units`=-1 and
  /// `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount. For example if `currencyCode` is `"USD"`,
  /// then 1 unit is one US dollar.
  core.String units;

  GoogleTypeMoney();

  GoogleTypeMoney.fromJson(core.Map _json) {
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'];
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'];
    }
    if (_json.containsKey('units')) {
      units = _json['units'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (currencyCode != null) {
      _json['currencyCode'] = currencyCode;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (units != null) {
      _json['units'] = units;
    }
    return _json;
  }
}
