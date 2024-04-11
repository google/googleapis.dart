// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// AdSense Management API - v2
///
/// The AdSense Management API allows publishers to access their inventory and
/// run earnings and performance reports.
///
/// For more information, see
/// <https://developers.google.com/adsense/management/>
///
/// Create an instance of [AdsenseApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAdclientsResource]
///     - [AccountsAdclientsAdunitsResource]
///     - [AccountsAdclientsCustomchannelsResource]
///     - [AccountsAdclientsUrlchannelsResource]
///   - [AccountsAlertsResource]
///   - [AccountsPaymentsResource]
///   - [AccountsPolicyIssuesResource]
///   - [AccountsReportsResource]
///     - [AccountsReportsSavedResource]
///   - [AccountsSitesResource]
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

/// The AdSense Management API allows publishers to access their inventory and
/// run earnings and performance reports.
class AdsenseApi {
  /// View and manage your AdSense data
  static const adsenseScope = 'https://www.googleapis.com/auth/adsense';

  /// View your AdSense data
  static const adsenseReadonlyScope =
      'https://www.googleapis.com/auth/adsense.readonly';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  AdsenseApi(http.Client client,
      {core.String rootUrl = 'https://adsense.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsResource get adclients =>
      AccountsAdclientsResource(_requester);
  AccountsAlertsResource get alerts => AccountsAlertsResource(_requester);
  AccountsPaymentsResource get payments => AccountsPaymentsResource(_requester);
  AccountsPolicyIssuesResource get policyIssues =>
      AccountsPolicyIssuesResource(_requester);
  AccountsReportsResource get reports => AccountsReportsResource(_requester);
  AccountsSitesResource get sites => AccountsSitesResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about the selected AdSense account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Account to get information about. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the ad blocking recovery tag of an account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to get the tag for. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdBlockingRecoveryTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdBlockingRecoveryTag> getAdBlockingRecoveryTag(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$name') + '/adBlockingRecoveryTag';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdBlockingRecoveryTag.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all accounts available to this user.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of accounts to include in the response,
  /// used for paging. If unspecified, at most 10000 accounts will be returned.
  /// The maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAccounts` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAccounts` must match the call that provided
  /// the page token.
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
  async.Future<ListAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all accounts directly managed by the given AdSense account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent account, which owns the child accounts.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of accounts to include in the response,
  /// used for paging. If unspecified, at most 10000 accounts will be returned.
  /// The maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListChildAccounts`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListChildAccounts` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChildAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChildAccountsResponse> listChildAccounts(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':listChildAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListChildAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsAdunitsResource get adunits =>
      AccountsAdclientsAdunitsResource(_requester);
  AccountsAdclientsCustomchannelsResource get customchannels =>
      AccountsAdclientsCustomchannelsResource(_requester);
  AccountsAdclientsUrlchannelsResource get urlchannels =>
      AccountsAdclientsUrlchannelsResource(_requester);

  AccountsAdclientsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the ad client from the given resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ad client to retrieve. Format:
  /// accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdClient].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdClient> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClient.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the AdSense code for a given ad client.
  ///
  /// This returns what was previously known as the 'auto ad code'. This is only
  /// supported for ad clients with a product_code of AFC. For more information,
  /// see
  /// [About the AdSense code](https://support.google.com/adsense/answer/9274634).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the ad client for which to get the adcode.
  /// Format: accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdClientAdCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdClientAdCode> getAdcode(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/adcode';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClientAdCode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the ad clients available in an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the collection of ad clients.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad clients to include in the response,
  /// used for paging. If unspecified, at most 10000 ad clients will be
  /// returned. The maximum value is 10000; values above 10000 will be coerced
  /// to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAdClients` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAdClients` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdClientsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdClientsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/adclients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdClientsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsAdunitsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsAdunitsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates an ad unit.
  ///
  /// This method can be called only by a restricted set of projects, which are
  /// usually owned by
  /// [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
  /// publishers. Contact your account manager if you need to use this method.
  /// Note that ad units can only be created for ad clients with an "AFC"
  /// product code. For more info see the \[AdClient
  /// resource\](/adsense/management/reference/rest/v2/accounts.adclients). For
  /// now, this method can only be used to create `DISPLAY` ad units. See:
  /// https://support.google.com/adsense/answer/9183566
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Ad client to create an ad unit under. Format:
  /// accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnit> create(
    AdUnit request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/adunits';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an ad unit from a specified account and ad client.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. AdUnit to get information about. Format:
  /// accounts/{account}/adclients/{adclient}/adunits/{adunit}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/adunits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnit> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the ad unit code for a given ad unit.
  ///
  /// For more information, see
  /// [About the AdSense code](https://support.google.com/adsense/answer/9274634)
  /// and
  /// [Where to place the ad code in your HTML](https://support.google.com/adsense/answer/9190028).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the adunit for which to get the adcode. Format:
  /// accounts/{account}/adclients/{adclient}/adunits/{adunit}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/adunits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnitAdCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnitAdCode> getAdcode(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/adcode';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdUnitAdCode.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all ad units under a specified account and ad client.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ad client which owns the collection of ad units.
  /// Format: accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad units to include in the response,
  /// used for paging. If unspecified, at most 10000 ad units will be returned.
  /// The maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAdUnits` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAdUnits` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdUnitsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/adunits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdUnitsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the custom channels available for an ad unit.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ad unit which owns the collection of custom
  /// channels. Format: accounts/{account}/adclients/{adclient}/adunits/{adunit}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/adunits/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of custom channels to include in the
  /// response, used for paging. If unspecified, at most 10000 custom channels
  /// will be returned. The maximum value is 10000; values above 10000 will be
  /// coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListLinkedCustomChannels` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListLinkedCustomChannels` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLinkedCustomChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLinkedCustomChannelsResponse> listLinkedCustomChannels(
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
        'v2/' + core.Uri.encodeFull('$parent') + ':listLinkedCustomChannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLinkedCustomChannelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an ad unit.
  ///
  /// This method can be called only by a restricted set of projects, which are
  /// usually owned by
  /// [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
  /// publishers. Contact your account manager if you need to use this method.
  /// For now, this method can only be used to update `DISPLAY` ad units. See:
  /// https://support.google.com/adsense/answer/9183566
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the ad unit. Format:
  /// accounts/{account}/adclients/{adclient}/adunits/{adunit}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/adunits/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. If empty, a full update is
  /// performed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnit].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnit> patch(
    AdUnit request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsCustomchannelsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsCustomchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a custom channel.
  ///
  /// This method can be called only by a restricted set of projects, which are
  /// usually owned by
  /// [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
  /// publishers. Contact your account manager if you need to use this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ad client to create a custom channel under.
  /// Format: accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannel> create(
    CustomChannel request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customchannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a custom channel.
  ///
  /// This method can be called only by a restricted set of projects, which are
  /// usually owned by
  /// [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
  /// publishers. Contact your account manager if you need to use this method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom channel to delete. Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/customchannels/\[^/\]+$`.
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

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about the selected custom channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the custom channel. Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/customchannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the custom channels available in an ad client.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ad client which owns the collection of custom
  /// channels. Format: accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of custom channels to include in the
  /// response, used for paging. If unspecified, at most 10000 custom channels
  /// will be returned. The maximum value is 10000; values above 10000 will be
  /// coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListCustomChannels`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListCustomChannels` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomChannelsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/customchannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomChannelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the ad units available for a custom channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The custom channel which owns the collection of ad
  /// units. Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/customchannels/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad units to include in the response,
  /// used for paging. If unspecified, at most 10000 ad units will be returned.
  /// The maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListLinkedAdUnits`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListLinkedAdUnits` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLinkedAdUnitsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLinkedAdUnitsResponse> listLinkedAdUnits(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + ':listLinkedAdUnits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLinkedAdUnitsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a custom channel.
  ///
  /// This method can be called only by a restricted set of projects, which are
  /// usually owned by
  /// [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
  /// publishers. Contact your account manager if you need to use this method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the custom channel. Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/customchannels/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. If empty, a full update is
  /// performed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannel> patch(
    CustomChannel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsUrlchannelsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsUrlchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about the selected url channel.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the url channel to retrieve. Format:
  /// accounts/{account}/adclients/{adclient}/urlchannels/{urlchannel}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/adclients/\[^/\]+/urlchannels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UrlChannel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UrlChannel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UrlChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists active url channels.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The ad client which owns the collection of url
  /// channels. Format: accounts/{account}/adclients/{adclient}
  /// Value must have pattern `^accounts/\[^/\]+/adclients/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of url channels to include in the
  /// response, used for paging. If unspecified, at most 10000 url channels will
  /// be returned. The maximum value is 10000; values above 10000 will be
  /// coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListUrlChannels`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListUrlChannels` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUrlChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUrlChannelsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/urlchannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUrlChannelsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAlertsResource {
  final commons.ApiRequester _requester;

  AccountsAlertsResource(commons.ApiRequester client) : _requester = client;

  /// Lists all the alerts available in an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the collection of alerts.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [languageCode] - The language to use for translating alert messages. If
  /// unspecified, this defaults to the user's display language. If the given
  /// language is not supported, alerts will be returned in English. The
  /// language is specified as an \[IETF BCP-47 language
  /// code\](https://en.wikipedia.org/wiki/IETF_language_tag).
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
    core.String parent, {
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/alerts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAlertsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsPaymentsResource {
  final commons.ApiRequester _requester;

  AccountsPaymentsResource(commons.ApiRequester client) : _requester = client;

  /// Lists all the payments available for an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the collection of payments.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPaymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPaymentsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/payments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPaymentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsPolicyIssuesResource {
  final commons.ApiRequester _requester;

  AccountsPolicyIssuesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about the selected policy issue.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the policy issue. Format:
  /// accounts/{account}/policyIssues/{policy_issue}
  /// Value must have pattern `^accounts/\[^/\]+/policyIssues/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PolicyIssue].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PolicyIssue> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PolicyIssue.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the policy issues for the specified account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account for which policy issues are being
  /// retrieved. Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of policy issues to include in the
  /// response, used for paging. If unspecified, at most 10000 policy issues
  /// will be returned. The maximum value is 10000; values above 10000 will be
  /// coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListPolicyIssues`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPolicyIssues` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPolicyIssuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPolicyIssuesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/policyIssues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPolicyIssuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportsResource {
  final commons.ApiRequester _requester;

  AccountsReportsSavedResource get saved =>
      AccountsReportsSavedResource(_requester);

  AccountsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generates an ad hoc report.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The account which owns the collection of reports.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [currencyCode] - The \[ISO-4217 currency
  /// code\](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on
  /// monetary metrics. Defaults to the account's currency if not set.
  ///
  /// [dateRange] - Date range of the report, if unset the range will be
  /// considered CUSTOM.
  /// Possible string values are:
  /// - "REPORTING_DATE_RANGE_UNSPECIFIED" : Unspecified date range.
  /// - "CUSTOM" : A custom date range specified using the `start_date` and
  /// `end_date` fields. This is the default if no ReportingDateRange is
  /// provided.
  /// - "TODAY" : Current day.
  /// - "YESTERDAY" : Yesterday.
  /// - "MONTH_TO_DATE" : From the start of the current month to the current
  /// day. e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-03-01, 2020-03-12\].
  /// - "YEAR_TO_DATE" : From the start of the current year to the current day.
  /// e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-01-01, 2020-03-12\].
  /// - "LAST_7_DAYS" : Last 7 days, excluding current day.
  /// - "LAST_30_DAYS" : Last 30 days, excluding current day.
  ///
  /// [dimensions] - Dimensions to base the report on.
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [filters] - A list of \[filters\](/adsense/management/reporting/filtering)
  /// to apply to the report. All provided filters must match in order for the
  /// data to be included in the report.
  ///
  /// [languageCode] - The language to use for translating report output. If
  /// unspecified, this defaults to English ("en"). If the given language is not
  /// supported, report output will be returned in English. The language is
  /// specified as an \[IETF BCP-47 language
  /// code\](https://en.wikipedia.org/wiki/IETF_language_tag).
  ///
  /// [limit] - The maximum number of rows of report data to return. Reports
  /// producing more rows than the requested limit will be truncated. If unset,
  /// this defaults to 100,000 rows for `Reports.GenerateReport` and 1,000,000
  /// rows for `Reports.GenerateCsvReport`, which are also the maximum values
  /// permitted here. Report truncation can be identified (for
  /// `Reports.GenerateReport` only) by comparing the number of rows returned to
  /// the value returned in `total_matched_rows`.
  ///
  /// [metrics] - Required. Reporting metrics.
  ///
  /// [orderBy] - The name of a dimension or metric to sort the resulting report
  /// on, can be prefixed with "+" to sort ascending or "-" to sort descending.
  /// If no prefix is specified, the column is sorted ascending.
  ///
  /// [reportingTimeZone] - Timezone in which to generate the report. If
  /// unspecified, this defaults to the account timezone. For more information,
  /// see
  /// [changing the time zone of your reports](https://support.google.com/adsense/answer/9830725).
  /// Possible string values are:
  /// - "REPORTING_TIME_ZONE_UNSPECIFIED" : Unspecified timezone.
  /// - "ACCOUNT_TIME_ZONE" : Use the account timezone in the report.
  /// - "GOOGLE_TIME_ZONE" : Use the Google timezone in the report
  /// (America/Los_Angeles).
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportResult> generate(
    core.String account, {
    core.String? currencyCode,
    core.String? dateRange,
    core.List<core.String>? dimensions,
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.List<core.String>? filters,
    core.String? languageCode,
    core.int? limit,
    core.List<core.String>? metrics,
    core.List<core.String>? orderBy,
    core.String? reportingTimeZone,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (dateRange != null) 'dateRange': [dateRange],
      if (dimensions != null) 'dimensions': dimensions,
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (filters != null) 'filters': filters,
      if (languageCode != null) 'languageCode': [languageCode],
      if (limit != null) 'limit': ['${limit}'],
      if (metrics != null) 'metrics': metrics,
      if (orderBy != null) 'orderBy': orderBy,
      if (reportingTimeZone != null) 'reportingTimeZone': [reportingTimeZone],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$account') + '/reports:generate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReportResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a csv formatted ad hoc report.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The account which owns the collection of reports.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [currencyCode] - The \[ISO-4217 currency
  /// code\](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on
  /// monetary metrics. Defaults to the account's currency if not set.
  ///
  /// [dateRange] - Date range of the report, if unset the range will be
  /// considered CUSTOM.
  /// Possible string values are:
  /// - "REPORTING_DATE_RANGE_UNSPECIFIED" : Unspecified date range.
  /// - "CUSTOM" : A custom date range specified using the `start_date` and
  /// `end_date` fields. This is the default if no ReportingDateRange is
  /// provided.
  /// - "TODAY" : Current day.
  /// - "YESTERDAY" : Yesterday.
  /// - "MONTH_TO_DATE" : From the start of the current month to the current
  /// day. e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-03-01, 2020-03-12\].
  /// - "YEAR_TO_DATE" : From the start of the current year to the current day.
  /// e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-01-01, 2020-03-12\].
  /// - "LAST_7_DAYS" : Last 7 days, excluding current day.
  /// - "LAST_30_DAYS" : Last 30 days, excluding current day.
  ///
  /// [dimensions] - Dimensions to base the report on.
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [filters] - A list of \[filters\](/adsense/management/reporting/filtering)
  /// to apply to the report. All provided filters must match in order for the
  /// data to be included in the report.
  ///
  /// [languageCode] - The language to use for translating report output. If
  /// unspecified, this defaults to English ("en"). If the given language is not
  /// supported, report output will be returned in English. The language is
  /// specified as an \[IETF BCP-47 language
  /// code\](https://en.wikipedia.org/wiki/IETF_language_tag).
  ///
  /// [limit] - The maximum number of rows of report data to return. Reports
  /// producing more rows than the requested limit will be truncated. If unset,
  /// this defaults to 100,000 rows for `Reports.GenerateReport` and 1,000,000
  /// rows for `Reports.GenerateCsvReport`, which are also the maximum values
  /// permitted here. Report truncation can be identified (for
  /// `Reports.GenerateReport` only) by comparing the number of rows returned to
  /// the value returned in `total_matched_rows`.
  ///
  /// [metrics] - Required. Reporting metrics.
  ///
  /// [orderBy] - The name of a dimension or metric to sort the resulting report
  /// on, can be prefixed with "+" to sort ascending or "-" to sort descending.
  /// If no prefix is specified, the column is sorted ascending.
  ///
  /// [reportingTimeZone] - Timezone in which to generate the report. If
  /// unspecified, this defaults to the account timezone. For more information,
  /// see
  /// [changing the time zone of your reports](https://support.google.com/adsense/answer/9830725).
  /// Possible string values are:
  /// - "REPORTING_TIME_ZONE_UNSPECIFIED" : Unspecified timezone.
  /// - "ACCOUNT_TIME_ZONE" : Use the account timezone in the report.
  /// - "GOOGLE_TIME_ZONE" : Use the Google timezone in the report
  /// (America/Los_Angeles).
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> generateCsv(
    core.String account, {
    core.String? currencyCode,
    core.String? dateRange,
    core.List<core.String>? dimensions,
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.List<core.String>? filters,
    core.String? languageCode,
    core.int? limit,
    core.List<core.String>? metrics,
    core.List<core.String>? orderBy,
    core.String? reportingTimeZone,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (dateRange != null) 'dateRange': [dateRange],
      if (dimensions != null) 'dimensions': dimensions,
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (filters != null) 'filters': filters,
      if (languageCode != null) 'languageCode': [languageCode],
      if (limit != null) 'limit': ['${limit}'],
      if (metrics != null) 'metrics': metrics,
      if (orderBy != null) 'orderBy': orderBy,
      if (reportingTimeZone != null) 'reportingTimeZone': [reportingTimeZone],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$account') + '/reports:generateCsv';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the saved report from the given resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the saved report to retrieve. Format:
  /// accounts/{account}/reports/{report}
  /// Value must have pattern `^accounts/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedReport> getSaved(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/saved';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SavedReport.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportsSavedResource {
  final commons.ApiRequester _requester;

  AccountsReportsSavedResource(commons.ApiRequester client)
      : _requester = client;

  /// Generates a saved report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the saved report. Format:
  /// accounts/{account}/reports/{report}
  /// Value must have pattern `^accounts/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [currencyCode] - The \[ISO-4217 currency
  /// code\](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on
  /// monetary metrics. Defaults to the account's currency if not set.
  ///
  /// [dateRange] - Date range of the report, if unset the range will be
  /// considered CUSTOM.
  /// Possible string values are:
  /// - "REPORTING_DATE_RANGE_UNSPECIFIED" : Unspecified date range.
  /// - "CUSTOM" : A custom date range specified using the `start_date` and
  /// `end_date` fields. This is the default if no ReportingDateRange is
  /// provided.
  /// - "TODAY" : Current day.
  /// - "YESTERDAY" : Yesterday.
  /// - "MONTH_TO_DATE" : From the start of the current month to the current
  /// day. e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-03-01, 2020-03-12\].
  /// - "YEAR_TO_DATE" : From the start of the current year to the current day.
  /// e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-01-01, 2020-03-12\].
  /// - "LAST_7_DAYS" : Last 7 days, excluding current day.
  /// - "LAST_30_DAYS" : Last 30 days, excluding current day.
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [languageCode] - The language to use for translating report output. If
  /// unspecified, this defaults to English ("en"). If the given language is not
  /// supported, report output will be returned in English. The language is
  /// specified as an \[IETF BCP-47 language
  /// code\](https://en.wikipedia.org/wiki/IETF_language_tag).
  ///
  /// [reportingTimeZone] - Timezone in which to generate the report. If
  /// unspecified, this defaults to the account timezone. For more information,
  /// see
  /// [changing the time zone of your reports](https://support.google.com/adsense/answer/9830725).
  /// Possible string values are:
  /// - "REPORTING_TIME_ZONE_UNSPECIFIED" : Unspecified timezone.
  /// - "ACCOUNT_TIME_ZONE" : Use the account timezone in the report.
  /// - "GOOGLE_TIME_ZONE" : Use the Google timezone in the report
  /// (America/Los_Angeles).
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportResult].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportResult> generate(
    core.String name, {
    core.String? currencyCode,
    core.String? dateRange,
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.String? languageCode,
    core.String? reportingTimeZone,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (dateRange != null) 'dateRange': [dateRange],
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (languageCode != null) 'languageCode': [languageCode],
      if (reportingTimeZone != null) 'reportingTimeZone': [reportingTimeZone],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/saved:generate';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ReportResult.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a csv formatted saved report.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the saved report. Format:
  /// accounts/{account}/reports/{report}
  /// Value must have pattern `^accounts/\[^/\]+/reports/\[^/\]+$`.
  ///
  /// [currencyCode] - The \[ISO-4217 currency
  /// code\](https://en.wikipedia.org/wiki/ISO_4217) to use when reporting on
  /// monetary metrics. Defaults to the account's currency if not set.
  ///
  /// [dateRange] - Date range of the report, if unset the range will be
  /// considered CUSTOM.
  /// Possible string values are:
  /// - "REPORTING_DATE_RANGE_UNSPECIFIED" : Unspecified date range.
  /// - "CUSTOM" : A custom date range specified using the `start_date` and
  /// `end_date` fields. This is the default if no ReportingDateRange is
  /// provided.
  /// - "TODAY" : Current day.
  /// - "YESTERDAY" : Yesterday.
  /// - "MONTH_TO_DATE" : From the start of the current month to the current
  /// day. e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-03-01, 2020-03-12\].
  /// - "YEAR_TO_DATE" : From the start of the current year to the current day.
  /// e.g. if the current date is 2020-03-12 then the range will be
  /// \[2020-01-01, 2020-03-12\].
  /// - "LAST_7_DAYS" : Last 7 days, excluding current day.
  /// - "LAST_30_DAYS" : Last 30 days, excluding current day.
  ///
  /// [endDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [endDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify a
  /// year without a month and day.
  ///
  /// [endDate_year] - Year of the date. Must be from 1 to 9999, or 0 to specify
  /// a date without a year.
  ///
  /// [languageCode] - The language to use for translating report output. If
  /// unspecified, this defaults to English ("en"). If the given language is not
  /// supported, report output will be returned in English. The language is
  /// specified as an \[IETF BCP-47 language
  /// code\](https://en.wikipedia.org/wiki/IETF_language_tag).
  ///
  /// [reportingTimeZone] - Timezone in which to generate the report. If
  /// unspecified, this defaults to the account timezone. For more information,
  /// see
  /// [changing the time zone of your reports](https://support.google.com/adsense/answer/9830725).
  /// Possible string values are:
  /// - "REPORTING_TIME_ZONE_UNSPECIFIED" : Unspecified timezone.
  /// - "ACCOUNT_TIME_ZONE" : Use the account timezone in the report.
  /// - "GOOGLE_TIME_ZONE" : Use the Google timezone in the report
  /// (America/Los_Angeles).
  ///
  /// [startDate_day] - Day of a month. Must be from 1 to 31 and valid for the
  /// year and month, or 0 to specify a year by itself or a year and month where
  /// the day isn't significant.
  ///
  /// [startDate_month] - Month of a year. Must be from 1 to 12, or 0 to specify
  /// a year without a month and day.
  ///
  /// [startDate_year] - Year of the date. Must be from 1 to 9999, or 0 to
  /// specify a date without a year.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> generateCsv(
    core.String name, {
    core.String? currencyCode,
    core.String? dateRange,
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.String? languageCode,
    core.String? reportingTimeZone,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currencyCode != null) 'currencyCode': [currencyCode],
      if (dateRange != null) 'dateRange': [dateRange],
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (languageCode != null) 'languageCode': [languageCode],
      if (reportingTimeZone != null) 'reportingTimeZone': [reportingTimeZone],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + '/saved:generateCsv';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists saved reports.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the collection of reports.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of reports to include in the response,
  /// used for paging. If unspecified, at most 10000 reports will be returned.
  /// The maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSavedReports`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSavedReports` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSavedReportsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSavedReportsResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/reports/saved';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSavedReportsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsSitesResource {
  final commons.ApiRequester _requester;

  AccountsSitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about the selected site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the site. Format:
  /// accounts/{account}/sites/{site}
  /// Value must have pattern `^accounts/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the sites available in an account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the collection of sites.
  /// Format: accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of sites to include in the response, used
  /// for paging. If unspecified, at most 10000 sites will be returned. The
  /// maximum value is 10000; values above 10000 will be coerced to 10000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSites` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListSites` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSitesResponse> list(
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSitesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Representation of an account.
class Account {
  /// Creation time of the account.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name of this account.
  ///
  /// Output only.
  core.String? displayName;

  /// Resource name of the account.
  ///
  /// Format: accounts/pub-\[0-9\]+
  ///
  /// Output only.
  core.String? name;

  /// Outstanding tasks that need to be completed as part of the sign-up process
  /// for a new account.
  ///
  /// e.g. "billing-profile-creation", "phone-pin-verification".
  ///
  /// Output only.
  core.List<core.String>? pendingTasks;

  /// Whether this account is premium.
  ///
  /// Output only.
  core.bool? premium;

  /// State of the account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "READY" : The account is open and ready to serve ads.
  /// - "NEEDS_ATTENTION" : There are some issues with this account. Publishers
  /// should visit AdSense in order to fix the account.
  /// - "CLOSED" : The account is closed and can't serve ads.
  core.String? state;

  /// The account time zone, as used by reporting.
  ///
  /// For more information, see
  /// [changing the time zone of your reports](https://support.google.com/adsense/answer/9830725).
  TimeZone? timeZone;

  Account({
    this.createTime,
    this.displayName,
    this.name,
    this.pendingTasks,
    this.premium,
    this.state,
    this.timeZone,
  });

  Account.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pendingTasks: json_.containsKey('pendingTasks')
              ? (json_['pendingTasks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          premium: json_.containsKey('premium')
              ? json_['premium'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          timeZone: json_.containsKey('timeZone')
              ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (pendingTasks != null) 'pendingTasks': pendingTasks!,
        if (premium != null) 'premium': premium!,
        if (state != null) 'state': state!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Representation of an ad blocking recovery tag.
///
/// See https://support.google.com/adsense/answer/11575177.
class AdBlockingRecoveryTag {
  /// Error protection code that can be used in conjunction with the tag.
  ///
  /// It'll display a message to users if an
  /// [ad blocking extension blocks their access to your site](https://support.google.com/adsense/answer/11575480).
  core.String? errorProtectionCode;

  /// The ad blocking recovery tag.
  ///
  /// Note that the message generated by the tag can be blocked by an ad
  /// blocking extension. If this is not your desired outcome, then you'll need
  /// to use it in conjunction with the error protection code.
  core.String? tag;

  AdBlockingRecoveryTag({
    this.errorProtectionCode,
    this.tag,
  });

  AdBlockingRecoveryTag.fromJson(core.Map json_)
      : this(
          errorProtectionCode: json_.containsKey('errorProtectionCode')
              ? json_['errorProtectionCode'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorProtectionCode != null)
          'errorProtectionCode': errorProtectionCode!,
        if (tag != null) 'tag': tag!,
      };
}

/// Representation of an ad client.
///
/// An ad client represents a user's subscription with a specific AdSense
/// product.
class AdClient {
  /// Resource name of the ad client.
  ///
  /// Format: accounts/{account}/adclients/{adclient}
  ///
  /// Output only.
  core.String? name;

  /// Reporting product code of the ad client.
  ///
  /// For example, "AFC" for AdSense for Content. Corresponds to the
  /// `PRODUCT_CODE` dimension, and present only if the ad client supports
  /// reporting.
  ///
  /// Output only.
  core.String? productCode;

  /// Unique ID of the ad client as used in the `AD_CLIENT_ID` reporting
  /// dimension.
  ///
  /// Present only if the ad client supports reporting.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  /// State of the ad client.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "READY" : The ad client is ready to show ads.
  /// - "GETTING_READY" : Running some checks on the ad client before it is
  /// ready to serve ads.
  /// - "REQUIRES_REVIEW" : The ad client hasn't been checked yet. There are
  /// tasks pending before AdSense will start the review.
  core.String? state;

  AdClient({
    this.name,
    this.productCode,
    this.reportingDimensionId,
    this.state,
  });

  AdClient.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          productCode: json_.containsKey('productCode')
              ? json_['productCode'] as core.String
              : null,
          reportingDimensionId: json_.containsKey('reportingDimensionId')
              ? json_['reportingDimensionId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (productCode != null) 'productCode': productCode!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
        if (state != null) 'state': state!,
      };
}

/// Representation of the AdSense code for a given ad client.
///
/// For more information, see
/// [About the AdSense code](https://support.google.com/adsense/answer/9274634).
class AdClientAdCode {
  /// The AdSense code snippet to add to the head of an HTML page.
  ///
  /// Output only.
  core.String? adCode;

  /// The AdSense code snippet to add to the body of an AMP page.
  ///
  /// Output only.
  core.String? ampBody;

  /// The AdSense code snippet to add to the head of an AMP page.
  ///
  /// Output only.
  core.String? ampHead;

  AdClientAdCode({
    this.adCode,
    this.ampBody,
    this.ampHead,
  });

  AdClientAdCode.fromJson(core.Map json_)
      : this(
          adCode: json_.containsKey('adCode')
              ? json_['adCode'] as core.String
              : null,
          ampBody: json_.containsKey('ampBody')
              ? json_['ampBody'] as core.String
              : null,
          ampHead: json_.containsKey('ampHead')
              ? json_['ampHead'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adCode != null) 'adCode': adCode!,
        if (ampBody != null) 'ampBody': ampBody!,
        if (ampHead != null) 'ampHead': ampHead!,
      };
}

/// Representation of an ad unit.
///
/// An ad unit represents a saved ad unit with a specific set of ad settings
/// that have been customized within an account.
class AdUnit {
  /// Settings specific to content ads (AFC).
  ///
  /// Required.
  ContentAdsSettings? contentAdsSettings;

  /// Display name of the ad unit, as provided when the ad unit was created.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the ad unit.
  ///
  /// Format: accounts/{account}/adclients/{adclient}/adunits/{adunit}
  ///
  /// Output only.
  core.String? name;

  /// Unique ID of the ad unit as used in the `AD_UNIT_ID` reporting dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  /// State of the ad unit.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : Ad unit has been activated by the user.
  /// - "ARCHIVED" : Ad unit has been archived by the user. Note that archived
  /// ad units are only removed from the default view in the UI. Archived ad
  /// units can still serve ads.
  core.String? state;

  AdUnit({
    this.contentAdsSettings,
    this.displayName,
    this.name,
    this.reportingDimensionId,
    this.state,
  });

  AdUnit.fromJson(core.Map json_)
      : this(
          contentAdsSettings: json_.containsKey('contentAdsSettings')
              ? ContentAdsSettings.fromJson(json_['contentAdsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingDimensionId: json_.containsKey('reportingDimensionId')
              ? json_['reportingDimensionId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentAdsSettings != null)
          'contentAdsSettings': contentAdsSettings!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
        if (state != null) 'state': state!,
      };
}

/// Representation of the ad unit code for a given ad unit.
///
/// For more information, see
/// [About the AdSense code](https://support.google.com/adsense/answer/9274634)
/// and
/// [Where to place the ad code in your HTML](https://support.google.com/adsense/answer/9190028).
class AdUnitAdCode {
  /// The code snippet to add to the body of an HTML page.
  ///
  /// Output only.
  core.String? adCode;

  AdUnitAdCode({
    this.adCode,
  });

  AdUnitAdCode.fromJson(core.Map json_)
      : this(
          adCode: json_.containsKey('adCode')
              ? json_['adCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adCode != null) 'adCode': adCode!,
      };
}

/// Representation of an alert.
class Alert {
  /// The localized alert message.
  ///
  /// This may contain HTML markup, such as phrase elements or links.
  ///
  /// Output only.
  core.String? message;

  /// Resource name of the alert.
  ///
  /// Format: accounts/{account}/alerts/{alert}
  ///
  /// Output only.
  core.String? name;

  /// Severity of this alert.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Unspecified severity.
  /// - "INFO" : Info.
  /// - "WARNING" : Warning.
  /// - "SEVERE" : Severe.
  core.String? severity;

  /// Type of alert.
  ///
  /// This identifies the broad type of this alert, and provides a stable
  /// machine-readable identifier that will not be translated. For example,
  /// "payment-hold".
  ///
  /// Output only.
  core.String? type;

  Alert({
    this.message,
    this.name,
    this.severity,
    this.type,
  });

  Alert.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (name != null) 'name': name!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
      };
}

/// Cell representation.
class Cell {
  /// Value in the cell.
  ///
  /// The dimension cells contain strings, and the metric cells contain numbers.
  core.String? value;

  Cell({
    this.value,
  });

  Cell.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Settings specific to content ads (AFC).
class ContentAdsSettings {
  /// Size of the ad unit.
  ///
  /// e.g. "728x90", "1x3" (for responsive ad units).
  ///
  /// Required.
  core.String? size;

  /// Type of the ad unit.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified ad unit type.
  /// - "DISPLAY" : Display ad unit.
  /// - "FEED" : In-feed ad unit.
  /// - "ARTICLE" : In-article ad unit.
  /// - "MATCHED_CONTENT" : Matched content unit.
  /// - "LINK" : Link ad unit. Note that link ad units have now been retired,
  /// see https://support.google.com/adsense/answer/9987221.
  core.String? type;

  ContentAdsSettings({
    this.size,
    this.type,
  });

  ContentAdsSettings.fromJson(core.Map json_)
      : this(
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

/// Representation of a custom channel.
class CustomChannel {
  /// Whether the custom channel is active and collecting data.
  ///
  /// See https://support.google.com/adsense/answer/10077192.
  core.bool? active;

  /// Display name of the custom channel.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of the custom channel.
  ///
  /// Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  ///
  /// Output only.
  core.String? name;

  /// Unique ID of the custom channel as used in the `CUSTOM_CHANNEL_ID`
  /// reporting dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  CustomChannel({
    this.active,
    this.displayName,
    this.name,
    this.reportingDimensionId,
  });

  CustomChannel.fromJson(core.Map json_)
      : this(
          active:
              json_.containsKey('active') ? json_['active'] as core.bool : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingDimensionId: json_.containsKey('reportingDimensionId')
              ? json_['reportingDimensionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The header information of the columns requested in the report.
class Header {
  /// The \[ISO-4217 currency code\](https://en.wikipedia.org/wiki/ISO_4217) of
  /// this column.
  ///
  /// Only present if the header type is METRIC_CURRENCY.
  core.String? currencyCode;

  /// Name of the header.
  ///
  /// Required.
  core.String? name;

  /// Type of the header.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HEADER_TYPE_UNSPECIFIED" : Unspecified header.
  /// - "DIMENSION" : Dimension header type.
  /// - "METRIC_TALLY" : Tally header type.
  /// - "METRIC_RATIO" : Ratio header type.
  /// - "METRIC_CURRENCY" : Currency header type.
  /// - "METRIC_MILLISECONDS" : Milliseconds header type.
  /// - "METRIC_DECIMAL" : Decimal header type.
  core.String? type;

  Header({
    this.currencyCode,
    this.name,
    this.type,
  });

  Header.fromJson(core.Map json_)
      : this(
          currencyCode: json_.containsKey('currencyCode')
              ? json_['currencyCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// Response definition for the account list rpc.
class ListAccountsResponse {
  /// The accounts returned in this list response.
  core.List<Account>? accounts;

  /// Continuation token used to page through accounts.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  ListAccountsResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the ad client list rpc.
class ListAdClientsResponse {
  /// The ad clients returned in this list response.
  core.List<AdClient>? adClients;

  /// Continuation token used to page through ad clients.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListAdClientsResponse({
    this.adClients,
    this.nextPageToken,
  });

  ListAdClientsResponse.fromJson(core.Map json_)
      : this(
          adClients: json_.containsKey('adClients')
              ? (json_['adClients'] as core.List)
                  .map((value) => AdClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adClients != null) 'adClients': adClients!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the adunit list rpc.
class ListAdUnitsResponse {
  /// The ad units returned in the list response.
  core.List<AdUnit>? adUnits;

  /// Continuation token used to page through ad units.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListAdUnitsResponse({
    this.adUnits,
    this.nextPageToken,
  });

  ListAdUnitsResponse.fromJson(core.Map json_)
      : this(
          adUnits: json_.containsKey('adUnits')
              ? (json_['adUnits'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adUnits != null) 'adUnits': adUnits!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the alerts list rpc.
class ListAlertsResponse {
  /// The alerts returned in this list response.
  core.List<Alert>? alerts;

  ListAlertsResponse({
    this.alerts,
  });

  ListAlertsResponse.fromJson(core.Map json_)
      : this(
          alerts: json_.containsKey('alerts')
              ? (json_['alerts'] as core.List)
                  .map((value) => Alert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alerts != null) 'alerts': alerts!,
      };
}

/// Response definition for the child account list rpc.
class ListChildAccountsResponse {
  /// The accounts returned in this list response.
  core.List<Account>? accounts;

  /// Continuation token used to page through accounts.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListChildAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  ListChildAccountsResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the custom channel list rpc.
class ListCustomChannelsResponse {
  /// The custom channels returned in this list response.
  core.List<CustomChannel>? customChannels;

  /// Continuation token used to page through alerts.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListCustomChannelsResponse({
    this.customChannels,
    this.nextPageToken,
  });

  ListCustomChannelsResponse.fromJson(core.Map json_)
      : this(
          customChannels: json_.containsKey('customChannels')
              ? (json_['customChannels'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customChannels != null) 'customChannels': customChannels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the ad units linked to a custom channel list rpc.
class ListLinkedAdUnitsResponse {
  /// The ad units returned in the list response.
  core.List<AdUnit>? adUnits;

  /// Continuation token used to page through ad units.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListLinkedAdUnitsResponse({
    this.adUnits,
    this.nextPageToken,
  });

  ListLinkedAdUnitsResponse.fromJson(core.Map json_)
      : this(
          adUnits: json_.containsKey('adUnits')
              ? (json_['adUnits'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adUnits != null) 'adUnits': adUnits!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the custom channels linked to an adunit list rpc.
class ListLinkedCustomChannelsResponse {
  /// The custom channels returned in this list response.
  core.List<CustomChannel>? customChannels;

  /// Continuation token used to page through alerts.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListLinkedCustomChannelsResponse({
    this.customChannels,
    this.nextPageToken,
  });

  ListLinkedCustomChannelsResponse.fromJson(core.Map json_)
      : this(
          customChannels: json_.containsKey('customChannels')
              ? (json_['customChannels'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customChannels != null) 'customChannels': customChannels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response definition for the payments list rpc.
class ListPaymentsResponse {
  /// The payments returned in this list response.
  core.List<Payment>? payments;

  ListPaymentsResponse({
    this.payments,
  });

  ListPaymentsResponse.fromJson(core.Map json_)
      : this(
          payments: json_.containsKey('payments')
              ? (json_['payments'] as core.List)
                  .map((value) => Payment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payments != null) 'payments': payments!,
      };
}

/// Response definition for the policy issues list rpc.
///
/// Policy issues are reported only if the publisher has at least one AFC ad
/// client in READY or GETTING_READY state. If the publisher has no such AFC ad
/// client, the response will be an empty list.
class ListPolicyIssuesResponse {
  /// Continuation token used to page through policy issues.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The policy issues returned in the list response.
  core.List<PolicyIssue>? policyIssues;

  ListPolicyIssuesResponse({
    this.nextPageToken,
    this.policyIssues,
  });

  ListPolicyIssuesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policyIssues: json_.containsKey('policyIssues')
              ? (json_['policyIssues'] as core.List)
                  .map((value) => PolicyIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policyIssues != null) 'policyIssues': policyIssues!,
      };
}

/// Response definition for the saved reports list rpc.
class ListSavedReportsResponse {
  /// Continuation token used to page through reports.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The reports returned in this list response.
  core.List<SavedReport>? savedReports;

  ListSavedReportsResponse({
    this.nextPageToken,
    this.savedReports,
  });

  ListSavedReportsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          savedReports: json_.containsKey('savedReports')
              ? (json_['savedReports'] as core.List)
                  .map((value) => SavedReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (savedReports != null) 'savedReports': savedReports!,
      };
}

/// Response definition for the sites list rpc.
class ListSitesResponse {
  /// Continuation token used to page through sites.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The sites returned in this list response.
  core.List<Site>? sites;

  ListSitesResponse({
    this.nextPageToken,
    this.sites,
  });

  ListSitesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          sites: json_.containsKey('sites')
              ? (json_['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sites != null) 'sites': sites!,
      };
}

/// Response definition for the url channels list rpc.
class ListUrlChannelsResponse {
  /// Continuation token used to page through url channels.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The url channels returned in this list response.
  core.List<UrlChannel>? urlChannels;

  ListUrlChannelsResponse({
    this.nextPageToken,
    this.urlChannels,
  });

  ListUrlChannelsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          urlChannels: json_.containsKey('urlChannels')
              ? (json_['urlChannels'] as core.List)
                  .map((value) => UrlChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (urlChannels != null) 'urlChannels': urlChannels!,
      };
}

/// Representation of an unpaid or paid payment.
///
/// See
/// [Payment timelines for AdSense](https://support.google.com/adsense/answer/7164703)
/// for more information about payments and the
/// [YouTube homepage and payments account](https://support.google.com/adsense/answer/11622510)
/// article for information about dedicated payments accounts for YouTube.
class Payment {
  /// The amount of unpaid or paid earnings, as a formatted string, including
  /// the currency.
  ///
  /// E.g. "¥1,235 JPY", "$1,234.57", "£87.65".
  ///
  /// Output only.
  core.String? amount;

  /// For paid earnings, the date that the payment was credited.
  ///
  /// For unpaid earnings, this field is empty. Payment dates are always
  /// returned in the billing timezone (America/Los_Angeles).
  ///
  /// Output only.
  Date? date;

  /// Resource name of the payment.
  ///
  /// Format: - accounts/{account}/payments/unpaid for unpaid (current) AdSense
  /// earnings. - accounts/{account}/payments/youtube-unpaid for unpaid
  /// (current) YouTube earnings. - accounts/{account}/payments/yyyy-MM-dd for
  /// paid AdSense earnings. - accounts/{account}/payments/youtube-yyyy-MM-dd
  /// for paid YouTube earnings.
  ///
  /// Output only.
  core.String? name;

  Payment({
    this.amount,
    this.date,
    this.name,
  });

  Payment.fromJson(core.Map json_)
      : this(
          amount: json_.containsKey('amount')
              ? json_['amount'] as core.String
              : null,
          date: json_.containsKey('date')
              ? Date.fromJson(
                  json_['date'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (date != null) 'date': date!,
        if (name != null) 'name': name!,
      };
}

/// Representation of a policy issue for a single entity (site, site-section, or
/// page).
///
/// All issues for a single entity are represented by a single PolicyIssue
/// resource, though that PolicyIssue can have multiple causes (or "topics")
/// that can change over time. Policy issues are removed if there are no issues
/// detected recently or if there's a recent successful appeal for the entity.
class PolicyIssue {
  /// The most severe action taken on the entity over the past seven days.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENFORCEMENT_ACTION_UNSPECIFIED" : The action is unspecified.
  /// - "WARNED" : No ad serving enforcement is currently present, but
  /// enforcement will start on the `warning_escalation_date` if the issue is
  /// not resolved.
  /// - "AD_SERVING_RESTRICTED" : Ad serving demand has been restricted on the
  /// entity.
  /// - "AD_SERVING_DISABLED" : Ad serving has been disabled on the entity.
  /// - "AD_SERVED_WITH_CLICK_CONFIRMATION" : Ads are being served for the
  /// entity but Confirmed Click is being applied to the ads. See
  /// https://support.google.com/adsense/answer/10025624.
  /// - "AD_PERSONALIZATION_RESTRICTED" : Ad personalization is restricted
  /// because the ad requests coming from the EEA and UK do not have a TCF
  /// string or the Consent Management Platform (CMP) indicated by the TCF
  /// string is not Google certified. As a result, basic/limited ads will be
  /// served. See https://support.google.com/adsense/answer/13554116
  core.String? action;

  /// List of ad clients associated with the policy issue (either as the primary
  /// ad client or an associated host/secondary ad client).
  ///
  /// In the latter case, this will be an ad client that is not owned by the
  /// current account.
  ///
  /// Optional.
  core.List<core.String>? adClients;

  /// Total number of ad requests affected by the policy violations over the
  /// past seven days.
  ///
  /// Required.
  core.String? adRequestCount;

  /// Type of the entity indicating if the entity is a site, site-section, or
  /// page.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENTITY_TYPE_UNSPECIFIED" : The entity type is unspecified.
  /// - "SITE" : The enforced entity is an entire website.
  /// - "SITE_SECTION" : The enforced entity is a particular section of a
  /// website. All the pages with this prefix are enforced.
  /// - "PAGE" : The enforced entity is a single web page.
  core.String? entityType;

  /// The date (in the America/Los_Angeles timezone) when policy violations were
  /// first detected on the entity.
  ///
  /// Required.
  Date? firstDetectedDate;

  /// The date (in the America/Los_Angeles timezone) when policy violations were
  /// last detected on the entity.
  ///
  /// Required.
  Date? lastDetectedDate;

  /// Resource name of the entity with policy issues.
  ///
  /// Format: accounts/{account}/policyIssues/{policy_issue}
  ///
  /// Required.
  core.String? name;

  /// Unordered list.
  ///
  /// The policy topics that this entity was found to violate over the past
  /// seven days.
  ///
  /// Required.
  core.List<PolicyTopic>? policyTopics;

  /// Hostname/domain of the entity (for example "foo.com" or "www.foo.com").
  ///
  /// This _should_ be a bare domain/host name without any protocol. This will
  /// be present for all policy issues.
  ///
  /// Required.
  core.String? site;

  /// Prefix of the site-section having policy issues (For example
  /// "foo.com/bar-section").
  ///
  /// This will be present if the `entity_type` is `SITE_SECTION` and will be
  /// absent for other entity types.
  ///
  /// Optional.
  core.String? siteSection;

  /// URI of the page having policy violations (for example "foo.com/bar" or
  /// "www.foo.com/bar").
  ///
  /// This will be present if the `entity_type` is `PAGE` and will be absent for
  /// other entity types.
  ///
  /// Optional.
  core.String? uri;

  /// The date (in the America/Los_Angeles timezone) when the entity will have
  /// ad serving demand restricted or ad serving disabled.
  ///
  /// This is present only for issues with a `WARNED` enforcement action. See
  /// https://support.google.com/adsense/answer/11066888.
  ///
  /// Optional.
  Date? warningEscalationDate;

  PolicyIssue({
    this.action,
    this.adClients,
    this.adRequestCount,
    this.entityType,
    this.firstDetectedDate,
    this.lastDetectedDate,
    this.name,
    this.policyTopics,
    this.site,
    this.siteSection,
    this.uri,
    this.warningEscalationDate,
  });

  PolicyIssue.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          adClients: json_.containsKey('adClients')
              ? (json_['adClients'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          adRequestCount: json_.containsKey('adRequestCount')
              ? json_['adRequestCount'] as core.String
              : null,
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          firstDetectedDate: json_.containsKey('firstDetectedDate')
              ? Date.fromJson(json_['firstDetectedDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          lastDetectedDate: json_.containsKey('lastDetectedDate')
              ? Date.fromJson(json_['lastDetectedDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          policyTopics: json_.containsKey('policyTopics')
              ? (json_['policyTopics'] as core.List)
                  .map((value) => PolicyTopic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          site: json_.containsKey('site') ? json_['site'] as core.String : null,
          siteSection: json_.containsKey('siteSection')
              ? json_['siteSection'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
          warningEscalationDate: json_.containsKey('warningEscalationDate')
              ? Date.fromJson(json_['warningEscalationDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (adClients != null) 'adClients': adClients!,
        if (adRequestCount != null) 'adRequestCount': adRequestCount!,
        if (entityType != null) 'entityType': entityType!,
        if (firstDetectedDate != null) 'firstDetectedDate': firstDetectedDate!,
        if (lastDetectedDate != null) 'lastDetectedDate': lastDetectedDate!,
        if (name != null) 'name': name!,
        if (policyTopics != null) 'policyTopics': policyTopics!,
        if (site != null) 'site': site!,
        if (siteSection != null) 'siteSection': siteSection!,
        if (uri != null) 'uri': uri!,
        if (warningEscalationDate != null)
          'warningEscalationDate': warningEscalationDate!,
      };
}

/// Information about a particular policy topic.
///
/// A policy topic represents a single class of policy issue that can impact ad
/// serving for your site. For example, sexual content or having ads that
/// obscure your content. A single policy issue can have multiple policy topics
/// for a single entity.
class PolicyTopic {
  /// Indicates if this is a policy violation or not.
  ///
  /// When the value is true, issues that are instances of this topic must be
  /// addressed to remain in compliance with the partner's agreements with
  /// Google. A false value indicates that it's not mandatory to fix the issues
  /// but advertising demand might be restricted.
  ///
  /// Required.
  core.bool? mustFix;

  /// The policy topic.
  ///
  /// For example, "sexual-content" or "ads-obscuring-content"."
  ///
  /// Required.
  core.String? topic;

  PolicyTopic({
    this.mustFix,
    this.topic,
  });

  PolicyTopic.fromJson(core.Map json_)
      : this(
          mustFix: json_.containsKey('mustFix')
              ? json_['mustFix'] as core.bool
              : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mustFix != null) 'mustFix': mustFix!,
        if (topic != null) 'topic': topic!,
      };
}

/// Result of a generated report.
class ReportResult {
  /// The averages of the report.
  ///
  /// This is the same length as any other row in the report; cells
  /// corresponding to dimension columns are empty.
  Row? averages;

  /// End date of the range (inclusive).
  ///
  /// Required.
  Date? endDate;

  /// The header information; one for each dimension in the request, followed by
  /// one for each metric in the request.
  core.List<Header>? headers;

  /// The output rows of the report.
  ///
  /// Each row is a list of cells; one for each dimension in the request,
  /// followed by one for each metric in the request.
  core.List<Row>? rows;

  /// Start date of the range (inclusive).
  ///
  /// Required.
  Date? startDate;

  /// The total number of rows matched by the report request.
  core.String? totalMatchedRows;

  /// The totals of the report.
  ///
  /// This is the same length as any other row in the report; cells
  /// corresponding to dimension columns are empty.
  Row? totals;

  /// Any warnings associated with generation of the report.
  ///
  /// These warnings are always returned in English.
  core.List<core.String>? warnings;

  ReportResult({
    this.averages,
    this.endDate,
    this.headers,
    this.rows,
    this.startDate,
    this.totalMatchedRows,
    this.totals,
    this.warnings,
  });

  ReportResult.fromJson(core.Map json_)
      : this(
          averages: json_.containsKey('averages')
              ? Row.fromJson(
                  json_['averages'] as core.Map<core.String, core.dynamic>)
              : null,
          endDate: json_.containsKey('endDate')
              ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => Header.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startDate: json_.containsKey('startDate')
              ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          totalMatchedRows: json_.containsKey('totalMatchedRows')
              ? json_['totalMatchedRows'] as core.String
              : null,
          totals: json_.containsKey('totals')
              ? Row.fromJson(
                  json_['totals'] as core.Map<core.String, core.dynamic>)
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averages != null) 'averages': averages!,
        if (endDate != null) 'endDate': endDate!,
        if (headers != null) 'headers': headers!,
        if (rows != null) 'rows': rows!,
        if (startDate != null) 'startDate': startDate!,
        if (totalMatchedRows != null) 'totalMatchedRows': totalMatchedRows!,
        if (totals != null) 'totals': totals!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Row representation.
class Row {
  /// Cells in the row.
  core.List<Cell>? cells;

  Row({
    this.cells,
  });

  Row.fromJson(core.Map json_)
      : this(
          cells: json_.containsKey('cells')
              ? (json_['cells'] as core.List)
                  .map((value) => Cell.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
      };
}

/// Representation of a saved report.
class SavedReport {
  /// Resource name of the report.
  ///
  /// Format: accounts/{account}/reports/{report}
  ///
  /// Output only.
  core.String? name;

  /// Report title as specified by publisher.
  core.String? title;

  SavedReport({
    this.name,
    this.title,
  });

  SavedReport.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (title != null) 'title': title!,
      };
}

/// Representation of a Site.
class Site {
  /// Whether auto ads is turned on for the site.
  core.bool? autoAdsEnabled;

  /// Domain (or subdomain) of the site, e.g. "example.com" or
  /// "www.example.com".
  ///
  /// This is used in the `OWNED_SITE_DOMAIN_NAME` reporting dimension.
  core.String? domain;

  /// Resource name of a site.
  ///
  /// Format: accounts/{account}/sites/{site}
  ///
  /// Output only.
  core.String? name;

  /// Unique ID of the site as used in the `OWNED_SITE_ID` reporting dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  /// State of a site.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "REQUIRES_REVIEW" : Either: * The site hasn't been checked yet. * The
  /// site is inactive and needs another review before it can show ads again.
  /// Learn how to
  /// [request a review for an inactive site](https://support.google.com/adsense/answer/9393996).
  /// - "GETTING_READY" : Google is running some checks on the site. This
  /// usually takes a few days, but in some cases it can take two to four weeks.
  /// - "READY" : The site is ready to show ads. Learn how to
  /// [set up ads on the site](https://support.google.com/adsense/answer/7037624).
  /// - "NEEDS_ATTENTION" : Publisher needs to fix some issues before the site
  /// is ready to show ads. Learn what to do
  /// [if a new site isn't ready](https://support.google.com/adsense/answer/9061852).
  core.String? state;

  Site({
    this.autoAdsEnabled,
    this.domain,
    this.name,
    this.reportingDimensionId,
    this.state,
  });

  Site.fromJson(core.Map json_)
      : this(
          autoAdsEnabled: json_.containsKey('autoAdsEnabled')
              ? json_['autoAdsEnabled'] as core.bool
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingDimensionId: json_.containsKey('reportingDimensionId')
              ? json_['reportingDimensionId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoAdsEnabled != null) 'autoAdsEnabled': autoAdsEnabled!,
        if (domain != null) 'domain': domain!,
        if (name != null) 'name': name!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
        if (state != null) 'state': state!,
      };
}

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;

/// Representation of a URL channel.
///
/// URL channels allow you to track the performance of particular pages in your
/// site; see [URL channels](https://support.google.com/adsense/answer/2923836)
/// for more information.
class UrlChannel {
  /// Resource name of the URL channel.
  ///
  /// Format: accounts/{account}/adclients/{adclient}/urlchannels/{urlchannel}
  ///
  /// Output only.
  core.String? name;

  /// Unique ID of the custom channel as used in the `URL_CHANNEL_ID` reporting
  /// dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  /// URI pattern of the channel.
  ///
  /// Does not include "http://" or "https://". Example: www.example.com/home
  core.String? uriPattern;

  UrlChannel({
    this.name,
    this.reportingDimensionId,
    this.uriPattern,
  });

  UrlChannel.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          reportingDimensionId: json_.containsKey('reportingDimensionId')
              ? json_['reportingDimensionId'] as core.String
              : null,
          uriPattern: json_.containsKey('uriPattern')
              ? json_['uriPattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
        if (uriPattern != null) 'uriPattern': uriPattern!,
      };
}
