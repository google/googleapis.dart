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

/// Real-time Bidding API - v1
///
/// Allows external bidders to manage their RTB integration with Google. This
/// includes managing bidder endpoints, QPS quotas, configuring what ad
/// inventory to receive via pretargeting, submitting creatives for
/// verification, and accessing creative metadata such as approval status.
///
/// For more information, see
/// <https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/>
///
/// Create an instance of [RealTimeBiddingApi] to access these resources:
///
/// - [BiddersResource]
///   - [BiddersCreativesResource]
///   - [BiddersEndpointsResource]
///   - [BiddersPretargetingConfigsResource]
///   - [BiddersPublisherConnectionsResource]
/// - [BuyersResource]
///   - [BuyersCreativesResource]
///   - [BuyersUserListsResource]
library realtimebidding.v1;

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

/// Allows external bidders to manage their RTB integration with Google.
///
/// This includes managing bidder endpoints, QPS quotas, configuring what ad
/// inventory to receive via pretargeting, submitting creatives for
/// verification, and accessing creative metadata such as approval status.
class RealTimeBiddingApi {
  /// See, create, edit, and delete your Authorized Buyers and Open Bidding
  /// account entities
  static const realtimeBiddingScope =
      'https://www.googleapis.com/auth/realtime-bidding';

  final commons.ApiRequester _requester;

  BiddersResource get bidders => BiddersResource(_requester);
  BuyersResource get buyers => BuyersResource(_requester);

