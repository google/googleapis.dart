// Copyright 2015 Google LLC
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

/// Cloud Billing API - v1
///
/// Allows developers to manage billing for their Google Cloud Platform projects
/// programmatically.
///
/// For more information, see <https://cloud.google.com/billing/docs/apis>
///
/// Create an instance of [CloudbillingApi] to access these resources:
///
/// - [BillingAccountsResource]
///   - [BillingAccountsProjectsResource]
///   - [BillingAccountsSubAccountsResource]
/// - [MessageResource]
/// - [OrganizationsResource]
///   - [OrganizationsBillingAccountsResource]
/// - [ProjectsResource]
/// - [ServicesResource]
///   - [ServicesSkusResource]
/// - [TasksResource]
///   - [TasksPushNotificationConfigsResource]
/// - [V1Resource]
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

/// Allows developers to manage billing for their Google Cloud Platform projects
/// programmatically.
class CloudbillingApi {
  /// View and manage your Google Cloud Platform billing accounts
  static const cloudBillingScope =
      'https://www.googleapis.com/auth/cloud-billing';

  /// View your Google Cloud Platform billing accounts
  static const cloudBillingReadonlyScope =
      'https://www.googleapis.com/auth/cloud-billing.readonly';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  BillingAccountsResource get billingAccounts =>
      BillingAccountsResource(_requester);
  MessageResource get message => MessageResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  ServicesResource get services => ServicesResource(_requester);
  TasksResource get tasks => TasksResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudbillingApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudbilling.googleapis.com/',
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

  BillingAccountsProjectsResource get projects =>
      BillingAccountsProjectsResource(_requester);
  BillingAccountsSubAccountsResource get subAccounts =>
      BillingAccountsSubAccountsResource(_requester);

  BillingAccountsResource(commons.ApiRequester client) : _requester = client;

