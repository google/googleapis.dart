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

/// Authorized Buyers Marketplace API - v1
///
/// The Authorized Buyers Marketplace API allows buyers programmatically
/// discover inventory; propose, retrieve and negotiate deals with publishers.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/>
///
/// Create an instance of [AuthorizedBuyersMarketplaceApi] to access these
/// resources:
///
/// - [BiddersResource]
///   - [BiddersFinalizedDealsResource]
/// - [BuyersResource]
///   - [BuyersAuctionPackagesResource]
///   - [BuyersClientsResource]
///     - [BuyersClientsUsersResource]
///   - [BuyersFinalizedDealsResource]
///   - [BuyersProposalsResource]
///     - [BuyersProposalsDealsResource]
///   - [BuyersPublisherProfilesResource]
library authorizedbuyersmarketplace.v1;

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

/// The Authorized Buyers Marketplace API allows buyers programmatically
/// discover inventory; propose, retrieve and negotiate deals with publishers.
class AuthorizedBuyersMarketplaceApi {
  /// See, create, edit, and delete your Authorized Buyers Marketplace entities.
  static const authorizedBuyersMarketplaceScope =
      'https://www.googleapis.com/auth/authorized-buyers-marketplace';

  final commons.ApiRequester _requester;

  BiddersResource get bidders => BiddersResource(_requester);
  BuyersResource get buyers => BuyersResource(_requester);

