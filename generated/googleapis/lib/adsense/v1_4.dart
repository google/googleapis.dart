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

/// AdSense Management API - v1.4
///
/// Accesses AdSense publishers' inventory and generates performance reports.
///
/// For more information, see
/// <https://developers.google.com/adsense/management/>
///
/// Create an instance of [AdSenseApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAdclientsResource]
///   - [AccountsAdunitsResource]
///     - [AccountsAdunitsCustomchannelsResource]
///   - [AccountsAlertsResource]
///   - [AccountsCustomchannelsResource]
///     - [AccountsCustomchannelsAdunitsResource]
///   - [AccountsPaymentsResource]
///   - [AccountsReportsResource]
///     - [AccountsReportsSavedResource]
///   - [AccountsSavedadstylesResource]
///   - [AccountsUrlchannelsResource]
/// - [AdclientsResource]
/// - [AdunitsResource]
///   - [AdunitsCustomchannelsResource]
/// - [AlertsResource]
/// - [CustomchannelsResource]
///   - [CustomchannelsAdunitsResource]
/// - [MetadataResource]
///   - [MetadataDimensionsResource]
///   - [MetadataMetricsResource]
/// - [PaymentsResource]
/// - [ReportsResource]
///   - [ReportsSavedResource]
/// - [SavedadstylesResource]
/// - [UrlchannelsResource]
library adsense.v1_4;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

/// Accesses AdSense publishers' inventory and generates performance reports.
class AdSenseApi {
  /// View and manage your AdSense data
  static const adsenseScope = 'https://www.googleapis.com/auth/adsense';

  /// View your AdSense data
  static const adsenseReadonlyScope =
      'https://www.googleapis.com/auth/adsense.readonly';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  AdclientsResource get adclients => AdclientsResource(_requester);
  AdunitsResource get adunits => AdunitsResource(_requester);
  AlertsResource get alerts => AlertsResource(_requester);
  CustomchannelsResource get customchannels =>
      CustomchannelsResource(_requester);
  MetadataResource get metadata => MetadataResource(_requester);
  PaymentsResource get payments => PaymentsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  SavedadstylesResource get savedadstyles => SavedadstylesResource(_requester);
  UrlchannelsResource get urlchannels => UrlchannelsResource(_requester);

  AdSenseApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'adsense/v1.4/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsResource get adclients =>
      AccountsAdclientsResource(_requester);
  AccountsAdunitsResource get adunits => AccountsAdunitsResource(_requester);
  AccountsAlertsResource get alerts => AccountsAlertsResource(_requester);
  AccountsCustomchannelsResource get customchannels =>
      AccountsCustomchannelsResource(_requester);
  AccountsPaymentsResource get payments => AccountsPaymentsResource(_requester);
  AccountsReportsResource get reports => AccountsReportsResource(_requester);
  AccountsSavedadstylesResource get savedadstyles =>
      AccountsSavedadstylesResource(_requester);
  AccountsUrlchannelsResource get urlchannels =>
      AccountsUrlchannelsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Get information about the selected AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to get information about.
  ///
  /// [tree] - Whether the tree of sub accounts should be returned.
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
    core.String accountId, {
    core.bool? tree,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (tree != null) 'tree': ['${tree}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' + commons.escapeVariable('$accountId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Account.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all accounts available to this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of accounts to include in the response,
  /// used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through accounts. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Accounts].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Accounts> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Accounts.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsResource(commons.ApiRequester client) : _requester = client;

  /// Get Auto ad code for a given ad client.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client to get the code for.
  ///
  /// [tagPartner] - Tag partner to include in the ad code snippet.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdCode> getAdCode(
    core.String accountId,
    core.String adClientId, {
    core.String? tagPartner,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (tagPartner != null) 'tagPartner': [tagPartner],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adcode';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdCode.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all ad clients in the specified account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account for which to list ad clients.
  ///
  /// [maxResults] - The maximum number of ad clients to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad clients. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdClients].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdClients> list(
    core.String accountId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/adclients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdClients.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdunitsResource {
  final commons.ApiRequester _requester;

  AccountsAdunitsCustomchannelsResource get customchannels =>
      AccountsAdunitsCustomchannelsResource(_requester);

  AccountsAdunitsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the specified ad unit in the specified ad client for the specified
  /// account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client for which to get the ad unit.
  ///
  /// [adUnitId] - Ad unit to retrieve.
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
    core.String accountId,
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnit.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get ad code for the specified ad unit.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client with contains the ad unit.
  ///
  /// [adUnitId] - Ad unit to get the code for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdCode> getAdCode(
    core.String accountId,
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId') +
        '/adcode';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdCode.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all ad units in the specified ad client for the specified account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client for which to list ad units.
  ///
  /// [includeInactive] - Whether to include inactive ad units. Default: true.
  ///
  /// [maxResults] - The maximum number of ad units to include in the response,
  /// used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad units. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnits> list(
    core.String accountId,
    core.String adClientId, {
    core.bool? includeInactive,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (includeInactive != null) 'includeInactive': ['${includeInactive}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnits.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdunitsCustomchannelsResource {
  final commons.ApiRequester _requester;

  AccountsAdunitsCustomchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all custom channels which the specified ad unit belongs to.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client which contains the ad unit.
  ///
  /// [adUnitId] - Ad unit for which to list custom channels.
  ///
  /// [maxResults] - The maximum number of custom channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through custom channels.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannels> list(
    core.String accountId,
    core.String adClientId,
    core.String adUnitId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId') +
        '/customchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAlertsResource {
  final commons.ApiRequester _requester;

  AccountsAlertsResource(commons.ApiRequester client) : _requester = client;

  /// Dismiss (delete) the specified alert from the specified publisher AdSense
  /// account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad unit.
  ///
  /// [alertId] - Alert to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String accountId,
    core.String alertId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/alerts/' +
        commons.escapeVariable('$alertId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// List the alerts for the specified AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account for which to retrieve the alerts.
  ///
  /// [locale] - The locale to use for translating alert messages. The account
  /// locale will be used if this is not supplied. The AdSense default (English)
  /// will be used if the supplied locale is invalid or unsupported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alerts].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alerts> list(
    core.String accountId, {
    core.String? locale,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (locale != null) 'locale': [locale],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' + commons.escapeVariable('$accountId') + '/alerts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Alerts.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomchannelsResource {
  final commons.ApiRequester _requester;

  AccountsCustomchannelsAdunitsResource get adunits =>
      AccountsCustomchannelsAdunitsResource(_requester);

  AccountsCustomchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the specified custom channel from the specified ad client for the
  /// specified account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client which contains the custom channel.
  ///
  /// [customChannelId] - Custom channel to retrieve.
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
    core.String accountId,
    core.String adClientId,
    core.String customChannelId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all custom channels in the specified ad client for the specified
  /// account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client for which to list custom channels.
  ///
  /// [maxResults] - The maximum number of custom channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through custom channels.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannels> list(
    core.String accountId,
    core.String adClientId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsCustomchannelsAdunitsResource {
  final commons.ApiRequester _requester;

  AccountsCustomchannelsAdunitsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all ad units in the specified custom channel.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client which contains the custom channel.
  ///
  /// [customChannelId] - Custom channel for which to list ad units.
  ///
  /// [includeInactive] - Whether to include inactive ad units. Default: true.
  ///
  /// [maxResults] - The maximum number of ad units to include in the response,
  /// used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad units. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnits> list(
    core.String accountId,
    core.String adClientId,
    core.String customChannelId, {
    core.bool? includeInactive,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (includeInactive != null) 'includeInactive': ['${includeInactive}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId') +
        '/adunits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnits.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsPaymentsResource {
  final commons.ApiRequester _requester;

  AccountsPaymentsResource(commons.ApiRequester client) : _requester = client;

  /// List the payments for the specified AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account for which to retrieve the payments.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payments].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payments> list(
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/payments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Payments.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportsResource {
  final commons.ApiRequester _requester;

  AccountsReportsSavedResource get saved =>
      AccountsReportsSavedResource(_requester);

  AccountsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generate an AdSense report based on the report request sent in the query
  /// parameters.
  ///
  /// Returns the result as JSON; to retrieve output in CSV format specify
  /// "alt=csv" as a query parameter.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account upon which to report.
  ///
  /// [startDate] - Start of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)|(latest-(\d{2})-(\d{2})(-\d+y)?)|(latest-latest-(\d{2})(-\d+m)?)`.
  ///
  /// [endDate] - End of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)|(latest-(\d{2})-(\d{2})(-\d+y)?)|(latest-latest-(\d{2})(-\d+m)?)`.
  ///
  /// [currency] - Optional currency to use when reporting on monetary metrics.
  /// Defaults to the account's currency if not set.
  /// Value must have pattern `\[a-zA-Z\]+`.
  ///
  /// [dimension] - Dimensions to base the report on.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [filter] - Filters to be run on the report.
  /// Value must have pattern `\[a-zA-Z_\]+(==|=@).+`.
  ///
  /// [locale] - Optional locale to use for translating report output to a local
  /// language. Defaults to "en_US" if not specified.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [maxResults] - The maximum number of rows of report data to return.
  /// Value must be between "0" and "50000".
  ///
  /// [metric] - Numeric columns to include in the report.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [sort] - The name of a dimension or metric to sort the resulting report
  /// on, optionally prefixed with "+" to sort ascending or "-" to sort
  /// descending. If no prefix is specified, the column is sorted ascending.
  /// Value must have pattern `(\+|-)?\[a-zA-Z_\]+`.
  ///
  /// [startIndex] - Index of the first row of report data to return.
  /// Value must be between "0" and "5000".
  ///
  /// [useTimezoneReporting] - Whether the report should be generated in the
  /// AdSense account's local timezone. If false default PST/PDT timezone will
  /// be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [AdsenseReportsGenerateResponse] for Metadata downloads (see
  /// [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> generate(
    core.String accountId,
    core.String startDate,
    core.String endDate, {
    core.String? currency,
    core.List<core.String>? dimension,
    core.List<core.String>? filter,
    core.String? locale,
    core.int? maxResults,
    core.List<core.String>? metric,
    core.List<core.String>? sort,
    core.int? startIndex,
    core.bool? useTimezoneReporting,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'startDate': [startDate],
      'endDate': [endDate],
      if (currency != null) 'currency': [currency],
      if (dimension != null) 'dimension': dimension,
      if (filter != null) 'filter': filter,
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (metric != null) 'metric': metric,
      if (sort != null) 'sort': sort,
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if (useTimezoneReporting != null)
        'useTimezoneReporting': ['${useTimezoneReporting}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/reports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return AdsenseReportsGenerateResponse.fromJson(
          _response as core.Map<core.String, core.dynamic>);
    } else {
      return _response as commons.Media;
    }
  }
}

class AccountsReportsSavedResource {
  final commons.ApiRequester _requester;

  AccountsReportsSavedResource(commons.ApiRequester client)
      : _requester = client;

  /// Generate an AdSense report based on the saved report ID sent in the query
  /// parameters.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the saved reports belong.
  ///
  /// [savedReportId] - The saved report to retrieve.
  ///
  /// [locale] - Optional locale to use for translating report output to a local
  /// language. Defaults to "en_US" if not specified.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [maxResults] - The maximum number of rows of report data to return.
  /// Value must be between "0" and "50000".
  ///
  /// [startIndex] - Index of the first row of report data to return.
  /// Value must be between "0" and "5000".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdsenseReportsGenerateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdsenseReportsGenerateResponse> generate(
    core.String accountId,
    core.String savedReportId, {
    core.String? locale,
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/reports/' +
        commons.escapeVariable('$savedReportId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdsenseReportsGenerateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all saved reports in the specified AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the saved reports belong.
  ///
  /// [maxResults] - The maximum number of saved reports to include in the
  /// response, used for paging.
  /// Value must be between "0" and "100".
  ///
  /// [pageToken] - A continuation token, used to page through saved reports. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedReports> list(
    core.String accountId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/reports/saved';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedReports.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsSavedadstylesResource {
  final commons.ApiRequester _requester;

  AccountsSavedadstylesResource(commons.ApiRequester client)
      : _requester = client;

  /// List a specific saved ad style for the specified account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account for which to get the saved ad style.
  ///
  /// [savedAdStyleId] - Saved ad style to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedAdStyle].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedAdStyle> get(
    core.String accountId,
    core.String savedAdStyleId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/savedadstyles/' +
        commons.escapeVariable('$savedAdStyleId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedAdStyle.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all saved ad styles in the specified account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account for which to list saved ad styles.
  ///
  /// [maxResults] - The maximum number of saved ad styles to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through saved ad styles.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedAdStyles].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedAdStyles> list(
    core.String accountId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'accounts/' + commons.escapeVariable('$accountId') + '/savedadstyles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedAdStyles.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsUrlchannelsResource {
  final commons.ApiRequester _requester;

  AccountsUrlchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all URL channels in the specified ad client for the specified
  /// account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to which the ad client belongs.
  ///
  /// [adClientId] - Ad client for which to list URL channels.
  ///
  /// [maxResults] - The maximum number of URL channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through URL channels. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UrlChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UrlChannels> list(
    core.String accountId,
    core.String adClientId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/urlchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UrlChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AdclientsResource {
  final commons.ApiRequester _requester;

  AdclientsResource(commons.ApiRequester client) : _requester = client;

  /// List all ad clients in this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of ad clients to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad clients. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdClients].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdClients> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'adclients';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdClients.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AdunitsResource {
  final commons.ApiRequester _requester;

  AdunitsCustomchannelsResource get customchannels =>
      AdunitsCustomchannelsResource(_requester);

  AdunitsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the specified ad unit in the specified ad client.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client for which to get the ad unit.
  ///
  /// [adUnitId] - Ad unit to retrieve.
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
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnit.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Get ad code for the specified ad unit.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client with contains the ad unit.
  ///
  /// [adUnitId] - Ad unit to get the code for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdCode].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdCode> getAdCode(
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId') +
        '/adcode';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdCode.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List all ad units in the specified ad client for this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client for which to list ad units.
  ///
  /// [includeInactive] - Whether to include inactive ad units. Default: true.
  ///
  /// [maxResults] - The maximum number of ad units to include in the response,
  /// used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad units. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnits> list(
    core.String adClientId, {
    core.bool? includeInactive,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (includeInactive != null) 'includeInactive': ['${includeInactive}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'adclients/' + commons.escapeVariable('$adClientId') + '/adunits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnits.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AdunitsCustomchannelsResource {
  final commons.ApiRequester _requester;

  AdunitsCustomchannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all custom channels which the specified ad unit belongs to.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client which contains the ad unit.
  ///
  /// [adUnitId] - Ad unit for which to list custom channels.
  ///
  /// [maxResults] - The maximum number of custom channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through custom channels.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannels> list(
    core.String adClientId,
    core.String adUnitId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId') +
        '/customchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AlertsResource {
  final commons.ApiRequester _requester;

  AlertsResource(commons.ApiRequester client) : _requester = client;

  /// Dismiss (delete) the specified alert from the publisher's AdSense account.
  ///
  /// Request parameters:
  ///
  /// [alertId] - Alert to delete.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> delete(
    core.String alertId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'alerts/' + commons.escapeVariable('$alertId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// List the alerts for this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [locale] - The locale to use for translating alert messages. The account
  /// locale will be used if this is not supplied. The AdSense default (English)
  /// will be used if the supplied locale is invalid or unsupported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Alerts].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Alerts> list({
    core.String? locale,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (locale != null) 'locale': [locale],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'alerts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Alerts.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class CustomchannelsResource {
  final commons.ApiRequester _requester;

  CustomchannelsAdunitsResource get adunits =>
      CustomchannelsAdunitsResource(_requester);

  CustomchannelsResource(commons.ApiRequester client) : _requester = client;

  /// Get the specified custom channel from the specified ad client.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client which contains the custom channel.
  ///
  /// [customChannelId] - Custom channel to retrieve.
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
    core.String adClientId,
    core.String customChannelId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannel.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all custom channels in the specified ad client for this AdSense
  /// account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client for which to list custom channels.
  ///
  /// [maxResults] - The maximum number of custom channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through custom channels.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomChannels> list(
    core.String adClientId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CustomchannelsAdunitsResource {
  final commons.ApiRequester _requester;

  CustomchannelsAdunitsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all ad units in the specified custom channel.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client which contains the custom channel.
  ///
  /// [customChannelId] - Custom channel for which to list ad units.
  ///
  /// [includeInactive] - Whether to include inactive ad units. Default: true.
  ///
  /// [maxResults] - The maximum number of ad units to include in the response,
  /// used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through ad units. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnits].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnits> list(
    core.String adClientId,
    core.String customChannelId, {
    core.bool? includeInactive,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (includeInactive != null) 'includeInactive': ['${includeInactive}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId') +
        '/adunits';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdUnits.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class MetadataResource {
  final commons.ApiRequester _requester;

  MetadataDimensionsResource get dimensions =>
      MetadataDimensionsResource(_requester);
  MetadataMetricsResource get metrics => MetadataMetricsResource(_requester);

  MetadataResource(commons.ApiRequester client) : _requester = client;
}

class MetadataDimensionsResource {
  final commons.ApiRequester _requester;

  MetadataDimensionsResource(commons.ApiRequester client) : _requester = client;

  /// List the metadata for the dimensions available to this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Metadata> list({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'metadata/dimensions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Metadata.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class MetadataMetricsResource {
  final commons.ApiRequester _requester;

  MetadataMetricsResource(commons.ApiRequester client) : _requester = client;

  /// List the metadata for the metrics available to this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Metadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Metadata> list({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'metadata/metrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Metadata.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PaymentsResource {
  final commons.ApiRequester _requester;

  PaymentsResource(commons.ApiRequester client) : _requester = client;

  /// List the payments for this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payments].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payments> list({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'payments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Payments.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

  ReportsSavedResource get saved => ReportsSavedResource(_requester);

  ReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generate an AdSense report based on the report request sent in the query
  /// parameters.
  ///
  /// Returns the result as JSON; to retrieve output in CSV format specify
  /// "alt=csv" as a query parameter.
  ///
  /// Request parameters:
  ///
  /// [startDate] - Start of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)|(latest-(\d{2})-(\d{2})(-\d+y)?)|(latest-latest-(\d{2})(-\d+m)?)`.
  ///
  /// [endDate] - End of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)|(latest-(\d{2})-(\d{2})(-\d+y)?)|(latest-latest-(\d{2})(-\d+m)?)`.
  ///
  /// [accountId] - Accounts upon which to report.
  ///
  /// [currency] - Optional currency to use when reporting on monetary metrics.
  /// Defaults to the account's currency if not set.
  /// Value must have pattern `\[a-zA-Z\]+`.
  ///
  /// [dimension] - Dimensions to base the report on.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [filter] - Filters to be run on the report.
  /// Value must have pattern `\[a-zA-Z_\]+(==|=@).+`.
  ///
  /// [locale] - Optional locale to use for translating report output to a local
  /// language. Defaults to "en_US" if not specified.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [maxResults] - The maximum number of rows of report data to return.
  /// Value must be between "0" and "50000".
  ///
  /// [metric] - Numeric columns to include in the report.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [sort] - The name of a dimension or metric to sort the resulting report
  /// on, optionally prefixed with "+" to sort ascending or "-" to sort
  /// descending. If no prefix is specified, the column is sorted ascending.
  /// Value must have pattern `(\+|-)?\[a-zA-Z_\]+`.
  ///
  /// [startIndex] - Index of the first row of report data to return.
  /// Value must be between "0" and "5000".
  ///
  /// [useTimezoneReporting] - Whether the report should be generated in the
  /// AdSense account's local timezone. If false default PST/PDT timezone will
  /// be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [downloadOptions] - Options for downloading. A download can be either a
  /// Metadata (default) or Media download. Partial Media downloads are possible
  /// as well.
  ///
  /// Completes with a
  ///
  /// - [AdsenseReportsGenerateResponse] for Metadata downloads (see
  /// [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> generate(
    core.String startDate,
    core.String endDate, {
    core.List<core.String>? accountId,
    core.String? currency,
    core.List<core.String>? dimension,
    core.List<core.String>? filter,
    core.String? locale,
    core.int? maxResults,
    core.List<core.String>? metric,
    core.List<core.String>? sort,
    core.int? startIndex,
    core.bool? useTimezoneReporting,
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'startDate': [startDate],
      'endDate': [endDate],
      if (accountId != null) 'accountId': accountId,
      if (currency != null) 'currency': [currency],
      if (dimension != null) 'dimension': dimension,
      if (filter != null) 'filter': filter,
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (metric != null) 'metric': metric,
      if (sort != null) 'sort': sort,
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if (useTimezoneReporting != null)
        'useTimezoneReporting': ['${useTimezoneReporting}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'reports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return AdsenseReportsGenerateResponse.fromJson(
          _response as core.Map<core.String, core.dynamic>);
    } else {
      return _response as commons.Media;
    }
  }
}

class ReportsSavedResource {
  final commons.ApiRequester _requester;

  ReportsSavedResource(commons.ApiRequester client) : _requester = client;

  /// Generate an AdSense report based on the saved report ID sent in the query
  /// parameters.
  ///
  /// Request parameters:
  ///
  /// [savedReportId] - The saved report to retrieve.
  ///
  /// [locale] - Optional locale to use for translating report output to a local
  /// language. Defaults to "en_US" if not specified.
  /// Value must have pattern `\[a-zA-Z_\]+`.
  ///
  /// [maxResults] - The maximum number of rows of report data to return.
  /// Value must be between "0" and "50000".
  ///
  /// [startIndex] - Index of the first row of report data to return.
  /// Value must be between "0" and "5000".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdsenseReportsGenerateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdsenseReportsGenerateResponse> generate(
    core.String savedReportId, {
    core.String? locale,
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'reports/' + commons.escapeVariable('$savedReportId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AdsenseReportsGenerateResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all saved reports in this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of saved reports to include in the
  /// response, used for paging.
  /// Value must be between "0" and "100".
  ///
  /// [pageToken] - A continuation token, used to page through saved reports. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedReports> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'reports/saved';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedReports.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SavedadstylesResource {
  final commons.ApiRequester _requester;

  SavedadstylesResource(commons.ApiRequester client) : _requester = client;

  /// Get a specific saved ad style from the user's account.
  ///
  /// Request parameters:
  ///
  /// [savedAdStyleId] - Saved ad style to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedAdStyle].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedAdStyle> get(
    core.String savedAdStyleId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'savedadstyles/' + commons.escapeVariable('$savedAdStyleId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedAdStyle.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List all saved ad styles in the user's account.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of saved ad styles to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through saved ad styles.
  /// To retrieve the next page, set this parameter to the value of
  /// "nextPageToken" from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SavedAdStyles].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SavedAdStyles> list({
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'savedadstyles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SavedAdStyles.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class UrlchannelsResource {
  final commons.ApiRequester _requester;

  UrlchannelsResource(commons.ApiRequester client) : _requester = client;

  /// List all URL channels in the specified ad client for this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client for which to list URL channels.
  ///
  /// [maxResults] - The maximum number of URL channels to include in the
  /// response, used for paging.
  /// Value must be between "0" and "10000".
  ///
  /// [pageToken] - A continuation token, used to page through URL channels. To
  /// retrieve the next page, set this parameter to the value of "nextPageToken"
  /// from the previous response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UrlChannels].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UrlChannels> list(
    core.String adClientId, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'adclients/' + commons.escapeVariable('$adClientId') + '/urlchannels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UrlChannels.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Account {
  core.String? creationTime;

  /// Unique identifier of this account.
  core.String? id;

  /// Kind of resource this is, in this case adsense#account.
  core.String? kind;

  /// Name of this account.
  core.String? name;

  /// Whether this account is premium.
  core.bool? premium;

  /// Sub accounts of the this account.
  core.List<Account>? subAccounts;

  /// AdSense timezone of this account.
  core.String? timezone;

  Account({
    this.creationTime,
    this.id,
    this.kind,
    this.name,
    this.premium,
    this.subAccounts,
    this.timezone,
  });

  Account.fromJson(core.Map _json)
      : this(
          creationTime: _json.containsKey('creation_time')
              ? _json['creation_time'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          premium: _json.containsKey('premium')
              ? _json['premium'] as core.bool
              : null,
          subAccounts: _json.containsKey('subAccounts')
              ? (_json['subAccounts'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timezone: _json.containsKey('timezone')
              ? _json['timezone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creation_time': creationTime!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (premium != null) 'premium': premium!,
        if (subAccounts != null) 'subAccounts': subAccounts!,
        if (timezone != null) 'timezone': timezone!,
      };
}

class Accounts {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The accounts returned in this list response.
  core.List<Account>? items;

  /// Kind of list this is, in this case adsense#accounts.
  core.String? kind;

  /// Continuation token used to page through accounts.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  Accounts({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  Accounts.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class AdClient {
  /// Whether this ad client is opted in to ARC.
  core.bool? arcOptIn;

  /// Unique identifier of this ad client.
  core.String? id;

  /// Kind of resource this is, in this case adsense#adClient.
  core.String? kind;

  /// This ad client's product code, which corresponds to the PRODUCT_CODE
  /// report dimension.
  core.String? productCode;

  /// Whether this ad client supports being reported on.
  core.bool? supportsReporting;

  AdClient({
    this.arcOptIn,
    this.id,
    this.kind,
    this.productCode,
    this.supportsReporting,
  });

  AdClient.fromJson(core.Map _json)
      : this(
          arcOptIn: _json.containsKey('arcOptIn')
              ? _json['arcOptIn'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          productCode: _json.containsKey('productCode')
              ? _json['productCode'] as core.String
              : null,
          supportsReporting: _json.containsKey('supportsReporting')
              ? _json['supportsReporting'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arcOptIn != null) 'arcOptIn': arcOptIn!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (productCode != null) 'productCode': productCode!,
        if (supportsReporting != null) 'supportsReporting': supportsReporting!,
      };
}

class AdClients {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The ad clients returned in this list response.
  core.List<AdClient>? items;

  /// Kind of list this is, in this case adsense#adClients.
  core.String? kind;

  /// Continuation token used to page through ad clients.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  AdClients({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  AdClients.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => AdClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class AdCode {
  /// The Auto ad code snippet.
  ///
  /// The ad code snippet.
  core.String? adCode;

  /// The AMP Auto ad code snippet that goes in the body of an AMP page.
  core.String? ampBody;

  /// The AMP Auto ad code snippet that goes in the head of an AMP page.
  core.String? ampHead;

  /// Kind this is, in this case adsense#adCode.
  core.String? kind;

  AdCode({
    this.adCode,
    this.ampBody,
    this.ampHead,
    this.kind,
  });

  AdCode.fromJson(core.Map _json)
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
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adCode != null) 'adCode': adCode!,
        if (ampBody != null) 'ampBody': ampBody!,
        if (ampHead != null) 'ampHead': ampHead!,
        if (kind != null) 'kind': kind!,
      };
}

/// The colors which are included in the style.
///
/// These are represented as six hexadecimal characters, similar to HTML color
/// codes, but without the leading hash.
class AdStyleColors {
  /// The color of the ad background.
  core.String? background;

  /// The color of the ad border.
  core.String? border;

  /// The color of the ad text.
  core.String? text;

  /// The color of the ad title.
  core.String? title;

  /// The color of the ad url.
  core.String? url;

  AdStyleColors({
    this.background,
    this.border,
    this.text,
    this.title,
    this.url,
  });

  AdStyleColors.fromJson(core.Map _json)
      : this(
          background: _json.containsKey('background')
              ? _json['background'] as core.String
              : null,
          border: _json.containsKey('border')
              ? _json['border'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (background != null) 'background': background!,
        if (border != null) 'border': border!,
        if (text != null) 'text': text!,
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

/// The font which is included in the style.
class AdStyleFont {
  /// The family of the font.
  core.String? family;

  /// The size of the font.
  core.String? size;

  AdStyleFont({
    this.family,
    this.size,
  });

  AdStyleFont.fromJson(core.Map _json)
      : this(
          family: _json.containsKey('family')
              ? _json['family'] as core.String
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (family != null) 'family': family!,
        if (size != null) 'size': size!,
      };
}

class AdStyle {
  /// The colors which are included in the style.
  ///
  /// These are represented as six hexadecimal characters, similar to HTML color
  /// codes, but without the leading hash.
  AdStyleColors? colors;

  /// The style of the corners in the ad (deprecated: never populated, ignored).
  core.String? corners;

  /// The font which is included in the style.
  AdStyleFont? font;

  /// Kind this is, in this case adsense#adStyle.
  core.String? kind;

  AdStyle({
    this.colors,
    this.corners,
    this.font,
    this.kind,
  });

  AdStyle.fromJson(core.Map _json)
      : this(
          colors: _json.containsKey('colors')
              ? AdStyleColors.fromJson(
                  _json['colors'] as core.Map<core.String, core.dynamic>)
              : null,
          corners: _json.containsKey('corners')
              ? _json['corners'] as core.String
              : null,
          font: _json.containsKey('font')
              ? AdStyleFont.fromJson(
                  _json['font'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colors != null) 'colors': colors!,
        if (corners != null) 'corners': corners!,
        if (font != null) 'font': font!,
        if (kind != null) 'kind': kind!,
      };
}

/// The backup option to be used in instances where no ad is available.
class AdUnitContentAdsSettingsBackupOption {
  /// Color to use when type is set to COLOR.
  core.String? color;

  /// Type of the backup option.
  ///
  /// Possible values are BLANK, COLOR and URL.
  core.String? type;

  /// URL to use when type is set to URL.
  core.String? url;

  AdUnitContentAdsSettingsBackupOption({
    this.color,
    this.type,
    this.url,
  });

  AdUnitContentAdsSettingsBackupOption.fromJson(core.Map _json)
      : this(
          color:
              _json.containsKey('color') ? _json['color'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (type != null) 'type': type!,
        if (url != null) 'url': url!,
      };
}

/// Settings specific to content ads (AFC) and highend mobile content ads (AFMC
/// - deprecated).
class AdUnitContentAdsSettings {
  /// The backup option to be used in instances where no ad is available.
  AdUnitContentAdsSettingsBackupOption? backupOption;

  /// Size of this ad unit.
  core.String? size;

  /// Type of this ad unit.
  core.String? type;

  AdUnitContentAdsSettings({
    this.backupOption,
    this.size,
    this.type,
  });

  AdUnitContentAdsSettings.fromJson(core.Map _json)
      : this(
          backupOption: _json.containsKey('backupOption')
              ? AdUnitContentAdsSettingsBackupOption.fromJson(
                  _json['backupOption'] as core.Map<core.String, core.dynamic>)
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupOption != null) 'backupOption': backupOption!,
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

/// Settings specific to feed ads (AFF) - deprecated.
class AdUnitFeedAdsSettings {
  /// The position of the ads relative to the feed entries.
  core.String? adPosition;

  /// The frequency at which ads should appear in the feed (i.e. every N
  /// entries).
  core.int? frequency;

  /// The minimum length an entry should be in order to have attached ads.
  core.int? minimumWordCount;

  /// The type of ads which should appear.
  core.String? type;

  AdUnitFeedAdsSettings({
    this.adPosition,
    this.frequency,
    this.minimumWordCount,
    this.type,
  });

  AdUnitFeedAdsSettings.fromJson(core.Map _json)
      : this(
          adPosition: _json.containsKey('adPosition')
              ? _json['adPosition'] as core.String
              : null,
          frequency: _json.containsKey('frequency')
              ? _json['frequency'] as core.int
              : null,
          minimumWordCount: _json.containsKey('minimumWordCount')
              ? _json['minimumWordCount'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adPosition != null) 'adPosition': adPosition!,
        if (frequency != null) 'frequency': frequency!,
        if (minimumWordCount != null) 'minimumWordCount': minimumWordCount!,
        if (type != null) 'type': type!,
      };
}

/// Settings specific to WAP mobile content ads (AFMC) - deprecated.
class AdUnitMobileContentAdsSettings {
  /// The markup language to use for this ad unit.
  core.String? markupLanguage;

  /// The scripting language to use for this ad unit.
  core.String? scriptingLanguage;

  /// Size of this ad unit.
  core.String? size;

  /// Type of this ad unit.
  core.String? type;

  AdUnitMobileContentAdsSettings({
    this.markupLanguage,
    this.scriptingLanguage,
    this.size,
    this.type,
  });

  AdUnitMobileContentAdsSettings.fromJson(core.Map _json)
      : this(
          markupLanguage: _json.containsKey('markupLanguage')
              ? _json['markupLanguage'] as core.String
              : null,
          scriptingLanguage: _json.containsKey('scriptingLanguage')
              ? _json['scriptingLanguage'] as core.String
              : null,
          size: _json.containsKey('size') ? _json['size'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (markupLanguage != null) 'markupLanguage': markupLanguage!,
        if (scriptingLanguage != null) 'scriptingLanguage': scriptingLanguage!,
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

class AdUnit {
  /// Identity code of this ad unit, not necessarily unique across ad clients.
  core.String? code;

  /// Settings specific to content ads (AFC) and highend mobile content ads
  /// (AFMC - deprecated).
  AdUnitContentAdsSettings? contentAdsSettings;

  /// Custom style information specific to this ad unit.
  AdStyle? customStyle;

  /// Settings specific to feed ads (AFF) - deprecated.
  AdUnitFeedAdsSettings? feedAdsSettings;

  /// Unique identifier of this ad unit.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsense#adUnit.
  core.String? kind;

  /// Settings specific to WAP mobile content ads (AFMC) - deprecated.
  AdUnitMobileContentAdsSettings? mobileContentAdsSettings;

  /// Name of this ad unit.
  core.String? name;

  /// ID of the saved ad style which holds this ad unit's style information.
  core.String? savedStyleId;

  /// Status of this ad unit.
  ///
  /// Possible values are:
  /// NEW: Indicates that the ad unit was created within the last seven days and
  /// does not yet have any activity associated with it.
  ///
  /// ACTIVE: Indicates that there has been activity on this ad unit in the last
  /// seven days.
  ///
  /// INACTIVE: Indicates that there has been no activity on this ad unit in the
  /// last seven days.
  core.String? status;

  AdUnit({
    this.code,
    this.contentAdsSettings,
    this.customStyle,
    this.feedAdsSettings,
    this.id,
    this.kind,
    this.mobileContentAdsSettings,
    this.name,
    this.savedStyleId,
    this.status,
  });

  AdUnit.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          contentAdsSettings: _json.containsKey('contentAdsSettings')
              ? AdUnitContentAdsSettings.fromJson(_json['contentAdsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customStyle: _json.containsKey('customStyle')
              ? AdStyle.fromJson(
                  _json['customStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          feedAdsSettings: _json.containsKey('feedAdsSettings')
              ? AdUnitFeedAdsSettings.fromJson(_json['feedAdsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mobileContentAdsSettings:
              _json.containsKey('mobileContentAdsSettings')
                  ? AdUnitMobileContentAdsSettings.fromJson(
                      _json['mobileContentAdsSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          savedStyleId: _json.containsKey('savedStyleId')
              ? _json['savedStyleId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (contentAdsSettings != null)
          'contentAdsSettings': contentAdsSettings!,
        if (customStyle != null) 'customStyle': customStyle!,
        if (feedAdsSettings != null) 'feedAdsSettings': feedAdsSettings!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (mobileContentAdsSettings != null)
          'mobileContentAdsSettings': mobileContentAdsSettings!,
        if (name != null) 'name': name!,
        if (savedStyleId != null) 'savedStyleId': savedStyleId!,
        if (status != null) 'status': status!,
      };
}

class AdUnits {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The ad units returned in this list response.
  core.List<AdUnit>? items;

  /// Kind of list this is, in this case adsense#adUnits.
  core.String? kind;

  /// Continuation token used to page through ad units.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  AdUnits({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  AdUnits.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class AdsenseReportsGenerateResponseHeaders {
  /// The currency of this column.
  ///
  /// Only present if the header type is METRIC_CURRENCY.
  core.String? currency;

  /// The name of the header.
  core.String? name;

  /// The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
  /// METRIC_CURRENCY.
  core.String? type;

  AdsenseReportsGenerateResponseHeaders({
    this.currency,
    this.name,
    this.type,
  });

  AdsenseReportsGenerateResponseHeaders.fromJson(core.Map _json)
      : this(
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class AdsenseReportsGenerateResponse {
  /// The averages of the report.
  ///
  /// This is the same length as any other row in the report; cells
  /// corresponding to dimension columns are empty.
  core.List<core.String>? averages;

  /// The requested end date in yyyy-mm-dd format.
  core.String? endDate;

  /// The header information of the columns requested in the report.
  ///
  /// This is a list of headers; one for each dimension in the request, followed
  /// by one for each metric in the request.
  core.List<AdsenseReportsGenerateResponseHeaders>? headers;

  /// Kind this is, in this case adsense#report.
  core.String? kind;

  /// The output rows of the report.
  ///
  /// Each row is a list of cells; one for each dimension in the request,
  /// followed by one for each metric in the request. The dimension cells
  /// contain strings, and the metric cells contain numbers.
  core.List<core.List<core.String>>? rows;

  /// The requested start date in yyyy-mm-dd format.
  core.String? startDate;

  /// The total number of rows matched by the report request.
  ///
  /// Fewer rows may be returned in the response due to being limited by the row
  /// count requested or the report row limit.
  core.String? totalMatchedRows;

  /// The totals of the report.
  ///
  /// This is the same length as any other row in the report; cells
  /// corresponding to dimension columns are empty.
  core.List<core.String>? totals;

  /// Any warnings associated with generation of the report.
  core.List<core.String>? warnings;

  AdsenseReportsGenerateResponse({
    this.averages,
    this.endDate,
    this.headers,
    this.kind,
    this.rows,
    this.startDate,
    this.totalMatchedRows,
    this.totals,
    this.warnings,
  });

  AdsenseReportsGenerateResponse.fromJson(core.Map _json)
      : this(
          averages: _json.containsKey('averages')
              ? (_json['averages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) =>
                      AdsenseReportsGenerateResponseHeaders.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => (value as core.List)
                      .map((value) => value as core.String)
                      .toList())
                  .toList()
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
          totalMatchedRows: _json.containsKey('totalMatchedRows')
              ? _json['totalMatchedRows'] as core.String
              : null,
          totals: _json.containsKey('totals')
              ? (_json['totals'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
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
        if (kind != null) 'kind': kind!,
        if (rows != null) 'rows': rows!,
        if (startDate != null) 'startDate': startDate!,
        if (totalMatchedRows != null) 'totalMatchedRows': totalMatchedRows!,
        if (totals != null) 'totals': totals!,
        if (warnings != null) 'warnings': warnings!,
      };
}

class Alert {
  /// Unique identifier of this alert.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Whether this alert can be dismissed.
  core.bool? isDismissible;

  /// Kind of resource this is, in this case adsense#alert.
  core.String? kind;

  /// The localized alert message.
  core.String? message;

  /// Severity of this alert.
  ///
  /// Possible values: INFO, WARNING, SEVERE.
  core.String? severity;

  /// Type of this alert.
  ///
  /// Possible values: SELF_HOLD, MIGRATED_TO_BILLING3,
  /// ADDRESS_PIN_VERIFICATION, PHONE_PIN_VERIFICATION, CORPORATE_ENTITY,
  /// GRAYLISTED_PUBLISHER, API_HOLD.
  core.String? type;

  Alert({
    this.id,
    this.isDismissible,
    this.kind,
    this.message,
    this.severity,
    this.type,
  });

  Alert.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          isDismissible: _json.containsKey('isDismissible')
              ? _json['isDismissible'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (isDismissible != null) 'isDismissible': isDismissible!,
        if (kind != null) 'kind': kind!,
        if (message != null) 'message': message!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
      };
}

class Alerts {
  /// The alerts returned in this list response.
  core.List<Alert>? items;

  /// Kind of list this is, in this case adsense#alerts.
  core.String? kind;

  Alerts({
    this.items,
    this.kind,
  });

  Alerts.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Alert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// The targeting information of this custom channel, if activated.
class CustomChannelTargetingInfo {
  /// The name used to describe this channel externally.
  core.String? adsAppearOn;

  /// The external description of the channel.
  core.String? description;

  /// The locations in which ads appear.
  ///
  /// (Only valid for content and mobile content ads (deprecated)). Acceptable
  /// values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT, MIDDLE_LEFT,
  /// MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER, BOTTOM_RIGHT,
  /// MULTIPLE_LOCATIONS. Acceptable values for mobile content ads (deprecated)
  /// are: TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS.
  core.String? location;

  /// The language of the sites ads will be displayed on.
  core.String? siteLanguage;

  CustomChannelTargetingInfo({
    this.adsAppearOn,
    this.description,
    this.location,
    this.siteLanguage,
  });

  CustomChannelTargetingInfo.fromJson(core.Map _json)
      : this(
          adsAppearOn: _json.containsKey('adsAppearOn')
              ? _json['adsAppearOn'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          siteLanguage: _json.containsKey('siteLanguage')
              ? _json['siteLanguage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsAppearOn != null) 'adsAppearOn': adsAppearOn!,
        if (description != null) 'description': description!,
        if (location != null) 'location': location!,
        if (siteLanguage != null) 'siteLanguage': siteLanguage!,
      };
}

class CustomChannel {
  /// Code of this custom channel, not necessarily unique across ad clients.
  core.String? code;

  /// Unique identifier of this custom channel.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsense#customChannel.
  core.String? kind;

  /// Name of this custom channel.
  core.String? name;

  /// The targeting information of this custom channel, if activated.
  CustomChannelTargetingInfo? targetingInfo;

  CustomChannel({
    this.code,
    this.id,
    this.kind,
    this.name,
    this.targetingInfo,
  });

  CustomChannel.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          targetingInfo: _json.containsKey('targetingInfo')
              ? CustomChannelTargetingInfo.fromJson(
                  _json['targetingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (targetingInfo != null) 'targetingInfo': targetingInfo!,
      };
}

class CustomChannels {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The custom channels returned in this list response.
  core.List<CustomChannel>? items;

  /// Kind of list this is, in this case adsense#customChannels.
  core.String? kind;

  /// Continuation token used to page through custom channels.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  CustomChannels({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  CustomChannels.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class Metadata {
  core.List<ReportingMetadataEntry>? items;

  /// Kind of list this is, in this case adsense#metadata.
  core.String? kind;

  Metadata({
    this.items,
    this.kind,
  });

  Metadata.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => ReportingMetadataEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

class Payment {
  /// Unique identifier of this Payment.
  core.String? id;

  /// Kind of resource this is, in this case adsense#payment.
  core.String? kind;

  /// The amount to be paid.
  core.String? paymentAmount;

  /// The currency code for the amount to be paid.
  core.String? paymentAmountCurrencyCode;

  /// The date this payment was/will be credited to the user, or none if the
  /// payment threshold has not been met.
  core.String? paymentDate;

  Payment({
    this.id,
    this.kind,
    this.paymentAmount,
    this.paymentAmountCurrencyCode,
    this.paymentDate,
  });

  Payment.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          paymentAmount: _json.containsKey('paymentAmount')
              ? _json['paymentAmount'] as core.String
              : null,
          paymentAmountCurrencyCode:
              _json.containsKey('paymentAmountCurrencyCode')
                  ? _json['paymentAmountCurrencyCode'] as core.String
                  : null,
          paymentDate: _json.containsKey('paymentDate')
              ? _json['paymentDate'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (paymentAmount != null) 'paymentAmount': paymentAmount!,
        if (paymentAmountCurrencyCode != null)
          'paymentAmountCurrencyCode': paymentAmountCurrencyCode!,
        if (paymentDate != null) 'paymentDate': paymentDate!,
      };
}

class Payments {
  /// The list of Payments for the account.
  ///
  /// One or both of a) the account's most recent payment; and b) the account's
  /// upcoming payment.
  core.List<Payment>? items;

  /// Kind of list this is, in this case adsense#payments.
  core.String? kind;

  Payments({
    this.items,
    this.kind,
  });

  Payments.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Payment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

class ReportingMetadataEntry {
  /// For metrics this is a list of dimension IDs which the metric is compatible
  /// with, for dimensions it is a list of compatibility groups the dimension
  /// belongs to.
  core.List<core.String>? compatibleDimensions;

  /// The names of the metrics the dimension or metric this reporting metadata
  /// entry describes is compatible with.
  core.List<core.String>? compatibleMetrics;

  /// Unique identifier of this reporting metadata entry, corresponding to the
  /// name of the appropriate dimension or metric.
  core.String? id;

  /// Kind of resource this is, in this case adsense#reportingMetadataEntry.
  core.String? kind;

  /// The names of the dimensions which the dimension or metric this reporting
  /// metadata entry describes requires to also be present in order for the
  /// report to be valid.
  ///
  /// Omitting these will not cause an error or warning, but may result in data
  /// which cannot be correctly interpreted.
  core.List<core.String>? requiredDimensions;

  /// The names of the metrics which the dimension or metric this reporting
  /// metadata entry describes requires to also be present in order for the
  /// report to be valid.
  ///
  /// Omitting these will not cause an error or warning, but may result in data
  /// which cannot be correctly interpreted.
  core.List<core.String>? requiredMetrics;

  /// The codes of the projects supported by the dimension or metric this
  /// reporting metadata entry describes.
  core.List<core.String>? supportedProducts;

  ReportingMetadataEntry({
    this.compatibleDimensions,
    this.compatibleMetrics,
    this.id,
    this.kind,
    this.requiredDimensions,
    this.requiredMetrics,
    this.supportedProducts,
  });

  ReportingMetadataEntry.fromJson(core.Map _json)
      : this(
          compatibleDimensions: _json.containsKey('compatibleDimensions')
              ? (_json['compatibleDimensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          compatibleMetrics: _json.containsKey('compatibleMetrics')
              ? (_json['compatibleMetrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          requiredDimensions: _json.containsKey('requiredDimensions')
              ? (_json['requiredDimensions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          requiredMetrics: _json.containsKey('requiredMetrics')
              ? (_json['requiredMetrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          supportedProducts: _json.containsKey('supportedProducts')
              ? (_json['supportedProducts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibleDimensions != null)
          'compatibleDimensions': compatibleDimensions!,
        if (compatibleMetrics != null) 'compatibleMetrics': compatibleMetrics!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (requiredDimensions != null)
          'requiredDimensions': requiredDimensions!,
        if (requiredMetrics != null) 'requiredMetrics': requiredMetrics!,
        if (supportedProducts != null) 'supportedProducts': supportedProducts!,
      };
}

class SavedAdStyle {
  /// The AdStyle itself.
  AdStyle? adStyle;

  /// Unique identifier of this saved ad style.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsense#savedAdStyle.
  core.String? kind;

  /// The user selected name of this SavedAdStyle.
  core.String? name;

  SavedAdStyle({
    this.adStyle,
    this.id,
    this.kind,
    this.name,
  });

  SavedAdStyle.fromJson(core.Map _json)
      : this(
          adStyle: _json.containsKey('adStyle')
              ? AdStyle.fromJson(
                  _json['adStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adStyle != null) 'adStyle': adStyle!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

class SavedAdStyles {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The saved ad styles returned in this list response.
  core.List<SavedAdStyle>? items;

  /// Kind of list this is, in this case adsense#savedAdStyles.
  core.String? kind;

  /// Continuation token used to page through ad units.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  SavedAdStyles({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  SavedAdStyles.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SavedAdStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class SavedReport {
  /// Unique identifier of this saved report.
  core.String? id;

  /// Kind of resource this is, in this case adsense#savedReport.
  core.String? kind;

  /// This saved report's name.
  core.String? name;

  SavedReport({
    this.id,
    this.kind,
    this.name,
  });

  SavedReport.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

class SavedReports {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The saved reports returned in this list response.
  core.List<SavedReport>? items;

  /// Kind of list this is, in this case adsense#savedReports.
  core.String? kind;

  /// Continuation token used to page through saved reports.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  SavedReports({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  SavedReports.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SavedReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class UrlChannel {
  /// Unique identifier of this URL channel.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsense#urlChannel.
  core.String? kind;

  /// URL Pattern of this URL channel.
  ///
  /// Does not include "http://" or "https://". Example: www.example.com/home
  core.String? urlPattern;

  UrlChannel({
    this.id,
    this.kind,
    this.urlPattern,
  });

  UrlChannel.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          urlPattern: _json.containsKey('urlPattern')
              ? _json['urlPattern'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (urlPattern != null) 'urlPattern': urlPattern!,
      };
}

class UrlChannels {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The URL channels returned in this list response.
  core.List<UrlChannel>? items;

  /// Kind of list this is, in this case adsense#urlChannels.
  core.String? kind;

  /// Continuation token used to page through URL channels.
  ///
  /// To retrieve the next page of results, set the next request's "pageToken"
  /// value to this.
  core.String? nextPageToken;

  UrlChannels({
    this.etag,
    this.items,
    this.kind,
    this.nextPageToken,
  });

  UrlChannels.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => UrlChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