  /// This method creates
  /// [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts).
  ///
  /// Google Cloud resellers should use the Channel Services APIs,
  /// [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create)
  /// and
  /// [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create).
  /// When creating a subaccount, the current authenticated user must have the
  /// `billing.accounts.update` IAM permission on the parent account, which is
  /// typically given to billing account
  /// [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).
  /// This method will return an error if the parent account has not been
  /// provisioned for subaccounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. The parent to create a billing account from. Format:
  /// - `billingAccounts/{billing_account_id}`, for example,
  /// `billingAccounts/012345-567890-ABCDEF`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> create(
    BillingAccount request, {
    core.String? parent,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'parent': ?parent == null ? null : [parent],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/billingAccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets information about a billing account.
  ///
  /// The current authenticated user must be a
  /// [viewer of the billing account](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the billing account to retrieve.
  /// For example, `billingAccounts/012345-567890-ABCDEF`.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> get(
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
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a billing account.
  ///
  /// The caller must have the `billing.accounts.getIamPolicy` permission on the
  /// account, which is often given to billing account
  /// [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the billing accounts that the current authenticated user has
  /// permission to
  /// [view](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [filter] - Options for how to filter the returned billing accounts. This
  /// only supports filtering for
  /// [subaccounts](https://cloud.google.com/billing/docs/concepts) under a
  /// single provided parent billing account. (for example,
  /// `master_billing_account=billingAccounts/012345-678901-ABCDEF`). Boolean
  /// algebra and other fields are not currently supported.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the default.
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a `next_page_token` value returned from a previous
  /// `ListBillingAccounts` call. If unspecified, the first page of results is
  /// returned.
  ///
  /// [parent] - Optional. The parent resource to list billing accounts from.
  /// Format: - `organizations/{organization_id}`, for example,
  /// `organizations/12345678` - `billingAccounts/{billing_account_id}`, for
  /// example, `billingAccounts/012345-567890-ABCDEF`
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBillingAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBillingAccountsResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'parent': ?parent == null ? null : [parent],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/billingAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBillingAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Changes which parent organization a billing account belongs to.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the billing account to move. Must
  /// be of the form `billingAccounts/{billing_account_id}`. The specified
  /// billing account cannot be a subaccount, since a subaccount always belongs
  /// to the same organization as its parent account.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> move(
    MoveBillingAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':move';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a billing account's fields.
  ///
  /// Currently the only field that can be edited is `display_name`. The current
  /// authenticated user must have the `billing.accounts.update` IAM permission,
  /// which is typically given to the
  /// [administrator](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// of the billing account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the billing account resource to be updated.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applied to the resource. Only
  /// "display_name" is currently supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> patch(
    BillingAccount request,
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
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy for a billing account.
  ///
  /// Replaces any existing policy. The caller must have the
  /// `billing.accounts.setIamPolicy` permission on the account, which is often
  /// given to billing account
  /// [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Tests the access control policy for a billing account.
  ///
  /// This method takes the resource and a set of permissions as input and
  /// returns the subset of the input permissions that the caller is allowed for
  /// that resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsProjectsResource {
  final commons.ApiRequester _requester;

  BillingAccountsProjectsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the projects associated with a billing account.
  ///
  /// The current authenticated user must have the
  /// `billing.resourceAssociations.list` IAM permission, which is often given
  /// to billing account
  /// [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the billing account associated
  /// with the projects that you want to list. For example,
  /// `billingAccounts/012345-567890-ABCDEF`.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the default.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// should be a `next_page_token` value returned from a previous
  /// `ListProjectBillingInfo` call. If unspecified, the first page of results
  /// is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProjectBillingInfoResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProjectBillingInfoResponse> list(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProjectBillingInfoResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BillingAccountsSubAccountsResource {
  final commons.ApiRequester _requester;

  BillingAccountsSubAccountsResource(commons.ApiRequester client)
    : _requester = client;

  /// This method creates
  /// [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts).
  ///
  /// Google Cloud resellers should use the Channel Services APIs,
  /// [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create)
  /// and
  /// [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create).
  /// When creating a subaccount, the current authenticated user must have the
  /// `billing.accounts.update` IAM permission on the parent account, which is
  /// typically given to billing account
  /// [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).
  /// This method will return an error if the parent account has not been
  /// provisioned for subaccounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. The parent to create a billing account from. Format:
  /// - `billingAccounts/{billing_account_id}`, for example,
  /// `billingAccounts/012345-567890-ABCDEF`
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> create(
    BillingAccount request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subAccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the billing accounts that the current authenticated user has
  /// permission to
  /// [view](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. The parent resource to list billing accounts from.
  /// Format: - `organizations/{organization_id}`, for example,
  /// `organizations/12345678` - `billingAccounts/{billing_account_id}`, for
  /// example, `billingAccounts/012345-567890-ABCDEF`
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [filter] - Options for how to filter the returned billing accounts. This
  /// only supports filtering for
  /// [subaccounts](https://cloud.google.com/billing/docs/concepts) under a
  /// single provided parent billing account. (for example,
  /// `master_billing_account=billingAccounts/012345-678901-ABCDEF`). Boolean
  /// algebra and other fields are not currently supported.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the default.
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a `next_page_token` value returned from a previous
  /// `ListBillingAccounts` call. If unspecified, the first page of results is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBillingAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBillingAccountsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/subAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBillingAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class MessageResource {
  final commons.ApiRequester _requester;

  MessageResource(commons.ApiRequester client) : _requester = client;

  /// Send a message to the agent.
  ///
  /// This is a blocking call that will return the task once it is completed, or
  /// a LRO if requested.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendMessageResponse> send(
    SendMessageRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/message:send';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendMessageResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// SendStreamingMessage is a streaming call that will return a stream of task
  /// update events until the Task is in an interrupted or terminal state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamResponse> stream(
    SendMessageRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/message:stream';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return StreamResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsBillingAccountsResource get billingAccounts =>
      OrganizationsBillingAccountsResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsBillingAccountsResource {
  final commons.ApiRequester _requester;

  OrganizationsBillingAccountsResource(commons.ApiRequester client)
    : _requester = client;

  /// This method creates
  /// [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts).
  ///
  /// Google Cloud resellers should use the Channel Services APIs,
  /// [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create)
  /// and
  /// [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create).
  /// When creating a subaccount, the current authenticated user must have the
  /// `billing.accounts.update` IAM permission on the parent account, which is
  /// typically given to billing account
  /// [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).
  /// This method will return an error if the parent account has not been
  /// provisioned for subaccounts.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. The parent to create a billing account from. Format:
  /// - `billingAccounts/{billing_account_id}`, for example,
  /// `billingAccounts/012345-567890-ABCDEF`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> create(
    BillingAccount request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/billingAccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the billing accounts that the current authenticated user has
  /// permission to
  /// [view](https://cloud.google.com/billing/docs/how-to/billing-access).
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. The parent resource to list billing accounts from.
  /// Format: - `organizations/{organization_id}`, for example,
  /// `organizations/12345678` - `billingAccounts/{billing_account_id}`, for
  /// example, `billingAccounts/012345-567890-ABCDEF`
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [filter] - Options for how to filter the returned billing accounts. This
  /// only supports filtering for
  /// [subaccounts](https://cloud.google.com/billing/docs/concepts) under a
  /// single provided parent billing account. (for example,
  /// `master_billing_account=billingAccounts/012345-678901-ABCDEF`). Boolean
  /// algebra and other fields are not currently supported.
  ///
  /// [pageSize] - Requested page size. The maximum page size is 100; this is
  /// also the default.
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a `next_page_token` value returned from a previous
  /// `ListBillingAccounts` call. If unspecified, the first page of results is
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBillingAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBillingAccountsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/billingAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBillingAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Changes which parent organization a billing account belongs to.
  ///
  /// Request parameters:
  ///
  /// [destinationParent] - Required. The resource name of the Organization to
  /// move the billing account under. Must be of the form
  /// `organizations/{organization_id}`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [name] - Required. The resource name of the billing account to move. Must
  /// be of the form `billingAccounts/{billing_account_id}`. The specified
  /// billing account cannot be a subaccount, since a subaccount always belongs
  /// to the same organization as its parent account.
  /// Value must have pattern `^billingAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> move(
    core.String destinationParent,
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$destinationParent') +
        '/' +
        core.Uri.encodeFull('$name') +
        ':move';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BillingAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the billing information for a project.
  ///
  /// The current authenticated user must have the
  /// `resourcemanager.projects.get` permission for the project, which can be
  /// granted by assigning the
  /// [Project Viewer](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// role.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project for which billing
  /// information is retrieved. For example, `projects/tokyo-rain-123`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectBillingInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectBillingInfo> getBillingInfo(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/billingInfo';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ProjectBillingInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets or updates the billing account associated with a project.
  ///
  /// You specify the new billing account by setting the `billing_account_name`
  /// in the `ProjectBillingInfo` resource to the resource name of a billing
  /// account. Associating a project with an open billing account enables
  /// billing on the project and allows charges for resource usage. If the
  /// project already had a billing account, this method changes the billing
  /// account used for resource usage charges. *Note:* Incurred charges that
  /// have not yet been reported in the transaction history of the Google Cloud
  /// Console might be billed to the new billing account, even if the charge
  /// occurred before the new billing account was assigned to the project. The
  /// current authenticated user must have ownership privileges for both the
  /// \[project\](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo
  /// ) and the
  /// [billing account](https://cloud.google.com/billing/docs/how-to/billing-access).
  /// You can disable billing on the project by setting the
  /// `billing_account_name` field to empty. This action disassociates the
  /// current billing account from the project. Any billable activity of your
  /// in-use services will stop, and your application could stop functioning as
  /// expected. Any unbilled charges to date will be billed to the previously
  /// associated account. The current authenticated user must be either an owner
  /// of the project or an owner of the billing account for the project. Note
  /// that associating a project with a *closed* billing account will have much
  /// the same effect as disabling billing on the project: any paid resources
  /// used by the project will be shut down. Thus, unless you wish to disable
  /// billing, you should always call this method with the name of an *open*
  /// billing account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// billing information that you want to update. For example,
  /// `projects/tokyo-rain-123`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProjectBillingInfo].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProjectBillingInfo> updateBillingInfo(
    ProjectBillingInfo request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/billingInfo';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ProjectBillingInfo.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ServicesResource {
  final commons.ApiRequester _requester;

  ServicesSkusResource get skus => ServicesSkusResource(_requester);

  ServicesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all public cloud services.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Requested page size. Defaults to 5000.
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a `next_page_token` value returned from a previous `ListServices` call.
  /// If unspecified, the first page of results is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ServicesSkusResource {
  final commons.ApiRequester _requester;

  ServicesSkusResource(commons.ApiRequester client) : _requester = client;

  /// Lists all publicly available SKUs for a given cloud service.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the service. Example:
  /// "services/6F81-5844-456A"
  /// Value must have pattern `^services/\[^/\]+$`.
  ///
  /// [currencyCode] - The ISO 4217 currency code for the pricing info in the
  /// response proto. Will use the conversion rate as of start_time. Optional.
  /// If not specified USD will be used.
  ///
  /// [endTime] - Optional exclusive end time of the time range for which the
  /// pricing versions will be returned. Timestamps in the future are not
  /// allowed. The time range has to be within a single calendar month in
  /// America/Los_Angeles timezone. Time range as a whole is optional. If not
  /// specified, the latest pricing will be returned (up to 12 hours old at
  /// most).
  ///
  /// [pageSize] - Requested page size. Defaults to 5000.
  ///
  /// [pageToken] - A token identifying a page of results to return. This should
  /// be a `next_page_token` value returned from a previous `ListSkus` call. If
  /// unspecified, the first page of results is returned.
  ///
  /// [startTime] - Optional inclusive start time of the time range for which
  /// the pricing versions will be returned. Timestamps in the future are not
  /// allowed. The time range has to be within a single calendar month in
  /// America/Los_Angeles timezone. Time range as a whole is optional. If not
  /// specified, the latest pricing will be returned (up to 12 hours old at
  /// most).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSkusResponse> list(
    core.String parent, {
    core.String? currencyCode,
    core.String? endTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'currencyCode': ?currencyCode == null ? null : [currencyCode],
      'endTime': ?endTime == null ? null : [endTime],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'startTime': ?startTime == null ? null : [startTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/skus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSkusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TasksResource {
  final commons.ApiRequester _requester;

  TasksPushNotificationConfigsResource get pushNotificationConfigs =>
      TasksPushNotificationConfigsResource(_requester);

  TasksResource(commons.ApiRequester client) : _requester = client;

  /// Cancel a task from the agent.
  ///
  /// If supported one should expect no more task updates for the task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the task to cancel. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> cancel(
    CancelTaskRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the current state of a task from the agent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the task. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [historyLength] - The number of most recent messages from the task's
  /// history to retrieve.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Task].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Task> get(
    core.String name, {
    core.int? historyLength,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'historyLength': ?historyLength == null ? null : ['${historyLength}'],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Task.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// TaskSubscription is a streaming call that will return a stream of task
  /// update events.
  ///
  /// This attaches the stream to an existing in process task. If the task is
  /// complete the stream will return the completed task (like GetTask) and
  /// close the stream.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the task to subscribe to. Format:
  /// tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StreamResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StreamResponse> subscribe(
    core.String name, {
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':subscribe';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StreamResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TasksPushNotificationConfigsResource {
  final commons.ApiRequester _requester;

  TasksPushNotificationConfigsResource(commons.ApiRequester client)
    : _requester = client;

  /// Set a push notification config for a task.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent task resource for this config. Format:
  /// tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs$`.
  ///
  /// [configId] - Required. The ID for the new config.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskPushNotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskPushNotificationConfig> create(
    TaskPushNotificationConfig request,
    core.String parent, {
    core.String? configId,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'configId': ?configId == null ? null : [configId],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TaskPushNotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Delete a push notification config for a task.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to delete. Format:
  /// tasks/{task_id}/pushNotificationConfigs/{config_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
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
    core.String name, {
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a push notification config for a task.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the config to retrieve. Format:
  /// tasks/{task_id}/pushNotificationConfigs/{config_id}
  /// Value must have pattern `^tasks/\[^/\]+/pushNotificationConfigs/\[^/\]+$`.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TaskPushNotificationConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TaskPushNotificationConfig> get(
    core.String name, {
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TaskPushNotificationConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get a list of push notifications configured for a task.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent task resource. Format: tasks/{task_id}
  /// Value must have pattern `^tasks/\[^/\]+$`.
  ///
  /// [pageSize] - For AIP-158 these fields are present. Usually not
  /// used/needed. The maximum number of configurations to return. If
  /// unspecified, all configs will be returned.
  ///
  /// [pageToken] - A page token received from a previous
  /// ListTaskPushNotificationConfigRequest call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListTaskPushNotificationConfigRequest` must match the call that provided
  /// the page token.
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTaskPushNotificationConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTaskPushNotificationConfigResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pushNotificationConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTaskPushNotificationConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// GetAgentCard returns the agent card for the agent.
  ///
  /// Request parameters:
  ///
  /// [tenant] - Optional tenant, provided as a path parameter. Experimental,
  /// might still change for 1.0 release.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AgentCard].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AgentCard> getCard({
    core.String? tenant,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'tenant': ?tenant == null ? null : [tenant],
      'fields': ?$fields == null ? null : [$fields],
    };

    const url_ = 'v1/card';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AgentCard.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class APIKeySecurityScheme {
  /// Description of this security scheme.
  core.String? description;

  /// Location of the API key, valid values are "query", "header", or "cookie"
  core.String? location;

  /// Name of the header, query or cookie parameter to be used.
  core.String? name;

  APIKeySecurityScheme({this.description, this.location, this.name});

  APIKeySecurityScheme.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        location: json_['location'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final location = this.location;
    final name = this.name;
    return {'description': ?description, 'location': ?location, 'name': ?name};
  }
}

/// Defines the A2A feature set supported by the agent
class AgentCapabilities {
  /// Extensions supported by this agent.
  core.List<AgentExtension>? extensions;

  /// If the agent can send push notifications to the clients webhook
  core.bool? pushNotifications;

  /// If the agent will support streaming responses
  core.bool? streaming;

  AgentCapabilities({this.extensions, this.pushNotifications, this.streaming});

  AgentCapabilities.fromJson(core.Map json_)
    : this(
        extensions: (json_['extensions'] as core.List?)
            ?.map(
              (value) => AgentExtension.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        pushNotifications: json_['pushNotifications'] as core.bool?,
        streaming: json_['streaming'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extensions = this.extensions;
    final pushNotifications = this.pushNotifications;
    final streaming = this.streaming;
    return {
      'extensions': ?extensions,
      'pushNotifications': ?pushNotifications,
      'streaming': ?streaming,
    };
  }
}

/// AgentCard conveys key information: - Overall details (version, name,
/// description, uses) - Skills; a set of actions/solutions the agent can
/// perform - Default modalities/content types supported by the agent.
///
/// - Authentication requirements Next ID: 19
class AgentCard {
  /// Announcement of additional supported transports.
  ///
  /// Client can use any of the supported transports.
  core.List<AgentInterface>? additionalInterfaces;

  /// A2A Capability set supported by the agent.
  AgentCapabilities? capabilities;

  /// protolint:enable REPEATED_FIELD_NAMES_PLURALIZED The set of interaction
  /// modes that the agent supports across all skills.
  ///
  /// This can be overridden per skill. Defined as mime types.
  core.List<core.String>? defaultInputModes;

  /// The mime types supported as outputs from this agent.
  core.List<core.String>? defaultOutputModes;

  /// A description of the agent's domain of action/solution space.
  ///
  /// Example: "Agent that helps users with recipes and cooking."
  core.String? description;

  /// A url to provide additional documentation about the agent.
  core.String? documentationUrl;

  /// An optional URL to an icon for the agent.
  core.String? iconUrl;

  /// A human readable name for the agent.
  ///
  /// Example: "Recipe Agent"
  core.String? name;

  /// The transport of the preferred endpoint.
  ///
  /// If empty, defaults to JSONRPC.
  core.String? preferredTransport;

  /// The version of the A2A protocol this agent supports.
  core.String? protocolVersion;

  /// The service provider of the agent.
  AgentProvider? provider;

  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security requirements
  /// for contacting the agent.
  ///
  /// This list can be seen as an OR of ANDs. Each object in the list describes
  /// one possible set of security requirements that must be present on a
  /// request. This allows specifying, for example, "callers must either use
  /// OAuth OR an API Key AND mTLS." Example: security { schemes { key: "oauth"
  /// value { list: \["read"\] } } } security { schemes { key: "api-key" }
  /// schemes { key: "mtls" } }
  core.List<Security>? security;

  /// The security scheme details used for authenticating with this agent.
  core.Map<core.String, SecurityScheme>? securitySchemes;

  /// JSON Web Signatures computed for this AgentCard.
  core.List<AgentCardSignature>? signatures;

  /// Skills represent a unit of ability an agent can perform.
  ///
  /// This may somewhat abstract but represents a more focused set of actions
  /// that the agent is highly likely to succeed at.
  core.List<AgentSkill>? skills;

  /// Whether the agent supports providing an extended agent card when the user
  /// is authenticated, i.e. is the card from .well-known different than the
  /// card from GetAgentCard.
  core.bool? supportsAuthenticatedExtendedCard;

  /// A URL to the address the agent is hosted at.
  ///
  /// This represents the preferred endpoint as declared by the agent.
  core.String? url;

  /// The version of the agent.
  ///
  /// Example: "1.0.0"
  core.String? version;

  AgentCard({
    this.additionalInterfaces,
    this.capabilities,
    this.defaultInputModes,
    this.defaultOutputModes,
    this.description,
    this.documentationUrl,
    this.iconUrl,
    this.name,
    this.preferredTransport,
    this.protocolVersion,
    this.provider,
    this.security,
    this.securitySchemes,
    this.signatures,
    this.skills,
    this.supportsAuthenticatedExtendedCard,
    this.url,
    this.version,
  });

  AgentCard.fromJson(core.Map json_)
    : this(
        additionalInterfaces: (json_['additionalInterfaces'] as core.List?)
            ?.map(
              (value) => AgentInterface.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        capabilities: json_.containsKey('capabilities')
            ? AgentCapabilities.fromJson(
                json_['capabilities'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        defaultInputModes: (json_['defaultInputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        defaultOutputModes: (json_['defaultOutputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        description: json_['description'] as core.String?,
        documentationUrl: json_['documentationUrl'] as core.String?,
        iconUrl: json_['iconUrl'] as core.String?,
        name: json_['name'] as core.String?,
        preferredTransport: json_['preferredTransport'] as core.String?,
        protocolVersion: json_['protocolVersion'] as core.String?,
        provider: json_.containsKey('provider')
            ? AgentProvider.fromJson(
                json_['provider'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        security: (json_['security'] as core.List?)
            ?.map(
              (value) => Security.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        securitySchemes:
            (json_['securitySchemes'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    SecurityScheme.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
        signatures: (json_['signatures'] as core.List?)
            ?.map(
              (value) => AgentCardSignature.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        skills: (json_['skills'] as core.List?)
            ?.map(
              (value) => AgentSkill.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        supportsAuthenticatedExtendedCard:
            json_['supportsAuthenticatedExtendedCard'] as core.bool?,
        url: json_['url'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalInterfaces = this.additionalInterfaces;
    final capabilities = this.capabilities;
    final defaultInputModes = this.defaultInputModes;
    final defaultOutputModes = this.defaultOutputModes;
    final description = this.description;
    final documentationUrl = this.documentationUrl;
    final iconUrl = this.iconUrl;
    final name = this.name;
    final preferredTransport = this.preferredTransport;
    final protocolVersion = this.protocolVersion;
    final provider = this.provider;
    final security = this.security;
    final securitySchemes = this.securitySchemes;
    final signatures = this.signatures;
    final skills = this.skills;
    final supportsAuthenticatedExtendedCard =
        this.supportsAuthenticatedExtendedCard;
    final url = this.url;
    final version = this.version;
    return {
      'additionalInterfaces': ?additionalInterfaces,
      'capabilities': ?capabilities,
      'defaultInputModes': ?defaultInputModes,
      'defaultOutputModes': ?defaultOutputModes,
      'description': ?description,
      'documentationUrl': ?documentationUrl,
      'iconUrl': ?iconUrl,
      'name': ?name,
      'preferredTransport': ?preferredTransport,
      'protocolVersion': ?protocolVersion,
      'provider': ?provider,
      'security': ?security,
      'securitySchemes': ?securitySchemes,
      'signatures': ?signatures,
      'skills': ?skills,
      'supportsAuthenticatedExtendedCard': ?supportsAuthenticatedExtendedCard,
      'url': ?url,
      'version': ?version,
    };
  }
}

/// AgentCardSignature represents a JWS signature of an AgentCard.
///
/// This follows the JSON format of an RFC 7515 JSON Web Signature (JWS).
class AgentCardSignature {
  /// The unprotected JWS header values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? header;

  /// The protected JWS header for the signature.
  ///
  /// This is always a base64url-encoded JSON object. Required.
  ///
  /// Required.
  core.String? protected;

  /// The computed signature, base64url-encoded.
  ///
  /// Required.
  ///
  /// Required.
  core.String? signature;

  AgentCardSignature({this.header, this.protected, this.signature});

  AgentCardSignature.fromJson(core.Map json_)
    : this(
        header: json_.containsKey('header')
            ? json_['header'] as core.Map<core.String, core.dynamic>
            : null,
        protected: json_['protected'] as core.String?,
        signature: json_['signature'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final header = this.header;
    final protected = this.protected;
    final signature = this.signature;
    return {
      'header': ?header,
      'protected': ?protected,
      'signature': ?signature,
    };
  }
}

/// A declaration of an extension supported by an Agent.
class AgentExtension {
  /// A description of how this agent uses this extension.
  ///
  /// Example: "Google OAuth 2.0 authentication"
  core.String? description;

  /// Optional configuration for the extension.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Whether the client must follow specific requirements of the extension.
  ///
  /// Example: false
  core.bool? required;

  /// The URI of the extension.
  ///
  /// Example: "https://developers.google.com/identity/protocols/oauth2"
  core.String? uri;

  AgentExtension({this.description, this.params, this.required, this.uri});

  AgentExtension.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        params: json_.containsKey('params')
            ? json_['params'] as core.Map<core.String, core.dynamic>
            : null,
        required: json_['required'] as core.bool?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final params = this.params;
    final required = this.required;
    final uri = this.uri;
    return {
      'description': ?description,
      'params': ?params,
      'required': ?required,
      'uri': ?uri,
    };
  }
}

/// Defines additional transport information for the agent.
class AgentInterface {
  /// Tenant to be set in the request when calling the agent.
  ///
  /// Experimental, might still change for 1.0 release.
  core.String? tenant;

  /// The transport supported this url.
  ///
  /// This is an open form string, to be easily extended for many transport
  /// protocols. The core ones officially supported are JSONRPC, GRPC and
  /// HTTP+JSON.
  core.String? transport;

  /// The url this interface is found at.
  core.String? url;

  AgentInterface({this.tenant, this.transport, this.url});

  AgentInterface.fromJson(core.Map json_)
    : this(
        tenant: json_['tenant'] as core.String?,
        transport: json_['transport'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tenant = this.tenant;
    final transport = this.transport;
    final url = this.url;
    return {'tenant': ?tenant, 'transport': ?transport, 'url': ?url};
  }
}

/// Represents information about the service provider of an agent.
class AgentProvider {
  /// The providers organization name Example: "Google"
  core.String? organization;

  /// The providers reference url Example: "https://ai.google.dev"
  core.String? url;

  AgentProvider({this.organization, this.url});

  AgentProvider.fromJson(core.Map json_)
    : this(
        organization: json_['organization'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final organization = this.organization;
    final url = this.url;
    return {'organization': ?organization, 'url': ?url};
  }
}

/// AgentSkill represents a unit of action/solution that the agent can perform.
///
/// One can think of this as a type of highly reliable solution that an agent
/// can be tasked to provide. Agents have the autonomy to choose how and when to
/// use specific skills, but clients should have confidence that if the skill is
/// defined that unit of action can be reliably performed.
class AgentSkill {
  /// A human (or llm) readable description of the skill details and behaviors.
  core.String? description;

  /// A set of example queries that this skill is designed to address.
  ///
  /// These examples should help the caller to understand how to craft requests
  /// to the agent to achieve specific goals. Example: \["I need a recipe for
  /// bread"\]
  core.List<core.String>? examples;

  /// Unique identifier of the skill within this agent.
  core.String? id;

  /// Possible input modalities supported.
  core.List<core.String>? inputModes;

  /// A human readable name for the skill.
  core.String? name;

  /// Possible output modalities produced
  core.List<core.String>? outputModes;

  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Security schemes
  /// necessary for the agent to leverage this skill.
  ///
  /// As in the overall AgentCard.security, this list represents a logical OR of
  /// security requirement objects. Each object is a set of security schemes
  /// that must be used together (a logical AND). protolint:enable
  /// REPEATED_FIELD_NAMES_PLURALIZED
  core.List<Security>? security;

  /// A set of tags for the skill to enhance categorization/utilization.
  ///
  /// Example: \["cooking", "customer support", "billing"\]
  core.List<core.String>? tags;

  AgentSkill({
    this.description,
    this.examples,
    this.id,
    this.inputModes,
    this.name,
    this.outputModes,
    this.security,
    this.tags,
  });

  AgentSkill.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        examples: (json_['examples'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        id: json_['id'] as core.String?,
        inputModes: (json_['inputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        name: json_['name'] as core.String?,
        outputModes: (json_['outputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        security: (json_['security'] as core.List?)
            ?.map(
              (value) => Security.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        tags: (json_['tags'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final examples = this.examples;
    final id = this.id;
    final inputModes = this.inputModes;
    final name = this.name;
    final outputModes = this.outputModes;
    final security = this.security;
    final tags = this.tags;
    return {
      'description': ?description,
      'examples': ?examples,
      'id': ?id,
      'inputModes': ?inputModes,
      'name': ?name,
      'outputModes': ?outputModes,
      'security': ?security,
      'tags': ?tags,
    };
  }
}

/// Represents the aggregation level and interval for pricing of a single SKU.
class AggregationInfo {
  /// The number of intervals to aggregate over.
  ///
  /// Example: If aggregation_level is "DAILY" and aggregation_count is 14,
  /// aggregation will be over 14 days.
  core.int? aggregationCount;

  ///
  /// Possible string values are:
  /// - "AGGREGATION_INTERVAL_UNSPECIFIED"
  /// - "DAILY"
  /// - "MONTHLY"
  core.String? aggregationInterval;

  ///
  /// Possible string values are:
  /// - "AGGREGATION_LEVEL_UNSPECIFIED"
  /// - "ACCOUNT"
  /// - "PROJECT"
  core.String? aggregationLevel;

  AggregationInfo({
    this.aggregationCount,
    this.aggregationInterval,
    this.aggregationLevel,
  });

  AggregationInfo.fromJson(core.Map json_)
    : this(
        aggregationCount: json_['aggregationCount'] as core.int?,
        aggregationInterval: json_['aggregationInterval'] as core.String?,
        aggregationLevel: json_['aggregationLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregationCount = this.aggregationCount;
    final aggregationInterval = this.aggregationInterval;
    final aggregationLevel = this.aggregationLevel;
    return {
      'aggregationCount': ?aggregationCount,
      'aggregationInterval': ?aggregationInterval,
      'aggregationLevel': ?aggregationLevel,
    };
  }
}

/// Artifacts are the container for task completed results.
///
/// These are similar to Messages but are intended to be the product of a task,
/// as opposed to point-to-point communication.
class Artifact {
  /// Unique identifier (e.g. UUID) for the artifact.
  ///
  /// It must be at least unique within a task.
  core.String? artifactId;

  /// A human readable description of the artifact, optional.
  core.String? description;

  /// The URIs of extensions that are present or contributed to this Artifact.
  core.List<core.String>? extensions;

  /// Optional metadata included with the artifact.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// A human readable name for the artifact.
  core.String? name;

  /// The content of the artifact.
  core.List<Part>? parts;

  Artifact({
    this.artifactId,
    this.description,
    this.extensions,
    this.metadata,
    this.name,
    this.parts,
  });

  Artifact.fromJson(core.Map json_)
    : this(
        artifactId: json_['artifactId'] as core.String?,
        description: json_['description'] as core.String?,
        extensions: (json_['extensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        parts: (json_['parts'] as core.List?)
            ?.map(
              (value) =>
                  Part.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactId = this.artifactId;
    final description = this.description;
    final extensions = this.extensions;
    final metadata = this.metadata;
    final name = this.name;
    final parts = this.parts;
    return {
      'artifactId': ?artifactId,
      'description': ?description,
      'extensions': ?extensions,
      'metadata': ?metadata,
      'name': ?name,
      'parts': ?parts,
    };
  }
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Defines authentication details, used for push notifications.
typedef AuthenticationInfo = $AuthenticationInfo;

class AuthorizationCodeOAuthFlow {
  /// The authorization URL to be used for this flow.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS
  core.String? authorizationUrl;

  /// The URL to be used for obtaining refresh tokens.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS.
  core.String? refreshUrl;

  /// The available scopes for the OAuth2 security scheme.
  ///
  /// A map between the scope name and a short description for it. The map MAY
  /// be empty.
  core.Map<core.String, core.String>? scopes;

  /// The token URL to be used for this flow.
  ///
  /// This MUST be in the form of a URL. The OAuth2 standard requires the use of
  /// TLS.
  core.String? tokenUrl;

  AuthorizationCodeOAuthFlow({
    this.authorizationUrl,
    this.refreshUrl,
    this.scopes,
    this.tokenUrl,
  });

  AuthorizationCodeOAuthFlow.fromJson(core.Map json_)
    : this(
        authorizationUrl: json_['authorizationUrl'] as core.String?,
        refreshUrl: json_['refreshUrl'] as core.String?,
        scopes: (json_['scopes'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        tokenUrl: json_['tokenUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationUrl = this.authorizationUrl;
    final refreshUrl = this.refreshUrl;
    final scopes = this.scopes;
    final tokenUrl = this.tokenUrl;
    return {
      'authorizationUrl': ?authorizationUrl,
      'refreshUrl': ?refreshUrl,
      'scopes': ?scopes,
      'tokenUrl': ?tokenUrl,
    };
  }
}

/// A billing account in the
/// [Google Cloud Console](https://console.cloud.google.com/).
///
/// You can assign a billing account to one or more projects.
class BillingAccount {
  /// The currency in which the billing account is billed and charged,
  /// represented as an ISO 4217 code such as `USD`.
  ///
  /// Billing account currency is determined at the time of billing account
  /// creation and cannot be updated subsequently, so this field should not be
  /// set on update requests. In addition, a subaccount always matches the
  /// currency of its parent billing account, so this field should not be set on
  /// subaccount creation requests. Clients can read this field to determine the
  /// currency of an existing billing account.
  ///
  /// Optional.
  core.String? currencyCode;

  /// The display name given to the billing account, such as `My Billing
  /// Account`.
  ///
  /// This name is displayed in the Google Cloud Console.
  core.String? displayName;

  /// If this account is a
  /// [subaccount](https://cloud.google.com/billing/docs/concepts), then this
  /// will be the resource name of the parent billing account that it is being
  /// resold through.
  ///
  /// Otherwise this will be empty.
  core.String? masterBillingAccount;

  /// The resource name of the billing account.
  ///
  /// The resource name has the form `billingAccounts/{billing_account_id}`. For
  /// example, `billingAccounts/012345-567890-ABCDEF` would be the resource name
  /// for billing account `012345-567890-ABCDEF`.
  ///
  /// Output only.
  core.String? name;

  /// True if the billing account is open, and will therefore be charged for any
  /// usage on associated projects.
  ///
  /// False if the billing account is closed, and therefore projects associated
  /// with it are unable to use paid services.
  ///
  /// Output only.
  core.bool? open;

  /// The billing account's parent resource identifier.
  ///
  /// Use the `MoveBillingAccount` method to update the account's parent
  /// resource if it is a organization. Format: -
  /// `organizations/{organization_id}`, for example, `organizations/12345678` -
  /// `billingAccounts/{billing_account_id}`, for example,
  /// `billingAccounts/012345-567890-ABCDEF`
  ///
  /// Output only.
  core.String? parent;

  BillingAccount({
    this.currencyCode,
    this.displayName,
    this.masterBillingAccount,
    this.name,
    this.open,
    this.parent,
  });

  BillingAccount.fromJson(core.Map json_)
    : this(
        currencyCode: json_['currencyCode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        masterBillingAccount: json_['masterBillingAccount'] as core.String?,
        name: json_['name'] as core.String?,
        open: json_['open'] as core.bool?,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currencyCode = this.currencyCode;
    final displayName = this.displayName;
    final masterBillingAccount = this.masterBillingAccount;
    final name = this.name;
    final open = this.open;
    final parent = this.parent;
    return {
      'currencyCode': ?currencyCode,
      'displayName': ?displayName,
      'masterBillingAccount': ?masterBillingAccount,
      'name': ?name,
      'open': ?open,
      'parent': ?parent,
    };
  }
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
    : this(
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

typedef CancelTaskRequest = $CancelTaskRequest;

/// Represents the category hierarchy of a SKU.
class Category {
  /// The type of product the SKU refers to.
  ///
  /// Example: "Compute", "Storage", "Network", "ApplicationServices" etc.
  core.String? resourceFamily;

  /// A group classification for related SKUs.
  ///
  /// Example: "RAM", "GPU", "Prediction", "Ops", "GoogleEgress" etc.
  core.String? resourceGroup;

  /// The display name of the service this SKU belongs to.
  core.String? serviceDisplayName;

  /// Represents how the SKU is consumed.
  ///
  /// Example: "OnDemand", "Preemptible", "Commit1Mo", "Commit1Yr" etc.
  core.String? usageType;

  Category({
    this.resourceFamily,
    this.resourceGroup,
    this.serviceDisplayName,
    this.usageType,
  });

  Category.fromJson(core.Map json_)
    : this(
        resourceFamily: json_['resourceFamily'] as core.String?,
        resourceGroup: json_['resourceGroup'] as core.String?,
        serviceDisplayName: json_['serviceDisplayName'] as core.String?,
        usageType: json_['usageType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final resourceFamily = this.resourceFamily;
    final resourceGroup = this.resourceGroup;
    final serviceDisplayName = this.serviceDisplayName;
    final usageType = this.usageType;
    return {
      'resourceFamily': ?resourceFamily,
      'resourceGroup': ?resourceGroup,
      'serviceDisplayName': ?serviceDisplayName,
      'usageType': ?usageType,
    };
  }
}

typedef ClientCredentialsOAuthFlow = $OAuthFlow;

/// DataPart represents a structured blob.
///
/// This is most commonly a JSON payload.
typedef DataPart = $DataPart;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// FilePart represents the different ways files can be provided.
///
/// If files are small, directly feeding the bytes is supported via
/// file_with_bytes. If the file is large, the agent should read the content as
/// appropriate directly from the file_with_uri source.
typedef FilePart = $FilePart;

/// Encapsulates the geographic taxonomy data for a sku.
class GeoTaxonomy {
  /// The list of regions associated with a sku.
  ///
  /// Empty for Global skus, which are associated with all Google Cloud regions.
  core.List<core.String>? regions;

  /// The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not specified.
  /// - "GLOBAL" : The sku is global in nature, e.g. a license sku. Global skus
  /// are available in all regions, and so have an empty region list.
  /// - "REGIONAL" : The sku is available in a specific region, e.g. "us-west2".
  /// - "MULTI_REGIONAL" : The sku is associated with multiple regions, e.g.
  /// "us-west2" and "us-east1".
  core.String? type;

  GeoTaxonomy({this.regions, this.type});

  GeoTaxonomy.fromJson(core.Map json_)
    : this(
        regions: (json_['regions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final regions = this.regions;
    final type = this.type;
    return {'regions': ?regions, 'type': ?type};
  }
}

class HTTPAuthSecurityScheme {
  /// A hint to the client to identify how the bearer token is formatted.
  ///
  /// Bearer tokens are usually generated by an authorization server, so this
  /// information is primarily for documentation purposes.
  core.String? bearerFormat;

  /// Description of this security scheme.
  core.String? description;

  /// The name of the HTTP Authentication scheme to be used in the Authorization
  /// header as defined in RFC7235.
  ///
  /// The values used SHOULD be registered in the IANA Authentication Scheme
  /// registry. The value is case-insensitive, as defined in RFC7235.
  core.String? scheme;

  HTTPAuthSecurityScheme({this.bearerFormat, this.description, this.scheme});

  HTTPAuthSecurityScheme.fromJson(core.Map json_)
    : this(
        bearerFormat: json_['bearerFormat'] as core.String?,
        description: json_['description'] as core.String?,
        scheme: json_['scheme'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bearerFormat = this.bearerFormat;
    final description = this.description;
    final scheme = this.scheme;
    return {
      'bearerFormat': ?bearerFormat,
      'description': ?description,
      'scheme': ?scheme,
    };
  }
}

typedef ImplicitOAuthFlow = $ImplicitOAuthFlow;

/// Response message for `ListBillingAccounts`.
class ListBillingAccountsResponse {
  /// A list of billing accounts.
  core.List<BillingAccount>? billingAccounts;

  /// A token to retrieve the next page of results.
  ///
  /// To retrieve the next page, call `ListBillingAccounts` again with the
  /// `page_token` field set to this value. This field is empty if there are no
  /// more results to retrieve.
  core.String? nextPageToken;

  ListBillingAccountsResponse({this.billingAccounts, this.nextPageToken});

  ListBillingAccountsResponse.fromJson(core.Map json_)
    : this(
        billingAccounts: (json_['billingAccounts'] as core.List?)
            ?.map(
              (value) => BillingAccount.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billingAccounts = this.billingAccounts;
    final nextPageToken = this.nextPageToken;
    return {
      'billingAccounts': ?billingAccounts,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Request message for `ListProjectBillingInfoResponse`.
class ListProjectBillingInfoResponse {
  /// A token to retrieve the next page of results.
  ///
  /// To retrieve the next page, call `ListProjectBillingInfo` again with the
  /// `page_token` field set to this value. This field is empty if there are no
  /// more results to retrieve.
  core.String? nextPageToken;

  /// A list of `ProjectBillingInfo` resources representing the projects
  /// associated with the billing account.
  core.List<ProjectBillingInfo>? projectBillingInfo;

  ListProjectBillingInfoResponse({this.nextPageToken, this.projectBillingInfo});

  ListProjectBillingInfoResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        projectBillingInfo: (json_['projectBillingInfo'] as core.List?)
            ?.map(
              (value) => ProjectBillingInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final projectBillingInfo = this.projectBillingInfo;
    return {
      'nextPageToken': ?nextPageToken,
      'projectBillingInfo': ?projectBillingInfo,
    };
  }
}

/// Response message for `ListServices`.
class ListServicesResponse {
  /// A token to retrieve the next page of results.
  ///
  /// To retrieve the next page, call `ListServices` again with the `page_token`
  /// field set to this value. This field is empty if there are no more results
  /// to retrieve.
  core.String? nextPageToken;

  /// A list of services.
  core.List<Service>? services;

  ListServicesResponse({this.nextPageToken, this.services});

  ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => Service.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final services = this.services;
    return {'nextPageToken': ?nextPageToken, 'services': ?services};
  }
}

/// Response message for `ListSkus`.
class ListSkusResponse {
  /// A token to retrieve the next page of results.
  ///
  /// To retrieve the next page, call `ListSkus` again with the `page_token`
  /// field set to this value. This field is empty if there are no more results
  /// to retrieve.
  core.String? nextPageToken;

  /// The list of public SKUs of the given service.
  core.List<Sku>? skus;

  ListSkusResponse({this.nextPageToken, this.skus});

  ListSkusResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        skus: (json_['skus'] as core.List?)
            ?.map(
              (value) =>
                  Sku.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final skus = this.skus;
    return {'nextPageToken': ?nextPageToken, 'skus': ?skus};
  }
}

class ListTaskPushNotificationConfigResponse {
  /// The list of push notification configurations.
  core.List<TaskPushNotificationConfig>? configs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListTaskPushNotificationConfigResponse({this.configs, this.nextPageToken});

  ListTaskPushNotificationConfigResponse.fromJson(core.Map json_)
    : this(
        configs: (json_['configs'] as core.List?)
            ?.map(
              (value) => TaskPushNotificationConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configs = this.configs;
    final nextPageToken = this.nextPageToken;
    return {'configs': ?configs, 'nextPageToken': ?nextPageToken};
  }
}

/// Message is one unit of communication between client and server.
///
/// It is associated with a context and optionally a task. Since the server is
/// responsible for the context definition, it must always provide a context_id
/// in its messages. The client can optionally provide the context_id if it
/// knows the context to associate the message to. Similarly for task_id, except
/// the server decides if a task is created and whether to include the task_id.
class Message {
  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED Content is the container
  /// of the message content.
  core.List<Part>? content;

  /// The context id of the message.
  ///
  /// This is optional and if set, the message will be associated with the given
  /// context.
  core.String? contextId;

  /// The URIs of extensions that are present or contributed to this Message.
  core.List<core.String>? extensions;

  /// The unique identifier (e.g. UUID)of the message.
  ///
  /// This is required and created by the message creator.
  core.String? messageId;

  /// protolint:enable REPEATED_FIELD_NAMES_PLURALIZED Any optional metadata to
  /// provide along with the message.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// A role for the message.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "ROLE_USER" : USER role refers to communication from the client to the
  /// server.
  /// - "ROLE_AGENT" : AGENT role refers to communication from the server to the
  /// client.
  core.String? role;

  /// The task id of the message.
  ///
  /// This is optional and if set, the message will be associated with the given
  /// task.
  core.String? taskId;

  Message({
    this.content,
    this.contextId,
    this.extensions,
    this.messageId,
    this.metadata,
    this.role,
    this.taskId,
  });

  Message.fromJson(core.Map json_)
    : this(
        content: (json_['content'] as core.List?)
            ?.map(
              (value) =>
                  Part.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        contextId: json_['contextId'] as core.String?,
        extensions: (json_['extensions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        messageId: json_['messageId'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        role: json_['role'] as core.String?,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final contextId = this.contextId;
    final extensions = this.extensions;
    final messageId = this.messageId;
    final metadata = this.metadata;
    final role = this.role;
    final taskId = this.taskId;
    return {
      'content': ?content,
      'contextId': ?contextId,
      'extensions': ?extensions,
      'messageId': ?messageId,
      'metadata': ?metadata,
      'role': ?role,
      'taskId': ?taskId,
    };
  }
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// Request message for `MoveBillingAccount` RPC.
class MoveBillingAccountRequest {
  /// The resource name of the Organization to move the billing account under.
  ///
  /// Must be of the form `organizations/{organization_id}`.
  ///
  /// Required.
  core.String? destinationParent;

  MoveBillingAccountRequest({this.destinationParent});

  MoveBillingAccountRequest.fromJson(core.Map json_)
    : this(destinationParent: json_['destinationParent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final destinationParent = this.destinationParent;
    return {'destinationParent': ?destinationParent};
  }
}

class MutualTlsSecurityScheme {
  /// Description of this security scheme.
  core.String? description;

  MutualTlsSecurityScheme({this.description});

  MutualTlsSecurityScheme.fromJson(core.Map json_)
    : this(description: json_['description'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    return {'description': ?description};
  }
}

class OAuth2SecurityScheme {
  /// Description of this security scheme.
  core.String? description;

  /// An object containing configuration information for the flow types
  /// supported
  OAuthFlows? flows;

  /// URL to the oauth2 authorization server metadata
  /// [RFC8414](https://datatracker.ietf.org/doc/html/rfc8414).
  ///
  /// TLS is required.
  core.String? oauth2MetadataUrl;

  OAuth2SecurityScheme({this.description, this.flows, this.oauth2MetadataUrl});

  OAuth2SecurityScheme.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        flows: json_.containsKey('flows')
            ? OAuthFlows.fromJson(
                json_['flows'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauth2MetadataUrl: json_['oauth2MetadataUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final flows = this.flows;
    final oauth2MetadataUrl = this.oauth2MetadataUrl;
    return {
      'description': ?description,
      'flows': ?flows,
      'oauth2MetadataUrl': ?oauth2MetadataUrl,
    };
  }
}

class OAuthFlows {
  AuthorizationCodeOAuthFlow? authorizationCode;
  ClientCredentialsOAuthFlow? clientCredentials;
  ImplicitOAuthFlow? implicit;
  PasswordOAuthFlow? password;

  OAuthFlows({
    this.authorizationCode,
    this.clientCredentials,
    this.implicit,
    this.password,
  });

  OAuthFlows.fromJson(core.Map json_)
    : this(
        authorizationCode: json_.containsKey('authorizationCode')
            ? AuthorizationCodeOAuthFlow.fromJson(
                json_['authorizationCode']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        clientCredentials: json_.containsKey('clientCredentials')
            ? ClientCredentialsOAuthFlow.fromJson(
                json_['clientCredentials']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        implicit: json_.containsKey('implicit')
            ? ImplicitOAuthFlow.fromJson(
                json_['implicit'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        password: json_.containsKey('password')
            ? PasswordOAuthFlow.fromJson(
                json_['password'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authorizationCode = this.authorizationCode;
    final clientCredentials = this.clientCredentials;
    final implicit = this.implicit;
    final password = this.password;
    return {
      'authorizationCode': ?authorizationCode,
      'clientCredentials': ?clientCredentials,
      'implicit': ?implicit,
      'password': ?password,
    };
  }
}

class OpenIdConnectSecurityScheme {
  /// Description of this security scheme.
  core.String? description;

  /// Well-known URL to discover the \[\[OpenID-Connect-Discovery\]\] provider
  /// metadata.
  core.String? openIdConnectUrl;

  OpenIdConnectSecurityScheme({this.description, this.openIdConnectUrl});

  OpenIdConnectSecurityScheme.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        openIdConnectUrl: json_['openIdConnectUrl'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final openIdConnectUrl = this.openIdConnectUrl;
    return {'description': ?description, 'openIdConnectUrl': ?openIdConnectUrl};
  }
}

/// Part represents a container for a section of communication content.
///
/// Parts can be purely textual, some sort of file (image, video, etc) or a
/// structured data blob (i.e. JSON).
class Part {
  DataPart? data;
  FilePart? file;

  /// Optional metadata associated with this part.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;
  core.String? text;

  Part({this.data, this.file, this.metadata, this.text});

  Part.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? DataPart.fromJson(
                json_['data'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        file: json_.containsKey('file')
            ? FilePart.fromJson(
                json_['file'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final file = this.file;
    final metadata = this.metadata;
    final text = this.text;
    return {'data': ?data, 'file': ?file, 'metadata': ?metadata, 'text': ?text};
  }
}

typedef PasswordOAuthFlow = $OAuthFlow;

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

/// Expresses a mathematical pricing formula.
///
/// For Example:- `usage_unit: GBy` `tiered_rates:` `[start_usage_amount: 20,
/// unit_price: $10]` `[start_usage_amount: 100, unit_price: $5]` The above
/// expresses a pricing formula where the first 20GB is free, the next 80GB is
/// priced at $10 per GB followed by $5 per GB for additional usage.
class PricingExpression {
  /// The base unit for the SKU which is the unit used in usage exports.
  ///
  /// Example: "By"
  core.String? baseUnit;

  /// Conversion factor for converting from price per usage_unit to price per
  /// base_unit, and start_usage_amount to start_usage_amount in base_unit.
  ///
  /// unit_price / base_unit_conversion_factor = price per base_unit.
  /// start_usage_amount * base_unit_conversion_factor = start_usage_amount in
  /// base_unit.
  core.double? baseUnitConversionFactor;

  /// The base unit in human readable form.
  ///
  /// Example: "byte".
  core.String? baseUnitDescription;

  /// The recommended quantity of units for displaying pricing info.
  ///
  /// When displaying pricing info it is recommended to display: (unit_price *
  /// display_quantity) per display_quantity usage_unit. This field does not
  /// affect the pricing formula and is for display purposes only. Example: If
  /// the unit_price is "0.0001 USD", the usage_unit is "GB" and the
  /// display_quantity is "1000" then the recommended way of displaying the
  /// pricing info is "0.10 USD per 1000 GB"
  core.double? displayQuantity;

  /// The list of tiered rates for this pricing.
  ///
  /// The total cost is computed by applying each of the tiered rates on usage.
  /// This repeated list is sorted by ascending order of start_usage_amount.
  core.List<TierRate>? tieredRates;

  /// The short hand for unit of usage this pricing is specified in.
  ///
  /// Example: usage_unit of "GiBy" means that usage is specified in "Gibi
  /// Byte".
  core.String? usageUnit;

  /// The unit of usage in human readable form.
  ///
  /// Example: "gibi byte".
  core.String? usageUnitDescription;

  PricingExpression({
    this.baseUnit,
    this.baseUnitConversionFactor,
    this.baseUnitDescription,
    this.displayQuantity,
    this.tieredRates,
    this.usageUnit,
    this.usageUnitDescription,
  });

  PricingExpression.fromJson(core.Map json_)
    : this(
        baseUnit: json_['baseUnit'] as core.String?,
        baseUnitConversionFactor:
            (json_['baseUnitConversionFactor'] as core.num?)?.toDouble(),
        baseUnitDescription: json_['baseUnitDescription'] as core.String?,
        displayQuantity: (json_['displayQuantity'] as core.num?)?.toDouble(),
        tieredRates: (json_['tieredRates'] as core.List?)
            ?.map(
              (value) => TierRate.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        usageUnit: json_['usageUnit'] as core.String?,
        usageUnitDescription: json_['usageUnitDescription'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final baseUnit = this.baseUnit;
    final baseUnitConversionFactor = this.baseUnitConversionFactor;
    final baseUnitDescription = this.baseUnitDescription;
    final displayQuantity = this.displayQuantity;
    final tieredRates = this.tieredRates;
    final usageUnit = this.usageUnit;
    final usageUnitDescription = this.usageUnitDescription;
    return {
      'baseUnit': ?baseUnit,
      'baseUnitConversionFactor': ?baseUnitConversionFactor,
      'baseUnitDescription': ?baseUnitDescription,
      'displayQuantity': ?displayQuantity,
      'tieredRates': ?tieredRates,
      'usageUnit': ?usageUnit,
      'usageUnitDescription': ?usageUnitDescription,
    };
  }
}

/// Represents the pricing information for a SKU at a single point of time.
class PricingInfo {
  /// Aggregation Info.
  ///
  /// This can be left unspecified if the pricing expression doesn't require
  /// aggregation.
  AggregationInfo? aggregationInfo;

  /// Conversion rate used for currency conversion, from USD to the currency
  /// specified in the request.
  ///
  /// This includes any surcharge collected for billing in non USD currency. If
  /// a currency is not specified in the request this defaults to 1.0. Example:
  /// USD * currency_conversion_rate = JPY
  core.double? currencyConversionRate;

  /// The timestamp from which this pricing was effective within the requested
  /// time range.
  ///
  /// This is guaranteed to be greater than or equal to the start_time field in
  /// the request and less than the end_time field in the request. If a time
  /// range was not specified in the request this field will be equivalent to a
  /// time within the last 12 hours, indicating the latest pricing info.
  core.String? effectiveTime;

  /// Expresses the pricing formula.
  ///
  /// See `PricingExpression` for an example.
  PricingExpression? pricingExpression;

  /// An optional human readable summary of the pricing information, has a
  /// maximum length of 256 characters.
  core.String? summary;

  PricingInfo({
    this.aggregationInfo,
    this.currencyConversionRate,
    this.effectiveTime,
    this.pricingExpression,
    this.summary,
  });

  PricingInfo.fromJson(core.Map json_)
    : this(
        aggregationInfo: json_.containsKey('aggregationInfo')
            ? AggregationInfo.fromJson(
                json_['aggregationInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        currencyConversionRate: (json_['currencyConversionRate'] as core.num?)
            ?.toDouble(),
        effectiveTime: json_['effectiveTime'] as core.String?,
        pricingExpression: json_.containsKey('pricingExpression')
            ? PricingExpression.fromJson(
                json_['pricingExpression']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        summary: json_['summary'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregationInfo = this.aggregationInfo;
    final currencyConversionRate = this.currencyConversionRate;
    final effectiveTime = this.effectiveTime;
    final pricingExpression = this.pricingExpression;
    final summary = this.summary;
    return {
      'aggregationInfo': ?aggregationInfo,
      'currencyConversionRate': ?currencyConversionRate,
      'effectiveTime': ?effectiveTime,
      'pricingExpression': ?pricingExpression,
      'summary': ?summary,
    };
  }
}

/// Encapsulation of billing information for a Google Cloud Console project.
///
/// A project has at most one associated billing account at a time (but a
/// billing account can be assigned to multiple projects).
class ProjectBillingInfo {
  /// The resource name of the billing account associated with the project, if
  /// any.
  ///
  /// For example, `billingAccounts/012345-567890-ABCDEF`.
  core.String? billingAccountName;

  /// True if the project is associated with an open billing account, to which
  /// usage on the project is charged.
  ///
  /// False if the project is associated with a closed billing account, or no
  /// billing account at all, and therefore cannot use paid services.
  ///
  /// Output only.
  core.bool? billingEnabled;

  /// The resource name for the `ProjectBillingInfo`; has the form
  /// `projects/{project_id}/billingInfo`.
  ///
  /// For example, the resource name for the billing information for project
  /// `tokyo-rain-123` would be `projects/tokyo-rain-123/billingInfo`.
  ///
  /// Output only.
  core.String? name;

  /// The ID of the project that this `ProjectBillingInfo` represents, such as
  /// `tokyo-rain-123`.
  ///
  /// This is a convenience field so that you don't need to parse the `name`
  /// field to obtain a project ID.
  ///
  /// Output only.
  core.String? projectId;

  ProjectBillingInfo({
    this.billingAccountName,
    this.billingEnabled,
    this.name,
    this.projectId,
  });

  ProjectBillingInfo.fromJson(core.Map json_)
    : this(
        billingAccountName: json_['billingAccountName'] as core.String?,
        billingEnabled: json_['billingEnabled'] as core.bool?,
        name: json_['name'] as core.String?,
        projectId: json_['projectId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final billingAccountName = this.billingAccountName;
    final billingEnabled = this.billingEnabled;
    final name = this.name;
    final projectId = this.projectId;
    return {
      'billingAccountName': ?billingAccountName,
      'billingEnabled': ?billingEnabled,
      'name': ?name,
      'projectId': ?projectId,
    };
  }
}

/// Configuration for setting up push notifications for task updates.
class PushNotificationConfig {
  /// Information about the authentication to sent with the notification
  AuthenticationInfo? authentication;

  /// A unique identifier (e.g. UUID) for this push notification.
  core.String? id;

  /// Token unique for this task/session
  core.String? token;

  /// Url to send the notification too
  core.String? url;

  PushNotificationConfig({this.authentication, this.id, this.token, this.url});

  PushNotificationConfig.fromJson(core.Map json_)
    : this(
        authentication: json_.containsKey('authentication')
            ? AuthenticationInfo.fromJson(
                json_['authentication'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        id: json_['id'] as core.String?,
        token: json_['token'] as core.String?,
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authentication = this.authentication;
    final id = this.id;
    final token = this.token;
    final url = this.url;
    return {
      'authentication': ?authentication,
      'id': ?id,
      'token': ?token,
      'url': ?url,
    };
  }
}

class Security {
  core.Map<core.String, StringList>? schemes;

  Security({this.schemes});

  Security.fromJson(core.Map json_)
    : this(
        schemes: (json_['schemes'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                StringList.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final schemes = this.schemes;
    return {'schemes': ?schemes};
  }
}

class SecurityScheme {
  APIKeySecurityScheme? apiKeySecurityScheme;
  HTTPAuthSecurityScheme? httpAuthSecurityScheme;
  MutualTlsSecurityScheme? mtlsSecurityScheme;
  OAuth2SecurityScheme? oauth2SecurityScheme;
  OpenIdConnectSecurityScheme? openIdConnectSecurityScheme;

  SecurityScheme({
    this.apiKeySecurityScheme,
    this.httpAuthSecurityScheme,
    this.mtlsSecurityScheme,
    this.oauth2SecurityScheme,
    this.openIdConnectSecurityScheme,
  });

  SecurityScheme.fromJson(core.Map json_)
    : this(
        apiKeySecurityScheme: json_.containsKey('apiKeySecurityScheme')
            ? APIKeySecurityScheme.fromJson(
                json_['apiKeySecurityScheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        httpAuthSecurityScheme: json_.containsKey('httpAuthSecurityScheme')
            ? HTTPAuthSecurityScheme.fromJson(
                json_['httpAuthSecurityScheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mtlsSecurityScheme: json_.containsKey('mtlsSecurityScheme')
            ? MutualTlsSecurityScheme.fromJson(
                json_['mtlsSecurityScheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauth2SecurityScheme: json_.containsKey('oauth2SecurityScheme')
            ? OAuth2SecurityScheme.fromJson(
                json_['oauth2SecurityScheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        openIdConnectSecurityScheme:
            json_.containsKey('openIdConnectSecurityScheme')
            ? OpenIdConnectSecurityScheme.fromJson(
                json_['openIdConnectSecurityScheme']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiKeySecurityScheme = this.apiKeySecurityScheme;
    final httpAuthSecurityScheme = this.httpAuthSecurityScheme;
    final mtlsSecurityScheme = this.mtlsSecurityScheme;
    final oauth2SecurityScheme = this.oauth2SecurityScheme;
    final openIdConnectSecurityScheme = this.openIdConnectSecurityScheme;
    return {
      'apiKeySecurityScheme': ?apiKeySecurityScheme,
      'httpAuthSecurityScheme': ?httpAuthSecurityScheme,
      'mtlsSecurityScheme': ?mtlsSecurityScheme,
      'oauth2SecurityScheme': ?oauth2SecurityScheme,
      'openIdConnectSecurityScheme': ?openIdConnectSecurityScheme,
    };
  }
}

/// Configuration of a send message request.
class SendMessageConfiguration {
  /// The output modes that the agent is expected to respond with.
  core.List<core.String>? acceptedOutputModes;

  /// If true, the message will be blocking until the task is completed.
  ///
  /// If false, the message will be non-blocking and the task will be returned
  /// immediately. It is the caller's responsibility to check for any task
  /// updates.
  core.bool? blocking;

  /// The maximum number of messages to include in the history.
  ///
  /// if 0, the history will be unlimited.
  core.int? historyLength;

  /// A configuration of a webhook that can be used to receive updates
  PushNotificationConfig? pushNotification;

  SendMessageConfiguration({
    this.acceptedOutputModes,
    this.blocking,
    this.historyLength,
    this.pushNotification,
  });

  SendMessageConfiguration.fromJson(core.Map json_)
    : this(
        acceptedOutputModes: (json_['acceptedOutputModes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        blocking: json_['blocking'] as core.bool?,
        historyLength: json_['historyLength'] as core.int?,
        pushNotification: json_.containsKey('pushNotification')
            ? PushNotificationConfig.fromJson(
                json_['pushNotification']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final acceptedOutputModes = this.acceptedOutputModes;
    final blocking = this.blocking;
    final historyLength = this.historyLength;
    final pushNotification = this.pushNotification;
    return {
      'acceptedOutputModes': ?acceptedOutputModes,
      'blocking': ?blocking,
      'historyLength': ?historyLength,
      'pushNotification': ?pushNotification,
    };
  }
}

/// /////////// Request Messages ///////////
class SendMessageRequest {
  /// Configuration for the send request.
  SendMessageConfiguration? configuration;

  /// The message to send to the agent.
  ///
  /// Required.
  Message? message;

  /// Optional metadata for the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Optional tenant, provided as a path parameter.
  ///
  /// Experimental, might still change for 1.0 release.
  core.String? tenant;

  SendMessageRequest({
    this.configuration,
    this.message,
    this.metadata,
    this.tenant,
  });

  SendMessageRequest.fromJson(core.Map json_)
    : this(
        configuration: json_.containsKey('configuration')
            ? SendMessageConfiguration.fromJson(
                json_['configuration'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        tenant: json_['tenant'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final configuration = this.configuration;
    final message = this.message;
    final metadata = this.metadata;
    final tenant = this.tenant;
    return {
      'configuration': ?configuration,
      'message': ?message,
      'metadata': ?metadata,
      'tenant': ?tenant,
    };
  }
}

/// ////// Response Messages ///////////
class SendMessageResponse {
  Message? message;
  Task? task;

  SendMessageResponse({this.message, this.task});

  SendMessageResponse.fromJson(core.Map json_)
    : this(
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        task: json_.containsKey('task')
            ? Task.fromJson(
                json_['task'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final task = this.task;
    return {'message': ?message, 'task': ?task};
  }
}

/// Encapsulates a single service in Google Cloud Platform.
class Service {
  /// The business under which the service is offered.
  ///
  /// Ex. "businessEntities/GCP", "businessEntities/Maps"
  core.String? businessEntityName;

  /// A human readable display name for this service.
  core.String? displayName;

  /// The resource name for the service.
  ///
  /// Example: "services/6F81-5844-456A"
  core.String? name;

  /// The identifier for the service.
  ///
  /// Example: "6F81-5844-456A"
  core.String? serviceId;

  Service({
    this.businessEntityName,
    this.displayName,
    this.name,
    this.serviceId,
  });

  Service.fromJson(core.Map json_)
    : this(
        businessEntityName: json_['businessEntityName'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        serviceId: json_['serviceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final businessEntityName = this.businessEntityName;
    final displayName = this.displayName;
    final name = this.name;
    final serviceId = this.serviceId;
    return {
      'businessEntityName': ?businessEntityName,
      'displayName': ?displayName,
      'name': ?name,
      'serviceId': ?serviceId,
    };
  }
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

/// Encapsulates a single SKU in Google Cloud
class Sku {
  /// The category hierarchy of this SKU, purely for organizational purpose.
  Category? category;

  /// A human readable description of the SKU, has a maximum length of 256
  /// characters.
  core.String? description;

  /// The geographic taxonomy for this sku.
  GeoTaxonomy? geoTaxonomy;

  /// The resource name for the SKU.
  ///
  /// Example: "services/6F81-5844-456A/skus/D041-B8A1-6E0B"
  core.String? name;

  /// A timeline of pricing info for this SKU in chronological order.
  core.List<PricingInfo>? pricingInfo;

  /// Identifies the service provider.
  ///
  /// This is 'Google' for first party services in Google Cloud Platform.
  core.String? serviceProviderName;

  /// List of service regions this SKU is offered at.
  ///
  /// Example: "asia-east1" Service regions can be found at
  /// https://cloud.google.com/about/locations/
  core.List<core.String>? serviceRegions;

  /// The identifier for the SKU.
  ///
  /// Example: "D041-B8A1-6E0B"
  core.String? skuId;

  Sku({
    this.category,
    this.description,
    this.geoTaxonomy,
    this.name,
    this.pricingInfo,
    this.serviceProviderName,
    this.serviceRegions,
    this.skuId,
  });

  Sku.fromJson(core.Map json_)
    : this(
        category: json_.containsKey('category')
            ? Category.fromJson(
                json_['category'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        geoTaxonomy: json_.containsKey('geoTaxonomy')
            ? GeoTaxonomy.fromJson(
                json_['geoTaxonomy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        pricingInfo: (json_['pricingInfo'] as core.List?)
            ?.map(
              (value) => PricingInfo.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        serviceProviderName: json_['serviceProviderName'] as core.String?,
        serviceRegions: (json_['serviceRegions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        skuId: json_['skuId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final description = this.description;
    final geoTaxonomy = this.geoTaxonomy;
    final name = this.name;
    final pricingInfo = this.pricingInfo;
    final serviceProviderName = this.serviceProviderName;
    final serviceRegions = this.serviceRegions;
    final skuId = this.skuId;
    return {
      'category': ?category,
      'description': ?description,
      'geoTaxonomy': ?geoTaxonomy,
      'name': ?name,
      'pricingInfo': ?pricingInfo,
      'serviceProviderName': ?serviceProviderName,
      'serviceRegions': ?serviceRegions,
      'skuId': ?skuId,
    };
  }
}

/// The stream response for a message.
///
/// The stream should be one of the following sequences: If the response is a
/// message, the stream should contain one, and only one, message and then close
/// If the response is a task lifecycle, the first response should be a Task
/// object followed by zero or more TaskStatusUpdateEvents and
/// TaskArtifactUpdateEvents. The stream should complete when the Task if in an
/// interrupted or terminal state. A stream that ends before these conditions
/// are met are
class StreamResponse {
  TaskArtifactUpdateEvent? artifactUpdate;
  Message? message;
  TaskStatusUpdateEvent? statusUpdate;
  Task? task;

  StreamResponse({
    this.artifactUpdate,
    this.message,
    this.statusUpdate,
    this.task,
  });

  StreamResponse.fromJson(core.Map json_)
    : this(
        artifactUpdate: json_.containsKey('artifactUpdate')
            ? TaskArtifactUpdateEvent.fromJson(
                json_['artifactUpdate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        statusUpdate: json_.containsKey('statusUpdate')
            ? TaskStatusUpdateEvent.fromJson(
                json_['statusUpdate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        task: json_.containsKey('task')
            ? Task.fromJson(
                json_['task'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifactUpdate = this.artifactUpdate;
    final message = this.message;
    final statusUpdate = this.statusUpdate;
    final task = this.task;
    return {
      'artifactUpdate': ?artifactUpdate,
      'message': ?message,
      'statusUpdate': ?statusUpdate,
      'task': ?task,
    };
  }
}

/// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED
class StringList {
  core.List<core.String>? list;

  StringList({this.list});

  StringList.fromJson(core.Map json_)
    : this(
        list: (json_['list'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final list = this.list;
    return {'list': ?list};
  }
}

/// Task is the core unit of action for A2A.
///
/// It has a current status and when results are created for the task they are
/// stored in the artifact. If there are multiple turns for a task, these are
/// stored in history.
class Task {
  /// A set of output artifacts for a Task.
  core.List<Artifact>? artifacts;

  /// Unique identifier (e.g. UUID) for the contextual collection of
  /// interactions (tasks and messages).
  ///
  /// Created by the A2A server.
  core.String? contextId;

  /// protolint:disable REPEATED_FIELD_NAMES_PLURALIZED The history of
  /// interactions from a task.
  core.List<Message>? history;

  /// Unique identifier (e.g. UUID) for the task, generated by the server for a
  /// new task.
  core.String? id;

  /// protolint:enable REPEATED_FIELD_NAMES_PLURALIZED A key/value object to
  /// store custom metadata about a task.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The current status of a Task, including state and a message.
  TaskStatus? status;

  Task({
    this.artifacts,
    this.contextId,
    this.history,
    this.id,
    this.metadata,
    this.status,
  });

  Task.fromJson(core.Map json_)
    : this(
        artifacts: (json_['artifacts'] as core.List?)
            ?.map(
              (value) => Artifact.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        contextId: json_['contextId'] as core.String?,
        history: (json_['history'] as core.List?)
            ?.map(
              (value) => Message.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        id: json_['id'] as core.String?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        status: json_.containsKey('status')
            ? TaskStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final artifacts = this.artifacts;
    final contextId = this.contextId;
    final history = this.history;
    final id = this.id;
    final metadata = this.metadata;
    final status = this.status;
    return {
      'artifacts': ?artifacts,
      'contextId': ?contextId,
      'history': ?history,
      'id': ?id,
      'metadata': ?metadata,
      'status': ?status,
    };
  }
}

/// TaskArtifactUpdateEvent represents a task delta where an artifact has been
/// generated.
class TaskArtifactUpdateEvent {
  /// Whether this should be appended to a prior one produced
  core.bool? append;

  /// The artifact itself
  Artifact? artifact;

  /// The id of the context that this task belongs too
  core.String? contextId;

  /// Whether this represents the last part of an artifact
  core.bool? lastChunk;

  /// Optional metadata associated with the artifact update.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The id of the task for this artifact
  core.String? taskId;

  TaskArtifactUpdateEvent({
    this.append,
    this.artifact,
    this.contextId,
    this.lastChunk,
    this.metadata,
    this.taskId,
  });

  TaskArtifactUpdateEvent.fromJson(core.Map json_)
    : this(
        append: json_['append'] as core.bool?,
        artifact: json_.containsKey('artifact')
            ? Artifact.fromJson(
                json_['artifact'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        contextId: json_['contextId'] as core.String?,
        lastChunk: json_['lastChunk'] as core.bool?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final append = this.append;
    final artifact = this.artifact;
    final contextId = this.contextId;
    final lastChunk = this.lastChunk;
    final metadata = this.metadata;
    final taskId = this.taskId;
    return {
      'append': ?append,
      'artifact': ?artifact,
      'contextId': ?contextId,
      'lastChunk': ?lastChunk,
      'metadata': ?metadata,
      'taskId': ?taskId,
    };
  }
}

class TaskPushNotificationConfig {
  /// The resource name of the config.
  ///
  /// Format: tasks/{task_id}/pushNotificationConfigs/{config_id}
  core.String? name;

  /// The push notification configuration details.
  PushNotificationConfig? pushNotificationConfig;

  TaskPushNotificationConfig({this.name, this.pushNotificationConfig});

  TaskPushNotificationConfig.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        pushNotificationConfig: json_.containsKey('pushNotificationConfig')
            ? PushNotificationConfig.fromJson(
                json_['pushNotificationConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final pushNotificationConfig = this.pushNotificationConfig;
    return {'name': ?name, 'pushNotificationConfig': ?pushNotificationConfig};
  }
}

/// A container for the status of a task
class TaskStatus {
  /// A message associated with the status.
  Message? message;

  /// The current state of this task
  /// Possible string values are:
  /// - "TASK_STATE_UNSPECIFIED"
  /// - "TASK_STATE_SUBMITTED" : Represents the status that acknowledges a task
  /// is created
  /// - "TASK_STATE_WORKING" : Represents the status that a task is actively
  /// being processed
  /// - "TASK_STATE_COMPLETED" : Represents the status a task is finished. This
  /// is a terminal state
  /// - "TASK_STATE_FAILED" : Represents the status a task is done but failed.
  /// This is a terminal state
  /// - "TASK_STATE_CANCELLED" : Represents the status a task was cancelled
  /// before it finished. This is a terminal state.
  /// - "TASK_STATE_INPUT_REQUIRED" : Represents the status that the task
  /// requires information to complete. This is an interrupted state.
  /// - "TASK_STATE_REJECTED" : Represents the status that the agent has decided
  /// to not perform the task. This may be done during initial task creation or
  /// later once an agent has determined it can't or won't proceed. This is a
  /// terminal state.
  /// - "TASK_STATE_AUTH_REQUIRED" : Represents the state that some
  /// authentication is needed from the upstream client. Authentication is
  /// expected to come out-of-band thus this is not an interrupted or terminal
  /// state.
  core.String? state;

  /// Timestamp when the status was recorded.
  ///
  /// Example: "2023-10-27T10:00:00Z"
  core.String? timestamp;

  TaskStatus({this.message, this.state, this.timestamp});

  TaskStatus.fromJson(core.Map json_)
    : this(
        message: json_.containsKey('message')
            ? Message.fromJson(
                json_['message'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        state: json_['state'] as core.String?,
        timestamp: json_['timestamp'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final message = this.message;
    final state = this.state;
    final timestamp = this.timestamp;
    return {'message': ?message, 'state': ?state, 'timestamp': ?timestamp};
  }
}

/// TaskStatusUpdateEvent is a delta even on a task indicating that a task has
/// changed.
class TaskStatusUpdateEvent {
  /// The id of the context that the task belongs to
  core.String? contextId;

  /// Whether this is the last status update expected for this task.
  core.bool? final_;

  /// Optional metadata to associate with the task update.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The new status of the task.
  TaskStatus? status;

  /// The id of the task that is changed
  core.String? taskId;

  TaskStatusUpdateEvent({
    this.contextId,
    this.final_,
    this.metadata,
    this.status,
    this.taskId,
  });

  TaskStatusUpdateEvent.fromJson(core.Map json_)
    : this(
        contextId: json_['contextId'] as core.String?,
        final_: json_['final'] as core.bool?,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        status: json_.containsKey('status')
            ? TaskStatus.fromJson(
                json_['status'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        taskId: json_['taskId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final contextId = this.contextId;
    final final_ = this.final_;
    final metadata = this.metadata;
    final status = this.status;
    final taskId = this.taskId;
    return {
      'contextId': ?contextId,
      'final': ?final_,
      'metadata': ?metadata,
      'status': ?status,
      'taskId': ?taskId,
    };
  }
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The price rate indicating starting usage and its corresponding price.
class TierRate {
  /// Usage is priced at this rate only after this amount.
  ///
  /// Example: start_usage_amount of 10 indicates that the usage will be priced
  /// at the unit_price after the first 10 usage_units.
  core.double? startUsageAmount;

  /// The price per unit of usage.
  ///
  /// Example: unit_price of amount $10 indicates that each unit will cost $10.
  Money? unitPrice;

  TierRate({this.startUsageAmount, this.unitPrice});

  TierRate.fromJson(core.Map json_)
    : this(
        startUsageAmount: (json_['startUsageAmount'] as core.num?)?.toDouble(),
        unitPrice: json_.containsKey('unitPrice')
            ? Money.fromJson(
                json_['unitPrice'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final startUsageAmount = this.startUsageAmount;
    final unitPrice = this.unitPrice;
    return {'startUsageAmount': ?startUsageAmount, 'unitPrice': ?unitPrice};
  }
}
