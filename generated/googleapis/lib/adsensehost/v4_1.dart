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

/// AdSense Host API - v4.1
///
/// Generates performance reports, generates ad codes, and provides publisher
/// management capabilities for AdSense Hosts.
///
/// For more information, see <https://developers.google.com/adsense/host/>
///
/// Create an instance of [AdSenseHostApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAdclientsResource]
///   - [AccountsAdunitsResource]
///   - [AccountsReportsResource]
/// - [AdclientsResource]
/// - [AssociationsessionsResource]
/// - [CustomchannelsResource]
/// - [ReportsResource]
/// - [UrlchannelsResource]
library adsensehost.v4_1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Generates performance reports, generates ad codes, and provides publisher
/// management capabilities for AdSense Hosts.
class AdSenseHostApi {
  /// View and manage your AdSense host data and associated accounts
  static const adsensehostScope = 'https://www.googleapis.com/auth/adsensehost';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  AdclientsResource get adclients => AdclientsResource(_requester);
  AssociationsessionsResource get associationsessions =>
      AssociationsessionsResource(_requester);
  CustomchannelsResource get customchannels =>
      CustomchannelsResource(_requester);
  ReportsResource get reports => ReportsResource(_requester);
  UrlchannelsResource get urlchannels => UrlchannelsResource(_requester);

