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

/// Cloud Channel API - v1
///
/// The Cloud Channel API enables Google Cloud partners to have a single unified
/// resale platform and APIs across all of Google Cloud including GCP,
/// Workspace, Maps and Chrome.
///
/// For more information, see <https://cloud.google.com/channel>
///
/// Create an instance of [CloudchannelApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsChannelPartnerLinksResource]
///     - [AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource]
///     - [AccountsChannelPartnerLinksCustomersResource]
///   - [AccountsCustomersResource]
///     - [AccountsCustomersCustomerRepricingConfigsResource]
///     - [AccountsCustomersEntitlementsResource]
///   - [AccountsOffersResource]
///   - [AccountsReportJobsResource]
///   - [AccountsReportsResource]
/// - [OperationsResource]
/// - [ProductsResource]
///   - [ProductsSkusResource]
library cloudchannel.v1;

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

/// The Cloud Channel API enables Google Cloud partners to have a single unified
/// resale platform and APIs across all of Google Cloud including GCP,
/// Workspace, Maps and Chrome.
class CloudchannelApi {
  /// Manage users on your domain
  static const appsOrderScope = 'https://www.googleapis.com/auth/apps.order';

  /// View usage reports for your G Suite domain
  static const appsReportsUsageReadonlyScope =
      'https://www.googleapis.com/auth/apps.reports.usage.readonly';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProductsResource get products => ProductsResource(_requester);