  AuthorizedBuyersMarketplaceApi(http.Client client,
      {core.String rootUrl =
          'https://authorizedbuyersmarketplace.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BiddersResource {
  final commons.ApiRequester _requester;

  BiddersFinalizedDealsResource get finalizedDeals =>
      BiddersFinalizedDealsResource(_requester);

  BiddersResource(commons.ApiRequester client) : _requester = client;
}

class BiddersFinalizedDealsResource {
  final commons.ApiRequester _requester;

  BiddersFinalizedDealsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists finalized deals.
  ///
  /// Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized
  /// deals for the current buyer and its clients. Bidders can use the URL path
  /// "/v1/bidders/{accountId}/finalizedDeals" to list finalized deals for the
  /// bidder, its buyers and all their clients.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The buyer to list the finalized deals for, in the
  /// format: `buyers/{accountId}`. When used to list finalized deals for a
  /// bidder, its buyers and clients, in the format `bidders/{accountId}`.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [filter] - Optional query string using the
  /// [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters)
  /// Supported columns for filtering are: * deal.displayName * deal.dealType *
  /// deal.createTime * deal.updateTime * deal.flightStartTime *
  /// deal.flightEndTime * dealServingStatus
  ///
  /// [orderBy] - An optional query string to sort finalized deals using the
  /// [Cloud API sorting syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order).
  /// If no sort order is specified, results will be returned in an arbitrary
  /// order. Supported columns for sorting are: * deal.displayName *
  /// deal.createTime * deal.updateTime * deal.flightStartTime *
  /// deal.flightEndTime * rtbMetrics.bidRequests7Days * rtbMetrics.bids7Days *
  /// rtbMetrics.adImpressions7Days * rtbMetrics.bidRate7Days *
  /// rtbMetrics.filteredBidRate7Days * rtbMetrics.mustBidRateCurrentMonth
  /// Example: 'deal.displayName, deal.updateTime desc'
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If requested more than 500, the server will return 500 results
  /// per page. If unspecified, the server will pick a default page size of 100.
  ///
  /// [pageToken] - The page token as returned from ListFinalizedDealsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFinalizedDealsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFinalizedDealsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/finalizedDeals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFinalizedDealsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersResource {
  final commons.ApiRequester _requester;

  BuyersAuctionPackagesResource get auctionPackages =>
      BuyersAuctionPackagesResource(_requester);
  BuyersClientsResource get clients => BuyersClientsResource(_requester);
  BuyersFinalizedDealsResource get finalizedDeals =>
      BuyersFinalizedDealsResource(_requester);
  BuyersProposalsResource get proposals => BuyersProposalsResource(_requester);
  BuyersPublisherProfilesResource get publisherProfiles =>
      BuyersPublisherProfilesResource(_requester);

  BuyersResource(commons.ApiRequester client) : _requester = client;
}

class BuyersAuctionPackagesResource {
  final commons.ApiRequester _requester;

  BuyersAuctionPackagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets an auction package given its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of auction package to get. Format:
  /// `buyers/{accountId}/auctionPackages/{auctionPackageId}`
  /// Value must have pattern `^buyers/\[^/\]+/auctionPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuctionPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuctionPackage> get(
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
    return AuctionPackage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List the auction packages subscribed by a buyer and its clients.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent buyer that can access the auction
  /// package. Format: `buyers/{accountId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. Max allowed page size is 500.
  ///
  /// [pageToken] - The page token as returned.
  /// ListAuctionPackagesResponse.nextPageToken
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAuctionPackagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAuctionPackagesResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/auctionPackages';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAuctionPackagesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Subscribe to the auction package for the specified buyer.
  ///
  /// Once subscribed, the bidder will receive a call out for inventory matching
  /// the auction package targeting criteria with the auction package deal ID
  /// and the specified buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the auction package. Format:
  /// `buyers/{accountId}/auctionPackages/{auctionPackageId}`
  /// Value must have pattern `^buyers/\[^/\]+/auctionPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuctionPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuctionPackage> subscribe(
    SubscribeAuctionPackageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':subscribe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AuctionPackage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Subscribe the specified clients of the buyer to the auction package.
  ///
  /// If a client in the list does not belong to the buyer, an error response
  /// will be returned, and all of the following clients in the list will not be
  /// subscribed. Subscribing an already subscribed client will have no effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [auctionPackage] - Required. Name of the auction package. Format:
  /// `buyers/{accountId}/auctionPackages/{auctionPackageId}`
  /// Value must have pattern `^buyers/\[^/\]+/auctionPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuctionPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuctionPackage> subscribeClients(
    SubscribeClientsRequest request,
    core.String auctionPackage, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$auctionPackage') + ':subscribeClients';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AuctionPackage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unsubscribe from the auction package for the specified buyer.
  ///
  /// Once unsubscribed, the bidder will no longer receive a call out for the
  /// auction package deal ID and the specified buyer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the auction package. Format:
  /// `buyers/{accountId}/auctionPackages/{auctionPackageId}`
  /// Value must have pattern `^buyers/\[^/\]+/auctionPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuctionPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuctionPackage> unsubscribe(
    UnsubscribeAuctionPackageRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':unsubscribe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AuctionPackage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unsubscribe from the auction package for the specified clients of the
  /// buyer.
  ///
  /// Unsubscribing a client that is not subscribed will have no effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [auctionPackage] - Required. Name of the auction package. Format:
  /// `buyers/{accountId}/auctionPackages/{auctionPackageId}`
  /// Value must have pattern `^buyers/\[^/\]+/auctionPackages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AuctionPackage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AuctionPackage> unsubscribeClients(
    UnsubscribeClientsRequest request,
    core.String auctionPackage, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$auctionPackage') + ':unsubscribeClients';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AuctionPackage.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersClientsResource {
  final commons.ApiRequester _requester;

  BuyersClientsUsersResource get users =>
      BuyersClientsUsersResource(_requester);

  BuyersClientsResource(commons.ApiRequester client) : _requester = client;

  /// Activates an existing client.
  ///
  /// The state of the client will be updated to "ACTIVE". This method has no
  /// effect if the client is already in "ACTIVE" state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> activate(
    ActivateClientRequest request,
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
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the buyer. Format: `buyers/{accountId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> create(
    Client request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/clients';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deactivates an existing client.
  ///
  /// The state of the client will be updated to "INACTIVE". This method has no
  /// effect if the client is already in "INACTIVE" state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> deactivate(
    DeactivateClientRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':deactivate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a client with a given resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format: `buyers/{accountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> get(
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
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the clients for the current buyer.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the buyer. Format: `buyers/{accountId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [filter] - Query string using the
  /// [Filtering Syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters)
  /// Supported fields for filtering are: * partnerClientId Use this field to
  /// filter the clients by the partnerClientId. For example, if the
  /// partnerClientId of the client is "1234", the value of this field should be
  /// `partnerClientId = "1234"`, in order to get only the client whose
  /// partnerClientId is "1234" in the response.
  ///
  /// [pageSize] - Requested page size. If left blank, a default page size of
  /// 500 will be applied.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of ListClientsResponse.nextPageToken
  /// returned from the previous call to the list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientsResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/clients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing client.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the client. Format:
  /// `buyers/{accountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [updateMask] - List of fields to be updated. If empty or unspecified, the
  /// service will update all fields populated in the update request excluding
  /// the output only fields and primitive fields with default value. Note that
  /// explicit field mask is required in order to reset a primitive field back
  /// to its default value, e.g. false for boolean fields, 0 for integer fields.
  /// A special field mask consisting of a single path "*" can be used to
  /// indicate full replacement(the equivalent of PUT method), updatable fields
  /// unset or unspecified in the input will be cleared or set to default value.
  /// Output only fields will be ignored regardless of the value of updateMask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Client].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Client> patch(
    Client request,
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
    return Client.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersClientsUsersResource {
  final commons.ApiRequester _requester;

  BuyersClientsUsersResource(commons.ApiRequester client) : _requester = client;

  /// Activates an existing client user.
  ///
  /// The state of the client user will be updated from "INACTIVE" to "ACTIVE".
  /// This method has no effect if the client user is already in "ACTIVE" state.
  /// An error will be returned if the client user to activate is still in
  /// "INVITED" state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> activate(
    ActivateClientUserRequest request,
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
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new client user in "INVITED" state.
  ///
  /// An email invitation will be sent to the new user, once accepted the user
  /// will become active.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the client. Format:
  /// `buyers/{accountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> create(
    ClientUser request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deactivates an existing client user.
  ///
  /// The state of the client user will be updated from "ACTIVE" to "INACTIVE".
  /// This method has no effect if the client user is already in "INACTIVE"
  /// state. An error will be returned if the client user to deactivate is still
  /// in "INVITED" state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> deactivate(
    DeactivateClientUserRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':deactivate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing client user.
  ///
  /// The client user will lose access to the Authorized Buyers UI. Note that if
  /// a client user is deleted, the user's access to the UI can't be restored
  /// unless a new client user is created and activated.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+/users/\[^/\]+$`.
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
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an existing client user.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}/clientUsers/{userId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+/users/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientUser].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientUser> get(
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
    return ClientUser.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all client users for a specified client.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the client. Format:
  /// `buyers/{buyerAccountId}/clients/{clientAccountId}`
  /// Value must have pattern `^buyers/\[^/\]+/clients/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. If left blank, a default page size of
  /// 500 will be applied.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListClientUsersResponse.nextPageToken returned from the previous call to
  /// the list method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListClientUsersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListClientUsersResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/users';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListClientUsersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersFinalizedDealsResource {
  final commons.ApiRequester _requester;

  BuyersFinalizedDealsResource(commons.ApiRequester client)
      : _requester = client;

  /// Add creative to be used in the bidding process for a finalized deal.
  ///
  /// For programmatic guaranteed deals, it's recommended that you associate at
  /// least one approved creative with the deal before calling SetReadyToServe,
  /// to help reduce the number of bid responses filtered because they don't
  /// contain approved creatives. Creatives successfully added to a deal can be
  /// found in the Realtime-bidding Creatives API creative.deal_ids. This method
  /// only applies to programmatic guaranteed deals. Maximum number of 1000
  /// creatives can be added to a finalized deal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [deal] - Required. Name of the finalized deal in the format of:
  /// `buyers/{accountId}/finalizedDeals/{dealId}`
  /// Value must have pattern `^buyers/\[^/\]+/finalizedDeals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinalizedDeal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinalizedDeal> addCreative(
    AddCreativeRequest request,
    core.String deal, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$deal') + ':addCreative';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FinalizedDeal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a finalized deal given its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`
  /// Value must have pattern `^buyers/\[^/\]+/finalizedDeals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinalizedDeal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinalizedDeal> get(
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
    return FinalizedDeal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists finalized deals.
  ///
  /// Use the URL path "/v1/buyers/{accountId}/finalizedDeals" to list finalized
  /// deals for the current buyer and its clients. Bidders can use the URL path
  /// "/v1/bidders/{accountId}/finalizedDeals" to list finalized deals for the
  /// bidder, its buyers and all their clients.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The buyer to list the finalized deals for, in the
  /// format: `buyers/{accountId}`. When used to list finalized deals for a
  /// bidder, its buyers and clients, in the format `bidders/{accountId}`.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [filter] - Optional query string using the
  /// [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters)
  /// Supported columns for filtering are: * deal.displayName * deal.dealType *
  /// deal.createTime * deal.updateTime * deal.flightStartTime *
  /// deal.flightEndTime * dealServingStatus
  ///
  /// [orderBy] - An optional query string to sort finalized deals using the
  /// [Cloud API sorting syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order).
  /// If no sort order is specified, results will be returned in an arbitrary
  /// order. Supported columns for sorting are: * deal.displayName *
  /// deal.createTime * deal.updateTime * deal.flightStartTime *
  /// deal.flightEndTime * rtbMetrics.bidRequests7Days * rtbMetrics.bids7Days *
  /// rtbMetrics.adImpressions7Days * rtbMetrics.bidRate7Days *
  /// rtbMetrics.filteredBidRate7Days * rtbMetrics.mustBidRateCurrentMonth
  /// Example: 'deal.displayName, deal.updateTime desc'
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If requested more than 500, the server will return 500 results
  /// per page. If unspecified, the server will pick a default page size of 100.
  ///
  /// [pageToken] - The page token as returned from ListFinalizedDealsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFinalizedDealsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFinalizedDealsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/finalizedDeals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListFinalizedDealsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Pauses serving of the given finalized deal.
  ///
  /// This call only pauses the serving status, and does not affect other fields
  /// of the finalized deal. Calling this method for an already paused deal has
  /// no effect. This method only applies to programmatic guaranteed deals.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`
  /// Value must have pattern `^buyers/\[^/\]+/finalizedDeals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinalizedDeal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinalizedDeal> pause(
    PauseFinalizedDealRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':pause';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FinalizedDeal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Resumes serving of the given finalized deal.
  ///
  /// Calling this method for an running deal has no effect. If a deal is
  /// initially paused by the seller, calling this method will not resume
  /// serving of the deal until the seller also resumes the deal. This method
  /// only applies to programmatic guaranteed deals.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`
  /// Value must have pattern `^buyers/\[^/\]+/finalizedDeals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinalizedDeal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinalizedDeal> resume(
    ResumeFinalizedDealRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FinalizedDeal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the given finalized deal as ready to serve.
  ///
  /// By default, deals are ready to serve as soon as they're finalized. A
  /// bidder can opt out of this feature by asking to be included in an
  /// allowlist. Once opted out, finalized deals belonging to the bidder and its
  /// child seats will not start serving until this method is called. This
  /// method is useful to the bidders who prefer to not receive bid requests
  /// before the creative is ready. This method only applies to programmatic
  /// guaranteed deals.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [deal] - Required. Format: `buyers/{accountId}/finalizedDeals/{dealId}`
  /// Value must have pattern `^buyers/\[^/\]+/finalizedDeals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FinalizedDeal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FinalizedDeal> setReadyToServe(
    SetReadyToServeRequest request,
    core.String deal, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$deal') + ':setReadyToServe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FinalizedDeal.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersProposalsResource {
  final commons.ApiRequester _requester;

  BuyersProposalsDealsResource get deals =>
      BuyersProposalsDealsResource(_requester);

  BuyersProposalsResource(commons.ApiRequester client) : _requester = client;

  /// Accepts the proposal at the given revision number.
  ///
  /// If the revision number in the request is behind the latest from the
  /// server, an error message will be returned. This call updates the
  /// Proposal.state from `BUYER_ACCEPTANCE_REQUESTED` to `FINALIZED`; it has no
  /// side effect if the Proposal.state is already `FINALIZED` and throws
  /// exception if the Proposal.state is not either `BUYER_ACCEPTANCE_REQUESTED`
  /// or `FINALIZED`. Accepting a proposal means the buyer understands and
  /// accepts the Proposal.terms_and_conditions proposed by the seller.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the proposal. Format:
  /// `buyers/{accountId}/proposals/{proposalId}`
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> accept(
    AcceptProposalRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':accept';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a note for this proposal and sends to the seller.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [proposal] - Name of the proposal. Format:
  /// `buyers/{accountId}/proposals/{proposalId}`
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> addNote(
    AddNoteRequest request,
    core.String proposal, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$proposal') + ':addNote';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels an ongoing negotiation on a proposal.
  ///
  /// This does not cancel or end serving for the deals if the proposal has been
  /// finalized. If the proposal has not been finalized before, calling this
  /// method will set the Proposal.state to `TERMINATED` and increment the
  /// Proposal.proposal_revision. If the proposal has been finalized before and
  /// is under renegotiation now, calling this method will reset the
  /// Proposal.state to `FINALIZED` and increment the
  /// Proposal.proposal_revision. This method does not support private auction
  /// proposals whose Proposal.deal_type is 'PRIVATE_AUCTION'.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [proposal] - Name of the proposal. Format:
  /// `buyers/{accountId}/proposals/{proposalId}`
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> cancelNegotiation(
    CancelNegotiationRequest request,
    core.String proposal, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$proposal') + ':cancelNegotiation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a proposal using its name.
  ///
  /// The proposal is returned at most recent revision. revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the proposal. Format:
  /// `buyers/{accountId}/proposals/{proposalId}`
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> get(
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
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists proposals.
  ///
  /// A filter expression (list filter syntax) may be specified to filter the
  /// results. This will not list finalized versions of proposals that are being
  /// renegotiated; to retrieve these use the finalizedProposals resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent that owns the collection of proposals Format:
  /// `buyers/{accountId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [filter] - Optional query string using the
  /// [Cloud API list filtering syntax](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters)
  /// Supported columns for filtering are: * displayName * dealType * updateTime
  /// * state
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If unspecified, the server will put a size of 500.
  ///
  /// [pageToken] - The page token as returned from ListProposalsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProposalsResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/proposals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListProposalsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the proposal at the given revision number.
  ///
  /// If the revision number in the request is behind the latest from the
  /// server, an error message will be returned. See FieldMask for how to use
  /// FieldMask. Only fields specified in the UpdateProposalRequest.update_mask
  /// will be updated; Fields noted as 'Immutable' or 'Output only' yet
  /// specified in the UpdateProposalRequest.update_mask will be ignored and
  /// left unchanged. Updating a private auction proposal is not allowed and
  /// will result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The name of the proposal serving as a unique
  /// identifier. Format: buyers/{accountId}/proposals/{proposalId}
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [updateMask] - List of fields to be updated. If empty or unspecified, the
  /// service will update all fields populated in the update request excluding
  /// the output only fields and primitive fields with default value. Note that
  /// explicit field mask is required in order to reset a primitive field back
  /// to its default value, e.g. false for boolean fields, 0 for integer fields.
  /// A special field mask consisting of a single path "*" can be used to
  /// indicate full replacement(the equivalent of PUT method), updatable fields
  /// unset or unspecified in the input will be cleared or set to default value.
  /// Output only fields will be ignored regardless of the value of updateMask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> patch(
    Proposal request,
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
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sends a request for proposal (RFP) to a publisher to initiate the
  /// negotiation regarding certain inventory.
  ///
  /// In the RFP, buyers can specify the deal type, deal terms, start and end
  /// dates, targeting, and a message to the publisher. Once the RFP is sent, a
  /// proposal in `SELLER_REVIEW_REQUESTED` state will be created and returned
  /// in the response. The publisher may review your request and respond with
  /// detailed deals in the proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [buyer] - Required. The current buyer who is sending the RFP in the
  /// format: `buyers/{accountId}`.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Proposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Proposal> sendRfp(
    SendRfpRequest request,
    core.String buyer, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$buyer') + '/proposals:sendRfp';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Proposal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersProposalsDealsResource {
  final commons.ApiRequester _requester;

  BuyersProposalsDealsResource(commons.ApiRequester client)
      : _requester = client;

  /// Batch updates multiple deals in the same proposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the proposal containing the deals to
  /// batch update. Format: buyers/{accountId}/proposals/{proposalId}
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateDealsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateDealsResponse> batchUpdate(
    BatchUpdateDealsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/deals:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchUpdateDealsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a deal given its name.
  ///
  /// The deal is returned at its head revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// buyers/{accountId}/proposals/{proposalId}/deals/{dealId}
  /// Value must have pattern
  /// `^buyers/\[^/\]+/proposals/\[^/\]+/deals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deal> get(
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
    return Deal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all deals in a proposal.
  ///
  /// To retrieve only the finalized revision deals regardless if a deal is
  /// being renegotiated, see the FinalizedDeals resource.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the proposal containing the deals to
  /// retrieve. Format: buyers/{accountId}/proposals/{proposalId}
  /// Value must have pattern `^buyers/\[^/\]+/proposals/\[^/\]+$`.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If requested more than 500, the server will return 500 results
  /// per page. If unspecified, the server will pick a default page size of 100.
  ///
  /// [pageToken] - The page token as returned from ListDealsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDealsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDealsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/deals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDealsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the given deal at the buyer known revision number.
  ///
  /// If the server revision has advanced since the passed-in
  /// proposal.proposal_revision an ABORTED error message will be returned. The
  /// revision number is incremented by the server whenever the proposal or its
  /// constituent deals are updated. Note: The revision number is kept at a
  /// proposal level. The buyer of the API is expected to keep track of the
  /// revision number after the last update operation and send it in as part of
  /// the next update request. This way, if there are further changes on the
  /// server (e.g., seller making new updates), then the server can detect
  /// conflicts and reject the proposed changes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Immutable. The unique identifier of the deal. Auto-generated by
  /// the server when a deal is created. Format:
  /// buyers/{accountId}/proposals/{proposalId}/deals/{dealId}
  /// Value must have pattern
  /// `^buyers/\[^/\]+/proposals/\[^/\]+/deals/\[^/\]+$`.
  ///
  /// [updateMask] - List of fields to be updated. If empty or unspecified, the
  /// service will update all fields populated in the update request excluding
  /// the output only fields and primitive fields with default value. Note that
  /// explicit field mask is required in order to reset a primitive field back
  /// to its default value, e.g. false for boolean fields, 0 for integer fields.
  /// A special field mask consisting of a single path "*" can be used to
  /// indicate full replacement(the equivalent of PUT method), updatable fields
  /// unset or unspecified in the input will be cleared or set to default value.
  /// Output only fields will be ignored regardless of the value of updateMask.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deal> patch(
    Deal request,
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
    return Deal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class BuyersPublisherProfilesResource {
  final commons.ApiRequester _requester;

  BuyersPublisherProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the requested publisher profile by name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the publisher profile. Format:
  /// `buyers/{buyerId}/publisherProfiles/{publisherProfileId}`
  /// Value must have pattern `^buyers/\[^/\]+/publisherProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherProfile> get(
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
    return PublisherProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists publisher profiles
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent that owns the collection of publisher profiles
  /// Format: `buyers/{buyerId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [filter] - Optional query string using the
  /// [Cloud API list filtering](https://developers.google.com/authorized-buyers/apis/guides/v2/list-filters)
  /// syntax.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested. If requested more than 500, the server will return 500 results
  /// per page. If unspecified, the server will pick a default page size of 100.
  ///
  /// [pageToken] - The page token as returned from a previous
  /// ListPublisherProfilesResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherProfilesResponse> list(
    core.String parent, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/publisherProfiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPublisherProfilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request to accept a proposal.
///
/// Accepting a proposal implies acceptance of the publisher
/// terms_and_conditions, if any.
class AcceptProposalRequest {
  /// The last known client revision number of the proposal.
  core.String? proposalRevision;

  AcceptProposalRequest({
    this.proposalRevision,
  });

  AcceptProposalRequest.fromJson(core.Map _json)
      : this(
          proposalRevision: _json.containsKey('proposalRevision')
              ? _json['proposalRevision'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
      };
}

/// Request message for activating a client.
typedef ActivateClientRequest = $Empty;

/// Request message for activating a client user.
typedef ActivateClientUserRequest = $Empty;

/// Represents size of a single ad slot, or a creative.
class AdSize {
  /// The height of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? height;

  /// The type of the ad slot size.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : A placeholder for an undefined size type.
  /// - "PIXEL" : Ad slot with size specified by height and width in pixels.
  /// - "INTERSTITIAL" : Special size to describe an interstitial ad slot.
  /// - "NATIVE" : Native (mobile) ads rendered by the publisher.
  /// - "FLUID" : Fluid size (i.e., responsive size) can be resized
  /// automatically with the change of outside environment.
  core.String? type;

  /// The width of the ad slot in pixels.
  ///
  /// This field will be present only when size type is `PIXEL`.
  core.String? width;

  AdSize({
    this.height,
    this.type,
    this.width,
  });

  AdSize.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? _json['height'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          width:
              _json.containsKey('width') ? _json['width'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (type != null) 'type': type!,
        if (width != null) 'width': width!,
      };
}

/// Request message for adding creative to be used in the bidding process for
/// the finalized deal.
class AddCreativeRequest {
  /// Name of the creative to add to the finalized deal, in the format
  /// `buyers/{buyerAccountId}/creatives/{creativeId}`.
  ///
  /// See creative.name.
  core.String? creative;

  AddCreativeRequest({
    this.creative,
  });

  AddCreativeRequest.fromJson(core.Map _json)
      : this(
          creative: _json.containsKey('creative')
              ? _json['creative'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creative != null) 'creative': creative!,
      };
}

/// Request to add a note.
class AddNoteRequest {
  /// The note to add.
  Note? note;

  AddNoteRequest({
    this.note,
  });

  AddNoteRequest.fromJson(core.Map _json)
      : this(
          note: _json.containsKey('note')
              ? Note.fromJson(
                  _json['note'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (note != null) 'note': note!,
      };
}

/// Defines a segment of inventory that buyer wants to buy.
///
/// It's created by buyer and could be shared with multiple buyers.
class AuctionPackage {
  /// Time the auction package was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The buyer that created this auction package.
  ///
  /// Format: `buyers/{buyerAccountId}`
  ///
  /// Output only.
  core.String? creator;

  /// A description of the auction package.
  ///
  /// Output only.
  core.String? description;

  /// The display_name assigned to the auction package.
  core.String? displayName;

  /// The unique identifier for the auction package.
  ///
  /// Format: `buyers/{accountId}/auctionPackages/{auctionPackageId}` The
  /// auction_package_id part of name is sent in the BidRequest to all RTB
  /// bidders and is returned as deal_id by the bidder in the BidResponse.
  ///
  /// Immutable.
  core.String? name;

  /// The list of clients of the current buyer that are subscribed to the
  /// AuctionPackage.
  ///
  /// Format: `buyers/{buyerAccountId}/clients/{clientAccountId}`
  ///
  /// Output only.
  core.List<core.String>? subscribedClients;

  /// Time the auction package was last updated.
  ///
  /// This value is only increased when this auction package is updated but
  /// never when a buyer subscribed.
  ///
  /// Output only.
  core.String? updateTime;

  AuctionPackage({
    this.createTime,
    this.creator,
    this.description,
    this.displayName,
    this.name,
    this.subscribedClients,
    this.updateTime,
  });

  AuctionPackage.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creator: _json.containsKey('creator')
              ? _json['creator'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          subscribedClients: _json.containsKey('subscribedClients')
              ? (_json['subscribedClients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (subscribedClients != null) 'subscribedClients': subscribedClients!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for batch updating deals.
class BatchUpdateDealsRequest {
  /// List of request messages to update deals.
  ///
  /// Required.
  core.List<UpdateDealRequest>? requests;

  BatchUpdateDealsRequest({
    this.requests,
  });

  BatchUpdateDealsRequest.fromJson(core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) => UpdateDealRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for batch updating deals.
class BatchUpdateDealsResponse {
  /// Deals updated.
  core.List<Deal>? deals;

  BatchUpdateDealsResponse({
    this.deals,
  });

  BatchUpdateDealsResponse.fromJson(core.Map _json)
      : this(
          deals: _json.containsKey('deals')
              ? (_json['deals'] as core.List)
                  .map((value) => Deal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deals != null) 'deals': deals!,
      };
}

/// Request to cancel an ongoing negotiation.
typedef CancelNegotiationRequest = $Empty;

/// A client represents an agency, a brand, or an advertiser customer of the
/// buyer.
///
/// Based on the client's role, its client users will have varying levels of
/// restricted access to the Marketplace and certain other sections of the
/// Authorized Buyers UI.
class Client {
  /// Display name shown to publishers.
  ///
  /// Must be unique for clients without partnerClientId specified. Maximum
  /// length of 255 characters is allowed.
  ///
  /// Required.
  core.String? displayName;

  /// The resource name of the client.
  ///
  /// Format: `buyers/{accountId}/clients/{clientAccountId}`
  ///
  /// Output only.
  core.String? name;

  /// Arbitrary unique identifier provided by the buyer.
  ///
  /// This field can be used to associate a client with an identifier in the
  /// namespace of the buyer, lookup clients by that identifier and verify
  /// whether an Authorized Buyers account of the client already exists. If
  /// present, must be unique across all the clients.
  core.String? partnerClientId;

  /// The role assigned to the client.
  ///
  /// Each role implies a set of permissions granted to the client.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CLIENT_ROLE_UNSPECIFIED" : A placeholder for an undefined client role.
  /// This value should never be specified in user input for create or update
  /// method, otherwise an error will be returned.
  /// - "CLIENT_DEAL_VIEWER" : Users associated with this client role can only
  /// view proposals and deals in the Marketplace UI. They cannot negotiate or
  /// approve proposals and deals sent from publishers or send RFP to
  /// publishers.
  /// - "CLIENT_DEAL_NEGOTIATOR" : Users associated with this client role can
  /// view and negotiate on the proposals and deals in the Marketplace UI sent
  /// from publishers and send RFP to publishers, but cannot approve the
  /// proposals and deals by themselves. The buyer can approve the proposals and
  /// deals on behalf of the client.
  /// - "CLIENT_DEAL_APPROVER" : Users associated with this client role can
  /// view, negotiate and approve proposals and deals in the Marketplace UI and
  /// send RFP to publishers.
  core.String? role;

  /// Whether the client will be visible to sellers.
  core.bool? sellerVisible;

  /// The state of the client.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A placeholder for an undefined client state.
  /// Should not be used.
  /// - "ACTIVE" : A client that is currently active and allowed to access the
  /// Authorized Buyers UI.
  /// - "INACTIVE" : A client that is currently inactive and not allowed to
  /// access the Authorized Buyers UI.
  core.String? state;

  Client({
    this.displayName,
    this.name,
    this.partnerClientId,
    this.role,
    this.sellerVisible,
    this.state,
  });

  Client.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          partnerClientId: _json.containsKey('partnerClientId')
              ? _json['partnerClientId'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
          sellerVisible: _json.containsKey('sellerVisible')
              ? _json['sellerVisible'] as core.bool
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (partnerClientId != null) 'partnerClientId': partnerClientId!,
        if (role != null) 'role': role!,
        if (sellerVisible != null) 'sellerVisible': sellerVisible!,
        if (state != null) 'state': state!,
      };
}

/// A user of a client who has restricted access to the Marketplace and certain
/// other sections of the Authorized Buyers UI based on the role granted to the
/// associated client.
class ClientUser {
  /// The client user's email address that has to be unique across all users for
  /// the same client.
  ///
  /// Required.
  core.String? email;

  /// The resource name of the client user.
  ///
  /// Format: `buyers/{accountId}/clients/{clientAccountId}/users/{userId}`
  ///
  /// Output only.
  core.String? name;

  /// The state of the client user.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : A placeholder for an undefined user state.
  /// - "INVITED" : A user who was created but hasn't accepted the invitation
  /// yet, not allowed to access the Authorized Buyers UI.
  /// - "ACTIVE" : A user that is currently active and allowed to access the
  /// Authorized Buyers UI.
  /// - "INACTIVE" : A user that is currently inactive and not allowed to access
  /// the Authorized Buyers UI.
  core.String? state;

  ClientUser({
    this.email,
    this.name,
    this.state,
  });

  ClientUser.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Contains information on how a buyer or seller can be reached.
class Contact {
  /// The display_name of the contact.
  core.String? displayName;

  /// Email address for the contact.
  core.String? email;

  Contact({
    this.displayName,
    this.email,
  });

  Contact.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
      };
}

/// Message captures data about the creatives in the deal.
class CreativeRequirements {
  /// Specifies the creative pre-approval policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_PRE_APPROVAL_POLICY_UNSPECIFIED" : A placeholder for an
  /// undefined creative pre-approval policy.
  /// - "SELLER_PRE_APPROVAL_REQUIRED" : The seller needs to approve each
  /// creative before it can serve.
  /// - "SELLER_PRE_APPROVAL_NOT_REQUIRED" : The seller does not need to approve
  /// each creative before it can serve.
  core.String? creativePreApprovalPolicy;

  /// Specifies whether the creative is safeFrame compatible.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_SAFE_FRAME_COMPATIBILITY_UNSPECIFIED" : A placeholder for an
  /// undefined creative safe-frame compatibility.
  /// - "COMPATIBLE" : The creatives need to be compatible with the safe frame
  /// option.
  /// - "INCOMPATIBLE" : The creatives can be incompatible with the safe frame
  /// option.
  core.String? creativeSafeFrameCompatibility;

  /// Specifies the creative source for programmatic deals.
  ///
  /// PUBLISHER means creative is provided by seller and ADVERTISER means
  /// creative is provided by the buyer.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROGRAMMATIC_CREATIVE_SOURCE_UNSPECIFIED" : A placeholder for an
  /// undefined programmatic creative source.
  /// - "ADVERTISER" : The advertiser provides the creatives.
  /// - "PUBLISHER" : The publisher provides the creatives to be served.
  core.String? programmaticCreativeSource;

  CreativeRequirements({
    this.creativePreApprovalPolicy,
    this.creativeSafeFrameCompatibility,
    this.programmaticCreativeSource,
  });

  CreativeRequirements.fromJson(core.Map _json)
      : this(
          creativePreApprovalPolicy:
              _json.containsKey('creativePreApprovalPolicy')
                  ? _json['creativePreApprovalPolicy'] as core.String
                  : null,
          creativeSafeFrameCompatibility:
              _json.containsKey('creativeSafeFrameCompatibility')
                  ? _json['creativeSafeFrameCompatibility'] as core.String
                  : null,
          programmaticCreativeSource:
              _json.containsKey('programmaticCreativeSource')
                  ? _json['programmaticCreativeSource'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creativePreApprovalPolicy != null)
          'creativePreApprovalPolicy': creativePreApprovalPolicy!,
        if (creativeSafeFrameCompatibility != null)
          'creativeSafeFrameCompatibility': creativeSafeFrameCompatibility!,
        if (programmaticCreativeSource != null)
          'programmaticCreativeSource': programmaticCreativeSource!,
      };
}

/// Generic targeting used for targeting dimensions that contains a list of
/// included and excluded numeric IDs.
///
/// This cannot be filtered using list filter syntax.
class CriteriaTargeting {
  /// A list of numeric IDs to be excluded.
  core.List<core.String>? excludedCriteriaIds;

  /// A list of numeric IDs to be included.
  core.List<core.String>? targetedCriteriaIds;

  CriteriaTargeting({
    this.excludedCriteriaIds,
    this.targetedCriteriaIds,
  });

  CriteriaTargeting.fromJson(core.Map _json)
      : this(
          excludedCriteriaIds: _json.containsKey('excludedCriteriaIds')
              ? (_json['excludedCriteriaIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetedCriteriaIds: _json.containsKey('targetedCriteriaIds')
              ? (_json['targetedCriteriaIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedCriteriaIds != null)
          'excludedCriteriaIds': excludedCriteriaIds!,
        if (targetedCriteriaIds != null)
          'targetedCriteriaIds': targetedCriteriaIds!,
      };
}

/// Defines targeting for a period of time on a specific week day.
class DayPart {
  /// Day of week for the period.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// Hours in 24 hour time between 0 and 24, inclusive.
  ///
  /// Note: 24 is logically equivalent to 0, but is supported since in some
  /// cases there may need to be differentiation made between midnight on one
  /// day and midnight on the next day. Accepted values for minutes are \[0, 15,
  /// 30, 45\]. 0 is the only acceptable minute value for hour 24. Seconds and
  /// nanos are ignored.
  TimeOfDay? endTime;

  /// Hours in 24 hour time between 0 and 24, inclusive.
  ///
  /// Note: 24 is logically equivalent to 0, but is supported since in some
  /// cases there may need to be differentiation made between midnight on one
  /// day and midnight on the next day. Accepted values for minutes are \[0, 15,
  /// 30, 45\]. 0 is the only acceptable minute value for hour 24. Seconds and
  /// nanos are ignored.
  TimeOfDay? startTime;

  DayPart({
    this.dayOfWeek,
    this.endTime,
    this.startTime,
  });

  DayPart.fromJson(core.Map _json)
      : this(
          dayOfWeek: _json.containsKey('dayOfWeek')
              ? _json['dayOfWeek'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? TimeOfDay.fromJson(
                  _json['endTime'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  _json['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents Daypart targeting.
class DayPartTargeting {
  /// The targeted weekdays and times
  core.List<DayPart>? dayParts;

  /// The time zone type of the day parts
  /// Possible string values are:
  /// - "TIME_ZONE_TYPE_UNSPECIFIED" : Default value. This field is unused.
  /// - "SELLER" : The publisher's time zone
  /// - "USER" : The user's time zone
  core.String? timeZoneType;

  DayPartTargeting({
    this.dayParts,
    this.timeZoneType,
  });

  DayPartTargeting.fromJson(core.Map _json)
      : this(
          dayParts: _json.containsKey('dayParts')
              ? (_json['dayParts'] as core.List)
                  .map((value) => DayPart.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeZoneType: _json.containsKey('timeZoneType')
              ? _json['timeZoneType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayParts != null) 'dayParts': dayParts!,
        if (timeZoneType != null) 'timeZoneType': timeZoneType!,
      };
}

/// Request message for disabling a client.
typedef DeactivateClientRequest = $Empty;

/// Request message for deactivating a client user.
typedef DeactivateClientUserRequest = $Empty;

/// A deal represents a segment of inventory for displaying ads that contains
/// the terms and targeting information that is used for serving as well as the
/// deal stats and status.
///
/// Note: A proposal may contain multiple deals.
class Deal {
  /// When the client field is populated, this field refers to the buyer who
  /// creates and manages the client buyer and gets billed on behalf of the
  /// client buyer; when the buyer field is populated, this field is the same
  /// value as buyer.
  ///
  /// Format : `buyers/{buyerAccountId}`
  ///
  /// Output only.
  core.String? billedBuyer;

  /// Refers to a buyer in The Realtime-bidding API.
  ///
  /// Format: `buyers/{buyerAccountId}`
  ///
  /// Output only.
  core.String? buyer;

  /// Refers to a Client.
  ///
  /// Format: `buyers/{buyerAccountId}/clients/{clientAccountid}`
  ///
  /// Output only.
  core.String? client;

  /// The time of the deal creation.
  ///
  /// Output only.
  core.String? createTime;

  /// Metadata about the creatives of this deal.
  ///
  /// Output only.
  CreativeRequirements? creativeRequirements;

  /// Type of deal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEAL_TYPE_UNSPECIFIED" : Default, unspecified deal type.
  /// - "PREFERRED_DEAL" : Preferred deals.
  /// - "PRIVATE_AUCTION" : Private auction deals.
  /// - "PROGRAMMATIC_GUARANTEED" : Programmatic guaranteed deals.
  core.String? dealType;

  /// Specifies the pacing set by the publisher.
  ///
  /// Output only.
  DeliveryControl? deliveryControl;

  /// Free text description for the deal terms.
  ///
  /// Output only.
  core.String? description;

  /// The name of the deal.
  ///
  /// Maximum length of 255 unicode characters is allowed. Control characters
  /// are not allowed. Buyers cannot update this field. Note: Not to be confused
  /// with name, which is a unique identifier of the deal.
  ///
  /// Output only.
  core.String? displayName;

  /// Specified by buyers in request for proposal (RFP) to notify publisher the
  /// total estimated spend for the proposal.
  ///
  /// Publishers will receive this information and send back proposed deals
  /// accordingly.
  Money? estimatedGrossSpend;

  /// Proposed flight end time of the deal.
  ///
  /// This will generally be stored in a granularity of a second. A value is not
  /// necessary for Private Auction deals.
  core.String? flightEndTime;

  /// Proposed flight start time of the deal.
  ///
  /// This will generally be stored in the granularity of one second since deal
  /// serving starts at seconds boundary. Any time specified with more
  /// granularity (e.g., in milliseconds) will be truncated towards the start of
  /// time in seconds.
  core.String? flightStartTime;

  /// The unique identifier of the deal.
  ///
  /// Auto-generated by the server when a deal is created. Format:
  /// buyers/{accountId}/proposals/{proposalId}/deals/{dealId}
  ///
  /// Immutable.
  core.String? name;

  /// The terms for preferred deals.
  PreferredDealTerms? preferredDealTerms;

  /// The terms for private auction deals.
  PrivateAuctionTerms? privateAuctionTerms;

  /// The terms for programmatic guaranteed deals.
  ProgrammaticGuaranteedTerms? programmaticGuaranteedTerms;

  /// The revision number for the proposal and is the same value as
  /// proposal.proposal_revision.
  ///
  /// Each update to deal causes the proposal revision number to auto-increment.
  /// The buyer keeps track of the last revision number they know of and pass it
  /// in when making an update. If the head revision number on the server has
  /// since incremented, then an ABORTED error is returned during the update
  /// operation to let the buyer know that a subsequent update was made.
  ///
  /// Output only.
  core.String? proposalRevision;

  /// Reference to the seller on the deal.
  ///
  /// Format: `buyers/{buyerAccountId}/publisherProfiles/{publisherProfileId}`
  ///
  /// Immutable.
  core.String? publisherProfile;

  /// Time zone of the seller used to mark the boundaries of a day for daypart
  /// targeting and CPD billing.
  ///
  /// Output only.
  TimeZone? sellerTimeZone;

  /// Specifies the subset of inventory targeted by the deal.
  ///
  /// Can be updated by the buyer before the deal is finalized.
  MarketplaceTargeting? targeting;

  /// The time when the deal was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Deal({
    this.billedBuyer,
    this.buyer,
    this.client,
    this.createTime,
    this.creativeRequirements,
    this.dealType,
    this.deliveryControl,
    this.description,
    this.displayName,
    this.estimatedGrossSpend,
    this.flightEndTime,
    this.flightStartTime,
    this.name,
    this.preferredDealTerms,
    this.privateAuctionTerms,
    this.programmaticGuaranteedTerms,
    this.proposalRevision,
    this.publisherProfile,
    this.sellerTimeZone,
    this.targeting,
    this.updateTime,
  });

  Deal.fromJson(core.Map _json)
      : this(
          billedBuyer: _json.containsKey('billedBuyer')
              ? _json['billedBuyer'] as core.String
              : null,
          buyer:
              _json.containsKey('buyer') ? _json['buyer'] as core.String : null,
          client: _json.containsKey('client')
              ? _json['client'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creativeRequirements: _json.containsKey('creativeRequirements')
              ? CreativeRequirements.fromJson(_json['creativeRequirements']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dealType: _json.containsKey('dealType')
              ? _json['dealType'] as core.String
              : null,
          deliveryControl: _json.containsKey('deliveryControl')
              ? DeliveryControl.fromJson(_json['deliveryControl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          estimatedGrossSpend: _json.containsKey('estimatedGrossSpend')
              ? Money.fromJson(_json['estimatedGrossSpend']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flightEndTime: _json.containsKey('flightEndTime')
              ? _json['flightEndTime'] as core.String
              : null,
          flightStartTime: _json.containsKey('flightStartTime')
              ? _json['flightStartTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          preferredDealTerms: _json.containsKey('preferredDealTerms')
              ? PreferredDealTerms.fromJson(_json['preferredDealTerms']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateAuctionTerms: _json.containsKey('privateAuctionTerms')
              ? PrivateAuctionTerms.fromJson(_json['privateAuctionTerms']
                  as core.Map<core.String, core.dynamic>)
              : null,
          programmaticGuaranteedTerms:
              _json.containsKey('programmaticGuaranteedTerms')
                  ? ProgrammaticGuaranteedTerms.fromJson(
                      _json['programmaticGuaranteedTerms']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          proposalRevision: _json.containsKey('proposalRevision')
              ? _json['proposalRevision'] as core.String
              : null,
          publisherProfile: _json.containsKey('publisherProfile')
              ? _json['publisherProfile'] as core.String
              : null,
          sellerTimeZone: _json.containsKey('sellerTimeZone')
              ? TimeZone.fromJson(_json['sellerTimeZone']
                  as core.Map<core.String, core.dynamic>)
              : null,
          targeting: _json.containsKey('targeting')
              ? MarketplaceTargeting.fromJson(
                  _json['targeting'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billedBuyer != null) 'billedBuyer': billedBuyer!,
        if (buyer != null) 'buyer': buyer!,
        if (client != null) 'client': client!,
        if (createTime != null) 'createTime': createTime!,
        if (creativeRequirements != null)
          'creativeRequirements': creativeRequirements!,
        if (dealType != null) 'dealType': dealType!,
        if (deliveryControl != null) 'deliveryControl': deliveryControl!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (estimatedGrossSpend != null)
          'estimatedGrossSpend': estimatedGrossSpend!,
        if (flightEndTime != null) 'flightEndTime': flightEndTime!,
        if (flightStartTime != null) 'flightStartTime': flightStartTime!,
        if (name != null) 'name': name!,
        if (preferredDealTerms != null)
          'preferredDealTerms': preferredDealTerms!,
        if (privateAuctionTerms != null)
          'privateAuctionTerms': privateAuctionTerms!,
        if (programmaticGuaranteedTerms != null)
          'programmaticGuaranteedTerms': programmaticGuaranteedTerms!,
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
        if (publisherProfile != null) 'publisherProfile': publisherProfile!,
        if (sellerTimeZone != null) 'sellerTimeZone': sellerTimeZone!,
        if (targeting != null) 'targeting': targeting!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Information related to deal pausing.
class DealPausingInfo {
  /// The reason for the pausing of the deal; empty for active deals.
  core.String? pauseReason;

  /// The party that first paused the deal; unspecified for active deals.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? pauseRole;

  /// Whether pausing is consented between buyer and seller for the deal.
  core.bool? pausingConsented;

  DealPausingInfo({
    this.pauseReason,
    this.pauseRole,
    this.pausingConsented,
  });

  DealPausingInfo.fromJson(core.Map _json)
      : this(
          pauseReason: _json.containsKey('pauseReason')
              ? _json['pauseReason'] as core.String
              : null,
          pauseRole: _json.containsKey('pauseRole')
              ? _json['pauseRole'] as core.String
              : null,
          pausingConsented: _json.containsKey('pausingConsented')
              ? _json['pausingConsented'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pauseReason != null) 'pauseReason': pauseReason!,
        if (pauseRole != null) 'pauseRole': pauseRole!,
        if (pausingConsented != null) 'pausingConsented': pausingConsented!,
      };
}

/// Message contains details about how the deal will be paced.
class DeliveryControl {
  /// Specifies roadblocking in a master companion lineitem.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPANION_DELIVERY_TYPE_UNSPECIFIED" : A placeholder for an unspecified
  /// companion delivery type.
  /// - "DELIVERY_OPTIONAL" : Companions are not required to serve a creative
  /// set. The creative set can serve an inventory that has zero or more
  /// matching companions.
  /// - "DELIVERY_AT_LEAST_ONE" : At least one companion must be served in order
  /// for the creative set to be used.
  /// - "DELIVERY_ALL" : All companions in the set must be served in order for
  /// the creative set to be used. This can still serve to inventory that has
  /// more companions than can be filled.
  core.String? companionDeliveryType;

  /// Specifies strategy to use for selecting a creative when multiple creatives
  /// of the same size are available.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_ROTATION_TYPE_UNSPECIFIED" : Creatives are displayed roughly
  /// the same number of times over the duration of the deal.
  /// - "ROTATION_EVEN" : Creatives are displayed roughly the same number of
  /// times over the duration of the deal.
  /// - "ROTATION_OPTIMIZED" : Creatives are served roughly proportionally to
  /// their performance.
  /// - "ROTATION_MANUAL" : Creatives are served roughly proportionally to their
  /// weights.
  /// - "ROTATION_SEQUENTIAL" : Creatives are served exactly in sequential
  /// order, aka Storyboarding.
  core.String? creativeRotationType;

  /// Specifies how the impression delivery will be paced.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DELIVERY_RATE_TYPE_UNSPECIFIED" : A placeholder for an undefined
  /// delivery rate type.
  /// - "EVENLY" : Impressions are served uniformly over the life of the deal.
  /// - "FRONT_LOADED" : Impressions are served front-loaded.
  /// - "AS_FAST_AS_POSSIBLE" : Impressions are served as fast as possible.
  core.String? deliveryRateType;

  /// Specifies any frequency caps.
  ///
  /// Cannot be filtered within ListDealsRequest.
  ///
  /// Output only.
  core.List<FrequencyCap>? frequencyCap;

  /// Specifies the roadblocking type in display creatives.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROADBLOCKING_TYPE_UNSPECIFIED" : A placeholder for an unspecified
  /// roadblocking type.
  /// - "ONLY_ONE" : Only one creative from a deal can serve per ad request.
  /// https://support.google.com/admanager/answer/177277.
  /// - "ONE_OR_MORE" : Any number of creatives from a deal can serve together
  /// per ad request.
  /// - "AS_MANY_AS_POSSIBLE" : As many creatives from a deal as can fit on a
  /// page will serve. This could mean anywhere from one to all of a deal's
  /// creatives given the size constraints of ad slots on a page.
  /// - "ALL_ROADBLOCK" : All or none of the creatives from a deal will serve.
  /// - "CREATIVE_SET" : A master/companion creative set roadblocking type.
  core.String? roadblockingType;

  DeliveryControl({
    this.companionDeliveryType,
    this.creativeRotationType,
    this.deliveryRateType,
    this.frequencyCap,
    this.roadblockingType,
  });

  DeliveryControl.fromJson(core.Map _json)
      : this(
          companionDeliveryType: _json.containsKey('companionDeliveryType')
              ? _json['companionDeliveryType'] as core.String
              : null,
          creativeRotationType: _json.containsKey('creativeRotationType')
              ? _json['creativeRotationType'] as core.String
              : null,
          deliveryRateType: _json.containsKey('deliveryRateType')
              ? _json['deliveryRateType'] as core.String
              : null,
          frequencyCap: _json.containsKey('frequencyCap')
              ? (_json['frequencyCap'] as core.List)
                  .map((value) => FrequencyCap.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          roadblockingType: _json.containsKey('roadblockingType')
              ? _json['roadblockingType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companionDeliveryType != null)
          'companionDeliveryType': companionDeliveryType!,
        if (creativeRotationType != null)
          'creativeRotationType': creativeRotationType!,
        if (deliveryRateType != null) 'deliveryRateType': deliveryRateType!,
        if (frequencyCap != null) 'frequencyCap': frequencyCap!,
        if (roadblockingType != null) 'roadblockingType': roadblockingType!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// A finalized deal is a snapshot of the deal when both buyer and seller accept
/// the deal.
///
/// The buyer or seller can update the deal after it's been finalized and
/// renegotiate on the deal targeting, terms and other fields, while at the same
/// time the finalized snapshot of the deal can still be retrieved via this API.
/// The finalized deal contains a copy of the deal as it existed when most
/// recently finalized, as well as fields related to deal serving such as
/// pause/resume status, RTB metrics, etc.
class FinalizedDeal {
  /// A copy of the Deal made upon finalization.
  ///
  /// During renegotiation, this will reflect the last finalized deal before
  /// renegotiation was initiated.
  Deal? deal;

  /// Information related to deal pausing for the deal.
  DealPausingInfo? dealPausingInfo;

  /// Serving status of the deal.
  /// Possible string values are:
  /// - "DEAL_SERVING_STATUS_UNSPECIFIED" : Unspecified.
  /// - "ACTIVE" : The deal is actively serving or ready to serve when the start
  /// date is reached.
  /// - "ENDED" : The deal serving has ended.
  /// - "PAUSED_BY_BUYER" : The deal serving is paused by buyer.
  /// - "PAUSED_BY_SELLER" : The deal serving is paused by seller.
  core.String? dealServingStatus;

  /// The resource name of the finalized deal.
  ///
  /// Format: `buyers/{accountId}/finalizeddeals/{finalizedDealId}`
  core.String? name;

  /// Whether the Programmatic Guaranteed deal is ready for serving.
  core.bool? readyToServe;

  /// Real-time bidding metrics for this deal.
  RtbMetrics? rtbMetrics;

  FinalizedDeal({
    this.deal,
    this.dealPausingInfo,
    this.dealServingStatus,
    this.name,
    this.readyToServe,
    this.rtbMetrics,
  });

  FinalizedDeal.fromJson(core.Map _json)
      : this(
          deal: _json.containsKey('deal')
              ? Deal.fromJson(
                  _json['deal'] as core.Map<core.String, core.dynamic>)
              : null,
          dealPausingInfo: _json.containsKey('dealPausingInfo')
              ? DealPausingInfo.fromJson(_json['dealPausingInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dealServingStatus: _json.containsKey('dealServingStatus')
              ? _json['dealServingStatus'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          readyToServe: _json.containsKey('readyToServe')
              ? _json['readyToServe'] as core.bool
              : null,
          rtbMetrics: _json.containsKey('rtbMetrics')
              ? RtbMetrics.fromJson(
                  _json['rtbMetrics'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deal != null) 'deal': deal!,
        if (dealPausingInfo != null) 'dealPausingInfo': dealPausingInfo!,
        if (dealServingStatus != null) 'dealServingStatus': dealServingStatus!,
        if (name != null) 'name': name!,
        if (readyToServe != null) 'readyToServe': readyToServe!,
        if (rtbMetrics != null) 'rtbMetrics': rtbMetrics!,
      };
}

/// Represents a list of targeted and excluded mobile application IDs that
/// publishers own.
///
/// Android App ID, for example, com.google.android.apps.maps, can be found in
/// Google Play Store URL. iOS App ID (which is a number) can be found at the
/// end of iTunes store URL. First party mobile applications is either included
/// or excluded.
class FirstPartyMobileApplicationTargeting {
  /// A list of application IDs to be excluded.
  core.List<core.String>? excludedAppIds;

  /// A list of application IDs to be included.
  core.List<core.String>? targetedAppIds;

  FirstPartyMobileApplicationTargeting({
    this.excludedAppIds,
    this.targetedAppIds,
  });

  FirstPartyMobileApplicationTargeting.fromJson(core.Map _json)
      : this(
          excludedAppIds: _json.containsKey('excludedAppIds')
              ? (_json['excludedAppIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetedAppIds: _json.containsKey('targetedAppIds')
              ? (_json['targetedAppIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedAppIds != null) 'excludedAppIds': excludedAppIds!,
        if (targetedAppIds != null) 'targetedAppIds': targetedAppIds!,
      };
}

/// Message contains details about publisher-set frequency caps of the delivery.
class FrequencyCap {
  /// The maximum number of impressions that can be served to a user within the
  /// specified time period.
  core.int? maxImpressions;

  /// The time unit.
  ///
  /// Along with num_time_units defines the amount of time over which
  /// impressions per user are counted and capped.
  /// Possible string values are:
  /// - "TIME_UNIT_TYPE_UNSPECIFIED" : A placeholder for an undefined time unit
  /// type. This just indicates the variable with this value hasn't been
  /// initialized.
  /// - "MINUTE" : Minute unit.
  /// - "HOUR" : Hour unit.
  /// - "DAY" : Day unit.
  /// - "WEEK" : Week unit.
  /// - "MONTH" : Month unit.
  /// - "LIFETIME" : Lifecycle/Lifetime unit.
  /// - "POD" : Pod unit.
  /// - "STREAM" : Stream unit.
  core.String? timeUnitType;

  /// The amount of time, in the units specified by time_unit_type.
  ///
  /// Defines the amount of time over which impressions per user are counted and
  /// capped.
  core.int? timeUnitsCount;

  FrequencyCap({
    this.maxImpressions,
    this.timeUnitType,
    this.timeUnitsCount,
  });

  FrequencyCap.fromJson(core.Map _json)
      : this(
          maxImpressions: _json.containsKey('maxImpressions')
              ? _json['maxImpressions'] as core.int
              : null,
          timeUnitType: _json.containsKey('timeUnitType')
              ? _json['timeUnitType'] as core.String
              : null,
          timeUnitsCount: _json.containsKey('timeUnitsCount')
              ? _json['timeUnitsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxImpressions != null) 'maxImpressions': maxImpressions!,
        if (timeUnitType != null) 'timeUnitType': timeUnitType!,
        if (timeUnitsCount != null) 'timeUnitsCount': timeUnitsCount!,
      };
}

/// Represents the size of an ad unit that can be targeted on a bid request.
class InventorySizeTargeting {
  /// A list of inventory sizes to be excluded.
  core.List<AdSize>? excludedInventorySizes;

  /// A list of inventory sizes to be included.
  core.List<AdSize>? targetedInventorySizes;

  InventorySizeTargeting({
    this.excludedInventorySizes,
    this.targetedInventorySizes,
  });

  InventorySizeTargeting.fromJson(core.Map _json)
      : this(
          excludedInventorySizes: _json.containsKey('excludedInventorySizes')
              ? (_json['excludedInventorySizes'] as core.List)
                  .map((value) => AdSize.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          targetedInventorySizes: _json.containsKey('targetedInventorySizes')
              ? (_json['targetedInventorySizes'] as core.List)
                  .map((value) => AdSize.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedInventorySizes != null)
          'excludedInventorySizes': excludedInventorySizes!,
        if (targetedInventorySizes != null)
          'targetedInventorySizes': targetedInventorySizes!,
      };
}

/// Response message for listing auction packages.
class ListAuctionPackagesResponse {
  /// The list of auction packages.
  core.List<AuctionPackage>? auctionPackages;

  /// Continuation token for fetching the next page of results.
  ///
  /// Pass this value in the ListAuctionPackagesRequest.pageToken field in the
  /// subsequent call to the `ListAuctionPackages` method to retrieve the next
  /// page of results.
  core.String? nextPageToken;

  ListAuctionPackagesResponse({
    this.auctionPackages,
    this.nextPageToken,
  });

  ListAuctionPackagesResponse.fromJson(core.Map _json)
      : this(
          auctionPackages: _json.containsKey('auctionPackages')
              ? (_json['auctionPackages'] as core.List)
                  .map((value) => AuctionPackage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auctionPackages != null) 'auctionPackages': auctionPackages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the list method.
class ListClientUsersResponse {
  /// The returned list of client users.
  core.List<ClientUser>? clientUsers;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListClientUsersRequest.pageToken field in the
  /// subsequent call to the list method to retrieve the next page of results.
  core.String? nextPageToken;

  ListClientUsersResponse({
    this.clientUsers,
    this.nextPageToken,
  });

  ListClientUsersResponse.fromJson(core.Map _json)
      : this(
          clientUsers: _json.containsKey('clientUsers')
              ? (_json['clientUsers'] as core.List)
                  .map((value) => ClientUser.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientUsers != null) 'clientUsers': clientUsers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the list method.
class ListClientsResponse {
  /// The returned list of clients.
  core.List<Client>? clients;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListClientsRequest.pageToken field in the
  /// subsequent call to the list method to retrieve the next page of results.
  core.String? nextPageToken;

  ListClientsResponse({
    this.clients,
    this.nextPageToken,
  });

  ListClientsResponse.fromJson(core.Map _json)
      : this(
          clients: _json.containsKey('clients')
              ? (_json['clients'] as core.List)
                  .map((value) => Client.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clients != null) 'clients': clients!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing deals in a proposal.
class ListDealsResponse {
  /// The list of deals.
  core.List<Deal>? deals;

  /// Token to fetch the next page of results.
  core.String? nextPageToken;

  ListDealsResponse({
    this.deals,
    this.nextPageToken,
  });

  ListDealsResponse.fromJson(core.Map _json)
      : this(
          deals: _json.containsKey('deals')
              ? (_json['deals'] as core.List)
                  .map((value) => Deal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deals != null) 'deals': deals!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing finalized deals.
class ListFinalizedDealsResponse {
  /// The list of finalized deals.
  core.List<FinalizedDeal>? finalizedDeals;

  /// Token to fetch the next page of results.
  core.String? nextPageToken;

  ListFinalizedDealsResponse({
    this.finalizedDeals,
    this.nextPageToken,
  });

  ListFinalizedDealsResponse.fromJson(core.Map _json)
      : this(
          finalizedDeals: _json.containsKey('finalizedDeals')
              ? (_json['finalizedDeals'] as core.List)
                  .map((value) => FinalizedDeal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finalizedDeals != null) 'finalizedDeals': finalizedDeals!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing proposals.
class ListProposalsResponse {
  /// Continuation token for fetching the next page of results.
  core.String? nextPageToken;

  /// The list of proposals.
  core.List<Proposal>? proposals;

  ListProposalsResponse({
    this.nextPageToken,
    this.proposals,
  });

  ListProposalsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          proposals: _json.containsKey('proposals')
              ? (_json['proposals'] as core.List)
                  .map((value) => Proposal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (proposals != null) 'proposals': proposals!,
      };
}

/// Response message for profiles visible to the buyer.
class ListPublisherProfilesResponse {
  /// Token to fetch the next page of results.
  core.String? nextPageToken;

  /// The list of matching publisher profiles.
  core.List<PublisherProfile>? publisherProfiles;

  ListPublisherProfilesResponse({
    this.nextPageToken,
    this.publisherProfiles,
  });

  ListPublisherProfilesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          publisherProfiles: _json.containsKey('publisherProfiles')
              ? (_json['publisherProfiles'] as core.List)
                  .map((value) => PublisherProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (publisherProfiles != null) 'publisherProfiles': publisherProfiles!,
      };
}

/// Targeting represents different criteria that can be used to target
/// inventory.
///
/// For example, they can choose to target inventory only if the user is in the
/// US. Multiple types of targeting are always applied as a logical AND, unless
/// noted otherwise.
class MarketplaceTargeting {
  /// Daypart targeting information.
  DayPartTargeting? daypartTargeting;

  /// Geo criteria IDs to be included/excluded.
  ///
  /// Output only.
  CriteriaTargeting? geoTargeting;

  /// Inventory sizes to be included/excluded.
  ///
  /// Output only.
  InventorySizeTargeting? inventorySizeTargeting;

  /// Placement targeting information, e.g., URL, mobile applications.
  ///
  /// Output only.
  PlacementTargeting? placementTargeting;

  /// Technology targeting information, e.g., operating system, device category.
  ///
  /// Output only.
  TechnologyTargeting? technologyTargeting;

  /// Buyer user list targeting information.
  ///
  /// User lists can be uploaded via
  /// https://developers.google.com/authorized-buyers/rtb/bulk-uploader.
  CriteriaTargeting? userListTargeting;

  /// Video targeting information.
  ///
  /// Output only.
  VideoTargeting? videoTargeting;

  MarketplaceTargeting({
    this.daypartTargeting,
    this.geoTargeting,
    this.inventorySizeTargeting,
    this.placementTargeting,
    this.technologyTargeting,
    this.userListTargeting,
    this.videoTargeting,
  });

  MarketplaceTargeting.fromJson(core.Map _json)
      : this(
          daypartTargeting: _json.containsKey('daypartTargeting')
              ? DayPartTargeting.fromJson(_json['daypartTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          geoTargeting: _json.containsKey('geoTargeting')
              ? CriteriaTargeting.fromJson(
                  _json['geoTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          inventorySizeTargeting: _json.containsKey('inventorySizeTargeting')
              ? InventorySizeTargeting.fromJson(_json['inventorySizeTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          placementTargeting: _json.containsKey('placementTargeting')
              ? PlacementTargeting.fromJson(_json['placementTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          technologyTargeting: _json.containsKey('technologyTargeting')
              ? TechnologyTargeting.fromJson(_json['technologyTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userListTargeting: _json.containsKey('userListTargeting')
              ? CriteriaTargeting.fromJson(_json['userListTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          videoTargeting: _json.containsKey('videoTargeting')
              ? VideoTargeting.fromJson(_json['videoTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daypartTargeting != null) 'daypartTargeting': daypartTargeting!,
        if (geoTargeting != null) 'geoTargeting': geoTargeting!,
        if (inventorySizeTargeting != null)
          'inventorySizeTargeting': inventorySizeTargeting!,
        if (placementTargeting != null)
          'placementTargeting': placementTargeting!,
        if (technologyTargeting != null)
          'technologyTargeting': technologyTargeting!,
        if (userListTargeting != null) 'userListTargeting': userListTargeting!,
        if (videoTargeting != null) 'videoTargeting': videoTargeting!,
      };
}

/// Mobile application targeting settings.
class MobileApplicationTargeting {
  /// Publisher owned apps to be targeted or excluded by the publisher to
  /// display the ads in.
  FirstPartyMobileApplicationTargeting? firstPartyTargeting;

  MobileApplicationTargeting({
    this.firstPartyTargeting,
  });

  MobileApplicationTargeting.fromJson(core.Map _json)
      : this(
          firstPartyTargeting: _json.containsKey('firstPartyTargeting')
              ? FirstPartyMobileApplicationTargeting.fromJson(
                  _json['firstPartyTargeting']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstPartyTargeting != null)
          'firstPartyTargeting': firstPartyTargeting!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// A text note attached to the proposal to facilitate the communication between
/// buyers and sellers.
class Note {
  /// When this note was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The role who created the note.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? creatorRole;

  /// The text of the note.
  ///
  /// Maximum length is 1024 characters.
  core.String? note;

  Note({
    this.createTime,
    this.creatorRole,
    this.note,
  });

  Note.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creatorRole: _json.containsKey('creatorRole')
              ? _json['creatorRole'] as core.String
              : null,
          note: _json.containsKey('note') ? _json['note'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (creatorRole != null) 'creatorRole': creatorRole!,
        if (note != null) 'note': note!,
      };
}

/// Represents targeting information for operating systems.
class OperatingSystemTargeting {
  /// IDs of operating systems to be included/excluded.
  CriteriaTargeting? operatingSystemCriteria;

  /// IDs of operating system versions to be included/excluded.
  CriteriaTargeting? operatingSystemVersionCriteria;

  OperatingSystemTargeting({
    this.operatingSystemCriteria,
    this.operatingSystemVersionCriteria,
  });

  OperatingSystemTargeting.fromJson(core.Map _json)
      : this(
          operatingSystemCriteria: _json.containsKey('operatingSystemCriteria')
              ? CriteriaTargeting.fromJson(_json['operatingSystemCriteria']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatingSystemVersionCriteria:
              _json.containsKey('operatingSystemVersionCriteria')
                  ? CriteriaTargeting.fromJson(
                      _json['operatingSystemVersionCriteria']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatingSystemCriteria != null)
          'operatingSystemCriteria': operatingSystemCriteria!,
        if (operatingSystemVersionCriteria != null)
          'operatingSystemVersionCriteria': operatingSystemVersionCriteria!,
      };
}

/// Request message for pausing a finalized deal.
class PauseFinalizedDealRequest {
  /// The reason to pause the finalized deal, will be displayed to the seller.
  ///
  /// Maximum length is 1000 characters.
  core.String? reason;

  PauseFinalizedDealRequest({
    this.reason,
  });

  PauseFinalizedDealRequest.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Represents targeting about where the ads can appear, e.g., certain sites or
/// mobile applications.
///
/// Different placement targeting types will be logically OR'ed.
class PlacementTargeting {
  /// Mobile application targeting information in a deal.
  ///
  /// This doesn't apply to Auction Packages.
  MobileApplicationTargeting? mobileApplicationTargeting;

  /// URLs to be included/excluded.
  UriTargeting? uriTargeting;

  PlacementTargeting({
    this.mobileApplicationTargeting,
    this.uriTargeting,
  });

  PlacementTargeting.fromJson(core.Map _json)
      : this(
          mobileApplicationTargeting:
              _json.containsKey('mobileApplicationTargeting')
                  ? MobileApplicationTargeting.fromJson(
                      _json['mobileApplicationTargeting']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          uriTargeting: _json.containsKey('uriTargeting')
              ? UriTargeting.fromJson(
                  _json['uriTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mobileApplicationTargeting != null)
          'mobileApplicationTargeting': mobileApplicationTargeting!,
        if (uriTargeting != null) 'uriTargeting': uriTargeting!,
      };
}

/// Pricing terms for Preferred Deals.
class PreferredDealTerms {
  /// Fixed price for the deal.
  Price? fixedPrice;

  PreferredDealTerms({
    this.fixedPrice,
  });

  PreferredDealTerms.fromJson(core.Map _json)
      : this(
          fixedPrice: _json.containsKey('fixedPrice')
              ? Price.fromJson(
                  _json['fixedPrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedPrice != null) 'fixedPrice': fixedPrice!,
      };
}

/// Represents a price and a pricing type for a deal.
class Price {
  /// The actual price with currency specified.
  Money? amount;

  /// The pricing type for the deal.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : A placeholder for an undefined pricing type. If the
  /// pricing type is unspecified, CPM will be used instead.
  /// - "CPM" : Cost per thousand impressions.
  /// - "CPD" : Cost per day.
  core.String? type;

  Price({
    this.amount,
    this.type,
  });

  Price.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? Money.fromJson(
                  _json['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (type != null) 'type': type!,
      };
}

/// Pricing terms for Private Auctions.
class PrivateAuctionTerms {
  /// The minimum price buyer has to bid to compete in the private auction.
  Price? floorPrice;

  /// True if open auction buyers are allowed to compete with invited buyers in
  /// this private auction.
  ///
  /// Output only.
  core.bool? openAuctionAllowed;

  PrivateAuctionTerms({
    this.floorPrice,
    this.openAuctionAllowed,
  });

  PrivateAuctionTerms.fromJson(core.Map _json)
      : this(
          floorPrice: _json.containsKey('floorPrice')
              ? Price.fromJson(
                  _json['floorPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          openAuctionAllowed: _json.containsKey('openAuctionAllowed')
              ? _json['openAuctionAllowed'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (floorPrice != null) 'floorPrice': floorPrice!,
        if (openAuctionAllowed != null)
          'openAuctionAllowed': openAuctionAllowed!,
      };
}

/// Buyers are allowed to store certain types of private data in a proposal or
/// deal.
class PrivateData {
  /// A buyer specified reference ID.
  ///
  /// This can be queried in the list operations (max-length: 1024 unicode code
  /// units).
  core.String? referenceId;

  PrivateData({
    this.referenceId,
  });

  PrivateData.fromJson(core.Map _json)
      : this(
          referenceId: _json.containsKey('referenceId')
              ? _json['referenceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (referenceId != null) 'referenceId': referenceId!,
      };
}

/// Pricing terms for Programmatic Guaranteed Deals.
class ProgrammaticGuaranteedTerms {
  /// Fixed price for the deal.
  Price? fixedPrice;

  /// Count of guaranteed looks.
  core.String? guaranteedLooks;

  /// The lifetime impression cap for CPM Sponsorship deals.
  ///
  /// Deal will stop serving when cap is reached.
  core.String? impressionCap;

  /// Daily minimum looks for CPD deal types.
  core.String? minimumDailyLooks;

  /// For sponsorship deals, this is the percentage of the seller's eligible
  /// impressions that the deal will serve until the cap is reached.
  ///
  /// Valid value is within range 0~100.
  core.String? percentShareOfVoice;

  /// The reservation type for a Programmatic Guaranteed deal.
  ///
  /// This indicates whether the number of impressions is fixed, or a percent of
  /// available impressions. If not specified, the default reservation type is
  /// STANDARD.
  /// Possible string values are:
  /// - "RESERVATION_TYPE_UNSPECIFIED" : An unspecified reservation type.
  /// - "STANDARD" : Non-sponsorship deal.
  /// - "SPONSORSHIP" : Sponsorship deals don't have impression goal
  /// (guaranteed_looks) and they are served based on the flight dates. For CPM
  /// Sponsorship deals, impression_cap is the lifetime impression limit.
  core.String? reservationType;

  ProgrammaticGuaranteedTerms({
    this.fixedPrice,
    this.guaranteedLooks,
    this.impressionCap,
    this.minimumDailyLooks,
    this.percentShareOfVoice,
    this.reservationType,
  });

  ProgrammaticGuaranteedTerms.fromJson(core.Map _json)
      : this(
          fixedPrice: _json.containsKey('fixedPrice')
              ? Price.fromJson(
                  _json['fixedPrice'] as core.Map<core.String, core.dynamic>)
              : null,
          guaranteedLooks: _json.containsKey('guaranteedLooks')
              ? _json['guaranteedLooks'] as core.String
              : null,
          impressionCap: _json.containsKey('impressionCap')
              ? _json['impressionCap'] as core.String
              : null,
          minimumDailyLooks: _json.containsKey('minimumDailyLooks')
              ? _json['minimumDailyLooks'] as core.String
              : null,
          percentShareOfVoice: _json.containsKey('percentShareOfVoice')
              ? _json['percentShareOfVoice'] as core.String
              : null,
          reservationType: _json.containsKey('reservationType')
              ? _json['reservationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fixedPrice != null) 'fixedPrice': fixedPrice!,
        if (guaranteedLooks != null) 'guaranteedLooks': guaranteedLooks!,
        if (impressionCap != null) 'impressionCap': impressionCap!,
        if (minimumDailyLooks != null) 'minimumDailyLooks': minimumDailyLooks!,
        if (percentShareOfVoice != null)
          'percentShareOfVoice': percentShareOfVoice!,
        if (reservationType != null) 'reservationType': reservationType!,
      };
}

/// Represents a proposal in the Marketplace.
///
/// A proposal is the unit of negotiation between a seller and a buyer.
class Proposal {
  /// When the client field is populated, this field refers to the buyer who
  /// creates and manages the client buyer and gets billed on behalf of the
  /// client buyer; when the buyer field is populated, this field is the same
  /// value as buyer.
  ///
  /// Format : `buyers/{buyerAccountId}`
  ///
  /// Output only.
  core.String? billedBuyer;

  /// Refers to a buyer in The Realtime-bidding API.
  ///
  /// Format: `buyers/{buyerAccountId}`
  ///
  /// Output only.
  core.String? buyer;

  /// Contact information for the buyer.
  core.List<Contact>? buyerContacts;

  /// Buyer private data (hidden from seller).
  PrivateData? buyerPrivateData;

  /// Refers to a Client.
  ///
  /// Format: `buyers/{buyerAccountId}/clients/{clientAccountid}`
  ///
  /// Output only.
  core.String? client;

  /// Type of deal the proposal contains.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEAL_TYPE_UNSPECIFIED" : Default, unspecified deal type.
  /// - "PREFERRED_DEAL" : Preferred deals.
  /// - "PRIVATE_AUCTION" : Private auction deals.
  /// - "PROGRAMMATIC_GUARANTEED" : Programmatic guaranteed deals.
  core.String? dealType;

  /// The descriptive name for the proposal.
  ///
  /// Maximum length of 255 unicode characters is allowed. Control characters
  /// are not allowed. Buyers cannot update this field. Note: Not to be confused
  /// with name, which is a unique identifier of the proposal.
  ///
  /// Output only.
  core.String? displayName;

  /// True if the proposal was previously finalized and is now being
  /// renegotiated.
  ///
  /// Output only.
  core.bool? isRenegotiating;

  /// The role of the last user that either updated the proposal or left a
  /// comment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? lastUpdaterOrCommentorRole;

  /// The name of the proposal serving as a unique identifier.
  ///
  /// Format: buyers/{accountId}/proposals/{proposalId}
  ///
  /// Immutable.
  core.String? name;

  /// A list of notes from the buyer and the seller attached to this proposal.
  core.List<Note>? notes;

  /// Indicates whether the buyer/seller created the proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BUYER_SELLER_ROLE_UNSPECIFIED" : A placeholder for an undefined
  /// buyer/seller role.
  /// - "BUYER" : Specifies the role as buyer.
  /// - "SELLER" : Specifies the role as seller.
  core.String? originatorRole;

  /// Whether pausing is allowed for the proposal.
  ///
  /// This is a negotiable term between buyers and publishers.
  core.bool? pausingConsented;

  /// The revision number for the proposal.
  ///
  /// Each update to the proposal or deal causes the proposal revision number to
  /// auto-increment. The buyer keeps track of the last revision number they
  /// know of and pass it in when making an update. If the head revision number
  /// on the server has since incremented, then an ABORTED error is returned
  /// during the update operation to let the buyer know that a subsequent update
  /// was made.
  ///
  /// Output only.
  core.String? proposalRevision;

  /// Reference to the seller on the proposal.
  ///
  /// Format: `buyers/{buyerAccountId}/publisherProfiles/{publisherProfileId}`
  /// Note: This field may be set only when creating the resource. Modifying
  /// this field while updating the resource will result in an error.
  ///
  /// Immutable.
  core.String? publisherProfile;

  /// Contact information for the seller.
  ///
  /// Output only.
  core.List<Contact>? sellerContacts;

  /// Indicates the state of the proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified proposal state
  /// - "BUYER_REVIEW_REQUESTED" : When a proposal is waiting for buyer to
  /// review.
  /// - "SELLER_REVIEW_REQUESTED" : When the proposal is waiting for the seller
  /// to review.
  /// - "BUYER_ACCEPTANCE_REQUESTED" : When the seller accepted the proposal and
  /// sent it to the buyer for review.
  /// - "FINALIZED" : When both buyer and seller has accepted the proposal
  /// - "TERMINATED" : When either buyer or seller has cancelled the proposal
  core.String? state;

  /// The terms and conditions associated with this proposal.
  ///
  /// Accepting a proposal implies acceptance of this field. This is created by
  /// the seller, the buyer can only view it.
  ///
  /// Output only.
  core.String? termsAndConditions;

  /// The time when the proposal was last revised.
  ///
  /// Output only.
  core.String? updateTime;

  Proposal({
    this.billedBuyer,
    this.buyer,
    this.buyerContacts,
    this.buyerPrivateData,
    this.client,
    this.dealType,
    this.displayName,
    this.isRenegotiating,
    this.lastUpdaterOrCommentorRole,
    this.name,
    this.notes,
    this.originatorRole,
    this.pausingConsented,
    this.proposalRevision,
    this.publisherProfile,
    this.sellerContacts,
    this.state,
    this.termsAndConditions,
    this.updateTime,
  });

  Proposal.fromJson(core.Map _json)
      : this(
          billedBuyer: _json.containsKey('billedBuyer')
              ? _json['billedBuyer'] as core.String
              : null,
          buyer:
              _json.containsKey('buyer') ? _json['buyer'] as core.String : null,
          buyerContacts: _json.containsKey('buyerContacts')
              ? (_json['buyerContacts'] as core.List)
                  .map((value) => Contact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          buyerPrivateData: _json.containsKey('buyerPrivateData')
              ? PrivateData.fromJson(_json['buyerPrivateData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          client: _json.containsKey('client')
              ? _json['client'] as core.String
              : null,
          dealType: _json.containsKey('dealType')
              ? _json['dealType'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          isRenegotiating: _json.containsKey('isRenegotiating')
              ? _json['isRenegotiating'] as core.bool
              : null,
          lastUpdaterOrCommentorRole:
              _json.containsKey('lastUpdaterOrCommentorRole')
                  ? _json['lastUpdaterOrCommentorRole'] as core.String
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notes: _json.containsKey('notes')
              ? (_json['notes'] as core.List)
                  .map((value) => Note.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          originatorRole: _json.containsKey('originatorRole')
              ? _json['originatorRole'] as core.String
              : null,
          pausingConsented: _json.containsKey('pausingConsented')
              ? _json['pausingConsented'] as core.bool
              : null,
          proposalRevision: _json.containsKey('proposalRevision')
              ? _json['proposalRevision'] as core.String
              : null,
          publisherProfile: _json.containsKey('publisherProfile')
              ? _json['publisherProfile'] as core.String
              : null,
          sellerContacts: _json.containsKey('sellerContacts')
              ? (_json['sellerContacts'] as core.List)
                  .map((value) => Contact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          termsAndConditions: _json.containsKey('termsAndConditions')
              ? _json['termsAndConditions'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (billedBuyer != null) 'billedBuyer': billedBuyer!,
        if (buyer != null) 'buyer': buyer!,
        if (buyerContacts != null) 'buyerContacts': buyerContacts!,
        if (buyerPrivateData != null) 'buyerPrivateData': buyerPrivateData!,
        if (client != null) 'client': client!,
        if (dealType != null) 'dealType': dealType!,
        if (displayName != null) 'displayName': displayName!,
        if (isRenegotiating != null) 'isRenegotiating': isRenegotiating!,
        if (lastUpdaterOrCommentorRole != null)
          'lastUpdaterOrCommentorRole': lastUpdaterOrCommentorRole!,
        if (name != null) 'name': name!,
        if (notes != null) 'notes': notes!,
        if (originatorRole != null) 'originatorRole': originatorRole!,
        if (pausingConsented != null) 'pausingConsented': pausingConsented!,
        if (proposalRevision != null) 'proposalRevision': proposalRevision!,
        if (publisherProfile != null) 'publisherProfile': publisherProfile!,
        if (sellerContacts != null) 'sellerContacts': sellerContacts!,
        if (state != null) 'state': state!,
        if (termsAndConditions != null)
          'termsAndConditions': termsAndConditions!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The values in the publisher profile are supplied by the publisher.
///
/// All fields are not filterable unless stated otherwise.
class PublisherProfile {
  /// Description on the publisher's audience.
  core.String? audienceDescription;

  /// Contact information for direct reservation deals.
  ///
  /// This is free text entered by the publisher and may include information
  /// like names, phone numbers and email addresses.
  core.String? directDealsContact;

  /// Display name of the publisher profile.
  ///
  /// Can be used to filter the response of the publisherProfiles.list method.
  core.String? displayName;

  /// The list of domains represented in this publisher profile.
  ///
  /// Empty if this is a parent profile. These are top private domains, meaning
  /// that these will not contain a string like "photos.google.co.uk/123", but
  /// will instead contain "google.co.uk". Can be used to filter the response of
  /// the publisherProfiles.list method.
  core.List<core.String>? domains;

  /// Indicates if this profile is the parent profile of the seller.
  ///
  /// A parent profile represents all the inventory from the seller, as opposed
  /// to child profile that is created to brand a portion of inventory. One
  /// seller has only one parent publisher profile, and can have multiple child
  /// profiles. See https://support.google.com/admanager/answer/6035806 for
  /// details. Can be used to filter the response of the publisherProfiles.list
  /// method by setting the filter to "is_parent: true".
  core.bool? isParent;

  /// A Google public URL to the logo for this publisher profile.
  ///
  /// The logo is stored as a PNG, JPG, or GIF image.
  core.String? logoUrl;

  /// URL to additional marketing and sales materials.
  core.String? mediaKitUrl;

  /// The list of apps represented in this publisher profile.
  ///
  /// Empty if this is a parent profile.
  core.List<PublisherProfileMobileApplication>? mobileApps;

  /// Name of the publisher profile.
  ///
  /// Format: `buyers/{buyer}/publisherProfiles/{publisher_profile}`
  core.String? name;

  /// Overview of the publisher.
  core.String? overview;

  /// Statement explaining what's unique about publisher's business, and why
  /// buyers should partner with the publisher.
  core.String? pitchStatement;

  /// Contact information for programmatic deals.
  ///
  /// This is free text entered by the publisher and may include information
  /// like names, phone numbers and email addresses.
  core.String? programmaticDealsContact;

  /// A unique identifying code for the seller.
  ///
  /// This value is the same for all of the seller's parent and child publisher
  /// profiles. Can be used to filter the response of the publisherProfiles.list
  /// method.
  core.String? publisherCode;

  /// URL to a sample content page.
  core.String? samplePageUrl;

  /// Up to three key metrics and rankings.
  ///
  /// For example "#1 Mobile News Site for 20 Straight Months".
  core.List<core.String>? topHeadlines;

  PublisherProfile({
    this.audienceDescription,
    this.directDealsContact,
    this.displayName,
    this.domains,
    this.isParent,
    this.logoUrl,
    this.mediaKitUrl,
    this.mobileApps,
    this.name,
    this.overview,
    this.pitchStatement,
    this.programmaticDealsContact,
    this.publisherCode,
    this.samplePageUrl,
    this.topHeadlines,
  });

  PublisherProfile.fromJson(core.Map _json)
      : this(
          audienceDescription: _json.containsKey('audienceDescription')
              ? _json['audienceDescription'] as core.String
              : null,
          directDealsContact: _json.containsKey('directDealsContact')
              ? _json['directDealsContact'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          domains: _json.containsKey('domains')
              ? (_json['domains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          isParent: _json.containsKey('isParent')
              ? _json['isParent'] as core.bool
              : null,
          logoUrl: _json.containsKey('logoUrl')
              ? _json['logoUrl'] as core.String
              : null,
          mediaKitUrl: _json.containsKey('mediaKitUrl')
              ? _json['mediaKitUrl'] as core.String
              : null,
          mobileApps: _json.containsKey('mobileApps')
              ? (_json['mobileApps'] as core.List)
                  .map((value) => PublisherProfileMobileApplication.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          overview: _json.containsKey('overview')
              ? _json['overview'] as core.String
              : null,
          pitchStatement: _json.containsKey('pitchStatement')
              ? _json['pitchStatement'] as core.String
              : null,
          programmaticDealsContact:
              _json.containsKey('programmaticDealsContact')
                  ? _json['programmaticDealsContact'] as core.String
                  : null,
          publisherCode: _json.containsKey('publisherCode')
              ? _json['publisherCode'] as core.String
              : null,
          samplePageUrl: _json.containsKey('samplePageUrl')
              ? _json['samplePageUrl'] as core.String
              : null,
          topHeadlines: _json.containsKey('topHeadlines')
              ? (_json['topHeadlines'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audienceDescription != null)
          'audienceDescription': audienceDescription!,
        if (directDealsContact != null)
          'directDealsContact': directDealsContact!,
        if (displayName != null) 'displayName': displayName!,
        if (domains != null) 'domains': domains!,
        if (isParent != null) 'isParent': isParent!,
        if (logoUrl != null) 'logoUrl': logoUrl!,
        if (mediaKitUrl != null) 'mediaKitUrl': mediaKitUrl!,
        if (mobileApps != null) 'mobileApps': mobileApps!,
        if (name != null) 'name': name!,
        if (overview != null) 'overview': overview!,
        if (pitchStatement != null) 'pitchStatement': pitchStatement!,
        if (programmaticDealsContact != null)
          'programmaticDealsContact': programmaticDealsContact!,
        if (publisherCode != null) 'publisherCode': publisherCode!,
        if (samplePageUrl != null) 'samplePageUrl': samplePageUrl!,
        if (topHeadlines != null) 'topHeadlines': topHeadlines!,
      };
}

/// A mobile application that contains a external app ID, name, and app store.
class PublisherProfileMobileApplication {
  /// The app store the app belongs to.
  ///
  /// Can be used to filter the response of the publisherProfiles.list method.
  /// Possible string values are:
  /// - "APP_STORE_TYPE_UNSPECIFIED" : A placeholder for an unknown app store.
  /// - "APPLE_ITUNES" : Apple iTunes
  /// - "GOOGLE_PLAY" : Google Play
  /// - "ROKU" : Roku
  /// - "AMAZON_FIRE_TV" : Amazon Fire TV
  /// - "PLAYSTATION" : PlayStation
  /// - "XBOX" : Xbox
  /// - "SAMSUNG_TV" : Samsung TV
  /// - "AMAZON" : Amazon Appstore
  /// - "OPPO" : OPPO App Market
  /// - "SAMSUNG" : Samsung Galaxy Store
  /// - "VIVO" : VIVO App Store
  /// - "XIAOMI" : Xiaomi GetApps
  core.String? appStore;

  /// The external ID for the app from its app store.
  ///
  /// Can be used to filter the response of the publisherProfiles.list method.
  core.String? externalAppId;

  /// The name of the app.
  core.String? name;

  PublisherProfileMobileApplication({
    this.appStore,
    this.externalAppId,
    this.name,
  });

  PublisherProfileMobileApplication.fromJson(core.Map _json)
      : this(
          appStore: _json.containsKey('appStore')
              ? _json['appStore'] as core.String
              : null,
          externalAppId: _json.containsKey('externalAppId')
              ? _json['externalAppId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appStore != null) 'appStore': appStore!,
        if (externalAppId != null) 'externalAppId': externalAppId!,
        if (name != null) 'name': name!,
      };
}

/// Request message for resuming a finalized deal.
typedef ResumeFinalizedDealRequest = $Empty;

/// Real-time bidding metrics.
///
/// For what each metric means refer to
/// [Report metrics](https://support.google.com/adxbuyer/answer/6115195#report-metrics)
class RtbMetrics {
  /// Ad impressions in last 7 days.
  core.String? adImpressions7Days;

  /// Bid rate in last 7 days, calculated by (bids / bid requests).
  core.double? bidRate7Days;

  /// Bid requests in last 7 days.
  core.String? bidRequests7Days;

  /// Bids in last 7 days.
  core.String? bids7Days;

  /// Filtered bid rate in last 7 days, calculated by (filtered bids / bids).
  core.double? filteredBidRate7Days;

  /// Must bid rate for current month.
  core.double? mustBidRateCurrentMonth;

  RtbMetrics({
    this.adImpressions7Days,
    this.bidRate7Days,
    this.bidRequests7Days,
    this.bids7Days,
    this.filteredBidRate7Days,
    this.mustBidRateCurrentMonth,
  });

  RtbMetrics.fromJson(core.Map _json)
      : this(
          adImpressions7Days: _json.containsKey('adImpressions7Days')
              ? _json['adImpressions7Days'] as core.String
              : null,
          bidRate7Days: _json.containsKey('bidRate7Days')
              ? (_json['bidRate7Days'] as core.num).toDouble()
              : null,
          bidRequests7Days: _json.containsKey('bidRequests7Days')
              ? _json['bidRequests7Days'] as core.String
              : null,
          bids7Days: _json.containsKey('bids7Days')
              ? _json['bids7Days'] as core.String
              : null,
          filteredBidRate7Days: _json.containsKey('filteredBidRate7Days')
              ? (_json['filteredBidRate7Days'] as core.num).toDouble()
              : null,
          mustBidRateCurrentMonth: _json.containsKey('mustBidRateCurrentMonth')
              ? (_json['mustBidRateCurrentMonth'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adImpressions7Days != null)
          'adImpressions7Days': adImpressions7Days!,
        if (bidRate7Days != null) 'bidRate7Days': bidRate7Days!,
        if (bidRequests7Days != null) 'bidRequests7Days': bidRequests7Days!,
        if (bids7Days != null) 'bids7Days': bids7Days!,
        if (filteredBidRate7Days != null)
          'filteredBidRate7Days': filteredBidRate7Days!,
        if (mustBidRateCurrentMonth != null)
          'mustBidRateCurrentMonth': mustBidRateCurrentMonth!,
      };
}

/// Request to send an RFP.
///
/// All fields in this request are proposed to publisher and subject to changes
/// by publisher during later negotiation.
class SendRfpRequest {
  /// Contact information for the buyer.
  core.List<Contact>? buyerContacts;

  /// If the current buyer is sending the RFP on behalf of its client, use this
  /// field to specify the name of the client in the format:
  /// `buyers/{accountId}/clients/{clientAccountid}`.
  core.String? client;

  /// The display name of the proposal being created by this RFP.
  ///
  /// Required.
  core.String? displayName;

  /// Specified by buyers in request for proposal (RFP) to notify publisher the
  /// total estimated spend for the proposal.
  ///
  /// Publishers will receive this information and send back proposed deals
  /// accordingly.
  Money? estimatedGrossSpend;

  /// Proposed flight end time of the RFP.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format. Note that the specified value
  /// will be truncated to a granularity of one second.
  ///
  /// Required.
  core.String? flightEndTime;

  /// Proposed flight start time of the RFP.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format. Note that the specified value
  /// will be truncated to a granularity of one second.
  ///
  /// Required.
  core.String? flightStartTime;

  /// Geo criteria IDs to be targeted.
  ///
  /// Refer to Geo tables.
  CriteriaTargeting? geoTargeting;

  /// Inventory sizes to be targeted.
  InventorySizeTargeting? inventorySizeTargeting;

  /// A message that is sent to the publisher.
  ///
  /// Maximum length is 1024 characters.
  core.String? note;

  /// The terms for preferred deals.
  PreferredDealTerms? preferredDealTerms;

  /// The terms for programmatic guaranteed deals.
  ProgrammaticGuaranteedTerms? programmaticGuaranteedTerms;

  /// The profile of the publisher who will receive this RFP in the format:
  /// `buyers/{accountId}/publisherProfiles/{publisherProfileId}`.
  ///
  /// Required.
  core.String? publisherProfile;

  SendRfpRequest({
    this.buyerContacts,
    this.client,
    this.displayName,
    this.estimatedGrossSpend,
    this.flightEndTime,
    this.flightStartTime,
    this.geoTargeting,
    this.inventorySizeTargeting,
    this.note,
    this.preferredDealTerms,
    this.programmaticGuaranteedTerms,
    this.publisherProfile,
  });

  SendRfpRequest.fromJson(core.Map _json)
      : this(
          buyerContacts: _json.containsKey('buyerContacts')
              ? (_json['buyerContacts'] as core.List)
                  .map((value) => Contact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          client: _json.containsKey('client')
              ? _json['client'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          estimatedGrossSpend: _json.containsKey('estimatedGrossSpend')
              ? Money.fromJson(_json['estimatedGrossSpend']
                  as core.Map<core.String, core.dynamic>)
              : null,
          flightEndTime: _json.containsKey('flightEndTime')
              ? _json['flightEndTime'] as core.String
              : null,
          flightStartTime: _json.containsKey('flightStartTime')
              ? _json['flightStartTime'] as core.String
              : null,
          geoTargeting: _json.containsKey('geoTargeting')
              ? CriteriaTargeting.fromJson(
                  _json['geoTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          inventorySizeTargeting: _json.containsKey('inventorySizeTargeting')
              ? InventorySizeTargeting.fromJson(_json['inventorySizeTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          note: _json.containsKey('note') ? _json['note'] as core.String : null,
          preferredDealTerms: _json.containsKey('preferredDealTerms')
              ? PreferredDealTerms.fromJson(_json['preferredDealTerms']
                  as core.Map<core.String, core.dynamic>)
              : null,
          programmaticGuaranteedTerms:
              _json.containsKey('programmaticGuaranteedTerms')
                  ? ProgrammaticGuaranteedTerms.fromJson(
                      _json['programmaticGuaranteedTerms']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          publisherProfile: _json.containsKey('publisherProfile')
              ? _json['publisherProfile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyerContacts != null) 'buyerContacts': buyerContacts!,
        if (client != null) 'client': client!,
        if (displayName != null) 'displayName': displayName!,
        if (estimatedGrossSpend != null)
          'estimatedGrossSpend': estimatedGrossSpend!,
        if (flightEndTime != null) 'flightEndTime': flightEndTime!,
        if (flightStartTime != null) 'flightStartTime': flightStartTime!,
        if (geoTargeting != null) 'geoTargeting': geoTargeting!,
        if (inventorySizeTargeting != null)
          'inventorySizeTargeting': inventorySizeTargeting!,
        if (note != null) 'note': note!,
        if (preferredDealTerms != null)
          'preferredDealTerms': preferredDealTerms!,
        if (programmaticGuaranteedTerms != null)
          'programmaticGuaranteedTerms': programmaticGuaranteedTerms!,
        if (publisherProfile != null) 'publisherProfile': publisherProfile!,
      };
}

/// Request message for setting ready to serve for a finalized deal.
typedef SetReadyToServeRequest = $Empty;

/// Request message for SubscribeAuctionPackage.
typedef SubscribeAuctionPackageRequest = $Empty;

/// Request message for SubscribeAuctionPackageClients.
class SubscribeClientsRequest {
  /// A list of client buyers to subscribe to the auction package, with client
  /// buyer in the format `buyers/{accountId}/clients/{clientAccountId}`.
  ///
  /// The current buyer will be subscribed to the auction package regardless of
  /// the list contents if not already.
  ///
  /// Optional.
  core.List<core.String>? clients;

  SubscribeClientsRequest({
    this.clients,
  });

  SubscribeClientsRequest.fromJson(core.Map _json)
      : this(
          clients: _json.containsKey('clients')
              ? (_json['clients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clients != null) 'clients': clients!,
      };
}

/// Represents targeting about various types of technology.
class TechnologyTargeting {
  /// IDs of device capabilities to be included/excluded.
  CriteriaTargeting? deviceCapabilityTargeting;

  /// IDs of device categories to be included/excluded.
  CriteriaTargeting? deviceCategoryTargeting;

  /// Operating system related targeting information.
  OperatingSystemTargeting? operatingSystemTargeting;

  TechnologyTargeting({
    this.deviceCapabilityTargeting,
    this.deviceCategoryTargeting,
    this.operatingSystemTargeting,
  });

  TechnologyTargeting.fromJson(core.Map _json)
      : this(
          deviceCapabilityTargeting: _json
                  .containsKey('deviceCapabilityTargeting')
              ? CriteriaTargeting.fromJson(_json['deviceCapabilityTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deviceCategoryTargeting: _json.containsKey('deviceCategoryTargeting')
              ? CriteriaTargeting.fromJson(_json['deviceCategoryTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatingSystemTargeting:
              _json.containsKey('operatingSystemTargeting')
                  ? OperatingSystemTargeting.fromJson(
                      _json['operatingSystemTargeting']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceCapabilityTargeting != null)
          'deviceCapabilityTargeting': deviceCapabilityTargeting!,
        if (deviceCategoryTargeting != null)
          'deviceCategoryTargeting': deviceCategoryTargeting!,
        if (operatingSystemTargeting != null)
          'operatingSystemTargeting': operatingSystemTargeting!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// Request message for UnsubscribeAuctionPackage.
typedef UnsubscribeAuctionPackageRequest = $Empty;

/// Request message for UnsubscribeAuctionPackage.
class UnsubscribeClientsRequest {
  /// A list of client buyers to unsubscribe from the auction package, with
  /// client buyer in the format `buyers/{accountId}/clients/{clientAccountId}`.
  ///
  /// Optional.
  core.List<core.String>? clients;

  UnsubscribeClientsRequest({
    this.clients,
  });

  UnsubscribeClientsRequest.fromJson(core.Map _json)
      : this(
          clients: _json.containsKey('clients')
              ? (_json['clients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clients != null) 'clients': clients!,
      };
}

/// Request message for updating the deal at the given revision number.
class UpdateDealRequest {
  /// The deal to update.
  ///
  /// The deal's `name` field is used to identify the deal to be updated. Note:
  /// proposal_revision will have to be provided within the resource or else an
  /// error will be thrown. Format:
  /// buyers/{accountId}/proposals/{proposalId}/deals/{dealId}
  ///
  /// Required.
  Deal? deal;

  /// List of fields to be updated.
  ///
  /// If empty or unspecified, the service will update all fields populated in
  /// the update request excluding the output only fields and primitive fields
  /// with default value. Note that explicit field mask is required in order to
  /// reset a primitive field back to its default value, e.g. false for boolean
  /// fields, 0 for integer fields. A special field mask consisting of a single
  /// path "*" can be used to indicate full replacement(the equivalent of PUT
  /// method), updatable fields unset or unspecified in the input will be
  /// cleared or set to default value. Output only fields will be ignored
  /// regardless of the value of updateMask.
  core.String? updateMask;

  UpdateDealRequest({
    this.deal,
    this.updateMask,
  });

  UpdateDealRequest.fromJson(core.Map _json)
      : this(
          deal: _json.containsKey('deal')
              ? Deal.fromJson(
                  _json['deal'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deal != null) 'deal': deal!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Represents a list of targeted and excluded URLs (e.g., google.com).
///
/// For Private Auction Deals, URLs are either included or excluded. For
/// Programmatic Guaranteed and Preferred Deals, this doesn't apply.
class UriTargeting {
  /// A list of URLs to be excluded.
  core.List<core.String>? excludedUris;

  /// A list of URLs to be included.
  core.List<core.String>? targetedUris;

  UriTargeting({
    this.excludedUris,
    this.targetedUris,
  });

  UriTargeting.fromJson(core.Map _json)
      : this(
          excludedUris: _json.containsKey('excludedUris')
              ? (_json['excludedUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetedUris: _json.containsKey('targetedUris')
              ? (_json['targetedUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedUris != null) 'excludedUris': excludedUris!,
        if (targetedUris != null) 'targetedUris': targetedUris!,
      };
}

/// Represents targeting information about video.
class VideoTargeting {
  /// A list of video positions to be excluded.
  ///
  /// When this field is populated, the targeted_position_types field must be
  /// empty.
  core.List<core.String>? excludedPositionTypes;

  /// A list of video positions to be included.
  ///
  /// When this field is populated, the excluded_position_types field must be
  /// empty.
  core.List<core.String>? targetedPositionTypes;

  VideoTargeting({
    this.excludedPositionTypes,
    this.targetedPositionTypes,
  });

  VideoTargeting.fromJson(core.Map _json)
      : this(
          excludedPositionTypes: _json.containsKey('excludedPositionTypes')
              ? (_json['excludedPositionTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetedPositionTypes: _json.containsKey('targetedPositionTypes')
              ? (_json['targetedPositionTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedPositionTypes != null)
          'excludedPositionTypes': excludedPositionTypes!,
        if (targetedPositionTypes != null)
          'targetedPositionTypes': targetedPositionTypes!,
      };
}
