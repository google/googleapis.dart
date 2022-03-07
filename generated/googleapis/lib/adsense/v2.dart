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
///   - [AccountsReportsResource]
///     - [AccountsReportsSavedResource]
///   - [AccountsSitesResource]
library adsense.v2;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [pageToken] - A page token, received from a previous `ListAccounts` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAccounts` must match the call that provided
  /// the page token.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + ':listChildAccounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListChildAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/adcode';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdClientAdCode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/adclients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAdClientsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsAdunitsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsAdunitsResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnit.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the AdSense code for a given ad unit.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/adcode';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnitAdCode.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/adunits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAdUnitsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v2/' + core.Uri.encodeFull('$parent') + ':listLinkedCustomChannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLinkedCustomChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsCustomchannelsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsCustomchannelsResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/customchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCustomChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + ':listLinkedAdUnits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLinkedAdUnitsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsUrlchannelsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsUrlchannelsResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/urlchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUrlChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/alerts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAlertsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/payments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListPaymentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [filters] - Filters to be run on the report.
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url = 'v2/' + core.Uri.encodeFull('$account') + '/reports:generate';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReportResult.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// [filters] - Filters to be run on the report.
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url =
        'v2/' + core.Uri.encodeFull('$account') + '/reports:generateCsv';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/saved:generate';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ReportResult.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
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

    final _url = 'v2/' + core.Uri.encodeFull('$name') + '/saved:generateCsv';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return HttpBody.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [pageToken] - A page token, received from a previous `ListPayments` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListPayments` must match the call that provided
  /// the page token.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/reports/saved';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSavedReportsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Site.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v2/' + core.Uri.encodeFull('$parent') + '/sites';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSitesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    this.timeZone,
  });

  Account.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pendingTasks: _json.containsKey('pendingTasks')
              ? (_json['pendingTasks'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          premium: _json.containsKey('premium')
              ? _json['premium'] as core.bool
              : null,
          timeZone: _json.containsKey('timeZone')
              ? TimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (pendingTasks != null) 'pendingTasks': pendingTasks!,
        if (premium != null) 'premium': premium!,
        if (timeZone != null) 'timeZone': timeZone!,
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
  core.String? name;

  /// Product code of the ad client.
  ///
  /// For example, "AFC" for AdSense for Content.
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

  AdClient({
    this.name,
    this.productCode,
    this.reportingDimensionId,
  });

  AdClient.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          productCode: _json.containsKey('productCode')
              ? _json['productCode'] as core.String
              : null,
          reportingDimensionId: _json.containsKey('reportingDimensionId')
              ? _json['reportingDimensionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (productCode != null) 'productCode': productCode!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
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

  AdClientAdCode.fromJson(core.Map _json)
      : this(
          adCode: _json.containsKey('adCode')
              ? _json['adCode'] as core.String
              : null,
          ampBody: _json.containsKey('ampBody')
              ? _json['ampBody'] as core.String
              : null,
          ampHead: _json.containsKey('ampHead')
              ? _json['ampHead'] as core.String
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
  ContentAdsSettings? contentAdsSettings;

  /// Display name of the ad unit, as provided when the ad unit was created.
  core.String? displayName;

  /// Resource name of the ad unit.
  ///
  /// Format: accounts/{account}/adclients/{adclient}/adunits/{adunit}
  core.String? name;

  /// Unique ID of the ad unit as used in the `AD_UNIT_ID` reporting dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  /// State of the ad unit.
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

  AdUnit.fromJson(core.Map _json)
      : this(
          contentAdsSettings: _json.containsKey('contentAdsSettings')
              ? ContentAdsSettings.fromJson(_json['contentAdsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reportingDimensionId: _json.containsKey('reportingDimensionId')
              ? _json['reportingDimensionId'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
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

/// Representation of the AdSense code for a given ad unit.
class AdUnitAdCode {
  /// The AdSense code snippet to add to the body of an HTML page.
  ///
  /// Output only.
  core.String? adCode;

  AdUnitAdCode({
    this.adCode,
  });

  AdUnitAdCode.fromJson(core.Map _json)
      : this(
          adCode: _json.containsKey('adCode')
              ? _json['adCode'] as core.String
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

  Alert.fromJson(core.Map _json)
      : this(
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  Cell.fromJson(core.Map _json)
      : this(
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
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
  core.String? size;

  /// Type of the ad unit.
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

  ContentAdsSettings.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

/// Representation of a custom channel.
class CustomChannel {
  /// Display name of the custom channel.
  core.String? displayName;

  /// Resource name of the custom channel.
  ///
  /// Format:
  /// accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  core.String? name;

  /// Unique ID of the custom channel as used in the `CUSTOM_CHANNEL_ID`
  /// reporting dimension.
  ///
  /// Output only.
  core.String? reportingDimensionId;

  CustomChannel({
    this.displayName,
    this.name,
    this.reportingDimensionId,
  });

  CustomChannel.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reportingDimensionId: _json.containsKey('reportingDimensionId')
              ? _json['reportingDimensionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  Header.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
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

  ListAccountsResponse.fromJson(core.Map _json)
      : this(
          accounts: _json.containsKey('accounts')
              ? (_json['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListAdClientsResponse.fromJson(core.Map _json)
      : this(
          adClients: _json.containsKey('adClients')
              ? (_json['adClients'] as core.List)
                  .map((value) => AdClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListAdUnitsResponse.fromJson(core.Map _json)
      : this(
          adUnits: _json.containsKey('adUnits')
              ? (_json['adUnits'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListAlertsResponse.fromJson(core.Map _json)
      : this(
          alerts: _json.containsKey('alerts')
              ? (_json['alerts'] as core.List)
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

  ListChildAccountsResponse.fromJson(core.Map _json)
      : this(
          accounts: _json.containsKey('accounts')
              ? (_json['accounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListCustomChannelsResponse.fromJson(core.Map _json)
      : this(
          customChannels: _json.containsKey('customChannels')
              ? (_json['customChannels'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListLinkedAdUnitsResponse.fromJson(core.Map _json)
      : this(
          adUnits: _json.containsKey('adUnits')
              ? (_json['adUnits'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListLinkedCustomChannelsResponse.fromJson(core.Map _json)
      : this(
          customChannels: _json.containsKey('customChannels')
              ? (_json['customChannels'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
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

  ListPaymentsResponse.fromJson(core.Map _json)
      : this(
          payments: _json.containsKey('payments')
              ? (_json['payments'] as core.List)
                  .map((value) => Payment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payments != null) 'payments': payments!,
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

  ListSavedReportsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          savedReports: _json.containsKey('savedReports')
              ? (_json['savedReports'] as core.List)
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

  ListSitesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sites: _json.containsKey('sites')
              ? (_json['sites'] as core.List)
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

  ListUrlChannelsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          urlChannels: _json.containsKey('urlChannels')
              ? (_json['urlChannels'] as core.List)
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
  core.String? name;

  Payment({
    this.amount,
    this.date,
    this.name,
  });

  Payment.fromJson(core.Map _json)
      : this(
          amount: _json.containsKey('amount')
              ? _json['amount'] as core.String
              : null,
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (date != null) 'date': date!,
        if (name != null) 'name': name!,
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

  ReportResult.fromJson(core.Map _json)
      : this(
          averages: _json.containsKey('averages')
              ? Row.fromJson(
                  _json['averages'] as core.Map<core.String, core.dynamic>)
              : null,
          endDate: _json.containsKey('endDate')
              ? Date.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) => Header.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          startDate: _json.containsKey('startDate')
              ? Date.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
          totalMatchedRows: _json.containsKey('totalMatchedRows')
              ? _json['totalMatchedRows'] as core.String
              : null,
          totals: _json.containsKey('totals')
              ? Row.fromJson(
                  _json['totals'] as core.Map<core.String, core.dynamic>)
              : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
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

  Row.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
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
  core.String? name;

  /// Report title as specified by publisher.
  core.String? title;

  SavedReport({
    this.name,
    this.title,
  });

  SavedReport.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
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
  /// - "REQUIRES_REVIEW" : The site hasn't been checked yet.
  /// - "GETTING_READY" : Running some checks on the site. This usually takes a
  /// few days, but in some cases can take up to 2 weeks.
  /// - "READY" : The site is ready to show ads.
  /// - "NEEDS_ATTENTION" : Publisher needs to fix some issues before the site
  /// is ready to show ads.
  core.String? state;

  Site({
    this.autoAdsEnabled,
    this.domain,
    this.name,
    this.reportingDimensionId,
    this.state,
  });

  Site.fromJson(core.Map _json)
      : this(
          autoAdsEnabled: _json.containsKey('autoAdsEnabled')
              ? _json['autoAdsEnabled'] as core.bool
              : null,
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reportingDimensionId: _json.containsKey('reportingDimensionId')
              ? _json['reportingDimensionId'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
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

  UrlChannel.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          reportingDimensionId: _json.containsKey('reportingDimensionId')
              ? _json['reportingDimensionId'] as core.String
              : null,
          uriPattern: _json.containsKey('uriPattern')
              ? _json['uriPattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (reportingDimensionId != null)
          'reportingDimensionId': reportingDimensionId!,
        if (uriPattern != null) 'uriPattern': uriPattern!,
      };
}
