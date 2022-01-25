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

/// Cloud Billing Budget API - v1
///
/// The Cloud Billing Budget API stores Cloud Billing budgets, which define a
/// budget plan and the rules to execute as spend is tracked against that plan.
///
/// For more information, see
/// <https://cloud.google.com/billing/docs/how-to/budget-api-overview>
///
/// Create an instance of [CloudBillingBudgetApi] to access these resources:
///
/// - [BillingAccountsResource]
///   - [BillingAccountsBudgetsResource]
library billingbudgets.v1;

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

/// The Cloud Billing Budget API stores Cloud Billing budgets, which define a
/// budget plan and the rules to execute as spend is tracked against that plan.
class CloudBillingBudgetApi {
  /// View and manage your Google Cloud Platform billing accounts
  static const cloudBillingScope =
      'https://www.googleapis.com/auth/cloud-billing';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BillingAccountsResource get billingAccounts =>
      BillingAccountsResource(_requester);

  CloudBillingBudgetApi(http.Client client,
      {core.String rootUrl = 'https://billingbudgets.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BillingAccountsResource {
  final commons.ApiRequester _requester;

  BillingAccountsBudgetsResource get budgets =>
      BillingAccountsBudgetsResource(_requester);

  BillingAccountsResource(commons.ApiRequester client) : _requester = client;
}

class BillingAccountsBudgetsResource {
  final commons.ApiRequester _requester;

  BillingAccountsBudgetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new budget.
  ///
  /// See [Quotas and limits](https://cloud.google.com/billing/quotas) for more
  /// information on the limits of the number of budgets you can create.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the billing account to create the budget
  /// in. Values are of the form `billingAccounts/{billingAccountId}`.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1Budget> create(
    GoogleCloudBillingBudgetsV1Budget request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/budgets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a budget.
  ///
  /// Returns successfully if already deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the budget to delete. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern `^billingAccounts/\[^/\]+/budgets/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a budget.
  ///
  /// WARNING: There are some fields exposed on the Google Cloud Console that
  /// aren't available on this API. When reading from the API, you will not see
  /// these fields in the return value, though they may have been set in the
  /// Cloud Console.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of budget to get. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern `^billingAccounts/\[^/\]+/budgets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1Budget> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of budgets for a billing account.
  ///
  /// WARNING: There are some fields exposed on the Google Cloud Console that
  /// aren't available on this API. When reading from the API, you will not see
  /// these fields in the return value, though they may have been set in the
  /// Cloud Console.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of billing account to list budgets under. Values
  /// are of the form `billingAccounts/{billingAccountId}`.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudBillingBudgetsV1ListBudgetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1ListBudgetsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/budgets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudBillingBudgetsV1ListBudgetsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a budget and returns the updated budget.
  ///
  /// WARNING: There are some fields exposed on the Google Cloud Console that
  /// aren't available on this API. Budget fields that are not exposed in this
  /// API will not be changed by this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the budget. The resource name
  /// implies the scope of a budget. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  /// Value must have pattern `^billingAccounts/\[^/\]+/budgets/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. Indicates which fields in the provided budget to
  /// update. Read-only fields (such as `name`) cannot be changed. If this is
  /// not provided, then only fields with non-default values from the request
  /// are updated. See
  /// https://developers.google.com/protocol-buffers/docs/proto3#default for
  /// more details about default values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudBillingBudgetsV1Budget].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudBillingBudgetsV1Budget> patch(
    GoogleCloudBillingBudgetsV1Budget request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A budget is a plan that describes what you expect to spend on Cloud
/// projects, plus the rules to execute as spend is tracked against that plan,
/// (for example, send an alert when 90% of the target spend is met).
///
/// The budget time period is configurable, with options such as month
/// (default), quarter, year, or custom time period.
class GoogleCloudBillingBudgetsV1Budget {
  /// Budgeted amount.
  ///
  /// Required.
  GoogleCloudBillingBudgetsV1BudgetAmount? amount;

  /// Filters that define which resources are used to compute the actual spend
  /// against the budget amount, such as projects, services, and the budget's
  /// time period, as well as other filters.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1Filter? budgetFilter;

  /// User data for display name in UI.
  ///
  /// The name must be less than or equal to 60 characters.
  core.String? displayName;

  /// Etag to validate that the object is unchanged for a read-modify-write
  /// operation.
  ///
  /// An empty etag causes an update to overwrite other changes.
  ///
  /// Optional.
  core.String? etag;

  /// Resource name of the budget.
  ///
  /// The resource name implies the scope of a budget. Values are of the form
  /// `billingAccounts/{billingAccountId}/budgets/{budgetId}`.
  ///
  /// Output only.
  core.String? name;

  /// Rules to apply to notifications sent based on budget spend and thresholds.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1NotificationsRule? notificationsRule;

  /// Rules that trigger alerts (notifications of thresholds being crossed) when
  /// spend exceeds the specified percentages of the budget.
  ///
  /// Optional for `pubsubTopic` notifications. Required if using email
  /// notifications.
  ///
  /// Optional.
  core.List<GoogleCloudBillingBudgetsV1ThresholdRule>? thresholdRules;

  GoogleCloudBillingBudgetsV1Budget({
    this.amount,
    this.budgetFilter,
    this.displayName,
    this.etag,
    this.name,
    this.notificationsRule,
    this.thresholdRules,
  });

  GoogleCloudBillingBudgetsV1Budget.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? GoogleCloudBillingBudgetsV1BudgetAmount.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          budgetFilter: _json.containsKey('budgetFilter')
              ? GoogleCloudBillingBudgetsV1Filter.fromJson(
                  _json['budgetFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notificationsRule: _json.containsKey('notificationsRule')
              ? GoogleCloudBillingBudgetsV1NotificationsRule.fromJson(
                  _json['notificationsRule']
                      as core.Map<core.String, core.dynamic>)
              : null,
          thresholdRules: _json.containsKey('thresholdRules')
              ? (_json['thresholdRules'] as core.List)
                  .map((value) =>
                      GoogleCloudBillingBudgetsV1ThresholdRule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (budgetFilter != null) 'budgetFilter': budgetFilter!,
        if (displayName != null) 'displayName': displayName!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (notificationsRule != null) 'notificationsRule': notificationsRule!,
        if (thresholdRules != null) 'thresholdRules': thresholdRules!,
      };
}

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1BudgetAmount {
  /// Use the last period's actual spend as the budget for the present period.
  ///
  /// LastPeriodAmount can only be set when the budget's time period is a
  /// Filter.calendar_period. It cannot be set in combination with
  /// Filter.custom_period.
  GoogleCloudBillingBudgetsV1LastPeriodAmount? lastPeriodAmount;

  /// A specified amount to use as the budget.
  ///
  /// `currency_code` is optional. If specified when creating a budget, it must
  /// match the currency of the billing account. If specified when updating a
  /// budget, it must match the currency_code of the existing budget. The
  /// `currency_code` is provided on output.
  GoogleTypeMoney? specifiedAmount;

  GoogleCloudBillingBudgetsV1BudgetAmount({
    this.lastPeriodAmount,
    this.specifiedAmount,
  });

  GoogleCloudBillingBudgetsV1BudgetAmount.fromJson(core.Map _json)
      : this(
          lastPeriodAmount: _json.containsKey('lastPeriodAmount')
              ? GoogleCloudBillingBudgetsV1LastPeriodAmount.fromJson(
                  _json['lastPeriodAmount']
                      as core.Map<core.String, core.dynamic>)
              : null,
          specifiedAmount: _json.containsKey('specifiedAmount')
              ? GoogleTypeMoney.fromJson(_json['specifiedAmount']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastPeriodAmount != null) 'lastPeriodAmount': lastPeriodAmount!,
        if (specifiedAmount != null) 'specifiedAmount': specifiedAmount!,
      };
}

/// All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).
class GoogleCloudBillingBudgetsV1CustomPeriod {
  /// The end date of the time period.
  ///
  /// Budgets with elapsed end date won't be processed. If unset, specifies to
  /// track all usage incurred since the start_date.
  ///
  /// Optional.
  GoogleTypeDate? endDate;

  /// The start date must be after January 1, 2017.
  ///
  /// Required.
  GoogleTypeDate? startDate;

  GoogleCloudBillingBudgetsV1CustomPeriod({
    this.endDate,
    this.startDate,
  });

  GoogleCloudBillingBudgetsV1CustomPeriod.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? GoogleTypeDate.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: _json.containsKey('startDate')
              ? GoogleTypeDate.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// A filter for a budget, limiting the scope of the cost to calculate.
class GoogleCloudBillingBudgetsV1Filter {
  /// Specifies to track usage for recurring calendar period.
  ///
  /// For example, assume that CalendarPeriod.QUARTER is set. The budget tracks
  /// usage from April 1 to June 30, when the current calendar month is April,
  /// May, June. After that, it tracks usage from July 1 to September 30 when
  /// the current calendar month is July, August, September, so on.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CALENDAR_PERIOD_UNSPECIFIED" : Calendar period is unset. This is the
  /// default if the budget is for a custom time period (CustomPeriod).
  /// - "MONTH" : A month. Month starts on the first day of each month, such as
  /// January 1, February 1, March 1, and so on.
  /// - "QUARTER" : A quarter. Quarters start on dates January 1, April 1, July
  /// 1, and October 1 of each year.
  /// - "YEAR" : A year. Year starts on January 1.
  core.String? calendarPeriod;

  /// If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a
  /// list of credit types to be subtracted from gross cost to determine the
  /// spend for threshold calculations.
  ///
  /// See
  /// [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type).
  /// If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS,
  /// this field must be empty.
  ///
  /// Optional.
  core.List<core.String>? creditTypes;

  /// If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CREDIT_TYPES_TREATMENT_UNSPECIFIED"
  /// - "INCLUDE_ALL_CREDITS" : All types of credit are subtracted from the
  /// gross cost to determine the spend for threshold calculations.
  /// - "EXCLUDE_ALL_CREDITS" : All types of credit are added to the net cost to
  /// determine the spend for threshold calculations.
  /// - "INCLUDE_SPECIFIED_CREDITS" :
  /// [Credit types](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type)
  /// specified in the credit_types field are subtracted from the gross cost to
  /// determine the spend for threshold calculations.
  core.String? creditTypesTreatment;

  /// Specifies to track usage from any start date (required) to any end date
  /// (optional).
  ///
  /// This time period is static, it does not recur.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1CustomPeriod? customPeriod;

  /// A single label and value pair specifying that usage from only this set of
  /// labeled resources should be included in the budget.
  ///
  /// If omitted, the report includes all labeled and unlabeled usage. An object
  /// containing a single `"key": value` pair. Example: `{ "name": "wrench" }`.
  /// _Currently, multiple entries or multiple values per entry are not
  /// allowed._
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.List<core.Object?>>? labels;

  /// A set of projects of the form `projects/{project}`, specifying that usage
  /// from only this set of projects should be included in the budget.
  ///
  /// If omitted, the report includes all usage for the billing account,
  /// regardless of which project the usage occurred on. Only zero or one
  /// project can be specified currently.
  ///
  /// Optional.
  core.List<core.String>? projects;

  /// A set of services of the form `services/{service_id}`, specifying that
  /// usage from only this set of services should be included in the budget.
  ///
  /// If omitted, the report includes usage for all the services. The service
  /// names are available through the Catalog API:
  /// https://cloud.google.com/billing/v1/how-tos/catalog-api.
  ///
  /// Optional.
  core.List<core.String>? services;

  /// A set of subaccounts of the form `billingAccounts/{account_id}`,
  /// specifying that usage from only this set of subaccounts should be included
  /// in the budget.
  ///
  /// If a subaccount is set to the name of the parent account, usage from the
  /// parent account is included. If the field is omitted, the report includes
  /// usage from the parent account and all subaccounts, if they exist.
  ///
  /// Optional.
  core.List<core.String>? subaccounts;

  GoogleCloudBillingBudgetsV1Filter({
    this.calendarPeriod,
    this.creditTypes,
    this.creditTypesTreatment,
    this.customPeriod,
    this.labels,
    this.projects,
    this.services,
    this.subaccounts,
  });

  GoogleCloudBillingBudgetsV1Filter.fromJson(core.Map _json)
      : this(
          calendarPeriod: _json.containsKey('calendarPeriod')
              ? _json['calendarPeriod'] as core.String
              : null,
          creditTypes: _json.containsKey('creditTypes')
              ? (_json['creditTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          creditTypesTreatment: _json.containsKey('creditTypesTreatment')
              ? _json['creditTypesTreatment'] as core.String
              : null,
          customPeriod: _json.containsKey('customPeriod')
              ? GoogleCloudBillingBudgetsV1CustomPeriod.fromJson(
                  _json['customPeriod'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.List,
                  ),
                )
              : null,
          projects: _json.containsKey('projects')
              ? (_json['projects'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          services: _json.containsKey('services')
              ? (_json['services'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          subaccounts: _json.containsKey('subaccounts')
              ? (_json['subaccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (calendarPeriod != null) 'calendarPeriod': calendarPeriod!,
        if (creditTypes != null) 'creditTypes': creditTypes!,
        if (creditTypesTreatment != null)
          'creditTypesTreatment': creditTypesTreatment!,
        if (customPeriod != null) 'customPeriod': customPeriod!,
        if (labels != null) 'labels': labels!,
        if (projects != null) 'projects': projects!,
        if (services != null) 'services': services!,
        if (subaccounts != null) 'subaccounts': subaccounts!,
      };
}

/// Describes a budget amount targeted to the last Filter.calendar_period spend.
///
/// At this time, the amount is automatically 100% of the last calendar period's
/// spend; that is, there are no other options yet. LastPeriodAmount cannot be
/// set for a budget configured with a Filter.custom_period.
typedef GoogleCloudBillingBudgetsV1LastPeriodAmount = $Empty;

/// Response for ListBudgets
class GoogleCloudBillingBudgetsV1ListBudgetsResponse {
  /// List of the budgets owned by the requested billing account.
  core.List<GoogleCloudBillingBudgetsV1Budget>? budgets;

  /// If not empty, indicates that there may be more budgets that match the
  /// request; this value should be passed in a new `ListBudgetsRequest`.
  core.String? nextPageToken;

  GoogleCloudBillingBudgetsV1ListBudgetsResponse({
    this.budgets,
    this.nextPageToken,
  });

  GoogleCloudBillingBudgetsV1ListBudgetsResponse.fromJson(core.Map _json)
      : this(
          budgets: _json.containsKey('budgets')
              ? (_json['budgets'] as core.List)
                  .map((value) => GoogleCloudBillingBudgetsV1Budget.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (budgets != null) 'budgets': budgets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// NotificationsRule defines notifications that are sent based on budget spend
/// and thresholds.
class GoogleCloudBillingBudgetsV1NotificationsRule {
  /// When set to true, disables default notifications sent when a threshold is
  /// exceeded.
  ///
  /// Default notifications are sent to those with Billing Account Administrator
  /// and Billing Account User IAM roles for the target account.
  ///
  /// Optional.
  core.bool? disableDefaultIamRecipients;

  /// Email targets to send notifications to when a threshold is exceeded.
  ///
  /// This is in addition to the `DefaultIamRecipients` who receive alert emails
  /// based on their billing account IAM role. The value is the full REST
  /// resource name of a Cloud Monitoring email notification channel with the
  /// form `projects/{project_id}/notificationChannels/{channel_id}`. A maximum
  /// of 5 email notifications are allowed. To customize budget alert email
  /// recipients with monitoring notification channels, you _must create the
  /// monitoring notification channels before you link them to a budget_. For
  /// guidance on setting up notification channels to use with budgets, see
  /// [Customize budget alert email recipients](https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients).
  /// For Cloud Billing budget alerts, you _must use email notification
  /// channels_. The other types of notification channels are _not_ supported,
  /// such as Slack, SMS, or PagerDuty. If you want to
  /// [send budget notifications to Slack](https://cloud.google.com/billing/docs/how-to/notify#send_notifications_to_slack),
  /// use a pubsubTopic and configure
  /// [programmatic notifications](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications).
  ///
  /// Optional.
  core.List<core.String>? monitoringNotificationChannels;

  /// The name of the Pub/Sub topic where budget-related messages are published,
  /// in the form `projects/{project_id}/topics/{topic_id}`.
  ///
  /// Updates are sent to the topic at regular intervals; the timing of the
  /// updates is not dependent on the \[threshold rules\](#thresholdrule) you've
  /// set. Note that if you want your
  /// [Pub/Sub JSON object](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format)
  /// to contain data for `alertThresholdExceeded`, you need at least one
  /// \[alert threshold rule\](#thresholdrule). When you set threshold rules,
  /// you must also enable at least one of the email notification options,
  /// either using the default IAM recipients or Cloud Monitoring email
  /// notification channels. To use Pub/Sub topics with budgets, you must do the
  /// following: 1. Create the Pub/Sub topic before connecting it to your
  /// budget. For guidance, see
  /// [Manage programmatic budget alert notifications](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications).
  /// 2. Grant the API caller the `pubsub.topics.setIamPolicy` permission on the
  /// Pub/Sub topic. If not set, the API call fails with PERMISSION_DENIED. For
  /// additional details on Pub/Sub roles and permissions, see
  /// [Permissions required for this task](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions_required_for_this_task).
  ///
  /// Optional.
  core.String? pubsubTopic;

  /// Required when NotificationsRule.pubsub_topic is set.
  ///
  /// The schema version of the notification sent to
  /// NotificationsRule.pubsub_topic. Only "1.0" is accepted. It represents the
  /// JSON schema as defined in
  /// https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.
  ///
  /// Optional.
  core.String? schemaVersion;

  GoogleCloudBillingBudgetsV1NotificationsRule({
    this.disableDefaultIamRecipients,
    this.monitoringNotificationChannels,
    this.pubsubTopic,
    this.schemaVersion,
  });

  GoogleCloudBillingBudgetsV1NotificationsRule.fromJson(core.Map _json)
      : this(
          disableDefaultIamRecipients:
              _json.containsKey('disableDefaultIamRecipients')
                  ? _json['disableDefaultIamRecipients'] as core.bool
                  : null,
          monitoringNotificationChannels:
              _json.containsKey('monitoringNotificationChannels')
                  ? (_json['monitoringNotificationChannels'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          pubsubTopic: _json.containsKey('pubsubTopic')
              ? _json['pubsubTopic'] as core.String
              : null,
          schemaVersion: _json.containsKey('schemaVersion')
              ? _json['schemaVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableDefaultIamRecipients != null)
          'disableDefaultIamRecipients': disableDefaultIamRecipients!,
        if (monitoringNotificationChannels != null)
          'monitoringNotificationChannels': monitoringNotificationChannels!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (schemaVersion != null) 'schemaVersion': schemaVersion!,
      };
}

/// ThresholdRule contains the definition of a threshold.
///
/// Threshold rules define the triggering events used to generate a budget
/// notification email. When a threshold is crossed (spend exceeds the specified
/// percentages of the budget), budget alert emails are sent to the email
/// recipients you specify in the \[NotificationsRule\](#notificationsrule).
/// Threshold rules also affect the fields included in the
/// [JSON data object](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format)
/// sent to a Pub/Sub topic. Threshold rules are _required_ if using email
/// notifications. Threshold rules are _optional_ if only setting a
/// \[`pubsubTopic` NotificationsRule\](#NotificationsRule), unless you want
/// your JSON data object to include data about the thresholds you set. For more
/// information, see
/// [set budget threshold rules and actions](https://cloud.google.com/billing/docs/how-to/budgets#budget-actions).
class GoogleCloudBillingBudgetsV1ThresholdRule {
  /// The type of basis used to determine if spend has passed the threshold.
  ///
  /// Behavior defaults to CURRENT_SPEND if not set.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BASIS_UNSPECIFIED" : Unspecified threshold basis.
  /// - "CURRENT_SPEND" : Use current spend as the basis for comparison against
  /// the threshold.
  /// - "FORECASTED_SPEND" : Use forecasted spend for the period as the basis
  /// for comparison against the threshold. FORECASTED_SPEND can only be set
  /// when the budget's time period is a Filter.calendar_period. It cannot be
  /// set in combination with Filter.custom_period.
  core.String? spendBasis;

  /// Send an alert when this threshold is exceeded.
  ///
  /// This is a 1.0-based percentage, so 0.5 = 50%. Validation: non-negative
  /// number.
  ///
  /// Required.
  core.double? thresholdPercent;

  GoogleCloudBillingBudgetsV1ThresholdRule({
    this.spendBasis,
    this.thresholdPercent,
  });

  GoogleCloudBillingBudgetsV1ThresholdRule.fromJson(core.Map _json)
      : this(
          spendBasis: _json.containsKey('spendBasis')
              ? _json['spendBasis'] as core.String
              : null,
          thresholdPercent: _json.containsKey('thresholdPercent')
              ? (_json['thresholdPercent'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (spendBasis != null) 'spendBasis': spendBasis!,
        if (thresholdPercent != null) 'thresholdPercent': thresholdPercent!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
typedef GoogleTypeDate = $Date;

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;
