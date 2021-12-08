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
///     - [AccountsChannelPartnerLinksCustomersResource]
///   - [AccountsCustomersResource]
///     - [AccountsCustomersEntitlementsResource]
///   - [AccountsOffersResource]
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        ':checkCloudIdentityAccountsExist';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$account') + ':listSubscribers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListSubscribersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List TransferableOffers of a customer based on Cloud Identity ID or
  /// Customer Name in the request.
  ///
  /// Use this method when a reseller gets the entitlement information of an
  /// unowned customer. The reseller should provide the customer's Cloud
  /// Identity ID or Customer Name. Possible error codes: * PERMISSION_DENIED: *
  /// The customer doesn't belong to the reseller and has no auth token. * The
  /// supplied auth token is invalid. * The reseller account making the request
  /// is different from the reseller account in the query. * INVALID_ARGUMENT:
  /// Required request parameters are missing or invalid. Return value: List of
  /// TransferableOffer for the given customer and SKU.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':listTransferableOffers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':listTransferableSkus';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$account') + ':register';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$account') + ':unregister';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsChannelPartnerLinksResource {
  final commons.ApiRequester _requester;

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/channelPartnerLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/channelPartnerLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ChannelPartnerLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListCustomersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomersResource {
  final commons.ApiRequester _requester;

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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers:import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/customers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListCustomersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url =
        'v1/' + core.Uri.encodeFull('$customer') + ':listPurchasableOffers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url =
        'v1/' + core.Uri.encodeFull('$customer') + ':listPurchasableSkus';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    return GoogleCloudChannelV1Customer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$customer') + ':provisionCloudIdentity';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + ':transferEntitlements';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' +
        core.Uri.encodeFull('$parent') +
        ':transferEntitlementsToGoogle';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':changeOffer';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':changeParameters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':changeRenewalSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Entitlement.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListEntitlementsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$entitlement') + ':lookupOffer';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1Offer.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':startPaidService';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':suspend';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/offers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListOffersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (account != null) 'account': [account],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListProductsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (account != null) 'account': [account],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/skus';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudChannelV1ListSkusResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

  GoogleCloudChannelV1AdminUser.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          familyName: _json.containsKey('familyName')
              ? _json['familyName'] as core.String
              : null,
          givenName: _json.containsKey('givenName')
              ? _json['givenName'] as core.String
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

  GoogleCloudChannelV1AssociationInfo.fromJson(core.Map _json)
      : this(
          baseEntitlement: _json.containsKey('baseEntitlement')
              ? _json['baseEntitlement'] as core.String
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

  GoogleCloudChannelV1ChangeOfferRequest.fromJson(core.Map _json)
      : this(
          offer:
              _json.containsKey('offer') ? _json['offer'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseOrderId: _json.containsKey('purchaseOrderId')
              ? _json['purchaseOrderId'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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

  GoogleCloudChannelV1ChangeParametersRequest.fromJson(core.Map _json)
      : this(
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          purchaseOrderId: _json.containsKey('purchaseOrderId')
              ? _json['purchaseOrderId'] as core.String
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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

  GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(core.Map _json)
      : this(
          renewalSettings: _json.containsKey('renewalSettings')
              ? GoogleCloudChannelV1RenewalSettings.fromJson(
                  _json['renewalSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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
  /// - "CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED" : The state is not specified.
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

  GoogleCloudChannelV1ChannelPartnerLink.fromJson(core.Map _json)
      : this(
          channelPartnerCloudIdentityInfo:
              _json.containsKey('channelPartnerCloudIdentityInfo')
                  ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                      _json['channelPartnerCloudIdentityInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          inviteLinkUri: _json.containsKey('inviteLinkUri')
              ? _json['inviteLinkUri'] as core.String
              : null,
          linkState: _json.containsKey('linkState')
              ? _json['linkState'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          publicId: _json.containsKey('publicId')
              ? _json['publicId'] as core.String
              : null,
          resellerCloudIdentityId: _json.containsKey('resellerCloudIdentityId')
              ? _json['resellerCloudIdentityId'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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
      core.Map _json)
      : this(
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
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
      core.Map _json)
      : this(
          cloudIdentityAccounts: _json.containsKey('cloudIdentityAccounts')
              ? (_json['cloudIdentityAccounts'] as core.List)
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

  GoogleCloudChannelV1CloudIdentityCustomerAccount.fromJson(core.Map _json)
      : this(
          customerCloudIdentityId: _json.containsKey('customerCloudIdentityId')
              ? _json['customerCloudIdentityId'] as core.String
              : null,
          customerName: _json.containsKey('customerName')
              ? _json['customerName'] as core.String
              : null,
          existing: _json.containsKey('existing')
              ? _json['existing'] as core.bool
              : null,
          owned:
              _json.containsKey('owned') ? _json['owned'] as core.bool : null,
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
  /// - "CUSTOMER_TYPE_UNSPECIFIED" : Default value. This state doesn't show
  /// unless an error occurs.
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

  GoogleCloudChannelV1CloudIdentityInfo.fromJson(core.Map _json)
      : this(
          adminConsoleUri: _json.containsKey('adminConsoleUri')
              ? _json['adminConsoleUri'] as core.String
              : null,
          alternateEmail: _json.containsKey('alternateEmail')
              ? _json['alternateEmail'] as core.String
              : null,
          customerType: _json.containsKey('customerType')
              ? _json['customerType'] as core.String
              : null,
          eduData: _json.containsKey('eduData')
              ? GoogleCloudChannelV1EduData.fromJson(
                  _json['eduData'] as core.Map<core.String, core.dynamic>)
              : null,
          isDomainVerified: _json.containsKey('isDomainVerified')
              ? _json['isDomainVerified'] as core.bool
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          phoneNumber: _json.containsKey('phoneNumber')
              ? _json['phoneNumber'] as core.String
              : null,
          primaryDomain: _json.containsKey('primaryDomain')
              ? _json['primaryDomain'] as core.String
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

  GoogleCloudChannelV1CommitmentSettings.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          renewalSettings: _json.containsKey('renewalSettings')
              ? GoogleCloudChannelV1RenewalSettings.fromJson(
                  _json['renewalSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
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

  GoogleCloudChannelV1Constraints.fromJson(core.Map _json)
      : this(
          customerConstraints: _json.containsKey('customerConstraints')
              ? GoogleCloudChannelV1CustomerConstraints.fromJson(
                  _json['customerConstraints']
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

  GoogleCloudChannelV1ContactInfo.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          firstName: _json.containsKey('firstName')
              ? _json['firstName'] as core.String
              : null,
          lastName: _json.containsKey('lastName')
              ? _json['lastName'] as core.String
              : null,
          phone:
              _json.containsKey('phone') ? _json['phone'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
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

  GoogleCloudChannelV1CreateEntitlementRequest.fromJson(core.Map _json)
      : this(
          entitlement: _json.containsKey('entitlement')
              ? GoogleCloudChannelV1Entitlement.fromJson(
                  _json['entitlement'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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

  GoogleCloudChannelV1Customer.fromJson(core.Map _json)
      : this(
          alternateEmail: _json.containsKey('alternateEmail')
              ? _json['alternateEmail'] as core.String
              : null,
          channelPartnerId: _json.containsKey('channelPartnerId')
              ? _json['channelPartnerId'] as core.String
              : null,
          cloudIdentityId: _json.containsKey('cloudIdentityId')
              ? _json['cloudIdentityId'] as core.String
              : null,
          cloudIdentityInfo: _json.containsKey('cloudIdentityInfo')
              ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                  _json['cloudIdentityInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          orgDisplayName: _json.containsKey('orgDisplayName')
              ? _json['orgDisplayName'] as core.String
              : null,
          orgPostalAddress: _json.containsKey('orgPostalAddress')
              ? GoogleTypePostalAddress.fromJson(_json['orgPostalAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          primaryContactInfo: _json.containsKey('primaryContactInfo')
              ? GoogleCloudChannelV1ContactInfo.fromJson(
                  _json['primaryContactInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  GoogleCloudChannelV1CustomerConstraints.fromJson(core.Map _json)
      : this(
          allowedCustomerTypes: _json.containsKey('allowedCustomerTypes')
              ? (_json['allowedCustomerTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowedRegions: _json.containsKey('allowedRegions')
              ? (_json['allowedRegions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          promotionalOrderTypes: _json.containsKey('promotionalOrderTypes')
              ? (_json['promotionalOrderTypes'] as core.List)
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

/// Required Edu Attributes
class GoogleCloudChannelV1EduData {
  /// Size of the institute.
  /// Possible string values are:
  /// - "INSTITUTE_SIZE_UNSPECIFIED" : Default value. This state doesn't show
  /// unless an error occurs.
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
  /// - "INSTITUTE_TYPE_UNSPECIFIED" : Default value. This state doesn't show
  /// unless an error occurs.
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

  GoogleCloudChannelV1EduData.fromJson(core.Map _json)
      : this(
          instituteSize: _json.containsKey('instituteSize')
              ? _json['instituteSize'] as core.String
              : null,
          instituteType: _json.containsKey('instituteType')
              ? _json['instituteType'] as core.String
              : null,
          website: _json.containsKey('website')
              ? _json['website'] as core.String
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
  /// - "PROVISIONING_STATE_UNSPECIFIED" : Default value. This state doesn't
  /// show unless an error occurs.
  /// - "ACTIVE" : The entitlement is currently active.
  /// - "SUSPENDED" : The entitlement is currently suspended.
  core.String? provisioningState;

  /// This purchase order (PO) information is for resellers to use for their
  /// company tracking usage.
  ///
  /// If a purchaseOrderId value is given, it appears in the API responses and
  /// shows up in the invoice. The property accepts up to 80 plain text
  /// characters.
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

  GoogleCloudChannelV1Entitlement.fromJson(core.Map _json)
      : this(
          associationInfo: _json.containsKey('associationInfo')
              ? GoogleCloudChannelV1AssociationInfo.fromJson(
                  _json['associationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          commitmentSettings: _json.containsKey('commitmentSettings')
              ? GoogleCloudChannelV1CommitmentSettings.fromJson(
                  _json['commitmentSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          offer:
              _json.containsKey('offer') ? _json['offer'] as core.String : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.List)
                  .map((value) => GoogleCloudChannelV1Parameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provisionedService: _json.containsKey('provisionedService')
              ? GoogleCloudChannelV1ProvisionedService.fromJson(
                  _json['provisionedService']
                      as core.Map<core.String, core.dynamic>)
              : null,
          provisioningState: _json.containsKey('provisioningState')
              ? _json['provisioningState'] as core.String
              : null,
          purchaseOrderId: _json.containsKey('purchaseOrderId')
              ? _json['purchaseOrderId'] as core.String
              : null,
          suspensionReasons: _json.containsKey('suspensionReasons')
              ? (_json['suspensionReasons'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          trialSettings: _json.containsKey('trialSettings')
              ? GoogleCloudChannelV1TrialSettings.fromJson(
                  _json['trialSettings'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
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

  GoogleCloudChannelV1ImportCustomerRequest.fromJson(core.Map _json)
      : this(
          authToken: _json.containsKey('authToken')
              ? _json['authToken'] as core.String
              : null,
          channelPartnerId: _json.containsKey('channelPartnerId')
              ? _json['channelPartnerId'] as core.String
              : null,
          cloudIdentityId: _json.containsKey('cloudIdentityId')
              ? _json['cloudIdentityId'] as core.String
              : null,
          customer: _json.containsKey('customer')
              ? _json['customer'] as core.String
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          overwriteIfExists: _json.containsKey('overwriteIfExists')
              ? _json['overwriteIfExists'] as core.bool
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

  GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(core.Map _json)
      : this(
          channelPartnerLinks: _json.containsKey('channelPartnerLinks')
              ? (_json['channelPartnerLinks'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1ChannelPartnerLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channelPartnerLinks != null)
          'channelPartnerLinks': channelPartnerLinks!,
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

  GoogleCloudChannelV1ListCustomersResponse.fromJson(core.Map _json)
      : this(
          customers: _json.containsKey('customers')
              ? (_json['customers'] as core.List)
                  .map((value) => GoogleCloudChannelV1Customer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  GoogleCloudChannelV1ListEntitlementsResponse.fromJson(core.Map _json)
      : this(
          entitlements: _json.containsKey('entitlements')
              ? (_json['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  GoogleCloudChannelV1ListOffersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          offers: _json.containsKey('offers')
              ? (_json['offers'] as core.List)
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

  GoogleCloudChannelV1ListProductsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          products: _json.containsKey('products')
              ? (_json['products'] as core.List)
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

  GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          purchasableOffers: _json.containsKey('purchasableOffers')
              ? (_json['purchasableOffers'] as core.List)
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

  GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          purchasableSkus: _json.containsKey('purchasableSkus')
              ? (_json['purchasableSkus'] as core.List)
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

  GoogleCloudChannelV1ListSkusResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          skus: _json.containsKey('skus')
              ? (_json['skus'] as core.List)
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

  GoogleCloudChannelV1ListSubscribersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          serviceAccounts: _json.containsKey('serviceAccounts')
              ? (_json['serviceAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
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

  GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(core.Map _json)
      : this(
          cloudIdentityId: _json.containsKey('cloudIdentityId')
              ? _json['cloudIdentityId'] as core.String
              : null,
          customerName: _json.containsKey('customerName')
              ? _json['customerName'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          sku: _json.containsKey('sku') ? _json['sku'] as core.String : null,
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

  GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferableOffers: _json.containsKey('transferableOffers')
              ? (_json['transferableOffers'] as core.List)
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

  GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(core.Map _json)
      : this(
          authToken: _json.containsKey('authToken')
              ? _json['authToken'] as core.String
              : null,
          cloudIdentityId: _json.containsKey('cloudIdentityId')
              ? _json['cloudIdentityId'] as core.String
              : null,
          customerName: _json.containsKey('customerName')
              ? _json['customerName'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
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

  GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferableSkus: _json.containsKey('transferableSkus')
              ? (_json['transferableSkus'] as core.List)
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

  GoogleCloudChannelV1MarketingInfo.fromJson(core.Map _json)
      : this(
          defaultLogo: _json.containsKey('defaultLogo')
              ? GoogleCloudChannelV1Media.fromJson(
                  _json['defaultLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
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

  GoogleCloudChannelV1Media.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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
    this.endTime,
    this.marketingInfo,
    this.name,
    this.parameterDefinitions,
    this.plan,
    this.priceByResources,
    this.sku,
    this.startTime,
  });

  GoogleCloudChannelV1Offer.fromJson(core.Map _json)
      : this(
          constraints: _json.containsKey('constraints')
              ? GoogleCloudChannelV1Constraints.fromJson(
                  _json['constraints'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          marketingInfo: _json.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  _json['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameterDefinitions: _json.containsKey('parameterDefinitions')
              ? (_json['parameterDefinitions'] as core.List)
                  .map((value) =>
                      GoogleCloudChannelV1ParameterDefinition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          plan: _json.containsKey('plan')
              ? GoogleCloudChannelV1Plan.fromJson(
                  _json['plan'] as core.Map<core.String, core.dynamic>)
              : null,
          priceByResources: _json.containsKey('priceByResources')
              ? (_json['priceByResources'] as core.List)
                  .map((value) => GoogleCloudChannelV1PriceByResource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sku: _json.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  _json['sku'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraints != null) 'constraints': constraints!,
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

  GoogleCloudChannelV1Parameter.fromJson(core.Map _json)
      : this(
          editable: _json.containsKey('editable')
              ? _json['editable'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value: _json.containsKey('value')
              ? GoogleCloudChannelV1Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1ParameterDefinition.fromJson(core.Map _json)
      : this(
          allowedValues: _json.containsKey('allowedValues')
              ? (_json['allowedValues'] as core.List)
                  .map((value) => GoogleCloudChannelV1Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          maxValue: _json.containsKey('maxValue')
              ? GoogleCloudChannelV1Value.fromJson(
                  _json['maxValue'] as core.Map<core.String, core.dynamic>)
              : null,
          minValue: _json.containsKey('minValue')
              ? GoogleCloudChannelV1Value.fromJson(
                  _json['minValue'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optional: _json.containsKey('optional')
              ? _json['optional'] as core.bool
              : null,
          parameterType: _json.containsKey('parameterType')
              ? _json['parameterType'] as core.String
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

  GoogleCloudChannelV1Period.fromJson(core.Map _json)
      : this(
          duration: _json.containsKey('duration')
              ? _json['duration'] as core.int
              : null,
          periodType: _json.containsKey('periodType')
              ? _json['periodType'] as core.String
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

  GoogleCloudChannelV1Plan.fromJson(core.Map _json)
      : this(
          billingAccount: _json.containsKey('billingAccount')
              ? _json['billingAccount'] as core.String
              : null,
          paymentCycle: _json.containsKey('paymentCycle')
              ? GoogleCloudChannelV1Period.fromJson(
                  _json['paymentCycle'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentPlan: _json.containsKey('paymentPlan')
              ? _json['paymentPlan'] as core.String
              : null,
          paymentType: _json.containsKey('paymentType')
              ? _json['paymentType'] as core.String
              : null,
          trialPeriod: _json.containsKey('trialPeriod')
              ? GoogleCloudChannelV1Period.fromJson(
                  _json['trialPeriod'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1Price.fromJson(core.Map _json)
      : this(
          basePrice: _json.containsKey('basePrice')
              ? GoogleTypeMoney.fromJson(
                  _json['basePrice'] as core.Map<core.String, core.dynamic>)
              : null,
          discount: _json.containsKey('discount')
              ? (_json['discount'] as core.num).toDouble()
              : null,
          effectivePrice: _json.containsKey('effectivePrice')
              ? GoogleTypeMoney.fromJson(_json['effectivePrice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          externalPriceUri: _json.containsKey('externalPriceUri')
              ? _json['externalPriceUri'] as core.String
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

  GoogleCloudChannelV1PriceByResource.fromJson(core.Map _json)
      : this(
          price: _json.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          pricePhases: _json.containsKey('pricePhases')
              ? (_json['pricePhases'] as core.List)
                  .map((value) => GoogleCloudChannelV1PricePhase.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
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

  GoogleCloudChannelV1PricePhase.fromJson(core.Map _json)
      : this(
          firstPeriod: _json.containsKey('firstPeriod')
              ? _json['firstPeriod'] as core.int
              : null,
          lastPeriod: _json.containsKey('lastPeriod')
              ? _json['lastPeriod'] as core.int
              : null,
          periodType: _json.containsKey('periodType')
              ? _json['periodType'] as core.String
              : null,
          price: _json.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          priceTiers: _json.containsKey('priceTiers')
              ? (_json['priceTiers'] as core.List)
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

  GoogleCloudChannelV1PriceTier.fromJson(core.Map _json)
      : this(
          firstResource: _json.containsKey('firstResource')
              ? _json['firstResource'] as core.int
              : null,
          lastResource: _json.containsKey('lastResource')
              ? _json['lastResource'] as core.int
              : null,
          price: _json.containsKey('price')
              ? GoogleCloudChannelV1Price.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1Product.fromJson(core.Map _json)
      : this(
          marketingInfo: _json.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  _json['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
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

  GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(core.Map _json)
      : this(
          cloudIdentityInfo: _json.containsKey('cloudIdentityInfo')
              ? GoogleCloudChannelV1CloudIdentityInfo.fromJson(
                  _json['cloudIdentityInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          user: _json.containsKey('user')
              ? GoogleCloudChannelV1AdminUser.fromJson(
                  _json['user'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
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
  /// For Google Workspace, this would be the underlying Subscription ID.
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

  GoogleCloudChannelV1ProvisionedService.fromJson(core.Map _json)
      : this(
          productId: _json.containsKey('productId')
              ? _json['productId'] as core.String
              : null,
          provisioningId: _json.containsKey('provisioningId')
              ? _json['provisioningId'] as core.String
              : null,
          skuId:
              _json.containsKey('skuId') ? _json['skuId'] as core.String : null,
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

  GoogleCloudChannelV1PurchasableOffer.fromJson(core.Map _json)
      : this(
          offer: _json.containsKey('offer')
              ? GoogleCloudChannelV1Offer.fromJson(
                  _json['offer'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1PurchasableSku.fromJson(core.Map _json)
      : this(
          sku: _json.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  _json['sku'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(core.Map _json)
      : this(
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
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

  GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(core.Map _json)
      : this(
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
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

  GoogleCloudChannelV1RenewalSettings.fromJson(core.Map _json)
      : this(
          enableRenewal: _json.containsKey('enableRenewal')
              ? _json['enableRenewal'] as core.bool
              : null,
          paymentCycle: _json.containsKey('paymentCycle')
              ? GoogleCloudChannelV1Period.fromJson(
                  _json['paymentCycle'] as core.Map<core.String, core.dynamic>)
              : null,
          paymentPlan: _json.containsKey('paymentPlan')
              ? _json['paymentPlan'] as core.String
              : null,
          resizeUnitCount: _json.containsKey('resizeUnitCount')
              ? _json['resizeUnitCount'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableRenewal != null) 'enableRenewal': enableRenewal!,
        if (paymentCycle != null) 'paymentCycle': paymentCycle!,
        if (paymentPlan != null) 'paymentPlan': paymentPlan!,
        if (resizeUnitCount != null) 'resizeUnitCount': resizeUnitCount!,
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

  GoogleCloudChannelV1Sku.fromJson(core.Map _json)
      : this(
          marketingInfo: _json.containsKey('marketingInfo')
              ? GoogleCloudChannelV1MarketingInfo.fromJson(
                  _json['marketingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          product: _json.containsKey('product')
              ? GoogleCloudChannelV1Product.fromJson(
                  _json['product'] as core.Map<core.String, core.dynamic>)
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
  /// - "REASON_UNSPECIFIED" : Reason is not available.
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

  GoogleCloudChannelV1TransferEligibility.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          ineligibilityReason: _json.containsKey('ineligibilityReason')
              ? _json['ineligibilityReason'] as core.String
              : null,
          isEligible: _json.containsKey('isEligible')
              ? _json['isEligible'] as core.bool
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

  GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(core.Map _json)
      : this(
          authToken: _json.containsKey('authToken')
              ? _json['authToken'] as core.String
              : null,
          entitlements: _json.containsKey('entitlements')
              ? (_json['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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
      core.Map _json)
      : this(
          entitlements: _json.containsKey('entitlements')
              ? (_json['entitlements'] as core.List)
                  .map((value) => GoogleCloudChannelV1Entitlement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestId: _json.containsKey('requestId')
              ? _json['requestId'] as core.String
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

  GoogleCloudChannelV1TransferableOffer.fromJson(core.Map _json)
      : this(
          offer: _json.containsKey('offer')
              ? GoogleCloudChannelV1Offer.fromJson(
                  _json['offer'] as core.Map<core.String, core.dynamic>)
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

  GoogleCloudChannelV1TransferableSku.fromJson(core.Map _json)
      : this(
          legacySku: _json.containsKey('legacySku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  _json['legacySku'] as core.Map<core.String, core.dynamic>)
              : null,
          sku: _json.containsKey('sku')
              ? GoogleCloudChannelV1Sku.fromJson(
                  _json['sku'] as core.Map<core.String, core.dynamic>)
              : null,
          transferEligibility: _json.containsKey('transferEligibility')
              ? GoogleCloudChannelV1TransferEligibility.fromJson(
                  _json['transferEligibility']
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

  GoogleCloudChannelV1TrialSettings.fromJson(core.Map _json)
      : this(
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          trial:
              _json.containsKey('trial') ? _json['trial'] as core.bool : null,
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

  GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(core.Map _json)
      : this(
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
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

  GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(core.Map _json)
      : this(
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
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

  GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(core.Map _json)
      : this(
          channelPartnerLink: _json.containsKey('channelPartnerLink')
              ? GoogleCloudChannelV1ChannelPartnerLink.fromJson(
                  _json['channelPartnerLink']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
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

  GoogleCloudChannelV1Value.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          int64Value: _json.containsKey('int64Value')
              ? _json['int64Value'] as core.String
              : null,
          protoValue: _json.containsKey('protoValue')
              ? _json['protoValue'] as core.Map<core.String, core.dynamic>
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
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

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
typedef GoogleTypePostalAddress = $PostalAddress;
