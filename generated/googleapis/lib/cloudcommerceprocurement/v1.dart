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

/// Cloud Commerce Partner Procurement API - v1
///
/// Partner API for the Cloud Commerce Procurement Service.
///
/// For more information, see
/// <https://cloud.google.com/marketplace/docs/partners/>
///
/// Create an instance of [CloudCommercePartnerProcurementServiceApi] to access
/// these resources:
///
/// - [ProvidersResource]
///   - [ProvidersAccountsResource]
///   - [ProvidersEntitlementsResource]
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

/// Partner API for the Cloud Commerce Procurement Service.
class CloudCommercePartnerProcurementServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProvidersResource get providers => ProvidersResource(_requester);

  CloudCommercePartnerProcurementServiceApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudcommerceprocurement.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProvidersResource {
  final commons.ApiRequester _requester;

  ProvidersAccountsResource get accounts =>
      ProvidersAccountsResource(_requester);
  ProvidersEntitlementsResource get entitlements =>
      ProvidersEntitlementsResource(_requester);

  ProvidersResource(commons.ApiRequester client) : _requester = client;
}

class ProvidersAccountsResource {
  final commons.ApiRequester _requester;

  ProvidersAccountsResource(commons.ApiRequester client) : _requester = client;

  /// Grants an approval on an Account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account, with the format
  /// `providers/{providerId}/accounts/{accountId}`.
  /// Value must have pattern `^providers/\[^/\]+/accounts/\[^/\]+$`.
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
  async.Future<Empty> approve(
    ApproveAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a requested Account resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to retrieve.
  /// Value must have pattern `^providers/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [view] - Optional. What information to include in the response.
  /// Possible string values are:
  /// - "ACCOUNT_VIEW_UNSPECIFIED" : The default / unset value. For
  /// `GetAccount`, it defaults to the FULL view. For `ListAccounts`, it only
  /// supports BASIC view.
  /// - "ACCOUNT_VIEW_BASIC" : Include base account information. This is the
  /// default view. All fields from Account are included except for the
  /// reseller_parent_billing_account field.
  /// - "ACCOUNT_VIEW_FULL" : Includes all available account information,
  /// inclusive of the accounts reseller_parent_billing_account, if it's a
  /// resold account.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Account].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Account> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Accounts that the provider has access to.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^providers/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of entries that are requested. The default
  /// page size is 25 and the maximum page size is 200.
  ///
  /// [pageToken] - The token for fetching the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAccountsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rejects an approval on an Account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account.
  /// Value must have pattern `^providers/\[^/\]+/accounts/\[^/\]+$`.
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
  async.Future<Empty> reject(
    RejectAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets an Account and cancels all associated Entitlements.
  ///
  /// Partner can only reset accounts they own rather than customer accounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the account.
  /// Value must have pattern `^providers/\[^/\]+/accounts/\[^/\]+$`.
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
  async.Future<Empty> reset(
    ResetAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProvidersEntitlementsResource {
  final commons.ApiRequester _requester;

  ProvidersEntitlementsResource(commons.ApiRequester client)
    : _requester = client;

  /// Approves an entitlement that is in the
  /// EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state.
  ///
  /// This method is invoked by the provider to approve the creation of the
  /// entitlement resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement, with the format
  /// `providers/{providerId}/entitlements/{entitlementId}`.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
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
  async.Future<Empty> approve(
    ApproveEntitlementRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approve';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Approves an entitlement plan change that is in the
  /// EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state.
  ///
  /// This method is invoked by the provider to approve the plan change on the
  /// entitlement resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
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
  async.Future<Empty> approvePlanChange(
    ApproveEntitlementPlanChangeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':approvePlanChange';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a requested Entitlement resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to retrieve.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entitlement> get(
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
    return Entitlement.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Entitlements for which the provider has read access.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name.
  /// Value must have pattern `^providers/\[^/\]+$`.
  ///
  /// [filter] - The filter that can be used to limit the list request. The
  /// filter is a query string that can match a selected set of attributes with
  /// string values. For example `account=E-1234-5678-ABCD-EFGH`,
  /// `state=pending_cancellation`, and `plan!=foo-plan`. Supported query
  /// attributes are * `account` * `customer_billing_account` with value in the
  /// format of: `billingAccounts/{id}` * `product_external_name` *
  /// `quote_external_name` * `offer` * `new_pending_offer` * `plan` *
  /// `newPendingPlan` or `new_pending_plan` * `state` * `services` *
  /// `consumers.project` * `change_history.new_offer` Note that the consumers
  /// and change_history.new_offer match works on repeated structures, so
  /// equality (`consumers.project=projects/123456789`) is not supported. Set
  /// membership can be expressed with the `:` operator. For example,
  /// `consumers.project:projects/123456789` finds entitlements with at least
  /// one consumer with project field equal to `projects/123456789`.
  /// `change_history.new_offer` retrieves all entitlements that were once
  /// associated or are currently active with the offer. Also note that the
  /// state name match is case-insensitive and query can omit the prefix
  /// "ENTITLEMENT_". For example, `state=active` is equivalent to
  /// `state=ENTITLEMENT_ACTIVE`. If the query contains some special characters
  /// other than letters, underscore, or digits, the phrase must be quoted with
  /// double quotes. For example, `product="providerId:productId"`, where the
  /// product name needs to be quoted because it contains special character
  /// colon. Queries can be combined with `AND`, `OR`, and `NOT` to form more
  /// complex queries. They can also be grouped to force a desired evaluation
  /// order. For example, `state=active AND (account=E-1234 OR account=5678) AND
  /// NOT (product=foo-product)`. Connective `AND` can be omitted between two
  /// predicates. For example `account=E-1234 state=active` is equivalent to
  /// `account=E-1234 AND state=active`.
  ///
  /// [pageSize] - The maximum number of entries that are requested. The default
  /// page size is 200.
  ///
  /// [pageToken] - The token for fetching the next page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEntitlementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEntitlementsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntitlementsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing Entitlement.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to update.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask that applies to the resource. See the
  /// [FieldMask definition](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask)
  /// for more details.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entitlement> patch(
    Entitlement request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Entitlement.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rejects an entitlement that is in the
  /// EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED state.
  ///
  /// This method is invoked by the provider to reject the creation of the
  /// entitlement resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
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
  async.Future<Empty> reject(
    RejectEntitlementRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rejects an entitlement plan change that is in the
  /// EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state.
  ///
  /// This method is invoked by the provider to reject the plan change on the
  /// entitlement resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
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
  async.Future<Empty> rejectPlanChange(
    RejectEntitlementPlanChangeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rejectPlanChange';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Requests suspension of an active Entitlement.
  ///
  /// This is not yet supported.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to suspend.
  /// Value must have pattern `^providers/\[^/\]+/entitlements/\[^/\]+$`.
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
  async.Future<Empty> suspend(
    SuspendEntitlementRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':suspend';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an account that was established by the customer on the service
/// provider's system.
class Account {
  /// The approvals for this account.
  ///
  /// These approvals are used to track actions that are permitted or have been
  /// completed by a customer within the context of the provider. This might
  /// include a sign up flow or a provisioning step, for example, that the
  /// provider can admit to having happened.
  ///
  /// Output only.
  core.List<Approval>? approvals;

  /// The creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The custom properties that were collected from the user to create this
  /// account.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.Object?>? inputProperties;

  /// The resource name of the account.
  ///
  /// Account names have the form `accounts/{account_id}`.
  ///
  /// Output only.
  core.String? name;

  /// The identifier of the service provider that this account was created
  /// against.
  ///
  /// Each service provider is assigned a unique provider value when they
  /// onboard with Cloud Commerce platform.
  ///
  /// Output only.
  core.String? provider;

  /// The reseller parent billing account of the account's corresponding billing
  /// account, applicable only when the corresponding billing account is a
  /// subaccount of a reseller.
  ///
  /// Included in responses only for view: ACCOUNT_VIEW_FULL. Format:
  /// billingAccounts/{billing_account_id}
  ///
  /// Output only.
  core.String? resellerParentBillingAccount;

  /// The state of the account.
  ///
  /// This is used to decide whether the customer is in good standing with the
  /// provider and is able to make purchases. An account might not be able to
  /// make a purchase if the billing account is suspended, for example.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ACCOUNT_STATE_UNSPECIFIED" : Default state of the account. It's only
  /// set to this value when the account is first created and has not been
  /// initialized.
  /// - "ACCOUNT_ACTIVATION_REQUESTED" : The customer has requested the creation
  /// of the account resource, and the provider notification message is
  /// dispatched. This state has been deprecated, as accounts now immediately
  /// transition to AccountState.ACCOUNT_ACTIVE.
  /// - "ACCOUNT_ACTIVE" : The account is active and ready for use. The next
  /// possible states are: - Account getting deleted: After the user invokes
  /// delete from another API.
  core.String? state;

  /// The last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  Account({
    this.approvals,
    this.createTime,
    this.inputProperties,
    this.name,
    this.provider,
    this.resellerParentBillingAccount,
    this.state,
    this.updateTime,
  });

  Account.fromJson(core.Map json_)
    : this(
        approvals:
            (json_['approvals'] as core.List?)
                ?.map(
                  (value) => Approval.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        inputProperties:
            json_.containsKey('inputProperties')
                ? json_['inputProperties']
                    as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        provider: json_['provider'] as core.String?,
        resellerParentBillingAccount:
            json_['resellerParentBillingAccount'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (approvals != null) 'approvals': approvals!,
    if (createTime != null) 'createTime': createTime!,
    if (inputProperties != null) 'inputProperties': inputProperties!,
    if (name != null) 'name': name!,
    if (provider != null) 'provider': provider!,
    if (resellerParentBillingAccount != null)
      'resellerParentBillingAccount': resellerParentBillingAccount!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// An approval for some action on an account.
class Approval {
  /// The name of the approval.
  ///
  /// Output only.
  core.String? name;

  /// An explanation for the state of the approval.
  ///
  /// Output only.
  core.String? reason;

  /// The state of the approval.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Sentinel value; do not use.
  /// - "PENDING" : The approval is pending response from the provider. The
  /// approval state can transition to Account.Approval.State.APPROVED or
  /// Account.Approval.State.REJECTED.
  /// - "APPROVED" : The approval has been granted by the provider.
  /// - "REJECTED" : The approval has been rejected by the provider. A provider
  /// may choose to approve a previously rejected approval, so is it possible to
  /// transition to Account.Approval.State.APPROVED.
  core.String? state;

  /// The last update timestamp of the approval.
  ///
  /// Optional.
  core.String? updateTime;

  Approval({this.name, this.reason, this.state, this.updateTime});

  Approval.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        reason: json_['reason'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (reason != null) 'reason': reason!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Request message for PartnerProcurementService.ApproveAccount.
class ApproveAccountRequest {
  /// The name of the approval being approved.
  ///
  /// If absent and there is only one approval possible, that approval will be
  /// granted. If absent and there are many approvals possible, the request will
  /// fail with a 400 Bad Request. Optional.
  core.String? approvalName;

  /// Set of properties that should be associated with the account.
  ///
  /// Optional.
  core.Map<core.String, core.String>? properties;

  /// Free form text string explaining the approval reason.
  ///
  /// Optional. Max allowed length: 256 bytes. Longer strings will be truncated.
  core.String? reason;

  ApproveAccountRequest({this.approvalName, this.properties, this.reason});

  ApproveAccountRequest.fromJson(core.Map json_)
    : this(
        approvalName: json_['approvalName'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (approvalName != null) 'approvalName': approvalName!,
    if (properties != null) 'properties': properties!,
    if (reason != null) 'reason': reason!,
  };
}

/// Request message for
/// \[PartnerProcurementService.ApproveEntitlementPlanChange\[\].
class ApproveEntitlementPlanChangeRequest {
  /// Name of the pending plan that's being approved.
  ///
  /// Required.
  core.String? pendingPlanName;

  ApproveEntitlementPlanChangeRequest({this.pendingPlanName});

  ApproveEntitlementPlanChangeRequest.fromJson(core.Map json_)
    : this(pendingPlanName: json_['pendingPlanName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (pendingPlanName != null) 'pendingPlanName': pendingPlanName!,
  };
}

/// Request message for \[PartnerProcurementService.ApproveEntitlement\[\].
class ApproveEntitlementRequest {
  /// The resource name of the entitlement that was migrated, with the format
  /// `providers/{provider_id}/entitlements/{entitlement_id}`.
  ///
  /// Should only be sent when resources have been migrated from
  /// entitlement_migrated to the new entitlement. Optional.
  ///
  /// Optional.
  core.String? entitlementMigrated;

  /// Set of properties that should be associated with the entitlement.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.String>? properties;

  ApproveEntitlementRequest({this.entitlementMigrated, this.properties});

  ApproveEntitlementRequest.fromJson(core.Map json_)
    : this(
        entitlementMigrated: json_['entitlementMigrated'] as core.String?,
        properties: (json_['properties']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entitlementMigrated != null)
      'entitlementMigrated': entitlementMigrated!,
    if (properties != null) 'properties': properties!,
  };
}

/// A resource using (consuming) this entitlement.
class Consumer {
  /// A project name with format `projects/`.
  core.String? project;

  Consumer({this.project});

  Consumer.fromJson(core.Map json_)
    : this(project: json_['project'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (project != null) 'project': project!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a procured product of a customer.
class Entitlement {
  /// The resource name of the account that this entitlement is based on, if
  /// any.
  ///
  /// Output only.
  core.String? account;

  /// The reason the entitlement was cancelled.
  ///
  /// If this entitlement wasn't cancelled, this field is empty. Possible values
  /// include "unknown", "expired", "user-cancelled", "account-closed",
  /// "billing-disabled" (if the customer has manually disabled billing to their
  /// resources), "user-aborted", and "migrated" (if the entitlement has
  /// migrated across products). Values of this field are subject to change, and
  /// we recommend that you don't build your technical integration to rely on
  /// these fields.
  ///
  /// Output only.
  core.String? cancellationReason;

  /// The resources using this entitlement, if applicable.
  ///
  /// Output only.
  core.List<Consumer>? consumers;

  /// The creation timestamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The entitlement benefit IDs associated with the purchase.
  ///
  /// Output only.
  core.List<core.String>? entitlementBenefitIds;

  /// The custom properties that were collected from the user to create this
  /// entitlement.
  ///
  /// Output only.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.Map<core.String, core.Object?>? inputProperties;

  /// Provider-supplied message that is displayed to the end user.
  ///
  /// Currently this is used to communicate progress and ETA for provisioning.
  /// This field can be updated only when a user is waiting for an action from
  /// the provider, i.e. entitlement state is
  /// EntitlementState.ENTITLEMENT_ACTIVATION_REQUESTED or
  /// EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL. This field is
  /// cleared automatically when the entitlement state changes.
  core.String? messageToUser;

  /// The resource name of the entitlement.
  ///
  /// Entitlement names have the form
  /// `providers/{provider_id}/entitlements/{entitlement_id}`.
  ///
  /// Output only.
  core.String? name;

  /// The end time of the new offer, determined from the offer's specified end
  /// date.
  ///
  /// If the offer des not have a specified end date then this field is not set.
  /// This field is populated even if the entitlement isn't active yet. If
  /// there's no upcoming offer, the field is empty. * If the entitlement is in
  /// the state ENTITLEMENT_ACTIVATION_REQUESTED, ENTITLEMENT_ACTIVE, or
  /// ENTITLEMENT_PENDING_CANCELLATION, then this field is empty. * If the
  /// entitlement is in the state ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE, and the upcoming offer has a specified
  /// end date, then this field is populated with the expected end time of the
  /// upcoming offer, in the future. Otherwise, this field is empty. * If the
  /// entitlement is in the state ENTITLEMENT_CANCELLED, then this field is
  /// empty.
  ///
  /// Output only.
  core.String? newOfferEndTime;

  /// The timestamp when the new offer becomes effective.
  ///
  /// This field is populated even if the entitlement isn't active yet. If
  /// there's no upcoming offer, the field is empty. * If the entitlement is in
  /// the state ENTITLEMENT_ACTIVATION_REQUESTED, this field isn't populated
  /// when the entitlement isn't yet approved. After the entitlement is
  /// approved, this field is populated with the effective time of the upcoming
  /// offer. * If the entitlement is in the state ENTITLEMENT_ACTIVE or
  /// ENTITLEMENT_PENDING_CANCELLATION, this field isn't populated. * If the
  /// entitlement is in the state ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL, this
  /// field isn't populated, because the entitlement change is waiting on
  /// approval. * If the entitlement is in the state
  /// ENTITLEMENT_PENDING_PLAN_CHANGE, this field is populated with the expected
  /// effective time of the upcoming offer, which is in the future. * If the
  /// entitlement is in the state ENTITLEMENT_CANCELLED, then this field is
  /// empty.
  ///
  /// Output only.
  core.String? newOfferStartTime;

  /// Upon a pending plan change, the name of the offer that the entitlement is
  /// switching to.
  ///
  /// Only exists if the pending plan change is moving to an offer. This field
  /// isn't populated for entitlements which aren't active yet. Format:
  /// 'projects/{project}/services/{service}/privateOffers/{offer}' OR
  /// 'projects/{project}/services/{service}/standardOffers/{offer}', depending
  /// on whether the offer is private or public. The {service} in the name is
  /// the listing service of the offer. It could be either the product service
  /// that the offer is referencing, or a generic private offer parent service.
  /// We recommend that you don't build your integration to rely on the meaning
  /// of this {service} part. * If the entitlement is in the state
  /// ENTITLEMENT_ACTIVATION_REQUESTED, ENTITLEMENT_ACTIVE or
  /// ENTITLEMENT_PENDING_CANCELLATION, then this field is empty. * If the
  /// entitlement is in the state ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE, then this field is populated with the
  /// upcoming offer. * If the entitlement is in the state
  /// ENTITLEMENT_CANCELLED, then this is empty.
  ///
  /// Output only.
  core.String? newPendingOffer;

  /// The duration of the new offer, in ISO 8601 duration format.
  ///
  /// This field is populated for pending offer changes. It isn't populated for
  /// entitlements which aren't active yet. If the offer has a specified end
  /// date instead of a duration, this field is empty. * If the entitlement is
  /// in the state ENTITLEMENT_ACTIVATION_REQUESTED, ENTITLEMENT_ACTIVE, or
  /// ENTITLEMENT_PENDING_CANCELLATION, this field is empty. * If the
  /// entitlement is in the state ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE, and the upcoming offer doesn't have a
  /// specified end date, then this field is populated with the duration of the
  /// upcoming offer. Otherwise, this field is empty. * If the entitlement is in
  /// the state ENTITLEMENT_CANCELLED, then this field is empty.
  ///
  /// Output only.
  core.String? newPendingOfferDuration;

  /// The identifier of the pending new plan.
  ///
  /// Required if the product has plans and the entitlement has a pending plan
  /// change.
  ///
  /// Output only.
  core.String? newPendingPlan;

  /// The name of the offer that was procured.
  ///
  /// Field is empty if order wasn't made using an offer. Format:
  /// 'projects/{project}/services/{service}/privateOffers/{offer}' OR
  /// 'projects/{project}/services/{service}/standardOffers/{offer}', depending
  /// on whether the offer is private or public. The {service} in the name is
  /// the listing service of the offer. It could be either the product service
  /// that the offer is referencing, or a generic private offer parent service.
  /// We recommend that you don't build your integration to rely on the meaning
  /// of this {service} part. * If the entitlement is in the state
  /// ENTITLEMENT_ACTIVATION_REQUESTED, this field is populated with the
  /// upcoming offer. * If the entitlement is in the state ENTITLEMENT_ACTIVE,
  /// ENTITLEMENT_PENDING_CANCELLATION, ENTITLEMENT_PENDING_PLAN_CHANGE, or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL, this field is populated with the
  /// current offer. * If the entitlement is in the state ENTITLEMENT_CANCELLED,
  /// then this field is populated with the latest offer that the order was
  /// associated with.
  ///
  /// Output only.
  core.String? offer;

  /// The offer duration of the current offer, in ISO 8601 duration format.
  ///
  /// This is empty if the entitlement wasn't made using an offer, or if the
  /// offer has a specified end date instead of a duration. * If the entitlement
  /// is in the state ENTITLEMENT_ACTIVATION_REQUESTED, and the upcoming offer
  /// doesn't have a specified end date, then this field is populated with the
  /// duration of the upcoming offer. Otherwise, this field is empty. * If the
  /// entitlement is in the state ENTITLEMENT_ACTIVE,
  /// ENTITLEMENT_PENDING_CANCELLATION, ENTITLEMENT_PENDING_PLAN_CHANGE, or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL, and the current offer doesn't
  /// have a specified end date, then this field contains the duration of the
  /// current offer. Otherwise, this field is empty. * If the entitlement is in
  /// the state ENTITLEMENT_CANCELLED, and the offer doesn't have a specified
  /// end date, then this field is populated with the duration of the latest
  /// offer that the order was associated with. Otherwise, this field is empty.
  ///
  /// Output only.
  core.String? offerDuration;

  /// End time for the current term of the Offer associated with this
  /// entitlement.
  ///
  /// The value of this field can change naturally over time due to
  /// auto-renewal, even if the offer isn't changed. * If the entitlement is in
  /// the state ENTITLEMENT_ACTIVATION_REQUESTED, then: * If the entitlement
  /// isn't approved yet approved, and the offer has a specified end date, then
  /// this field is populated with the expected end time of the upcoming offer,
  /// in the future. Otherwise, this field is empty. * If the entitlement is
  /// approved, then this field is populated with the expected end time of the
  /// upcoming offer, in the future. This means that this field and the field
  /// offer_duration can both exist. * If the entitlement is in the state
  /// ENTITLEMENT_ACTIVE or ENTITLEMENT_PENDING_CANCELLATION, then this field is
  /// populated with the expected end time of the current offer, in the future.
  /// This field's value is set regardless of whether the offer has a specific
  /// end date or a duration. This means that this field and the field
  /// offer_duration can both exist. * If the entitlement is in the state
  /// ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL or
  /// ENTITLEMENT_PENDING_PLAN_CHANGE: * If the entitlement's pricing model is
  /// usage based and the associated offer is a private offer whose term has
  /// ended, then this field reflects the ACTUAL end time of the entitlement's
  /// associated offer (in the past), even though the entitlement associated
  /// with this private offer does not terminate at the end of that private
  /// offer's term. * Otherwise, this is the expected end date of the current
  /// offer, in the future. * If the entitlement is in the state
  /// ENTITLEMENT_CANCELLED, then this field is populated with the end time, in
  /// the past, of the latest offer that the order was associated with. If the
  /// entitlement was cancelled before any offer started, then this field is
  /// empty.
  ///
  /// Output only.
  core.String? offerEndTime;

  /// The order ID of this entitlement, without any `orders/` resource name
  /// prefix.
  ///
  /// Output only.
  core.String? orderId;

  /// The identifier of the plan that was procured.
  ///
  /// Required if the product has plans.
  ///
  /// Output only.
  core.String? plan;

  /// The identifier of the entity that was purchased.
  ///
  /// This may actually represent a product, quote, or offer. We strongly
  /// recommend that you use the following more explicit fields:
  /// productExternalName, quoteExternalName, or offer.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? product;

  /// The identifier of the product that was procured.
  ///
  /// Output only.
  core.String? productExternalName;

  /// The identifier of the service provider that this entitlement was created
  /// against.
  ///
  /// Each service provider is assigned a unique provider value when they
  /// onboard with Cloud Commerce platform.
  ///
  /// Output only.
  core.String? provider;

  /// The identifier of the quote that was used to procure.
  ///
  /// Empty if the order is not purchased using a quote.
  ///
  /// Output only.
  core.String? quoteExternalName;

  /// The state of the entitlement.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENTITLEMENT_STATE_UNSPECIFIED" : Default state of the entitlement. It's
  /// only set to this value when the entitlement is first created and has not
  /// been initialized.
  /// - "ENTITLEMENT_ACTIVATION_REQUESTED" : Indicates that the entitlement has
  /// been created, but it hasn't yet become active. The entitlement remains in
  /// this state until it becomes active. If the entitlement requires provider
  /// approval, a notification is sent to the provider for the activation
  /// approval. If the provider doesn't approve, the entitlement is removed. If
  /// approved, the entitlement transitions to the
  /// EntitlementState.ENTITLEMENT_ACTIVE state after either a short processing
  /// delay or, if applicable, at the scheduled start time of the purchased
  /// offer. Plan changes aren't allowed in this state. Instead, customers are
  /// expected to cancel the corresponding order and place a new order.
  /// - "ENTITLEMENT_ACTIVE" : Indicates that the entitlement is active. The
  /// procured item is now usable and any associated billing events will start
  /// occurring. Entitlements in this state WILL renew. The analogous state for
  /// an unexpired but non-renewing entitlement is
  /// ENTITLEMENT_PENDING_CANCELLATION. In this state, the customer can decide
  /// to cancel the entitlement, which would change the state to
  /// EntitlementState.ENTITLEMENT_PENDING_CANCELLATION, and then
  /// EntitlementState.ENTITLEMENT_CANCELLED. The user can also request a change
  /// of plan, which will transition the state to
  /// EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE, and then back to
  /// EntitlementState.ENTITLEMENT_ACTIVE.
  /// - "ENTITLEMENT_PENDING_CANCELLATION" : Indicates that the entitlement will
  /// expire at the end of its term. This could mean the customer has elected
  /// not to renew this entitlement or the customer elected to cancel an
  /// entitlement that only expires at term end. The entitlement typically stays
  /// in this state if the entitlement/plan allows use of the underlying
  /// resource until the end of the current billing cycle. Once the billing
  /// cycle completes, the resource will transition to
  /// EntitlementState.ENTITLEMENT_CANCELLED state. The resource cannot be
  /// modified during this state.
  /// - "ENTITLEMENT_CANCELLED" : Indicates that the entitlement was cancelled.
  /// The entitlement can now be deleted.
  /// - "ENTITLEMENT_PENDING_PLAN_CHANGE" : Indicates that the entitlement is
  /// currently active, but there is a pending plan change that is requested by
  /// the customer. The entitlement typically stays in this state, if the
  /// entitlement/plan requires the completion of the current billing cycle
  /// before the plan can be changed. Once the billing cycle completes, the
  /// resource will transition to EntitlementState.ENTITLEMENT_ACTIVE, with its
  /// plan changed.
  /// - "ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL" : Indicates that the
  /// entitlement is currently active, but there is a plan change request
  /// pending provider approval. If the provider approves the plan change, then
  /// the entitlement will transition either to
  /// EntitlementState.ENTITLEMENT_ACTIVE or
  /// EntitlementState.ENTITLEMENT_PENDING_PLAN_CHANGE depending on whether
  /// current plan requires that the billing cycle completes. If the provider
  /// rejects the plan change, then the pending plan change request is removed
  /// and the entitlement stays in EntitlementState.ENTITLEMENT_ACTIVE state
  /// with the old plan.
  /// - "ENTITLEMENT_SUSPENDED" : Indicates that the entitlement is suspended
  /// either by Google or provider request. This can be triggered for various
  /// external reasons (e.g. expiration of credit card on the billing account,
  /// violation of terms-of-service of the provider etc.). As such, any
  /// remediating action needs to be taken externally, before the entitlement
  /// can be activated. This is not yet supported.
  core.String? state;

  /// End time for the subscription corresponding to this entitlement.
  ///
  /// Output only.
  core.String? subscriptionEndTime;

  /// The last update timestamp.
  ///
  /// Output only.
  core.String? updateTime;

  /// The consumerId to use when reporting usage through the Service Control
  /// API.
  ///
  /// See the consumerId field at
  /// [Reporting Metrics](https://cloud.google.com/service-control/reporting-metrics)
  /// for more details. This field is present only if the product has
  /// usage-based billing configured.
  ///
  /// Output only.
  core.String? usageReportingId;

  Entitlement({
    this.account,
    this.cancellationReason,
    this.consumers,
    this.createTime,
    this.entitlementBenefitIds,
    this.inputProperties,
    this.messageToUser,
    this.name,
    this.newOfferEndTime,
    this.newOfferStartTime,
    this.newPendingOffer,
    this.newPendingOfferDuration,
    this.newPendingPlan,
    this.offer,
    this.offerDuration,
    this.offerEndTime,
    this.orderId,
    this.plan,
    this.product,
    this.productExternalName,
    this.provider,
    this.quoteExternalName,
    this.state,
    this.subscriptionEndTime,
    this.updateTime,
    this.usageReportingId,
  });

  Entitlement.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        cancellationReason: json_['cancellationReason'] as core.String?,
        consumers:
            (json_['consumers'] as core.List?)
                ?.map(
                  (value) => Consumer.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        entitlementBenefitIds:
            (json_['entitlementBenefitIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        inputProperties:
            json_.containsKey('inputProperties')
                ? json_['inputProperties']
                    as core.Map<core.String, core.dynamic>
                : null,
        messageToUser: json_['messageToUser'] as core.String?,
        name: json_['name'] as core.String?,
        newOfferEndTime: json_['newOfferEndTime'] as core.String?,
        newOfferStartTime: json_['newOfferStartTime'] as core.String?,
        newPendingOffer: json_['newPendingOffer'] as core.String?,
        newPendingOfferDuration:
            json_['newPendingOfferDuration'] as core.String?,
        newPendingPlan: json_['newPendingPlan'] as core.String?,
        offer: json_['offer'] as core.String?,
        offerDuration: json_['offerDuration'] as core.String?,
        offerEndTime: json_['offerEndTime'] as core.String?,
        orderId: json_['orderId'] as core.String?,
        plan: json_['plan'] as core.String?,
        product: json_['product'] as core.String?,
        productExternalName: json_['productExternalName'] as core.String?,
        provider: json_['provider'] as core.String?,
        quoteExternalName: json_['quoteExternalName'] as core.String?,
        state: json_['state'] as core.String?,
        subscriptionEndTime: json_['subscriptionEndTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        usageReportingId: json_['usageReportingId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (cancellationReason != null) 'cancellationReason': cancellationReason!,
    if (consumers != null) 'consumers': consumers!,
    if (createTime != null) 'createTime': createTime!,
    if (entitlementBenefitIds != null)
      'entitlementBenefitIds': entitlementBenefitIds!,
    if (inputProperties != null) 'inputProperties': inputProperties!,
    if (messageToUser != null) 'messageToUser': messageToUser!,
    if (name != null) 'name': name!,
    if (newOfferEndTime != null) 'newOfferEndTime': newOfferEndTime!,
    if (newOfferStartTime != null) 'newOfferStartTime': newOfferStartTime!,
    if (newPendingOffer != null) 'newPendingOffer': newPendingOffer!,
    if (newPendingOfferDuration != null)
      'newPendingOfferDuration': newPendingOfferDuration!,
    if (newPendingPlan != null) 'newPendingPlan': newPendingPlan!,
    if (offer != null) 'offer': offer!,
    if (offerDuration != null) 'offerDuration': offerDuration!,
    if (offerEndTime != null) 'offerEndTime': offerEndTime!,
    if (orderId != null) 'orderId': orderId!,
    if (plan != null) 'plan': plan!,
    if (product != null) 'product': product!,
    if (productExternalName != null)
      'productExternalName': productExternalName!,
    if (provider != null) 'provider': provider!,
    if (quoteExternalName != null) 'quoteExternalName': quoteExternalName!,
    if (state != null) 'state': state!,
    if (subscriptionEndTime != null)
      'subscriptionEndTime': subscriptionEndTime!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (usageReportingId != null) 'usageReportingId': usageReportingId!,
  };
}

/// Response message for \[PartnerProcurementService.ListAccounts\[\].
class ListAccountsResponse {
  /// The list of accounts in this response.
  core.List<Account>? accounts;

  /// The token for fetching the next page.
  core.String? nextPageToken;

  ListAccountsResponse({this.accounts, this.nextPageToken});

  ListAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts:
            (json_['accounts'] as core.List?)
                ?.map(
                  (value) => Account.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accounts != null) 'accounts': accounts!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for PartnerProcurementService.ListEntitlements.
class ListEntitlementsResponse {
  /// The list of entitlements in this response.
  core.List<Entitlement>? entitlements;

  /// The token for fetching the next page.
  core.String? nextPageToken;

  ListEntitlementsResponse({this.entitlements, this.nextPageToken});

  ListEntitlementsResponse.fromJson(core.Map json_)
    : this(
        entitlements:
            (json_['entitlements'] as core.List?)
                ?.map(
                  (value) => Entitlement.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entitlements != null) 'entitlements': entitlements!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Request message for PartnerProcurementService.RejectAccount.
class RejectAccountRequest {
  /// The name of the approval being rejected.
  ///
  /// If absent and there is only one approval possible, that approval will be
  /// rejected. If absent and there are many approvals possible, the request
  /// will fail with a 400 Bad Request. Optional.
  core.String? approvalName;

  /// Free form text string explaining the rejection reason.
  ///
  /// Max allowed length: 256 bytes. Longer strings will be truncated.
  core.String? reason;

  RejectAccountRequest({this.approvalName, this.reason});

  RejectAccountRequest.fromJson(core.Map json_)
    : this(
        approvalName: json_['approvalName'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (approvalName != null) 'approvalName': approvalName!,
    if (reason != null) 'reason': reason!,
  };
}

/// Request message for PartnerProcurementService.RejectEntitlementPlanChange.
class RejectEntitlementPlanChangeRequest {
  /// Name of the pending plan that is being rejected.
  ///
  /// Required.
  core.String? pendingPlanName;

  /// Free form text string explaining the rejection reason.
  ///
  /// Max allowed length: 256 bytes. Longer strings will be truncated.
  core.String? reason;

  RejectEntitlementPlanChangeRequest({this.pendingPlanName, this.reason});

  RejectEntitlementPlanChangeRequest.fromJson(core.Map json_)
    : this(
        pendingPlanName: json_['pendingPlanName'] as core.String?,
        reason: json_['reason'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pendingPlanName != null) 'pendingPlanName': pendingPlanName!,
    if (reason != null) 'reason': reason!,
  };
}

/// Request message for PartnerProcurementService.RejectEntitlement.
class RejectEntitlementRequest {
  /// Free form text string explaining the rejection reason.
  ///
  /// Max allowed length: 256 bytes. Longer strings will be truncated.
  core.String? reason;

  RejectEntitlementRequest({this.reason});

  RejectEntitlementRequest.fromJson(core.Map json_)
    : this(reason: json_['reason'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (reason != null) 'reason': reason!,
  };
}

/// Request message for PartnerProcurementService.ResetAccount.
typedef ResetAccountRequest = $Empty;

/// Request message for ParterProcurementService.SuspendEntitlement.
///
/// This is not yet supported.
class SuspendEntitlementRequest {
  /// A free-form reason string, explaining the reason for suspension request.
  core.String? reason;

  SuspendEntitlementRequest({this.reason});

  SuspendEntitlementRequest.fromJson(core.Map json_)
    : this(reason: json_['reason'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (reason != null) 'reason': reason!,
  };
}