  AdSenseHostApi(http.Client client,
      {core.String rootUrl = 'https://www.googleapis.com/',
      core.String servicePath = 'adsensehost/v4.1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsResource get adclients =>
      AccountsAdclientsResource(_requester);
  AccountsAdunitsResource get adunits => AccountsAdunitsResource(_requester);
  AccountsReportsResource get reports => AccountsReportsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Get information about the selected associated AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account to get information about.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' + commons.escapeVariable('$accountId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List hosted accounts associated with this AdSense account by ad client id.
  ///
  /// Request parameters:
  ///
  /// [filterAdClientId] - Ad clients to list accounts for.
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
  async.Future<Accounts> list(
    core.List<core.String> filterAdClientId, {
    core.String? $fields,
  }) async {
    if (filterAdClientId.isEmpty) {
      throw core.ArgumentError('Parameter filterAdClientId cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'filterAdClientId': filterAdClientId,
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Accounts.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdclientsResource {
  final commons.ApiRequester _requester;

  AccountsAdclientsResource(commons.ApiRequester client) : _requester = client;

  /// Get information about one of the ad clients in the specified publisher's
  /// AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client to get.
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
    core.String accountId,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClient.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all hosted ad clients in the specified hosted account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' + commons.escapeVariable('$accountId') + '/adclients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClients.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsAdunitsResource {
  final commons.ApiRequester _requester;

  AccountsAdunitsResource(commons.ApiRequester client) : _requester = client;

  /// Delete the specified ad unit from the specified publisher AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad unit.
  ///
  /// [adClientId] - Ad client for which to get ad unit.
  ///
  /// [adUnitId] - Ad unit to delete.
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
  async.Future<AdUnit> delete(
    core.String accountId,
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the specified host ad unit in this AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad unit.
  ///
  /// [adClientId] - Ad client for which to get ad unit.
  ///
  /// [adUnitId] - Ad unit to get.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get ad code for the specified ad unit, attaching the specified host custom
  /// channels.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client with contains the ad unit.
  ///
  /// [adUnitId] - Ad unit to get the code for.
  ///
  /// [hostCustomChannelId] - Host custom channel to attach to the ad code.
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
    core.List<core.String>? hostCustomChannelId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hostCustomChannelId != null)
        'hostCustomChannelId': hostCustomChannelId,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits/' +
        commons.escapeVariable('$adUnitId') +
        '/adcode';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdCode.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Insert the supplied ad unit into the specified publisher AdSense account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which will contain the ad unit.
  ///
  /// [adClientId] - Ad client into which to insert the ad unit.
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
  async.Future<AdUnit> insert(
    AdUnit request,
    core.String accountId,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all ad units in the specified publisher's AdSense account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (includeInactive != null) 'includeInactive': ['${includeInactive}'],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdUnits.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the supplied ad unit in the specified publisher AdSense account.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client which contains the ad unit.
  ///
  /// [adUnitId] - Ad unit to get.
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
    core.String accountId,
    core.String adClientId,
    core.String adUnitId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'adUnitId': [adUnitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the supplied ad unit in the specified publisher AdSense account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account which contains the ad client.
  ///
  /// [adClientId] - Ad client which contains the ad unit.
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
  async.Future<AdUnit> update(
    AdUnit request,
    core.String accountId,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'accounts/' +
        commons.escapeVariable('$accountId') +
        '/adclients/' +
        commons.escapeVariable('$adClientId') +
        '/adunits';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AccountsReportsResource {
  final commons.ApiRequester _requester;

  AccountsReportsResource(commons.ApiRequester client) : _requester = client;

  /// Generate an AdSense report based on the report request sent in the query
  /// parameters.
  ///
  /// Returns the result as JSON; to retrieve output in CSV format specify
  /// "alt=csv" as a query parameter.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Hosted account upon which to report.
  ///
  /// [startDate] - Start of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)`.
  ///
  /// [endDate] - End of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)`.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> generate(
    core.String accountId,
    core.String startDate,
    core.String endDate, {
    core.List<core.String>? dimension,
    core.List<core.String>? filter,
    core.String? locale,
    core.int? maxResults,
    core.List<core.String>? metric,
    core.List<core.String>? sort,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'startDate': [startDate],
      'endDate': [endDate],
      if (dimension != null) 'dimension': dimension,
      if (filter != null) 'filter': filter,
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (metric != null) 'metric': metric,
      if (sort != null) 'sort': sort,
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'accounts/' + commons.escapeVariable('$accountId') + '/reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AdclientsResource {
  final commons.ApiRequester _requester;

  AdclientsResource(commons.ApiRequester client) : _requester = client;

  /// Get information about one of the ad clients in the Host AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client to get.
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
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' + commons.escapeVariable('$adClientId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClient.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all host ad clients in this AdSense account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'adclients';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AdClients.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class AssociationsessionsResource {
  final commons.ApiRequester _requester;

  AssociationsessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create an association session for initiating an association with an
  /// AdSense user.
  ///
  /// Request parameters:
  ///
  /// [productCode] - Products to associate with the user.
  ///
  /// [websiteUrl] - The URL of the user's hosted website.
  ///
  /// [callbackUrl] - The URL to redirect the user to once association is
  /// completed. It receives a token parameter that can then be used to retrieve
  /// the associated account.
  ///
  /// [userLocale] - The preferred locale of the user.
  ///
  /// [websiteLocale] - The locale of the user's hosted website.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssociationSession].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssociationSession> start(
    core.List<core.String> productCode,
    core.String websiteUrl, {
    core.String? callbackUrl,
    core.String? userLocale,
    core.String? websiteLocale,
    core.String? $fields,
  }) async {
    if (productCode.isEmpty) {
      throw core.ArgumentError('Parameter productCode cannot be empty.');
    }
    final queryParams_ = <core.String, core.List<core.String>>{
      'productCode': productCode,
      'websiteUrl': [websiteUrl],
      if (callbackUrl != null) 'callbackUrl': [callbackUrl],
      if (userLocale != null) 'userLocale': [userLocale],
      if (websiteLocale != null) 'websiteLocale': [websiteLocale],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'associationsessions/start';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssociationSession.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verify an association session after the association callback returns from
  /// AdSense signup.
  ///
  /// Request parameters:
  ///
  /// [token] - The token returned to the association callback URL.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AssociationSession].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AssociationSession> verify(
    core.String token, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'associationsessions/verify';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AssociationSession.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class CustomchannelsResource {
  final commons.ApiRequester _requester;

  CustomchannelsResource(commons.ApiRequester client) : _requester = client;

  /// Delete a specific custom channel from the host AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client from which to delete the custom channel.
  ///
  /// [customChannelId] - Custom channel to delete.
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
  async.Future<CustomChannel> delete(
    core.String adClientId,
    core.String customChannelId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a specific custom channel from the host AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client from which to get the custom channel.
  ///
  /// [customChannelId] - Custom channel to get.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels/' +
        commons.escapeVariable('$customChannelId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Add a new custom channel to the host AdSense account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client to which the new custom channel will be added.
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
  async.Future<CustomChannel> insert(
    CustomChannel request,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all host custom channels in this AdSense account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CustomChannels.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a custom channel in the host AdSense account.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client in which the custom channel will be updated.
  ///
  /// [customChannelId] - Custom channel to get.
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
    core.String adClientId,
    core.String customChannelId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'customChannelId': [customChannelId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update a custom channel in the host AdSense account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client in which the custom channel will be updated.
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
  async.Future<CustomChannel> update(
    CustomChannel request,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/customchannels';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return CustomChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ReportsResource {
  final commons.ApiRequester _requester;

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
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)`.
  ///
  /// [endDate] - End of the date range to report on in "YYYY-MM-DD" format,
  /// inclusive.
  /// Value must have pattern
  /// `\d{4}-\d{2}-\d{2}|(today|startOfMonth|startOfYear)((\[\-\+\]\d+\[dwmy\]){0,3}?)`.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Report].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Report> generate(
    core.String startDate,
    core.String endDate, {
    core.List<core.String>? dimension,
    core.List<core.String>? filter,
    core.String? locale,
    core.int? maxResults,
    core.List<core.String>? metric,
    core.List<core.String>? sort,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'startDate': [startDate],
      'endDate': [endDate],
      if (dimension != null) 'dimension': dimension,
      if (filter != null) 'filter': filter,
      if (locale != null) 'locale': [locale],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (metric != null) 'metric': metric,
      if (sort != null) 'sort': sort,
      if (startIndex != null) 'startIndex': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'reports';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Report.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class UrlchannelsResource {
  final commons.ApiRequester _requester;

  UrlchannelsResource(commons.ApiRequester client) : _requester = client;

  /// Delete a URL channel from the host AdSense account.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client from which to delete the URL channel.
  ///
  /// [urlChannelId] - URL channel to delete.
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
  async.Future<UrlChannel> delete(
    core.String adClientId,
    core.String urlChannelId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'adclients/' +
        commons.escapeVariable('$adClientId') +
        '/urlchannels/' +
        commons.escapeVariable('$urlChannelId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return UrlChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Add a new URL channel to the host AdSense account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [adClientId] - Ad client to which the new URL channel will be added.
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
  async.Future<UrlChannel> insert(
    UrlChannel request,
    core.String adClientId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'adclients/' + commons.escapeVariable('$adClientId') + '/urlchannels';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UrlChannel.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all host URL channels in the host AdSense account.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'adclients/' + commons.escapeVariable('$adClientId') + '/urlchannels';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UrlChannels.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class Account {
  /// Unique identifier of this account.
  core.String? id;

  /// Kind of resource this is, in this case adsensehost#account.
  core.String? kind;

  /// Name of this account.
  core.String? name;

  /// Approval status of this account.
  ///
  /// One of: PENDING, APPROVED, DISABLED.
  core.String? status;

  Account({
    this.id,
    this.kind,
    this.name,
    this.status,
  });

  Account.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
      };
}

class Accounts {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The accounts returned in this list response.
  core.List<Account>? items;

  /// Kind of list this is, in this case adsensehost#accounts.
  core.String? kind;

  Accounts({
    this.etag,
    this.items,
    this.kind,
  });

  Accounts.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

class AdClient {
  /// Whether this ad client is opted in to ARC.
  core.bool? arcOptIn;

  /// Unique identifier of this ad client.
  core.String? id;

  /// Kind of resource this is, in this case adsensehost#adClient.
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

  AdClient.fromJson(core.Map json_)
      : this(
          arcOptIn: json_.containsKey('arcOptIn')
              ? json_['arcOptIn'] as core.bool
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          productCode: json_.containsKey('productCode')
              ? json_['productCode'] as core.String
              : null,
          supportsReporting: json_.containsKey('supportsReporting')
              ? json_['supportsReporting'] as core.bool
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

  /// Kind of list this is, in this case adsensehost#adClients.
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

  AdClients.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => AdClient.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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
  /// The ad code snippet.
  core.String? adCode;

  /// Kind this is, in this case adsensehost#adCode.
  core.String? kind;

  AdCode({
    this.adCode,
    this.kind,
  });

  AdCode.fromJson(core.Map json_)
      : this(
          adCode: json_.containsKey('adCode')
              ? json_['adCode'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adCode != null) 'adCode': adCode!,
        if (kind != null) 'kind': kind!,
      };
}

/// The colors included in the style.
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

  AdStyleColors.fromJson(core.Map json_)
      : this(
          background: json_.containsKey('background')
              ? json_['background'] as core.String
              : null,
          border: json_.containsKey('border')
              ? json_['border'] as core.String
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  ///
  /// Possible values are: ACCOUNT_DEFAULT_FAMILY, ADSENSE_DEFAULT_FAMILY,
  /// ARIAL, TIMES and VERDANA.
  core.String? family;

  /// The size of the font.
  ///
  /// Possible values are: ACCOUNT_DEFAULT_SIZE, ADSENSE_DEFAULT_SIZE, SMALL,
  /// MEDIUM and LARGE.
  core.String? size;

  AdStyleFont({
    this.family,
    this.size,
  });

  AdStyleFont.fromJson(core.Map json_)
      : this(
          family: json_.containsKey('family')
              ? json_['family'] as core.String
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (family != null) 'family': family!,
        if (size != null) 'size': size!,
      };
}

class AdStyle {
  /// The colors included in the style.
  ///
  /// These are represented as six hexadecimal characters, similar to HTML color
  /// codes, but without the leading hash.
  AdStyleColors? colors;

  /// The style of the corners in the ad (deprecated: never populated, ignored).
  core.String? corners;

  /// The font which is included in the style.
  AdStyleFont? font;

  /// Kind this is, in this case adsensehost#adStyle.
  core.String? kind;

  AdStyle({
    this.colors,
    this.corners,
    this.font,
    this.kind,
  });

  AdStyle.fromJson(core.Map json_)
      : this(
          colors: json_.containsKey('colors')
              ? AdStyleColors.fromJson(
                  json_['colors'] as core.Map<core.String, core.dynamic>)
              : null,
          corners: json_.containsKey('corners')
              ? json_['corners'] as core.String
              : null,
          font: json_.containsKey('font')
              ? AdStyleFont.fromJson(
                  json_['font'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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
  ///
  /// These are represented as six hexadecimal characters, similar to HTML color
  /// codes, but without the leading hash.
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

  AdUnitContentAdsSettingsBackupOption.fromJson(core.Map json_)
      : this(
          color:
              json_.containsKey('color') ? json_['color'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
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
  ///
  /// Size values are in the form SIZE_{width}_{height}.
  core.String? size;

  /// Type of this ad unit.
  ///
  /// Possible values are TEXT, TEXT_IMAGE, IMAGE and LINK.
  core.String? type;

  AdUnitContentAdsSettings({
    this.backupOption,
    this.size,
    this.type,
  });

  AdUnitContentAdsSettings.fromJson(core.Map json_)
      : this(
          backupOption: json_.containsKey('backupOption')
              ? AdUnitContentAdsSettingsBackupOption.fromJson(
                  json_['backupOption'] as core.Map<core.String, core.dynamic>)
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupOption != null) 'backupOption': backupOption!,
        if (size != null) 'size': size!,
        if (type != null) 'type': type!,
      };
}

/// Settings specific to WAP mobile content ads (AFMC - deprecated).
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

  AdUnitMobileContentAdsSettings.fromJson(core.Map json_)
      : this(
          markupLanguage: json_.containsKey('markupLanguage')
              ? json_['markupLanguage'] as core.String
              : null,
          scriptingLanguage: json_.containsKey('scriptingLanguage')
              ? json_['scriptingLanguage'] as core.String
              : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  /// Unique identifier of this ad unit.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsensehost#adUnit.
  core.String? kind;

  /// Settings specific to WAP mobile content ads (AFMC - deprecated).
  AdUnitMobileContentAdsSettings? mobileContentAdsSettings;

  /// Name of this ad unit.
  core.String? name;

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
    this.id,
    this.kind,
    this.mobileContentAdsSettings,
    this.name,
    this.status,
  });

  AdUnit.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          contentAdsSettings: json_.containsKey('contentAdsSettings')
              ? AdUnitContentAdsSettings.fromJson(json_['contentAdsSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customStyle: json_.containsKey('customStyle')
              ? AdStyle.fromJson(
                  json_['customStyle'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mobileContentAdsSettings:
              json_.containsKey('mobileContentAdsSettings')
                  ? AdUnitMobileContentAdsSettings.fromJson(
                      json_['mobileContentAdsSettings']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (contentAdsSettings != null)
          'contentAdsSettings': contentAdsSettings!,
        if (customStyle != null) 'customStyle': customStyle!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (mobileContentAdsSettings != null)
          'mobileContentAdsSettings': mobileContentAdsSettings!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
      };
}

class AdUnits {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The ad units returned in this list response.
  core.List<AdUnit>? items;

  /// Kind of list this is, in this case adsensehost#adUnits.
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

  AdUnits.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => AdUnit.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class AssociationSession {
  /// Hosted account id of the associated publisher after association.
  ///
  /// Present if status is ACCEPTED.
  core.String? accountId;

  /// Unique identifier of this association session.
  core.String? id;

  /// Kind of resource this is, in this case adsensehost#associationSession.
  core.String? kind;

  /// The products to associate with the user.
  ///
  /// Options: AFC, AFG, AFV, AFS (deprecated), AFMC (deprecated)
  core.List<core.String>? productCodes;

  /// Redirect URL of this association session.
  ///
  /// Used to redirect users into the AdSense association flow.
  core.String? redirectUrl;

  /// Status of the completed association, available once the association
  /// callback token has been verified.
  ///
  /// One of ACCEPTED, REJECTED, or ERROR.
  core.String? status;

  /// The preferred locale of the user themselves when going through the AdSense
  /// association flow.
  core.String? userLocale;

  /// The locale of the user's hosted website.
  core.String? websiteLocale;

  /// The URL of the user's hosted website.
  core.String? websiteUrl;

  AssociationSession({
    this.accountId,
    this.id,
    this.kind,
    this.productCodes,
    this.redirectUrl,
    this.status,
    this.userLocale,
    this.websiteLocale,
    this.websiteUrl,
  });

  AssociationSession.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          productCodes: json_.containsKey('productCodes')
              ? (json_['productCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          redirectUrl: json_.containsKey('redirectUrl')
              ? json_['redirectUrl'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          userLocale: json_.containsKey('userLocale')
              ? json_['userLocale'] as core.String
              : null,
          websiteLocale: json_.containsKey('websiteLocale')
              ? json_['websiteLocale'] as core.String
              : null,
          websiteUrl: json_.containsKey('websiteUrl')
              ? json_['websiteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (productCodes != null) 'productCodes': productCodes!,
        if (redirectUrl != null) 'redirectUrl': redirectUrl!,
        if (status != null) 'status': status!,
        if (userLocale != null) 'userLocale': userLocale!,
        if (websiteLocale != null) 'websiteLocale': websiteLocale!,
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
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

  /// Kind of resource this is, in this case adsensehost#customChannel.
  core.String? kind;

  /// Name of this custom channel.
  core.String? name;

  CustomChannel({
    this.code,
    this.id,
    this.kind,
    this.name,
  });

  CustomChannel.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

class CustomChannels {
  /// ETag of this response for caching purposes.
  core.String? etag;

  /// The custom channels returned in this list response.
  core.List<CustomChannel>? items;

  /// Kind of list this is, in this case adsensehost#customChannels.
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

  CustomChannels.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => CustomChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ReportHeaders {
  /// The currency of this column.
  ///
  /// Only present if the header type is METRIC_CURRENCY.
  core.String? currency;

  /// The name of the header.
  core.String? name;

  /// The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
  /// METRIC_CURRENCY.
  core.String? type;

  ReportHeaders({
    this.currency,
    this.name,
    this.type,
  });

  ReportHeaders.fromJson(core.Map json_)
      : this(
          currency: json_.containsKey('currency')
              ? json_['currency'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

class Report {
  /// The averages of the report.
  ///
  /// This is the same length as any other row in the report; cells
  /// corresponding to dimension columns are empty.
  core.List<core.String>? averages;

  /// The header information of the columns requested in the report.
  ///
  /// This is a list of headers; one for each dimension in the request, followed
  /// by one for each metric in the request.
  core.List<ReportHeaders>? headers;

  /// Kind this is, in this case adsensehost#report.
  core.String? kind;

  /// The output rows of the report.
  ///
  /// Each row is a list of cells; one for each dimension in the request,
  /// followed by one for each metric in the request. The dimension cells
  /// contain strings, and the metric cells contain numbers.
  core.List<core.List<core.String>>? rows;

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

  Report({
    this.averages,
    this.headers,
    this.kind,
    this.rows,
    this.totalMatchedRows,
    this.totals,
    this.warnings,
  });

  Report.fromJson(core.Map json_)
      : this(
          averages: json_.containsKey('averages')
              ? (json_['averages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          headers: json_.containsKey('headers')
              ? (json_['headers'] as core.List)
                  .map((value) => ReportHeaders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => (value as core.List)
                      .map((value) => value as core.String)
                      .toList())
                  .toList()
              : null,
          totalMatchedRows: json_.containsKey('totalMatchedRows')
              ? json_['totalMatchedRows'] as core.String
              : null,
          totals: json_.containsKey('totals')
              ? (json_['totals'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averages != null) 'averages': averages!,
        if (headers != null) 'headers': headers!,
        if (kind != null) 'kind': kind!,
        if (rows != null) 'rows': rows!,
        if (totalMatchedRows != null) 'totalMatchedRows': totalMatchedRows!,
        if (totals != null) 'totals': totals!,
        if (warnings != null) 'warnings': warnings!,
      };
}

class UrlChannel {
  /// Unique identifier of this URL channel.
  ///
  /// This should be considered an opaque identifier; it is not safe to rely on
  /// it being in any particular format.
  core.String? id;

  /// Kind of resource this is, in this case adsensehost#urlChannel.
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

  UrlChannel.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          urlPattern: json_.containsKey('urlPattern')
              ? json_['urlPattern'] as core.String
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

  /// Kind of list this is, in this case adsensehost#urlChannels.
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

  UrlChannels.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => UrlChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
