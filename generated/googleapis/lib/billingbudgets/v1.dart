// Copyright 2021 Google LLC
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

  CloudBillingBudgetApi(
    http.Client client, {
    core.String rootUrl = 'https://billingbudgets.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/budgets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [scope] - Optional. Set the scope of the budgets to be returned, in the
  /// format of the resource name. The scope of a budget is the cost that it
  /// tracks, such as costs for a single project, or the costs for all projects
  /// in a folder. Only project scope (in the format of "projects/project-id" or
  /// "projects/123") is supported in this field. When this field is set to a
  /// project's resource name, the budgets returned are tracking the costs for
  /// that project.
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
    core.String? scope,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'scope': ?scope == null ? null : [scope],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/budgets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBudgetsV1ListBudgetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudBillingBudgetsV1Budget.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A budget is a plan that describes what you expect to spend on Cloud
/// projects, plus the rules to execute as spend is tracked against that plan,
/// (for example, send an alert when 90% of the target spend is met, or pause
/// usage of the specified service when a spend cap budget is enforced).
///
/// For alerts-only budgets, the budget time period is configurable, with
/// options such as month (default), quarter, year, or custom time period. For
/// spend cap budgets, the budget time period is limited to month.
class GoogleCloudBillingBudgetsV1Budget {
  /// Budgeted amount.
  ///
  /// When `spend_cap` is set, `specified_amount` must be set to a non-negative
  /// amount (\>= 0); `last_period_amount` is not supported.
  ///
  /// Required.
  GoogleCloudBillingBudgetsV1BudgetAmount? amount;

  /// Filters that define which resources are used to compute the actual spend
  /// against the budget amount, such as projects, services, and the budget's
  /// time period, as well as other filters.
  ///
  /// Must be set when `spend_cap` is set. See `Filter` fields for spend cap
  /// restrictions.
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
  /// Must be set when `spend_cap` is set. For spend caps,
  /// `enable_project_level_recipients` must be set to `true`,
  /// `disable_default_iam_recipients` must be `false` (or unset), and
  /// `pubsub_topic` and `monitoring_notification_channels` must be empty.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1NotificationsRule? notificationsRule;

  /// When `spend_cap` is set, must be `OWNERSHIP_SCOPE_UNSPECIFIED` or
  /// `ALL_USERS`.
  ///
  /// `BILLING_ACCOUNT` is not supported for spend caps.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OWNERSHIP_SCOPE_UNSPECIFIED" : Unspecified ownership scope, same as
  /// ALL_USERS.
  /// - "ALL_USERS" : Both billing account-level users and project-level users
  /// have full access to the budget, if the users have the required IAM
  /// permissions.
  /// - "BILLING_ACCOUNT" : Only billing account-level users have full access to
  /// the budget. Project-level users have read-only access, even if they have
  /// the required IAM permissions. Not supported when `spend_cap` is set.
  core.String? ownershipScope;

  /// The spend cap configured for this budget.
  ///
  /// When `spend_cap` is set, strict field restrictions apply to the budget
  /// (see field-level comments on `ownership_scope`, `budget_filter`, `amount`,
  /// `threshold_rules`, and `notifications_rule`). When
  /// `spend_cap.output_state` is `ENFORCED`, only `spend_cap.input_state` can
  /// be modified in an `UpdateBudget` request (e.g., setting `input_state` to
  /// `AWAITING_NEXT_PERIOD` to lift the cap); modifying any other budget field
  /// while enforced will fail with `FAILED_PRECONDITION`. If the existing
  /// resource is a spend cap and an `update_mask` is supplied in an
  /// `UpdateBudget` request, `spend_cap` or `spend_cap.input_state` must be
  /// specified in the update mask. To convert a spend cap budget to a regular
  /// budget, specify `spend_cap` in the `update_mask` and omit `spend_cap` from
  /// the budget in the request.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1SpendCap? spendCap;

  /// Rules that trigger alerts (notifications of thresholds being crossed) when
  /// spend exceeds the specified percentages of the budget.
  ///
  /// Optional for `pubsubTopic` notifications. Required if using email
  /// notifications. Must be set when `spend_cap` is set. Spend caps must have
  /// exactly three `CURRENT_SPEND` threshold rules with `threshold_percent`
  /// values of `0.5`, `0.8`, and `1.0` (50%, 80%, and 100%). `FORECASTED_SPEND`
  /// threshold rules are not supported for spend caps.
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
    this.ownershipScope,
    this.spendCap,
    this.thresholdRules,
  });

  GoogleCloudBillingBudgetsV1Budget.fromJson(core.Map json_)
    : this(
        amount: json_.containsKey('amount')
            ? GoogleCloudBillingBudgetsV1BudgetAmount.fromJson(
                json_['amount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        budgetFilter: json_.containsKey('budgetFilter')
            ? GoogleCloudBillingBudgetsV1Filter.fromJson(
                json_['budgetFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        name: json_['name'] as core.String?,
        notificationsRule: json_.containsKey('notificationsRule')
            ? GoogleCloudBillingBudgetsV1NotificationsRule.fromJson(
                json_['notificationsRule']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ownershipScope: json_['ownershipScope'] as core.String?,
        spendCap: json_.containsKey('spendCap')
            ? GoogleCloudBillingBudgetsV1SpendCap.fromJson(
                json_['spendCap'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        thresholdRules: (json_['thresholdRules'] as core.List?)
            ?.map(
              (value) => GoogleCloudBillingBudgetsV1ThresholdRule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amount = this.amount;
    final budgetFilter = this.budgetFilter;
    final displayName = this.displayName;
    final etag = this.etag;
    final name = this.name;
    final notificationsRule = this.notificationsRule;
    final ownershipScope = this.ownershipScope;
    final spendCap = this.spendCap;
    final thresholdRules = this.thresholdRules;
    return {
      'amount': ?amount,
      'budgetFilter': ?budgetFilter,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'notificationsRule': ?notificationsRule,
      'ownershipScope': ?ownershipScope,
      'spendCap': ?spendCap,
      'thresholdRules': ?thresholdRules,
    };
  }
}

/// The budgeted amount for each usage period.
class GoogleCloudBillingBudgetsV1BudgetAmount {
  /// Use the last period's actual spend as the budget for the present period.
  ///
  /// LastPeriodAmount can only be set when the budget's time period is a
  /// Filter.calendar_period. It cannot be set in combination with
  /// Filter.custom_period. Not supported when `spend_cap` is set.
  GoogleCloudBillingBudgetsV1LastPeriodAmount? lastPeriodAmount;

  /// A specified amount to use as the budget.
  ///
  /// `currency_code` is optional. If specified when creating a budget, it must
  /// match the currency of the billing account. If specified when updating a
  /// budget, it must match the currency_code of the existing budget. The
  /// `currency_code` is provided on output. Must be set when `spend_cap` is
  /// set; must be non-negative (\>= 0).
  GoogleTypeMoney? specifiedAmount;

  GoogleCloudBillingBudgetsV1BudgetAmount({
    this.lastPeriodAmount,
    this.specifiedAmount,
  });

  GoogleCloudBillingBudgetsV1BudgetAmount.fromJson(core.Map json_)
    : this(
        lastPeriodAmount: json_.containsKey('lastPeriodAmount')
            ? GoogleCloudBillingBudgetsV1LastPeriodAmount.fromJson(
                json_['lastPeriodAmount']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        specifiedAmount: json_.containsKey('specifiedAmount')
            ? GoogleTypeMoney.fromJson(
                json_['specifiedAmount'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final lastPeriodAmount = this.lastPeriodAmount;
    final specifiedAmount = this.specifiedAmount;
    return {
      'lastPeriodAmount': ?lastPeriodAmount,
      'specifiedAmount': ?specifiedAmount,
    };
  }
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

  GoogleCloudBillingBudgetsV1CustomPeriod({this.endDate, this.startDate});

  GoogleCloudBillingBudgetsV1CustomPeriod.fromJson(core.Map json_)
    : this(
        endDate: json_.containsKey('endDate')
            ? GoogleTypeDate.fromJson(
                json_['endDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startDate: json_.containsKey('startDate')
            ? GoogleTypeDate.fromJson(
                json_['startDate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endDate = this.endDate;
    final startDate = this.startDate;
    return {'endDate': ?endDate, 'startDate': ?startDate};
  }
}

/// A filter for a budget, limiting the scope of the cost to calculate.
class GoogleCloudBillingBudgetsV1Filter {
  /// Specifies to track usage for recurring calendar period.
  ///
  /// For example, assume that CalendarPeriod.QUARTER is set. The budget tracks
  /// usage from April 1 to June 30, when the current calendar month is April,
  /// May, June. After that, it tracks usage from July 1 to September 30 when
  /// the current calendar month is July, August, September, so on. When
  /// `spend_cap` is set, must be `MONTH` (or `usage_period` left unset, which
  /// defaults to `MONTH`). `QUARTER` and `YEAR` are not supported for spend
  /// caps.
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
  /// [a list of acceptable credit type values](https://docs.cloud.google.com/billing/docs/how-to/export-data-bigquery-tables/detailed-usage#credits-type).
  /// If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS,
  /// this field must be empty. Not supported when `spend_cap` is set; must be
  /// empty.
  ///
  /// Optional.
  core.List<core.String>? creditTypes;

  /// If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  ///
  /// Must be set to `EXCLUDE_ALL_CREDITS` when `spend_cap` is set.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CREDIT_TYPES_TREATMENT_UNSPECIFIED"
  /// - "INCLUDE_ALL_CREDITS" : All types of credit are subtracted from the
  /// gross cost to determine the spend for threshold calculations.
  /// - "EXCLUDE_ALL_CREDITS" : All types of credit are added to the net cost to
  /// determine the spend for threshold calculations.
  /// - "INCLUDE_SPECIFIED_CREDITS" :
  /// [Credit types](https://docs.cloud.google.com/billing/docs/how-to/export-data-bigquery-tables/detailed-usage#credits-type)
  /// specified in the credit_types field are subtracted from the gross cost to
  /// determine the spend for threshold calculations.
  core.String? creditTypesTreatment;

  /// Specifies to track usage from any start date (required) to any end date
  /// (optional).
  ///
  /// This time period is static, it does not recur. Not supported when
  /// `spend_cap` is set.
  ///
  /// Optional.
  GoogleCloudBillingBudgetsV1CustomPeriod? customPeriod;

  /// A single label and value pair specifying that usage from only this set of
  /// labeled resources should be included in the budget.
  ///
  /// If omitted, the report includes all labeled and unlabeled usage. An object
  /// containing a single `"key": value` pair. Example: `{ "name": "wrench" }`.
  /// _Currently, multiple entries or multiple values per entry are not
  /// allowed._ Not supported when `spend_cap` is set; must be empty.
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
  /// regardless of which project the usage occurred on. Must be set when
  /// `spend_cap` is set; must contain exactly one project.
  ///
  /// Optional.
  core.List<core.String>? projects;

  /// A set of folder and organization names of the form `folders/{folderId}` or
  /// `organizations/{organizationId}`, specifying that usage from only this set
  /// of folders and organizations should be included in the budget.
  ///
  /// If omitted, the budget includes all usage that the billing account pays
  /// for. If the folder or organization contains projects that are paid for by
  /// a different Cloud Billing account, the budget *doesn't* apply to those
  /// projects. Not supported when `spend_cap` is set; must be empty.
  ///
  /// Optional.
  core.List<core.String>? resourceAncestors;

  /// A set of services of the form `services/{service_id}`, specifying that
  /// usage from only this set of services should be included in the budget.
  ///
  /// If omitted, the report includes usage for all the services. The service
  /// names are available through the Catalog API:
  /// https://docs.cloud.google.com/billing/v1/how-tos/catalog-api. When
  /// `spend_cap` is set, the services filter must be set and must contain
  /// exactly one service from this list of eligible services:
  /// https://docs.cloud.google.com/billing/docs/how-to/budgets-spend-caps#eligible-services.
  ///
  /// Optional.
  core.List<core.String>? services;

  /// A set of subaccounts of the form `billingAccounts/{account_id}`,
  /// specifying that usage from only this set of subaccounts should be included
  /// in the budget.
  ///
  /// If a subaccount is set to the name of the parent account, usage from the
  /// parent account is included. If the field is omitted, the report includes
  /// usage from the parent account and all subaccounts, if they exist. Not
  /// supported when `spend_cap` is set; must be empty.
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
    this.resourceAncestors,
    this.services,
    this.subaccounts,
  });

  GoogleCloudBillingBudgetsV1Filter.fromJson(core.Map json_)
    : this(
        calendarPeriod: json_['calendarPeriod'] as core.String?,
        creditTypes: (json_['creditTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        creditTypesTreatment: json_['creditTypesTreatment'] as core.String?,
        customPeriod: json_.containsKey('customPeriod')
            ? GoogleCloudBillingBudgetsV1CustomPeriod.fromJson(
                json_['customPeriod'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.List),
        ),
        projects: (json_['projects'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        resourceAncestors: (json_['resourceAncestors'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        services: (json_['services'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        subaccounts: (json_['subaccounts'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final calendarPeriod = this.calendarPeriod;
    final creditTypes = this.creditTypes;
    final creditTypesTreatment = this.creditTypesTreatment;
    final customPeriod = this.customPeriod;
    final labels = this.labels;
    final projects = this.projects;
    final resourceAncestors = this.resourceAncestors;
    final services = this.services;
    final subaccounts = this.subaccounts;
    return {
      'calendarPeriod': ?calendarPeriod,
      'creditTypes': ?creditTypes,
      'creditTypesTreatment': ?creditTypesTreatment,
      'customPeriod': ?customPeriod,
      'labels': ?labels,
      'projects': ?projects,
      'resourceAncestors': ?resourceAncestors,
      'services': ?services,
      'subaccounts': ?subaccounts,
    };
  }
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

  GoogleCloudBillingBudgetsV1ListBudgetsResponse.fromJson(core.Map json_)
    : this(
        budgets: (json_['budgets'] as core.List?)
            ?.map(
              (value) => GoogleCloudBillingBudgetsV1Budget.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final budgets = this.budgets;
    final nextPageToken = this.nextPageToken;
    return {'budgets': ?budgets, 'nextPageToken': ?nextPageToken};
  }
}

/// NotificationsRule defines notifications that are sent based on budget spend
/// and thresholds.
class GoogleCloudBillingBudgetsV1NotificationsRule {
  /// When set to true, disables default notifications sent when a threshold is
  /// exceeded.
  ///
  /// Default notifications are sent to those with Billing Account Administrator
  /// and Billing Account User IAM roles for the target account. Must be `false`
  /// (or unset) when `spend_cap` is set; default notifications cannot be
  /// disabled for spend caps.
  ///
  /// Optional.
  core.bool? disableDefaultIamRecipients;

  /// When set to true, and when the budget has a single project configured,
  /// notifications will be sent to project level recipients of that project.
  ///
  /// This field will be ignored if the budget has multiple or no project
  /// configured. Currently, project level recipients are the users with `Owner`
  /// role on a cloud project. Must be set to `true` when `spend_cap` is set.
  ///
  /// Optional.
  core.bool? enableProjectLevelRecipients;

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
  /// [Customize budget alert email recipients](https://docs.cloud.google.com/billing/docs/how-to/budgets-notification-recipients).
  /// For Cloud Billing budget alerts, you _must use email notification
  /// channels_. The other types of notification channels are _not_ supported,
  /// such as Slack, SMS, or PagerDuty. If you want to
  /// [send budget notifications to Slack](https://docs.cloud.google.com/billing/docs/how-to/send-notifications-to-slack),
  /// use a pubsubTopic and configure
  /// [programmatic notifications](https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications).
  /// Not supported when `spend_cap` is set; must be empty.
  ///
  /// Optional.
  core.List<core.String>? monitoringNotificationChannels;

  /// The name of the Pub/Sub topic where budget-related messages are published,
  /// in the form `projects/{project_id}/topics/{topic_id}`.
  ///
  /// Updates are sent to the topic at regular intervals; the timing of the
  /// updates is not dependent on the \[threshold rules\](#thresholdrule) you've
  /// set. Note that if you want your
  /// [Pub/Sub JSON object](https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification-format)
  /// to contain data for `alertThresholdExceeded`, you need at least one
  /// \[alert threshold rule\](#thresholdrule). When you set threshold rules,
  /// you must also enable at least one of the email notification options,
  /// either using the default IAM recipients or Cloud Monitoring email
  /// notification channels. To use Pub/Sub topics with budgets, you must do the
  /// following: 1. Create the Pub/Sub topic before connecting it to your
  /// budget. For guidance, see
  /// [Manage programmatic budget alert notifications](https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications).
  /// 2. Grant the API caller the `pubsub.topics.setIamPolicy` permission on the
  /// Pub/Sub topic. If not set, the API call fails with PERMISSION_DENIED. For
  /// additional details on Pub/Sub roles and permissions, see
  /// [Permissions required for this task](https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions).
  /// Not supported when `spend_cap` is set; must be empty.
  ///
  /// Optional.
  core.String? pubsubTopic;

  /// Required when NotificationsRule.pubsub_topic is set.
  ///
  /// The schema version of the notification sent to
  /// NotificationsRule.pubsub_topic. Only "1.0" is accepted. It represents the
  /// JSON schema as defined in
  /// https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification-format.
  ///
  /// Optional.
  core.String? schemaVersion;

  GoogleCloudBillingBudgetsV1NotificationsRule({
    this.disableDefaultIamRecipients,
    this.enableProjectLevelRecipients,
    this.monitoringNotificationChannels,
    this.pubsubTopic,
    this.schemaVersion,
  });

  GoogleCloudBillingBudgetsV1NotificationsRule.fromJson(core.Map json_)
    : this(
        disableDefaultIamRecipients:
            json_['disableDefaultIamRecipients'] as core.bool?,
        enableProjectLevelRecipients:
            json_['enableProjectLevelRecipients'] as core.bool?,
        monitoringNotificationChannels:
            (json_['monitoringNotificationChannels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pubsubTopic: json_['pubsubTopic'] as core.String?,
        schemaVersion: json_['schemaVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final disableDefaultIamRecipients = this.disableDefaultIamRecipients;
    final enableProjectLevelRecipients = this.enableProjectLevelRecipients;
    final monitoringNotificationChannels = this.monitoringNotificationChannels;
    final pubsubTopic = this.pubsubTopic;
    final schemaVersion = this.schemaVersion;
    return {
      'disableDefaultIamRecipients': ?disableDefaultIamRecipients,
      'enableProjectLevelRecipients': ?enableProjectLevelRecipients,
      'monitoringNotificationChannels': ?monitoringNotificationChannels,
      'pubsubTopic': ?pubsubTopic,
      'schemaVersion': ?schemaVersion,
    };
  }
}

/// SpendCap defines the spend cap configuration and state.
class GoogleCloudBillingBudgetsV1SpendCap {
  /// The desired state specified by the user.
  ///
  /// Valid values for mutation: - `CONFIGURED`: Must be set when creating a
  /// spend cap (`CreateBudget`). Also valid when updating (`UpdateBudget`) to
  /// activate the spend cap. If the spend cap is in state
  /// `AWAITING_NEXT_PERIOD`, `input_state` must be set to `CONFIGURED`. -
  /// `AWAITING_NEXT_PERIOD`: Valid only when updating (`UpdateBudget`) to
  /// explicitly lift an enforced cap. Not allowed if the spend cap is in state
  /// `AWAITING_NEXT_PERIOD`. Supplying any other value will result in an
  /// INVALID_ARGUMENT error.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CONFIGURED" : Spend cap is configured and active.
  /// - "ENFORCED" : Spend cap limit is reached and enforced.
  /// - "AWAITING_NEXT_PERIOD" : Spend cap is waiting for the next period to
  /// start.
  core.String? inputState;

  /// The actual resting state of the spend cap.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "CONFIGURED" : Spend cap is configured and active.
  /// - "ENFORCED" : Spend cap limit is reached and enforced.
  /// - "AWAITING_NEXT_PERIOD" : Spend cap is waiting for the next period to
  /// start.
  core.String? outputState;

  /// Indicates whether the server is actively processing a state transition or
  /// async workflow.
  ///
  /// Output only.
  core.bool? reconciling;

  GoogleCloudBillingBudgetsV1SpendCap({
    this.inputState,
    this.outputState,
    this.reconciling,
  });

  GoogleCloudBillingBudgetsV1SpendCap.fromJson(core.Map json_)
    : this(
        inputState: json_['inputState'] as core.String?,
        outputState: json_['outputState'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputState = this.inputState;
    final outputState = this.outputState;
    final reconciling = this.reconciling;
    return {
      'inputState': ?inputState,
      'outputState': ?outputState,
      'reconciling': ?reconciling,
    };
  }
}

/// ThresholdRule contains the definition of a threshold.
///
/// Threshold rules define the triggering events used to generate a budget
/// notification email. When a threshold is crossed (spend exceeds the specified
/// percentages of the budget), budget alert emails are sent to the email
/// recipients you specify in the \[NotificationsRule\](#notificationsrule).
/// Threshold rules also affect the fields included in the
/// [JSON data object](https://docs.cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification-format)
/// sent to a Pub/Sub topic. Threshold rules are _required_ if using email
/// notifications. Threshold rules are _optional_ if only setting a
/// \[`pubsubTopic` NotificationsRule\](#NotificationsRule), unless you want
/// your JSON data object to include data about the thresholds you set. For more
/// information, see
/// [set budget threshold rules and actions](https://docs.cloud.google.com/billing/docs/how-to/budgets#budget-actions).
class GoogleCloudBillingBudgetsV1ThresholdRule {
  /// The type of basis used to determine if spend has passed the threshold.
  ///
  /// Behavior defaults to CURRENT_SPEND if not set. When `spend_cap` is set on
  /// the budget, must be `CURRENT_SPEND` or `BASIS_UNSPECIFIED`.
  /// `FORECASTED_SPEND` is not supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BASIS_UNSPECIFIED" : Unspecified threshold basis.
  /// - "CURRENT_SPEND" : Use current spend as the basis for comparison against
  /// the threshold.
  /// - "FORECASTED_SPEND" : Use forecasted spend for the period as the basis
  /// for comparison against the threshold. FORECASTED_SPEND can only be set
  /// when the budget's time period is a Filter.calendar_period. It cannot be
  /// set in combination with Filter.custom_period. Not supported when
  /// `spend_cap` is set.
  core.String? spendBasis;

  /// Send an alert when this threshold is exceeded.
  ///
  /// This is a 1.0-based percentage, so 0.5 = 50%. Validation: non-negative
  /// number. When `spend_cap` is set on the budget, `threshold_rules` must
  /// contain exactly three rules with `threshold_percent` values of `0.5`,
  /// `0.8`, and `1.0` (50%, 80%, and 100%).
  ///
  /// Required.
  core.double? thresholdPercent;

  GoogleCloudBillingBudgetsV1ThresholdRule({
    this.spendBasis,
    this.thresholdPercent,
  });

  GoogleCloudBillingBudgetsV1ThresholdRule.fromJson(core.Map json_)
    : this(
        spendBasis: json_['spendBasis'] as core.String?,
        thresholdPercent: (json_['thresholdPercent'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final spendBasis = this.spendBasis;
    final thresholdPercent = this.thresholdPercent;
    return {'spendBasis': ?spendBasis, 'thresholdPercent': ?thresholdPercent};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

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
typedef GoogleTypeDate = $Date;

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;