  RealTimeBiddingApi(http.Client client,
      {core.String rootUrl = 'https://realtimebidding.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class BiddersResource {
  final commons.ApiRequester _requester;

  BiddersCreativesResource get creatives =>
      BiddersCreativesResource(_requester);
  BiddersEndpointsResource get endpoints =>
      BiddersEndpointsResource(_requester);
  BiddersPretargetingConfigsResource get pretargetingConfigs =>
      BiddersPretargetingConfigsResource(_requester);
  BiddersPublisherConnectionsResource get publisherConnections =>
      BiddersPublisherConnectionsResource(_requester);

  BiddersResource(commons.ApiRequester client) : _requester = client;

  /// Gets a bidder account by its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bidder to get. Format:
  /// `bidders/{bidderAccountId}`
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Bidder].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Bidder> get(
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
    return Bidder.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the bidder accounts that belong to the caller.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of bidders to return. If unspecified, at
  /// most 100 bidders will be returned. The maximum value is 500; values above
  /// 500 will be coerced to 500.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. This value is received from a previous `ListBidders` call in
  /// ListBiddersResponse.nextPageToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBiddersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBiddersResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/bidders';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBiddersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BiddersCreativesResource {
  final commons.ApiRequester _requester;

  BiddersCreativesResource(commons.ApiRequester client) : _requester = client;

  /// Lists creatives as they are at the time of the initial request.
  ///
  /// This call may take multiple hours to complete. For large, paginated
  /// requests, this method returns a snapshot of creatives at the time of
  /// request for the first page. `lastStatusUpdate` and
  /// `creativeServingDecision` may be outdated for creatives on sequential
  /// pages. We recommend \[Google Cloud
  /// Pub/Sub\](//cloud.google.com/pubsub/docs/overview) to view the latest
  /// status.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent buyer that owns the creatives. The
  /// pattern for this resource is either `buyers/{buyerAccountId}` or
  /// `bidders/{bidderAccountId}`. For `buyers/{buyerAccountId}`, the
  /// `buyerAccountId` can be one of the following: 1. The ID of the buyer that
  /// is accessing their own creatives. 2. The ID of the child seat buyer under
  /// a bidder account. So for listing creatives pertaining to the child seat
  /// buyer (`456`) under bidder account (`123`), you would use the pattern:
  /// `buyers/456`. 3. The ID of the bidder itself. So for listing creatives
  /// pertaining to bidder (`123`), you would use `buyers/123`. If you want to
  /// access all creatives pertaining to both the bidder and all of its child
  /// seat accounts, you would use `bidders/{bidderAccountId}`, for example, for
  /// all creatives pertaining to bidder (`123`), use `bidders/123`.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter creatives. If no filter is specified,
  /// all active creatives will be returned. Example: 'accountId=12345 AND
  /// (dealsStatus:DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR
  /// declaredAttributes:IS_COOKIE_TARGETED'
  ///
  /// [pageSize] - Requested page size. The server may return fewer creatives
  /// than requested (due to timeout constraint) even if more are available
  /// through another call. If unspecified, server will pick an appropriate
  /// default. Acceptable values are 1 to 1000, inclusive.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativesResponse.nextPageToken returned from the previous call to the
  /// 'ListCreatives' method. Page tokens for continued pages are valid for up
  /// to five hours, counting from the call to 'ListCreatives' for the first
  /// page.
  ///
  /// [view] - Controls the amount of information included in the response. By
  /// default only creativeServingDecision is included. To retrieve the entire
  /// creative resource (including the declared fields and the creative content)
  /// specify the view as "FULL".
  /// Possible string values are:
  /// - "CREATIVE_VIEW_UNSPECIFIED" : Not specified, equivalent to
  /// SERVING_DECISION_ONLY.
  /// - "SERVING_DECISION_ONLY" : Only creativeServingDecision is included in
  /// the response.
  /// - "FULL" : The entire creative resource (including the declared fields and
  /// the creative content) is included in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/creatives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCreativesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Watches all creatives pertaining to a bidder.
  ///
  /// It is sufficient to invoke this endpoint once per bidder. A Pub/Sub topic
  /// will be created and notifications will be pushed to the topic when any of
  /// the bidder's creatives change status. All of the bidder's service accounts
  /// will have access to read from the topic. Subsequent invocations of this
  /// method will return the existing Pub/Sub configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. To watch all creatives pertaining to the bidder and
  /// all its child seat accounts, the bidder must follow the pattern
  /// `bidders/{bidderAccountId}`.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WatchCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WatchCreativesResponse> watch(
    WatchCreativesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/creatives:watch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WatchCreativesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BiddersEndpointsResource {
  final commons.ApiRequester _requester;

  BiddersEndpointsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a bidder endpoint by its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the bidder endpoint to get. Format:
  /// `bidders/{bidderAccountId}/endpoints/{endpointId}`
  /// Value must have pattern `^bidders/\[^/\]+/endpoints/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Endpoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Endpoint> get(
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
    return Endpoint.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the bidder's endpoints.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the bidder whose endpoints will be listed.
  /// Format: `bidders/{bidderAccountId}`
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of endpoints to return. If unspecified, at
  /// most 100 endpoints will be returned. The maximum value is 500; values
  /// above 500 will be coerced to 500.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. This value is received from a previous `ListEndpoints` call in
  /// ListEndpointsResponse.nextPageToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEndpointsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEndpointsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/endpoints';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndpointsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a bidder's endpoint.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the endpoint resource that must follow the
  /// pattern `bidders/{bidderAccountId}/endpoints/{endpointId}`, where
  /// {bidderAccountId} is the account ID of the bidder who operates this
  /// endpoint, and {endpointId} is a unique ID assigned by the server.
  /// Value must have pattern `^bidders/\[^/\]+/endpoints/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask to use for partial in-place updates.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Endpoint].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Endpoint> patch(
    Endpoint request,
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
    return Endpoint.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class BiddersPretargetingConfigsResource {
  final commons.ApiRequester _requester;

  BiddersPretargetingConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Activates a pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pretargeting configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> activate(
    ActivatePretargetingConfigRequest request,
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
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds targeted apps to the pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> addTargetedApps(
    AddTargetedAppsRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$pretargetingConfig') + ':addTargetedApps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds targeted publishers to the pretargeting config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> addTargetedPublishers(
    AddTargetedPublishersRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$pretargetingConfig') +
        ':addTargetedPublishers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds targeted sites to the pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> addTargetedSites(
    AddTargetedSitesRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$pretargetingConfig') +
        ':addTargetedSites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a pretargeting configuration.
  ///
  /// A pretargeting configuration's state (PretargetingConfig.state) is active
  /// upon creation, and it will start to affect traffic shortly after. A bidder
  /// may create a maximum of 10 pretargeting configurations. Attempts to exceed
  /// this maximum results in a 400 bad request error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the bidder to create the pretargeting
  /// configuration for. Format: bidders/{bidderAccountId}
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> create(
    PretargetingConfig request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pretargetingConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pretargeting configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pretargeting configuration to delete.
  /// Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a pretargeting configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the pretargeting configuration to get. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> get(
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
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all pretargeting configurations for a single bidder.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the bidder whose pretargeting configurations
  /// will be listed. Format: bidders/{bidderAccountId}
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of pretargeting configurations to return.
  /// If unspecified, at most 10 pretargeting configurations will be returned.
  /// The maximum value is 100; values above 100 will be coerced to 100.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. This value is received from a previous `ListPretargetingConfigs`
  /// call in ListPretargetingConfigsResponse.nextPageToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPretargetingConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPretargetingConfigsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/pretargetingConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPretargetingConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the pretargeting configuration that must
  /// follow the pattern
  /// `bidders/{bidder_account_id}/pretargetingConfigs/{config_id}`
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask to use for partial in-place updates.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> patch(
    PretargetingConfig request,
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
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes targeted apps from the pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> removeTargetedApps(
    RemoveTargetedAppsRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$pretargetingConfig') +
        ':removeTargetedApps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes targeted publishers from the pretargeting config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> removeTargetedPublishers(
    RemoveTargetedPublishersRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$pretargetingConfig') +
        ':removeTargetedPublishers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes targeted sites from the pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [pretargetingConfig] - Required. The name of the pretargeting
  /// configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> removeTargetedSites(
    RemoveTargetedSitesRequest request,
    core.String pretargetingConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$pretargetingConfig') +
        ':removeTargetedSites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Suspends a pretargeting configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pretargeting configuration. Format:
  /// bidders/{bidderAccountId}/pretargetingConfig/{configId}
  /// Value must have pattern `^bidders/\[^/\]+/pretargetingConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PretargetingConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PretargetingConfig> suspend(
    SuspendPretargetingConfigRequest request,
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
    return PretargetingConfig.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BiddersPublisherConnectionsResource {
  final commons.ApiRequester _requester;

  BiddersPublisherConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Batch approves multiple publisher connections.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The bidder for whom publisher connections will be
  /// approved. Format: `bidders/{bidder}` where `{bidder}` is the account ID of
  /// the bidder.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchApprovePublisherConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchApprovePublisherConnectionsResponse> batchApprove(
    BatchApprovePublisherConnectionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/publisherConnections:batchApprove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchApprovePublisherConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Batch rejects multiple publisher connections.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The bidder for whom publisher connections will be
  /// rejected. Format: `bidders/{bidder}` where `{bidder}` is the account ID of
  /// the bidder.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchRejectPublisherConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchRejectPublisherConnectionsResponse> batchReject(
    BatchRejectPublisherConnectionsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/publisherConnections:batchReject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchRejectPublisherConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a publisher connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the publisher whose connection information is
  /// to be retrieved. In the pattern
  /// `bidders/{bidder}/publisherConnections/{publisher}` where `{bidder}` is
  /// the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt
  /// publisher ID. See publisherConnection.name.
  /// Value must have pattern `^bidders/\[^/\]+/publisherConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherConnection> get(
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
    return PublisherConnection.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists publisher connections for a given bidder.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the bidder for which publishers have
  /// initiated connections. The pattern for this resource is `bidders/{bidder}`
  /// where `{bidder}` represents the account ID of the bidder.
  /// Value must have pattern `^bidders/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter publisher connections. Connections can
  /// be filtered by `displayName`, `publisherPlatform`, and `biddingState`. If
  /// no filter is specified, all publisher connections will be returned.
  /// Example: 'displayName="Great Publisher*" AND publisherPlatform=ADMOB AND
  /// biddingState != PENDING' See https://google.aip.dev/160 for more
  /// information about filtering syntax.
  ///
  /// [orderBy] - Order specification by which results should be sorted. If no
  /// sort order is specified, the results will be returned in alphabetic order
  /// based on the publisher's publisher code. Results can be sorted by
  /// `createTime`. Example: 'createTime DESC'.
  ///
  /// [pageSize] - Requested page size. The server may return fewer results than
  /// requested (due to timeout constraint) even if more are available through
  /// another call. If unspecified, the server will pick an appropriate default.
  /// Acceptable values are 1 to 5000, inclusive.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListPublisherConnectionsResponse.nextPageToken returned from the previous
  /// call to the 'ListPublisherConnections' method.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/publisherConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPublisherConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BuyersResource {
  final commons.ApiRequester _requester;

  BuyersCreativesResource get creatives => BuyersCreativesResource(_requester);
  BuyersUserListsResource get userLists => BuyersUserListsResource(_requester);

  BuyersResource(commons.ApiRequester client) : _requester = client;

  /// Gets a buyer account by its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the buyer to get. Format: `buyers/{buyerId}`
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Buyer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Buyer> get(
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
    return Buyer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets remarketing tag for a buyer.
  ///
  /// A remarketing tag is a piece of JavaScript code that can be placed on a
  /// web page. When a user visits a page containing a remarketing tag, Google
  /// adds the user to a user list.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. To fetch remarketing tag for an account, name must
  /// follow the pattern `buyers/{accountId}` where `{accountId}` represents ID
  /// of a buyer that owns the remarketing tag. For a bidder accessing
  /// remarketing tag on behalf of a child seat buyer, `{accountId}` should
  /// represent the ID of the child seat buyer. To fetch remarketing tag for a
  /// specific user list, name must follow the pattern
  /// `buyers/{accountId}/userLists/{userListId}`. See UserList.name.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetRemarketingTagResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetRemarketingTagResponse> getRemarketingTag(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getRemarketingTag';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetRemarketingTagResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all buyer account information the calling buyer user or service
  /// account is permissioned to manage.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of buyers to return. If unspecified, at
  /// most 100 buyers will be returned. The maximum value is 500; values above
  /// 500 will be coerced to 500.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. This value is received from a previous `ListBuyers` call in
  /// ListBuyersResponse.nextPageToken.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBuyersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBuyersResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/buyers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBuyersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class BuyersCreativesResource {
  final commons.ApiRequester _requester;

  BuyersCreativesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent buyer that the new creative
  /// belongs to that must follow the pattern `buyers/{buyerAccountId}`, where
  /// `{buyerAccountId}` represents the account ID of the buyer who owns a
  /// creative. For a bidder accessing creatives on behalf of a child seat
  /// buyer, `{buyerAccountId}` should represent the account ID of the child
  /// seat buyer.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> create(
    Creative request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/creatives';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a creative.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the creative to retrieve. See creative.name.
  /// Value must have pattern `^buyers/\[^/\]+/creatives/\[^/\]+$`.
  ///
  /// [view] - Controls the amount of information included in the response. By
  /// default only creativeServingDecision is included. To retrieve the entire
  /// creative resource (including the declared fields and the creative content)
  /// specify the view as "FULL".
  /// Possible string values are:
  /// - "CREATIVE_VIEW_UNSPECIFIED" : Not specified, equivalent to
  /// SERVING_DECISION_ONLY.
  /// - "SERVING_DECISION_ONLY" : Only creativeServingDecision is included in
  /// the response.
  /// - "FULL" : The entire creative resource (including the declared fields and
  /// the creative content) is included in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> get(
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
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists creatives as they are at the time of the initial request.
  ///
  /// This call may take multiple hours to complete. For large, paginated
  /// requests, this method returns a snapshot of creatives at the time of
  /// request for the first page. `lastStatusUpdate` and
  /// `creativeServingDecision` may be outdated for creatives on sequential
  /// pages. We recommend \[Google Cloud
  /// Pub/Sub\](//cloud.google.com/pubsub/docs/overview) to view the latest
  /// status.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the parent buyer that owns the creatives. The
  /// pattern for this resource is either `buyers/{buyerAccountId}` or
  /// `bidders/{bidderAccountId}`. For `buyers/{buyerAccountId}`, the
  /// `buyerAccountId` can be one of the following: 1. The ID of the buyer that
  /// is accessing their own creatives. 2. The ID of the child seat buyer under
  /// a bidder account. So for listing creatives pertaining to the child seat
  /// buyer (`456`) under bidder account (`123`), you would use the pattern:
  /// `buyers/456`. 3. The ID of the bidder itself. So for listing creatives
  /// pertaining to bidder (`123`), you would use `buyers/123`. If you want to
  /// access all creatives pertaining to both the bidder and all of its child
  /// seat accounts, you would use `bidders/{bidderAccountId}`, for example, for
  /// all creatives pertaining to bidder (`123`), use `bidders/123`.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [filter] - Query string to filter creatives. If no filter is specified,
  /// all active creatives will be returned. Example: 'accountId=12345 AND
  /// (dealsStatus:DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR
  /// declaredAttributes:IS_COOKIE_TARGETED'
  ///
  /// [pageSize] - Requested page size. The server may return fewer creatives
  /// than requested (due to timeout constraint) even if more are available
  /// through another call. If unspecified, server will pick an appropriate
  /// default. Acceptable values are 1 to 1000, inclusive.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return. Typically, this is the value of
  /// ListCreativesResponse.nextPageToken returned from the previous call to the
  /// 'ListCreatives' method. Page tokens for continued pages are valid for up
  /// to five hours, counting from the call to 'ListCreatives' for the first
  /// page.
  ///
  /// [view] - Controls the amount of information included in the response. By
  /// default only creativeServingDecision is included. To retrieve the entire
  /// creative resource (including the declared fields and the creative content)
  /// specify the view as "FULL".
  /// Possible string values are:
  /// - "CREATIVE_VIEW_UNSPECIFIED" : Not specified, equivalent to
  /// SERVING_DECISION_ONLY.
  /// - "SERVING_DECISION_ONLY" : Only creativeServingDecision is included in
  /// the response.
  /// - "FULL" : The entire creative resource (including the declared fields and
  /// the creative content) is included in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCreativesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCreativesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/creatives';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCreativesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a creative.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the creative. Follows the pattern
  /// `buyers/{buyer}/creatives/{creative}`, where `{buyer}` represents the
  /// account ID of the buyer who owns the creative, and `{creative}` is the
  /// buyer-specific creative ID that references this creative in the bid
  /// response.
  /// Value must have pattern `^buyers/\[^/\]+/creatives/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask to use for partial in-place updates.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Creative].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Creative> patch(
    Creative request,
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
    return Creative.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class BuyersUserListsResource {
  final commons.ApiRequester _requester;

  BuyersUserListsResource(commons.ApiRequester client) : _requester = client;

  /// Change the status of a user list to CLOSED.
  ///
  /// This prevents new users from being added to the user list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user list to close. See UserList.name
  /// Value must have pattern `^buyers/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> close(
    CloseUserListRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':close';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Create a new user list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent buyer of the user list to be
  /// retrieved that must follow the pattern `buyers/{buyerAccountId}`, where
  /// `{buyerAccountId}` represents the account ID of the buyer who owns user
  /// lists. For a bidder accessing user lists on behalf of a child seat buyer ,
  /// `{buyerAccountId}` should represent the account ID of the child seat
  /// buyer.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> create(
    UserList request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a user list by its name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user list to be retrieved. See
  /// UserList.name.
  /// Value must have pattern `^buyers/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> get(
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
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets remarketing tag for a buyer.
  ///
  /// A remarketing tag is a piece of JavaScript code that can be placed on a
  /// web page. When a user visits a page containing a remarketing tag, Google
  /// adds the user to a user list.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. To fetch remarketing tag for an account, name must
  /// follow the pattern `buyers/{accountId}` where `{accountId}` represents ID
  /// of a buyer that owns the remarketing tag. For a bidder accessing
  /// remarketing tag on behalf of a child seat buyer, `{accountId}` should
  /// represent the ID of the child seat buyer. To fetch remarketing tag for a
  /// specific user list, name must follow the pattern
  /// `buyers/{accountId}/userLists/{userListId}`. See UserList.name.
  /// Value must have pattern `^buyers/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetRemarketingTagResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetRemarketingTagResponse> getRemarketingTag(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getRemarketingTag';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetRemarketingTagResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the user lists visible to the current user.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent buyer for the user lists to be
  /// returned that must follow the pattern `buyers/{buyerAccountId}`, where
  /// `{buyerAccountId}` represents the account ID of the buyer who owns user
  /// lists. For a bidder accessing user lists on behalf of a child seat buyer ,
  /// `{buyerAccountId}` should represent the account ID of the child seat
  /// buyer.
  /// Value must have pattern `^buyers/\[^/\]+$`.
  ///
  /// [pageSize] - The number of results to return per page.
  ///
  /// [pageToken] - Continuation page token (as received from a previous
  /// response).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserListsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserListsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userLists';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserListsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Change the status of a user list to OPEN.
  ///
  /// This allows new users to be added to the user list.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the user list to open. See UserList.name
  /// Value must have pattern `^buyers/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> open(
    OpenUserListRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':open';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the given user list.
  ///
  /// Only user lists with URLRestrictions can be updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Name of the user list that must follow the pattern
  /// `buyers/{buyer}/userLists/{user_list}`, where `{buyer}` represents the
  /// account ID of the buyer who owns the user list. For a bidder accessing
  /// user lists on behalf of a child seat buyer, `{buyer}` represents the
  /// account ID of the child seat buyer. `{user_list}` is an int64 identifier
  /// assigned by Google to uniquely identify a user list.
  /// Value must have pattern `^buyers/\[^/\]+/userLists/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserList> update(
    UserList request,
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
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return UserList.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A request to activate a pretargeting configuration.
///
/// Sets the configuration's state to ACTIVE.
typedef ActivatePretargetingConfigRequest = $Empty;

/// The list of detected Ad Technology Providers for this creative.
///
/// Bids placed for inventory that will serve to EEA or UK users are expected to
/// comply with GDPR requirements. You must ensure that the creatives used in
/// such bids should contain only user consented ad technology providers as
/// indicated in the bid request. Google reserves the right to filter
/// non-compliant bids. User consented ad technology providers can be found in
/// the
/// [Google Protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto)
/// with the `BidRequest.adslot.consented_providers_settings` field, and can be
/// found as an
/// [OpenRTB extension](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto)
/// with the `BidRequest.user.ext.consented_providers_settings` and
/// `BidRequest.user.ext.consent` fields. See
/// https://support.google.com/authorizedbuyers/answer/9789378 for additional
/// information about the Google TCF v2 integration.
class AdTechnologyProviders {
  /// The detected IAB Global Vendor List (GVL) IDs for this creative.
  ///
  /// See the IAB Global Vendor List at
  /// https://vendor-list.consensu.org/v2/vendor-list.json for details about the
  /// vendors.
  core.List<core.String>? detectedGvlIds;

  /// The detected \[Google Ad Tech Providers
  /// (ATP)\](https://support.google.com/admanager/answer/9012903) for this
  /// creative.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv for
  /// mapping of provider ID to provided name, a privacy policy URL, and a list
  /// of domains which can be attributed to the provider.
  core.List<core.String>? detectedProviderIds;

  /// Domains of detected unidentified ad technology providers (if any).
  ///
  /// You must ensure that the creatives used in bids placed for inventory that
  /// will serve to EEA or UK users does not contain unidentified ad technology
  /// providers. Google reserves the right to filter non-compliant bids.
  core.List<core.String>? unidentifiedProviderDomains;

  AdTechnologyProviders({
    this.detectedGvlIds,
    this.detectedProviderIds,
    this.unidentifiedProviderDomains,
  });

  AdTechnologyProviders.fromJson(core.Map json_)
      : this(
          detectedGvlIds: json_.containsKey('detectedGvlIds')
              ? (json_['detectedGvlIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectedProviderIds: json_.containsKey('detectedProviderIds')
              ? (json_['detectedProviderIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          unidentifiedProviderDomains:
              json_.containsKey('unidentifiedProviderDomains')
                  ? (json_['unidentifiedProviderDomains'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedGvlIds != null) 'detectedGvlIds': detectedGvlIds!,
        if (detectedProviderIds != null)
          'detectedProviderIds': detectedProviderIds!,
        if (unidentifiedProviderDomains != null)
          'unidentifiedProviderDomains': unidentifiedProviderDomains!,
      };
}

/// A request to start targeting the provided app IDs in a specific pretargeting
/// configuration.
///
/// The pretargeting configuration itself specifies how these apps are targeted.
/// in PretargetingConfig.appTargeting.mobileAppTargeting.
class AddTargetedAppsRequest {
  /// A list of app IDs to target in the pretargeting configuration.
  ///
  /// These values will be added to the list of targeted app IDs in
  /// PretargetingConfig.appTargeting.mobileAppTargeting.values.
  core.List<core.String>? appIds;

  /// The targeting mode that should be applied to the list of app IDs.
  ///
  /// If there are existing targeted app IDs, must be equal to the existing
  /// PretargetingConfig.appTargeting.mobileAppTargeting.targetingMode or a 400
  /// bad request error will be returned.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGETING_MODE_UNSPECIFIED" : Placeholder for undefined targeting mode.
  /// - "INCLUSIVE" : The inclusive list type. Inventory must match an item in
  /// this list to be targeted.
  /// - "EXCLUSIVE" : The exclusive list type. Inventory must not match any item
  /// in this list to be targeted.
  core.String? targetingMode;

  AddTargetedAppsRequest({
    this.appIds,
    this.targetingMode,
  });

  AddTargetedAppsRequest.fromJson(core.Map json_)
      : this(
          appIds: json_.containsKey('appIds')
              ? (json_['appIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetingMode: json_.containsKey('targetingMode')
              ? json_['targetingMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appIds != null) 'appIds': appIds!,
        if (targetingMode != null) 'targetingMode': targetingMode!,
      };
}

/// A request to start targeting the provided publishers in a specific
/// pretargeting configuration.
///
/// The pretargeting configuration itself specifies how these publishers are
/// targeted in PretargetingConfig.publisherTargeting.
class AddTargetedPublishersRequest {
  /// A list of publisher IDs to target in the pretargeting configuration.
  ///
  /// These values will be added to the list of targeted publisher IDs in
  /// PretargetingConfig.publisherTargeting.values. Publishers are identified by
  /// their publisher ID from ads.txt / app-ads.txt. See
  /// https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/
  /// for more details.
  core.List<core.String>? publisherIds;

  /// The targeting mode that should be applied to the list of publisher IDs.
  ///
  /// If are existing publisher IDs, must be equal to the existing
  /// PretargetingConfig.publisherTargeting.targetingMode or a 400 bad request
  /// error will be returned.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGETING_MODE_UNSPECIFIED" : Placeholder for undefined targeting mode.
  /// - "INCLUSIVE" : The inclusive list type. Inventory must match an item in
  /// this list to be targeted.
  /// - "EXCLUSIVE" : The exclusive list type. Inventory must not match any item
  /// in this list to be targeted.
  core.String? targetingMode;

  AddTargetedPublishersRequest({
    this.publisherIds,
    this.targetingMode,
  });

  AddTargetedPublishersRequest.fromJson(core.Map json_)
      : this(
          publisherIds: json_.containsKey('publisherIds')
              ? (json_['publisherIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetingMode: json_.containsKey('targetingMode')
              ? json_['targetingMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherIds != null) 'publisherIds': publisherIds!,
        if (targetingMode != null) 'targetingMode': targetingMode!,
      };
}

/// A request to start targeting the provided sites in a specific pretargeting
/// configuration.
///
/// The pretargeting configuration itself specifies how these sites are targeted
/// in PretargetingConfig.webTargeting.
class AddTargetedSitesRequest {
  /// A list of site URLs to target in the pretargeting configuration.
  ///
  /// These values will be added to the list of targeted URLs in
  /// PretargetingConfig.webTargeting.values.
  core.List<core.String>? sites;

  /// The targeting mode that should be applied to the list of site URLs.
  ///
  /// If there are existing targeted sites, must be equal to the existing
  /// PretargetingConfig.webTargeting.targetingMode or a 400 bad request error
  /// will be returned.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TARGETING_MODE_UNSPECIFIED" : Placeholder for undefined targeting mode.
  /// - "INCLUSIVE" : The inclusive list type. Inventory must match an item in
  /// this list to be targeted.
  /// - "EXCLUSIVE" : The exclusive list type. Inventory must not match any item
  /// in this list to be targeted.
  core.String? targetingMode;

  AddTargetedSitesRequest({
    this.sites,
    this.targetingMode,
  });

  AddTargetedSitesRequest.fromJson(core.Map json_)
      : this(
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          targetingMode: json_.containsKey('targetingMode')
              ? json_['targetingMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sites != null) 'sites': sites!,
        if (targetingMode != null) 'targetingMode': targetingMode!,
      };
}

/// Detected advertiser and brand information.
class AdvertiserAndBrand {
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt
  /// for the list of possible values.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? advertiserId;

  /// Advertiser name.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? advertiserName;

  /// Detected brand ID or zero if no brand has been detected.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt for the
  /// list of possible values. Can be used to filter the response of the
  /// creatives.list method.
  core.String? brandId;

  /// Brand name.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? brandName;

  AdvertiserAndBrand({
    this.advertiserId,
    this.advertiserName,
    this.brandId,
    this.brandName,
  });

  AdvertiserAndBrand.fromJson(core.Map json_)
      : this(
          advertiserId: json_.containsKey('advertiserId')
              ? json_['advertiserId'] as core.String
              : null,
          advertiserName: json_.containsKey('advertiserName')
              ? json_['advertiserName'] as core.String
              : null,
          brandId: json_.containsKey('brandId')
              ? json_['brandId'] as core.String
              : null,
          brandName: json_.containsKey('brandName')
              ? json_['brandName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (advertiserName != null) 'advertiserName': advertiserName!,
        if (brandId != null) 'brandId': brandId!,
        if (brandName != null) 'brandName': brandName!,
      };
}

/// A subset of app inventory to target.
///
/// Bid requests that match criteria in at least one of the specified dimensions
/// will be sent.
class AppTargeting {
  /// Lists of included and excluded mobile app categories as defined in
  /// https://developers.google.com/adwords/api/docs/appendix/mobileappcategories.csv.
  NumericTargetingDimension? mobileAppCategoryTargeting;

  /// Targeted app IDs.
  ///
  /// App IDs can refer to those found in an app store or ones that are not
  /// published in an app store. A maximum of 30,000 app IDs can be targeted.
  StringTargetingDimension? mobileAppTargeting;

  AppTargeting({
    this.mobileAppCategoryTargeting,
    this.mobileAppTargeting,
  });

  AppTargeting.fromJson(core.Map json_)
      : this(
          mobileAppCategoryTargeting:
              json_.containsKey('mobileAppCategoryTargeting')
                  ? NumericTargetingDimension.fromJson(
                      json_['mobileAppCategoryTargeting']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          mobileAppTargeting: json_.containsKey('mobileAppTargeting')
              ? StringTargetingDimension.fromJson(json_['mobileAppTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mobileAppCategoryTargeting != null)
          'mobileAppCategoryTargeting': mobileAppCategoryTargeting!,
        if (mobileAppTargeting != null)
          'mobileAppTargeting': mobileAppTargeting!,
      };
}

/// A request to approve a batch of publisher connections.
class BatchApprovePublisherConnectionsRequest {
  /// The names of the publishers with which connections will be approved.
  ///
  /// In the pattern `bidders/{bidder}/publisherConnections/{publisher}` where
  /// `{bidder}` is the account ID of the bidder, and `{publisher}` is the
  /// ads.txt/app-ads.txt publisher ID.
  ///
  /// Required.
  core.List<core.String>? names;

  BatchApprovePublisherConnectionsRequest({
    this.names,
  });

  BatchApprovePublisherConnectionsRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// A response for the request to approve a batch of publisher connections.
class BatchApprovePublisherConnectionsResponse {
  /// The publisher connections that have been approved.
  core.List<PublisherConnection>? publisherConnections;

  BatchApprovePublisherConnectionsResponse({
    this.publisherConnections,
  });

  BatchApprovePublisherConnectionsResponse.fromJson(core.Map json_)
      : this(
          publisherConnections: json_.containsKey('publisherConnections')
              ? (json_['publisherConnections'] as core.List)
                  .map((value) => PublisherConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherConnections != null)
          'publisherConnections': publisherConnections!,
      };
}

/// A request to reject a batch of publisher connections.
class BatchRejectPublisherConnectionsRequest {
  /// The names of the publishers with whom connection will be rejected.
  ///
  /// In the pattern `bidders/{bidder}/publisherConnections/{publisher}` where
  /// `{bidder}` is the account ID of the bidder, and `{publisher}` is the
  /// ads.txt/app-ads.txt publisher ID.
  ///
  /// Required.
  core.List<core.String>? names;

  BatchRejectPublisherConnectionsRequest({
    this.names,
  });

  BatchRejectPublisherConnectionsRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// A response for the request to reject a batch of publisher connections.
class BatchRejectPublisherConnectionsResponse {
  /// The publisher connections that have been rejected.
  core.List<PublisherConnection>? publisherConnections;

  BatchRejectPublisherConnectionsResponse({
    this.publisherConnections,
  });

  BatchRejectPublisherConnectionsResponse.fromJson(core.Map json_)
      : this(
          publisherConnections: json_.containsKey('publisherConnections')
              ? (json_['publisherConnections'] as core.List)
                  .map((value) => PublisherConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherConnections != null)
          'publisherConnections': publisherConnections!,
      };
}

/// Bidder settings.
class Bidder {
  /// An option to bypass pretargeting for private auctions and preferred deals.
  ///
  /// When true, bid requests from these nonguaranteed deals will always be
  /// sent. When false, bid requests will be subject to regular pretargeting
  /// configurations. Programmatic Guaranteed deals will always be sent to the
  /// bidder, regardless of the value for this flag. Auction packages are not
  /// impacted by this value and are subject to the regular pretargeting
  /// configurations.
  ///
  /// Output only.
  core.bool? bypassNonguaranteedDealsPretargeting;

  /// The buyer's network ID used for cookie matching.
  ///
  /// This ID corresponds to the `google_nid` parameter in the URL used in
  /// cookie match requests. Refer to
  /// https://developers.google.com/authorized-buyers/rtb/cookie-guide for
  /// further information.
  ///
  /// Output only.
  core.String? cookieMatchingNetworkId;

  /// The base URL used in cookie match requests.
  ///
  /// Refer to https://developers.google.com/authorized-buyers/rtb/cookie-guide
  /// for further information.
  ///
  /// Output only.
  core.String? cookieMatchingUrl;

  /// The billing ID for the deals pretargeting config.
  ///
  /// This billing ID is sent on the bid request for guaranteed and
  /// nonguaranteed deals matched in pretargeting.
  ///
  /// Output only.
  core.String? dealsBillingId;

  /// Name of the bidder resource that must follow the pattern
  /// `bidders/{bidderAccountId}`, where `{bidderAccountId}` is the account ID
  /// of the bidder whose information is to be received.
  ///
  /// One can get their account ID on the Authorized Buyers or Open Bidding UI,
  /// or by contacting their Google account manager.
  ///
  /// Output only.
  core.String? name;

  Bidder({
    this.bypassNonguaranteedDealsPretargeting,
    this.cookieMatchingNetworkId,
    this.cookieMatchingUrl,
    this.dealsBillingId,
    this.name,
  });

  Bidder.fromJson(core.Map json_)
      : this(
          bypassNonguaranteedDealsPretargeting:
              json_.containsKey('bypassNonguaranteedDealsPretargeting')
                  ? json_['bypassNonguaranteedDealsPretargeting'] as core.bool
                  : null,
          cookieMatchingNetworkId: json_.containsKey('cookieMatchingNetworkId')
              ? json_['cookieMatchingNetworkId'] as core.String
              : null,
          cookieMatchingUrl: json_.containsKey('cookieMatchingUrl')
              ? json_['cookieMatchingUrl'] as core.String
              : null,
          dealsBillingId: json_.containsKey('dealsBillingId')
              ? json_['dealsBillingId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bypassNonguaranteedDealsPretargeting != null)
          'bypassNonguaranteedDealsPretargeting':
              bypassNonguaranteedDealsPretargeting!,
        if (cookieMatchingNetworkId != null)
          'cookieMatchingNetworkId': cookieMatchingNetworkId!,
        if (cookieMatchingUrl != null) 'cookieMatchingUrl': cookieMatchingUrl!,
        if (dealsBillingId != null) 'dealsBillingId': dealsBillingId!,
        if (name != null) 'name': name!,
      };
}

/// RTB Buyer account information.
class Buyer {
  /// The number of creatives that this buyer submitted through the API or bid
  /// with in the last 30 days.
  ///
  /// This is counted against the maximum number of active creatives.
  ///
  /// Output only.
  core.String? activeCreativeCount;

  /// The name of the bidder resource that is responsible for receiving bidding
  /// traffic for this account.
  ///
  /// The bidder name must follow the pattern `bidders/{bidderAccountId}`, where
  /// `{bidderAccountId}` is the account ID of the bidder receiving traffic for
  /// this buyer.
  ///
  /// Output only.
  core.String? bidder;

  /// A list of billing IDs associated with this account.
  ///
  /// These IDs appear on: 1. A bid request, to signal which buyers are eligible
  /// to bid on a given opportunity, and which pretargeting configurations were
  /// matched for each eligible buyer. 2. The bid response, to attribute a
  /// winning impression to a specific account for billing, reporting, policy
  /// and publisher block enforcement.
  ///
  /// Output only.
  core.List<core.String>? billingIds;

  /// The diplay name associated with this buyer account, as visible to sellers.
  ///
  /// Output only.
  core.String? displayName;

  /// The maximum number of active creatives that this buyer can have.
  ///
  /// Output only.
  core.String? maximumActiveCreativeCount;

  /// Name of the buyer resource that must follow the pattern
  /// `buyers/{buyerAccountId}`, where `{buyerAccountId}` is the account ID of
  /// the buyer account whose information is to be received.
  ///
  /// One can get their account ID on the Authorized Buyers or Open Bidding UI,
  /// or by contacting their Google account manager.
  ///
  /// Output only.
  core.String? name;

  Buyer({
    this.activeCreativeCount,
    this.bidder,
    this.billingIds,
    this.displayName,
    this.maximumActiveCreativeCount,
    this.name,
  });

  Buyer.fromJson(core.Map json_)
      : this(
          activeCreativeCount: json_.containsKey('activeCreativeCount')
              ? json_['activeCreativeCount'] as core.String
              : null,
          bidder: json_.containsKey('bidder')
              ? json_['bidder'] as core.String
              : null,
          billingIds: json_.containsKey('billingIds')
              ? (json_['billingIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          maximumActiveCreativeCount:
              json_.containsKey('maximumActiveCreativeCount')
                  ? json_['maximumActiveCreativeCount'] as core.String
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeCreativeCount != null)
          'activeCreativeCount': activeCreativeCount!,
        if (bidder != null) 'bidder': bidder!,
        if (billingIds != null) 'billingIds': billingIds!,
        if (displayName != null) 'displayName': displayName!,
        if (maximumActiveCreativeCount != null)
          'maximumActiveCreativeCount': maximumActiveCreativeCount!,
        if (name != null) 'name': name!,
      };
}

/// A request to close a specified user list.
typedef CloseUserListRequest = $Empty;

/// A creative and its classification data.
class Creative {
  /// ID of the buyer account that this creative is owned by.
  ///
  /// Can be used to filter the response of the creatives.list method with
  /// equality and inequality check.
  ///
  /// Output only.
  core.String? accountId;

  /// The link to AdChoices destination page.
  ///
  /// This is only supported for native ads.
  core.String? adChoicesDestinationUrl;

  /// The name of the company being advertised in the creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? advertiserName;

  /// The agency ID for this creative.
  core.String? agencyId;

  /// The last update timestamp of the creative through the API.
  ///
  /// Output only.
  core.String? apiUpdateTime;

  /// The format of this creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREATIVE_FORMAT_UNSPECIFIED" : The format is unknown.
  /// - "HTML" : HTML creative.
  /// - "VIDEO" : Video creative.
  /// - "NATIVE" : Native creative.
  core.String? creativeFormat;

  /// Buyer-specific creative ID that references this creative in bid responses.
  ///
  /// This field is Ignored in update operations. Can be used to filter the
  /// response of the creatives.list method. The maximum length of the creative
  /// ID is 128 bytes.
  core.String? creativeId;

  /// Top level status and detected attributes of a creative (for example
  /// domain, language, advertiser, product category, etc.) that affect whether
  /// (status) and where (context) a creative will be allowed to serve.
  ///
  /// Output only.
  CreativeServingDecision? creativeServingDecision;

  /// IDs of all of the deals with which this creative has been used in bidding.
  ///
  /// Can be used to filter the response of the creatives.list method.
  ///
  /// Output only.
  core.List<core.String>? dealIds;

  /// All declared attributes for the ads that may be shown from this creative.
  ///
  /// Can be used to filter the response of the creatives.list method. If the
  /// `excluded_attribute` field of a
  /// [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto")
  /// contains one of the attributes that were declared or detected for a given
  /// creative, and a bid is submitted with that creative, the bid will be
  /// filtered before the auction.
  core.List<core.String>? declaredAttributes;

  /// The set of declared destination URLs for the creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.List<core.String>? declaredClickThroughUrls;

  /// All declared restricted categories for the ads that may be shown from this
  /// creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.List<core.String>? declaredRestrictedCategories;

  /// IDs for the declared ad technology vendors that may be used by this
  /// creative.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for
  /// possible values. Can be used to filter the response of the creatives.list
  /// method.
  core.List<core.int>? declaredVendorIds;

  /// An HTML creative.
  HtmlContent? html;

  /// The set of URLs to be called to record an impression.
  core.List<core.String>? impressionTrackingUrls;

  /// Name of the creative.
  ///
  /// Follows the pattern `buyers/{buyer}/creatives/{creative}`, where `{buyer}`
  /// represents the account ID of the buyer who owns the creative, and
  /// `{creative}` is the buyer-specific creative ID that references this
  /// creative in the bid response.
  ///
  /// Output only.
  core.String? name;

  /// A native creative.
  NativeContent? native;

  /// Experimental field that can be used during the \[FLEDGE Origin
  /// Trial\](/authorized-buyers/rtb/fledge-origin-trial).
  ///
  /// The URL to fetch an interest group ad used in \[TURTLEDOVE on-device
  /// auction\](https://github.com/WICG/turtledove/blob/main/FLEDGE.md#1-browsers-record-interest-groups").
  /// This should be unique among all creatives for a given `accountId`.
  core.String? renderUrl;

  /// All restricted categories for the ads that may be shown from this
  /// creative.
  core.List<core.String>? restrictedCategories;

  /// The version of the creative.
  ///
  /// Version for a new creative is 1 and it increments during subsequent
  /// creative updates.
  ///
  /// Output only.
  core.int? version;

  /// A video creative.
  VideoContent? video;

  Creative({
    this.accountId,
    this.adChoicesDestinationUrl,
    this.advertiserName,
    this.agencyId,
    this.apiUpdateTime,
    this.creativeFormat,
    this.creativeId,
    this.creativeServingDecision,
    this.dealIds,
    this.declaredAttributes,
    this.declaredClickThroughUrls,
    this.declaredRestrictedCategories,
    this.declaredVendorIds,
    this.html,
    this.impressionTrackingUrls,
    this.name,
    this.native,
    this.renderUrl,
    this.restrictedCategories,
    this.version,
    this.video,
  });

  Creative.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          adChoicesDestinationUrl: json_.containsKey('adChoicesDestinationUrl')
              ? json_['adChoicesDestinationUrl'] as core.String
              : null,
          advertiserName: json_.containsKey('advertiserName')
              ? json_['advertiserName'] as core.String
              : null,
          agencyId: json_.containsKey('agencyId')
              ? json_['agencyId'] as core.String
              : null,
          apiUpdateTime: json_.containsKey('apiUpdateTime')
              ? json_['apiUpdateTime'] as core.String
              : null,
          creativeFormat: json_.containsKey('creativeFormat')
              ? json_['creativeFormat'] as core.String
              : null,
          creativeId: json_.containsKey('creativeId')
              ? json_['creativeId'] as core.String
              : null,
          creativeServingDecision: json_.containsKey('creativeServingDecision')
              ? CreativeServingDecision.fromJson(
                  json_['creativeServingDecision']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dealIds: json_.containsKey('dealIds')
              ? (json_['dealIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          declaredAttributes: json_.containsKey('declaredAttributes')
              ? (json_['declaredAttributes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          declaredClickThroughUrls:
              json_.containsKey('declaredClickThroughUrls')
                  ? (json_['declaredClickThroughUrls'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          declaredRestrictedCategories:
              json_.containsKey('declaredRestrictedCategories')
                  ? (json_['declaredRestrictedCategories'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          declaredVendorIds: json_.containsKey('declaredVendorIds')
              ? (json_['declaredVendorIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          html: json_.containsKey('html')
              ? HtmlContent.fromJson(
                  json_['html'] as core.Map<core.String, core.dynamic>)
              : null,
          impressionTrackingUrls: json_.containsKey('impressionTrackingUrls')
              ? (json_['impressionTrackingUrls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          native: json_.containsKey('native')
              ? NativeContent.fromJson(
                  json_['native'] as core.Map<core.String, core.dynamic>)
              : null,
          renderUrl: json_.containsKey('renderUrl')
              ? json_['renderUrl'] as core.String
              : null,
          restrictedCategories: json_.containsKey('restrictedCategories')
              ? (json_['restrictedCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
          video: json_.containsKey('video')
              ? VideoContent.fromJson(
                  json_['video'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (adChoicesDestinationUrl != null)
          'adChoicesDestinationUrl': adChoicesDestinationUrl!,
        if (advertiserName != null) 'advertiserName': advertiserName!,
        if (agencyId != null) 'agencyId': agencyId!,
        if (apiUpdateTime != null) 'apiUpdateTime': apiUpdateTime!,
        if (creativeFormat != null) 'creativeFormat': creativeFormat!,
        if (creativeId != null) 'creativeId': creativeId!,
        if (creativeServingDecision != null)
          'creativeServingDecision': creativeServingDecision!,
        if (dealIds != null) 'dealIds': dealIds!,
        if (declaredAttributes != null)
          'declaredAttributes': declaredAttributes!,
        if (declaredClickThroughUrls != null)
          'declaredClickThroughUrls': declaredClickThroughUrls!,
        if (declaredRestrictedCategories != null)
          'declaredRestrictedCategories': declaredRestrictedCategories!,
        if (declaredVendorIds != null) 'declaredVendorIds': declaredVendorIds!,
        if (html != null) 'html': html!,
        if (impressionTrackingUrls != null)
          'impressionTrackingUrls': impressionTrackingUrls!,
        if (name != null) 'name': name!,
        if (native != null) 'native': native!,
        if (renderUrl != null) 'renderUrl': renderUrl!,
        if (restrictedCategories != null)
          'restrictedCategories': restrictedCategories!,
        if (version != null) 'version': version!,
        if (video != null) 'video': video!,
      };
}

/// The dimensions of a creative.
///
/// This applies to only HTML and Native creatives.
class CreativeDimensions {
  /// The height of the creative in pixels.
  core.String? height;

  /// The width of the creative in pixels.
  core.String? width;

  CreativeDimensions({
    this.height,
    this.width,
  });

  CreativeDimensions.fromJson(core.Map json_)
      : this(
          height: json_.containsKey('height')
              ? json_['height'] as core.String
              : null,
          width:
              json_.containsKey('width') ? json_['width'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (width != null) 'width': width!,
      };
}

/// Top level status and detected attributes of a creative.
class CreativeServingDecision {
  /// The detected ad technology providers.
  AdTechnologyProviders? adTechnologyProviders;

  /// The policy compliance of this creative in China.
  ///
  /// When approved or disapproved, this applies to both deals and open auction
  /// in China. When pending review, this creative is allowed to serve for deals
  /// but not for open auction.
  PolicyCompliance? chinaPolicyCompliance;

  /// Policy compliance of this creative when bidding on Programmatic Guaranteed
  /// and Preferred Deals (outside of Russia and China).
  PolicyCompliance? dealsPolicyCompliance;

  /// Detected advertisers and brands.
  core.List<AdvertiserAndBrand>? detectedAdvertisers;

  /// Publisher-excludable attributes that were detected for this creative.
  ///
  /// Can be used to filter the response of the creatives.list method. If the
  /// `excluded_attribute` field of a
  /// [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto)
  /// contains one of the attributes that were declared or detected for a given
  /// creative, and a bid is submitted with that creative, the bid will be
  /// filtered before the auction.
  core.List<core.String>? detectedAttributes;

  /// The set of detected destination URLs for the creative.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.List<core.String>? detectedClickThroughUrls;

  /// The detected domains for this creative.
  core.List<core.String>? detectedDomains;

  /// The detected languages for this creative.
  ///
  /// The order is arbitrary. The codes are 2 or 5 characters and are documented
  /// at https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  /// Can be used to filter the response of the creatives.list method.
  core.List<core.String>? detectedLanguages;

  /// Detected product categories, if any.
  ///
  /// See the ad-product-categories.txt file in the technical documentation for
  /// a list of IDs. Can be used to filter the response of the creatives.list
  /// method.
  core.List<core.int>? detectedProductCategories;

  /// Detected sensitive categories, if any.
  ///
  /// Can be used to filter the response of the creatives.list method. See the
  /// ad-sensitive-categories.txt file in the technical documentation for a list
  /// of IDs. You should use these IDs along with the
  /// excluded-sensitive-category field in the bid request to filter your bids.
  core.List<core.int>? detectedSensitiveCategories;

  /// IDs of the ad technology vendors that were detected to be used by this
  /// creative.
  ///
  /// See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for
  /// possible values. Can be used to filter the response of the creatives.list
  /// method. If the `allowed_vendor_type` field of a
  /// [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto)
  /// does not contain one of the vendor type IDs that were declared or detected
  /// for a given creative, and a bid is submitted with that creative, the bid
  /// will be filtered before the auction.
  core.List<core.int>? detectedVendorIds;

  /// The last time the creative status was updated.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? lastStatusUpdate;

  /// Policy compliance of this creative when bidding in open auction, private
  /// auction, or auction packages (outside of Russia and China).
  PolicyCompliance? networkPolicyCompliance;

  /// Policy compliance of this creative when bidding in Open Bidding (outside
  /// of Russia and China).
  ///
  /// For the list of platform policies, see:
  /// https://support.google.com/platformspolicy/answer/3013851.
  PolicyCompliance? platformPolicyCompliance;

  /// The policy compliance of this creative in Russia.
  ///
  /// When approved or disapproved, this applies to both deals and open auction
  /// in Russia. When pending review, this creative is allowed to serve for
  /// deals but not for open auction.
  PolicyCompliance? russiaPolicyCompliance;

  CreativeServingDecision({
    this.adTechnologyProviders,
    this.chinaPolicyCompliance,
    this.dealsPolicyCompliance,
    this.detectedAdvertisers,
    this.detectedAttributes,
    this.detectedClickThroughUrls,
    this.detectedDomains,
    this.detectedLanguages,
    this.detectedProductCategories,
    this.detectedSensitiveCategories,
    this.detectedVendorIds,
    this.lastStatusUpdate,
    this.networkPolicyCompliance,
    this.platformPolicyCompliance,
    this.russiaPolicyCompliance,
  });

  CreativeServingDecision.fromJson(core.Map json_)
      : this(
          adTechnologyProviders: json_.containsKey('adTechnologyProviders')
              ? AdTechnologyProviders.fromJson(json_['adTechnologyProviders']
                  as core.Map<core.String, core.dynamic>)
              : null,
          chinaPolicyCompliance: json_.containsKey('chinaPolicyCompliance')
              ? PolicyCompliance.fromJson(json_['chinaPolicyCompliance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dealsPolicyCompliance: json_.containsKey('dealsPolicyCompliance')
              ? PolicyCompliance.fromJson(json_['dealsPolicyCompliance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          detectedAdvertisers: json_.containsKey('detectedAdvertisers')
              ? (json_['detectedAdvertisers'] as core.List)
                  .map((value) => AdvertiserAndBrand.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedAttributes: json_.containsKey('detectedAttributes')
              ? (json_['detectedAttributes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectedClickThroughUrls:
              json_.containsKey('detectedClickThroughUrls')
                  ? (json_['detectedClickThroughUrls'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          detectedDomains: json_.containsKey('detectedDomains')
              ? (json_['detectedDomains'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          detectedProductCategories:
              json_.containsKey('detectedProductCategories')
                  ? (json_['detectedProductCategories'] as core.List)
                      .map((value) => value as core.int)
                      .toList()
                  : null,
          detectedSensitiveCategories:
              json_.containsKey('detectedSensitiveCategories')
                  ? (json_['detectedSensitiveCategories'] as core.List)
                      .map((value) => value as core.int)
                      .toList()
                  : null,
          detectedVendorIds: json_.containsKey('detectedVendorIds')
              ? (json_['detectedVendorIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          lastStatusUpdate: json_.containsKey('lastStatusUpdate')
              ? json_['lastStatusUpdate'] as core.String
              : null,
          networkPolicyCompliance: json_.containsKey('networkPolicyCompliance')
              ? PolicyCompliance.fromJson(json_['networkPolicyCompliance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          platformPolicyCompliance:
              json_.containsKey('platformPolicyCompliance')
                  ? PolicyCompliance.fromJson(json_['platformPolicyCompliance']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          russiaPolicyCompliance: json_.containsKey('russiaPolicyCompliance')
              ? PolicyCompliance.fromJson(json_['russiaPolicyCompliance']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adTechnologyProviders != null)
          'adTechnologyProviders': adTechnologyProviders!,
        if (chinaPolicyCompliance != null)
          'chinaPolicyCompliance': chinaPolicyCompliance!,
        if (dealsPolicyCompliance != null)
          'dealsPolicyCompliance': dealsPolicyCompliance!,
        if (detectedAdvertisers != null)
          'detectedAdvertisers': detectedAdvertisers!,
        if (detectedAttributes != null)
          'detectedAttributes': detectedAttributes!,
        if (detectedClickThroughUrls != null)
          'detectedClickThroughUrls': detectedClickThroughUrls!,
        if (detectedDomains != null) 'detectedDomains': detectedDomains!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (detectedProductCategories != null)
          'detectedProductCategories': detectedProductCategories!,
        if (detectedSensitiveCategories != null)
          'detectedSensitiveCategories': detectedSensitiveCategories!,
        if (detectedVendorIds != null) 'detectedVendorIds': detectedVendorIds!,
        if (lastStatusUpdate != null) 'lastStatusUpdate': lastStatusUpdate!,
        if (networkPolicyCompliance != null)
          'networkPolicyCompliance': networkPolicyCompliance!,
        if (platformPolicyCompliance != null)
          'platformPolicyCompliance': platformPolicyCompliance!,
        if (russiaPolicyCompliance != null)
          'russiaPolicyCompliance': russiaPolicyCompliance!,
      };
}

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
typedef Date = $Date;

/// Evidence that the creative's destination URL was not crawlable by Google.
class DestinationNotCrawlableEvidence {
  /// Approximate time of the crawl.
  core.String? crawlTime;

  /// Destination URL that was attempted to be crawled.
  core.String? crawledUrl;

  /// Reason of destination not crawlable.
  /// Possible string values are:
  /// - "REASON_UNSPECIFIED" : Default value that should never be used.
  /// - "UNREACHABLE_ROBOTS" : Site's robots exclusion file (for example,
  /// robots.txt) was unreachable.
  /// - "TIMEOUT_ROBOTS" : Timed out reading site's robots exclusion file (for
  /// example, robots.txt).
  /// - "ROBOTED_DENIED" : Crawler was disallowed by the site's robots exclusion
  /// file (for example, robots.txt).
  /// - "UNKNOWN" : Unknown reason.
  core.String? reason;

  DestinationNotCrawlableEvidence({
    this.crawlTime,
    this.crawledUrl,
    this.reason,
  });

  DestinationNotCrawlableEvidence.fromJson(core.Map json_)
      : this(
          crawlTime: json_.containsKey('crawlTime')
              ? json_['crawlTime'] as core.String
              : null,
          crawledUrl: json_.containsKey('crawledUrl')
              ? json_['crawledUrl'] as core.String
              : null,
          reason: json_.containsKey('reason')
              ? json_['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crawlTime != null) 'crawlTime': crawlTime!,
        if (crawledUrl != null) 'crawledUrl': crawledUrl!,
        if (reason != null) 'reason': reason!,
      };
}

/// Evidence of the creative's destination URL not functioning properly or
/// having been incorrectly set up.
class DestinationNotWorkingEvidence {
  /// DNS lookup errors.
  /// Possible string values are:
  /// - "DNS_ERROR_UNSPECIFIED" : Default value that should never be used.
  /// - "ERROR_DNS" : DNS name was not found.
  /// - "GOOGLE_CRAWLER_DNS_ISSUE" : An internal issue occurred when Google's
  /// crawler tried to resolve the DNS entry. This is a Google-internal issue
  /// and may not be the result of an issue with the landing page.
  core.String? dnsError;

  /// The full non-working URL.
  core.String? expandedUrl;

  /// HTTP error code (for example, 404 or 5xx)
  core.int? httpError;

  /// Page was crawled successfully, but was detected as either a page with no
  /// content or an error page.
  /// Possible string values are:
  /// - "INVALID_PAGE_UNSPECIFIED" : Default value that should never be used.
  /// - "EMPTY_OR_ERROR_PAGE" : Page was empty or had an error.
  core.String? invalidPage;

  /// Approximate time when the ad destination was last checked.
  core.String? lastCheckTime;

  /// Platform of the non-working URL.
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Default value that should never be used.
  /// - "PERSONAL_COMPUTER" : The personal computer platform.
  /// - "ANDROID" : The Android platform.
  /// - "IOS" : The iOS platform.
  core.String? platform;

  /// HTTP redirect chain error.
  /// Possible string values are:
  /// - "REDIRECTION_ERROR_UNSPECIFIED" : Default value that should never be
  /// used.
  /// - "TOO_MANY_REDIRECTS" : Too many redirect hops.
  /// - "INVALID_REDIRECT" : Got a redirect but it was invalid.
  /// - "EMPTY_REDIRECT" : Got a redirect but it was empty.
  /// - "REDIRECT_ERROR_UNKNOWN" : Unknown redirect error.
  core.String? redirectionError;

  /// Rejected because of malformed URLs or invalid requests.
  /// Possible string values are:
  /// - "URL_REJECTED_UNSPECIFIED" : Default value that should never be used.
  /// - "BAD_REQUEST" : URL rejected because of a malformed request.
  /// - "MALFORMED_URL" : URL rejected because of a malformed URL.
  /// - "URL_REJECTED_UNKNOWN" : URL rejected because of unknown reason.
  core.String? urlRejected;

  DestinationNotWorkingEvidence({
    this.dnsError,
    this.expandedUrl,
    this.httpError,
    this.invalidPage,
    this.lastCheckTime,
    this.platform,
    this.redirectionError,
    this.urlRejected,
  });

  DestinationNotWorkingEvidence.fromJson(core.Map json_)
      : this(
          dnsError: json_.containsKey('dnsError')
              ? json_['dnsError'] as core.String
              : null,
          expandedUrl: json_.containsKey('expandedUrl')
              ? json_['expandedUrl'] as core.String
              : null,
          httpError: json_.containsKey('httpError')
              ? json_['httpError'] as core.int
              : null,
          invalidPage: json_.containsKey('invalidPage')
              ? json_['invalidPage'] as core.String
              : null,
          lastCheckTime: json_.containsKey('lastCheckTime')
              ? json_['lastCheckTime'] as core.String
              : null,
          platform: json_.containsKey('platform')
              ? json_['platform'] as core.String
              : null,
          redirectionError: json_.containsKey('redirectionError')
              ? json_['redirectionError'] as core.String
              : null,
          urlRejected: json_.containsKey('urlRejected')
              ? json_['urlRejected'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dnsError != null) 'dnsError': dnsError!,
        if (expandedUrl != null) 'expandedUrl': expandedUrl!,
        if (httpError != null) 'httpError': httpError!,
        if (invalidPage != null) 'invalidPage': invalidPage!,
        if (lastCheckTime != null) 'lastCheckTime': lastCheckTime!,
        if (platform != null) 'platform': platform!,
        if (redirectionError != null) 'redirectionError': redirectionError!,
        if (urlRejected != null) 'urlRejected': urlRejected!,
      };
}

/// The full landing page URL of the destination.
class DestinationUrlEvidence {
  /// The full landing page URL of the destination.
  core.String? destinationUrl;

  DestinationUrlEvidence({
    this.destinationUrl,
  });

  DestinationUrlEvidence.fromJson(core.Map json_)
      : this(
          destinationUrl: json_.containsKey('destinationUrl')
              ? json_['destinationUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationUrl != null) 'destinationUrl': destinationUrl!,
      };
}

/// Number of HTTP calls made by a creative, broken down by domain.
class DomainCallEvidence {
  /// Breakdown of the most frequent domains called through HTTP by the
  /// creative.
  core.List<DomainCalls>? topHttpCallDomains;

  /// The total number of HTTP calls made by the creative, including but not
  /// limited to the number of calls in the top_http_call_domains.
  core.int? totalHttpCallCount;

  DomainCallEvidence({
    this.topHttpCallDomains,
    this.totalHttpCallCount,
  });

  DomainCallEvidence.fromJson(core.Map json_)
      : this(
          topHttpCallDomains: json_.containsKey('topHttpCallDomains')
              ? (json_['topHttpCallDomains'] as core.List)
                  .map((value) => DomainCalls.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalHttpCallCount: json_.containsKey('totalHttpCallCount')
              ? json_['totalHttpCallCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topHttpCallDomains != null)
          'topHttpCallDomains': topHttpCallDomains!,
        if (totalHttpCallCount != null)
          'totalHttpCallCount': totalHttpCallCount!,
      };
}

/// The number of HTTP calls made to the given domain.
class DomainCalls {
  /// The domain name.
  core.String? domain;

  /// Number of HTTP calls made to the domain.
  core.int? httpCallCount;

  DomainCalls({
    this.domain,
    this.httpCallCount,
  });

  DomainCalls.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          httpCallCount: json_.containsKey('httpCallCount')
              ? json_['httpCallCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (httpCallCount != null) 'httpCallCount': httpCallCount!,
      };
}

/// Total download size and URL-level download size breakdown for resources in a
/// creative.
class DownloadSizeEvidence {
  /// Download size broken down by URLs with the top download size.
  core.List<UrlDownloadSize>? topUrlDownloadSizeBreakdowns;

  /// Total download size (in kilobytes) for all the resources in the creative.
  core.int? totalDownloadSizeKb;

  DownloadSizeEvidence({
    this.topUrlDownloadSizeBreakdowns,
    this.totalDownloadSizeKb,
  });

  DownloadSizeEvidence.fromJson(core.Map json_)
      : this(
          topUrlDownloadSizeBreakdowns:
              json_.containsKey('topUrlDownloadSizeBreakdowns')
                  ? (json_['topUrlDownloadSizeBreakdowns'] as core.List)
                      .map((value) => UrlDownloadSize.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          totalDownloadSizeKb: json_.containsKey('totalDownloadSizeKb')
              ? json_['totalDownloadSizeKb'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topUrlDownloadSizeBreakdowns != null)
          'topUrlDownloadSizeBreakdowns': topUrlDownloadSizeBreakdowns!,
        if (totalDownloadSizeKb != null)
          'totalDownloadSizeKb': totalDownloadSizeKb!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Bidder endpoint that receives bid requests.
class Endpoint {
  /// The protocol that the bidder endpoint is using.
  /// Possible string values are:
  /// - "BID_PROTOCOL_UNSPECIFIED" : Placeholder for undefined bid protocol.
  /// This value should not be used.
  /// - "GOOGLE_RTB" : Google RTB protocol / Protobuf encoding.
  /// - "OPENRTB_JSON" : OpenRTB / JSON encoding (unversioned/latest).
  /// - "OPENRTB_PROTOBUF" : OpenRTB / Protobuf encoding (unversioned/latest).
  /// - "OPENRTB_2_2" : Deprecated: Use OPENRTB_JSON.
  /// - "OPENRTB_2_3" : Deprecated: Use OPENRTB_JSON.
  /// - "OPENRTB_PROTOBUF_2_3" : Deprecated: Use OPENRTB_PROTOBUF.
  /// - "OPENRTB_2_4" : Deprecated: Use OPENRTB_JSON.
  /// - "OPENRTB_PROTOBUF_2_4" : Deprecated: Use OPENRTB_PROTOBUF.
  /// - "OPENRTB_2_5" : Deprecated: Use OPENRTB_JSON.
  /// - "OPENRTB_PROTOBUF_2_5" : Deprecated: Use OPENRTB_PROTOBUF.
  core.String? bidProtocol;

  /// The maximum number of queries per second allowed to be sent to this
  /// server.
  core.String? maximumQps;

  /// Name of the endpoint resource that must follow the pattern
  /// `bidders/{bidderAccountId}/endpoints/{endpointId}`, where
  /// {bidderAccountId} is the account ID of the bidder who operates this
  /// endpoint, and {endpointId} is a unique ID assigned by the server.
  ///
  /// Output only.
  core.String? name;

  /// The trading location that bid requests should be sent from.
  ///
  /// See
  /// https://developers.google.com/authorized-buyers/rtb/peer-guide#trading-locations
  /// for further information.
  /// Possible string values are:
  /// - "TRADING_LOCATION_UNSPECIFIED" : A placeholder for an undefined trading
  /// region. This value should not be used.
  /// - "US_WEST" : The Western US trading location.
  /// - "US_EAST" : The Eastern US trading location.
  /// - "EUROPE" : The European trading location.
  /// - "ASIA" : The Asia trading location.
  core.String? tradingLocation;

  /// The URL that bid requests should be sent to.
  ///
  /// Output only.
  core.String? url;

  Endpoint({
    this.bidProtocol,
    this.maximumQps,
    this.name,
    this.tradingLocation,
    this.url,
  });

  Endpoint.fromJson(core.Map json_)
      : this(
          bidProtocol: json_.containsKey('bidProtocol')
              ? json_['bidProtocol'] as core.String
              : null,
          maximumQps: json_.containsKey('maximumQps')
              ? json_['maximumQps'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          tradingLocation: json_.containsKey('tradingLocation')
              ? json_['tradingLocation'] as core.String
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidProtocol != null) 'bidProtocol': bidProtocol!,
        if (maximumQps != null) 'maximumQps': maximumQps!,
        if (name != null) 'name': name!,
        if (tradingLocation != null) 'tradingLocation': tradingLocation!,
        if (url != null) 'url': url!,
      };
}

/// Response for a request to get remarketing tag.
class GetRemarketingTagResponse {
  /// A HTML tag that can be placed on the advertiser's page to add users to a
  /// user list.
  ///
  /// For more information and code samples on using snippet on your website
  /// refer to \[Tag your site for remarketing\](
  /// https://support.google.com/google-ads/answer/2476688).
  core.String? snippet;

  GetRemarketingTagResponse({
    this.snippet,
  });

  GetRemarketingTagResponse.fromJson(core.Map json_)
      : this(
          snippet: json_.containsKey('snippet')
              ? json_['snippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snippet != null) 'snippet': snippet!,
      };
}

/// HTML content for a creative.
class HtmlContent {
  /// The height of the HTML snippet in pixels.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.int? height;

  /// The HTML snippet that displays the ad when inserted in the web page.
  core.String? snippet;

  /// The width of the HTML snippet in pixels.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.int? width;

  HtmlContent({
    this.height,
    this.snippet,
    this.width,
  });

  HtmlContent.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          snippet: json_.containsKey('snippet')
              ? json_['snippet'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (snippet != null) 'snippet': snippet!,
        if (width != null) 'width': width!,
      };
}

/// HTTP calls made by a creative that resulted in policy violations.
class HttpCallEvidence {
  /// URLs of HTTP calls made by the creative.
  core.List<core.String>? urls;

  HttpCallEvidence({
    this.urls,
  });

  HttpCallEvidence.fromJson(core.Map json_)
      : this(
          urls: json_.containsKey('urls')
              ? (json_['urls'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (urls != null) 'urls': urls!,
      };
}

/// Evidence for HTTP cookie-related policy violations.
class HttpCookieEvidence {
  /// Names of cookies that violate Google policies.
  ///
  /// For TOO_MANY_COOKIES policy, this will be the cookie names of top domains
  /// with the largest number of cookies. For other policies, this will be all
  /// the cookie names that violate the policy.
  core.List<core.String>? cookieNames;

  /// The largest number of cookies set by a creative.
  ///
  /// If this field is set, cookie_names above will be set to the cookie names
  /// of top domains with the largest number of cookies. This field will only be
  /// set for TOO_MANY_COOKIES policy.
  core.int? maxCookieCount;

  HttpCookieEvidence({
    this.cookieNames,
    this.maxCookieCount,
  });

  HttpCookieEvidence.fromJson(core.Map json_)
      : this(
          cookieNames: json_.containsKey('cookieNames')
              ? (json_['cookieNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maxCookieCount: json_.containsKey('maxCookieCount')
              ? json_['maxCookieCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cookieNames != null) 'cookieNames': cookieNames!,
        if (maxCookieCount != null) 'maxCookieCount': maxCookieCount!,
      };
}

/// An image resource.
///
/// You may provide a larger image than was requested, so long as the aspect
/// ratio is preserved.
class Image {
  /// Image height in pixels.
  core.int? height;

  /// The URL of the image.
  core.String? url;

  /// Image width in pixels.
  core.int? width;

  Image({
    this.height,
    this.url,
    this.width,
  });

  Image.fromJson(core.Map json_)
      : this(
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (url != null) 'url': url!,
        if (width != null) 'width': width!,
      };
}

/// A response containing bidders.
class ListBiddersResponse {
  /// List of bidders.
  core.List<Bidder>? bidders;

  /// A token which can be passed to a subsequent call to the `ListBidders`
  /// method to retrieve the next page of results in
  /// ListBiddersRequest.pageToken.
  core.String? nextPageToken;

  ListBiddersResponse({
    this.bidders,
    this.nextPageToken,
  });

  ListBiddersResponse.fromJson(core.Map json_)
      : this(
          bidders: json_.containsKey('bidders')
              ? (json_['bidders'] as core.List)
                  .map((value) => Bidder.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bidders != null) 'bidders': bidders!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response containing buyer account information.
class ListBuyersResponse {
  /// List of buyers.
  core.List<Buyer>? buyers;

  /// A token which can be passed to a subsequent call to the `ListBuyers`
  /// method to retrieve the next page of results in
  /// ListBuyersRequest.pageToken.
  core.String? nextPageToken;

  ListBuyersResponse({
    this.buyers,
    this.nextPageToken,
  });

  ListBuyersResponse.fromJson(core.Map json_)
      : this(
          buyers: json_.containsKey('buyers')
              ? (json_['buyers'] as core.List)
                  .map((value) => Buyer.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buyers != null) 'buyers': buyers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response for listing creatives.
class ListCreativesResponse {
  /// The list of creatives.
  core.List<Creative>? creatives;

  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListCreativesRequest.pageToken field in the
  /// subsequent call to the `ListCreatives` method to retrieve the next page of
  /// results.
  core.String? nextPageToken;

  ListCreativesResponse({
    this.creatives,
    this.nextPageToken,
  });

  ListCreativesResponse.fromJson(core.Map json_)
      : this(
          creatives: json_.containsKey('creatives')
              ? (json_['creatives'] as core.List)
                  .map((value) => Creative.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creatives != null) 'creatives': creatives!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response containing bidder endpoints.
class ListEndpointsResponse {
  /// List of bidder endpoints.
  core.List<Endpoint>? endpoints;

  /// A token which can be passed to a subsequent call to the `ListEndpoints`
  /// method to retrieve the next page of results in
  /// ListEndpointsRequest.pageToken.
  core.String? nextPageToken;

  ListEndpointsResponse({
    this.endpoints,
    this.nextPageToken,
  });

  ListEndpointsResponse.fromJson(core.Map json_)
      : this(
          endpoints: json_.containsKey('endpoints')
              ? (json_['endpoints'] as core.List)
                  .map((value) => Endpoint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endpoints != null) 'endpoints': endpoints!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A response containing pretargeting configurations.
class ListPretargetingConfigsResponse {
  /// A token which can be passed to a subsequent call to the
  /// `ListPretargetingConfigs` method to retrieve the next page of results in
  /// ListPretargetingConfigsRequest.pageToken.
  core.String? nextPageToken;

  /// List of pretargeting configurations.
  core.List<PretargetingConfig>? pretargetingConfigs;

  ListPretargetingConfigsResponse({
    this.nextPageToken,
    this.pretargetingConfigs,
  });

  ListPretargetingConfigsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          pretargetingConfigs: json_.containsKey('pretargetingConfigs')
              ? (json_['pretargetingConfigs'] as core.List)
                  .map((value) => PretargetingConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pretargetingConfigs != null)
          'pretargetingConfigs': pretargetingConfigs!,
      };
}

/// A response to a request for listing publisher connections.
class ListPublisherConnectionsResponse {
  /// A token to retrieve the next page of results.
  ///
  /// Pass this value in the ListPublisherConnectionsRequest.pageToken field in
  /// the subsequent call to the `ListPublisherConnections` method to retrieve
  /// the next page of results.
  core.String? nextPageToken;

  /// The list of publisher connections.
  core.List<PublisherConnection>? publisherConnections;

  ListPublisherConnectionsResponse({
    this.nextPageToken,
    this.publisherConnections,
  });

  ListPublisherConnectionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          publisherConnections: json_.containsKey('publisherConnections')
              ? (json_['publisherConnections'] as core.List)
                  .map((value) => PublisherConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (publisherConnections != null)
          'publisherConnections': publisherConnections!,
      };
}

/// The list user list response.
class ListUserListsResponse {
  /// The continuation page token to send back to the server in a subsequent
  /// request.
  ///
  /// Due to a currently known issue, it is recommended that the caller keep
  /// invoking the list method till the time a next page token is not returned
  /// (even if the result set is empty).
  core.String? nextPageToken;

  /// List of user lists from the search.
  core.List<UserList>? userLists;

  ListUserListsResponse({
    this.nextPageToken,
    this.userLists,
  });

  ListUserListsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          userLists: json_.containsKey('userLists')
              ? (json_['userLists'] as core.List)
                  .map((value) => UserList.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userLists != null) 'userLists': userLists!,
      };
}

/// Information about each media file in the VAST.
class MediaFile {
  /// Bitrate of the video file, in Kbps.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? bitrate;

  /// The MIME type of this media file.
  ///
  /// Can be used to filter the response of the creatives.list method.
  /// Possible string values are:
  /// - "VIDEO_MIME_TYPE_UNSPECIFIED" : Default value that should never be used.
  /// - "MIME_VIDEO_XFLV" : Flash container.
  /// - "MIME_VIDEO_WEBM" : WebM container assuming VP9 codec.
  /// - "MIME_VIDEO_MP4" : MPEG-4 container typically with H.264 codec.
  /// - "MIME_VIDEO_OGG" : Ogg container assuming Theora codec.
  /// - "MIME_VIDEO_YT_HOSTED" : Video files hosted on YouTube.
  /// - "MIME_VIDEO_X_MS_WMV" : Windows Media Video Codec.
  /// - "MIME_VIDEO_3GPP" : 3GPP container format used on 3G phones.
  /// - "MIME_VIDEO_MOV" : Quicktime container format.
  /// - "MIME_APPLICATION_SWF" : Shockwave Flash (used for VPAID ads).
  /// - "MIME_APPLICATION_SURVEY" : Properties of VAST served by consumer
  /// survey.
  /// - "MIME_APPLICATION_JAVASCRIPT" : JavaScript (used for VPAID ads).
  /// - "MIME_APPLICATION_SILVERLIGHT" : Silverlight (used for VPAID ads).
  /// - "MIME_APPLICATION_MPEGURL" : HLS/M3U8.
  /// - "MIME_APPLICATION_MPEGDASH" : DASH.
  /// - "MIME_AUDIO_MP4A" : MPEG-4 audio format.
  /// - "MIME_AUDIO_MP3" : MPEG-3 audio format.
  /// - "MIME_AUDIO_OGG" : Ogg audio format
  core.String? mimeType;

  MediaFile({
    this.bitrate,
    this.mimeType,
  });

  MediaFile.fromJson(core.Map json_)
      : this(
          bitrate: json_.containsKey('bitrate')
              ? json_['bitrate'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrate != null) 'bitrate': bitrate!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Native content for a creative.
class NativeContent {
  /// The name of the advertiser or sponsor, to be displayed in the ad creative.
  core.String? advertiserName;

  /// The app icon, for app download ads.
  Image? appIcon;

  /// A long description of the ad.
  core.String? body;

  /// A label for the button that the user is supposed to click.
  core.String? callToAction;

  /// The URL that the browser/SDK will load when the user clicks the ad.
  core.String? clickLinkUrl;

  /// The URL to use for click tracking.
  core.String? clickTrackingUrl;

  /// A short title for the ad.
  core.String? headline;

  /// A large image.
  Image? image;

  /// A smaller image, for the advertiser's logo.
  Image? logo;

  /// The price of the promoted app including currency info.
  core.String? priceDisplayText;

  /// The app rating in the app store.
  ///
  /// Must be in the range \[0-5\].
  core.double? starRating;

  /// The URL to fetch a native video ad.
  core.String? videoUrl;

  /// The contents of a VAST document for a native video ad.
  core.String? videoVastXml;

  NativeContent({
    this.advertiserName,
    this.appIcon,
    this.body,
    this.callToAction,
    this.clickLinkUrl,
    this.clickTrackingUrl,
    this.headline,
    this.image,
    this.logo,
    this.priceDisplayText,
    this.starRating,
    this.videoUrl,
    this.videoVastXml,
  });

  NativeContent.fromJson(core.Map json_)
      : this(
          advertiserName: json_.containsKey('advertiserName')
              ? json_['advertiserName'] as core.String
              : null,
          appIcon: json_.containsKey('appIcon')
              ? Image.fromJson(
                  json_['appIcon'] as core.Map<core.String, core.dynamic>)
              : null,
          body: json_.containsKey('body') ? json_['body'] as core.String : null,
          callToAction: json_.containsKey('callToAction')
              ? json_['callToAction'] as core.String
              : null,
          clickLinkUrl: json_.containsKey('clickLinkUrl')
              ? json_['clickLinkUrl'] as core.String
              : null,
          clickTrackingUrl: json_.containsKey('clickTrackingUrl')
              ? json_['clickTrackingUrl'] as core.String
              : null,
          headline: json_.containsKey('headline')
              ? json_['headline'] as core.String
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          logo: json_.containsKey('logo')
              ? Image.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>)
              : null,
          priceDisplayText: json_.containsKey('priceDisplayText')
              ? json_['priceDisplayText'] as core.String
              : null,
          starRating: json_.containsKey('starRating')
              ? (json_['starRating'] as core.num).toDouble()
              : null,
          videoUrl: json_.containsKey('videoUrl')
              ? json_['videoUrl'] as core.String
              : null,
          videoVastXml: json_.containsKey('videoVastXml')
              ? json_['videoVastXml'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advertiserName != null) 'advertiserName': advertiserName!,
        if (appIcon != null) 'appIcon': appIcon!,
        if (body != null) 'body': body!,
        if (callToAction != null) 'callToAction': callToAction!,
        if (clickLinkUrl != null) 'clickLinkUrl': clickLinkUrl!,
        if (clickTrackingUrl != null) 'clickTrackingUrl': clickTrackingUrl!,
        if (headline != null) 'headline': headline!,
        if (image != null) 'image': image!,
        if (logo != null) 'logo': logo!,
        if (priceDisplayText != null) 'priceDisplayText': priceDisplayText!,
        if (starRating != null) 'starRating': starRating!,
        if (videoUrl != null) 'videoUrl': videoUrl!,
        if (videoVastXml != null) 'videoVastXml': videoVastXml!,
      };
}

/// Generic targeting used for targeting dimensions that contain a list of
/// included and excluded numeric IDs used in app, user list, geo, and vertical
/// id targeting.
class NumericTargetingDimension {
  /// The IDs excluded in a configuration.
  core.List<core.String>? excludedIds;

  /// The IDs included in a configuration.
  core.List<core.String>? includedIds;

  NumericTargetingDimension({
    this.excludedIds,
    this.includedIds,
  });

  NumericTargetingDimension.fromJson(core.Map json_)
      : this(
          excludedIds: json_.containsKey('excludedIds')
              ? (json_['excludedIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedIds: json_.containsKey('includedIds')
              ? (json_['includedIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludedIds != null) 'excludedIds': excludedIds!,
        if (includedIds != null) 'includedIds': includedIds!,
      };
}

/// A request to open a specified user list.
typedef OpenUserListRequest = $Empty;

/// Policy compliance of the creative for a transaction type or a region.
class PolicyCompliance {
  /// Serving status for the given transaction type (for example, open auction,
  /// deals) or region (for example, China, Russia).
  ///
  /// Can be used to filter the response of the creatives.list method.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Default value that should never be used.
  /// - "PENDING_REVIEW" : Creative is pending review.
  /// - "DISAPPROVED" : Creative cannot serve.
  /// - "APPROVED" : Creative is approved.
  /// - "CERTIFICATE_REQUIRED" : Certificates are required for the creative to
  /// be served in some regions. For more information about creative
  /// certification, refer to:
  /// https://support.google.com/authorizedbuyers/answer/7450776
  core.String? status;

  /// Topics related to the policy compliance for this transaction type (for
  /// example, open auction, deals) or region (for example, China, Russia).
  ///
  /// Topics may be present only if status is DISAPPROVED.
  core.List<PolicyTopicEntry>? topics;

  PolicyCompliance({
    this.status,
    this.topics,
  });

  PolicyCompliance.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => PolicyTopicEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (topics != null) 'topics': topics!,
      };
}

/// Each policy topic entry will represent a violation of a policy topic for a
/// creative, with the policy topic information and optional evidence for the
/// policy violation.
class PolicyTopicEntry {
  /// Pieces of evidence associated with this policy topic entry.
  core.List<PolicyTopicEvidence>? evidences;

  /// URL of the help center article describing this policy topic.
  core.String? helpCenterUrl;

  /// Policy topic this entry refers to.
  ///
  /// For example, "ALCOHOL", "TRADEMARKS_IN_AD_TEXT", or
  /// "DESTINATION_NOT_WORKING". The set of possible policy topics is not fixed
  /// for a particular API version and may change at any time. Can be used to
  /// filter the response of the creatives.list method
  core.String? policyTopic;

  PolicyTopicEntry({
    this.evidences,
    this.helpCenterUrl,
    this.policyTopic,
  });

  PolicyTopicEntry.fromJson(core.Map json_)
      : this(
          evidences: json_.containsKey('evidences')
              ? (json_['evidences'] as core.List)
                  .map((value) => PolicyTopicEvidence.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          helpCenterUrl: json_.containsKey('helpCenterUrl')
              ? json_['helpCenterUrl'] as core.String
              : null,
          policyTopic: json_.containsKey('policyTopic')
              ? json_['policyTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evidences != null) 'evidences': evidences!,
        if (helpCenterUrl != null) 'helpCenterUrl': helpCenterUrl!,
        if (policyTopic != null) 'policyTopic': policyTopic!,
      };
}

/// Evidence associated with a policy topic entry.
class PolicyTopicEvidence {
  /// The creative's destination URL was not crawlable by Google.
  DestinationNotCrawlableEvidence? destinationNotCrawlable;

  /// The creative's destination URL did not function properly or was
  /// incorrectly set up.
  DestinationNotWorkingEvidence? destinationNotWorking;

  /// URL of the actual landing page.
  DestinationUrlEvidence? destinationUrl;

  /// Number of HTTP calls made by the creative, broken down by domain.
  DomainCallEvidence? domainCall;

  /// Total download size and URL-level download size breakdown for resources in
  /// a creative.
  DownloadSizeEvidence? downloadSize;

  /// HTTP calls made by the creative that resulted in policy violations.
  HttpCallEvidence? httpCall;

  /// Evidence for HTTP cookie-related policy violations.
  HttpCookieEvidence? httpCookie;

  PolicyTopicEvidence({
    this.destinationNotCrawlable,
    this.destinationNotWorking,
    this.destinationUrl,
    this.domainCall,
    this.downloadSize,
    this.httpCall,
    this.httpCookie,
  });

  PolicyTopicEvidence.fromJson(core.Map json_)
      : this(
          destinationNotCrawlable: json_.containsKey('destinationNotCrawlable')
              ? DestinationNotCrawlableEvidence.fromJson(
                  json_['destinationNotCrawlable']
                      as core.Map<core.String, core.dynamic>)
              : null,
          destinationNotWorking: json_.containsKey('destinationNotWorking')
              ? DestinationNotWorkingEvidence.fromJson(
                  json_['destinationNotWorking']
                      as core.Map<core.String, core.dynamic>)
              : null,
          destinationUrl: json_.containsKey('destinationUrl')
              ? DestinationUrlEvidence.fromJson(json_['destinationUrl']
                  as core.Map<core.String, core.dynamic>)
              : null,
          domainCall: json_.containsKey('domainCall')
              ? DomainCallEvidence.fromJson(
                  json_['domainCall'] as core.Map<core.String, core.dynamic>)
              : null,
          downloadSize: json_.containsKey('downloadSize')
              ? DownloadSizeEvidence.fromJson(
                  json_['downloadSize'] as core.Map<core.String, core.dynamic>)
              : null,
          httpCall: json_.containsKey('httpCall')
              ? HttpCallEvidence.fromJson(
                  json_['httpCall'] as core.Map<core.String, core.dynamic>)
              : null,
          httpCookie: json_.containsKey('httpCookie')
              ? HttpCookieEvidence.fromJson(
                  json_['httpCookie'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (destinationNotCrawlable != null)
          'destinationNotCrawlable': destinationNotCrawlable!,
        if (destinationNotWorking != null)
          'destinationNotWorking': destinationNotWorking!,
        if (destinationUrl != null) 'destinationUrl': destinationUrl!,
        if (domainCall != null) 'domainCall': domainCall!,
        if (downloadSize != null) 'downloadSize': downloadSize!,
        if (httpCall != null) 'httpCall': httpCall!,
        if (httpCookie != null) 'httpCookie': httpCookie!,
      };
}

/// Pretargeting configuration: a set of targeting dimensions applied at the
/// pretargeting stage of the RTB funnel.
///
/// These control which inventory a bidder will receive bid requests for.
class PretargetingConfig {
  /// Targeting modes included by this configuration.
  ///
  /// A bid request must allow all the specified targeting modes. An unset value
  /// allows all bid requests to be sent, regardless of which targeting modes
  /// they allow.
  core.List<core.String>? allowedUserTargetingModes;

  /// Targeting on a subset of app inventory.
  ///
  /// If APP is listed in targeted_environments, the specified targeting is
  /// applied. A maximum of 30,000 app IDs can be targeted. An unset value for
  /// targeting allows all app-based bid requests to be sent. Apps can either be
  /// targeting positively (bid requests will be sent only if the destination
  /// app is listed in the targeting dimension) or negatively (bid requests will
  /// be sent only if the destination app is not listed in the targeting
  /// dimension).
  AppTargeting? appTargeting;

  /// The identifier that corresponds to this pretargeting configuration that
  /// helps buyers track and attribute their spend across their own arbitrary
  /// divisions.
  ///
  /// If a bid request matches more than one configuration, the buyer chooses
  /// which billing_id to attribute each of their bids.
  ///
  /// Output only.
  core.String? billingId;

  /// The diplay name associated with this configuration.
  ///
  /// This name must be unique among all the pretargeting configurations a
  /// bidder has.
  core.String? displayName;

  /// The sensitive content category label IDs excluded in this configuration.
  ///
  /// Bid requests for inventory with any of the specified content label IDs
  /// will not be sent. Refer to this file
  /// https://storage.googleapis.com/adx-rtb-dictionaries/content-labels.txt for
  /// category IDs.
  core.List<core.String>? excludedContentLabelIds;

  /// The geos included or excluded in this configuration defined in
  /// https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv
  NumericTargetingDimension? geoTargeting;

  /// Creative dimensions included by this configuration.
  ///
  /// Only bid requests eligible for at least one of the specified creative
  /// dimensions will be sent. An unset value allows all bid requests to be
  /// sent, regardless of creative dimension.
  core.List<CreativeDimensions>? includedCreativeDimensions;

  /// Environments that are being included.
  ///
  /// Bid requests will not be sent for a given environment if it is not
  /// included. Further restrictions can be applied to included environments to
  /// target only a subset of its inventory. An unset value includes all
  /// environments.
  core.List<core.String>? includedEnvironments;

  /// Creative formats included by this configuration.
  ///
  /// Only bid requests eligible for at least one of the specified creative
  /// formats will be sent. An unset value will allow all bid requests to be
  /// sent, regardless of format.
  core.List<core.String>? includedFormats;

  /// The languages included in this configuration, represented by their
  /// language code.
  ///
  /// See https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  core.List<core.String>? includedLanguages;

  /// The mobile operating systems included in this configuration as defined in
  /// https://storage.googleapis.com/adx-rtb-dictionaries/mobile-os.csv
  core.List<core.String>? includedMobileOperatingSystemIds;

  /// The platforms included by this configration.
  ///
  /// Bid requests for devices with the specified platform types will be sent.
  /// An unset value allows all bid requests to be sent, regardless of platform.
  core.List<core.String>? includedPlatforms;

  /// User identifier types included in this configuration.
  ///
  /// At least one of the user identifier types specified in this list must be
  /// available for the bid request to be sent.
  core.List<core.String>? includedUserIdTypes;

  /// The interstitial targeting specified for this configuration.
  ///
  /// The unset value will allow bid requests to be sent regardless of whether
  /// they are for interstitials or not.
  /// Possible string values are:
  /// - "INTERSTITIAL_TARGETING_UNSPECIFIED" : Unspecified interstitial
  /// targeting. Represents an interstitial-agnostic selection.
  /// - "ONLY_INTERSTITIAL_REQUESTS" : Only bid requests for interstitial
  /// inventory should be sent.
  /// - "ONLY_NON_INTERSTITIAL_REQUESTS" : Only bid requests for
  /// non-interstitial inventory should be sent.
  core.String? interstitialTargeting;

  /// Existing included or excluded geos that are invalid.
  ///
  /// Previously targeted geos may become invalid due to privacy restrictions.
  ///
  /// Output only.
  core.List<core.String>? invalidGeoIds;

  /// The maximum QPS threshold for this configuration.
  ///
  /// The bidder should receive no more than this number of bid requests
  /// matching this configuration per second across all their bidding endpoints
  /// among all trading locations. Further information available at
  /// https://developers.google.com/authorized-buyers/rtb/peer-guide
  core.String? maximumQps;

  /// The targeted minimum viewability decile, ranging in values \[0, 10\].
  ///
  /// A value of 5 means that the configuration will only match adslots for
  /// which we predict at least 50% viewability. Values \> 10 will be rounded
  /// down to 10. An unset value or a value of 0 indicates that bid requests
  /// will be sent regardless of viewability.
  core.int? minimumViewabilityDecile;

  /// Name of the pretargeting configuration that must follow the pattern
  /// `bidders/{bidder_account_id}/pretargetingConfigs/{config_id}`
  ///
  /// Output only.
  core.String? name;

  /// Targeting on a subset of publisher inventory.
  ///
  /// Publishers can either be targeted positively (bid requests will be sent
  /// only if the publisher is listed in the targeting dimension) or negatively
  /// (bid requests will be sent only if the publisher is not listed in the
  /// targeting dimension). A maximum of 10,000 publisher IDs can be targeted.
  /// Publisher IDs are found in [ads.txt](https://iabtechlab.com/ads-txt/) /
  /// \[app-ads.txt\](https://iabtechlab.com/app-ads-txt/) and in bid requests
  /// in the `BidRequest.publisher_id` field on the
  /// [Google RTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto)
  /// or the `BidRequest.site.publisher.id` / `BidRequest.app.publisher.id`
  /// field on the
  /// [OpenRTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto).
  /// Publisher IDs will be returned in the order that they were entered.
  StringTargetingDimension? publisherTargeting;

  /// The state of this pretargeting configuration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Placeholder for undefined state.
  /// - "ACTIVE" : This pretargeting configuration is actively being used to
  /// filter bid requests.
  /// - "SUSPENDED" : This pretargeting configuration is suspended and not used
  /// in serving.
  core.String? state;

  /// The remarketing lists included or excluded in this configuration as
  /// defined in UserList.
  NumericTargetingDimension? userListTargeting;

  /// The verticals included or excluded in this configuration as defined in
  /// https://developers.google.com/authorized-buyers/rtb/downloads/publisher-verticals
  NumericTargetingDimension? verticalTargeting;

  /// Targeting on a subset of site inventory.
  ///
  /// If WEB is listed in included_environments, the specified targeting is
  /// applied. A maximum of 50,000 site URLs can be targeted. An unset value for
  /// targeting allows all web-based bid requests to be sent. Sites can either
  /// be targeting positively (bid requests will be sent only if the destination
  /// site is listed in the targeting dimension) or negatively (bid requests
  /// will be sent only if the destination site is not listed in the
  /// pretargeting configuration).
  StringTargetingDimension? webTargeting;

  PretargetingConfig({
    this.allowedUserTargetingModes,
    this.appTargeting,
    this.billingId,
    this.displayName,
    this.excludedContentLabelIds,
    this.geoTargeting,
    this.includedCreativeDimensions,
    this.includedEnvironments,
    this.includedFormats,
    this.includedLanguages,
    this.includedMobileOperatingSystemIds,
    this.includedPlatforms,
    this.includedUserIdTypes,
    this.interstitialTargeting,
    this.invalidGeoIds,
    this.maximumQps,
    this.minimumViewabilityDecile,
    this.name,
    this.publisherTargeting,
    this.state,
    this.userListTargeting,
    this.verticalTargeting,
    this.webTargeting,
  });

  PretargetingConfig.fromJson(core.Map json_)
      : this(
          allowedUserTargetingModes:
              json_.containsKey('allowedUserTargetingModes')
                  ? (json_['allowedUserTargetingModes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          appTargeting: json_.containsKey('appTargeting')
              ? AppTargeting.fromJson(
                  json_['appTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          billingId: json_.containsKey('billingId')
              ? json_['billingId'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          excludedContentLabelIds: json_.containsKey('excludedContentLabelIds')
              ? (json_['excludedContentLabelIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          geoTargeting: json_.containsKey('geoTargeting')
              ? NumericTargetingDimension.fromJson(
                  json_['geoTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
          includedCreativeDimensions:
              json_.containsKey('includedCreativeDimensions')
                  ? (json_['includedCreativeDimensions'] as core.List)
                      .map((value) => CreativeDimensions.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          includedEnvironments: json_.containsKey('includedEnvironments')
              ? (json_['includedEnvironments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedFormats: json_.containsKey('includedFormats')
              ? (json_['includedFormats'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedLanguages: json_.containsKey('includedLanguages')
              ? (json_['includedLanguages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedMobileOperatingSystemIds:
              json_.containsKey('includedMobileOperatingSystemIds')
                  ? (json_['includedMobileOperatingSystemIds'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          includedPlatforms: json_.containsKey('includedPlatforms')
              ? (json_['includedPlatforms'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includedUserIdTypes: json_.containsKey('includedUserIdTypes')
              ? (json_['includedUserIdTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          interstitialTargeting: json_.containsKey('interstitialTargeting')
              ? json_['interstitialTargeting'] as core.String
              : null,
          invalidGeoIds: json_.containsKey('invalidGeoIds')
              ? (json_['invalidGeoIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          maximumQps: json_.containsKey('maximumQps')
              ? json_['maximumQps'] as core.String
              : null,
          minimumViewabilityDecile:
              json_.containsKey('minimumViewabilityDecile')
                  ? json_['minimumViewabilityDecile'] as core.int
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publisherTargeting: json_.containsKey('publisherTargeting')
              ? StringTargetingDimension.fromJson(json_['publisherTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          userListTargeting: json_.containsKey('userListTargeting')
              ? NumericTargetingDimension.fromJson(json_['userListTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          verticalTargeting: json_.containsKey('verticalTargeting')
              ? NumericTargetingDimension.fromJson(json_['verticalTargeting']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webTargeting: json_.containsKey('webTargeting')
              ? StringTargetingDimension.fromJson(
                  json_['webTargeting'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedUserTargetingModes != null)
          'allowedUserTargetingModes': allowedUserTargetingModes!,
        if (appTargeting != null) 'appTargeting': appTargeting!,
        if (billingId != null) 'billingId': billingId!,
        if (displayName != null) 'displayName': displayName!,
        if (excludedContentLabelIds != null)
          'excludedContentLabelIds': excludedContentLabelIds!,
        if (geoTargeting != null) 'geoTargeting': geoTargeting!,
        if (includedCreativeDimensions != null)
          'includedCreativeDimensions': includedCreativeDimensions!,
        if (includedEnvironments != null)
          'includedEnvironments': includedEnvironments!,
        if (includedFormats != null) 'includedFormats': includedFormats!,
        if (includedLanguages != null) 'includedLanguages': includedLanguages!,
        if (includedMobileOperatingSystemIds != null)
          'includedMobileOperatingSystemIds': includedMobileOperatingSystemIds!,
        if (includedPlatforms != null) 'includedPlatforms': includedPlatforms!,
        if (includedUserIdTypes != null)
          'includedUserIdTypes': includedUserIdTypes!,
        if (interstitialTargeting != null)
          'interstitialTargeting': interstitialTargeting!,
        if (invalidGeoIds != null) 'invalidGeoIds': invalidGeoIds!,
        if (maximumQps != null) 'maximumQps': maximumQps!,
        if (minimumViewabilityDecile != null)
          'minimumViewabilityDecile': minimumViewabilityDecile!,
        if (name != null) 'name': name!,
        if (publisherTargeting != null)
          'publisherTargeting': publisherTargeting!,
        if (state != null) 'state': state!,
        if (userListTargeting != null) 'userListTargeting': userListTargeting!,
        if (verticalTargeting != null) 'verticalTargeting': verticalTargeting!,
        if (webTargeting != null) 'webTargeting': webTargeting!,
      };
}

/// An Open Bidding exchange's connection to a publisher.
///
/// This is initiated by the publisher for the bidder to review. If approved by
/// the bidder, this means that the bidder agrees to receive bid requests from
/// the publisher.
class PublisherConnection {
  /// Whether the publisher has been approved by the bidder.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : An unspecified bidding status.
  /// - "PENDING" : Indicates a request for connection from the publisher that
  /// the bidder needs to review.
  /// - "REJECTED" : Indicates that the publisher was rejected.
  /// - "APPROVED" : Indicates that the publisher was approved.
  core.String? biddingState;

  /// The time at which the publisher initiated a connection with the bidder
  /// (irrespective of if or when the bidder approves it).
  ///
  /// This is subsequently updated if the publisher revokes and re-initiates the
  /// connection.
  ///
  /// Output only.
  core.String? createTime;

  /// Publisher display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Name of the publisher connection.
  ///
  /// This follows the pattern
  /// `bidders/{bidder}/publisherConnections/{publisher}`, where `{bidder}`
  /// represents the account ID of the bidder, and `{publisher}` is the
  /// ads.txt/app-ads.txt publisher ID.
  ///
  /// Output only.
  core.String? name;

  /// Whether the publisher is an Ad Manager or AdMob publisher.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PUBLISHER_PLATFORM_UNSPECIFIED" : An unspecified publisher platform.
  /// - "GOOGLE_AD_MANAGER" : A Google Ad Manager publisher.
  /// - "ADMOB" : An AdMob publisher.
  core.String? publisherPlatform;

  PublisherConnection({
    this.biddingState,
    this.createTime,
    this.displayName,
    this.name,
    this.publisherPlatform,
  });

  PublisherConnection.fromJson(core.Map json_)
      : this(
          biddingState: json_.containsKey('biddingState')
              ? json_['biddingState'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          publisherPlatform: json_.containsKey('publisherPlatform')
              ? json_['publisherPlatform'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (biddingState != null) 'biddingState': biddingState!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (publisherPlatform != null) 'publisherPlatform': publisherPlatform!,
      };
}

/// A request to stop targeting the provided apps in a specific pretargeting
/// configuration.
///
/// The pretargeting configuration itself specifies how these apps are targeted.
/// in PretargetingConfig.appTargeting.mobileAppTargeting.
class RemoveTargetedAppsRequest {
  /// A list of app IDs to stop targeting in the pretargeting configuration.
  ///
  /// These values will be removed from the list of targeted app IDs in
  /// PretargetingConfig.appTargeting.mobileAppTargeting.values.
  core.List<core.String>? appIds;

  RemoveTargetedAppsRequest({
    this.appIds,
  });

  RemoveTargetedAppsRequest.fromJson(core.Map json_)
      : this(
          appIds: json_.containsKey('appIds')
              ? (json_['appIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appIds != null) 'appIds': appIds!,
      };
}

/// A request to stop targeting publishers in a specific configuration.
///
/// The pretargeting configuration itself specifies how these publishers are
/// targeted in PretargetingConfig.publisherTargeting.
class RemoveTargetedPublishersRequest {
  /// A list of publisher IDs to stop targeting in the pretargeting
  /// configuration.
  ///
  /// These values will be removed from the list of targeted publisher IDs in
  /// PretargetingConfig.publisherTargeting.values. Publishers are identified by
  /// their publisher ID from ads.txt / app-ads.txt. See
  /// https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/
  /// for more details.
  core.List<core.String>? publisherIds;

  RemoveTargetedPublishersRequest({
    this.publisherIds,
  });

  RemoveTargetedPublishersRequest.fromJson(core.Map json_)
      : this(
          publisherIds: json_.containsKey('publisherIds')
              ? (json_['publisherIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publisherIds != null) 'publisherIds': publisherIds!,
      };
}

/// A request to stop targeting sites in a specific pretargeting configuration.
///
/// The pretargeting configuration itself specifies how these sites are targeted
/// in PretargetingConfig.webTargeting.
class RemoveTargetedSitesRequest {
  /// A list of site URLs to stop targeting in the pretargeting configuration.
  ///
  /// These values will be removed from the list of targeted URLs in
  /// PretargetingConfig.webTargeting.values.
  core.List<core.String>? sites;

  RemoveTargetedSitesRequest({
    this.sites,
  });

  RemoveTargetedSitesRequest.fromJson(core.Map json_)
      : this(
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sites != null) 'sites': sites!,
      };
}

/// Generic targeting with string values used in app, website and publisher
/// targeting.
class StringTargetingDimension {
  /// How the items in this list should be targeted.
  /// Possible string values are:
  /// - "TARGETING_MODE_UNSPECIFIED" : Placeholder for undefined targeting mode.
  /// - "INCLUSIVE" : The inclusive list type. Inventory must match an item in
  /// this list to be targeted.
  /// - "EXCLUSIVE" : The exclusive list type. Inventory must not match any item
  /// in this list to be targeted.
  core.String? targetingMode;

  /// The values specified.
  core.List<core.String>? values;

  StringTargetingDimension({
    this.targetingMode,
    this.values,
  });

  StringTargetingDimension.fromJson(core.Map json_)
      : this(
          targetingMode: json_.containsKey('targetingMode')
              ? json_['targetingMode'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetingMode != null) 'targetingMode': targetingMode!,
        if (values != null) 'values': values!,
      };
}

/// A request to suspend a pretargeting configuration.
///
/// Sets the configuration's state to SUSPENDED.
typedef SuspendPretargetingConfigRequest = $Empty;

/// The URL-level breakdown for the download size.
class UrlDownloadSize {
  /// Download size of the URL in kilobytes.
  core.int? downloadSizeKb;

  /// The normalized URL with query parameters and fragment removed.
  core.String? normalizedUrl;

  UrlDownloadSize({
    this.downloadSizeKb,
    this.normalizedUrl,
  });

  UrlDownloadSize.fromJson(core.Map json_)
      : this(
          downloadSizeKb: json_.containsKey('downloadSizeKb')
              ? json_['downloadSizeKb'] as core.int
              : null,
          normalizedUrl: json_.containsKey('normalizedUrl')
              ? json_['normalizedUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (downloadSizeKb != null) 'downloadSizeKb': downloadSizeKb!,
        if (normalizedUrl != null) 'normalizedUrl': normalizedUrl!,
      };
}

/// Represents the URL restriction (for the URL captured by the pixel callback)
/// for a user list.
class UrlRestriction {
  /// End date (if specified) of the URL restriction.
  ///
  /// End date should be later than the start date for the date range to be
  /// valid.
  Date? endDate;

  /// The restriction type for the specified URL.
  /// Possible string values are:
  /// - "RESTRICTION_TYPE_UNSPECIFIED" : Default value that should never be
  /// used.
  /// - "CONTAINS" : The tag URL (as recorded by the pixel callback) contains
  /// the specified URL.
  /// - "EQUALS" : The tag URL (as recorded by the pixel callback) exactly
  /// matches the specified URL.
  /// - "STARTS_WITH" : The tag URL (as recorded by the pixel callback) starts
  /// with the specified URL.
  /// - "ENDS_WITH" : The tag URL (as recorded by the pixel callback) ends with
  /// the specified URL.
  /// - "DOES_NOT_EQUAL" : The tag URL (as recorded by the pixel callback) does
  /// not equal the specified URL.
  /// - "DOES_NOT_CONTAIN" : The tag URL (as recorded by the pixel callback)
  /// does not contain the specified URL.
  /// - "DOES_NOT_START_WITH" : The tag URL (as recorded by the pixel callback)
  /// does not start with the specified URL.
  /// - "DOES_NOT_END_WITH" : The tag URL (as recorded by the pixel callback)
  /// does not end with the specified URL.
  core.String? restrictionType;

  /// Start date (if specified) of the URL restriction.
  Date? startDate;

  /// The URL to use for applying the restriction on the user list.
  ///
  /// Required.
  core.String? url;

  UrlRestriction({
    this.endDate,
    this.restrictionType,
    this.startDate,
    this.url,
  });

  UrlRestriction.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          restrictionType: json_.containsKey('restrictionType')
              ? json_['restrictionType'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (restrictionType != null) 'restrictionType': restrictionType!,
        if (startDate != null) 'startDate': startDate!,
        if (url != null) 'url': url!,
      };
}

/// Represents an Authorized Buyers user list.
///
/// Authorized Buyers can create/update/list user lists. Once a user list is
/// created in the system, Authorized Buyers can add users to the user list
/// using the bulk uploader API. Alternatively, users can be added by hosting a
/// tag on the advertiser's page.
class UserList {
  /// The description for the user list.
  core.String? description;

  /// Display name of the user list.
  ///
  /// This must be unique across all user lists for a given account.
  ///
  /// Required.
  core.String? displayName;

  /// The number of days a user's cookie stays on the user list.
  ///
  /// The field must be between 0 and 540 inclusive.
  ///
  /// Required.
  core.String? membershipDurationDays;

  /// Name of the user list that must follow the pattern
  /// `buyers/{buyer}/userLists/{user_list}`, where `{buyer}` represents the
  /// account ID of the buyer who owns the user list.
  ///
  /// For a bidder accessing user lists on behalf of a child seat buyer,
  /// `{buyer}` represents the account ID of the child seat buyer. `{user_list}`
  /// is an int64 identifier assigned by Google to uniquely identify a user
  /// list.
  ///
  /// Output only.
  core.String? name;

  /// The status of the user list.
  ///
  /// A new user list starts out as open.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Default value that should never be used.
  /// - "OPEN" : New users can be added to the user list.
  /// - "CLOSED" : New users cannot be added to the user list.
  core.String? status;

  /// The URL restriction for the user list.
  ///
  /// Required.
  UrlRestriction? urlRestriction;

  UserList({
    this.description,
    this.displayName,
    this.membershipDurationDays,
    this.name,
    this.status,
    this.urlRestriction,
  });

  UserList.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          membershipDurationDays: json_.containsKey('membershipDurationDays')
              ? json_['membershipDurationDays'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          urlRestriction: json_.containsKey('urlRestriction')
              ? UrlRestriction.fromJson(json_['urlRestriction']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (membershipDurationDays != null)
          'membershipDurationDays': membershipDurationDays!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (urlRestriction != null) 'urlRestriction': urlRestriction!,
      };
}

/// Video content for a creative.
class VideoContent {
  /// Video metadata.
  ///
  /// Output only.
  VideoMetadata? videoMetadata;

  /// The URL to fetch a video ad.
  core.String? videoUrl;

  /// The contents of a VAST document for a video ad.
  ///
  /// This document should conform to the VAST 2.0 or 3.0 standard.
  core.String? videoVastXml;

  VideoContent({
    this.videoMetadata,
    this.videoUrl,
    this.videoVastXml,
  });

  VideoContent.fromJson(core.Map json_)
      : this(
          videoMetadata: json_.containsKey('videoMetadata')
              ? VideoMetadata.fromJson(
                  json_['videoMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          videoUrl: json_.containsKey('videoUrl')
              ? json_['videoUrl'] as core.String
              : null,
          videoVastXml: json_.containsKey('videoVastXml')
              ? json_['videoVastXml'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (videoMetadata != null) 'videoMetadata': videoMetadata!,
        if (videoUrl != null) 'videoUrl': videoUrl!,
        if (videoVastXml != null) 'videoVastXml': videoVastXml!,
      };
}

/// Video metadata for a creative.
class VideoMetadata {
  /// The duration of the ad.
  ///
  /// Can be used to filter the response of the creatives.list method.
  core.String? duration;

  /// Is this a valid VAST ad? Can be used to filter the response of the
  /// creatives.list method.
  core.bool? isValidVast;

  /// Is this a VPAID ad? Can be used to filter the response of the
  /// creatives.list method.
  core.bool? isVpaid;

  /// The list of all media files declared in the VAST.
  ///
  /// If there are multiple VASTs in a wrapper chain, this includes the media
  /// files from the deepest one in the chain.
  core.List<MediaFile>? mediaFiles;

  /// The minimum duration that the user has to watch before being able to skip
  /// this ad.
  ///
  /// If the field is not set, the ad is not skippable. If the field is set, the
  /// ad is skippable. Can be used to filter the response of the creatives.list
  /// method.
  core.String? skipOffset;

  /// The maximum VAST version across all wrapped VAST documents.
  ///
  /// Can be used to filter the response of the creatives.list method.
  /// Possible string values are:
  /// - "VAST_VERSION_UNSPECIFIED" : Default value that should never be used.
  /// - "VAST_VERSION_1_0" : VAST 1.0
  /// - "VAST_VERSION_2_0" : VAST 2.0
  /// - "VAST_VERSION_3_0" : VAST 3.0
  /// - "VAST_VERSION_4_0" : VAST 4.0
  core.String? vastVersion;

  VideoMetadata({
    this.duration,
    this.isValidVast,
    this.isVpaid,
    this.mediaFiles,
    this.skipOffset,
    this.vastVersion,
  });

  VideoMetadata.fromJson(core.Map json_)
      : this(
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          isValidVast: json_.containsKey('isValidVast')
              ? json_['isValidVast'] as core.bool
              : null,
          isVpaid: json_.containsKey('isVpaid')
              ? json_['isVpaid'] as core.bool
              : null,
          mediaFiles: json_.containsKey('mediaFiles')
              ? (json_['mediaFiles'] as core.List)
                  .map((value) => MediaFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          skipOffset: json_.containsKey('skipOffset')
              ? json_['skipOffset'] as core.String
              : null,
          vastVersion: json_.containsKey('vastVersion')
              ? json_['vastVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (duration != null) 'duration': duration!,
        if (isValidVast != null) 'isValidVast': isValidVast!,
        if (isVpaid != null) 'isVpaid': isVpaid!,
        if (mediaFiles != null) 'mediaFiles': mediaFiles!,
        if (skipOffset != null) 'skipOffset': skipOffset!,
        if (vastVersion != null) 'vastVersion': vastVersion!,
      };
}

/// A request to receive push notifications when any of the creatives belonging
/// to the bidder changes status.
typedef WatchCreativesRequest = $Empty;

/// A response for the request to receive push notification when a bidder's
/// creatives change status.
class WatchCreativesResponse {
  /// The Pub/Sub subscription that can be used to pull creative status
  /// notifications.
  ///
  /// This would be of the format
  /// `projects/{project_id}/subscriptions/{subscription_id}`. Subscription is
  /// created with pull delivery. All service accounts belonging to the bidder
  /// will have read access to this subscription. Subscriptions that are
  /// inactive for more than 90 days will be disabled. Use watchCreatives to
  /// re-enable the subscription.
  core.String? subscription;

  /// The Pub/Sub topic that will be used to publish creative serving status
  /// notifications.
  ///
  /// This would be of the format `projects/{project_id}/topics/{topic_id}`.
  core.String? topic;

  WatchCreativesResponse({
    this.subscription,
    this.topic,
  });

  WatchCreativesResponse.fromJson(core.Map json_)
      : this(
          subscription: json_.containsKey('subscription')
              ? json_['subscription'] as core.String
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
        if (topic != null) 'topic': topic!,
      };
}