  CloudchannelApi(http.Client client,
      {core.String rootUrl = 'https://cloudchannel.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsChannelPartnerLinksResource get channelPartnerLinks =>
      AccountsChannelPartnerLinksResource(_requester);
  AccountsCustomersResource get customers =>
      AccountsCustomersResource(_requester);
  AccountsOffersResource get offers => AccountsOffersResource(_requester);
  AccountsReportJobsResource get reportJobs =>
      AccountsReportJobsResource(_requester);
  AccountsReportsResource get reports => AccountsReportsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Confirms the existence of Cloud Identity accounts based on the domain and
  /// if the Cloud Identity accounts are owned by the reseller.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// INVALID_VALUE: Invalid domain value in the request. Return value: A list
  /// of CloudIdentityCustomerAccount resources for the domain (may be empty)
  /// Note: in the v1alpha1 version of the API, a NOT_FOUND error returns if no
  /// CloudIdentityCustomerAccount resources match the domain.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The reseller account's resource name. Parent uses the
  /// format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse>
      checkCloudIdentityAccountsExist(
    GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        ':checkCloudIdentityAccountsExist';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists service accounts with subscriber privileges on the Cloud Pub/Sub
  /// topic created for this Channel Services account.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request and the provided reseller account are different, or the
  /// impersonated user is not a super admin. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: The topic resource
  /// doesn't exist. * INTERNAL: Any non-user error related to a technical issue
  /// in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user
  /// error related to a technical issue in the backend. Contact Cloud Channel
  /// support. Return value: A list of service email addresses.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. Resource name of the account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of service accounts to return.
  /// The service may return fewer than this value. If unspecified, returns at
  /// most 100 service accounts. The maximum value is 1000; the server will
  /// coerce values above 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSubscribers` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListSubscribers` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListSubscribersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListSubscribersResponse> listSubscribers(
    core.String account, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$account') + ':listSubscribers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListSubscribersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List TransferableOffers of a customer based on Cloud Identity ID or
  /// Customer Name in the request.
  ///
  /// Use this method when a reseller gets the entitlement information of an
  /// unowned customer. The reseller should provide the customer's Cloud
  /// Identity ID or Customer Name. Possible error codes: * PERMISSION_DENIED: *
  /// The customer doesn't belong to the reseller and has no auth token. * The
  /// customer provided incorrect reseller information when generating auth
  /// token. * The reseller account making the request is different from the
  /// reseller account in the query. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. Return value: List of TransferableOffer
  /// for the given customer and SKU.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListTransferableOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListTransferableOffersResponse>
      listTransferableOffers(
    GoogleCloudChannelV1ListTransferableOffersRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':listTransferableOffers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List TransferableSkus of a customer based on the Cloud Identity ID or
  /// Customer Name in the request.
  ///
  /// Use this method to list the entitlements information of an unowned
  /// customer. You should provide the customer's Cloud Identity ID or Customer
  /// Name. Possible error codes: * PERMISSION_DENIED: * The customer doesn't
  /// belong to the reseller and has no auth token. * The supplied auth token is
  /// invalid. * The reseller account making the request is different from the
  /// reseller account in the query. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. Return value: A list of the customer's
  /// TransferableSku.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The reseller account's resource name. Parent uses the
  /// format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListTransferableSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListTransferableSkusResponse>
      listTransferableSkus(
    GoogleCloudChannelV1ListTransferableSkusRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':listTransferableSkus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Registers a service account with subscriber privileges on the Cloud
  /// Pub/Sub topic for this Channel Services account.
  ///
  /// After you create a subscriber, you get the events through SubscriberEvent
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request and the provided reseller account are different, or the
  /// impersonated user is not a super admin. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * INTERNAL: Any non-user error
  /// related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The topic name with
  /// the registered service email address.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. Resource name of the account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1RegisterSubscriberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1RegisterSubscriberResponse> register(
    GoogleCloudChannelV1RegisterSubscriberRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$account') + ':register';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Unregisters a service account with subscriber privileges on the Cloud
  /// Pub/Sub topic created for this Channel Services account.
  ///
  /// If there are no service accounts left with subscriber privileges, this
  /// deletes the topic. You can call ListSubscribers to check for these
  /// accounts. Possible error codes: * PERMISSION_DENIED: The reseller account
  /// making the request and the provided reseller account are different, or the
  /// impersonated user is not a super admin. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: The topic resource
  /// doesn't exist. * INTERNAL: Any non-user error related to a technical issue
  /// in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user
  /// error related to a technical issue in the backend. Contact Cloud Channel
  /// support. Return value: The topic name that unregistered the service email
  /// address. Returns a success response if the service email address wasn't
  /// registered with the topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. Resource name of the account.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1UnregisterSubscriberResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1UnregisterSubscriberResponse> unregister(
    GoogleCloudChannelV1UnregisterSubscriberRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$account') + ':unregister';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsChannelPartnerLinksResource {
  final commons.ApiRequester _requester;

  AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource
      get channelPartnerRepricingConfigs =>
          AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource(
              _requester);
  AccountsChannelPartnerLinksCustomersResource get customers =>
      AccountsChannelPartnerLinksCustomersResource(_requester);

  AccountsChannelPartnerLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Initiates a channel partner link between a distributor and a reseller, or
  /// between resellers in an n-tier reseller channel.
  ///
  /// Invited partners need to follow the invite_link_uri provided in the
  /// response to accept. After accepting the invitation, a link is set up
  /// between the two parties. You must be a distributor to call this method.
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// ALREADY_EXISTS: The ChannelPartnerLink sent in the request already exists.
  /// * NOT_FOUND: No Cloud Identity customer exists for provided domain. *
  /// INTERNAL: Any non-user error related to a technical issue in the backend.
  /// Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a
  /// technical issue in the backend. Contact Cloud Channel support. Return
  /// value: The new ChannelPartnerLink resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Create a channel partner link for the provided
  /// reseller account's resource name. Parent uses the format:
  /// accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerLink> create(
    GoogleCloudChannelV1ChannelPartnerLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/channelPartnerLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested ChannelPartnerLink resource.
  ///
  /// You must be a distributor to call this method. Possible error codes: *
  /// PERMISSION_DENIED: The reseller account making the request is different
  /// from the reseller account in the API request. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: ChannelPartnerLink
  /// resource not found because of an invalid channel partner link name. Return
  /// value: The ChannelPartnerLink resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the channel partner link to
  /// retrieve. Name uses the format:
  /// accounts/{account_id}/channelPartnerLinks/{id} where {id} is the Cloud
  /// Identity ID of the partner.
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [view] - Optional. The level of granularity the ChannelPartnerLink will
  /// display.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The default / unset value. The API will default to the
  /// BASIC view.
  /// - "BASIC" : Includes all fields except the
  /// ChannelPartnerLink.channel_partner_cloud_identity_info.
  /// - "FULL" : Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerLink> get(
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
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List ChannelPartnerLinks belonging to a distributor.
  ///
  /// You must be a distributor to call this method. Possible error codes: *
  /// PERMISSION_DENIED: The reseller account making the request is different
  /// from the reseller account in the API request. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. Return value: The list of the
  /// distributor account's ChannelPartnerLink resources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller account for listing
  /// channel partner links. Parent uses the format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, server will pick a default size
  /// (25). The maximum value is 200; the server will coerce values above 200.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page. Obtained using ListChannelPartnerLinksResponse.next_page_token of
  /// the previous CloudChannelService.ListChannelPartnerLinks call.
  ///
  /// [view] - Optional. The level of granularity the ChannelPartnerLink will
  /// display.
  /// Possible string values are:
  /// - "UNSPECIFIED" : The default / unset value. The API will default to the
  /// BASIC view.
  /// - "BASIC" : Includes all fields except the
  /// ChannelPartnerLink.channel_partner_cloud_identity_info.
  /// - "FULL" : Includes all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListChannelPartnerLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListChannelPartnerLinksResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/channelPartnerLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a channel partner link.
  ///
  /// Distributors call this method to change a link's status. For example, to
  /// suspend a partner link. You must be a distributor to call this method.
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
  /// Link state cannot change from invited to active or suspended. * Cannot
  /// send reseller_cloud_identity_id, invite_url, or name in update mask. *
  /// NOT_FOUND: ChannelPartnerLink resource not found. * INTERNAL: Any non-user
  /// error related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The updated
  /// ChannelPartnerLink resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the channel partner link to
  /// cancel. Name uses the format:
  /// accounts/{account_id}/channelPartnerLinks/{id} where {id} is the Cloud
  /// Identity ID of the partner.
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerLink> patch(
    GoogleCloudChannelV1UpdateChannelPartnerLinkRequest request,
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
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource {
  final commons.ApiRequester _requester;

  AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a ChannelPartnerRepricingConfig.
  ///
  /// Call this method to set modifications for a specific ChannelPartner's
  /// bill. You can only create configs if the
  /// RepricingConfig.effective_invoice_month is a future month. If needed, you
  /// can create a config for the current month, with some restrictions. When
  /// creating a config for a future month, make sure there are no existing
  /// configs for that RepricingConfig.effective_invoice_month. The following
  /// restrictions are for creating configs in the current month. * This
  /// functionality is reserved for recovering from an erroneous config, and
  /// should not be used for regular business cases. * The new config will not
  /// modify exports used with other configs. Changes to the config may be
  /// immediate, but may take up to 24 hours. * There is a limit of ten configs
  /// for any ChannelPartner or RepricingConfig.effective_invoice_month. * The
  /// contained ChannelPartnerRepricingConfig.repricing_config vaule must be
  /// different from the value used in the current config for a ChannelPartner.
  /// Possible Error Codes: * PERMISSION_DENIED: If the account making the
  /// request and the account being queried are different. * INVALID_ARGUMENT:
  /// Missing or invalid required parameters in the request. Also displays if
  /// the updated config is for the current month or past months. * NOT_FOUND:
  /// The ChannelPartnerRepricingConfig specified does not exist or is not
  /// associated with the given account. * INTERNAL: Any non-user error related
  /// to technical issues in the backend. In this case, contact Cloud Channel
  /// support. Return Value: If successful, the updated
  /// ChannelPartnerRepricingConfig resource, otherwise returns an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the ChannelPartner that will
  /// receive the repricing config. Parent uses the format:
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerRepricingConfig> create(
    GoogleCloudChannelV1ChannelPartnerRepricingConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/channelPartnerRepricingConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given ChannelPartnerRepricingConfig permanently.
  ///
  /// You can only delete configs if their
  /// RepricingConfig.effective_invoice_month is set to a date after the current
  /// month. Possible error codes: * PERMISSION_DENIED: The account making the
  /// request does not own this customer. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. * FAILED_PRECONDITION: The
  /// ChannelPartnerRepricingConfig is active or in the past. * NOT_FOUND: No
  /// ChannelPartnerRepricingConfig found for the name in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the channel partner repricing
  /// config rule to delete.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/channelPartnerRepricingConfigs/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about how a Distributor modifies their bill before
  /// sending it to a ChannelPartner.
  ///
  /// Possible Error Codes: * PERMISSION_DENIED: If the account making the
  /// request and the account being queried are different. * NOT_FOUND: The
  /// ChannelPartnerRepricingConfig was not found. * INTERNAL: Any non-user
  /// error related to technical issues in the backend. In this case, contact
  /// Cloud Channel support. Return Value: If successful, the
  /// ChannelPartnerRepricingConfig resource, otherwise returns an error.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ChannelPartnerRepricingConfig
  /// Format:
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/channelPartnerRepricingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerRepricingConfig> get(
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
    return GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about how a Reseller modifies their bill before sending
  /// it to a ChannelPartner.
  ///
  /// Possible Error Codes: * PERMISSION_DENIED: If the account making the
  /// request and the account being queried are different. * NOT_FOUND: The
  /// ChannelPartnerRepricingConfig specified does not exist or is not
  /// associated with the given account. * INTERNAL: Any non-user error related
  /// to technical issues in the backend. In this case, contact Cloud Channel
  /// support. Return Value: If successful, the ChannelPartnerRepricingConfig
  /// resources. The data for each resource is displayed in the ascending order
  /// of: * channel partner ID * RepricingConfig.effective_invoice_month *
  /// ChannelPartnerRepricingConfig.update_time If unsuccessful, returns an
  /// error.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the account's
  /// ChannelPartnerLink. Parent uses the format:
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}. Supports
  /// accounts/{account_id}/channelPartnerLinks/- to retrieve configs for all
  /// channel partners.
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for
  /// \[CloudChannelService.ListChannelPartnerRepricingConfigs\] results
  /// (channel_partner_link only). You can use this filter when you support a
  /// BatchGet-like query. To use the filter, you must set
  /// `parent=accounts/{account_id}/channelPartnerLinks/-`. Example:
  /// `channel_partner_link = accounts/account_id/channelPartnerLinks/c1` OR
  /// `channel_partner_link = accounts/account_id/channelPartnerLinks/c2`.
  ///
  /// [pageSize] - Optional. The maximum number of repricing configs to return.
  /// The service may return fewer than this value. If unspecified, returns a
  /// maximum of 50 rules. The maximum value is 100; values above 100 will be
  /// coerced to 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results beyond the
  /// first page. Obtained through
  /// ListChannelPartnerRepricingConfigsResponse.next_page_token of the previous
  /// CloudChannelService.ListChannelPartnerRepricingConfigs call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse>
      list(
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

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/channelPartnerRepricingConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
        .fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a ChannelPartnerRepricingConfig.
  ///
  /// Call this method to set modifications for a specific ChannelPartner's
  /// bill. This method overwrites the existing CustomerRepricingConfig. You can
  /// only update configs if the RepricingConfig.effective_invoice_month is a
  /// future month. To make changes to configs for the current month, use
  /// CreateChannelPartnerRepricingConfig, taking note of its restrictions. You
  /// cannot update the RepricingConfig.effective_invoice_month. When updating a
  /// config in the future: * This config must already exist. Possible Error
  /// Codes: * PERMISSION_DENIED: If the account making the request and the
  /// account being queried are different. * INVALID_ARGUMENT: Missing or
  /// invalid required parameters in the request. Also displays if the updated
  /// config is for the current month or past months. * NOT_FOUND: The
  /// ChannelPartnerRepricingConfig specified does not exist or is not
  /// associated with the given account. * INTERNAL: Any non-user error related
  /// to technical issues in the backend. In this case, contact Cloud Channel
  /// support. Return Value: If successful, the updated
  /// ChannelPartnerRepricingConfig resource, otherwise returns an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the ChannelPartnerRepricingConfig.
  /// Format:
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/channelPartnerRepricingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ChannelPartnerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ChannelPartnerRepricingConfig> patch(
    GoogleCloudChannelV1ChannelPartnerRepricingConfig request,
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
    return GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsChannelPartnerLinksCustomersResource {
  final commons.ApiRequester _requester;

  AccountsChannelPartnerLinksCustomersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Customer resource under the reseller or distributor account.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
  /// Domain field value doesn't match the primary email domain. Return value:
  /// The newly created Customer resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of reseller account in which to
  /// create the customer. Parent uses the format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> create(
    GoogleCloudChannelV1Customer request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given Customer permanently.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The account making the request
  /// does not own this customer. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. * FAILED_PRECONDITION: The customer has
  /// existing entitlements. * NOT_FOUND: No Customer resource found for the
  /// name in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the customer to delete.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/customers/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested Customer resource.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: The customer resource doesn't exist. Usually the result of an
  /// invalid name parameter. Return value: The Customer resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the customer to retrieve. Name
  /// uses the format: accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> get(
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
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports a Customer from the Cloud Identity associated with the provided
  /// Cloud Identity ID or domain before a TransferEntitlements call.
  ///
  /// If a linked Customer already exists and overwrite_if_exists is true, it
  /// will update that Customer's data. Possible error codes: *
  /// PERMISSION_DENIED: The reseller account making the request is different
  /// from the reseller account in the API request. * NOT_FOUND: Cloud Identity
  /// doesn't exist or was deleted. * INVALID_ARGUMENT: Required parameters are
  /// missing, or the auth_token is expired or invalid. * ALREADY_EXISTS: A
  /// customer already exists and has conflicting critical fields. Requires an
  /// overwrite. Return value: The Customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's account. Parent
  /// takes the format: accounts/{account_id} or
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> import(
    GoogleCloudChannelV1ImportCustomerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Customers.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid.
  /// Return value: List of Customers, or an empty list if there are no
  /// customers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller account to list
  /// customers from. Parent uses the format: accounts/{account_id}.
  /// Value must have pattern `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters applied to the
  /// \[CloudChannelService.ListCustomers\] results. See
  /// https://cloud.google.com/channel/docs/concepts/google-cloud/filter-customers
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of customers to return. The
  /// service may return fewer than this value. If unspecified, returns at most
  /// 10 customers. The maximum value is 50.
  ///
  /// [pageToken] - Optional. A token identifying a page of results other than
  /// the first page. Obtained through ListCustomersResponse.next_page_token of
  /// the previous CloudChannelService.ListCustomers call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListCustomersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListCustomersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListCustomersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Customer resource for the reseller or distributor.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: No Customer resource found for the name in the request. Return
  /// value: The updated Customer resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the customer. Format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/channelPartnerLinks/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask that applies to the resource. Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> patch(
    GoogleCloudChannelV1Customer request,
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
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomersResource {
  final commons.ApiRequester _requester;

  AccountsCustomersCustomerRepricingConfigsResource
      get customerRepricingConfigs =>
          AccountsCustomersCustomerRepricingConfigsResource(_requester);
  AccountsCustomersEntitlementsResource get entitlements =>
      AccountsCustomersEntitlementsResource(_requester);

  AccountsCustomersResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Customer resource under the reseller or distributor account.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
  /// Domain field value doesn't match the primary email domain. Return value:
  /// The newly created Customer resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of reseller account in which to
  /// create the customer. Parent uses the format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> create(
    GoogleCloudChannelV1Customer request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given Customer permanently.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The account making the request
  /// does not own this customer. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. * FAILED_PRECONDITION: The customer has
  /// existing entitlements. * NOT_FOUND: No Customer resource found for the
  /// name in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the customer to delete.
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested Customer resource.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: The customer resource doesn't exist. Usually the result of an
  /// invalid name parameter. Return value: The Customer resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the customer to retrieve. Name
  /// uses the format: accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> get(
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
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports a Customer from the Cloud Identity associated with the provided
  /// Cloud Identity ID or domain before a TransferEntitlements call.
  ///
  /// If a linked Customer already exists and overwrite_if_exists is true, it
  /// will update that Customer's data. Possible error codes: *
  /// PERMISSION_DENIED: The reseller account making the request is different
  /// from the reseller account in the API request. * NOT_FOUND: Cloud Identity
  /// doesn't exist or was deleted. * INVALID_ARGUMENT: Required parameters are
  /// missing, or the auth_token is expired or invalid. * ALREADY_EXISTS: A
  /// customer already exists and has conflicting critical fields. Requires an
  /// overwrite. Return value: The Customer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's account. Parent
  /// takes the format: accounts/{account_id} or
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> import(
    GoogleCloudChannelV1ImportCustomerRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List Customers.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid.
  /// Return value: List of Customers, or an empty list if there are no
  /// customers.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller account to list
  /// customers from. Parent uses the format: accounts/{account_id}.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters applied to the
  /// \[CloudChannelService.ListCustomers\] results. See
  /// https://cloud.google.com/channel/docs/concepts/google-cloud/filter-customers
  /// for more information.
  ///
  /// [pageSize] - Optional. The maximum number of customers to return. The
  /// service may return fewer than this value. If unspecified, returns at most
  /// 10 customers. The maximum value is 50.
  ///
  /// [pageToken] - Optional. A token identifying a page of results other than
  /// the first page. Obtained through ListCustomersResponse.next_page_token of
  /// the previous CloudChannelService.ListCustomers call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListCustomersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListCustomersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListCustomersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the following: * Offers that you can purchase for a customer.
  ///
  /// * Offers that you can change for an entitlement. Possible error codes: *
  /// PERMISSION_DENIED: The customer doesn't belong to the reseller *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The resource name of the customer to list Offers
  /// for. Format: accounts/{account_id}/customers/{customer_id}.
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [changeOfferPurchase_entitlement] - Required. Resource name of the
  /// entitlement. Format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  ///
  /// [changeOfferPurchase_newSku] - Optional. Resource name of the new target
  /// SKU. Provide this SKU when upgrading or downgrading an entitlement.
  /// Format: products/{product_id}/skus/{sku_id}
  ///
  /// [createEntitlementPurchase_sku] - Required. SKU that the result should be
  /// restricted to. Format: products/{product_id}/skus/{sku_id}.
  ///
  /// [languageCode] - Optional. The BCP-47 language code. For example, "en-US".
  /// The response will localize in the corresponding language code, if
  /// specified. The default value is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, returns at most 100 Offers. The
  /// maximum value is 1000; the server will coerce values above 1000.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListPurchasableOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListPurchasableOffersResponse>
      listPurchasableOffers(
    core.String customer, {
    core.String? changeOfferPurchase_entitlement,
    core.String? changeOfferPurchase_newSku,
    core.String? createEntitlementPurchase_sku,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (changeOfferPurchase_entitlement != null)
        'changeOfferPurchase.entitlement': [changeOfferPurchase_entitlement],
      if (changeOfferPurchase_newSku != null)
        'changeOfferPurchase.newSku': [changeOfferPurchase_newSku],
      if (createEntitlementPurchase_sku != null)
        'createEntitlementPurchase.sku': [createEntitlementPurchase_sku],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$customer') + ':listPurchasableOffers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the following: * SKUs that you can purchase for a customer * SKUs
  /// that you can upgrade or downgrade for an entitlement.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. The resource name of the customer to list SKUs for.
  /// Format: accounts/{account_id}/customers/{customer_id}.
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [changeOfferPurchase_changeType] - Required. Change Type for the
  /// entitlement.
  /// Possible string values are:
  /// - "CHANGE_TYPE_UNSPECIFIED" : Not used.
  /// - "UPGRADE" : SKU is an upgrade on the current entitlement.
  /// - "DOWNGRADE" : SKU is a downgrade on the current entitlement.
  ///
  /// [changeOfferPurchase_entitlement] - Required. Resource name of the
  /// entitlement. Format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  ///
  /// [createEntitlementPurchase_product] - Required. List SKUs belonging to
  /// this Product. Format: products/{product_id}. Supports products/- to
  /// retrieve SKUs for all products.
  ///
  /// [languageCode] - Optional. The BCP-47 language code. For example, "en-US".
  /// The response will localize in the corresponding language code, if
  /// specified. The default value is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, returns at most 100 SKUs. The
  /// maximum value is 1000; the server will coerce values above 1000.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListPurchasableSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListPurchasableSkusResponse>
      listPurchasableSkus(
    core.String customer, {
    core.String? changeOfferPurchase_changeType,
    core.String? changeOfferPurchase_entitlement,
    core.String? createEntitlementPurchase_product,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (changeOfferPurchase_changeType != null)
        'changeOfferPurchase.changeType': [changeOfferPurchase_changeType],
      if (changeOfferPurchase_entitlement != null)
        'changeOfferPurchase.entitlement': [changeOfferPurchase_entitlement],
      if (createEntitlementPurchase_product != null)
        'createEntitlementPurchase.product': [
          createEntitlementPurchase_product
        ],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$customer') + ':listPurchasableSkus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing Customer resource for the reseller or distributor.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The reseller account making the
  /// request is different from the reseller account in the API request. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: No Customer resource found for the name in the request. Return
  /// value: The updated Customer resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the customer. Format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask that applies to the resource. Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Customer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Customer> patch(
    GoogleCloudChannelV1Customer request,
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
    return GoogleCloudChannelV1Customer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Cloud Identity for the given customer using the customer's
  /// information, or the information provided here.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid. * NOT_FOUND: The customer was not found. * ALREADY_EXISTS: The
  /// customer's primary email already exists. Retry after changing the
  /// customer's primary contact email. * INTERNAL: Any non-user error related
  /// to a technical issue in the backend. Contact Cloud Channel support. *
  /// UNKNOWN: Any non-user error related to a technical issue in the backend.
  /// Contact Cloud Channel support. Return value: The ID of a long-running
  /// operation. To get the results of the operation, call the GetOperation
  /// method of CloudChannelOperationsService. The Operation metadata contains
  /// an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [customer] - Required. Resource name of the customer. Format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> provisionCloudIdentity(
    GoogleCloudChannelV1ProvisionCloudIdentityRequest request,
    core.String customer, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$customer') + ':provisionCloudIdentity';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Transfers customer entitlements to new reseller.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid. * NOT_FOUND: The customer or offer resource was not found. *
  /// ALREADY_EXISTS: The SKU was already transferred for the customer. *
  /// CONDITION_NOT_MET or FAILED_PRECONDITION: * The SKU requires domain
  /// verification to transfer, but the domain is not verified. * An Add-On SKU
  /// (example, Vault or Drive) is missing the pre-requisite SKU (example, G
  /// Suite Basic). * (Developer accounts only) Reseller and resold domain must
  /// meet the following naming requirements: * Domain names must start with
  /// goog-test. * Domain names must include the reseller domain. * Specify all
  /// transferring entitlements. * INTERNAL: Any non-user error related to a
  /// technical issue in the backend. Contact Cloud Channel support. * UNKNOWN:
  /// Any non-user error related to a technical issue in the backend. Contact
  /// Cloud Channel support. Return value: The ID of a long-running operation.
  /// To get the results of the operation, call the GetOperation method of
  /// CloudChannelOperationsService. The Operation metadata will contain an
  /// instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's customer account
  /// that will receive transferred entitlements. Parent uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> transferEntitlements(
    GoogleCloudChannelV1TransferEntitlementsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':transferEntitlements';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Transfers customer entitlements from their current reseller to Google.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid. * NOT_FOUND: The customer or offer resource was not found. *
  /// ALREADY_EXISTS: The SKU was already transferred for the customer. *
  /// CONDITION_NOT_MET or FAILED_PRECONDITION: * The SKU requires domain
  /// verification to transfer, but the domain is not verified. * An Add-On SKU
  /// (example, Vault or Drive) is missing the pre-requisite SKU (example, G
  /// Suite Basic). * (Developer accounts only) Reseller and resold domain must
  /// meet the following naming requirements: * Domain names must start with
  /// goog-test. * Domain names must include the reseller domain. * INTERNAL:
  /// Any non-user error related to a technical issue in the backend. Contact
  /// Cloud Channel support. * UNKNOWN: Any non-user error related to a
  /// technical issue in the backend. Contact Cloud Channel support. Return
  /// value: The ID of a long-running operation. To get the results of the
  /// operation, call the GetOperation method of CloudChannelOperationsService.
  /// The response will contain google.protobuf.Empty on success. The Operation
  /// metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's customer account
  /// where the entitlements transfer from. Parent uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> transferEntitlementsToGoogle(
    GoogleCloudChannelV1TransferEntitlementsToGoogleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        ':transferEntitlementsToGoogle';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomersCustomerRepricingConfigsResource {
  final commons.ApiRequester _requester;

  AccountsCustomersCustomerRepricingConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a CustomerRepricingConfig.
  ///
  /// Call this method to set modifications for a specific customer's bill. You
  /// can only create configs if the RepricingConfig.effective_invoice_month is
  /// a future month. If needed, you can create a config for the current month,
  /// with some restrictions. When creating a config for a future month, make
  /// sure there are no existing configs for that
  /// RepricingConfig.effective_invoice_month. The following restrictions are
  /// for creating configs in the current month. * This functionality is
  /// reserved for recovering from an erroneous config, and should not be used
  /// for regular business cases. * The new config will not modify exports used
  /// with other configs. Changes to the config may be immediate, but may take
  /// up to 24 hours. * There is a limit of ten configs for any
  /// RepricingConfig.EntitlementGranularity.entitlement or
  /// RepricingConfig.effective_invoice_month. * The contained
  /// CustomerRepricingConfig.repricing_config vaule must be different from the
  /// value used in the current config for a
  /// RepricingConfig.EntitlementGranularity.entitlement. Possible Error Codes:
  /// * PERMISSION_DENIED: If the account making the request and the account
  /// being queried are different. * INVALID_ARGUMENT: Missing or invalid
  /// required parameters in the request. Also displays if the updated config is
  /// for the current month or past months. * NOT_FOUND: The
  /// CustomerRepricingConfig specified does not exist or is not associated with
  /// the given account. * INTERNAL: Any non-user error related to technical
  /// issues in the backend. In this case, contact Cloud Channel support. Return
  /// Value: If successful, the updated CustomerRepricingConfig resource,
  /// otherwise returns an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the customer that will receive
  /// this repricing config. Parent uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1CustomerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1CustomerRepricingConfig> create(
    GoogleCloudChannelV1CustomerRepricingConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customerRepricingConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the given CustomerRepricingConfig permanently.
  ///
  /// You can only delete configs if their
  /// RepricingConfig.effective_invoice_month is set to a date after the current
  /// month. Possible error codes: * PERMISSION_DENIED: The account making the
  /// request does not own this customer. * INVALID_ARGUMENT: Required request
  /// parameters are missing or invalid. * FAILED_PRECONDITION: The
  /// CustomerRepricingConfig is active or in the past. * NOT_FOUND: No
  /// CustomerRepricingConfig found for the name in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the customer repricing config rule
  /// to delete. Format:
  /// accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/customerRepricingConfigs/\[^/\]+$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about how a Reseller modifies their bill before sending
  /// it to a Customer.
  ///
  /// Possible Error Codes: * PERMISSION_DENIED: If the account making the
  /// request and the account being queried are different. * NOT_FOUND: The
  /// CustomerRepricingConfig was not found. * INTERNAL: Any non-user error
  /// related to technical issues in the backend. In this case, contact Cloud
  /// Channel support. Return Value: If successful, the CustomerRepricingConfig
  /// resource, otherwise returns an error.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the CustomerRepricingConfig.
  /// Format:
  /// accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/customerRepricingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1CustomerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1CustomerRepricingConfig> get(
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
    return GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about how a Reseller modifies their bill before sending
  /// it to a Customer.
  ///
  /// Possible Error Codes: * PERMISSION_DENIED: If the account making the
  /// request and the account being queried are different. * NOT_FOUND: The
  /// CustomerRepricingConfig specified does not exist or is not associated with
  /// the given account. * INTERNAL: Any non-user error related to technical
  /// issues in the backend. In this case, contact Cloud Channel support. Return
  /// Value: If successful, the CustomerRepricingConfig resources. The data for
  /// each resource is displayed in the ascending order of: * customer ID *
  /// RepricingConfig.EntitlementGranularity.entitlement *
  /// RepricingConfig.effective_invoice_month *
  /// CustomerRepricingConfig.update_time If unsuccessful, returns an error.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the customer. Parent uses the
  /// format: accounts/{account_id}/customers/{customer_id}. Supports
  /// accounts/{account_id}/customers/- to retrieve configs for all customers.
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter for
  /// \[CloudChannelService.ListCustomerRepricingConfigs\] results (customer
  /// only). You can use this filter when you support a BatchGet-like query. To
  /// use the filter, you must set `parent=accounts/{account_id}/customers/-`.
  /// Example: customer = accounts/account_id/customers/c1 OR customer =
  /// accounts/account_id/customers/c2.
  ///
  /// [pageSize] - Optional. The maximum number of repricing configs to return.
  /// The service may return fewer than this value. If unspecified, returns a
  /// maximum of 50 rules. The maximum value is 100; values above 100 will be
  /// coerced to 100.
  ///
  /// [pageToken] - Optional. A token identifying a page of results beyond the
  /// first page. Obtained through
  /// ListCustomerRepricingConfigsResponse.next_page_token of the previous
  /// CloudChannelService.ListCustomerRepricingConfigs call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudChannelV1ListCustomerRepricingConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListCustomerRepricingConfigsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customerRepricingConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListCustomerRepricingConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a CustomerRepricingConfig.
  ///
  /// Call this method to set modifications for a specific customer's bill. This
  /// method overwrites the existing CustomerRepricingConfig. You can only
  /// update configs if the RepricingConfig.effective_invoice_month is a future
  /// month. To make changes to configs for the current month, use
  /// CreateCustomerRepricingConfig, taking note of its restrictions. You cannot
  /// update the RepricingConfig.effective_invoice_month. When updating a config
  /// in the future: * This config must already exist. Possible Error Codes: *
  /// PERMISSION_DENIED: If the account making the request and the account being
  /// queried are different. * INVALID_ARGUMENT: Missing or invalid required
  /// parameters in the request. Also displays if the updated config is for the
  /// current month or past months. * NOT_FOUND: The CustomerRepricingConfig
  /// specified does not exist or is not associated with the given account. *
  /// INTERNAL: Any non-user error related to technical issues in the backend.
  /// In this case, contact Cloud Channel support. Return Value: If successful,
  /// the updated CustomerRepricingConfig resource, otherwise returns an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the CustomerRepricingConfig.
  /// Format:
  /// accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/customerRepricingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1CustomerRepricingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1CustomerRepricingConfig> patch(
    GoogleCloudChannelV1CustomerRepricingConfig request,
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
    return GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomersEntitlementsResource {
  final commons.ApiRequester _requester;

  AccountsCustomersEntitlementsResource(commons.ApiRequester client)
      : _requester = client;

  /// Activates a previously suspended entitlement.
  ///
  /// Entitlements suspended for pending ToS acceptance can't be activated using
  /// this method. An entitlement activation is a long-running operation and it
  /// updates the state of the customer entitlement. Possible error codes: *
  /// PERMISSION_DENIED: The reseller account making the request is different
  /// from the reseller account in the API request. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: Entitlement
  /// resource not found. * SUSPENSION_NOT_RESELLER_INITIATED: Can only activate
  /// reseller-initiated suspensions and entitlements that have accepted the
  /// TOS. * NOT_SUSPENDED: Can only activate suspended entitlements not in an
  /// ACTIVE state. * INTERNAL: Any non-user error related to a technical issue
  /// in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user
  /// error related to a technical issue in the backend. Contact Cloud Channel
  /// support. Return value: The ID of a long-running operation. To get the
  /// results of the operation, call the GetOperation method of
  /// CloudChannelOperationsService. The Operation metadata will contain an
  /// instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement to activate. Name
  /// uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> activate(
    GoogleCloudChannelV1ActivateEntitlementRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a previously fulfilled entitlement.
  ///
  /// An entitlement cancellation is a long-running operation. Possible error
  /// codes: * PERMISSION_DENIED: The reseller account making the request is
  /// different from the reseller account in the API request. *
  /// FAILED_PRECONDITION: There are Google Cloud projects linked to the Google
  /// Cloud entitlement's Cloud Billing subaccount. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: Entitlement
  /// resource not found. * DELETION_TYPE_NOT_ALLOWED: Cancel is only allowed
  /// for Google Workspace add-ons, or entitlements for Google Cloud's
  /// development platform. * INTERNAL: Any non-user error related to a
  /// technical issue in the backend. Contact Cloud Channel support. * UNKNOWN:
  /// Any non-user error related to a technical issue in the backend. Contact
  /// Cloud Channel support. Return value: The ID of a long-running operation.
  /// To get the results of the operation, call the GetOperation method of
  /// CloudChannelOperationsService. The response will contain
  /// google.protobuf.Empty on success. The Operation metadata will contain an
  /// instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement to cancel. Name
  /// uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> cancel(
    GoogleCloudChannelV1CancelEntitlementRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Offer for an existing customer entitlement.
  ///
  /// An entitlement update is a long-running operation and it updates the
  /// entitlement as a result of fulfillment. Possible error codes: *
  /// PERMISSION_DENIED: The customer doesn't belong to the reseller. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: Offer or Entitlement resource not found. * INTERNAL: Any
  /// non-user error related to a technical issue in the backend. Contact Cloud
  /// Channel support. * UNKNOWN: Any non-user error related to a technical
  /// issue in the backend. Contact Cloud Channel support. Return value: The ID
  /// of a long-running operation. To get the results of the operation, call the
  /// GetOperation method of CloudChannelOperationsService. The Operation
  /// metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement to update. Name
  /// uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> changeOffer(
    GoogleCloudChannelV1ChangeOfferRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':changeOffer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Change parameters of the entitlement.
  ///
  /// An entitlement update is a long-running operation and it updates the
  /// entitlement as a result of fulfillment. Possible error codes: *
  /// PERMISSION_DENIED: The customer doesn't belong to the reseller. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. For
  /// example, the number of seats being changed is greater than the allowed
  /// number of max seats, or decreasing seats for a commitment based plan. *
  /// NOT_FOUND: Entitlement resource not found. * INTERNAL: Any non-user error
  /// related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The ID of a
  /// long-running operation. To get the results of the operation, call the
  /// GetOperation method of CloudChannelOperationsService. The Operation
  /// metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to update. Name uses the
  /// format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> changeParameters(
    GoogleCloudChannelV1ChangeParametersRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':changeParameters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the renewal settings for an existing customer entitlement.
  ///
  /// An entitlement update is a long-running operation and it updates the
  /// entitlement as a result of fulfillment. Possible error codes: *
  /// PERMISSION_DENIED: The customer doesn't belong to the reseller. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: Entitlement resource not found. * NOT_COMMITMENT_PLAN: Renewal
  /// Settings are only applicable for a commitment plan. Can't enable or
  /// disable renewals for non-commitment plans. * INTERNAL: Any non-user error
  /// related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The ID of a
  /// long-running operation. To get the results of the operation, call the
  /// GetOperation method of CloudChannelOperationsService. The Operation
  /// metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to update. Name uses the
  /// format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> changeRenewalSettings(
    GoogleCloudChannelV1ChangeRenewalSettingsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':changeRenewalSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an entitlement for a customer.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: * Required request parameters are
  /// missing or invalid. * There is already a customer entitlement for a SKU
  /// from the same product family. * INVALID_VALUE: Make sure the OfferId is
  /// valid. If it is, contact Google Channel support for further
  /// troubleshooting. * NOT_FOUND: The customer or offer resource was not
  /// found. * ALREADY_EXISTS: * The SKU was already purchased for the customer.
  /// * The customer's primary email already exists. Retry after changing the
  /// customer's primary contact email. * CONDITION_NOT_MET or
  /// FAILED_PRECONDITION: * The domain required for purchasing a SKU has not
  /// been verified. * A pre-requisite SKU required to purchase an Add-On SKU is
  /// missing. For example, Google Workspace Business Starter is required to
  /// purchase Vault or Drive. * (Developer accounts only) Reseller and resold
  /// domain must meet the following naming requirements: * Domain names must
  /// start with goog-test. * Domain names must include the reseller domain. *
  /// INTERNAL: Any non-user error related to a technical issue in the backend.
  /// Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a
  /// technical issue in the backend. Contact Cloud Channel support. Return
  /// value: The ID of a long-running operation. To get the results of the
  /// operation, call the GetOperation method of CloudChannelOperationsService.
  /// The Operation metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's customer account
  /// in which to create the entitlement. Parent uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleCloudChannelV1CreateEntitlementRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested Entitlement resource.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid. * NOT_FOUND: The customer entitlement was not found. Return
  /// value: The requested Entitlement resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement to retrieve. Name
  /// uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Entitlement].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Entitlement> get(
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
    return GoogleCloudChannelV1Entitlement.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Entitlements belonging to a customer.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to
  /// the reseller. * INVALID_ARGUMENT: Required request parameters are missing
  /// or invalid. Return value: A list of the customer's Entitlements.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller's customer account
  /// to list entitlements for. Parent uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  /// Value must have pattern `^accounts/\[^/\]+/customers/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, return at most 50 entitlements.
  /// The maximum value is 100; the server will coerce values above 100.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page. Obtained using ListEntitlementsResponse.next_page_token of the
  /// previous CloudChannelService.ListEntitlements call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListEntitlementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListEntitlementsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListEntitlementsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the requested Offer resource.
  ///
  /// Possible error codes: * PERMISSION_DENIED: The entitlement doesn't belong
  /// to the reseller. * INVALID_ARGUMENT: Required request parameters are
  /// missing or invalid. * NOT_FOUND: Entitlement or offer was not found.
  /// Return value: The Offer resource.
  ///
  /// Request parameters:
  ///
  /// [entitlement] - Required. The resource name of the entitlement to retrieve
  /// the Offer. Entitlement uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1Offer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1Offer> lookupOffer(
    core.String entitlement, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$entitlement') + ':lookupOffer';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1Offer.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts paid service for a trial entitlement.
  ///
  /// Starts paid service for a trial entitlement immediately. This method is
  /// only applicable if a plan is set up for a trial entitlement but has some
  /// trial days remaining. Possible error codes: * PERMISSION_DENIED: The
  /// customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required
  /// request parameters are missing or invalid. * NOT_FOUND: Entitlement
  /// resource not found. * FAILED_PRECONDITION/NOT_IN_TRIAL: This method only
  /// works for entitlement on trial plans. * INTERNAL: Any non-user error
  /// related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The ID of a
  /// long-running operation. To get the results of the operation, call the
  /// GetOperation method of CloudChannelOperationsService. The Operation
  /// metadata will contain an instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the entitlement to start a paid service
  /// for. Name uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> startPaidService(
    GoogleCloudChannelV1StartPaidServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':startPaidService';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Suspends a previously fulfilled entitlement.
  ///
  /// An entitlement suspension is a long-running operation. Possible error
  /// codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: Entitlement resource not found. * NOT_ACTIVE: Entitlement is
  /// not active. * INTERNAL: Any non-user error related to a technical issue in
  /// the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error
  /// related to a technical issue in the backend. Contact Cloud Channel
  /// support. Return value: The ID of a long-running operation. To get the
  /// results of the operation, call the GetOperation method of
  /// CloudChannelOperationsService. The Operation metadata will contain an
  /// instance of OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the entitlement to suspend. Name
  /// uses the format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/customers/\[^/\]+/entitlements/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> suspend(
    GoogleCloudChannelV1SuspendEntitlementRequest request,
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsOffersResource {
  final commons.ApiRequester _requester;

  AccountsOffersResource(commons.ApiRequester client) : _requester = client;

  /// Lists the Offers the reseller can sell.
  ///
  /// Possible error codes: * INVALID_ARGUMENT: Required request parameters are
  /// missing or invalid.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the reseller account from which
  /// to list Offers. Parent uses the format: accounts/{account_id}.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. The expression to filter results by name (name of the
  /// Offer), sku.name (name of the SKU), or sku.product.name (name of the
  /// Product). Example 1: sku.product.name=products/p1 AND
  /// sku.name!=products/p1/skus/s1 Example 2: name=accounts/a1/offers/o1
  ///
  /// [languageCode] - Optional. The BCP-47 language code. For example, "en-US".
  /// The response will localize in the corresponding language code, if
  /// specified. The default value is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, returns at most 500 Offers. The
  /// maximum value is 1000; the server will coerce values above 1000.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListOffersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListOffersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/offers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListOffersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportJobsResource {
  final commons.ApiRequester _requester;

  AccountsReportJobsResource(commons.ApiRequester client) : _requester = client;

  /// Retrieves data generated by CloudChannelReportsService.RunReportJob.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [reportJob] - Required. The report job created by
  /// CloudChannelReportsService.RunReportJob. Report_job uses the format:
  /// accounts/{account_id}/reportJobs/{report_job_id}
  /// Value must have pattern `^accounts/\[^/\]+/reportJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1FetchReportResultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1FetchReportResultsResponse>
      fetchReportResults(
    GoogleCloudChannelV1FetchReportResultsRequest request,
    core.String reportJob, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$reportJob') + ':fetchReportResults';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1FetchReportResultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportsResource {
  final commons.ApiRequester _requester;

  AccountsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Lists the reports that RunReportJob can run.
  ///
  /// These reports include an ID, a description, and the list of columns that
  /// will be in the result.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the partner account to list
  /// available reports for. Parent uses the format: accounts/{account_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [languageCode] - Optional. The BCP-47 language code, such as "en-US". If
  /// specified, the response is localized to the corresponding language code if
  /// the original data sources support it. Default is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size of the report. The server might
  /// return fewer results than requested. If unspecified, returns 20 reports.
  /// The maximum value is 100.
  ///
  /// [pageToken] - Optional. A token that specifies a page of results beyond
  /// the first page. Obtained through ListReportsResponse.next_page_token of
  /// the previous CloudChannelReportsService.ListReports call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListReportsResponse> list(
    core.String parent, {
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Begins generation of data for a given report.
  ///
  /// The report identifier is a UID (for example, `613bf59q`). Possible error
  /// codes: * PERMISSION_DENIED: The user doesn't have access to this report. *
  /// INVALID_ARGUMENT: Required request parameters are missing or invalid. *
  /// NOT_FOUND: The report identifier was not found. * INTERNAL: Any non-user
  /// error related to a technical issue in the backend. Contact Cloud Channel
  /// support. * UNKNOWN: Any non-user error related to a technical issue in the
  /// backend. Contact Cloud Channel support. Return value: The ID of a
  /// long-running operation. To get the results of the operation, call the
  /// GetOperation method of CloudChannelOperationsService. The Operation
  /// metadata contains an instance of OperationMetadata. To get the results of
  /// report generation, call CloudChannelReportsService.FetchReportResults with
  /// the RunReportJobResponse.report_job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The report's resource name. Specifies the account and
  /// report used to generate report data. The report_id identifier is a UID
  /// (for example, `613bf59q`). Name uses the format:
  /// accounts/{account_id}/reports/{report_id}
  /// Value must have pattern `^accounts/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> run(
    GoogleCloudChannelV1RunReportJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
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
  async.Future<GoogleProtobufEmpty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^operations/.*$`.
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^operations$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProductsResource {
  final commons.ApiRequester _requester;

  ProductsSkusResource get skus => ProductsSkusResource(_requester);

  ProductsResource(commons.ApiRequester client) : _requester = client;

  /// Lists the Products the reseller is authorized to sell.
  ///
  /// Possible error codes: * INVALID_ARGUMENT: Required request parameters are
  /// missing or invalid.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The resource name of the reseller account. Format:
  /// accounts/{account_id}.
  ///
  /// [languageCode] - Optional. The BCP-47 language code. For example, "en-US".
  /// The response will localize in the corresponding language code, if
  /// specified. The default value is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, returns at most 100 Products. The
  /// maximum value is 1000; the server will coerce values above 1000.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListProductsResponse> list({
    core.String? account,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (account != null) 'account': [account],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListProductsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProductsSkusResource {
  final commons.ApiRequester _requester;

  ProductsSkusResource(commons.ApiRequester client) : _requester = client;

  /// Lists the SKUs for a product the reseller is authorized to sell.
  ///
  /// Possible error codes: * INVALID_ARGUMENT: Required request parameters are
  /// missing or invalid.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the Product to list SKUs for.
  /// Parent uses the format: products/{product_id}. Supports products/- to
  /// retrieve SKUs for all products.
  /// Value must have pattern `^products/\[^/\]+$`.
  ///
  /// [account] - Required. Resource name of the reseller. Format:
  /// accounts/{account_id}.
  ///
  /// [languageCode] - Optional. The BCP-47 language code. For example, "en-US".
  /// The response will localize in the corresponding language code, if
  /// specified. The default value is "en-US".
  ///
  /// [pageSize] - Optional. Requested page size. Server might return fewer
  /// results than requested. If unspecified, returns at most 100 SKUs. The
  /// maximum value is 1000; the server will coerce values above 1000.
  ///
  /// [pageToken] - Optional. A token for a page of results other than the first
  /// page. Optional.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudChannelV1ListSkusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudChannelV1ListSkusResponse> list(
    core.String parent, {
    core.String? account,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (account != null) 'account': [account],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/skus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudChannelV1ListSkusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for CloudChannelService.ActivateEntitlement.
typedef GoogleCloudChannelV1ActivateEntitlementRequest = $Request01;

/// Information needed to create an Admin User for Google Workspace.
class GoogleCloudChannelV1AdminUser {
  /// Primary email of the admin user.
  core.String? email;

  /// Family name of the admin user.
  core.String? familyName;

  /// Given name of the admin user.
  core.String? givenName;

  GoogleCloudChannelV1AdminUser({
    this.email,
    this.familyName,
    this.givenName,
  });

  GoogleCloudChannelV1AdminUser.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          familyName: json_.containsKey('familyName')
              ? json_['familyName'] as core.String
              : null,
          givenName: json_.containsKey('givenName')
              ? json_['givenName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (familyName != null) 'familyName': familyName!,
        if (givenName != null) 'givenName': givenName!,
      };
}

/// Association links that an entitlement has to other entitlements.
class GoogleCloudChannelV1AssociationInfo {
  /// The name of the base entitlement, for which this entitlement is an add-on.
  core.String? baseEntitlement;

  GoogleCloudChannelV1AssociationInfo({
    this.baseEntitlement,
  });

  GoogleCloudChannelV1AssociationInfo.fromJson(core.Map json_)
      : this(
          baseEntitlement: json_.containsKey('baseEntitlement')
              ? json_['baseEntitlement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseEntitlement != null) 'baseEntitlement': baseEntitlement!,
      };
}

/// Request message for CloudChannelService.CancelEntitlement.
typedef GoogleCloudChannelV1CancelEntitlementRequest = $Request01;

/// Request message for CloudChannelService.ChangeOffer.
class GoogleCloudChannelV1ChangeOfferRequest {
  /// New Offer.
  ///
  /// Format: accounts/{account_id}/offers/{offer_id}.
  ///
  /// Required.
  core.String? offer;

  /// Parameters needed to purchase the Offer.
  ///
  /// To view the available Parameters refer to the Offer.parameter_definitions
  /// from the desired offer.
  ///
  /// Optional.
  core.List<GoogleCloudChannelV1Parameter>? parameters;

  /// Purchase order id provided by the reseller.
  ///
  /// Optional.
  core.String? purchaseOrderId;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1ChangeOfferRequest({
    this.offer,
    this.parameters,
    this.purchaseOrderId,
    this.requestId,
  });

  GoogleCloudChannelV1ChangeOfferRequest.fromJson(core.Map json_)
      : this(
          offer:
              json_.containsKey('offer') ? json_['offer'] as core.String : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseOrderId: json_.containsKey('purchaseOrderId')
              ? json_['purchaseOrderId'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offer != null) 'offer': offer!,
        if (parameters != null) 'parameters': parameters!,
        if (purchaseOrderId != null) 'purchaseOrderId': purchaseOrderId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request message for CloudChannelService.ChangeParametersRequest.
class GoogleCloudChannelV1ChangeParametersRequest {
  /// Entitlement parameters to update.
  ///
  /// You can only change editable parameters. To view the available Parameters
  /// for a request, refer to the Offer.parameter_definitions from the desired
  /// offer.
  ///
  /// Required.
  core.List<GoogleCloudChannelV1Parameter>? parameters;

  /// Purchase order ID provided by the reseller.
  ///
  /// Optional.
  core.String? purchaseOrderId;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1ChangeParametersRequest({
    this.parameters,
    this.purchaseOrderId,
    this.requestId,
  });

  GoogleCloudChannelV1ChangeParametersRequest.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseOrderId: json_.containsKey('purchaseOrderId')
              ? json_['purchaseOrderId'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (purchaseOrderId != null) 'purchaseOrderId': purchaseOrderId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request message for CloudChannelService.ChangeRenewalSettings.
class GoogleCloudChannelV1ChangeRenewalSettingsRequest {
  /// New renewal settings.
  ///
  /// Required.
  GoogleCloudChannelV1RenewalSettings? renewalSettings;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1ChangeRenewalSettingsRequest({
    this.renewalSettings,
    this.requestId,
  });

  GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(core.Map json_)
      : this(
          renewalSettings: json_.containsKey('renewalSettings')
              ? GoogleCloudChannelV1RenewalSettings.fromJson(
                  json_['renewalSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (renewalSettings != null) 'renewalSettings': renewalSettings!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Entity representing a link between distributors and their indirect resellers
/// in an n-tier resale channel.
class GoogleCloudChannelV1ChannelPartnerLink {
  /// Cloud Identity info of the channel partner (IR).
  ///
  /// Output only.
  GoogleCloudChannelV1CloudIdentityInfo? channelPartnerCloudIdentityInfo;

  /// Timestamp of when the channel partner link is created.
  ///
  /// Output only.
  core.String? createTime;

  /// URI of the web page where partner accepts the link invitation.
  ///
  /// Output only.
  core.String? inviteLinkUri;

  /// State of the channel partner link.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED" : Not used.
  /// - "INVITED" : An invitation has been sent to the reseller to create a
  /// channel partner link.
  /// - "ACTIVE" : Status when the reseller is active.
  /// - "REVOKED" : Status when the reseller has been revoked by the
  /// distributor.
  /// - "SUSPENDED" : Status when the reseller is suspended by Google or
  /// distributor.
  core.String? linkState;

  /// Resource name for the channel partner link, in the format
  /// accounts/{account_id}/channelPartnerLinks/{id}.
  ///
  /// Output only.
  core.String? name;

  /// Public identifier that a customer must use to generate a transfer token to
  /// move to this distributor-reseller combination.
  ///
  /// Output only.
  core.String? publicId;

  /// Cloud Identity ID of the linked reseller.
  ///
  /// Required.
  core.String? resellerCloudIdentityId;

  /// Timestamp of when the channel partner link is updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudChannelV1ChannelPartnerLink({
    this.channelPartnerCloudIdentityInfo,
    this.createTime,
    this.inviteLinkUri,
    this.linkState,
    this.name,
    this.publicId,
    this.resellerCloudIdentityId,
    this.updateTime,
  });

  GoogleCloudChannelV1ChannelPartnerLink.fromJson(core.Map json_)
      : this(
          channelPartnerCloudIdentityInfo:
              json_.containsKey('channelPartnerCloudIdentityInfo')
                  ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                      json_['channelPartnerCloudIdentityInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          inviteLinkUri: json_.containsKey('inviteLinkUri')
              ? json_['inviteLinkUri'] as core.String
              : null,
          linkState: json_.containsKey('linkState')
              ? json_['linkState'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publicId: json_.containsKey('publicId')
              ? json_['publicId'] as core.String
              : null,
          resellerCloudIdentityId: json_.containsKey('resellerCloudIdentityId')
              ? json_['resellerCloudIdentityId'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelPartnerCloudIdentityInfo != null)
          'channelPartnerCloudIdentityInfo': channelPartnerCloudIdentityInfo!,
        if (createTime != null) 'createTime': createTime!,
        if (inviteLinkUri != null) 'inviteLinkUri': inviteLinkUri!,
        if (linkState != null) 'linkState': linkState!,
        if (name != null) 'name': name!,
        if (publicId != null) 'publicId': publicId!,
        if (resellerCloudIdentityId != null)
          'resellerCloudIdentityId': resellerCloudIdentityId!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Configuration for how a distributor will rebill a channel partner (also
/// known as a distributor-authorized reseller).
class GoogleCloudChannelV1ChannelPartnerRepricingConfig {
  /// Resource name of the ChannelPartnerRepricingConfig.
  ///
  /// Format:
  /// accounts/{account_id}/channelPartnerLinks/{channel_partner_id}/channelPartnerRepricingConfigs/{id}.
  ///
  /// Output only.
  core.String? name;

  /// The configuration for bill modifications made by a reseller before sending
  /// it to ChannelPartner.
  ///
  /// Required.
  GoogleCloudChannelV1RepricingConfig? repricingConfig;

  /// Timestamp of an update to the repricing rule.
  ///
  /// If `update_time` is after RepricingConfig.effective_invoice_month then it
  /// indicates this was set mid-month.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudChannelV1ChannelPartnerRepricingConfig({
    this.name,
    this.repricingConfig,
    this.updateTime,
  });

  GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          repricingConfig: json_.containsKey('repricingConfig')
              ? GoogleCloudChannelV1RepricingConfig.fromJson(
                  json_['repricingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (repricingConfig != null) 'repricingConfig': repricingConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for CloudChannelService.CheckCloudIdentityAccountsExist.
class GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest {
  /// Domain to fetch for Cloud Identity account customer.
  ///
  /// Required.
  core.String? domain;

  GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest({
    this.domain,
  });

  GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest.fromJson(
      core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
      };
}

/// Response message for CloudChannelService.CheckCloudIdentityAccountsExist.
class GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse {
  /// The Cloud Identity accounts associated with the domain.
  core.List<GoogleCloudChannelV1CloudIdentityCustomerAccount>?
      cloudIdentityAccounts;

  GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse({
    this.cloudIdentityAccounts,
  });

  GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse.fromJson(
      core.Map json_)
      : this(
          cloudIdentityAccounts: json_.containsKey('cloudIdentityAccounts')
              ? (json_['cloudIdentityAccounts'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1CloudIdentityCustomerAccount.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudIdentityAccounts != null)
          'cloudIdentityAccounts': cloudIdentityAccounts!,
      };
}

/// Entity representing a Cloud Identity account that may be associated with a
/// Channel Services API partner.
class GoogleCloudChannelV1CloudIdentityCustomerAccount {
  /// If existing = true, the Cloud Identity ID of the customer.
  core.String? customerCloudIdentityId;

  /// If owned = true, the name of the customer that owns the Cloud Identity
  /// account.
  ///
  /// Customer_name uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  core.String? customerName;

  /// Returns true if a Cloud Identity account exists for a specific domain.
  core.bool? existing;

  /// Returns true if the Cloud Identity account is associated with a customer
  /// of the Channel Services partner.
  core.bool? owned;

  GoogleCloudChannelV1CloudIdentityCustomerAccount({
    this.customerCloudIdentityId,
    this.customerName,
    this.existing,
    this.owned,
  });

  GoogleCloudChannelV1CloudIdentityCustomerAccount.fromJson(core.Map json_)
      : this(
          customerCloudIdentityId: json_.containsKey('customerCloudIdentityId')
              ? json_['customerCloudIdentityId'] as core.String
              : null,
          customerName: json_.containsKey('customerName')
              ? json_['customerName'] as core.String
              : null,
          existing: json_.containsKey('existing')
              ? json_['existing'] as core.bool
              : null,
          owned:
              json_.containsKey('owned') ? json_['owned'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerCloudIdentityId != null)
          'customerCloudIdentityId': customerCloudIdentityId!,
        if (customerName != null) 'customerName': customerName!,
        if (existing != null) 'existing': existing!,
        if (owned != null) 'owned': owned!,
      };
}

/// Cloud Identity information for the Cloud Channel Customer.
class GoogleCloudChannelV1CloudIdentityInfo {
  /// URI of Customer's Admin console dashboard.
  ///
  /// Output only.
  core.String? adminConsoleUri;

  /// The alternate email.
  core.String? alternateEmail;

  /// CustomerType indicates verification type needed for using services.
  /// Possible string values are:
  /// - "CUSTOMER_TYPE_UNSPECIFIED" : Not used.
  /// - "DOMAIN" : Domain-owning customer which needs domain verification to use
  /// services.
  /// - "TEAM" : Team customer which needs email verification to use services.
  core.String? customerType;

  /// Edu information about the customer.
  GoogleCloudChannelV1EduData? eduData;

  /// Whether the domain is verified.
  ///
  /// This field is not returned for a Customer's cloud_identity_info resource.
  /// Partners can use the domains.get() method of the Workspace SDK's Directory
  /// API, or listen to the PRIMARY_DOMAIN_VERIFIED Pub/Sub event in to track
  /// domain verification of their resolve Workspace customers.
  ///
  /// Output only.
  core.bool? isDomainVerified;

  /// Language code.
  core.String? languageCode;

  /// Phone number associated with the Cloud Identity.
  core.String? phoneNumber;

  /// The primary domain name.
  ///
  /// Output only.
  core.String? primaryDomain;

  GoogleCloudChannelV1CloudIdentityInfo({
    this.adminConsoleUri,
    this.alternateEmail,
    this.customerType,
    this.eduData,
    this.isDomainVerified,
    this.languageCode,
    this.phoneNumber,
    this.primaryDomain,
  });

  GoogleCloudChannelV1CloudIdentityInfo.fromJson(core.Map json_)
      : this(
          adminConsoleUri: json_.containsKey('adminConsoleUri')
              ? json_['adminConsoleUri'] as core.String
              : null,
          alternateEmail: json_.containsKey('alternateEmail')
              ? json_['alternateEmail'] as core.String
              : null,
          customerType: json_.containsKey('customerType')
              ? json_['customerType'] as core.String
              : null,
          eduData: json_.containsKey('eduData')
              ? GoogleCloudChannelV1EduData.fromJson(
                  json_['eduData'] as core.Map<core.String, core.dynamic>)
              : null,
          isDomainVerified: json_.containsKey('isDomainVerified')
              ? json_['isDomainVerified'] as core.bool
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          phoneNumber: json_.containsKey('phoneNumber')
              ? json_['phoneNumber'] as core.String
              : null,
          primaryDomain: json_.containsKey('primaryDomain')
              ? json_['primaryDomain'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminConsoleUri != null) 'adminConsoleUri': adminConsoleUri!,
        if (alternateEmail != null) 'alternateEmail': alternateEmail!,
        if (customerType != null) 'customerType': customerType!,
        if (eduData != null) 'eduData': eduData!,
        if (isDomainVerified != null) 'isDomainVerified': isDomainVerified!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (primaryDomain != null) 'primaryDomain': primaryDomain!,
      };
}

/// The definition of a report column.
///
/// Specifies the data properties in the corresponding position of the report
/// rows.
class GoogleCloudChannelV1Column {
  /// The unique name of the column (for example, customer_domain,
  /// channel_partner, customer_cost).
  ///
  /// You can use column IDs in RunReportJobRequest.filter. To see all reports
  /// and their columns, call CloudChannelReportsService.ListReports.
  core.String? columnId;

  /// The type of the values for this column.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Not used.
  /// - "STRING" : ReportValues for this column will use string_value.
  /// - "INT" : ReportValues for this column will use int_value.
  /// - "DECIMAL" : ReportValues for this column will use decimal_value.
  /// - "MONEY" : ReportValues for this column will use money_value.
  /// - "DATE" : ReportValues for this column will use date_value.
  /// - "DATE_TIME" : ReportValues for this column will use date_time_value.
  core.String? dataType;

  /// The column's display name.
  core.String? displayName;

  GoogleCloudChannelV1Column({
    this.columnId,
    this.dataType,
    this.displayName,
  });

  GoogleCloudChannelV1Column.fromJson(core.Map json_)
      : this(
          columnId: json_.containsKey('columnId')
              ? json_['columnId'] as core.String
              : null,
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnId != null) 'columnId': columnId!,
        if (dataType != null) 'dataType': dataType!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Commitment settings for commitment-based offers.
class GoogleCloudChannelV1CommitmentSettings {
  /// Commitment end timestamp.
  ///
  /// Output only.
  core.String? endTime;

  /// Renewal settings applicable for a commitment-based Offer.
  ///
  /// Optional.
  GoogleCloudChannelV1RenewalSettings? renewalSettings;

  /// Commitment start timestamp.
  ///
  /// Output only.
  core.String? startTime;

  GoogleCloudChannelV1CommitmentSettings({
    this.endTime,
    this.renewalSettings,
    this.startTime,
  });

  GoogleCloudChannelV1CommitmentSettings.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          renewalSettings: json_.containsKey('renewalSettings')
              ? GoogleCloudChannelV1RenewalSettings.fromJson(
                  json_['renewalSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (renewalSettings != null) 'renewalSettings': renewalSettings!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents the constraints for buying the Offer.
class GoogleCloudChannelV1Constraints {
  /// Represents constraints required to purchase the Offer for a customer.
  GoogleCloudChannelV1CustomerConstraints? customerConstraints;

  GoogleCloudChannelV1Constraints({
    this.customerConstraints,
  });

  GoogleCloudChannelV1Constraints.fromJson(core.Map json_)
      : this(
          customerConstraints: json_.containsKey('customerConstraints')
              ? GoogleCloudChannelV1CustomerConstraints.fromJson(
                  json_['customerConstraints']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerConstraints != null)
          'customerConstraints': customerConstraints!,
      };
}

/// Contact information for a customer account.
class GoogleCloudChannelV1ContactInfo {
  /// The customer account contact's display name, formatted as a combination of
  /// the customer's first and last name.
  ///
  /// Output only.
  core.String? displayName;

  /// The customer account's contact email.
  ///
  /// Required for entitlements that create admin.google.com accounts, and
  /// serves as the customer's username for those accounts. Use this email to
  /// invite Team customers.
  core.String? email;

  /// The customer account contact's first name.
  ///
  /// Optional for Team customers.
  core.String? firstName;

  /// The customer account contact's last name.
  ///
  /// Optional for Team customers.
  core.String? lastName;

  /// The customer account's contact phone number.
  core.String? phone;

  /// The customer account contact's job title.
  ///
  /// Optional.
  core.String? title;

  GoogleCloudChannelV1ContactInfo({
    this.displayName,
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
    this.title,
  });

  GoogleCloudChannelV1ContactInfo.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          firstName: json_.containsKey('firstName')
              ? json_['firstName'] as core.String
              : null,
          lastName: json_.containsKey('lastName')
              ? json_['lastName'] as core.String
              : null,
          phone:
              json_.containsKey('phone') ? json_['phone'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (firstName != null) 'firstName': firstName!,
        if (lastName != null) 'lastName': lastName!,
        if (phone != null) 'phone': phone!,
        if (title != null) 'title': title!,
      };
}

/// Request message for CloudChannelService.CreateEntitlement
class GoogleCloudChannelV1CreateEntitlementRequest {
  /// The entitlement to create.
  ///
  /// Required.
  GoogleCloudChannelV1Entitlement? entitlement;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1CreateEntitlementRequest({
    this.entitlement,
    this.requestId,
  });

  GoogleCloudChannelV1CreateEntitlementRequest.fromJson(core.Map json_)
      : this(
          entitlement: json_.containsKey('entitlement')
              ? GoogleCloudChannelV1Entitlement.fromJson(
                  json_['entitlement'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlement != null) 'entitlement': entitlement!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Entity representing a customer of a reseller or distributor.
class GoogleCloudChannelV1Customer {
  /// Secondary contact email.
  ///
  /// You need to provide an alternate email to create different domains if a
  /// primary contact email already exists. Users will receive a notification
  /// with credentials when you create an admin.google.com account. Secondary
  /// emails are also recovery email addresses. Alternate emails are optional
  /// when you create Team customers.
  core.String? alternateEmail;

  /// Cloud Identity ID of the customer's channel partner.
  ///
  /// Populated only if a channel partner exists for this customer.
  core.String? channelPartnerId;

  /// The customer's Cloud Identity ID if the customer has a Cloud Identity
  /// resource.
  ///
  /// Output only.
  core.String? cloudIdentityId;

  /// Cloud Identity information for the customer.
  ///
  /// Populated only if a Cloud Identity account exists for this customer.
  ///
  /// Output only.
  GoogleCloudChannelV1CloudIdentityInfo? cloudIdentityInfo;

  /// Time when the customer was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The customer's primary domain.
  ///
  /// Must match the primary contact email's domain.
  ///
  /// Required.
  core.String? domain;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  ///
  /// Optional.
  core.String? languageCode;

  /// Resource name of the customer.
  ///
  /// Format: accounts/{account_id}/customers/{customer_id}
  ///
  /// Output only.
  core.String? name;

  /// Name of the organization that the customer entity represents.
  ///
  /// Required.
  core.String? orgDisplayName;

  /// The organization address for the customer.
  ///
  /// To enforce US laws and embargoes, we require a region and zip code. You
  /// must provide valid addresses for every customer. To set the customer's
  /// language, use the Customer-level language code.
  ///
  /// Required.
  GoogleTypePostalAddress? orgPostalAddress;

  /// Primary contact info.
  GoogleCloudChannelV1ContactInfo? primaryContactInfo;

  /// Time when the customer was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudChannelV1Customer({
    this.alternateEmail,
    this.channelPartnerId,
    this.cloudIdentityId,
    this.cloudIdentityInfo,
    this.createTime,
    this.domain,
    this.languageCode,
    this.name,
    this.orgDisplayName,
    this.orgPostalAddress,
    this.primaryContactInfo,
    this.updateTime,
  });

  GoogleCloudChannelV1Customer.fromJson(core.Map json_)
      : this(
          alternateEmail: json_.containsKey('alternateEmail')
              ? json_['alternateEmail'] as core.String
              : null,
          channelPartnerId: json_.containsKey('channelPartnerId')
              ? json_['channelPartnerId'] as core.String
              : null,
          cloudIdentityId: json_.containsKey('cloudIdentityId')
              ? json_['cloudIdentityId'] as core.String
              : null,
          cloudIdentityInfo: json_.containsKey('cloudIdentityInfo')
              ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                  json_['cloudIdentityInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          orgDisplayName: json_.containsKey('orgDisplayName')
              ? json_['orgDisplayName'] as core.String
              : null,
          orgPostalAddress: json_.containsKey('orgPostalAddress')
              ? GoogleTypePostalAddress.fromJson(json_['orgPostalAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          primaryContactInfo: json_.containsKey('primaryContactInfo')
              ? GoogleCloudChannelV1ContactInfo.fromJson(
                  json_['primaryContactInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateEmail != null) 'alternateEmail': alternateEmail!,
        if (channelPartnerId != null) 'channelPartnerId': channelPartnerId!,
        if (cloudIdentityId != null) 'cloudIdentityId': cloudIdentityId!,
        if (cloudIdentityInfo != null) 'cloudIdentityInfo': cloudIdentityInfo!,
        if (createTime != null) 'createTime': createTime!,
        if (domain != null) 'domain': domain!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (orgDisplayName != null) 'orgDisplayName': orgDisplayName!,
        if (orgPostalAddress != null) 'orgPostalAddress': orgPostalAddress!,
        if (primaryContactInfo != null)
          'primaryContactInfo': primaryContactInfo!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Represents constraints required to purchase the Offer for a customer.
class GoogleCloudChannelV1CustomerConstraints {
  /// Allowed Customer Type.
  core.List<core.String>? allowedCustomerTypes;

  /// Allowed geographical regions of the customer.
  core.List<core.String>? allowedRegions;

  /// Allowed Promotional Order Type.
  ///
  /// Present for Promotional offers.
  core.List<core.String>? promotionalOrderTypes;

  GoogleCloudChannelV1CustomerConstraints({
    this.allowedCustomerTypes,
    this.allowedRegions,
    this.promotionalOrderTypes,
  });

  GoogleCloudChannelV1CustomerConstraints.fromJson(core.Map json_)
      : this(
          allowedCustomerTypes: json_.containsKey('allowedCustomerTypes')
              ? (json_['allowedCustomerTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowedRegions: json_.containsKey('allowedRegions')
              ? (json_['allowedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          promotionalOrderTypes: json_.containsKey('promotionalOrderTypes')
              ? (json_['promotionalOrderTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedCustomerTypes != null)
          'allowedCustomerTypes': allowedCustomerTypes!,
        if (allowedRegions != null) 'allowedRegions': allowedRegions!,
        if (promotionalOrderTypes != null)
          'promotionalOrderTypes': promotionalOrderTypes!,
      };
}

/// Configuration for how a reseller will reprice a Customer.
class GoogleCloudChannelV1CustomerRepricingConfig {
  /// Resource name of the CustomerRepricingConfig.
  ///
  /// Format:
  /// accounts/{account_id}/customers/{customer_id}/customerRepricingConfigs/{id}.
  ///
  /// Output only.
  core.String? name;

  /// The configuration for bill modifications made by a reseller before sending
  /// it to customers.
  ///
  /// Required.
  GoogleCloudChannelV1RepricingConfig? repricingConfig;

  /// Timestamp of an update to the repricing rule.
  ///
  /// If `update_time` is after RepricingConfig.effective_invoice_month then it
  /// indicates this was set mid-month.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudChannelV1CustomerRepricingConfig({
    this.name,
    this.repricingConfig,
    this.updateTime,
  });

  GoogleCloudChannelV1CustomerRepricingConfig.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          repricingConfig: json_.containsKey('repricingConfig')
              ? GoogleCloudChannelV1RepricingConfig.fromJson(
                  json_['repricingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (repricingConfig != null) 'repricingConfig': repricingConfig!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A representation of usage or invoice date ranges.
class GoogleCloudChannelV1DateRange {
  /// The latest invoice date (exclusive).
  ///
  /// If your product uses monthly invoices, and this value is not the beginning
  /// of a month, this will adjust the date to the first day of the following
  /// month.
  GoogleTypeDate? invoiceEndDate;

  /// The earliest invoice date (inclusive).
  ///
  /// If your product uses monthly invoices, and this value is not the beginning
  /// of a month, this will adjust the date to the first day of the given month.
  GoogleTypeDate? invoiceStartDate;

  /// The latest usage date time (exclusive).
  ///
  /// If you use time groupings (daily, weekly, etc), each group uses midnight
  /// to midnight (Pacific time). The usage end date is rounded down to include
  /// all usage from the specified date. We recommend that clients pass
  /// `usage_start_date_time` in Pacific time.
  GoogleTypeDateTime? usageEndDateTime;

  /// The earliest usage date time (inclusive).
  ///
  /// If you use time groupings (daily, weekly, etc), each group uses midnight
  /// to midnight (Pacific time). The usage start date is rounded down to
  /// include all usage from the specified date. We recommend that clients pass
  /// `usage_start_date_time` in Pacific time.
  GoogleTypeDateTime? usageStartDateTime;

  GoogleCloudChannelV1DateRange({
    this.invoiceEndDate,
    this.invoiceStartDate,
    this.usageEndDateTime,
    this.usageStartDateTime,
  });

  GoogleCloudChannelV1DateRange.fromJson(core.Map json_)
      : this(
          invoiceEndDate: json_.containsKey('invoiceEndDate')
              ? GoogleTypeDate.fromJson(json_['invoiceEndDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          invoiceStartDate: json_.containsKey('invoiceStartDate')
              ? GoogleTypeDate.fromJson(json_['invoiceStartDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          usageEndDateTime: json_.containsKey('usageEndDateTime')
              ? GoogleTypeDateTime.fromJson(json_['usageEndDateTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          usageStartDateTime: json_.containsKey('usageStartDateTime')
              ? GoogleTypeDateTime.fromJson(json_['usageStartDateTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invoiceEndDate != null) 'invoiceEndDate': invoiceEndDate!,
        if (invoiceStartDate != null) 'invoiceStartDate': invoiceStartDate!,
        if (usageEndDateTime != null) 'usageEndDateTime': usageEndDateTime!,
        if (usageStartDateTime != null)
          'usageStartDateTime': usageStartDateTime!,
      };
}

/// Required Edu Attributes
class GoogleCloudChannelV1EduData {
  /// Size of the institute.
  /// Possible string values are:
  /// - "INSTITUTE_SIZE_UNSPECIFIED" : Not used.
  /// - "SIZE_1_100" : 1 - 100
  /// - "SIZE_101_500" : 101 - 500
  /// - "SIZE_501_1000" : 501 - 1,000
  /// - "SIZE_1001_2000" : 1,001 - 2,000
  /// - "SIZE_2001_5000" : 2,001 - 5,000
  /// - "SIZE_5001_10000" : 5,001 - 10,000
  /// - "SIZE_10001_OR_MORE" : 10,001 +
  core.String? instituteSize;

  /// Designated institute type of customer.
  /// Possible string values are:
  /// - "INSTITUTE_TYPE_UNSPECIFIED" : Not used.
  /// - "K12" : Elementary/Secondary Schools & Districts
  /// - "UNIVERSITY" : Higher Education Universities & Colleges
  core.String? instituteType;

  /// Web address for the edu customer's institution.
  core.String? website;

  GoogleCloudChannelV1EduData({
    this.instituteSize,
    this.instituteType,
    this.website,
  });

  GoogleCloudChannelV1EduData.fromJson(core.Map json_)
      : this(
          instituteSize: json_.containsKey('instituteSize')
              ? json_['instituteSize'] as core.String
              : null,
          instituteType: json_.containsKey('instituteType')
              ? json_['instituteType'] as core.String
              : null,
          website: json_.containsKey('website')
              ? json_['website'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instituteSize != null) 'instituteSize': instituteSize!,
        if (instituteType != null) 'instituteType': instituteType!,
        if (website != null) 'website': website!,
      };
}

/// An entitlement is a representation of a customer's ability to use a service.
class GoogleCloudChannelV1Entitlement {
  /// Association information to other entitlements.
  GoogleCloudChannelV1AssociationInfo? associationInfo;

  /// Commitment settings for a commitment-based Offer.
  ///
  /// Required for commitment based offers.
  GoogleCloudChannelV1CommitmentSettings? commitmentSettings;

  /// The time at which the entitlement is created.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of an entitlement in the form:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}.
  ///
  /// Output only.
  core.String? name;

  /// The offer resource name for which the entitlement is to be created.
  ///
  /// Takes the form: accounts/{account_id}/offers/{offer_id}.
  ///
  /// Required.
  core.String? offer;

  /// Extended entitlement parameters.
  ///
  /// When creating an entitlement, valid parameter names and values are defined
  /// in the Offer.parameter_definitions. The response may include the following
  /// output-only Parameters: - assigned_units: The number of licenses assigned
  /// to users. - max_units: The maximum assignable units for a flexible offer.
  /// - num_units: The total commitment for commitment-based offers.
  core.List<GoogleCloudChannelV1Parameter>? parameters;

  /// Service provisioning details for the entitlement.
  ///
  /// Output only.
  GoogleCloudChannelV1ProvisionedService? provisionedService;

  /// Current provisioning state of the entitlement.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROVISIONING_STATE_UNSPECIFIED" : Not used.
  /// - "ACTIVE" : The entitlement is currently active.
  /// - "SUSPENDED" : The entitlement is currently suspended.
  core.String? provisioningState;

  /// This purchase order (PO) information is for resellers to use for their
  /// company tracking usage.
  ///
  /// If a purchaseOrderId value is given, it appears in the API responses and
  /// shows up in the invoice. The property accepts up to 80 plain text
  /// characters. This is only supported for Google Workspace entitlements.
  ///
  /// Optional.
  core.String? purchaseOrderId;

  /// Enumerable of all current suspension reasons for an entitlement.
  ///
  /// Output only.
  core.List<core.String>? suspensionReasons;

  /// Settings for trial offers.
  ///
  /// Output only.
  GoogleCloudChannelV1TrialSettings? trialSettings;

  /// The time at which the entitlement is updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudChannelV1Entitlement({
    this.associationInfo,
    this.commitmentSettings,
    this.createTime,
    this.name,
    this.offer,
    this.parameters,
    this.provisionedService,
    this.provisioningState,
    this.purchaseOrderId,
    this.suspensionReasons,
    this.trialSettings,
    this.updateTime,
  });

  GoogleCloudChannelV1Entitlement.fromJson(core.Map json_)
      : this(
          associationInfo: json_.containsKey('associationInfo')
              ? GoogleCloudChannelV1AssociationInfo.fromJson(
                  json_['associationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          commitmentSettings: json_.containsKey('commitmentSettings')
              ? GoogleCloudChannelV1CommitmentSettings.fromJson(
                  json_['commitmentSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          offer:
              json_.containsKey('offer') ? json_['offer'] as core.String : null,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provisionedService: json_.containsKey('provisionedService')
              ? GoogleCloudChannelV1ProvisionedService.fromJson(
                  json_['provisionedService']
                      as core.Map<core.String, core.dynamic>)
              : null,
          provisioningState: json_.containsKey('provisioningState')
              ? json_['provisioningState'] as core.String
              : null,
          purchaseOrderId: json_.containsKey('purchaseOrderId')
              ? json_['purchaseOrderId'] as core.String
              : null,
          suspensionReasons: json_.containsKey('suspensionReasons')
              ? (json_['suspensionReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          trialSettings: json_.containsKey('trialSettings')
              ? GoogleCloudChannelV1TrialSettings.fromJson(
                  json_['trialSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (associationInfo != null) 'associationInfo': associationInfo!,
        if (commitmentSettings != null)
          'commitmentSettings': commitmentSettings!,
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (offer != null) 'offer': offer!,
        if (parameters != null) 'parameters': parameters!,
        if (provisionedService != null)
          'provisionedService': provisionedService!,
        if (provisioningState != null) 'provisioningState': provisioningState!,
        if (purchaseOrderId != null) 'purchaseOrderId': purchaseOrderId!,
        if (suspensionReasons != null) 'suspensionReasons': suspensionReasons!,
        if (trialSettings != null) 'trialSettings': trialSettings!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for CloudChannelReportsService.FetchReportResults.
class GoogleCloudChannelV1FetchReportResultsRequest {
  /// Requested page size of the report.
  ///
  /// The server may return fewer results than requested. If you don't specify a
  /// page size, the server uses a sensible default (may change over time). The
  /// maximum value is 30,000; the server will change larger values to 30,000.
  ///
  /// Optional.
  core.int? pageSize;

  /// A token that specifies a page of results beyond the first page.
  ///
  /// Obtained through FetchReportResultsResponse.next_page_token of the
  /// previous CloudChannelReportsService.FetchReportResults call.
  ///
  /// Optional.
  core.String? pageToken;

  GoogleCloudChannelV1FetchReportResultsRequest({
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudChannelV1FetchReportResultsRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Response message for CloudChannelReportsService.FetchReportResults.
///
/// Contains a tabular representation of the report results.
class GoogleCloudChannelV1FetchReportResultsResponse {
  /// Pass this token to FetchReportResultsRequest.page_token to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// The metadata for the report results (display name, columns, row count, and
  /// date ranges).
  GoogleCloudChannelV1ReportResultsMetadata? reportMetadata;

  /// The report's lists of values.
  ///
  /// Each row follows the settings and ordering of the columns from
  /// `report_metadata`.
  core.List<GoogleCloudChannelV1Row>? rows;

  GoogleCloudChannelV1FetchReportResultsResponse({
    this.nextPageToken,
    this.reportMetadata,
    this.rows,
  });

  GoogleCloudChannelV1FetchReportResultsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reportMetadata: json_.containsKey('reportMetadata')
              ? GoogleCloudChannelV1ReportResultsMetadata.fromJson(
                  json_['reportMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => GoogleCloudChannelV1Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reportMetadata != null) 'reportMetadata': reportMetadata!,
        if (rows != null) 'rows': rows!,
      };
}

/// Request message for CloudChannelService.ImportCustomer
class GoogleCloudChannelV1ImportCustomerRequest {
  /// The super admin of the resold customer generates this token to authorize a
  /// reseller to access their Cloud Identity and purchase entitlements on their
  /// behalf.
  ///
  /// You can omit this token after authorization. See
  /// https://support.google.com/a/answer/7643790 for more details.
  ///
  /// Optional.
  core.String? authToken;

  /// Cloud Identity ID of a channel partner who will be the direct reseller for
  /// the customer's order.
  ///
  /// This field is required for 2-tier transfer scenarios and can be provided
  /// via the request Parent binding as well.
  ///
  /// Optional.
  core.String? channelPartnerId;

  /// Customer's Cloud Identity ID
  ///
  /// Required.
  core.String? cloudIdentityId;

  /// Specifies the customer that will receive imported Cloud Identity
  /// information.
  ///
  /// Format: accounts/{account_id}/customers/{customer_id}
  ///
  /// Optional.
  core.String? customer;

  /// Customer domain.
  ///
  /// Required.
  core.String? domain;

  /// Choose to overwrite an existing customer if found.
  ///
  /// This must be set to true if there is an existing customer with a
  /// conflicting region code or domain.
  ///
  /// Required.
  core.bool? overwriteIfExists;

  GoogleCloudChannelV1ImportCustomerRequest({
    this.authToken,
    this.channelPartnerId,
    this.cloudIdentityId,
    this.customer,
    this.domain,
    this.overwriteIfExists,
  });

  GoogleCloudChannelV1ImportCustomerRequest.fromJson(core.Map json_)
      : this(
          authToken: json_.containsKey('authToken')
              ? json_['authToken'] as core.String
              : null,
          channelPartnerId: json_.containsKey('channelPartnerId')
              ? json_['channelPartnerId'] as core.String
              : null,
          cloudIdentityId: json_.containsKey('cloudIdentityId')
              ? json_['cloudIdentityId'] as core.String
              : null,
          customer: json_.containsKey('customer')
              ? json_['customer'] as core.String
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          overwriteIfExists: json_.containsKey('overwriteIfExists')
              ? json_['overwriteIfExists'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authToken != null) 'authToken': authToken!,
        if (channelPartnerId != null) 'channelPartnerId': channelPartnerId!,
        if (cloudIdentityId != null) 'cloudIdentityId': cloudIdentityId!,
        if (customer != null) 'customer': customer!,
        if (domain != null) 'domain': domain!,
        if (overwriteIfExists != null) 'overwriteIfExists': overwriteIfExists!,
      };
}

/// Response message for CloudChannelService.ListChannelPartnerLinks.
class GoogleCloudChannelV1ListChannelPartnerLinksResponse {
  /// The Channel partner links for a reseller.
  core.List<GoogleCloudChannelV1ChannelPartnerLink>? channelPartnerLinks;

  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListChannelPartnerLinksRequest.page_token to obtain that page.
  core.String? nextPageToken;

  GoogleCloudChannelV1ListChannelPartnerLinksResponse({
    this.channelPartnerLinks,
    this.nextPageToken,
  });

  GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(core.Map json_)
      : this(
          channelPartnerLinks: json_.containsKey('channelPartnerLinks')
              ? (json_['channelPartnerLinks'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1ChannelPartnerLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelPartnerLinks != null)
          'channelPartnerLinks': channelPartnerLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for CloudChannelService.ListChannelPartnerRepricingConfigs.
class GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse {
  /// The repricing configs for this channel partner.
  core.List<GoogleCloudChannelV1ChannelPartnerRepricingConfig>?
      channelPartnerRepricingConfigs;

  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListChannelPartnerRepricingConfigsRequest.page_token to obtain
  /// that page.
  core.String? nextPageToken;

  GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse({
    this.channelPartnerRepricingConfigs,
    this.nextPageToken,
  });

  GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse.fromJson(
      core.Map json_)
      : this(
          channelPartnerRepricingConfigs:
              json_.containsKey('channelPartnerRepricingConfigs')
                  ? (json_['channelPartnerRepricingConfigs'] as core.List)
                      .map((value) =>
                          GoogleCloudChannelV1ChannelPartnerRepricingConfig
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelPartnerRepricingConfigs != null)
          'channelPartnerRepricingConfigs': channelPartnerRepricingConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for CloudChannelService.ListCustomerRepricingConfigs.
class GoogleCloudChannelV1ListCustomerRepricingConfigsResponse {
  /// The repricing configs for this channel partner.
  core.List<GoogleCloudChannelV1CustomerRepricingConfig>?
      customerRepricingConfigs;

  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListCustomerRepricingConfigsRequest.page_token to obtain that
  /// page.
  core.String? nextPageToken;

  GoogleCloudChannelV1ListCustomerRepricingConfigsResponse({
    this.customerRepricingConfigs,
    this.nextPageToken,
  });

  GoogleCloudChannelV1ListCustomerRepricingConfigsResponse.fromJson(
      core.Map json_)
      : this(
          customerRepricingConfigs:
              json_.containsKey('customerRepricingConfigs')
                  ? (json_['customerRepricingConfigs'] as core.List)
                      .map((value) =>
                          GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
                              value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerRepricingConfigs != null)
          'customerRepricingConfigs': customerRepricingConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for CloudChannelService.ListCustomers.
class GoogleCloudChannelV1ListCustomersResponse {
  /// The customers belonging to a reseller or distributor.
  core.List<GoogleCloudChannelV1Customer>? customers;

  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListCustomersRequest.page_token to obtain that page.
  core.String? nextPageToken;

  GoogleCloudChannelV1ListCustomersResponse({
    this.customers,
    this.nextPageToken,
  });

  GoogleCloudChannelV1ListCustomersResponse.fromJson(core.Map json_)
      : this(
          customers: json_.containsKey('customers')
              ? (json_['customers'] as core.List)
                  .map((value) => GoogleCloudChannelV1Customer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customers != null) 'customers': customers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for CloudChannelService.ListEntitlements.
class GoogleCloudChannelV1ListEntitlementsResponse {
  /// The reseller customer's entitlements.
  core.List<GoogleCloudChannelV1Entitlement>? entitlements;

  /// A token to list the next page of results.
  ///
  /// Pass to ListEntitlementsRequest.page_token to obtain that page.
  core.String? nextPageToken;

  GoogleCloudChannelV1ListEntitlementsResponse({
    this.entitlements,
    this.nextPageToken,
  });

  GoogleCloudChannelV1ListEntitlementsResponse.fromJson(core.Map json_)
      : this(
          entitlements: json_.containsKey('entitlements')
              ? (json_['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlements != null) 'entitlements': entitlements!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListOffers.
class GoogleCloudChannelV1ListOffersResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of Offers requested.
  core.List<GoogleCloudChannelV1Offer>? offers;

  GoogleCloudChannelV1ListOffersResponse({
    this.nextPageToken,
    this.offers,
  });

  GoogleCloudChannelV1ListOffersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          offers: json_.containsKey('offers')
              ? (json_['offers'] as core.List)
                  .map((value) => GoogleCloudChannelV1Offer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (offers != null) 'offers': offers!,
      };
}

/// Response message for ListProducts.
class GoogleCloudChannelV1ListProductsResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// List of Products requested.
  core.List<GoogleCloudChannelV1Product>? products;

  GoogleCloudChannelV1ListProductsResponse({
    this.nextPageToken,
    this.products,
  });

  GoogleCloudChannelV1ListProductsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          products: json_.containsKey('products')
              ? (json_['products'] as core.List)
                  .map((value) => GoogleCloudChannelV1Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

/// Response message for ListPurchasableOffers.
class GoogleCloudChannelV1ListPurchasableOffersResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of Offers requested.
  core.List<GoogleCloudChannelV1PurchasableOffer>? purchasableOffers;

  GoogleCloudChannelV1ListPurchasableOffersResponse({
    this.nextPageToken,
    this.purchasableOffers,
  });

  GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          purchasableOffers: json_.containsKey('purchasableOffers')
              ? (json_['purchasableOffers'] as core.List)
                  .map((value) => GoogleCloudChannelV1PurchasableOffer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (purchasableOffers != null) 'purchasableOffers': purchasableOffers!,
      };
}

/// Response message for ListPurchasableSkus.
class GoogleCloudChannelV1ListPurchasableSkusResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of SKUs requested.
  core.List<GoogleCloudChannelV1PurchasableSku>? purchasableSkus;

  GoogleCloudChannelV1ListPurchasableSkusResponse({
    this.nextPageToken,
    this.purchasableSkus,
  });

  GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          purchasableSkus: json_.containsKey('purchasableSkus')
              ? (json_['purchasableSkus'] as core.List)
                  .map((value) => GoogleCloudChannelV1PurchasableSku.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (purchasableSkus != null) 'purchasableSkus': purchasableSkus!,
      };
}

/// Response message for CloudChannelReportsService.ListReports.
class GoogleCloudChannelV1ListReportsResponse {
  /// Pass this token to FetchReportResultsRequest.page_token to retrieve the
  /// next page of results.
  core.String? nextPageToken;

  /// The reports available to the partner.
  core.List<GoogleCloudChannelV1Report>? reports;

  GoogleCloudChannelV1ListReportsResponse({
    this.nextPageToken,
    this.reports,
  });

  GoogleCloudChannelV1ListReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          reports: json_.containsKey('reports')
              ? (json_['reports'] as core.List)
                  .map((value) => GoogleCloudChannelV1Report.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (reports != null) 'reports': reports!,
      };
}

/// Response message for ListSkus.
class GoogleCloudChannelV1ListSkusResponse {
  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// The list of SKUs requested.
  core.List<GoogleCloudChannelV1Sku>? skus;

  GoogleCloudChannelV1ListSkusResponse({
    this.nextPageToken,
    this.skus,
  });

  GoogleCloudChannelV1ListSkusResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          skus: json_.containsKey('skus')
              ? (json_['skus'] as core.List)
                  .map((value) => GoogleCloudChannelV1Sku.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (skus != null) 'skus': skus!,
      };
}

/// Response Message for ListSubscribers.
class GoogleCloudChannelV1ListSubscribersResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of service accounts which have subscriber access to the topic.
  core.List<core.String>? serviceAccounts;

  /// Name of the topic registered with the reseller.
  core.String? topic;

  GoogleCloudChannelV1ListSubscribersResponse({
    this.nextPageToken,
    this.serviceAccounts,
    this.topic,
  });

  GoogleCloudChannelV1ListSubscribersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          serviceAccounts: json_.containsKey('serviceAccounts')
              ? (json_['serviceAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (serviceAccounts != null) 'serviceAccounts': serviceAccounts!,
        if (topic != null) 'topic': topic!,
      };
}

/// Request message for CloudChannelService.ListTransferableOffers
class GoogleCloudChannelV1ListTransferableOffersRequest {
  /// Customer's Cloud Identity ID
  core.String? cloudIdentityId;

  /// A reseller should create a customer and use the resource name of that
  /// customer here.
  core.String? customerName;

  /// The BCP-47 language code.
  ///
  /// For example, "en-US". The response will localize in the corresponding
  /// language code, if specified. The default value is "en-US".
  ///
  /// Optional.
  core.String? languageCode;

  /// Requested page size.
  ///
  /// Server might return fewer results than requested. If unspecified, returns
  /// at most 100 offers. The maximum value is 1000; the server will coerce
  /// values above 1000.
  core.int? pageSize;

  /// A token for a page of results other than the first page.
  ///
  /// Obtained using ListTransferableOffersResponse.next_page_token of the
  /// previous CloudChannelService.ListTransferableOffers call.
  core.String? pageToken;

  /// The SKU to look up Offers for.
  ///
  /// Required.
  core.String? sku;

  GoogleCloudChannelV1ListTransferableOffersRequest({
    this.cloudIdentityId,
    this.customerName,
    this.languageCode,
    this.pageSize,
    this.pageToken,
    this.sku,
  });

  GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(core.Map json_)
      : this(
          cloudIdentityId: json_.containsKey('cloudIdentityId')
              ? json_['cloudIdentityId'] as core.String
              : null,
          customerName: json_.containsKey('customerName')
              ? json_['customerName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          sku: json_.containsKey('sku') ? json_['sku'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudIdentityId != null) 'cloudIdentityId': cloudIdentityId!,
        if (customerName != null) 'customerName': customerName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (sku != null) 'sku': sku!,
      };
}

/// Response message for CloudChannelService.ListTransferableOffers.
class GoogleCloudChannelV1ListTransferableOffersResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListTransferableOffersRequest.page_token to obtain that page.
  core.String? nextPageToken;

  /// Information about Offers for a customer that can be used for transfer.
  core.List<GoogleCloudChannelV1TransferableOffer>? transferableOffers;

  GoogleCloudChannelV1ListTransferableOffersResponse({
    this.nextPageToken,
    this.transferableOffers,
  });

  GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          transferableOffers: json_.containsKey('transferableOffers')
              ? (json_['transferableOffers'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1TransferableOffer.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferableOffers != null)
          'transferableOffers': transferableOffers!,
      };
}

/// Request message for CloudChannelService.ListTransferableSkus
class GoogleCloudChannelV1ListTransferableSkusRequest {
  /// The super admin of the resold customer generates this token to authorize a
  /// reseller to access their Cloud Identity and purchase entitlements on their
  /// behalf.
  ///
  /// You can omit this token after authorization. See
  /// https://support.google.com/a/answer/7643790 for more details.
  ///
  /// Optional.
  core.String? authToken;

  /// Customer's Cloud Identity ID
  core.String? cloudIdentityId;

  /// A reseller is required to create a customer and use the resource name of
  /// the created customer here.
  ///
  /// Customer_name uses the format:
  /// accounts/{account_id}/customers/{customer_id}
  core.String? customerName;

  /// The BCP-47 language code.
  ///
  /// For example, "en-US". The response will localize in the corresponding
  /// language code, if specified. The default value is "en-US". Optional.
  core.String? languageCode;

  /// The requested page size.
  ///
  /// Server might return fewer results than requested. If unspecified, returns
  /// at most 100 SKUs. The maximum value is 1000; the server will coerce values
  /// above 1000. Optional.
  core.int? pageSize;

  /// A token for a page of results other than the first page.
  ///
  /// Obtained using ListTransferableSkusResponse.next_page_token of the
  /// previous CloudChannelService.ListTransferableSkus call. Optional.
  core.String? pageToken;

  GoogleCloudChannelV1ListTransferableSkusRequest({
    this.authToken,
    this.cloudIdentityId,
    this.customerName,
    this.languageCode,
    this.pageSize,
    this.pageToken,
  });

  GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(core.Map json_)
      : this(
          authToken: json_.containsKey('authToken')
              ? json_['authToken'] as core.String
              : null,
          cloudIdentityId: json_.containsKey('cloudIdentityId')
              ? json_['cloudIdentityId'] as core.String
              : null,
          customerName: json_.containsKey('customerName')
              ? json_['customerName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authToken != null) 'authToken': authToken!,
        if (cloudIdentityId != null) 'cloudIdentityId': cloudIdentityId!,
        if (customerName != null) 'customerName': customerName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Response message for CloudChannelService.ListTransferableSkus.
class GoogleCloudChannelV1ListTransferableSkusResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass to ListTransferableSkusRequest.page_token to obtain that page.
  core.String? nextPageToken;

  /// Information about existing SKUs for a customer that needs a transfer.
  core.List<GoogleCloudChannelV1TransferableSku>? transferableSkus;

  GoogleCloudChannelV1ListTransferableSkusResponse({
    this.nextPageToken,
    this.transferableSkus,
  });

  GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          transferableSkus: json_.containsKey('transferableSkus')
              ? (json_['transferableSkus'] as core.List)
                  .map((value) => GoogleCloudChannelV1TransferableSku.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferableSkus != null) 'transferableSkus': transferableSkus!,
      };
}

/// Represents the marketing information for a Product, SKU or Offer.
class GoogleCloudChannelV1MarketingInfo {
  /// Default logo.
  GoogleCloudChannelV1Media? defaultLogo;

  /// Human readable description.
  ///
  /// Description can contain HTML.
  core.String? description;

  /// Human readable name.
  core.String? displayName;

  GoogleCloudChannelV1MarketingInfo({
    this.defaultLogo,
    this.description,
    this.displayName,
  });

  GoogleCloudChannelV1MarketingInfo.fromJson(core.Map json_)
      : this(
          defaultLogo: json_.containsKey('defaultLogo')
              ? GoogleCloudChannelV1Media.fromJson(
                  json_['defaultLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLogo != null) 'defaultLogo': defaultLogo!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
      };
}

/// Represents media information.
class GoogleCloudChannelV1Media {
  /// URL of the media.
  core.String? content;

  /// Title of the media.
  core.String? title;

  /// Type of the media.
  /// Possible string values are:
  /// - "MEDIA_TYPE_UNSPECIFIED" : Not used.
  /// - "MEDIA_TYPE_IMAGE" : Type of image.
  core.String? type;

  GoogleCloudChannelV1Media({
    this.content,
    this.title,
    this.type,
  });

  GoogleCloudChannelV1Media.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (title != null) 'title': title!,
        if (type != null) 'type': type!,
      };
}

/// Represents an offer made to resellers for purchase.
///
/// An offer is associated with a Sku, has a plan for payment, a price, and
/// defines the constraints for buying.
class GoogleCloudChannelV1Offer {
  /// Constraints on transacting the Offer.
  GoogleCloudChannelV1Constraints? constraints;

  /// The deal code of the offer to get a special promotion or discount.
  core.String? dealCode;

  /// End of the Offer validity time.
  ///
  /// Output only.
  core.String? endTime;

  /// Marketing information for the Offer.
  GoogleCloudChannelV1MarketingInfo? marketingInfo;

  /// Resource Name of the Offer.
  ///
  /// Format: accounts/{account_id}/offers/{offer_id}
  core.String? name;

  /// Parameters required to use current Offer to purchase.
  core.List<GoogleCloudChannelV1ParameterDefinition>? parameterDefinitions;

  /// Describes the payment plan for the Offer.
  GoogleCloudChannelV1Plan? plan;

  /// Price for each monetizable resource type.
  core.List<GoogleCloudChannelV1PriceByResource>? priceByResources;

  /// SKU the offer is associated with.
  GoogleCloudChannelV1Sku? sku;

  /// Start of the Offer validity time.
  core.String? startTime;

  GoogleCloudChannelV1Offer({
    this.constraints,
    this.dealCode,
    this.endTime,
    this.marketingInfo,
    this.name,
    this.parameterDefinitions,
    this.plan,
    this.priceByResources,
    this.sku,
    this.startTime,
  });

  GoogleCloudChannelV1Offer.fromJson(core.Map json_)
      : this(
          constraints: json_.containsKey('constraints')
              ? GoogleCloudChannelV1Constraints.fromJson(
                  json_['constraints'] as core.Map<core.String, core.dynamic>)
              : null,
          dealCode: json_.containsKey('dealCode')
              ? json_['dealCode'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          marketingInfo: json_.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  json_['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parameterDefinitions: json_.containsKey('parameterDefinitions')
              ? (json_['parameterDefinitions'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1ParameterDefinition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          plan: json_.containsKey('plan')
              ? GoogleCloudChannelV1Plan.fromJson(
                  json_['plan'] as core.Map<core.String, core.dynamic>)
              : null,
          priceByResources: json_.containsKey('priceByResources')
              ? (json_['priceByResources'] as core.List)
                  .map((value) => GoogleCloudChannelV1PriceByResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sku: json_.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  json_['sku'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraints != null) 'constraints': constraints!,
        if (dealCode != null) 'dealCode': dealCode!,
        if (endTime != null) 'endTime': endTime!,
        if (marketingInfo != null) 'marketingInfo': marketingInfo!,
        if (name != null) 'name': name!,
        if (parameterDefinitions != null)
          'parameterDefinitions': parameterDefinitions!,
        if (plan != null) 'plan': plan!,
        if (priceByResources != null) 'priceByResources': priceByResources!,
        if (sku != null) 'sku': sku!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Definition for extended entitlement parameters.
class GoogleCloudChannelV1Parameter {
  /// Specifies whether this parameter is allowed to be changed.
  ///
  /// For example, for a Google Workspace Business Starter entitlement in
  /// commitment plan, num_units is editable when entitlement is active.
  ///
  /// Output only.
  core.bool? editable;

  /// Name of the parameter.
  core.String? name;

  /// Value of the parameter.
  GoogleCloudChannelV1Value? value;

  GoogleCloudChannelV1Parameter({
    this.editable,
    this.name,
    this.value,
  });

  GoogleCloudChannelV1Parameter.fromJson(core.Map json_)
      : this(
          editable: json_.containsKey('editable')
              ? json_['editable'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value: json_.containsKey('value')
              ? GoogleCloudChannelV1Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (editable != null) 'editable': editable!,
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Parameter's definition.
///
/// Specifies what parameter is required to use the current Offer to purchase.
class GoogleCloudChannelV1ParameterDefinition {
  /// If not empty, parameter values must be drawn from this list.
  ///
  /// For example, \[us-west1, us-west2, ...\] Applicable to STRING parameter
  /// type.
  core.List<GoogleCloudChannelV1Value>? allowedValues;

  /// Maximum value of the parameter, if applicable.
  ///
  /// Inclusive. For example, maximum seats when purchasing Google Workspace
  /// Business Standard. Applicable to INT64 and DOUBLE parameter types.
  GoogleCloudChannelV1Value? maxValue;

  /// Minimal value of the parameter, if applicable.
  ///
  /// Inclusive. For example, minimal commitment when purchasing Anthos is 0.01.
  /// Applicable to INT64 and DOUBLE parameter types.
  GoogleCloudChannelV1Value? minValue;

  /// Name of the parameter.
  core.String? name;

  /// If set to true, parameter is optional to purchase this Offer.
  core.bool? optional;

  /// Data type of the parameter.
  ///
  /// Minimal value, Maximum value and allowed values will use specified data
  /// type here.
  /// Possible string values are:
  /// - "PARAMETER_TYPE_UNSPECIFIED" : Not used.
  /// - "INT64" : Int64 type.
  /// - "STRING" : String type.
  /// - "DOUBLE" : Double type.
  core.String? parameterType;

  GoogleCloudChannelV1ParameterDefinition({
    this.allowedValues,
    this.maxValue,
    this.minValue,
    this.name,
    this.optional,
    this.parameterType,
  });

  GoogleCloudChannelV1ParameterDefinition.fromJson(core.Map json_)
      : this(
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) => GoogleCloudChannelV1Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxValue: json_.containsKey('maxValue')
              ? GoogleCloudChannelV1Value.fromJson(
                  json_['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: json_.containsKey('minValue')
              ? GoogleCloudChannelV1Value.fromJson(
                  json_['minValue'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          optional: json_.containsKey('optional')
              ? json_['optional'] as core.bool
              : null,
          parameterType: json_.containsKey('parameterType')
              ? json_['parameterType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (name != null) 'name': name!,
        if (optional != null) 'optional': optional!,
        if (parameterType != null) 'parameterType': parameterType!,
      };
}

/// An adjustment that applies a flat markup or markdown to an entire bill.
class GoogleCloudChannelV1PercentageAdjustment {
  /// The percentage of the bill to adjust.
  ///
  /// For example: Mark down by 1% =\> "-1.00" Mark up by 1% =\> "1.00"
  /// Pass-Through =\> "0.00"
  GoogleTypeDecimal? percentage;

  GoogleCloudChannelV1PercentageAdjustment({
    this.percentage,
  });

  GoogleCloudChannelV1PercentageAdjustment.fromJson(core.Map json_)
      : this(
          percentage: json_.containsKey('percentage')
              ? GoogleTypeDecimal.fromJson(
                  json_['percentage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentage != null) 'percentage': percentage!,
      };
}

/// Represents period in days/months/years.
class GoogleCloudChannelV1Period {
  /// Total duration of Period Type defined.
  core.int? duration;

  /// Period Type.
  /// Possible string values are:
  /// - "PERIOD_TYPE_UNSPECIFIED" : Not used.
  /// - "DAY" : Day.
  /// - "MONTH" : Month.
  /// - "YEAR" : Year.
  core.String? periodType;

  GoogleCloudChannelV1Period({
    this.duration,
    this.periodType,
  });

  GoogleCloudChannelV1Period.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.int
              : null,
          periodType: json_.containsKey('periodType')
              ? json_['periodType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (periodType != null) 'periodType': periodType!,
      };
}

/// The payment plan for the Offer.
///
/// Describes how to make a payment.
class GoogleCloudChannelV1Plan {
  /// Reseller Billing account to charge after an offer transaction.
  ///
  /// Only present for Google Cloud Platform offers.
  core.String? billingAccount;

  /// Describes how frequently the reseller will be billed, such as once per
  /// month.
  GoogleCloudChannelV1Period? paymentCycle;

  /// Describes how a reseller will be billed.
  /// Possible string values are:
  /// - "PAYMENT_PLAN_UNSPECIFIED" : Not used.
  /// - "COMMITMENT" : Commitment.
  /// - "FLEXIBLE" : No commitment.
  /// - "FREE" : Free.
  /// - "TRIAL" : Trial.
  /// - "OFFLINE" : Price and ordering not available through API.
  core.String? paymentPlan;

  /// Specifies when the payment needs to happen.
  /// Possible string values are:
  /// - "PAYMENT_TYPE_UNSPECIFIED" : Not used.
  /// - "PREPAY" : Prepay. Amount has to be paid before service is rendered.
  /// - "POSTPAY" : Postpay. Reseller is charged at the end of the Payment
  /// cycle.
  core.String? paymentType;

  /// Present for Offers with a trial period.
  ///
  /// For trial-only Offers, a paid service needs to start before the trial
  /// period ends for continued service. For Regular Offers with a trial period,
  /// the regular pricing goes into effect when trial period ends, or if paid
  /// service is started before the end of the trial period.
  GoogleCloudChannelV1Period? trialPeriod;

  GoogleCloudChannelV1Plan({
    this.billingAccount,
    this.paymentCycle,
    this.paymentPlan,
    this.paymentType,
    this.trialPeriod,
  });

  GoogleCloudChannelV1Plan.fromJson(core.Map json_)
      : this(
          billingAccount: json_.containsKey('billingAccount')
              ? json_['billingAccount'] as core.String
              : null,
          paymentCycle: json_.containsKey('paymentCycle')
              ? GoogleCloudChannelV1Period.fromJson(
                  json_['paymentCycle'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentPlan: json_.containsKey('paymentPlan')
              ? json_['paymentPlan'] as core.String
              : null,
          paymentType: json_.containsKey('paymentType')
              ? json_['paymentType'] as core.String
              : null,
          trialPeriod: json_.containsKey('trialPeriod')
              ? GoogleCloudChannelV1Period.fromJson(
                  json_['trialPeriod'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billingAccount != null) 'billingAccount': billingAccount!,
        if (paymentCycle != null) 'paymentCycle': paymentCycle!,
        if (paymentPlan != null) 'paymentPlan': paymentPlan!,
        if (paymentType != null) 'paymentType': paymentType!,
        if (trialPeriod != null) 'trialPeriod': trialPeriod!,
      };
}

/// Represents the price of the Offer.
class GoogleCloudChannelV1Price {
  /// Base price.
  GoogleTypeMoney? basePrice;

  /// Discount percentage, represented as decimal.
  ///
  /// For example, a 20% discount will be represent as 0.2.
  core.double? discount;

  /// Effective Price after applying the discounts.
  GoogleTypeMoney? effectivePrice;

  /// Link to external price list, such as link to Google Voice rate card.
  core.String? externalPriceUri;

  GoogleCloudChannelV1Price({
    this.basePrice,
    this.discount,
    this.effectivePrice,
    this.externalPriceUri,
  });

  GoogleCloudChannelV1Price.fromJson(core.Map json_)
      : this(
          basePrice: json_.containsKey('basePrice')
              ? GoogleTypeMoney.fromJson(
                  json_['basePrice'] as core.Map<core.String, core.dynamic>)
              : null,
          discount: json_.containsKey('discount')
              ? (json_['discount'] as core.num).toDouble()
              : null,
          effectivePrice: json_.containsKey('effectivePrice')
              ? GoogleTypeMoney.fromJson(json_['effectivePrice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          externalPriceUri: json_.containsKey('externalPriceUri')
              ? json_['externalPriceUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (basePrice != null) 'basePrice': basePrice!,
        if (discount != null) 'discount': discount!,
        if (effectivePrice != null) 'effectivePrice': effectivePrice!,
        if (externalPriceUri != null) 'externalPriceUri': externalPriceUri!,
      };
}

/// Represents price by resource type.
class GoogleCloudChannelV1PriceByResource {
  /// Price of the Offer.
  ///
  /// Present if there are no price phases.
  GoogleCloudChannelV1Price? price;

  /// Specifies the price by time range.
  core.List<GoogleCloudChannelV1PricePhase>? pricePhases;

  /// Resource Type.
  ///
  /// Example: SEAT
  /// Possible string values are:
  /// - "RESOURCE_TYPE_UNSPECIFIED" : Not used.
  /// - "SEAT" : Seat.
  /// - "MAU" : Monthly active user.
  /// - "GB" : GB (used for storage SKUs).
  /// - "LICENSED_USER" : Active licensed users(for Voice SKUs).
  /// - "MINUTES" : Voice usage.
  /// - "IAAS_USAGE" : For IaaS SKUs like Google Cloud Platform, monetization is
  /// based on usage accrued on your billing account irrespective of the type of
  /// monetizable resource. This enum represents an aggregated
  /// resource/container for all usage SKUs on a billing account. Currently,
  /// only applicable to Google Cloud Platform.
  /// - "SUBSCRIPTION" : For Google Cloud Platform subscriptions like Anthos or
  /// SAP.
  core.String? resourceType;

  GoogleCloudChannelV1PriceByResource({
    this.price,
    this.pricePhases,
    this.resourceType,
  });

  GoogleCloudChannelV1PriceByResource.fromJson(core.Map json_)
      : this(
          price: json_.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>)
              : null,
          pricePhases: json_.containsKey('pricePhases')
              ? (json_['pricePhases'] as core.List)
                  .map((value) => GoogleCloudChannelV1PricePhase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (price != null) 'price': price!,
        if (pricePhases != null) 'pricePhases': pricePhases!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Specifies the price by the duration of months.
///
/// For example, a 20% discount for the first six months, then a 10% discount
/// starting on the seventh month.
class GoogleCloudChannelV1PricePhase {
  /// Defines first period for the phase.
  core.int? firstPeriod;

  /// Defines first period for the phase.
  core.int? lastPeriod;

  /// Defines the phase period type.
  /// Possible string values are:
  /// - "PERIOD_TYPE_UNSPECIFIED" : Not used.
  /// - "DAY" : Day.
  /// - "MONTH" : Month.
  /// - "YEAR" : Year.
  core.String? periodType;

  /// Price of the phase.
  ///
  /// Present if there are no price tiers.
  GoogleCloudChannelV1Price? price;

  /// Price by the resource tiers.
  core.List<GoogleCloudChannelV1PriceTier>? priceTiers;

  GoogleCloudChannelV1PricePhase({
    this.firstPeriod,
    this.lastPeriod,
    this.periodType,
    this.price,
    this.priceTiers,
  });

  GoogleCloudChannelV1PricePhase.fromJson(core.Map json_)
      : this(
          firstPeriod: json_.containsKey('firstPeriod')
              ? json_['firstPeriod'] as core.int
              : null,
          lastPeriod: json_.containsKey('lastPeriod')
              ? json_['lastPeriod'] as core.int
              : null,
          periodType: json_.containsKey('periodType')
              ? json_['periodType'] as core.String
              : null,
          price: json_.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>)
              : null,
          priceTiers: json_.containsKey('priceTiers')
              ? (json_['priceTiers'] as core.List)
                  .map((value) => GoogleCloudChannelV1PriceTier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstPeriod != null) 'firstPeriod': firstPeriod!,
        if (lastPeriod != null) 'lastPeriod': lastPeriod!,
        if (periodType != null) 'periodType': periodType!,
        if (price != null) 'price': price!,
        if (priceTiers != null) 'priceTiers': priceTiers!,
      };
}

/// Defines price at resource tier level.
///
/// For example, an offer with following definition : * Tier 1: Provide 25%
/// discount for all seats between 1 and 25. * Tier 2: Provide 10% discount for
/// all seats between 26 and 100. * Tier 3: Provide flat 15% discount for all
/// seats above 100. Each of these tiers is represented as a PriceTier.
class GoogleCloudChannelV1PriceTier {
  /// First resource for which the tier price applies.
  core.int? firstResource;

  /// Last resource for which the tier price applies.
  core.int? lastResource;

  /// Price of the tier.
  GoogleCloudChannelV1Price? price;

  GoogleCloudChannelV1PriceTier({
    this.firstResource,
    this.lastResource,
    this.price,
  });

  GoogleCloudChannelV1PriceTier.fromJson(core.Map json_)
      : this(
          firstResource: json_.containsKey('firstResource')
              ? json_['firstResource'] as core.int
              : null,
          lastResource: json_.containsKey('lastResource')
              ? json_['lastResource'] as core.int
              : null,
          price: json_.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  json_['price'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstResource != null) 'firstResource': firstResource!,
        if (lastResource != null) 'lastResource': lastResource!,
        if (price != null) 'price': price!,
      };
}

/// A Product is the entity a customer uses when placing an order.
///
/// For example, Google Workspace, Google Voice, etc.
class GoogleCloudChannelV1Product {
  /// Marketing information for the product.
  GoogleCloudChannelV1MarketingInfo? marketingInfo;

  /// Resource Name of the Product.
  ///
  /// Format: products/{product_id}
  core.String? name;

  GoogleCloudChannelV1Product({
    this.marketingInfo,
    this.name,
  });

  GoogleCloudChannelV1Product.fromJson(core.Map json_)
      : this(
          marketingInfo: json_.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  json_['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (marketingInfo != null) 'marketingInfo': marketingInfo!,
        if (name != null) 'name': name!,
      };
}

/// Request message for CloudChannelService.ProvisionCloudIdentity
class GoogleCloudChannelV1ProvisionCloudIdentityRequest {
  /// CloudIdentity-specific customer information.
  GoogleCloudChannelV1CloudIdentityInfo? cloudIdentityInfo;

  /// Admin user information.
  GoogleCloudChannelV1AdminUser? user;

  /// Validate the request and preview the review, but do not post it.
  core.bool? validateOnly;

  GoogleCloudChannelV1ProvisionCloudIdentityRequest({
    this.cloudIdentityInfo,
    this.user,
    this.validateOnly,
  });

  GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(core.Map json_)
      : this(
          cloudIdentityInfo: json_.containsKey('cloudIdentityInfo')
              ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                  json_['cloudIdentityInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          user: json_.containsKey('user')
              ? GoogleCloudChannelV1AdminUser.fromJson(
                  json_['user'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_.containsKey('validateOnly')
              ? json_['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudIdentityInfo != null) 'cloudIdentityInfo': cloudIdentityInfo!,
        if (user != null) 'user': user!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Service provisioned for an entitlement.
class GoogleCloudChannelV1ProvisionedService {
  /// The product pertaining to the provisioning resource as specified in the
  /// Offer.
  ///
  /// Output only.
  core.String? productId;

  /// Provisioning ID of the entitlement.
  ///
  /// For Google Workspace, this is the underlying Subscription ID. For Google
  /// Cloud Platform, this is the Billing Account ID of the billing subaccount."
  ///
  /// Output only.
  core.String? provisioningId;

  /// The SKU pertaining to the provisioning resource as specified in the Offer.
  ///
  /// Output only.
  core.String? skuId;

  GoogleCloudChannelV1ProvisionedService({
    this.productId,
    this.provisioningId,
    this.skuId,
  });

  GoogleCloudChannelV1ProvisionedService.fromJson(core.Map json_)
      : this(
          productId: json_.containsKey('productId')
              ? json_['productId'] as core.String
              : null,
          provisioningId: json_.containsKey('provisioningId')
              ? json_['provisioningId'] as core.String
              : null,
          skuId:
              json_.containsKey('skuId') ? json_['skuId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (productId != null) 'productId': productId!,
        if (provisioningId != null) 'provisioningId': provisioningId!,
        if (skuId != null) 'skuId': skuId!,
      };
}

/// Offer that you can purchase for a customer.
///
/// This is used in the ListPurchasableOffer API response.
class GoogleCloudChannelV1PurchasableOffer {
  /// Offer.
  GoogleCloudChannelV1Offer? offer;

  GoogleCloudChannelV1PurchasableOffer({
    this.offer,
  });

  GoogleCloudChannelV1PurchasableOffer.fromJson(core.Map json_)
      : this(
          offer: json_.containsKey('offer')
              ? GoogleCloudChannelV1Offer.fromJson(
                  json_['offer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offer != null) 'offer': offer!,
      };
}

/// SKU that you can purchase.
///
/// This is used in ListPurchasableSku API response.
class GoogleCloudChannelV1PurchasableSku {
  /// SKU
  GoogleCloudChannelV1Sku? sku;

  GoogleCloudChannelV1PurchasableSku({
    this.sku,
  });

  GoogleCloudChannelV1PurchasableSku.fromJson(core.Map json_)
      : this(
          sku: json_.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  json_['sku'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sku != null) 'sku': sku!,
      };
}

/// Request Message for RegisterSubscriber.
class GoogleCloudChannelV1RegisterSubscriberRequest {
  /// Service account that provides subscriber access to the registered topic.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudChannelV1RegisterSubscriberRequest({
    this.serviceAccount,
  });

  GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(core.Map json_)
      : this(
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Response Message for RegisterSubscriber.
class GoogleCloudChannelV1RegisterSubscriberResponse {
  /// Name of the topic the subscriber will listen to.
  core.String? topic;

  GoogleCloudChannelV1RegisterSubscriberResponse({
    this.topic,
  });

  GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(core.Map json_)
      : this(
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Renewal settings for renewable Offers.
class GoogleCloudChannelV1RenewalSettings {
  /// If false, the plan will be completed at the end date.
  core.bool? enableRenewal;

  /// Describes how frequently the reseller will be billed, such as once per
  /// month.
  GoogleCloudChannelV1Period? paymentCycle;

  /// Describes how a reseller will be billed.
  /// Possible string values are:
  /// - "PAYMENT_PLAN_UNSPECIFIED" : Not used.
  /// - "COMMITMENT" : Commitment.
  /// - "FLEXIBLE" : No commitment.
  /// - "FREE" : Free.
  /// - "TRIAL" : Trial.
  /// - "OFFLINE" : Price and ordering not available through API.
  core.String? paymentPlan;

  /// If true and enable_renewal = true, the unit (for example seats or
  /// licenses) will be set to the number of active units at renewal time.
  core.bool? resizeUnitCount;

  GoogleCloudChannelV1RenewalSettings({
    this.enableRenewal,
    this.paymentCycle,
    this.paymentPlan,
    this.resizeUnitCount,
  });

  GoogleCloudChannelV1RenewalSettings.fromJson(core.Map json_)
      : this(
          enableRenewal: json_.containsKey('enableRenewal')
              ? json_['enableRenewal'] as core.bool
              : null,
          paymentCycle: json_.containsKey('paymentCycle')
              ? GoogleCloudChannelV1Period.fromJson(
                  json_['paymentCycle'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentPlan: json_.containsKey('paymentPlan')
              ? json_['paymentPlan'] as core.String
              : null,
          resizeUnitCount: json_.containsKey('resizeUnitCount')
              ? json_['resizeUnitCount'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableRenewal != null) 'enableRenewal': enableRenewal!,
        if (paymentCycle != null) 'paymentCycle': paymentCycle!,
        if (paymentPlan != null) 'paymentPlan': paymentPlan!,
        if (resizeUnitCount != null) 'resizeUnitCount': resizeUnitCount!,
      };
}

/// The ID and description of a report that was used to generate report data.
///
/// For example, "GCP Daily Spend", "Google Workspace License Activity", etc.
class GoogleCloudChannelV1Report {
  /// The list of columns included in the report.
  ///
  /// This defines the schema of the report results.
  core.List<GoogleCloudChannelV1Column>? columns;

  /// A description of other aspects of the report, such as the products it
  /// supports.
  core.String? description;

  /// A human-readable name for this report.
  core.String? displayName;

  /// The report's resource name.
  ///
  /// Specifies the account and report used to generate report data. The
  /// report_id identifier is a UID (for example, `613bf59q`). Name uses the
  /// format: accounts/{account_id}/reports/{report_id}
  ///
  /// Required.
  core.String? name;

  GoogleCloudChannelV1Report({
    this.columns,
    this.description,
    this.displayName,
    this.name,
  });

  GoogleCloudChannelV1Report.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => GoogleCloudChannelV1Column.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
      };
}

/// The features describing the data.
///
/// Returned by CloudChannelReportsService.RunReportJob and
/// CloudChannelReportsService.FetchReportResults.
class GoogleCloudChannelV1ReportResultsMetadata {
  /// The date range of reported usage.
  GoogleCloudChannelV1DateRange? dateRange;

  /// The usage dates immediately preceding `date_range` with the same duration.
  ///
  /// Use this to calculate trending usage and costs. This is only populated if
  /// you request trending data. For example, if `date_range` is July 1-15,
  /// `preceding_date_range` will be June 16-30.
  GoogleCloudChannelV1DateRange? precedingDateRange;

  /// Details of the completed report.
  GoogleCloudChannelV1Report? report;

  /// The total number of rows of data in the final report.
  core.String? rowCount;

  GoogleCloudChannelV1ReportResultsMetadata({
    this.dateRange,
    this.precedingDateRange,
    this.report,
    this.rowCount,
  });

  GoogleCloudChannelV1ReportResultsMetadata.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? GoogleCloudChannelV1DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          precedingDateRange: json_.containsKey('precedingDateRange')
              ? GoogleCloudChannelV1DateRange.fromJson(
                  json_['precedingDateRange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          report: json_.containsKey('report')
              ? GoogleCloudChannelV1Report.fromJson(
                  json_['report'] as core.Map<core.String, core.dynamic>)
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (precedingDateRange != null)
          'precedingDateRange': precedingDateRange!,
        if (report != null) 'report': report!,
        if (rowCount != null) 'rowCount': rowCount!,
      };
}

/// A single report value.
class GoogleCloudChannelV1ReportValue {
  /// A value of type `google.type.DateTime` (year, month, day, hour, minute,
  /// second, and UTC offset or timezone.)
  GoogleTypeDateTime? dateTimeValue;

  /// A value of type `google.type.Date` (year, month, day).
  GoogleTypeDate? dateValue;

  /// A value of type `google.type.Decimal`, representing non-integer numeric
  /// values.
  GoogleTypeDecimal? decimalValue;

  /// A value of type `int`.
  core.String? intValue;

  /// A value of type `google.type.Money` (currency code, whole units, decimal
  /// units).
  GoogleTypeMoney? moneyValue;

  /// A value of type `string`.
  core.String? stringValue;

  GoogleCloudChannelV1ReportValue({
    this.dateTimeValue,
    this.dateValue,
    this.decimalValue,
    this.intValue,
    this.moneyValue,
    this.stringValue,
  });

  GoogleCloudChannelV1ReportValue.fromJson(core.Map json_)
      : this(
          dateTimeValue: json_.containsKey('dateTimeValue')
              ? GoogleTypeDateTime.fromJson(
                  json_['dateTimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          dateValue: json_.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  json_['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          decimalValue: json_.containsKey('decimalValue')
              ? GoogleTypeDecimal.fromJson(
                  json_['decimalValue'] as core.Map<core.String, core.dynamic>)
              : null,
          intValue: json_.containsKey('intValue')
              ? json_['intValue'] as core.String
              : null,
          moneyValue: json_.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  json_['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTimeValue != null) 'dateTimeValue': dateTimeValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (decimalValue != null) 'decimalValue': decimalValue!,
        if (intValue != null) 'intValue': intValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// A type that represents the various adjustments you can apply to a bill.
class GoogleCloudChannelV1RepricingAdjustment {
  /// Flat markup or markdown on an entire bill.
  GoogleCloudChannelV1PercentageAdjustment? percentageAdjustment;

  GoogleCloudChannelV1RepricingAdjustment({
    this.percentageAdjustment,
  });

  GoogleCloudChannelV1RepricingAdjustment.fromJson(core.Map json_)
      : this(
          percentageAdjustment: json_.containsKey('percentageAdjustment')
              ? GoogleCloudChannelV1PercentageAdjustment.fromJson(
                  json_['percentageAdjustment']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentageAdjustment != null)
          'percentageAdjustment': percentageAdjustment!,
      };
}

/// Configuration for repricing a Google bill over a period of time.
class GoogleCloudChannelV1RepricingConfig {
  /// Information about the adjustment.
  ///
  /// Required.
  GoogleCloudChannelV1RepricingAdjustment? adjustment;

  /// Applies the repricing configuration at the channel partner level.
  ///
  /// This is the only supported value for ChannelPartnerRepricingConfig.
  GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity?
      channelPartnerGranularity;

  /// The YearMonth when these adjustments activate.
  ///
  /// The Day field needs to be "0" since we only accept YearMonth repricing
  /// boundaries.
  ///
  /// Required.
  GoogleTypeDate? effectiveInvoiceMonth;

  /// Applies the repricing configuration at the entitlement level.
  ///
  /// This is the only supported value for CustomerRepricingConfig.
  GoogleCloudChannelV1RepricingConfigEntitlementGranularity?
      entitlementGranularity;

  /// The RebillingBasis to use for this bill.
  ///
  /// Specifies the relative cost based on repricing costs you will apply.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REBILLING_BASIS_UNSPECIFIED" : Not used.
  /// - "COST_AT_LIST" : Use the list cost, also known as the MSRP.
  /// - "DIRECT_CUSTOMER_COST" : Pass through all discounts except the Reseller
  /// Program Discount. If this is the default cost base and no adjustments are
  /// specified, the output cost will be exactly what the customer would see if
  /// they viewed the bill in the Google Cloud Console.
  core.String? rebillingBasis;

  GoogleCloudChannelV1RepricingConfig({
    this.adjustment,
    this.channelPartnerGranularity,
    this.effectiveInvoiceMonth,
    this.entitlementGranularity,
    this.rebillingBasis,
  });

  GoogleCloudChannelV1RepricingConfig.fromJson(core.Map json_)
      : this(
          adjustment: json_.containsKey('adjustment')
              ? GoogleCloudChannelV1RepricingAdjustment.fromJson(
                  json_['adjustment'] as core.Map<core.String, core.dynamic>)
              : null,
          channelPartnerGranularity:
              json_.containsKey('channelPartnerGranularity')
                  ? GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
                      .fromJson(json_['channelPartnerGranularity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          effectiveInvoiceMonth: json_.containsKey('effectiveInvoiceMonth')
              ? GoogleTypeDate.fromJson(json_['effectiveInvoiceMonth']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entitlementGranularity: json_.containsKey('entitlementGranularity')
              ? GoogleCloudChannelV1RepricingConfigEntitlementGranularity
                  .fromJson(json_['entitlementGranularity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rebillingBasis: json_.containsKey('rebillingBasis')
              ? json_['rebillingBasis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adjustment != null) 'adjustment': adjustment!,
        if (channelPartnerGranularity != null)
          'channelPartnerGranularity': channelPartnerGranularity!,
        if (effectiveInvoiceMonth != null)
          'effectiveInvoiceMonth': effectiveInvoiceMonth!,
        if (entitlementGranularity != null)
          'entitlementGranularity': entitlementGranularity!,
        if (rebillingBasis != null) 'rebillingBasis': rebillingBasis!,
      };
}

/// Applies the repricing configuration at the channel partner level.
///
/// The channel partner value is derived from the resource name. Takes an empty
/// json object.
typedef GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity = $Empty;

/// Applies the repricing configuration at the entitlement level.
class GoogleCloudChannelV1RepricingConfigEntitlementGranularity {
  /// Resource name of the entitlement.
  ///
  /// Format:
  /// accounts/{account_id}/customers/{customer_id}/entitlements/{entitlement_id}
  core.String? entitlement;

  GoogleCloudChannelV1RepricingConfigEntitlementGranularity({
    this.entitlement,
  });

  GoogleCloudChannelV1RepricingConfigEntitlementGranularity.fromJson(
      core.Map json_)
      : this(
          entitlement: json_.containsKey('entitlement')
              ? json_['entitlement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlement != null) 'entitlement': entitlement!,
      };
}

/// A row of report values.
class GoogleCloudChannelV1Row {
  /// The list of values in the row.
  core.List<GoogleCloudChannelV1ReportValue>? values;

  GoogleCloudChannelV1Row({
    this.values,
  });

  GoogleCloudChannelV1Row.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => GoogleCloudChannelV1ReportValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Request message for CloudChannelReportsService.RunReportJob.
class GoogleCloudChannelV1RunReportJobRequest {
  /// The range of usage or invoice dates to include in the result.
  ///
  /// Optional.
  GoogleCloudChannelV1DateRange? dateRange;

  /// A structured string that defines conditions on dimension columns to
  /// restrict the report output.
  ///
  /// Filters support logical operators (AND, OR, NOT) and conditional operators
  /// (=, !=, \<, \>, \<=, and \>=) using `column_id` as keys. For example:
  /// `(customer:"accounts/C123abc/customers/S456def" OR
  /// customer:"accounts/C123abc/customers/S789ghi") AND invoice_start_date.year
  /// >= 2022`
  ///
  /// Optional.
  core.String? filter;

  /// The BCP-47 language code, such as "en-US".
  ///
  /// If specified, the response is localized to the corresponding language code
  /// if the original data sources support it. Default is "en-US".
  ///
  /// Optional.
  core.String? languageCode;

  GoogleCloudChannelV1RunReportJobRequest({
    this.dateRange,
    this.filter,
    this.languageCode,
  });

  GoogleCloudChannelV1RunReportJobRequest.fromJson(core.Map json_)
      : this(
          dateRange: json_.containsKey('dateRange')
              ? GoogleCloudChannelV1DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateRange != null) 'dateRange': dateRange!,
        if (filter != null) 'filter': filter!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Represents a product's purchasable Stock Keeping Unit (SKU).
///
/// SKUs represent the different variations of the product. For example, Google
/// Workspace Business Standard and Google Workspace Business Plus are Google
/// Workspace product SKUs.
class GoogleCloudChannelV1Sku {
  /// Marketing information for the SKU.
  GoogleCloudChannelV1MarketingInfo? marketingInfo;

  /// Resource Name of the SKU.
  ///
  /// Format: products/{product_id}/skus/{sku_id}
  core.String? name;

  /// Product the SKU is associated with.
  GoogleCloudChannelV1Product? product;

  GoogleCloudChannelV1Sku({
    this.marketingInfo,
    this.name,
    this.product,
  });

  GoogleCloudChannelV1Sku.fromJson(core.Map json_)
      : this(
          marketingInfo: json_.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  json_['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          product: json_.containsKey('product')
              ? GoogleCloudChannelV1Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (marketingInfo != null) 'marketingInfo': marketingInfo!,
        if (name != null) 'name': name!,
        if (product != null) 'product': product!,
      };
}

/// Request message for CloudChannelService.StartPaidService.
typedef GoogleCloudChannelV1StartPaidServiceRequest = $Request01;

/// Request message for CloudChannelService.SuspendEntitlement.
typedef GoogleCloudChannelV1SuspendEntitlementRequest = $Request01;

/// Specifies transfer eligibility of a SKU.
class GoogleCloudChannelV1TransferEligibility {
  /// Localized description if reseller is not eligible to transfer the SKU.
  core.String? description;

  /// Specified the reason for ineligibility.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED" : Not used.
  /// - "PENDING_TOS_ACCEPTANCE" : Reseller needs to accept TOS before
  /// transferring the SKU.
  /// - "SKU_NOT_ELIGIBLE" : Reseller not eligible to sell the SKU.
  /// - "SKU_SUSPENDED" : SKU subscription is suspended
  core.String? ineligibilityReason;

  /// Whether reseller is eligible to transfer the SKU.
  core.bool? isEligible;

  GoogleCloudChannelV1TransferEligibility({
    this.description,
    this.ineligibilityReason,
    this.isEligible,
  });

  GoogleCloudChannelV1TransferEligibility.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          ineligibilityReason: json_.containsKey('ineligibilityReason')
              ? json_['ineligibilityReason'] as core.String
              : null,
          isEligible: json_.containsKey('isEligible')
              ? json_['isEligible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (ineligibilityReason != null)
          'ineligibilityReason': ineligibilityReason!,
        if (isEligible != null) 'isEligible': isEligible!,
      };
}

/// Request message for CloudChannelService.TransferEntitlements.
class GoogleCloudChannelV1TransferEntitlementsRequest {
  /// The super admin of the resold customer generates this token to authorize a
  /// reseller to access their Cloud Identity and purchase entitlements on their
  /// behalf.
  ///
  /// You can omit this token after authorization. See
  /// https://support.google.com/a/answer/7643790 for more details.
  core.String? authToken;

  /// The new entitlements to create or transfer.
  ///
  /// Required.
  core.List<GoogleCloudChannelV1Entitlement>? entitlements;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1TransferEntitlementsRequest({
    this.authToken,
    this.entitlements,
    this.requestId,
  });

  GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(core.Map json_)
      : this(
          authToken: json_.containsKey('authToken')
              ? json_['authToken'] as core.String
              : null,
          entitlements: json_.containsKey('entitlements')
              ? (json_['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authToken != null) 'authToken': authToken!,
        if (entitlements != null) 'entitlements': entitlements!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request message for CloudChannelService.TransferEntitlementsToGoogle.
class GoogleCloudChannelV1TransferEntitlementsToGoogleRequest {
  /// The entitlements to transfer to Google.
  ///
  /// Required.
  core.List<GoogleCloudChannelV1Entitlement>? entitlements;

  /// You can specify an optional unique request ID, and if you need to retry
  /// your request, the server will know to ignore the request if it's complete.
  ///
  /// For example, you make an initial request and the request times out. If you
  /// make the request again with the same request ID, the server can check if
  /// it received the original operation with the same request ID. If it did, it
  /// will ignore the second request. The request ID must be a valid
  /// [UUID](https://tools.ietf.org/html/rfc4122) with the exception that zero
  /// UUID is not supported (`00000000-0000-0000-0000-000000000000`).
  ///
  /// Optional.
  core.String? requestId;

  GoogleCloudChannelV1TransferEntitlementsToGoogleRequest({
    this.entitlements,
    this.requestId,
  });

  GoogleCloudChannelV1TransferEntitlementsToGoogleRequest.fromJson(
      core.Map json_)
      : this(
          entitlements: json_.containsKey('entitlements')
              ? (json_['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlements != null) 'entitlements': entitlements!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// TransferableOffer represents an Offer that can be used in Transfer.
///
/// Read-only.
class GoogleCloudChannelV1TransferableOffer {
  /// Offer with parameter constraints updated to allow the Transfer.
  GoogleCloudChannelV1Offer? offer;

  GoogleCloudChannelV1TransferableOffer({
    this.offer,
  });

  GoogleCloudChannelV1TransferableOffer.fromJson(core.Map json_)
      : this(
          offer: json_.containsKey('offer')
              ? GoogleCloudChannelV1Offer.fromJson(
                  json_['offer'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (offer != null) 'offer': offer!,
      };
}

/// TransferableSku represents information a reseller needs to view existing
/// provisioned services for a customer that they do not own.
///
/// Read-only.
class GoogleCloudChannelV1TransferableSku {
  /// The customer to transfer has an entitlement with the populated legacy SKU.
  ///
  /// Optional.
  GoogleCloudChannelV1Sku? legacySku;

  /// The SKU pertaining to the provisioning resource as specified in the Offer.
  GoogleCloudChannelV1Sku? sku;

  /// Describes the transfer eligibility of a SKU.
  GoogleCloudChannelV1TransferEligibility? transferEligibility;

  GoogleCloudChannelV1TransferableSku({
    this.legacySku,
    this.sku,
    this.transferEligibility,
  });

  GoogleCloudChannelV1TransferableSku.fromJson(core.Map json_)
      : this(
          legacySku: json_.containsKey('legacySku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  json_['legacySku'] as core.Map<core.String, core.dynamic>)
              : null,
          sku: json_.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  json_['sku'] as core.Map<core.String, core.dynamic>)
              : null,
          transferEligibility: json_.containsKey('transferEligibility')
              ? GoogleCloudChannelV1TransferEligibility.fromJson(
                  json_['transferEligibility']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (legacySku != null) 'legacySku': legacySku!,
        if (sku != null) 'sku': sku!,
        if (transferEligibility != null)
          'transferEligibility': transferEligibility!,
      };
}

/// Settings for trial offers.
class GoogleCloudChannelV1TrialSettings {
  /// Date when the trial ends.
  ///
  /// The value is in milliseconds using the UNIX Epoch format. See an example
  /// [Epoch converter](https://www.epochconverter.com).
  core.String? endTime;

  /// Determines if the entitlement is in a trial or not: * `true` - The
  /// entitlement is in trial.
  ///
  /// * `false` - The entitlement is not in trial.
  core.bool? trial;

  GoogleCloudChannelV1TrialSettings({
    this.endTime,
    this.trial,
  });

  GoogleCloudChannelV1TrialSettings.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          trial:
              json_.containsKey('trial') ? json_['trial'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (trial != null) 'trial': trial!,
      };
}

/// Request Message for UnregisterSubscriber.
class GoogleCloudChannelV1UnregisterSubscriberRequest {
  /// Service account to unregister from subscriber access to the topic.
  ///
  /// Required.
  core.String? serviceAccount;

  GoogleCloudChannelV1UnregisterSubscriberRequest({
    this.serviceAccount,
  });

  GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(core.Map json_)
      : this(
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// Response Message for UnregisterSubscriber.
class GoogleCloudChannelV1UnregisterSubscriberResponse {
  /// Name of the topic the service account subscriber access was removed from.
  core.String? topic;

  GoogleCloudChannelV1UnregisterSubscriberResponse({
    this.topic,
  });

  GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(core.Map json_)
      : this(
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Request message for CloudChannelService.UpdateChannelPartnerLink
class GoogleCloudChannelV1UpdateChannelPartnerLinkRequest {
  /// The channel partner link to update.
  ///
  /// Only channel_partner_link.link_state is allowed for updates.
  ///
  /// Required.
  GoogleCloudChannelV1ChannelPartnerLink? channelPartnerLink;

  /// The update mask that applies to the resource.
  ///
  /// The only allowable value for an update mask is
  /// channel_partner_link.link_state.
  ///
  /// Required.
  core.String? updateMask;

  GoogleCloudChannelV1UpdateChannelPartnerLinkRequest({
    this.channelPartnerLink,
    this.updateMask,
  });

  GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(core.Map json_)
      : this(
          channelPartnerLink: json_.containsKey('channelPartnerLink')
              ? GoogleCloudChannelV1ChannelPartnerLink.fromJson(
                  json_['channelPartnerLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelPartnerLink != null)
          'channelPartnerLink': channelPartnerLink!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Data type and value of a parameter.
class GoogleCloudChannelV1Value {
  /// Represents a boolean value.
  core.bool? boolValue;

  /// Represents a double value.
  core.double? doubleValue;

  /// Represents an int64 value.
  core.String? int64Value;

  /// Represents an 'Any' proto value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? protoValue;

  /// Represents a string value.
  core.String? stringValue;

  GoogleCloudChannelV1Value({
    this.boolValue,
    this.doubleValue,
    this.int64Value,
    this.protoValue,
    this.stringValue,
  });

  GoogleCloudChannelV1Value.fromJson(core.Map json_)
      : this(
          boolValue: json_.containsKey('boolValue')
              ? json_['boolValue'] as core.bool
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          int64Value: json_.containsKey('int64Value')
              ? json_['int64Value'] as core.String
              : null,
          protoValue: json_.containsKey('protoValue')
              ? json_['protoValue'] as core.Map<core.String, core.dynamic>
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (protoValue != null) 'protoValue': protoValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

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

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  GoogleTypeTimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  GoogleTypeDateTime.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          hours: json_.containsKey('hours') ? json_['hours'] as core.int : null,
          minutes: json_.containsKey('minutes')
              ? json_['minutes'] as core.int
              : null,
          month: json_.containsKey('month') ? json_['month'] as core.int : null,
          nanos: json_.containsKey('nanos') ? json_['nanos'] as core.int : null,
          seconds: json_.containsKey('seconds')
              ? json_['seconds'] as core.int
              : null,
          timeZone: json_.containsKey('timeZone')
              ? GoogleTypeTimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: json_.containsKey('utcOffset')
              ? json_['utcOffset'] as core.String
              : null,
          year: json_.containsKey('year') ? json_['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
      };
}

/// A representation of a decimal value, such as 2.5.
///
/// Clients may convert values into language-native decimal formats, such as
/// Java's BigDecimal or Python's decimal.Decimal. \[BigDecimal\]:
/// https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html
/// \[decimal.Decimal\]: https://docs.python.org/3/library/decimal.html
typedef GoogleTypeDecimal = $GoogleTypeDecimal;

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef GoogleTypePostalAddress = $PostalAddress;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
