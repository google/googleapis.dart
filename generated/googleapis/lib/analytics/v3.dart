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

/// Google Analytics API - v3
///
/// Views and manages your Google Analytics data.
///
/// For more information, see <https://developers.google.com/analytics/>
///
/// Create an instance of [AnalyticsApi] to access these resources:
///
/// - [DataResource]
///   - [DataGaResource]
///   - [DataMcfResource]
///   - [DataRealtimeResource]
/// - [ManagementResource]
///   - [ManagementAccountSummariesResource]
///   - [ManagementAccountUserLinksResource]
///   - [ManagementAccountsResource]
///   - [ManagementClientIdResource]
///   - [ManagementCustomDataSourcesResource]
///   - [ManagementCustomDimensionsResource]
///   - [ManagementCustomMetricsResource]
///   - [ManagementExperimentsResource]
///   - [ManagementFiltersResource]
///   - [ManagementGoalsResource]
///   - [ManagementProfileFilterLinksResource]
///   - [ManagementProfileUserLinksResource]
///   - [ManagementProfilesResource]
///   - [ManagementRemarketingAudienceResource]
///   - [ManagementSegmentsResource]
///   - [ManagementUnsampledReportsResource]
///   - [ManagementUploadsResource]
///   - [ManagementWebPropertyAdWordsLinksResource]
///   - [ManagementWebpropertiesResource]
///   - [ManagementWebpropertyUserLinksResource]
/// - [MetadataResource]
///   - [MetadataColumnsResource]
/// - [ProvisioningResource]
/// - [UserDeletionResource]
///   - [UserDeletionUserDeletionRequestResource]
library analytics.v3;

import 'dart:async' as async;
import 'dart:convert' as convert;
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

/// Views and manages your Google Analytics data.
class AnalyticsApi {
  /// View and manage your Google Analytics data
  static const analyticsScope = 'https://www.googleapis.com/auth/analytics';

  /// Edit Google Analytics management entities
  static const analyticsEditScope =
      'https://www.googleapis.com/auth/analytics.edit';

  /// Manage Google Analytics Account users by email address
  static const analyticsManageUsersScope =
      'https://www.googleapis.com/auth/analytics.manage.users';

  /// View Google Analytics user permissions
  static const analyticsManageUsersReadonlyScope =
      'https://www.googleapis.com/auth/analytics.manage.users.readonly';

  /// Create a new Google Analytics account along with its default property and
  /// view
  static const analyticsProvisionScope =
      'https://www.googleapis.com/auth/analytics.provision';

  /// View your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  /// Manage Google Analytics user deletion requests
  static const analyticsUserDeletionScope =
      'https://www.googleapis.com/auth/analytics.user.deletion';

  final commons.ApiRequester _requester;

  DataResource get data => DataResource(_requester);
  ManagementResource get management => ManagementResource(_requester);
  MetadataResource get metadata => MetadataResource(_requester);
  ProvisioningResource get provisioning => ProvisioningResource(_requester);
  UserDeletionResource get userDeletion => UserDeletionResource(_requester);

  AnalyticsApi(http.Client client,
      {core.String rootUrl = 'https://analytics.googleapis.com/',
      core.String servicePath = 'analytics/v3/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DataResource {
  final commons.ApiRequester _requester;

  DataGaResource get ga => DataGaResource(_requester);
  DataMcfResource get mcf => DataMcfResource(_requester);
  DataRealtimeResource get realtime => DataRealtimeResource(_requester);

  DataResource(commons.ApiRequester client) : _requester = client;
}

class DataGaResource {
  final commons.ApiRequester _requester;

  DataGaResource(commons.ApiRequester client) : _requester = client;

  /// Returns Analytics data for a view (profile).
  ///
  /// Request parameters:
  ///
  /// [ids] - Unique table ID for retrieving Analytics data. Table ID is of the
  /// form ga:XXXX, where XXXX is the Analytics view (profile) ID.
  /// Value must have pattern `ga:\[0-9\]+`.
  ///
  /// [startDate] - Start date for fetching Analytics data. Requests can specify
  /// a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
  /// yesterday, or 7daysAgo). The default value is 7daysAgo.
  /// Value must have pattern
  /// `\[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}|today|yesterday|\[0-9\]+(daysAgo)`.
  ///
  /// [endDate] - End date for fetching Analytics data. Request can should
  /// specify an end date formatted as YYYY-MM-DD, or as a relative date (e.g.,
  /// today, yesterday, or 7daysAgo). The default value is yesterday.
  /// Value must have pattern
  /// `\[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}|today|yesterday|\[0-9\]+(daysAgo)`.
  ///
  /// [metrics] - A comma-separated list of Analytics metrics. E.g.,
  /// 'ga:sessions,ga:pageviews'. At least one metric must be specified.
  /// Value must have pattern `ga:.+`.
  ///
  /// [dimensions] - A comma-separated list of Analytics dimensions. E.g.,
  /// 'ga:browser,ga:city'.
  /// Value must have pattern `(ga:.+)?`.
  ///
  /// [filters] - A comma-separated list of dimension or metric filters to be
  /// applied to Analytics data.
  /// Value must have pattern `ga:.+`.
  ///
  /// [includeEmptyRows] - The response will include empty rows if this
  /// parameter is set to true, the default is true
  ///
  /// [maxResults] - The maximum number of entries to include in this feed.
  ///
  /// [output] - The selected format for the response. Default format is JSON.
  /// Possible string values are:
  /// - "dataTable" : Returns the response in Google Charts Data Table format.
  /// This is useful in creating visualization using Google Charts.
  /// - "json" : Returns the response in standard JSON format.
  ///
  /// [samplingLevel] - The desired sampling level.
  /// Possible string values are:
  /// - "DEFAULT" : Returns response with a sample size that balances speed and
  /// accuracy.
  /// - "FASTER" : Returns a fast response with a smaller sample size.
  /// - "HIGHER_PRECISION" : Returns a more accurate response using a large
  /// sample size, but this may result in the response being slower.
  ///
  /// [segment] - An Analytics segment to be applied to data.
  ///
  /// [sort] - A comma-separated list of dimensions or metrics that determine
  /// the sort order for Analytics data.
  /// Value must have pattern `(-)?ga:.+`.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GaData].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GaData> get(
    core.String ids,
    core.String startDate,
    core.String endDate,
    core.String metrics, {
    core.String? dimensions,
    core.String? filters,
    core.bool? includeEmptyRows,
    core.int? maxResults,
    core.String? output,
    core.String? samplingLevel,
    core.String? segment,
    core.String? sort,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'ids': [ids],
      'start-date': [startDate],
      'end-date': [endDate],
      'metrics': [metrics],
      if (dimensions != null) 'dimensions': [dimensions],
      if (filters != null) 'filters': [filters],
      if (includeEmptyRows != null)
        'include-empty-rows': ['${includeEmptyRows}'],
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (output != null) 'output': [output],
      if (samplingLevel != null) 'samplingLevel': [samplingLevel],
      if (segment != null) 'segment': [segment],
      if (sort != null) 'sort': [sort],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'data/ga';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GaData.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DataMcfResource {
  final commons.ApiRequester _requester;

  DataMcfResource(commons.ApiRequester client) : _requester = client;

  /// Returns Analytics Multi-Channel Funnels data for a view (profile).
  ///
  /// Request parameters:
  ///
  /// [ids] - Unique table ID for retrieving Analytics data. Table ID is of the
  /// form ga:XXXX, where XXXX is the Analytics view (profile) ID.
  /// Value must have pattern `ga:\[0-9\]+`.
  ///
  /// [startDate] - Start date for fetching Analytics data. Requests can specify
  /// a start date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
  /// yesterday, or 7daysAgo). The default value is 7daysAgo.
  /// Value must have pattern
  /// `\[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}|today|yesterday|\[0-9\]+(daysAgo)`.
  ///
  /// [endDate] - End date for fetching Analytics data. Requests can specify a
  /// start date formatted as YYYY-MM-DD, or as a relative date (e.g., today,
  /// yesterday, or 7daysAgo). The default value is 7daysAgo.
  /// Value must have pattern
  /// `\[0-9\]{4}-\[0-9\]{2}-\[0-9\]{2}|today|yesterday|\[0-9\]+(daysAgo)`.
  ///
  /// [metrics] - A comma-separated list of Multi-Channel Funnels metrics. E.g.,
  /// 'mcf:totalConversions,mcf:totalConversionValue'. At least one metric must
  /// be specified.
  /// Value must have pattern `mcf:.+`.
  ///
  /// [dimensions] - A comma-separated list of Multi-Channel Funnels dimensions.
  /// E.g., 'mcf:source,mcf:medium'.
  /// Value must have pattern `(mcf:.+)?`.
  ///
  /// [filters] - A comma-separated list of dimension or metric filters to be
  /// applied to the Analytics data.
  /// Value must have pattern `mcf:.+`.
  ///
  /// [maxResults] - The maximum number of entries to include in this feed.
  ///
  /// [samplingLevel] - The desired sampling level.
  /// Possible string values are:
  /// - "DEFAULT" : Returns response with a sample size that balances speed and
  /// accuracy.
  /// - "FASTER" : Returns a fast response with a smaller sample size.
  /// - "HIGHER_PRECISION" : Returns a more accurate response using a large
  /// sample size, but this may result in the response being slower.
  ///
  /// [sort] - A comma-separated list of dimensions or metrics that determine
  /// the sort order for the Analytics data.
  /// Value must have pattern `(-)?mcf:.+`.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [McfData].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<McfData> get(
    core.String ids,
    core.String startDate,
    core.String endDate,
    core.String metrics, {
    core.String? dimensions,
    core.String? filters,
    core.int? maxResults,
    core.String? samplingLevel,
    core.String? sort,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'ids': [ids],
      'start-date': [startDate],
      'end-date': [endDate],
      'metrics': [metrics],
      if (dimensions != null) 'dimensions': [dimensions],
      if (filters != null) 'filters': [filters],
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (samplingLevel != null) 'samplingLevel': [samplingLevel],
      if (sort != null) 'sort': [sort],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'data/mcf';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return McfData.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DataRealtimeResource {
  final commons.ApiRequester _requester;

  DataRealtimeResource(commons.ApiRequester client) : _requester = client;

  /// Returns real time data for a view (profile).
  ///
  /// Request parameters:
  ///
  /// [ids] - Unique table ID for retrieving real time data. Table ID is of the
  /// form ga:XXXX, where XXXX is the Analytics view (profile) ID.
  /// Value must have pattern `ga:\[0-9\]+`.
  ///
  /// [metrics] - A comma-separated list of real time metrics. E.g.,
  /// 'rt:activeUsers'. At least one metric must be specified.
  /// Value must have pattern `(ga:.+)|(rt:.+)`.
  ///
  /// [dimensions] - A comma-separated list of real time dimensions. E.g.,
  /// 'rt:medium,rt:city'.
  /// Value must have pattern `(ga:.+)|(rt:.+)`.
  ///
  /// [filters] - A comma-separated list of dimension or metric filters to be
  /// applied to real time data.
  /// Value must have pattern `(ga:.+)|(rt:.+)`.
  ///
  /// [maxResults] - The maximum number of entries to include in this feed.
  ///
  /// [sort] - A comma-separated list of dimensions or metrics that determine
  /// the sort order for real time data.
  /// Value must have pattern `(-)?((ga:.+)|(rt:.+))`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RealtimeData].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RealtimeData> get(
    core.String ids,
    core.String metrics, {
    core.String? dimensions,
    core.String? filters,
    core.int? maxResults,
    core.String? sort,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'ids': [ids],
      'metrics': [metrics],
      if (dimensions != null) 'dimensions': [dimensions],
      if (filters != null) 'filters': [filters],
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (sort != null) 'sort': [sort],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'data/realtime';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RealtimeData.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementResource {
  final commons.ApiRequester _requester;

  ManagementAccountSummariesResource get accountSummaries =>
      ManagementAccountSummariesResource(_requester);
  ManagementAccountUserLinksResource get accountUserLinks =>
      ManagementAccountUserLinksResource(_requester);
  ManagementAccountsResource get accounts =>
      ManagementAccountsResource(_requester);
  ManagementClientIdResource get clientId =>
      ManagementClientIdResource(_requester);
  ManagementCustomDataSourcesResource get customDataSources =>
      ManagementCustomDataSourcesResource(_requester);
  ManagementCustomDimensionsResource get customDimensions =>
      ManagementCustomDimensionsResource(_requester);
  ManagementCustomMetricsResource get customMetrics =>
      ManagementCustomMetricsResource(_requester);
  ManagementExperimentsResource get experiments =>
      ManagementExperimentsResource(_requester);
  ManagementFiltersResource get filters =>
      ManagementFiltersResource(_requester);
  ManagementGoalsResource get goals => ManagementGoalsResource(_requester);
  ManagementProfileFilterLinksResource get profileFilterLinks =>
      ManagementProfileFilterLinksResource(_requester);
  ManagementProfileUserLinksResource get profileUserLinks =>
      ManagementProfileUserLinksResource(_requester);
  ManagementProfilesResource get profiles =>
      ManagementProfilesResource(_requester);
  ManagementRemarketingAudienceResource get remarketingAudience =>
      ManagementRemarketingAudienceResource(_requester);
  ManagementSegmentsResource get segments =>
      ManagementSegmentsResource(_requester);
  ManagementUnsampledReportsResource get unsampledReports =>
      ManagementUnsampledReportsResource(_requester);
  ManagementUploadsResource get uploads =>
      ManagementUploadsResource(_requester);
  ManagementWebPropertyAdWordsLinksResource get webPropertyAdWordsLinks =>
      ManagementWebPropertyAdWordsLinksResource(_requester);
  ManagementWebpropertiesResource get webproperties =>
      ManagementWebpropertiesResource(_requester);
  ManagementWebpropertyUserLinksResource get webpropertyUserLinks =>
      ManagementWebpropertyUserLinksResource(_requester);

  ManagementResource(commons.ApiRequester client) : _requester = client;
}

class ManagementAccountSummariesResource {
  final commons.ApiRequester _requester;

  ManagementAccountSummariesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists account summaries (lightweight tree comprised of
  /// accounts/properties/profiles) to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of account summaries to include in this
  /// response, where the largest acceptable value is 1000.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountSummaries].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountSummaries> list({
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'management/accountSummaries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountSummaries.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementAccountUserLinksResource {
  final commons.ApiRequester _requester;

  ManagementAccountUserLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Removes a user from the given account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the user link for.
  ///
  /// [linkId] - Link ID to delete the user link for.
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
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Adds a new user to the given account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> insert(
    EntityUserLink request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists account-user links for a given account.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve the user links for.
  ///
  /// [maxResults] - The maximum number of account-user links to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first account-user link to retrieve. Use
  /// this parameter as a pagination mechanism along with the max-results
  /// parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLinks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLinks> list(
    core.String accountId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EntityUserLinks.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates permissions for an existing user on the given account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to update the account-user link for.
  ///
  /// [linkId] - Link ID to update the account-user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> update(
    EntityUserLink request,
    core.String accountId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementAccountsResource {
  final commons.ApiRequester _requester;

  ManagementAccountsResource(commons.ApiRequester client) : _requester = client;

  /// Lists all accounts to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of accounts to include in this response.
  ///
  /// [startIndex] - An index of the first account to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
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
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'management/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Accounts.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementClientIdResource {
  final commons.ApiRequester _requester;

  ManagementClientIdResource(commons.ApiRequester client) : _requester = client;

  /// Hashes the given Client ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HashClientIdResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HashClientIdResponse> hashClientId(
    HashClientIdRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'management/clientId:hashClientId';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return HashClientIdResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementCustomDataSourcesResource {
  final commons.ApiRequester _requester;

  ManagementCustomDataSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// List custom data sources to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account Id for the custom data sources to retrieve.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id for the custom data sources to retrieve.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [maxResults] - The maximum number of custom data sources to include in
  /// this response.
  ///
  /// [startIndex] - A 1-based index of the first custom data source to
  /// retrieve. Use this parameter as a pagination mechanism along with the
  /// max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDataSources].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDataSources> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDataSources';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomDataSources.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementCustomDimensionsResource {
  final commons.ApiRequester _requester;

  ManagementCustomDimensionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a custom dimension to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom dimension to retrieve.
  ///
  /// [webPropertyId] - Web property ID for the custom dimension to retrieve.
  ///
  /// [customDimensionId] - The ID of the custom dimension to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDimension> get(
    core.String accountId,
    core.String webPropertyId,
    core.String customDimensionId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDimensions/' +
        commons.escapeVariable('$customDimensionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new custom dimension.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom dimension to create.
  ///
  /// [webPropertyId] - Web property ID for the custom dimension to create.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDimension> insert(
    CustomDimension request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDimensions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists custom dimensions to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom dimensions to retrieve.
  ///
  /// [webPropertyId] - Web property ID for the custom dimensions to retrieve.
  ///
  /// [maxResults] - The maximum number of custom dimensions to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDimensions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDimensions> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDimensions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomDimensions.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing custom dimension.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom dimension to update.
  ///
  /// [webPropertyId] - Web property ID for the custom dimension to update.
  ///
  /// [customDimensionId] - Custom dimension ID for the custom dimension to
  /// update.
  ///
  /// [ignoreCustomDataSourceLinks] - Force the update and ignore any warnings
  /// related to the custom dimension being linked to a custom data source /
  /// data set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDimension> patch(
    CustomDimension request,
    core.String accountId,
    core.String webPropertyId,
    core.String customDimensionId, {
    core.bool? ignoreCustomDataSourceLinks,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (ignoreCustomDataSourceLinks != null)
        'ignoreCustomDataSourceLinks': ['${ignoreCustomDataSourceLinks}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDimensions/' +
        commons.escapeVariable('$customDimensionId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing custom dimension.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom dimension to update.
  ///
  /// [webPropertyId] - Web property ID for the custom dimension to update.
  ///
  /// [customDimensionId] - Custom dimension ID for the custom dimension to
  /// update.
  ///
  /// [ignoreCustomDataSourceLinks] - Force the update and ignore any warnings
  /// related to the custom dimension being linked to a custom data source /
  /// data set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomDimension> update(
    CustomDimension request,
    core.String accountId,
    core.String webPropertyId,
    core.String customDimensionId, {
    core.bool? ignoreCustomDataSourceLinks,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (ignoreCustomDataSourceLinks != null)
        'ignoreCustomDataSourceLinks': ['${ignoreCustomDataSourceLinks}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDimensions/' +
        commons.escapeVariable('$customDimensionId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementCustomMetricsResource {
  final commons.ApiRequester _requester;

  ManagementCustomMetricsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get a custom metric to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom metric to retrieve.
  ///
  /// [webPropertyId] - Web property ID for the custom metric to retrieve.
  ///
  /// [customMetricId] - The ID of the custom metric to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomMetric> get(
    core.String accountId,
    core.String webPropertyId,
    core.String customMetricId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customMetrics/' +
        commons.escapeVariable('$customMetricId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new custom metric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom metric to create.
  ///
  /// [webPropertyId] - Web property ID for the custom dimension to create.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomMetric> insert(
    CustomMetric request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customMetrics';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists custom metrics to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom metrics to retrieve.
  ///
  /// [webPropertyId] - Web property ID for the custom metrics to retrieve.
  ///
  /// [maxResults] - The maximum number of custom metrics to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomMetrics> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomMetrics.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing custom metric.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom metric to update.
  ///
  /// [webPropertyId] - Web property ID for the custom metric to update.
  ///
  /// [customMetricId] - Custom metric ID for the custom metric to update.
  ///
  /// [ignoreCustomDataSourceLinks] - Force the update and ignore any warnings
  /// related to the custom metric being linked to a custom data source / data
  /// set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomMetric> patch(
    CustomMetric request,
    core.String accountId,
    core.String webPropertyId,
    core.String customMetricId, {
    core.bool? ignoreCustomDataSourceLinks,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (ignoreCustomDataSourceLinks != null)
        'ignoreCustomDataSourceLinks': ['${ignoreCustomDataSourceLinks}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customMetrics/' +
        commons.escapeVariable('$customMetricId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing custom metric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the custom metric to update.
  ///
  /// [webPropertyId] - Web property ID for the custom metric to update.
  ///
  /// [customMetricId] - Custom metric ID for the custom metric to update.
  ///
  /// [ignoreCustomDataSourceLinks] - Force the update and ignore any warnings
  /// related to the custom metric being linked to a custom data source / data
  /// set.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomMetric> update(
    CustomMetric request,
    core.String accountId,
    core.String webPropertyId,
    core.String customMetricId, {
    core.bool? ignoreCustomDataSourceLinks,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (ignoreCustomDataSourceLinks != null)
        'ignoreCustomDataSourceLinks': ['${ignoreCustomDataSourceLinks}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customMetrics/' +
        commons.escapeVariable('$customMetricId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return CustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementExperimentsResource {
  final commons.ApiRequester _requester;

  ManagementExperimentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete an experiment.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the experiment belongs
  ///
  /// [webPropertyId] - Web property ID to which the experiment belongs
  ///
  /// [profileId] - View (Profile) ID to which the experiment belongs
  ///
  /// [experimentId] - ID of the experiment to delete
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
    core.String webPropertyId,
    core.String profileId,
    core.String experimentId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments/' +
        commons.escapeVariable('$experimentId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Returns an experiment to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve the experiment for.
  ///
  /// [webPropertyId] - Web property ID to retrieve the experiment for.
  ///
  /// [profileId] - View (Profile) ID to retrieve the experiment for.
  ///
  /// [experimentId] - Experiment ID to retrieve the experiment for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Experiment> get(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String experimentId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments/' +
        commons.escapeVariable('$experimentId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Experiment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new experiment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the experiment for.
  ///
  /// [webPropertyId] - Web property ID to create the experiment for.
  ///
  /// [profileId] - View (Profile) ID to create the experiment for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Experiment> insert(
    Experiment request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Experiment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists experiments to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve experiments for.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property ID to retrieve experiments for.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - View (Profile) ID to retrieve experiments for.
  /// Value must have pattern `\d+`.
  ///
  /// [maxResults] - The maximum number of experiments to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first experiment to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Experiments].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Experiments> list(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Experiments.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing experiment.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the experiment to update.
  ///
  /// [webPropertyId] - Web property ID of the experiment to update.
  ///
  /// [profileId] - View (Profile) ID of the experiment to update.
  ///
  /// [experimentId] - Experiment ID of the experiment to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Experiment> patch(
    Experiment request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String experimentId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments/' +
        commons.escapeVariable('$experimentId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Experiment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing experiment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID of the experiment to update.
  ///
  /// [webPropertyId] - Web property ID of the experiment to update.
  ///
  /// [profileId] - View (Profile) ID of the experiment to update.
  ///
  /// [experimentId] - Experiment ID of the experiment to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Experiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Experiment> update(
    Experiment request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String experimentId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/experiments/' +
        commons.escapeVariable('$experimentId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Experiment.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementFiltersResource {
  final commons.ApiRequester _requester;

  ManagementFiltersResource(commons.ApiRequester client) : _requester = client;

  /// Delete a filter.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the filter for.
  ///
  /// [filterId] - ID of the filter to be deleted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> delete(
    core.String accountId,
    core.String filterId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters/' +
        commons.escapeVariable('$filterId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Filter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns filters to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve filters for.
  ///
  /// [filterId] - Filter ID to retrieve filters for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> get(
    core.String accountId,
    core.String filterId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters/' +
        commons.escapeVariable('$filterId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Filter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create filter for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> insert(
    Filter request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Filter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all filters for an account
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve filters for.
  /// Value must have pattern `\d+`.
  ///
  /// [maxResults] - The maximum number of filters to include in this response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filters].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filters> list(
    core.String accountId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Filters.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing filter.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the filter belongs.
  ///
  /// [filterId] - ID of the filter to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> patch(
    Filter request,
    core.String accountId,
    core.String filterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters/' +
        commons.escapeVariable('$filterId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Filter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing filter.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the filter belongs.
  ///
  /// [filterId] - ID of the filter to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Filter].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Filter> update(
    Filter request,
    core.String accountId,
    core.String filterId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/filters/' +
        commons.escapeVariable('$filterId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Filter.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementGoalsResource {
  final commons.ApiRequester _requester;

  ManagementGoalsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a goal to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve the goal for.
  ///
  /// [webPropertyId] - Web property ID to retrieve the goal for.
  ///
  /// [profileId] - View (Profile) ID to retrieve the goal for.
  ///
  /// [goalId] - Goal ID to retrieve the goal for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Goal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Goal> get(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String goalId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/goals/' +
        commons.escapeVariable('$goalId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Goal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new goal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the goal for.
  ///
  /// [webPropertyId] - Web property ID to create the goal for.
  ///
  /// [profileId] - View (Profile) ID to create the goal for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Goal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Goal> insert(
    Goal request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/goals';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Goal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists goals to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve goals for. Can either be a specific
  /// account ID or '~all', which refers to all the accounts that user has
  /// access to.
  ///
  /// [webPropertyId] - Web property ID to retrieve goals for. Can either be a
  /// specific web property ID or '~all', which refers to all the web properties
  /// that user has access to.
  ///
  /// [profileId] - View (Profile) ID to retrieve goals for. Can either be a
  /// specific view (profile) ID or '~all', which refers to all the views
  /// (profiles) that user has access to.
  ///
  /// [maxResults] - The maximum number of goals to include in this response.
  ///
  /// [startIndex] - An index of the first goal to retrieve. Use this parameter
  /// as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Goals].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Goals> list(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/goals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Goals.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing goal.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to update the goal.
  ///
  /// [webPropertyId] - Web property ID to update the goal.
  ///
  /// [profileId] - View (Profile) ID to update the goal.
  ///
  /// [goalId] - Index of the goal to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Goal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Goal> patch(
    Goal request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String goalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/goals/' +
        commons.escapeVariable('$goalId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Goal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing goal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to update the goal.
  ///
  /// [webPropertyId] - Web property ID to update the goal.
  ///
  /// [profileId] - View (Profile) ID to update the goal.
  ///
  /// [goalId] - Index of the goal to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Goal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Goal> update(
    Goal request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String goalId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/goals/' +
        commons.escapeVariable('$goalId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Goal.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementProfileFilterLinksResource {
  final commons.ApiRequester _requester;

  ManagementProfileFilterLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a profile filter link.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the profile filter link belongs.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id to which the profile filter link
  /// belongs.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - Profile ID to which the filter link belongs.
  /// Value must have pattern `\d+`.
  ///
  /// [linkId] - ID of the profile filter link to delete.
  /// Value must have pattern `\d+:\d+`.
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
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks/' +
        commons.escapeVariable('$linkId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Returns a single profile filter link.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve profile filter link for.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id to retrieve profile filter link for.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - Profile ID to retrieve filter link for.
  /// Value must have pattern `\d+`.
  ///
  /// [linkId] - ID of the profile filter link.
  /// Value must have pattern `\d+:\d+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProfileFilterLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProfileFilterLink> get(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProfileFilterLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new profile filter link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create profile filter link for.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id to create profile filter link for.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - Profile ID to create filter link for.
  /// Value must have pattern `\d+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProfileFilterLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProfileFilterLink> insert(
    ProfileFilterLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ProfileFilterLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all profile filter links for a profile.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve profile filter links for.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id for profile filter links for. Can either
  /// be a specific web property ID or '~all', which refers to all the web
  /// properties that user has access to.
  ///
  /// [profileId] - Profile ID to retrieve filter links for. Can either be a
  /// specific profile ID or '~all', which refers to all the profiles that user
  /// has access to.
  ///
  /// [maxResults] - The maximum number of profile filter links to include in
  /// this response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProfileFilterLinks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProfileFilterLinks> list(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProfileFilterLinks.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing profile filter link.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which profile filter link belongs.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id to which profile filter link belongs
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - Profile ID to which filter link belongs
  /// Value must have pattern `\d+`.
  ///
  /// [linkId] - ID of the profile filter link to be updated.
  /// Value must have pattern `\d+:\d+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProfileFilterLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProfileFilterLink> patch(
    ProfileFilterLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return ProfileFilterLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update an existing profile filter link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which profile filter link belongs.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id to which profile filter link belongs
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [profileId] - Profile ID to which filter link belongs
  /// Value must have pattern `\d+`.
  ///
  /// [linkId] - ID of the profile filter link to be updated.
  /// Value must have pattern `\d+:\d+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProfileFilterLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProfileFilterLink> update(
    ProfileFilterLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/profileFilterLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ProfileFilterLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementProfileUserLinksResource {
  final commons.ApiRequester _requester;

  ManagementProfileUserLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Removes a user from the given view (profile).
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the user link for.
  ///
  /// [webPropertyId] - Web Property ID to delete the user link for.
  ///
  /// [profileId] - View (Profile) ID to delete the user link for.
  ///
  /// [linkId] - Link ID to delete the user link for.
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
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Adds a new user to the given view (profile).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the user link for.
  ///
  /// [webPropertyId] - Web Property ID to create the user link for.
  ///
  /// [profileId] - View (Profile) ID to create the user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> insert(
    EntityUserLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists profile-user links for a given view (profile).
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID which the given view (profile) belongs to.
  ///
  /// [webPropertyId] - Web Property ID which the given view (profile) belongs
  /// to. Can either be a specific web property ID or '~all', which refers to
  /// all the web properties that user has access to.
  ///
  /// [profileId] - View (Profile) ID to retrieve the profile-user links for.
  /// Can either be a specific profile ID or '~all', which refers to all the
  /// profiles that user has access to.
  ///
  /// [maxResults] - The maximum number of profile-user links to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first profile-user link to retrieve. Use
  /// this parameter as a pagination mechanism along with the max-results
  /// parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLinks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLinks> list(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EntityUserLinks.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates permissions for an existing user on the given view (profile).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to update the user link for.
  ///
  /// [webPropertyId] - Web Property ID to update the user link for.
  ///
  /// [profileId] - View (Profile ID) to update the user link for.
  ///
  /// [linkId] - Link ID to update the user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> update(
    EntityUserLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementProfilesResource {
  final commons.ApiRequester _requester;

  ManagementProfilesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a view (profile).
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the view (profile) for.
  ///
  /// [webPropertyId] - Web property ID to delete the view (profile) for.
  ///
  /// [profileId] - ID of the view (profile) to be deleted.
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
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a view (profile) to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve the view (profile) for.
  /// Value must have pattern `\[0-9\]+`.
  ///
  /// [webPropertyId] - Web property ID to retrieve the view (profile) for.
  /// Value must have pattern `UA-\[0-9\]+-\[0-9\]+`.
  ///
  /// [profileId] - View (Profile) ID to retrieve the view (profile) for.
  /// Value must have pattern `\[0-9\]+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> get(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Profile.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new view (profile).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the view (profile) for.
  ///
  /// [webPropertyId] - Web property ID to create the view (profile) for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> insert(
    Profile request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Profile.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists views (profiles) to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID for the view (profiles) to retrieve. Can either
  /// be a specific account ID or '~all', which refers to all the accounts to
  /// which the user has access.
  ///
  /// [webPropertyId] - Web property ID for the views (profiles) to retrieve.
  /// Can either be a specific web property ID or '~all', which refers to all
  /// the web properties to which the user has access.
  ///
  /// [maxResults] - The maximum number of views (profiles) to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profiles].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profiles> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Profiles.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing view (profile).
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the view (profile) belongs
  ///
  /// [webPropertyId] - Web property ID to which the view (profile) belongs
  ///
  /// [profileId] - ID of the view (profile) to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> patch(
    Profile request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Profile.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing view (profile).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the view (profile) belongs
  ///
  /// [webPropertyId] - Web property ID to which the view (profile) belongs
  ///
  /// [profileId] - ID of the view (profile) to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> update(
    Profile request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Profile.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementRemarketingAudienceResource {
  final commons.ApiRequester _requester;

  ManagementRemarketingAudienceResource(commons.ApiRequester client)
      : _requester = client;

  /// Delete a remarketing audience.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the remarketing audience belongs.
  ///
  /// [webPropertyId] - Web property ID to which the remarketing audience
  /// belongs.
  ///
  /// [remarketingAudienceId] - The ID of the remarketing audience to delete.
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
    core.String webPropertyId,
    core.String remarketingAudienceId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences/' +
        commons.escapeVariable('$remarketingAudienceId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Gets a remarketing audience to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account ID of the remarketing audience to retrieve.
  ///
  /// [webPropertyId] - The web property ID of the remarketing audience to
  /// retrieve.
  ///
  /// [remarketingAudienceId] - The ID of the remarketing audience to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingAudience> get(
    core.String accountId,
    core.String webPropertyId,
    core.String remarketingAudienceId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences/' +
        commons.escapeVariable('$remarketingAudienceId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RemarketingAudience.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new remarketing audience.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account ID for which to create the remarketing audience.
  ///
  /// [webPropertyId] - Web property ID for which to create the remarketing
  /// audience.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingAudience> insert(
    RemarketingAudience request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RemarketingAudience.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists remarketing audiences to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account ID of the remarketing audiences to retrieve.
  ///
  /// [webPropertyId] - The web property ID of the remarketing audiences to
  /// retrieve.
  ///
  /// [maxResults] - The maximum number of remarketing audiences to include in
  /// this response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [type] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingAudiences].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingAudiences> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? type,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RemarketingAudiences.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing audience.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account ID of the remarketing audience to update.
  ///
  /// [webPropertyId] - The web property ID of the remarketing audience to
  /// update.
  ///
  /// [remarketingAudienceId] - The ID of the remarketing audience to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingAudience> patch(
    RemarketingAudience request,
    core.String accountId,
    core.String webPropertyId,
    core.String remarketingAudienceId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences/' +
        commons.escapeVariable('$remarketingAudienceId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return RemarketingAudience.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing remarketing audience.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - The account ID of the remarketing audience to update.
  ///
  /// [webPropertyId] - The web property ID of the remarketing audience to
  /// update.
  ///
  /// [remarketingAudienceId] - The ID of the remarketing audience to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RemarketingAudience].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RemarketingAudience> update(
    RemarketingAudience request,
    core.String accountId,
    core.String webPropertyId,
    core.String remarketingAudienceId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/remarketingAudiences/' +
        commons.escapeVariable('$remarketingAudienceId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return RemarketingAudience.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementSegmentsResource {
  final commons.ApiRequester _requester;

  ManagementSegmentsResource(commons.ApiRequester client) : _requester = client;

  /// Lists segments to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [maxResults] - The maximum number of segments to include in this response.
  ///
  /// [startIndex] - An index of the first segment to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Segments].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Segments> list({
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'management/segments';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Segments.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementUnsampledReportsResource {
  final commons.ApiRequester _requester;

  ManagementUnsampledReportsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an unsampled report.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the unsampled report for.
  ///
  /// [webPropertyId] - Web property ID to delete the unsampled reports for.
  ///
  /// [profileId] - View (Profile) ID to delete the unsampled report for.
  ///
  /// [unsampledReportId] - ID of the unsampled report to be deleted.
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
    core.String webPropertyId,
    core.String profileId,
    core.String unsampledReportId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/unsampledReports/' +
        commons.escapeVariable('$unsampledReportId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Returns a single unsampled report.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve unsampled report for.
  ///
  /// [webPropertyId] - Web property ID to retrieve unsampled reports for.
  ///
  /// [profileId] - View (Profile) ID to retrieve unsampled report for.
  ///
  /// [unsampledReportId] - ID of the unsampled report to retrieve.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnsampledReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnsampledReport> get(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId,
    core.String unsampledReportId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/unsampledReports/' +
        commons.escapeVariable('$unsampledReportId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UnsampledReport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new unsampled report.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the unsampled report for.
  ///
  /// [webPropertyId] - Web property ID to create the unsampled report for.
  ///
  /// [profileId] - View (Profile) ID to create the unsampled report for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnsampledReport].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnsampledReport> insert(
    UnsampledReport request,
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/unsampledReports';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UnsampledReport.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists unsampled reports to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve unsampled reports for. Must be a
  /// specific account ID, ~all is not supported.
  ///
  /// [webPropertyId] - Web property ID to retrieve unsampled reports for. Must
  /// be a specific web property ID, ~all is not supported.
  ///
  /// [profileId] - View (Profile) ID to retrieve unsampled reports for. Must be
  /// a specific view (profile) ID, ~all is not supported.
  ///
  /// [maxResults] - The maximum number of unsampled reports to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first unsampled report to retrieve. Use
  /// this parameter as a pagination mechanism along with the max-results
  /// parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UnsampledReports].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UnsampledReports> list(
    core.String accountId,
    core.String webPropertyId,
    core.String profileId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/profiles/' +
        commons.escapeVariable('$profileId') +
        '/unsampledReports';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UnsampledReports.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementUploadsResource {
  final commons.ApiRequester _requester;

  ManagementUploadsResource(commons.ApiRequester client) : _requester = client;

  /// Delete data associated with a previous upload.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account Id for the uploads to be deleted.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id for the uploads to be deleted.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [customDataSourceId] - Custom data source Id for the uploads to be
  /// deleted.
  /// Value must have pattern `.{22}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> deleteUploadData(
    AnalyticsDataimportDeleteUploadDataRequest request,
    core.String accountId,
    core.String webPropertyId,
    core.String customDataSourceId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDataSources/' +
        commons.escapeVariable('$customDataSourceId') +
        '/deleteUploadData';

    await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// List uploads to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account Id for the upload to retrieve.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id for the upload to retrieve.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [customDataSourceId] - Custom data source Id for upload to retrieve.
  /// Value must have pattern `.{22}`.
  ///
  /// [uploadId] - Upload Id to retrieve.
  /// Value must have pattern `.{22}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Upload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Upload> get(
    core.String accountId,
    core.String webPropertyId,
    core.String customDataSourceId,
    core.String uploadId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDataSources/' +
        commons.escapeVariable('$customDataSourceId') +
        '/uploads/' +
        commons.escapeVariable('$uploadId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Upload.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// List uploads to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account Id for the uploads to retrieve.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property Id for the uploads to retrieve.
  /// Value must have pattern `UA-(\d+)-(\d+)`.
  ///
  /// [customDataSourceId] - Custom data source Id for uploads to retrieve.
  /// Value must have pattern `.{22}`.
  ///
  /// [maxResults] - The maximum number of uploads to include in this response.
  ///
  /// [startIndex] - A 1-based index of the first upload to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Uploads].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Uploads> list(
    core.String accountId,
    core.String webPropertyId,
    core.String customDataSourceId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/customDataSources/' +
        commons.escapeVariable('$customDataSourceId') +
        '/uploads';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Uploads.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Upload data for a custom data source.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account Id associated with the upload.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property UA-string associated with the upload.
  /// Value must have pattern `UA-\d+-\d+`.
  ///
  /// [customDataSourceId] - Custom data source Id to which the data being
  /// uploaded belongs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// [uploadOptions] - Options for the media upload. Streaming Media without
  /// the length being known ahead of time is only supported via resumable
  /// uploads.
  ///
  /// Completes with a [Upload].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Upload> uploadData(
    core.String accountId,
    core.String webPropertyId,
    core.String customDataSourceId, {
    core.String? $fields,
    commons.UploadOptions uploadOptions = commons.UploadOptions.defaultOptions,
    commons.Media? uploadMedia,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'management/accounts/' +
          commons.escapeVariable('$accountId') +
          '/webproperties/' +
          commons.escapeVariable('$webPropertyId') +
          '/customDataSources/' +
          commons.escapeVariable('$customDataSourceId') +
          '/uploads';
    } else if (uploadOptions is commons.ResumableUploadOptions) {
      _url = '/resumable/upload/analytics/v3/management/accounts/' +
          commons.escapeVariable('$accountId') +
          '/webproperties/' +
          commons.escapeVariable('$webPropertyId') +
          '/customDataSources/' +
          commons.escapeVariable('$customDataSourceId') +
          '/uploads';
    } else {
      _url = '/upload/analytics/v3/management/accounts/' +
          commons.escapeVariable('$accountId') +
          '/webproperties/' +
          commons.escapeVariable('$webPropertyId') +
          '/customDataSources/' +
          commons.escapeVariable('$customDataSourceId') +
          '/uploads';
    }

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: uploadOptions,
    );
    return Upload.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementWebPropertyAdWordsLinksResource {
  final commons.ApiRequester _requester;

  ManagementWebPropertyAdWordsLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a web property-Google Ads link.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the account which the given web property belongs to.
  ///
  /// [webPropertyId] - Web property ID to delete the Google Ads link for.
  ///
  /// [webPropertyAdWordsLinkId] - Web property Google Ads link ID.
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
    core.String webPropertyId,
    core.String webPropertyAdWordsLinkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks/' +
        commons.escapeVariable('$webPropertyAdWordsLinkId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Returns a web property-Google Ads link to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the account which the given web property belongs to.
  ///
  /// [webPropertyId] - Web property ID to retrieve the Google Ads link for.
  ///
  /// [webPropertyAdWordsLinkId] - Web property-Google Ads link ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityAdWordsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityAdWordsLink> get(
    core.String accountId,
    core.String webPropertyId,
    core.String webPropertyAdWordsLinkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks/' +
        commons.escapeVariable('$webPropertyAdWordsLinkId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EntityAdWordsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a webProperty-Google Ads link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the Google Analytics account to create the link for.
  ///
  /// [webPropertyId] - Web property ID to create the link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityAdWordsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityAdWordsLink> insert(
    EntityAdWordsLink request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityAdWordsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists webProperty-Google Ads links for a given web property.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the account which the given web property belongs to.
  /// Value must have pattern `\d+`.
  ///
  /// [webPropertyId] - Web property ID to retrieve the Google Ads links for.
  ///
  /// [maxResults] - The maximum number of webProperty-Google Ads links to
  /// include in this response.
  ///
  /// [startIndex] - An index of the first webProperty-Google Ads link to
  /// retrieve. Use this parameter as a pagination mechanism along with the
  /// max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityAdWordsLinks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityAdWordsLinks> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EntityAdWordsLinks.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing webProperty-Google Ads link.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the account which the given web property belongs to.
  ///
  /// [webPropertyId] - Web property ID to retrieve the Google Ads link for.
  ///
  /// [webPropertyAdWordsLinkId] - Web property-Google Ads link ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityAdWordsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityAdWordsLink> patch(
    EntityAdWordsLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String webPropertyAdWordsLinkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks/' +
        commons.escapeVariable('$webPropertyAdWordsLinkId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityAdWordsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing webProperty-Google Ads link.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - ID of the account which the given web property belongs to.
  ///
  /// [webPropertyId] - Web property ID to retrieve the Google Ads link for.
  ///
  /// [webPropertyAdWordsLinkId] - Web property-Google Ads link ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityAdWordsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityAdWordsLink> update(
    EntityAdWordsLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String webPropertyAdWordsLinkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityAdWordsLinks/' +
        commons.escapeVariable('$webPropertyAdWordsLinkId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityAdWordsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementWebpropertiesResource {
  final commons.ApiRequester _requester;

  ManagementWebpropertiesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a web property to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve the web property for.
  /// Value must have pattern `\[0-9\]+`.
  ///
  /// [webPropertyId] - ID to retrieve the web property for.
  /// Value must have pattern `UA-\[0-9\]+-\[0-9\]+`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Webproperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Webproperty> get(
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Webproperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new property if the account has fewer than 20 properties.
  ///
  /// Web properties are visible in the Google Analytics interface only if they
  /// have at least one profile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the web property for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Webproperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Webproperty> insert(
    Webproperty request,
    core.String accountId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Webproperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists web properties to which the user has access.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to retrieve web properties for. Can either be a
  /// specific account ID or '~all', which refers to all the accounts that user
  /// has access to.
  ///
  /// [maxResults] - The maximum number of web properties to include in this
  /// response.
  ///
  /// [startIndex] - An index of the first entity to retrieve. Use this
  /// parameter as a pagination mechanism along with the max-results parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Webproperties].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Webproperties> list(
    core.String accountId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Webproperties.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing web property.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the web property belongs
  ///
  /// [webPropertyId] - Web property ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Webproperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Webproperty> patch(
    Webproperty request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Webproperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing web property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to which the web property belongs
  ///
  /// [webPropertyId] - Web property ID
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Webproperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Webproperty> update(
    Webproperty request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Webproperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ManagementWebpropertyUserLinksResource {
  final commons.ApiRequester _requester;

  ManagementWebpropertyUserLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Removes a user from the given web property.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to delete the user link for.
  ///
  /// [webPropertyId] - Web Property ID to delete the user link for.
  ///
  /// [linkId] - Link ID to delete the user link for.
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
    core.String webPropertyId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Adds a new user to the given web property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to create the user link for.
  ///
  /// [webPropertyId] - Web Property ID to create the user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> insert(
    EntityUserLink request,
    core.String accountId,
    core.String webPropertyId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists webProperty-user links for a given web property.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID which the given web property belongs to.
  ///
  /// [webPropertyId] - Web Property ID for the webProperty-user links to
  /// retrieve. Can either be a specific web property ID or '~all', which refers
  /// to all the web properties that user has access to.
  ///
  /// [maxResults] - The maximum number of webProperty-user Links to include in
  /// this response.
  ///
  /// [startIndex] - An index of the first webProperty-user link to retrieve.
  /// Use this parameter as a pagination mechanism along with the max-results
  /// parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLinks].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLinks> list(
    core.String accountId,
    core.String webPropertyId, {
    core.int? maxResults,
    core.int? startIndex,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'max-results': ['${maxResults}'],
      if (startIndex != null) 'start-index': ['${startIndex}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityUserLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return EntityUserLinks.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates permissions for an existing user on the given web property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [accountId] - Account ID to update the account-user link for.
  ///
  /// [webPropertyId] - Web property ID to update the account-user link for.
  ///
  /// [linkId] - Link ID to update the account-user link for.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityUserLink> update(
    EntityUserLink request,
    core.String accountId,
    core.String webPropertyId,
    core.String linkId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'management/accounts/' +
        commons.escapeVariable('$accountId') +
        '/webproperties/' +
        commons.escapeVariable('$webPropertyId') +
        '/entityUserLinks/' +
        commons.escapeVariable('$linkId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return EntityUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MetadataResource {
  final commons.ApiRequester _requester;

  MetadataColumnsResource get columns => MetadataColumnsResource(_requester);

  MetadataResource(commons.ApiRequester client) : _requester = client;
}

class MetadataColumnsResource {
  final commons.ApiRequester _requester;

  MetadataColumnsResource(commons.ApiRequester client) : _requester = client;

  /// Lists all columns for a report type
  ///
  /// Request parameters:
  ///
  /// [reportType] - Report type. Allowed Values: 'ga'. Where 'ga' corresponds
  /// to the Core Reporting API
  /// Value must have pattern `ga`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Columns].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Columns> list(
    core.String reportType, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'metadata/' + commons.escapeVariable('$reportType') + '/columns';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Columns.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProvisioningResource {
  final commons.ApiRequester _requester;

  ProvisioningResource(commons.ApiRequester client) : _requester = client;

  /// Creates an account ticket.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountTicket].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountTicket> createAccountTicket(
    AccountTicket request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'provisioning/createAccountTicket';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountTicket.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provision account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountTreeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountTreeResponse> createAccountTree(
    AccountTreeRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'provisioning/createAccountTree';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AccountTreeResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class UserDeletionResource {
  final commons.ApiRequester _requester;

  UserDeletionUserDeletionRequestResource get userDeletionRequest =>
      UserDeletionUserDeletionRequestResource(_requester);

  UserDeletionResource(commons.ApiRequester client) : _requester = client;
}

class UserDeletionUserDeletionRequestResource {
  final commons.ApiRequester _requester;

  UserDeletionUserDeletionRequestResource(commons.ApiRequester client)
      : _requester = client;

  /// Insert or update a user deletion requests.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserDeletionRequest].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserDeletionRequest> upsert(
    UserDeletionRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'userDeletion/userDeletionRequests:upsert';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UserDeletionRequest.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Child link for an account entry.
///
/// Points to the list of web properties for this account.
class AccountChildLink {
  /// Link to the list of web properties for this account.
  core.String? href;

  /// Type of the child link.
  ///
  /// Its value is "analytics#webproperties".
  core.String? type;

  AccountChildLink({
    this.href,
    this.type,
  });

  AccountChildLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Permissions the user has for this account.
class AccountPermissions {
  /// All the permissions that the user has for this account.
  ///
  /// These include any implied permissions (e.g., EDIT implies VIEW).
  core.List<core.String>? effective;

  AccountPermissions({
    this.effective,
  });

  AccountPermissions.fromJson(core.Map _json)
      : this(
          effective: _json.containsKey('effective')
              ? (_json['effective'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effective != null) 'effective': effective!,
      };
}

/// JSON template for Analytics account entry.
class Account {
  /// Child link for an account entry.
  ///
  /// Points to the list of web properties for this account.
  AccountChildLink? childLink;

  /// Time the account was created.
  core.DateTime? created;

  /// Account ID.
  core.String? id;

  /// Resource type for Analytics account.
  core.String? kind;

  /// Account name.
  core.String? name;

  /// Permissions the user has for this account.
  AccountPermissions? permissions;

  /// Link for this account.
  core.String? selfLink;

  /// Indicates whether this account is starred or not.
  core.bool? starred;

  /// Time the account was last modified.
  core.DateTime? updated;

  Account({
    this.childLink,
    this.created,
    this.id,
    this.kind,
    this.name,
    this.permissions,
    this.selfLink,
    this.starred,
    this.updated,
  });

  Account.fromJson(core.Map _json)
      : this(
          childLink: _json.containsKey('childLink')
              ? AccountChildLink.fromJson(
                  _json['childLink'] as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          permissions: _json.containsKey('permissions')
              ? AccountPermissions.fromJson(
                  _json['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childLink != null) 'childLink': childLink!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (permissions != null) 'permissions': permissions!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (starred != null) 'starred': starred!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

/// JSON template for a linked account.
class AccountRef {
  /// Link for this account.
  core.String? href;

  /// Account ID.
  core.String? id;

  /// Analytics account reference.
  core.String? kind;

  /// Account name.
  core.String? name;

  AccountRef({
    this.href,
    this.id,
    this.kind,
    this.name,
  });

  AccountRef.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// An AccountSummary collection lists a summary of accounts, properties and
/// views (profiles) to which the user has access.
///
/// Each resource in the collection corresponds to a single AccountSummary.
class AccountSummaries {
  /// A list of AccountSummaries.
  core.List<AccountSummary>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this AccountSummary collection.
  core.String? nextLink;

  /// Link to previous page for this AccountSummary collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  AccountSummaries({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  AccountSummaries.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => AccountSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// JSON template for an Analytics AccountSummary.
///
/// An AccountSummary is a lightweight tree comprised of properties/profiles.
class AccountSummary {
  /// Account ID.
  core.String? id;

  /// Resource type for Analytics AccountSummary.
  core.String? kind;

  /// Account name.
  core.String? name;

  /// Indicates whether this account is starred or not.
  core.bool? starred;

  /// List of web properties under this account.
  core.List<WebPropertySummary>? webProperties;

  AccountSummary({
    this.id,
    this.kind,
    this.name,
    this.starred,
    this.webProperties,
  });

  AccountSummary.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          webProperties: _json.containsKey('webProperties')
              ? (_json['webProperties'] as core.List)
                  .map((value) => WebPropertySummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (starred != null) 'starred': starred!,
        if (webProperties != null) 'webProperties': webProperties!,
      };
}

/// JSON template for an Analytics account ticket.
///
/// The account ticket consists of the ticket ID and the basic information for
/// the account, property and profile.
class AccountTicket {
  /// Account for this ticket.
  Account? account;

  /// Account ticket ID used to access the account ticket.
  core.String? id;

  /// Resource type for account ticket.
  core.String? kind;

  /// View (Profile) for the account.
  Profile? profile;

  /// Redirect URI where the user will be sent after accepting Terms of Service.
  ///
  /// Must be configured in APIs console as a callback URL.
  core.String? redirectUri;

  /// Web property for the account.
  Webproperty? webproperty;

  AccountTicket({
    this.account,
    this.id,
    this.kind,
    this.profile,
    this.redirectUri,
    this.webproperty,
  });

  AccountTicket.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? Account.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profile: _json.containsKey('profile')
              ? Profile.fromJson(
                  _json['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          redirectUri: _json.containsKey('redirectUri')
              ? _json['redirectUri'] as core.String
              : null,
          webproperty: _json.containsKey('webproperty')
              ? Webproperty.fromJson(
                  _json['webproperty'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (profile != null) 'profile': profile!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
        if (webproperty != null) 'webproperty': webproperty!,
      };
}

/// JSON template for an Analytics account tree requests.
///
/// The account tree request is used in the provisioning api to create an
/// account, property, and view (profile). It contains the basic information
/// required to make these fields.
class AccountTreeRequest {
  core.String? accountName;

  /// Resource type for account ticket.
  core.String? kind;
  core.String? profileName;
  core.String? timezone;
  core.String? webpropertyName;
  core.String? websiteUrl;

  AccountTreeRequest({
    this.accountName,
    this.kind,
    this.profileName,
    this.timezone,
    this.webpropertyName,
    this.websiteUrl,
  });

  AccountTreeRequest.fromJson(core.Map _json)
      : this(
          accountName: _json.containsKey('accountName')
              ? _json['accountName'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profileName: _json.containsKey('profileName')
              ? _json['profileName'] as core.String
              : null,
          timezone: _json.containsKey('timezone')
              ? _json['timezone'] as core.String
              : null,
          webpropertyName: _json.containsKey('webpropertyName')
              ? _json['webpropertyName'] as core.String
              : null,
          websiteUrl: _json.containsKey('websiteUrl')
              ? _json['websiteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountName != null) 'accountName': accountName!,
        if (kind != null) 'kind': kind!,
        if (profileName != null) 'profileName': profileName!,
        if (timezone != null) 'timezone': timezone!,
        if (webpropertyName != null) 'webpropertyName': webpropertyName!,
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
      };
}

/// JSON template for an Analytics account tree response.
///
/// The account tree response is used in the provisioning api to return the
/// result of creating an account, property, and view (profile).
class AccountTreeResponse {
  /// The account created.
  Account? account;

  /// Resource type for account ticket.
  core.String? kind;

  /// View (Profile) for the account.
  Profile? profile;

  /// Web property for the account.
  Webproperty? webproperty;

  AccountTreeResponse({
    this.account,
    this.kind,
    this.profile,
    this.webproperty,
  });

  AccountTreeResponse.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? Account.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profile: _json.containsKey('profile')
              ? Profile.fromJson(
                  _json['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          webproperty: _json.containsKey('webproperty')
              ? Webproperty.fromJson(
                  _json['webproperty'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (kind != null) 'kind': kind!,
        if (profile != null) 'profile': profile!,
        if (webproperty != null) 'webproperty': webproperty!,
      };
}

/// An account collection provides a list of Analytics accounts to which a user
/// has access.
///
/// The account collection is the entry point to all management information.
/// Each resource in the collection corresponds to a single Analytics account.
class Accounts {
  /// A list of accounts.
  core.List<Account>? items;

  /// The maximum number of entries the response can contain, regardless of the
  /// actual number of entries returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Next link for this account collection.
  core.String? nextLink;

  /// Previous link for this account collection.
  core.String? previousLink;

  /// The starting index of the entries, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Accounts({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Accounts.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Account.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// JSON template for an Google Ads account.
class AdWordsAccount {
  /// True if auto-tagging is enabled on the Google Ads account.
  ///
  /// Read-only after the insert operation.
  core.bool? autoTaggingEnabled;

  /// Customer ID.
  ///
  /// This field is required when creating a Google Ads link.
  core.String? customerId;

  /// Resource type for Google Ads account.
  core.String? kind;

  AdWordsAccount({
    this.autoTaggingEnabled,
    this.customerId,
    this.kind,
  });

  AdWordsAccount.fromJson(core.Map _json)
      : this(
          autoTaggingEnabled: _json.containsKey('autoTaggingEnabled')
              ? _json['autoTaggingEnabled'] as core.bool
              : null,
          customerId: _json.containsKey('customerId')
              ? _json['customerId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoTaggingEnabled != null)
          'autoTaggingEnabled': autoTaggingEnabled!,
        if (customerId != null) 'customerId': customerId!,
        if (kind != null) 'kind': kind!,
      };
}

/// Request template for the delete upload data request.
class AnalyticsDataimportDeleteUploadDataRequest {
  /// A list of upload UIDs.
  core.List<core.String>? customDataImportUids;

  AnalyticsDataimportDeleteUploadDataRequest({
    this.customDataImportUids,
  });

  AnalyticsDataimportDeleteUploadDataRequest.fromJson(core.Map _json)
      : this(
          customDataImportUids: _json.containsKey('customDataImportUids')
              ? (_json['customDataImportUids'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDataImportUids != null)
          'customDataImportUids': customDataImportUids!,
      };
}

/// JSON template for a metadata column.
class Column {
  /// Map of attribute name and value for this column.
  core.Map<core.String, core.String>? attributes;

  /// Column id.
  core.String? id;

  /// Resource type for Analytics column.
  core.String? kind;

  Column({
    this.attributes,
    this.id,
    this.kind,
  });

  Column.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
      };
}

/// Lists columns (dimensions and metrics) for a particular report type.
class Columns {
  /// List of attributes names returned by columns.
  core.List<core.String>? attributeNames;

  /// Etag of collection.
  ///
  /// This etag can be compared with the last response etag to check if response
  /// has changed.
  core.String? etag;

  /// List of columns for a report type.
  core.List<Column>? items;

  /// Collection type.
  core.String? kind;

  /// Total number of columns returned in the response.
  core.int? totalResults;

  Columns({
    this.attributeNames,
    this.etag,
    this.items,
    this.kind,
    this.totalResults,
  });

  Columns.fromJson(core.Map _json)
      : this(
          attributeNames: _json.containsKey('attributeNames')
              ? (_json['attributeNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Column.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeNames != null) 'attributeNames': attributeNames!,
        if (etag != null) 'etag': etag!,
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

class CustomDataSourceChildLink {
  /// Link to the list of daily uploads for this custom data source.
  ///
  /// Link to the list of uploads for this custom data source.
  core.String? href;

  /// Value is "analytics#dailyUploads".
  ///
  /// Value is "analytics#uploads".
  core.String? type;

  CustomDataSourceChildLink({
    this.href,
    this.type,
  });

  CustomDataSourceChildLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Parent link for this custom data source.
///
/// Points to the web property to which this custom data source belongs.
class CustomDataSourceParentLink {
  /// Link to the web property to which this custom data source belongs.
  core.String? href;

  /// Value is "analytics#webproperty".
  core.String? type;

  CustomDataSourceParentLink({
    this.href,
    this.type,
  });

  CustomDataSourceParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// JSON template for an Analytics custom data source.
class CustomDataSource {
  /// Account ID to which this custom data source belongs.
  core.String? accountId;
  CustomDataSourceChildLink? childLink;

  /// Time this custom data source was created.
  core.DateTime? created;

  /// Description of custom data source.
  core.String? description;

  /// Custom data source ID.
  core.String? id;
  core.String? importBehavior;

  /// Resource type for Analytics custom data source.
  core.String? kind;

  /// Name of this custom data source.
  core.String? name;

  /// Parent link for this custom data source.
  ///
  /// Points to the web property to which this custom data source belongs.
  CustomDataSourceParentLink? parentLink;

  /// IDs of views (profiles) linked to the custom data source.
  core.List<core.String>? profilesLinked;

  /// Collection of schema headers of the custom data source.
  core.List<core.String>? schema;

  /// Link for this Analytics custom data source.
  core.String? selfLink;

  /// Type of the custom data source.
  core.String? type;

  /// Time this custom data source was last modified.
  core.DateTime? updated;

  /// Upload type of the custom data source.
  core.String? uploadType;

  /// Web property ID of the form UA-XXXXX-YY to which this custom data source
  /// belongs.
  core.String? webPropertyId;

  CustomDataSource({
    this.accountId,
    this.childLink,
    this.created,
    this.description,
    this.id,
    this.importBehavior,
    this.kind,
    this.name,
    this.parentLink,
    this.profilesLinked,
    this.schema,
    this.selfLink,
    this.type,
    this.updated,
    this.uploadType,
    this.webPropertyId,
  });

  CustomDataSource.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          childLink: _json.containsKey('childLink')
              ? CustomDataSourceChildLink.fromJson(
                  _json['childLink'] as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          importBehavior: _json.containsKey('importBehavior')
              ? _json['importBehavior'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? CustomDataSourceParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          profilesLinked: _json.containsKey('profilesLinked')
              ? (_json['profilesLinked'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          schema: _json.containsKey('schema')
              ? (_json['schema'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          uploadType: _json.containsKey('uploadType')
              ? _json['uploadType'] as core.String
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (childLink != null) 'childLink': childLink!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (importBehavior != null) 'importBehavior': importBehavior!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (profilesLinked != null) 'profilesLinked': profilesLinked!,
        if (schema != null) 'schema': schema!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (uploadType != null) 'uploadType': uploadType!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// Lists Analytics custom data sources to which the user has access.
///
/// Each resource in the collection corresponds to a single Analytics custom
/// data source.
class CustomDataSources {
  /// Collection of custom data sources.
  core.List<CustomDataSource>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this custom data source collection.
  core.String? nextLink;

  /// Link to previous page for this custom data source collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  CustomDataSources({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  CustomDataSources.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => CustomDataSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Parent link for the custom dimension.
///
/// Points to the property to which the custom dimension belongs.
class CustomDimensionParentLink {
  /// Link to the property to which the custom dimension belongs.
  core.String? href;

  /// Type of the parent link.
  ///
  /// Set to "analytics#webproperty".
  core.String? type;

  CustomDimensionParentLink({
    this.href,
    this.type,
  });

  CustomDimensionParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// JSON template for Analytics Custom Dimension.
class CustomDimension {
  /// Account ID.
  core.String? accountId;

  /// Boolean indicating whether the custom dimension is active.
  core.bool? active;

  /// Time the custom dimension was created.
  core.DateTime? created;

  /// Custom dimension ID.
  core.String? id;

  /// Index of the custom dimension.
  core.int? index;

  /// Kind value for a custom dimension.
  ///
  /// Set to "analytics#customDimension". It is a read-only field.
  core.String? kind;

  /// Name of the custom dimension.
  core.String? name;

  /// Parent link for the custom dimension.
  ///
  /// Points to the property to which the custom dimension belongs.
  CustomDimensionParentLink? parentLink;

  /// Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.
  core.String? scope;

  /// Link for the custom dimension
  core.String? selfLink;

  /// Time the custom dimension was last modified.
  core.DateTime? updated;

  /// Property ID.
  core.String? webPropertyId;

  CustomDimension({
    this.accountId,
    this.active,
    this.created,
    this.id,
    this.index,
    this.kind,
    this.name,
    this.parentLink,
    this.scope,
    this.selfLink,
    this.updated,
    this.webPropertyId,
  });

  CustomDimension.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          active:
              _json.containsKey('active') ? _json['active'] as core.bool : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? CustomDimensionParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (scope != null) 'scope': scope!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// A custom dimension collection lists Analytics custom dimensions to which the
/// user has access.
///
/// Each resource in the collection corresponds to a single Analytics custom
/// dimension.
class CustomDimensions {
  /// Collection of custom dimensions.
  core.List<CustomDimension>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this custom dimension collection.
  core.String? nextLink;

  /// Link to previous page for this custom dimension collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  CustomDimensions({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  CustomDimensions.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => CustomDimension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Parent link for the custom metric.
///
/// Points to the property to which the custom metric belongs.
class CustomMetricParentLink {
  /// Link to the property to which the custom metric belongs.
  core.String? href;

  /// Type of the parent link.
  ///
  /// Set to "analytics#webproperty".
  core.String? type;

  CustomMetricParentLink({
    this.href,
    this.type,
  });

  CustomMetricParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// JSON template for Analytics Custom Metric.
class CustomMetric {
  /// Account ID.
  core.String? accountId;

  /// Boolean indicating whether the custom metric is active.
  core.bool? active;

  /// Time the custom metric was created.
  core.DateTime? created;

  /// Custom metric ID.
  core.String? id;

  /// Index of the custom metric.
  core.int? index;

  /// Kind value for a custom metric.
  ///
  /// Set to "analytics#customMetric". It is a read-only field.
  core.String? kind;

  /// Max value of custom metric.
  core.String? maxValue;

  /// Min value of custom metric.
  core.String? minValue;

  /// Name of the custom metric.
  core.String? name;

  /// Parent link for the custom metric.
  ///
  /// Points to the property to which the custom metric belongs.
  CustomMetricParentLink? parentLink;

  /// Scope of the custom metric: HIT or PRODUCT.
  core.String? scope;

  /// Link for the custom metric
  core.String? selfLink;

  /// Data type of custom metric.
  core.String? type;

  /// Time the custom metric was last modified.
  core.DateTime? updated;

  /// Property ID.
  core.String? webPropertyId;

  CustomMetric({
    this.accountId,
    this.active,
    this.created,
    this.id,
    this.index,
    this.kind,
    this.maxValue,
    this.minValue,
    this.name,
    this.parentLink,
    this.scope,
    this.selfLink,
    this.type,
    this.updated,
    this.webPropertyId,
  });

  CustomMetric.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          active:
              _json.containsKey('active') ? _json['active'] as core.bool : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          maxValue: _json.containsKey('max_value')
              ? _json['max_value'] as core.String
              : null,
          minValue: _json.containsKey('min_value')
              ? _json['min_value'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? CustomMetricParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (kind != null) 'kind': kind!,
        if (maxValue != null) 'max_value': maxValue!,
        if (minValue != null) 'min_value': minValue!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (scope != null) 'scope': scope!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// A custom metric collection lists Analytics custom metrics to which the user
/// has access.
///
/// Each resource in the collection corresponds to a single Analytics custom
/// metric.
class CustomMetrics {
  /// Collection of custom metrics.
  core.List<CustomMetric>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this custom metric collection.
  core.String? nextLink;

  /// Link to previous page for this custom metric collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  CustomMetrics({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  CustomMetrics.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => CustomMetric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Web property being linked.
class EntityAdWordsLinkEntity {
  WebPropertyRef? webPropertyRef;

  EntityAdWordsLinkEntity({
    this.webPropertyRef,
  });

  EntityAdWordsLinkEntity.fromJson(core.Map _json)
      : this(
          webPropertyRef: _json.containsKey('webPropertyRef')
              ? WebPropertyRef.fromJson(_json['webPropertyRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (webPropertyRef != null) 'webPropertyRef': webPropertyRef!,
      };
}

/// JSON template for Analytics Entity Google Ads Link.
class EntityAdWordsLink {
  /// A list of Google Ads client accounts.
  ///
  /// These cannot be MCC accounts. This field is required when creating a
  /// Google Ads link. It cannot be empty.
  core.List<AdWordsAccount>? adWordsAccounts;

  /// Web property being linked.
  EntityAdWordsLinkEntity? entity;

  /// Entity Google Ads link ID
  core.String? id;

  /// Resource type for entity Google Ads link.
  core.String? kind;

  /// Name of the link.
  ///
  /// This field is required when creating a Google Ads link.
  core.String? name;

  /// IDs of linked Views (Profiles) represented as strings.
  core.List<core.String>? profileIds;

  /// URL link for this Google Analytics - Google Ads link.
  core.String? selfLink;

  EntityAdWordsLink({
    this.adWordsAccounts,
    this.entity,
    this.id,
    this.kind,
    this.name,
    this.profileIds,
    this.selfLink,
  });

  EntityAdWordsLink.fromJson(core.Map _json)
      : this(
          adWordsAccounts: _json.containsKey('adWordsAccounts')
              ? (_json['adWordsAccounts'] as core.List)
                  .map((value) => AdWordsAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entity: _json.containsKey('entity')
              ? EntityAdWordsLinkEntity.fromJson(
                  _json['entity'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          profileIds: _json.containsKey('profileIds')
              ? (_json['profileIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adWordsAccounts != null) 'adWordsAccounts': adWordsAccounts!,
        if (entity != null) 'entity': entity!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (profileIds != null) 'profileIds': profileIds!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// An entity Google Ads link collection provides a list of GA-Google Ads links
/// Each resource in this collection corresponds to a single link.
class EntityAdWordsLinks {
  /// A list of entity Google Ads links.
  core.List<EntityAdWordsLink>? items;

  /// The maximum number of entries the response can contain, regardless of the
  /// actual number of entries returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Next link for this Google Ads link collection.
  core.String? nextLink;

  /// Previous link for this Google Ads link collection.
  core.String? previousLink;

  /// The starting index of the entries, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  EntityAdWordsLinks({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
  });

  EntityAdWordsLinks.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => EntityAdWordsLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Entity for this link.
///
/// It can be an account, a web property, or a view (profile).
class EntityUserLinkEntity {
  /// Account for this link.
  AccountRef? accountRef;

  /// View (Profile) for this link.
  ProfileRef? profileRef;

  /// Web property for this link.
  WebPropertyRef? webPropertyRef;

  EntityUserLinkEntity({
    this.accountRef,
    this.profileRef,
    this.webPropertyRef,
  });

  EntityUserLinkEntity.fromJson(core.Map _json)
      : this(
          accountRef: _json.containsKey('accountRef')
              ? AccountRef.fromJson(
                  _json['accountRef'] as core.Map<core.String, core.dynamic>)
              : null,
          profileRef: _json.containsKey('profileRef')
              ? ProfileRef.fromJson(
                  _json['profileRef'] as core.Map<core.String, core.dynamic>)
              : null,
          webPropertyRef: _json.containsKey('webPropertyRef')
              ? WebPropertyRef.fromJson(_json['webPropertyRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountRef != null) 'accountRef': accountRef!,
        if (profileRef != null) 'profileRef': profileRef!,
        if (webPropertyRef != null) 'webPropertyRef': webPropertyRef!,
      };
}

/// Permissions the user has for this entity.
class EntityUserLinkPermissions {
  /// Effective permissions represent all the permissions that a user has for
  /// this entity.
  ///
  /// These include any implied permissions (e.g., EDIT implies VIEW) or
  /// inherited permissions from the parent entity. Effective permissions are
  /// read-only.
  core.List<core.String>? effective;

  /// Permissions that a user has been assigned at this very level.
  ///
  /// Does not include any implied or inherited permissions. Local permissions
  /// are modifiable.
  core.List<core.String>? local;

  EntityUserLinkPermissions({
    this.effective,
    this.local,
  });

  EntityUserLinkPermissions.fromJson(core.Map _json)
      : this(
          effective: _json.containsKey('effective')
              ? (_json['effective'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          local: _json.containsKey('local')
              ? (_json['local'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effective != null) 'effective': effective!,
        if (local != null) 'local': local!,
      };
}

/// JSON template for an Analytics Entity-User Link.
///
/// Returns permissions that a user has for an entity.
class EntityUserLink {
  /// Entity for this link.
  ///
  /// It can be an account, a web property, or a view (profile).
  EntityUserLinkEntity? entity;

  /// Entity user link ID
  core.String? id;

  /// Resource type for entity user link.
  core.String? kind;

  /// Permissions the user has for this entity.
  EntityUserLinkPermissions? permissions;

  /// Self link for this resource.
  core.String? selfLink;

  /// User reference.
  UserRef? userRef;

  EntityUserLink({
    this.entity,
    this.id,
    this.kind,
    this.permissions,
    this.selfLink,
    this.userRef,
  });

  EntityUserLink.fromJson(core.Map _json)
      : this(
          entity: _json.containsKey('entity')
              ? EntityUserLinkEntity.fromJson(
                  _json['entity'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          permissions: _json.containsKey('permissions')
              ? EntityUserLinkPermissions.fromJson(
                  _json['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          userRef: _json.containsKey('userRef')
              ? UserRef.fromJson(
                  _json['userRef'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (permissions != null) 'permissions': permissions!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (userRef != null) 'userRef': userRef!,
      };
}

/// An entity user link collection provides a list of Analytics ACL links Each
/// resource in this collection corresponds to a single link.
class EntityUserLinks {
  /// A list of entity user links.
  core.List<EntityUserLink>? items;

  /// The maximum number of entries the response can contain, regardless of the
  /// actual number of entries returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Next link for this account collection.
  core.String? nextLink;

  /// Previous link for this account collection.
  core.String? previousLink;

  /// The starting index of the entries, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  EntityUserLinks({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
  });

  EntityUserLinks.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => EntityUserLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// Parent link for an experiment.
///
/// Points to the view (profile) to which this experiment belongs.
class ExperimentParentLink {
  /// Link to the view (profile) to which this experiment belongs.
  ///
  /// This field is read-only.
  core.String? href;

  /// Value is "analytics#profile".
  ///
  /// This field is read-only.
  core.String? type;

  ExperimentParentLink({
    this.href,
    this.type,
  });

  ExperimentParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

class ExperimentVariations {
  /// The name of the variation.
  ///
  /// This field is required when creating an experiment. This field may not be
  /// changed for an experiment whose status is ENDED.
  core.String? name;

  /// Status of the variation.
  ///
  /// Possible values: "ACTIVE", "INACTIVE". INACTIVE variations are not served.
  /// This field may not be changed for an experiment whose status is ENDED.
  core.String? status;

  /// The URL of the variation.
  ///
  /// This field may not be changed for an experiment whose status is RUNNING or
  /// ENDED.
  core.String? url;

  /// Weight that this variation should receive.
  ///
  /// Only present if the experiment is running. This field is read-only.
  core.double? weight;

  /// True if the experiment has ended and this variation performed
  /// (statistically) significantly better than the original.
  ///
  /// This field is read-only.
  core.bool? won;

  ExperimentVariations({
    this.name,
    this.status,
    this.url,
    this.weight,
    this.won,
  });

  ExperimentVariations.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
          weight: _json.containsKey('weight')
              ? (_json['weight'] as core.num).toDouble()
              : null,
          won: _json.containsKey('won') ? _json['won'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (url != null) 'url': url!,
        if (weight != null) 'weight': weight!,
        if (won != null) 'won': won!,
      };
}

/// JSON template for Analytics experiment resource.
class Experiment {
  /// Account ID to which this experiment belongs.
  ///
  /// This field is read-only.
  core.String? accountId;

  /// Time the experiment was created.
  ///
  /// This field is read-only.
  core.DateTime? created;

  /// Notes about this experiment.
  core.String? description;

  /// If true, the end user will be able to edit the experiment via the Google
  /// Analytics user interface.
  core.bool? editableInGaUi;

  /// The ending time of the experiment (the time the status changed from
  /// RUNNING to ENDED).
  ///
  /// This field is present only if the experiment has ended. This field is
  /// read-only.
  core.DateTime? endTime;

  /// Boolean specifying whether to distribute traffic evenly across all
  /// variations.
  ///
  /// If the value is False, content experiments follows the default behavior of
  /// adjusting traffic dynamically based on variation performance. Optional --
  /// defaults to False. This field may not be changed for an experiment whose
  /// status is ENDED.
  core.bool? equalWeighting;

  /// Experiment ID.
  ///
  /// Required for patch and update. Disallowed for create.
  core.String? id;

  /// Internal ID for the web property to which this experiment belongs.
  ///
  /// This field is read-only.
  core.String? internalWebPropertyId;

  /// Resource type for an Analytics experiment.
  ///
  /// This field is read-only.
  core.String? kind;

  /// An integer number in \[3, 90\].
  ///
  /// Specifies the minimum length of the experiment. Can be changed for a
  /// running experiment. This field may not be changed for an experiments whose
  /// status is ENDED.
  core.int? minimumExperimentLengthInDays;

  /// Experiment name.
  ///
  /// This field may not be changed for an experiment whose status is ENDED.
  /// This field is required when creating an experiment.
  core.String? name;

  /// The metric that the experiment is optimizing.
  ///
  /// Valid values: "ga:goal(n)Completions", "ga:adsenseAdsClicks",
  /// "ga:adsenseAdsViewed", "ga:adsenseRevenue", "ga:bounces", "ga:pageviews",
  /// "ga:sessionDuration", "ga:transactions", "ga:transactionRevenue". This
  /// field is required if status is "RUNNING" and servingFramework is one of
  /// "REDIRECT" or "API".
  core.String? objectiveMetric;

  /// Whether the objectiveMetric should be minimized or maximized.
  ///
  /// Possible values: "MAXIMUM", "MINIMUM". Optional--defaults to "MAXIMUM".
  /// Cannot be specified without objectiveMetric. Cannot be modified when
  /// status is "RUNNING" or "ENDED".
  core.String? optimizationType;

  /// Parent link for an experiment.
  ///
  /// Points to the view (profile) to which this experiment belongs.
  ExperimentParentLink? parentLink;

  /// View (Profile) ID to which this experiment belongs.
  ///
  /// This field is read-only.
  core.String? profileId;

  /// Why the experiment ended.
  ///
  /// Possible values: "STOPPED_BY_USER", "WINNER_FOUND", "EXPERIMENT_EXPIRED",
  /// "ENDED_WITH_NO_WINNER", "GOAL_OBJECTIVE_CHANGED". "ENDED_WITH_NO_WINNER"
  /// means that the experiment didn't expire but no winner was projected to be
  /// found. If the experiment status is changed via the API to ENDED this field
  /// is set to STOPPED_BY_USER. This field is read-only.
  core.String? reasonExperimentEnded;

  /// Boolean specifying whether variations URLS are rewritten to match those of
  /// the original.
  ///
  /// This field may not be changed for an experiments whose status is ENDED.
  core.bool? rewriteVariationUrlsAsOriginal;

  /// Link for this experiment.
  ///
  /// This field is read-only.
  core.String? selfLink;

  /// The framework used to serve the experiment variations and evaluate the
  /// results.
  ///
  /// One of:
  /// - REDIRECT: Google Analytics redirects traffic to different variation
  /// pages, reports the chosen variation and evaluates the results.
  /// - API: Google Analytics chooses and reports the variation to serve and
  /// evaluates the results; the caller is responsible for serving the selected
  /// variation.
  /// - EXTERNAL: The variations will be served externally and the chosen
  /// variation reported to Google Analytics. The caller is responsible for
  /// serving the selected variation and evaluating the results.
  core.String? servingFramework;

  /// The snippet of code to include on the control page(s).
  ///
  /// This field is read-only.
  core.String? snippet;

  /// The starting time of the experiment (the time the status changed from
  /// READY_TO_RUN to RUNNING).
  ///
  /// This field is present only if the experiment has started. This field is
  /// read-only.
  core.DateTime? startTime;

  /// Experiment status.
  ///
  /// Possible values: "DRAFT", "READY_TO_RUN", "RUNNING", "ENDED". Experiments
  /// can be created in the "DRAFT", "READY_TO_RUN" or "RUNNING" state. This
  /// field is required when creating an experiment.
  core.String? status;

  /// A floating-point number in (0, 1\].
  ///
  /// Specifies the fraction of the traffic that participates in the experiment.
  /// Can be changed for a running experiment. This field may not be changed for
  /// an experiments whose status is ENDED.
  core.double? trafficCoverage;

  /// Time the experiment was last modified.
  ///
  /// This field is read-only.
  core.DateTime? updated;

  /// Array of variations.
  ///
  /// The first variation in the array is the original. The number of variations
  /// may not change once an experiment is in the RUNNING state. At least two
  /// variations are required before status can be set to RUNNING.
  core.List<ExperimentVariations>? variations;

  /// Web property ID to which this experiment belongs.
  ///
  /// The web property ID is of the form UA-XXXXX-YY. This field is read-only.
  core.String? webPropertyId;

  /// A floating-point number in (0, 1).
  ///
  /// Specifies the necessary confidence level to choose a winner. This field
  /// may not be changed for an experiments whose status is ENDED.
  core.double? winnerConfidenceLevel;

  /// Boolean specifying whether a winner has been found for this experiment.
  ///
  /// This field is read-only.
  core.bool? winnerFound;

  Experiment({
    this.accountId,
    this.created,
    this.description,
    this.editableInGaUi,
    this.endTime,
    this.equalWeighting,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.minimumExperimentLengthInDays,
    this.name,
    this.objectiveMetric,
    this.optimizationType,
    this.parentLink,
    this.profileId,
    this.reasonExperimentEnded,
    this.rewriteVariationUrlsAsOriginal,
    this.selfLink,
    this.servingFramework,
    this.snippet,
    this.startTime,
    this.status,
    this.trafficCoverage,
    this.updated,
    this.variations,
    this.webPropertyId,
    this.winnerConfidenceLevel,
    this.winnerFound,
  });

  Experiment.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          editableInGaUi: _json.containsKey('editableInGaUi')
              ? _json['editableInGaUi'] as core.bool
              : null,
          endTime: _json.containsKey('endTime')
              ? core.DateTime.parse(_json['endTime'] as core.String)
              : null,
          equalWeighting: _json.containsKey('equalWeighting')
              ? _json['equalWeighting'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          minimumExperimentLengthInDays:
              _json.containsKey('minimumExperimentLengthInDays')
                  ? _json['minimumExperimentLengthInDays'] as core.int
                  : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          objectiveMetric: _json.containsKey('objectiveMetric')
              ? _json['objectiveMetric'] as core.String
              : null,
          optimizationType: _json.containsKey('optimizationType')
              ? _json['optimizationType'] as core.String
              : null,
          parentLink: _json.containsKey('parentLink')
              ? ExperimentParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          reasonExperimentEnded: _json.containsKey('reasonExperimentEnded')
              ? _json['reasonExperimentEnded'] as core.String
              : null,
          rewriteVariationUrlsAsOriginal:
              _json.containsKey('rewriteVariationUrlsAsOriginal')
                  ? _json['rewriteVariationUrlsAsOriginal'] as core.bool
                  : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          servingFramework: _json.containsKey('servingFramework')
              ? _json['servingFramework'] as core.String
              : null,
          snippet: _json.containsKey('snippet')
              ? _json['snippet'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? core.DateTime.parse(_json['startTime'] as core.String)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          trafficCoverage: _json.containsKey('trafficCoverage')
              ? (_json['trafficCoverage'] as core.num).toDouble()
              : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          variations: _json.containsKey('variations')
              ? (_json['variations'] as core.List)
                  .map((value) => ExperimentVariations.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
          winnerConfidenceLevel: _json.containsKey('winnerConfidenceLevel')
              ? (_json['winnerConfidenceLevel'] as core.num).toDouble()
              : null,
          winnerFound: _json.containsKey('winnerFound')
              ? _json['winnerFound'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (description != null) 'description': description!,
        if (editableInGaUi != null) 'editableInGaUi': editableInGaUi!,
        if (endTime != null) 'endTime': endTime!.toUtc().toIso8601String(),
        if (equalWeighting != null) 'equalWeighting': equalWeighting!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (minimumExperimentLengthInDays != null)
          'minimumExperimentLengthInDays': minimumExperimentLengthInDays!,
        if (name != null) 'name': name!,
        if (objectiveMetric != null) 'objectiveMetric': objectiveMetric!,
        if (optimizationType != null) 'optimizationType': optimizationType!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (profileId != null) 'profileId': profileId!,
        if (reasonExperimentEnded != null)
          'reasonExperimentEnded': reasonExperimentEnded!,
        if (rewriteVariationUrlsAsOriginal != null)
          'rewriteVariationUrlsAsOriginal': rewriteVariationUrlsAsOriginal!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (servingFramework != null) 'servingFramework': servingFramework!,
        if (snippet != null) 'snippet': snippet!,
        if (startTime != null)
          'startTime': startTime!.toUtc().toIso8601String(),
        if (status != null) 'status': status!,
        if (trafficCoverage != null) 'trafficCoverage': trafficCoverage!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (variations != null) 'variations': variations!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
        if (winnerConfidenceLevel != null)
          'winnerConfidenceLevel': winnerConfidenceLevel!,
        if (winnerFound != null) 'winnerFound': winnerFound!,
      };
}

/// An experiment collection lists Analytics experiments to which the user has
/// access.
///
/// Each view (profile) can have a set of experiments. Each resource in the
/// Experiment collection corresponds to a single Analytics experiment.
class Experiments {
  /// A list of experiments.
  core.List<Experiment>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this experiment collection.
  core.String? nextLink;

  /// Link to previous page for this experiment collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// resources in the result.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Experiments({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Experiments.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Experiment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Details for the filter of the type ADVANCED.
class FilterAdvancedDetails {
  /// Indicates if the filter expressions are case sensitive.
  core.bool? caseSensitive;

  /// Expression to extract from field A.
  core.String? extractA;

  /// Expression to extract from field B.
  core.String? extractB;

  /// Field A.
  core.String? fieldA;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? fieldAIndex;

  /// Indicates if field A is required to match.
  core.bool? fieldARequired;

  /// Field B.
  core.String? fieldB;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? fieldBIndex;

  /// Indicates if field B is required to match.
  core.bool? fieldBRequired;

  /// Expression used to construct the output value.
  core.String? outputConstructor;

  /// Output field.
  core.String? outputToField;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? outputToFieldIndex;

  /// Indicates if the existing value of the output field, if any, should be
  /// overridden by the output expression.
  core.bool? overrideOutputField;

  FilterAdvancedDetails({
    this.caseSensitive,
    this.extractA,
    this.extractB,
    this.fieldA,
    this.fieldAIndex,
    this.fieldARequired,
    this.fieldB,
    this.fieldBIndex,
    this.fieldBRequired,
    this.outputConstructor,
    this.outputToField,
    this.outputToFieldIndex,
    this.overrideOutputField,
  });

  FilterAdvancedDetails.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          extractA: _json.containsKey('extractA')
              ? _json['extractA'] as core.String
              : null,
          extractB: _json.containsKey('extractB')
              ? _json['extractB'] as core.String
              : null,
          fieldA: _json.containsKey('fieldA')
              ? _json['fieldA'] as core.String
              : null,
          fieldAIndex: _json.containsKey('fieldAIndex')
              ? _json['fieldAIndex'] as core.int
              : null,
          fieldARequired: _json.containsKey('fieldARequired')
              ? _json['fieldARequired'] as core.bool
              : null,
          fieldB: _json.containsKey('fieldB')
              ? _json['fieldB'] as core.String
              : null,
          fieldBIndex: _json.containsKey('fieldBIndex')
              ? _json['fieldBIndex'] as core.int
              : null,
          fieldBRequired: _json.containsKey('fieldBRequired')
              ? _json['fieldBRequired'] as core.bool
              : null,
          outputConstructor: _json.containsKey('outputConstructor')
              ? _json['outputConstructor'] as core.String
              : null,
          outputToField: _json.containsKey('outputToField')
              ? _json['outputToField'] as core.String
              : null,
          outputToFieldIndex: _json.containsKey('outputToFieldIndex')
              ? _json['outputToFieldIndex'] as core.int
              : null,
          overrideOutputField: _json.containsKey('overrideOutputField')
              ? _json['overrideOutputField'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (extractA != null) 'extractA': extractA!,
        if (extractB != null) 'extractB': extractB!,
        if (fieldA != null) 'fieldA': fieldA!,
        if (fieldAIndex != null) 'fieldAIndex': fieldAIndex!,
        if (fieldARequired != null) 'fieldARequired': fieldARequired!,
        if (fieldB != null) 'fieldB': fieldB!,
        if (fieldBIndex != null) 'fieldBIndex': fieldBIndex!,
        if (fieldBRequired != null) 'fieldBRequired': fieldBRequired!,
        if (outputConstructor != null) 'outputConstructor': outputConstructor!,
        if (outputToField != null) 'outputToField': outputToField!,
        if (outputToFieldIndex != null)
          'outputToFieldIndex': outputToFieldIndex!,
        if (overrideOutputField != null)
          'overrideOutputField': overrideOutputField!,
      };
}

/// Details for the filter of the type LOWER.
class FilterLowercaseDetails {
  /// Field to use in the filter.
  core.String? field;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? fieldIndex;

  FilterLowercaseDetails({
    this.field,
    this.fieldIndex,
  });

  FilterLowercaseDetails.fromJson(core.Map _json)
      : this(
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          fieldIndex: _json.containsKey('fieldIndex')
              ? _json['fieldIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (fieldIndex != null) 'fieldIndex': fieldIndex!,
      };
}

/// Parent link for this filter.
///
/// Points to the account to which this filter belongs.
class FilterParentLink {
  /// Link to the account to which this filter belongs.
  core.String? href;

  /// Value is "analytics#account".
  core.String? type;

  FilterParentLink({
    this.href,
    this.type,
  });

  FilterParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Details for the filter of the type SEARCH_AND_REPLACE.
class FilterSearchAndReplaceDetails {
  /// Determines if the filter is case sensitive.
  core.bool? caseSensitive;

  /// Field to use in the filter.
  core.String? field;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? fieldIndex;

  /// Term to replace the search term with.
  core.String? replaceString;

  /// Term to search.
  core.String? searchString;

  FilterSearchAndReplaceDetails({
    this.caseSensitive,
    this.field,
    this.fieldIndex,
    this.replaceString,
    this.searchString,
  });

  FilterSearchAndReplaceDetails.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          fieldIndex: _json.containsKey('fieldIndex')
              ? _json['fieldIndex'] as core.int
              : null,
          replaceString: _json.containsKey('replaceString')
              ? _json['replaceString'] as core.String
              : null,
          searchString: _json.containsKey('searchString')
              ? _json['searchString'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (field != null) 'field': field!,
        if (fieldIndex != null) 'fieldIndex': fieldIndex!,
        if (replaceString != null) 'replaceString': replaceString!,
        if (searchString != null) 'searchString': searchString!,
      };
}

/// Details for the filter of the type UPPER.
class FilterUppercaseDetails {
  /// Field to use in the filter.
  core.String? field;

  /// The Index of the custom dimension.
  ///
  /// Required if field is a CUSTOM_DIMENSION.
  core.int? fieldIndex;

  FilterUppercaseDetails({
    this.field,
    this.fieldIndex,
  });

  FilterUppercaseDetails.fromJson(core.Map _json)
      : this(
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          fieldIndex: _json.containsKey('fieldIndex')
              ? _json['fieldIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (fieldIndex != null) 'fieldIndex': fieldIndex!,
      };
}

/// JSON template for an Analytics account filter.
class Filter {
  /// Account ID to which this filter belongs.
  core.String? accountId;

  /// Details for the filter of the type ADVANCED.
  FilterAdvancedDetails? advancedDetails;

  /// Time this filter was created.
  core.DateTime? created;

  /// Details for the filter of the type EXCLUDE.
  FilterExpression? excludeDetails;

  /// Filter ID.
  core.String? id;

  /// Details for the filter of the type INCLUDE.
  FilterExpression? includeDetails;

  /// Resource type for Analytics filter.
  core.String? kind;

  /// Details for the filter of the type LOWER.
  FilterLowercaseDetails? lowercaseDetails;

  /// Name of this filter.
  core.String? name;

  /// Parent link for this filter.
  ///
  /// Points to the account to which this filter belongs.
  FilterParentLink? parentLink;

  /// Details for the filter of the type SEARCH_AND_REPLACE.
  FilterSearchAndReplaceDetails? searchAndReplaceDetails;

  /// Link for this filter.
  core.String? selfLink;

  /// Type of this filter.
  ///
  /// Possible values are INCLUDE, EXCLUDE, LOWERCASE, UPPERCASE,
  /// SEARCH_AND_REPLACE and ADVANCED.
  core.String? type;

  /// Time this filter was last modified.
  core.DateTime? updated;

  /// Details for the filter of the type UPPER.
  FilterUppercaseDetails? uppercaseDetails;

  Filter({
    this.accountId,
    this.advancedDetails,
    this.created,
    this.excludeDetails,
    this.id,
    this.includeDetails,
    this.kind,
    this.lowercaseDetails,
    this.name,
    this.parentLink,
    this.searchAndReplaceDetails,
    this.selfLink,
    this.type,
    this.updated,
    this.uppercaseDetails,
  });

  Filter.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          advancedDetails: _json.containsKey('advancedDetails')
              ? FilterAdvancedDetails.fromJson(_json['advancedDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          excludeDetails: _json.containsKey('excludeDetails')
              ? FilterExpression.fromJson(_json['excludeDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          includeDetails: _json.containsKey('includeDetails')
              ? FilterExpression.fromJson(_json['includeDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          lowercaseDetails: _json.containsKey('lowercaseDetails')
              ? FilterLowercaseDetails.fromJson(_json['lowercaseDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? FilterParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          searchAndReplaceDetails: _json.containsKey('searchAndReplaceDetails')
              ? FilterSearchAndReplaceDetails.fromJson(
                  _json['searchAndReplaceDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          uppercaseDetails: _json.containsKey('uppercaseDetails')
              ? FilterUppercaseDetails.fromJson(_json['uppercaseDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (advancedDetails != null) 'advancedDetails': advancedDetails!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (excludeDetails != null) 'excludeDetails': excludeDetails!,
        if (id != null) 'id': id!,
        if (includeDetails != null) 'includeDetails': includeDetails!,
        if (kind != null) 'kind': kind!,
        if (lowercaseDetails != null) 'lowercaseDetails': lowercaseDetails!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (searchAndReplaceDetails != null)
          'searchAndReplaceDetails': searchAndReplaceDetails!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (uppercaseDetails != null) 'uppercaseDetails': uppercaseDetails!,
      };
}

/// JSON template for an Analytics filter expression.
class FilterExpression {
  /// Determines if the filter is case sensitive.
  core.bool? caseSensitive;

  /// Filter expression value
  core.String? expressionValue;

  /// Field to filter.
  ///
  /// Possible values:
  /// - Content and Traffic
  /// - PAGE_REQUEST_URI,
  /// - PAGE_HOSTNAME,
  /// - PAGE_TITLE,
  /// - REFERRAL,
  /// - COST_DATA_URI (Campaign target URL),
  /// - HIT_TYPE,
  /// - INTERNAL_SEARCH_TERM,
  /// - INTERNAL_SEARCH_TYPE,
  /// - SOURCE_PROPERTY_TRACKING_ID,
  /// - Campaign or AdGroup
  /// - CAMPAIGN_SOURCE,
  /// - CAMPAIGN_MEDIUM,
  /// - CAMPAIGN_NAME,
  /// - CAMPAIGN_AD_GROUP,
  /// - CAMPAIGN_TERM,
  /// - CAMPAIGN_CONTENT,
  /// - CAMPAIGN_CODE,
  /// - CAMPAIGN_REFERRAL_PATH,
  /// - E-Commerce
  /// - TRANSACTION_COUNTRY,
  /// - TRANSACTION_REGION,
  /// - TRANSACTION_CITY,
  /// - TRANSACTION_AFFILIATION (Store or order location),
  /// - ITEM_NAME,
  /// - ITEM_CODE,
  /// - ITEM_VARIATION,
  /// - TRANSACTION_ID,
  /// - TRANSACTION_CURRENCY_CODE,
  /// - PRODUCT_ACTION_TYPE,
  /// - Audience/Users
  /// - BROWSER,
  /// - BROWSER_VERSION,
  /// - BROWSER_SIZE,
  /// - PLATFORM,
  /// - PLATFORM_VERSION,
  /// - LANGUAGE,
  /// - SCREEN_RESOLUTION,
  /// - SCREEN_COLORS,
  /// - JAVA_ENABLED (Boolean Field),
  /// - FLASH_VERSION,
  /// - GEO_SPEED (Connection speed),
  /// - VISITOR_TYPE,
  /// - GEO_ORGANIZATION (ISP organization),
  /// - GEO_DOMAIN,
  /// - GEO_IP_ADDRESS,
  /// - GEO_IP_VERSION,
  /// - Location
  /// - GEO_COUNTRY,
  /// - GEO_REGION,
  /// - GEO_CITY,
  /// - Event
  /// - EVENT_CATEGORY,
  /// - EVENT_ACTION,
  /// - EVENT_LABEL,
  /// - Other
  /// - CUSTOM_FIELD_1,
  /// - CUSTOM_FIELD_2,
  /// - USER_DEFINED_VALUE,
  /// - Application
  /// - APP_ID,
  /// - APP_INSTALLER_ID,
  /// - APP_NAME,
  /// - APP_VERSION,
  /// - SCREEN,
  /// - IS_APP (Boolean Field),
  /// - IS_FATAL_EXCEPTION (Boolean Field),
  /// - EXCEPTION_DESCRIPTION,
  /// - Mobile device
  /// - IS_MOBILE (Boolean Field, Deprecated. Use DEVICE_CATEGORY=mobile),
  /// - IS_TABLET (Boolean Field, Deprecated. Use DEVICE_CATEGORY=tablet),
  /// - DEVICE_CATEGORY,
  /// - MOBILE_HAS_QWERTY_KEYBOARD (Boolean Field),
  /// - MOBILE_HAS_NFC_SUPPORT (Boolean Field),
  /// - MOBILE_HAS_CELLULAR_RADIO (Boolean Field),
  /// - MOBILE_HAS_WIFI_SUPPORT (Boolean Field),
  /// - MOBILE_BRAND_NAME,
  /// - MOBILE_MODEL_NAME,
  /// - MOBILE_MARKETING_NAME,
  /// - MOBILE_POINTING_METHOD,
  /// - Social
  /// - SOCIAL_NETWORK,
  /// - SOCIAL_ACTION,
  /// - SOCIAL_ACTION_TARGET,
  /// - Custom dimension
  /// - CUSTOM_DIMENSION (See accompanying field index),
  core.String? field;

  /// The Index of the custom dimension.
  ///
  /// Set only if the field is a is CUSTOM_DIMENSION.
  core.int? fieldIndex;

  /// Kind value for filter expression
  core.String? kind;

  /// Match type for this filter.
  ///
  /// Possible values are BEGINS_WITH, EQUAL, ENDS_WITH, CONTAINS, or MATCHES.
  /// GEO_DOMAIN, GEO_IP_ADDRESS, PAGE_REQUEST_URI, or PAGE_HOSTNAME filters can
  /// use any match type; all other filters must use MATCHES.
  core.String? matchType;

  FilterExpression({
    this.caseSensitive,
    this.expressionValue,
    this.field,
    this.fieldIndex,
    this.kind,
    this.matchType,
  });

  FilterExpression.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          expressionValue: _json.containsKey('expressionValue')
              ? _json['expressionValue'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          fieldIndex: _json.containsKey('fieldIndex')
              ? _json['fieldIndex'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (expressionValue != null) 'expressionValue': expressionValue!,
        if (field != null) 'field': field!,
        if (fieldIndex != null) 'fieldIndex': fieldIndex!,
        if (kind != null) 'kind': kind!,
        if (matchType != null) 'matchType': matchType!,
      };
}

/// JSON template for a profile filter link.
class FilterRef {
  /// Account ID to which this filter belongs.
  core.String? accountId;

  /// Link for this filter.
  core.String? href;

  /// Filter ID.
  core.String? id;

  /// Kind value for filter reference.
  core.String? kind;

  /// Name of this filter.
  core.String? name;

  FilterRef({
    this.accountId,
    this.href,
    this.id,
    this.kind,
    this.name,
  });

  FilterRef.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (href != null) 'href': href!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// A filter collection lists filters created by users in an Analytics account.
///
/// Each resource in the collection corresponds to a filter.
class Filters {
  /// A list of filters.
  core.List<Filter>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1,000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this filter collection.
  core.String? nextLink;

  /// Link to previous page for this filter collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Filters({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Filters.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

class GaDataColumnHeaders {
  /// Column Type.
  ///
  /// Either DIMENSION or METRIC.
  core.String? columnType;

  /// Data type.
  ///
  /// Dimension column headers have only STRING as the data type. Metric column
  /// headers have data types for metric values such as INTEGER, DOUBLE,
  /// CURRENCY etc.
  core.String? dataType;

  /// Column name.
  core.String? name;

  GaDataColumnHeaders({
    this.columnType,
    this.dataType,
    this.name,
  });

  GaDataColumnHeaders.fromJson(core.Map _json)
      : this(
          columnType: _json.containsKey('columnType')
              ? _json['columnType'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnType != null) 'columnType': columnType!,
        if (dataType != null) 'dataType': dataType!,
        if (name != null) 'name': name!,
      };
}

class GaDataDataTableCols {
  core.String? id;
  core.String? label;
  core.String? type;

  GaDataDataTableCols({
    this.id,
    this.label,
    this.type,
  });

  GaDataDataTableCols.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (label != null) 'label': label!,
        if (type != null) 'type': type!,
      };
}

class GaDataDataTableRowsC {
  core.String? v;

  GaDataDataTableRowsC({
    this.v,
  });

  GaDataDataTableRowsC.fromJson(core.Map _json)
      : this(
          v: _json.containsKey('v') ? _json['v'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (v != null) 'v': v!,
      };
}

class GaDataDataTableRows {
  core.List<GaDataDataTableRowsC>? c;

  GaDataDataTableRows({
    this.c,
  });

  GaDataDataTableRows.fromJson(core.Map _json)
      : this(
          c: _json.containsKey('c')
              ? (_json['c'] as core.List)
                  .map((value) => GaDataDataTableRowsC.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (c != null) 'c': c!,
      };
}

class GaDataDataTable {
  core.List<GaDataDataTableCols>? cols;
  core.List<GaDataDataTableRows>? rows;

  GaDataDataTable({
    this.cols,
    this.rows,
  });

  GaDataDataTable.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols')
              ? (_json['cols'] as core.List)
                  .map((value) => GaDataDataTableCols.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => GaDataDataTableRows.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (rows != null) 'rows': rows!,
      };
}

/// Information for the view (profile), for which the Analytics data was
/// requested.
class GaDataProfileInfo {
  /// Account ID to which this view (profile) belongs.
  core.String? accountId;

  /// Internal ID for the web property to which this view (profile) belongs.
  core.String? internalWebPropertyId;

  /// View (Profile) ID.
  core.String? profileId;

  /// View (Profile) name.
  core.String? profileName;

  /// Table ID for view (profile).
  core.String? tableId;

  /// Web Property ID to which this view (profile) belongs.
  core.String? webPropertyId;

  GaDataProfileInfo({
    this.accountId,
    this.internalWebPropertyId,
    this.profileId,
    this.profileName,
    this.tableId,
    this.webPropertyId,
  });

  GaDataProfileInfo.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          profileName: _json.containsKey('profileName')
              ? _json['profileName'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (profileId != null) 'profileId': profileId!,
        if (profileName != null) 'profileName': profileName!,
        if (tableId != null) 'tableId': tableId!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// Analytics data request query parameters.
class GaDataQuery {
  /// List of analytics dimensions.
  core.String? dimensions;

  /// End date.
  core.String? endDate;

  /// Comma-separated list of dimension or metric filters.
  core.String? filters;

  /// Unique table ID.
  core.String? ids;

  /// Maximum results per page.
  core.int? maxResults;

  /// List of analytics metrics.
  core.List<core.String>? metrics;

  /// Desired sampling level
  core.String? samplingLevel;

  /// Analytics advanced segment.
  core.String? segment;

  /// List of dimensions or metrics based on which Analytics data is sorted.
  core.List<core.String>? sort;

  /// Start date.
  core.String? startDate;

  /// Start index.
  core.int? startIndex;

  GaDataQuery({
    this.dimensions,
    this.endDate,
    this.filters,
    this.ids,
    this.maxResults,
    this.metrics,
    this.samplingLevel,
    this.segment,
    this.sort,
    this.startDate,
    this.startIndex,
  });

  GaDataQuery.fromJson(core.Map _json)
      : this(
          dimensions: _json.containsKey('dimensions')
              ? _json['dimensions'] as core.String
              : null,
          endDate: _json.containsKey('end-date')
              ? _json['end-date'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? _json['filters'] as core.String
              : null,
          ids: _json.containsKey('ids') ? _json['ids'] as core.String : null,
          maxResults: _json.containsKey('max-results')
              ? _json['max-results'] as core.int
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          samplingLevel: _json.containsKey('samplingLevel')
              ? _json['samplingLevel'] as core.String
              : null,
          segment: _json.containsKey('segment')
              ? _json['segment'] as core.String
              : null,
          sort: _json.containsKey('sort')
              ? (_json['sort'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          startDate: _json.containsKey('start-date')
              ? _json['start-date'] as core.String
              : null,
          startIndex: _json.containsKey('start-index')
              ? _json['start-index'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (endDate != null) 'end-date': endDate!,
        if (filters != null) 'filters': filters!,
        if (ids != null) 'ids': ids!,
        if (maxResults != null) 'max-results': maxResults!,
        if (metrics != null) 'metrics': metrics!,
        if (samplingLevel != null) 'samplingLevel': samplingLevel!,
        if (segment != null) 'segment': segment!,
        if (sort != null) 'sort': sort!,
        if (startDate != null) 'start-date': startDate!,
        if (startIndex != null) 'start-index': startIndex!,
      };
}

/// Analytics data for a given view (profile).
class GaData {
  /// Column headers that list dimension names followed by the metric names.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<GaDataColumnHeaders>? columnHeaders;

  /// Determines if Analytics data contains samples.
  core.bool? containsSampledData;

  /// The last refreshed time in seconds for Analytics data.
  core.String? dataLastRefreshed;
  GaDataDataTable? dataTable;

  /// Unique ID for this data response.
  core.String? id;

  /// The maximum number of rows the response can contain, regardless of the
  /// actual number of rows returned.
  ///
  /// Its value ranges from 1 to 10,000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Resource type.
  core.String? kind;

  /// Link to next page for this Analytics data query.
  core.String? nextLink;

  /// Link to previous page for this Analytics data query.
  core.String? previousLink;

  /// Information for the view (profile), for which the Analytics data was
  /// requested.
  GaDataProfileInfo? profileInfo;

  /// Analytics data request query parameters.
  GaDataQuery? query;

  /// Analytics data rows, where each row contains a list of dimension values
  /// followed by the metric values.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<core.List<core.String>>? rows;

  /// The number of samples used to calculate the result.
  core.String? sampleSize;

  /// Total size of the sample space from which the samples were selected.
  core.String? sampleSpace;

  /// Link to this page.
  core.String? selfLink;

  /// The total number of rows for the query, regardless of the number of rows
  /// in the response.
  core.int? totalResults;

  /// Total values for the requested metrics over all the results, not just the
  /// results returned in this response.
  ///
  /// The order of the metric totals is same as the metric order specified in
  /// the request.
  core.Map<core.String, core.String>? totalsForAllResults;

  GaData({
    this.columnHeaders,
    this.containsSampledData,
    this.dataLastRefreshed,
    this.dataTable,
    this.id,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.profileInfo,
    this.query,
    this.rows,
    this.sampleSize,
    this.sampleSpace,
    this.selfLink,
    this.totalResults,
    this.totalsForAllResults,
  });

  GaData.fromJson(core.Map _json)
      : this(
          columnHeaders: _json.containsKey('columnHeaders')
              ? (_json['columnHeaders'] as core.List)
                  .map((value) => GaDataColumnHeaders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containsSampledData: _json.containsKey('containsSampledData')
              ? _json['containsSampledData'] as core.bool
              : null,
          dataLastRefreshed: _json.containsKey('dataLastRefreshed')
              ? _json['dataLastRefreshed'] as core.String
              : null,
          dataTable: _json.containsKey('dataTable')
              ? GaDataDataTable.fromJson(
                  _json['dataTable'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          profileInfo: _json.containsKey('profileInfo')
              ? GaDataProfileInfo.fromJson(
                  _json['profileInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          query: _json.containsKey('query')
              ? GaDataQuery.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => (value as core.List)
                      .map((value) => value as core.String)
                      .toList())
                  .toList()
              : null,
          sampleSize: _json.containsKey('sampleSize')
              ? _json['sampleSize'] as core.String
              : null,
          sampleSpace: _json.containsKey('sampleSpace')
              ? _json['sampleSpace'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          totalsForAllResults: _json.containsKey('totalsForAllResults')
              ? (_json['totalsForAllResults']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnHeaders != null) 'columnHeaders': columnHeaders!,
        if (containsSampledData != null)
          'containsSampledData': containsSampledData!,
        if (dataLastRefreshed != null) 'dataLastRefreshed': dataLastRefreshed!,
        if (dataTable != null) 'dataTable': dataTable!,
        if (id != null) 'id': id!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (profileInfo != null) 'profileInfo': profileInfo!,
        if (query != null) 'query': query!,
        if (rows != null) 'rows': rows!,
        if (sampleSize != null) 'sampleSize': sampleSize!,
        if (sampleSpace != null) 'sampleSpace': sampleSpace!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (totalsForAllResults != null)
          'totalsForAllResults': totalsForAllResults!,
      };
}

class GoalEventDetailsEventConditions {
  /// Type of comparison.
  ///
  /// Possible values are LESS_THAN, GREATER_THAN or EQUAL.
  core.String? comparisonType;

  /// Value used for this comparison.
  core.String? comparisonValue;

  /// Expression used for this match.
  core.String? expression;

  /// Type of the match to be performed.
  ///
  /// Possible values are REGEXP, BEGINS_WITH, or EXACT.
  core.String? matchType;

  /// Type of this event condition.
  ///
  /// Possible values are CATEGORY, ACTION, LABEL, or VALUE.
  core.String? type;

  GoalEventDetailsEventConditions({
    this.comparisonType,
    this.comparisonValue,
    this.expression,
    this.matchType,
    this.type,
  });

  GoalEventDetailsEventConditions.fromJson(core.Map _json)
      : this(
          comparisonType: _json.containsKey('comparisonType')
              ? _json['comparisonType'] as core.String
              : null,
          comparisonValue: _json.containsKey('comparisonValue')
              ? _json['comparisonValue'] as core.String
              : null,
          expression: _json.containsKey('expression')
              ? _json['expression'] as core.String
              : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comparisonType != null) 'comparisonType': comparisonType!,
        if (comparisonValue != null) 'comparisonValue': comparisonValue!,
        if (expression != null) 'expression': expression!,
        if (matchType != null) 'matchType': matchType!,
        if (type != null) 'type': type!,
      };
}

/// Details for the goal of the type EVENT.
class GoalEventDetails {
  /// List of event conditions.
  core.List<GoalEventDetailsEventConditions>? eventConditions;

  /// Determines if the event value should be used as the value for this goal.
  core.bool? useEventValue;

  GoalEventDetails({
    this.eventConditions,
    this.useEventValue,
  });

  GoalEventDetails.fromJson(core.Map _json)
      : this(
          eventConditions: _json.containsKey('eventConditions')
              ? (_json['eventConditions'] as core.List)
                  .map((value) => GoalEventDetailsEventConditions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          useEventValue: _json.containsKey('useEventValue')
              ? _json['useEventValue'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventConditions != null) 'eventConditions': eventConditions!,
        if (useEventValue != null) 'useEventValue': useEventValue!,
      };
}

/// Parent link for a goal.
///
/// Points to the view (profile) to which this goal belongs.
class GoalParentLink {
  /// Link to the view (profile) to which this goal belongs.
  core.String? href;

  /// Value is "analytics#profile".
  core.String? type;

  GoalParentLink({
    this.href,
    this.type,
  });

  GoalParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

class GoalUrlDestinationDetailsSteps {
  /// Step name.
  core.String? name;

  /// Step number.
  core.int? number;

  /// URL for this step.
  core.String? url;

  GoalUrlDestinationDetailsSteps({
    this.name,
    this.number,
    this.url,
  });

  GoalUrlDestinationDetailsSteps.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          number:
              _json.containsKey('number') ? _json['number'] as core.int : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (number != null) 'number': number!,
        if (url != null) 'url': url!,
      };
}

/// Details for the goal of the type URL_DESTINATION.
class GoalUrlDestinationDetails {
  /// Determines if the goal URL must exactly match the capitalization of
  /// visited URLs.
  core.bool? caseSensitive;

  /// Determines if the first step in this goal is required.
  core.bool? firstStepRequired;

  /// Match type for the goal URL.
  ///
  /// Possible values are HEAD, EXACT, or REGEX.
  core.String? matchType;

  /// List of steps configured for this goal funnel.
  core.List<GoalUrlDestinationDetailsSteps>? steps;

  /// URL for this goal.
  core.String? url;

  GoalUrlDestinationDetails({
    this.caseSensitive,
    this.firstStepRequired,
    this.matchType,
    this.steps,
    this.url,
  });

  GoalUrlDestinationDetails.fromJson(core.Map _json)
      : this(
          caseSensitive: _json.containsKey('caseSensitive')
              ? _json['caseSensitive'] as core.bool
              : null,
          firstStepRequired: _json.containsKey('firstStepRequired')
              ? _json['firstStepRequired'] as core.bool
              : null,
          matchType: _json.containsKey('matchType')
              ? _json['matchType'] as core.String
              : null,
          steps: _json.containsKey('steps')
              ? (_json['steps'] as core.List)
                  .map((value) => GoalUrlDestinationDetailsSteps.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caseSensitive != null) 'caseSensitive': caseSensitive!,
        if (firstStepRequired != null) 'firstStepRequired': firstStepRequired!,
        if (matchType != null) 'matchType': matchType!,
        if (steps != null) 'steps': steps!,
        if (url != null) 'url': url!,
      };
}

/// Details for the goal of the type VISIT_NUM_PAGES.
class GoalVisitNumPagesDetails {
  /// Type of comparison.
  ///
  /// Possible values are LESS_THAN, GREATER_THAN, or EQUAL.
  core.String? comparisonType;

  /// Value used for this comparison.
  core.String? comparisonValue;

  GoalVisitNumPagesDetails({
    this.comparisonType,
    this.comparisonValue,
  });

  GoalVisitNumPagesDetails.fromJson(core.Map _json)
      : this(
          comparisonType: _json.containsKey('comparisonType')
              ? _json['comparisonType'] as core.String
              : null,
          comparisonValue: _json.containsKey('comparisonValue')
              ? _json['comparisonValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comparisonType != null) 'comparisonType': comparisonType!,
        if (comparisonValue != null) 'comparisonValue': comparisonValue!,
      };
}

/// Details for the goal of the type VISIT_TIME_ON_SITE.
class GoalVisitTimeOnSiteDetails {
  /// Type of comparison.
  ///
  /// Possible values are LESS_THAN or GREATER_THAN.
  core.String? comparisonType;

  /// Value used for this comparison.
  core.String? comparisonValue;

  GoalVisitTimeOnSiteDetails({
    this.comparisonType,
    this.comparisonValue,
  });

  GoalVisitTimeOnSiteDetails.fromJson(core.Map _json)
      : this(
          comparisonType: _json.containsKey('comparisonType')
              ? _json['comparisonType'] as core.String
              : null,
          comparisonValue: _json.containsKey('comparisonValue')
              ? _json['comparisonValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comparisonType != null) 'comparisonType': comparisonType!,
        if (comparisonValue != null) 'comparisonValue': comparisonValue!,
      };
}

/// JSON template for Analytics goal resource.
class Goal {
  /// Account ID to which this goal belongs.
  core.String? accountId;

  /// Determines whether this goal is active.
  core.bool? active;

  /// Time this goal was created.
  core.DateTime? created;

  /// Details for the goal of the type EVENT.
  GoalEventDetails? eventDetails;

  /// Goal ID.
  core.String? id;

  /// Internal ID for the web property to which this goal belongs.
  core.String? internalWebPropertyId;

  /// Resource type for an Analytics goal.
  core.String? kind;

  /// Goal name.
  core.String? name;

  /// Parent link for a goal.
  ///
  /// Points to the view (profile) to which this goal belongs.
  GoalParentLink? parentLink;

  /// View (Profile) ID to which this goal belongs.
  core.String? profileId;

  /// Link for this goal.
  core.String? selfLink;

  /// Goal type.
  ///
  /// Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE, VISIT_NUM_PAGES,
  /// AND EVENT.
  core.String? type;

  /// Time this goal was last modified.
  core.DateTime? updated;

  /// Details for the goal of the type URL_DESTINATION.
  GoalUrlDestinationDetails? urlDestinationDetails;

  /// Goal value.
  core.double? value;

  /// Details for the goal of the type VISIT_NUM_PAGES.
  GoalVisitNumPagesDetails? visitNumPagesDetails;

  /// Details for the goal of the type VISIT_TIME_ON_SITE.
  GoalVisitTimeOnSiteDetails? visitTimeOnSiteDetails;

  /// Web property ID to which this goal belongs.
  ///
  /// The web property ID is of the form UA-XXXXX-YY.
  core.String? webPropertyId;

  Goal({
    this.accountId,
    this.active,
    this.created,
    this.eventDetails,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.name,
    this.parentLink,
    this.profileId,
    this.selfLink,
    this.type,
    this.updated,
    this.urlDestinationDetails,
    this.value,
    this.visitNumPagesDetails,
    this.visitTimeOnSiteDetails,
    this.webPropertyId,
  });

  Goal.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          active:
              _json.containsKey('active') ? _json['active'] as core.bool : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          eventDetails: _json.containsKey('eventDetails')
              ? GoalEventDetails.fromJson(
                  _json['eventDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? GoalParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          urlDestinationDetails: _json.containsKey('urlDestinationDetails')
              ? GoalUrlDestinationDetails.fromJson(
                  _json['urlDestinationDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
          visitNumPagesDetails: _json.containsKey('visitNumPagesDetails')
              ? GoalVisitNumPagesDetails.fromJson(_json['visitNumPagesDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          visitTimeOnSiteDetails: _json.containsKey('visitTimeOnSiteDetails')
              ? GoalVisitTimeOnSiteDetails.fromJson(
                  _json['visitTimeOnSiteDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (active != null) 'active': active!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (eventDetails != null) 'eventDetails': eventDetails!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (profileId != null) 'profileId': profileId!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (urlDestinationDetails != null)
          'urlDestinationDetails': urlDestinationDetails!,
        if (value != null) 'value': value!,
        if (visitNumPagesDetails != null)
          'visitNumPagesDetails': visitNumPagesDetails!,
        if (visitTimeOnSiteDetails != null)
          'visitTimeOnSiteDetails': visitTimeOnSiteDetails!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// A goal collection lists Analytics goals to which the user has access.
///
/// Each view (profile) can have a set of goals. Each resource in the Goal
/// collection corresponds to a single Analytics goal.
class Goals {
  /// A list of goals.
  core.List<Goal>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this goal collection.
  core.String? nextLink;

  /// Link to previous page for this goal collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// resources in the result.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Goals({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Goals.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Goal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// JSON template for a hash Client Id request resource.
class HashClientIdRequest {
  core.String? clientId;
  core.String? kind;
  core.String? webPropertyId;

  HashClientIdRequest({
    this.clientId,
    this.kind,
    this.webPropertyId,
  });

  HashClientIdRequest.fromJson(core.Map _json)
      : this(
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (kind != null) 'kind': kind!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// JSON template for a hash Client Id response resource.
class HashClientIdResponse {
  core.String? clientId;
  core.String? hashedClientId;
  core.String? kind;
  core.String? webPropertyId;

  HashClientIdResponse({
    this.clientId,
    this.hashedClientId,
    this.kind,
    this.webPropertyId,
  });

  HashClientIdResponse.fromJson(core.Map _json)
      : this(
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          hashedClientId: _json.containsKey('hashedClientId')
              ? _json['hashedClientId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (hashedClientId != null) 'hashedClientId': hashedClientId!,
        if (kind != null) 'kind': kind!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// JSON template for an Analytics Remarketing Include Conditions.
class IncludeConditions {
  /// The look-back window lets you specify a time frame for evaluating the
  /// behavior that qualifies users for your audience.
  ///
  /// For example, if your filters include users from Central Asia, and
  /// Transactions Greater than 2, and you set the look-back window to 14 days,
  /// then any user from Central Asia whose cumulative transactions exceed 2
  /// during the last 14 days is added to the audience.
  core.int? daysToLookBack;

  /// Boolean indicating whether this segment is a smart list.
  ///
  /// https://support.google.com/analytics/answer/4628577
  core.bool? isSmartList;

  /// Resource type for include conditions.
  core.String? kind;

  /// Number of days (in the range 1 to 540) a user remains in the audience.
  core.int? membershipDurationDays;

  /// The segment condition that will cause a user to be added to an audience.
  core.String? segment;

  IncludeConditions({
    this.daysToLookBack,
    this.isSmartList,
    this.kind,
    this.membershipDurationDays,
    this.segment,
  });

  IncludeConditions.fromJson(core.Map _json)
      : this(
          daysToLookBack: _json.containsKey('daysToLookBack')
              ? _json['daysToLookBack'] as core.int
              : null,
          isSmartList: _json.containsKey('isSmartList')
              ? _json['isSmartList'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          membershipDurationDays: _json.containsKey('membershipDurationDays')
              ? _json['membershipDurationDays'] as core.int
              : null,
          segment: _json.containsKey('segment')
              ? _json['segment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysToLookBack != null) 'daysToLookBack': daysToLookBack!,
        if (isSmartList != null) 'isSmartList': isSmartList!,
        if (kind != null) 'kind': kind!,
        if (membershipDurationDays != null)
          'membershipDurationDays': membershipDurationDays!,
        if (segment != null) 'segment': segment!,
      };
}

/// JSON template for an Analytics Remarketing Audience Foreign Link.
class LinkedForeignAccount {
  /// Account ID to which this linked foreign account belongs.
  core.String? accountId;

  /// Boolean indicating whether this is eligible for search.
  core.bool? eligibleForSearch;

  /// Entity ad account link ID.
  core.String? id;

  /// Internal ID for the web property to which this linked foreign account
  /// belongs.
  core.String? internalWebPropertyId;

  /// Resource type for linked foreign account.
  core.String? kind;

  /// The foreign account ID.
  ///
  /// For example the an Google Ads `linkedAccountId` has the following format
  /// XXX-XXX-XXXX.
  core.String? linkedAccountId;

  /// Remarketing audience ID to which this linked foreign account belongs.
  core.String? remarketingAudienceId;

  /// The status of this foreign account link.
  core.String? status;

  /// The type of the foreign account.
  ///
  /// For example, `ADWORDS_LINKS`, `DBM_LINKS`, `MCC_LINKS` or `OPTIMIZE`.
  core.String? type;

  /// Web property ID of the form UA-XXXXX-YY to which this linked foreign
  /// account belongs.
  core.String? webPropertyId;

  LinkedForeignAccount({
    this.accountId,
    this.eligibleForSearch,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.linkedAccountId,
    this.remarketingAudienceId,
    this.status,
    this.type,
    this.webPropertyId,
  });

  LinkedForeignAccount.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          eligibleForSearch: _json.containsKey('eligibleForSearch')
              ? _json['eligibleForSearch'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          linkedAccountId: _json.containsKey('linkedAccountId')
              ? _json['linkedAccountId'] as core.String
              : null,
          remarketingAudienceId: _json.containsKey('remarketingAudienceId')
              ? _json['remarketingAudienceId'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (eligibleForSearch != null) 'eligibleForSearch': eligibleForSearch!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (linkedAccountId != null) 'linkedAccountId': linkedAccountId!,
        if (remarketingAudienceId != null)
          'remarketingAudienceId': remarketingAudienceId!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

class McfDataColumnHeaders {
  /// Column Type.
  ///
  /// Either DIMENSION or METRIC.
  core.String? columnType;

  /// Data type.
  ///
  /// Dimension and metric values data types such as INTEGER, DOUBLE, CURRENCY,
  /// MCF_SEQUENCE etc.
  core.String? dataType;

  /// Column name.
  core.String? name;

  McfDataColumnHeaders({
    this.columnType,
    this.dataType,
    this.name,
  });

  McfDataColumnHeaders.fromJson(core.Map _json)
      : this(
          columnType: _json.containsKey('columnType')
              ? _json['columnType'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnType != null) 'columnType': columnType!,
        if (dataType != null) 'dataType': dataType!,
        if (name != null) 'name': name!,
      };
}

/// Information for the view (profile), for which the Analytics data was
/// requested.
class McfDataProfileInfo {
  /// Account ID to which this view (profile) belongs.
  core.String? accountId;

  /// Internal ID for the web property to which this view (profile) belongs.
  core.String? internalWebPropertyId;

  /// View (Profile) ID.
  core.String? profileId;

  /// View (Profile) name.
  core.String? profileName;

  /// Table ID for view (profile).
  core.String? tableId;

  /// Web Property ID to which this view (profile) belongs.
  core.String? webPropertyId;

  McfDataProfileInfo({
    this.accountId,
    this.internalWebPropertyId,
    this.profileId,
    this.profileName,
    this.tableId,
    this.webPropertyId,
  });

  McfDataProfileInfo.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          profileName: _json.containsKey('profileName')
              ? _json['profileName'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (profileId != null) 'profileId': profileId!,
        if (profileName != null) 'profileName': profileName!,
        if (tableId != null) 'tableId': tableId!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// Analytics data request query parameters.
class McfDataQuery {
  /// List of analytics dimensions.
  core.String? dimensions;

  /// End date.
  core.String? endDate;

  /// Comma-separated list of dimension or metric filters.
  core.String? filters;

  /// Unique table ID.
  core.String? ids;

  /// Maximum results per page.
  core.int? maxResults;

  /// List of analytics metrics.
  core.List<core.String>? metrics;

  /// Desired sampling level
  core.String? samplingLevel;

  /// Analytics advanced segment.
  core.String? segment;

  /// List of dimensions or metrics based on which Analytics data is sorted.
  core.List<core.String>? sort;

  /// Start date.
  core.String? startDate;

  /// Start index.
  core.int? startIndex;

  McfDataQuery({
    this.dimensions,
    this.endDate,
    this.filters,
    this.ids,
    this.maxResults,
    this.metrics,
    this.samplingLevel,
    this.segment,
    this.sort,
    this.startDate,
    this.startIndex,
  });

  McfDataQuery.fromJson(core.Map _json)
      : this(
          dimensions: _json.containsKey('dimensions')
              ? _json['dimensions'] as core.String
              : null,
          endDate: _json.containsKey('end-date')
              ? _json['end-date'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? _json['filters'] as core.String
              : null,
          ids: _json.containsKey('ids') ? _json['ids'] as core.String : null,
          maxResults: _json.containsKey('max-results')
              ? _json['max-results'] as core.int
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          samplingLevel: _json.containsKey('samplingLevel')
              ? _json['samplingLevel'] as core.String
              : null,
          segment: _json.containsKey('segment')
              ? _json['segment'] as core.String
              : null,
          sort: _json.containsKey('sort')
              ? (_json['sort'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          startDate: _json.containsKey('start-date')
              ? _json['start-date'] as core.String
              : null,
          startIndex: _json.containsKey('start-index')
              ? _json['start-index'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (endDate != null) 'end-date': endDate!,
        if (filters != null) 'filters': filters!,
        if (ids != null) 'ids': ids!,
        if (maxResults != null) 'max-results': maxResults!,
        if (metrics != null) 'metrics': metrics!,
        if (samplingLevel != null) 'samplingLevel': samplingLevel!,
        if (segment != null) 'segment': segment!,
        if (sort != null) 'sort': sort!,
        if (startDate != null) 'start-date': startDate!,
        if (startIndex != null) 'start-index': startIndex!,
      };
}

class McfDataRowsConversionPathValue {
  /// Type of an interaction on conversion path.
  ///
  /// Such as CLICK, IMPRESSION etc.
  core.String? interactionType;

  /// Node value of an interaction on conversion path.
  ///
  /// Such as source, medium etc.
  core.String? nodeValue;

  McfDataRowsConversionPathValue({
    this.interactionType,
    this.nodeValue,
  });

  McfDataRowsConversionPathValue.fromJson(core.Map _json)
      : this(
          interactionType: _json.containsKey('interactionType')
              ? _json['interactionType'] as core.String
              : null,
          nodeValue: _json.containsKey('nodeValue')
              ? _json['nodeValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (interactionType != null) 'interactionType': interactionType!,
        if (nodeValue != null) 'nodeValue': nodeValue!,
      };
}

/// A union object representing a dimension or metric value.
///
/// Only one of "primitiveValue" or "conversionPathValue" attribute will be
/// populated.
class McfDataRows {
  /// A conversion path dimension value, containing a list of interactions with
  /// their attributes.
  core.List<McfDataRowsConversionPathValue>? conversionPathValue;

  /// A primitive dimension value.
  ///
  /// A primitive metric value.
  core.String? primitiveValue;

  McfDataRows({
    this.conversionPathValue,
    this.primitiveValue,
  });

  McfDataRows.fromJson(core.Map _json)
      : this(
          conversionPathValue: _json.containsKey('conversionPathValue')
              ? (_json['conversionPathValue'] as core.List)
                  .map((value) => McfDataRowsConversionPathValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primitiveValue: _json.containsKey('primitiveValue')
              ? _json['primitiveValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionPathValue != null)
          'conversionPathValue': conversionPathValue!,
        if (primitiveValue != null) 'primitiveValue': primitiveValue!,
      };
}

/// Multi-Channel Funnels data for a given view (profile).
class McfData {
  /// Column headers that list dimension names followed by the metric names.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<McfDataColumnHeaders>? columnHeaders;

  /// Determines if the Analytics data contains sampled data.
  core.bool? containsSampledData;

  /// Unique ID for this data response.
  core.String? id;

  /// The maximum number of rows the response can contain, regardless of the
  /// actual number of rows returned.
  ///
  /// Its value ranges from 1 to 10,000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Resource type.
  core.String? kind;

  /// Link to next page for this Analytics data query.
  core.String? nextLink;

  /// Link to previous page for this Analytics data query.
  core.String? previousLink;

  /// Information for the view (profile), for which the Analytics data was
  /// requested.
  McfDataProfileInfo? profileInfo;

  /// Analytics data request query parameters.
  McfDataQuery? query;

  /// Analytics data rows, where each row contains a list of dimension values
  /// followed by the metric values.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<core.List<McfDataRows>>? rows;

  /// The number of samples used to calculate the result.
  core.String? sampleSize;

  /// Total size of the sample space from which the samples were selected.
  core.String? sampleSpace;

  /// Link to this page.
  core.String? selfLink;

  /// The total number of rows for the query, regardless of the number of rows
  /// in the response.
  core.int? totalResults;

  /// Total values for the requested metrics over all the results, not just the
  /// results returned in this response.
  ///
  /// The order of the metric totals is same as the metric order specified in
  /// the request.
  core.Map<core.String, core.String>? totalsForAllResults;

  McfData({
    this.columnHeaders,
    this.containsSampledData,
    this.id,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.profileInfo,
    this.query,
    this.rows,
    this.sampleSize,
    this.sampleSpace,
    this.selfLink,
    this.totalResults,
    this.totalsForAllResults,
  });

  McfData.fromJson(core.Map _json)
      : this(
          columnHeaders: _json.containsKey('columnHeaders')
              ? (_json['columnHeaders'] as core.List)
                  .map((value) => McfDataColumnHeaders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          containsSampledData: _json.containsKey('containsSampledData')
              ? _json['containsSampledData'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          profileInfo: _json.containsKey('profileInfo')
              ? McfDataProfileInfo.fromJson(
                  _json['profileInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          query: _json.containsKey('query')
              ? McfDataQuery.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => (value as core.List)
                      .map((value) => McfDataRows.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList())
                  .toList()
              : null,
          sampleSize: _json.containsKey('sampleSize')
              ? _json['sampleSize'] as core.String
              : null,
          sampleSpace: _json.containsKey('sampleSpace')
              ? _json['sampleSpace'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          totalsForAllResults: _json.containsKey('totalsForAllResults')
              ? (_json['totalsForAllResults']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnHeaders != null) 'columnHeaders': columnHeaders!,
        if (containsSampledData != null)
          'containsSampledData': containsSampledData!,
        if (id != null) 'id': id!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (profileInfo != null) 'profileInfo': profileInfo!,
        if (query != null) 'query': query!,
        if (rows != null) 'rows': rows!,
        if (sampleSize != null) 'sampleSize': sampleSize!,
        if (sampleSpace != null) 'sampleSpace': sampleSpace!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (totalsForAllResults != null)
          'totalsForAllResults': totalsForAllResults!,
      };
}

/// Child link for this view (profile).
///
/// Points to the list of goals for this view (profile).
class ProfileChildLink {
  /// Link to the list of goals for this view (profile).
  core.String? href;

  /// Value is "analytics#goals".
  core.String? type;

  ProfileChildLink({
    this.href,
    this.type,
  });

  ProfileChildLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Parent link for this view (profile).
///
/// Points to the web property to which this view (profile) belongs.
class ProfileParentLink {
  /// Link to the web property to which this view (profile) belongs.
  core.String? href;

  /// Value is "analytics#webproperty".
  core.String? type;

  ProfileParentLink({
    this.href,
    this.type,
  });

  ProfileParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Permissions the user has for this view (profile).
class ProfilePermissions {
  /// All the permissions that the user has for this view (profile).
  ///
  /// These include any implied permissions (e.g., EDIT implies VIEW) or
  /// inherited permissions from the parent web property.
  core.List<core.String>? effective;

  ProfilePermissions({
    this.effective,
  });

  ProfilePermissions.fromJson(core.Map _json)
      : this(
          effective: _json.containsKey('effective')
              ? (_json['effective'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effective != null) 'effective': effective!,
      };
}

/// JSON template for an Analytics view (profile).
class Profile {
  /// Account ID to which this view (profile) belongs.
  core.String? accountId;

  /// Indicates whether bot filtering is enabled for this view (profile).
  core.bool? botFilteringEnabled;

  /// Child link for this view (profile).
  ///
  /// Points to the list of goals for this view (profile).
  ProfileChildLink? childLink;

  /// Time this view (profile) was created.
  core.DateTime? created;

  /// The currency type associated with this view (profile), defaults to USD.
  ///
  /// The supported values are:
  /// USD, JPY, EUR, GBP, AUD, KRW, BRL, CNY, DKK, RUB, SEK, NOK, PLN, TRY, TWD,
  /// HKD, THB, IDR, ARS, MXN, VND, PHP, INR, CHF, CAD, CZK, NZD, HUF, BGN, LTL,
  /// ZAR, UAH, AED, BOB, CLP, COP, EGP, HRK, ILS, MAD, MYR, PEN, PKR, RON, RSD,
  /// SAR, SGD, VEF, LVL
  core.String? currency;

  /// Default page for this view (profile).
  core.String? defaultPage;

  /// Indicates whether ecommerce tracking is enabled for this view (profile).
  core.bool? eCommerceTracking;

  /// Indicates whether enhanced ecommerce tracking is enabled for this view
  /// (profile).
  ///
  /// This property can only be enabled if ecommerce tracking is enabled.
  core.bool? enhancedECommerceTracking;

  /// The query parameters that are excluded from this view (profile).
  core.String? excludeQueryParameters;

  /// View (Profile) ID.
  core.String? id;

  /// Internal ID for the web property to which this view (profile) belongs.
  core.String? internalWebPropertyId;

  /// Resource type for Analytics view (profile).
  core.String? kind;

  /// Name of this view (profile).
  core.String? name;

  /// Parent link for this view (profile).
  ///
  /// Points to the web property to which this view (profile) belongs.
  ProfileParentLink? parentLink;

  /// Permissions the user has for this view (profile).
  ProfilePermissions? permissions;

  /// Link for this view (profile).
  core.String? selfLink;

  /// Site search category parameters for this view (profile).
  core.String? siteSearchCategoryParameters;

  /// The site search query parameters for this view (profile).
  core.String? siteSearchQueryParameters;

  /// Indicates whether this view (profile) is starred or not.
  core.bool? starred;

  /// Whether or not Analytics will strip search category parameters from the
  /// URLs in your reports.
  core.bool? stripSiteSearchCategoryParameters;

  /// Whether or not Analytics will strip search query parameters from the URLs
  /// in your reports.
  core.bool? stripSiteSearchQueryParameters;

  /// Time zone for which this view (profile) has been configured.
  ///
  /// Time zones are identified by strings from the TZ database.
  core.String? timezone;

  /// View (Profile) type.
  ///
  /// Supported types: WEB or APP.
  core.String? type;

  /// Time this view (profile) was last modified.
  core.DateTime? updated;

  /// Web property ID of the form UA-XXXXX-YY to which this view (profile)
  /// belongs.
  core.String? webPropertyId;

  /// Website URL for this view (profile).
  core.String? websiteUrl;

  Profile({
    this.accountId,
    this.botFilteringEnabled,
    this.childLink,
    this.created,
    this.currency,
    this.defaultPage,
    this.eCommerceTracking,
    this.enhancedECommerceTracking,
    this.excludeQueryParameters,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.name,
    this.parentLink,
    this.permissions,
    this.selfLink,
    this.siteSearchCategoryParameters,
    this.siteSearchQueryParameters,
    this.starred,
    this.stripSiteSearchCategoryParameters,
    this.stripSiteSearchQueryParameters,
    this.timezone,
    this.type,
    this.updated,
    this.webPropertyId,
    this.websiteUrl,
  });

  Profile.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          botFilteringEnabled: _json.containsKey('botFilteringEnabled')
              ? _json['botFilteringEnabled'] as core.bool
              : null,
          childLink: _json.containsKey('childLink')
              ? ProfileChildLink.fromJson(
                  _json['childLink'] as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          currency: _json.containsKey('currency')
              ? _json['currency'] as core.String
              : null,
          defaultPage: _json.containsKey('defaultPage')
              ? _json['defaultPage'] as core.String
              : null,
          eCommerceTracking: _json.containsKey('eCommerceTracking')
              ? _json['eCommerceTracking'] as core.bool
              : null,
          enhancedECommerceTracking:
              _json.containsKey('enhancedECommerceTracking')
                  ? _json['enhancedECommerceTracking'] as core.bool
                  : null,
          excludeQueryParameters: _json.containsKey('excludeQueryParameters')
              ? _json['excludeQueryParameters'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? ProfileParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          permissions: _json.containsKey('permissions')
              ? ProfilePermissions.fromJson(
                  _json['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          siteSearchCategoryParameters:
              _json.containsKey('siteSearchCategoryParameters')
                  ? _json['siteSearchCategoryParameters'] as core.String
                  : null,
          siteSearchQueryParameters:
              _json.containsKey('siteSearchQueryParameters')
                  ? _json['siteSearchQueryParameters'] as core.String
                  : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          stripSiteSearchCategoryParameters:
              _json.containsKey('stripSiteSearchCategoryParameters')
                  ? _json['stripSiteSearchCategoryParameters'] as core.bool
                  : null,
          stripSiteSearchQueryParameters:
              _json.containsKey('stripSiteSearchQueryParameters')
                  ? _json['stripSiteSearchQueryParameters'] as core.bool
                  : null,
          timezone: _json.containsKey('timezone')
              ? _json['timezone'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
          websiteUrl: _json.containsKey('websiteUrl')
              ? _json['websiteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (botFilteringEnabled != null)
          'botFilteringEnabled': botFilteringEnabled!,
        if (childLink != null) 'childLink': childLink!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (currency != null) 'currency': currency!,
        if (defaultPage != null) 'defaultPage': defaultPage!,
        if (eCommerceTracking != null) 'eCommerceTracking': eCommerceTracking!,
        if (enhancedECommerceTracking != null)
          'enhancedECommerceTracking': enhancedECommerceTracking!,
        if (excludeQueryParameters != null)
          'excludeQueryParameters': excludeQueryParameters!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (permissions != null) 'permissions': permissions!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (siteSearchCategoryParameters != null)
          'siteSearchCategoryParameters': siteSearchCategoryParameters!,
        if (siteSearchQueryParameters != null)
          'siteSearchQueryParameters': siteSearchQueryParameters!,
        if (starred != null) 'starred': starred!,
        if (stripSiteSearchCategoryParameters != null)
          'stripSiteSearchCategoryParameters':
              stripSiteSearchCategoryParameters!,
        if (stripSiteSearchQueryParameters != null)
          'stripSiteSearchQueryParameters': stripSiteSearchQueryParameters!,
        if (timezone != null) 'timezone': timezone!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
      };
}

/// JSON template for an Analytics profile filter link.
class ProfileFilterLink {
  /// Filter for this link.
  FilterRef? filterRef;

  /// Profile filter link ID.
  core.String? id;

  /// Resource type for Analytics filter.
  core.String? kind;

  /// View (Profile) for this link.
  ProfileRef? profileRef;

  /// The rank of this profile filter link relative to the other filters linked
  /// to the same profile.
  /// For readonly (i.e., list and get) operations, the rank always starts at 1.
  /// For write (i.e., create, update, or delete) operations, you may specify a
  /// value between 0 and 255 inclusively, \[0, 255\].
  ///
  /// In order to insert a link at the end of the list, either don't specify a
  /// rank or set a rank to a number greater than the largest rank in the list.
  /// In order to insert a link to the beginning of the list specify a rank that
  /// is less than or equal to 1. The new link will move all existing filters
  /// with the same or lower rank down the list. After the link is
  /// inserted/updated/deleted all profile filter links will be renumbered
  /// starting at 1.
  core.int? rank;

  /// Link for this profile filter link.
  core.String? selfLink;

  ProfileFilterLink({
    this.filterRef,
    this.id,
    this.kind,
    this.profileRef,
    this.rank,
    this.selfLink,
  });

  ProfileFilterLink.fromJson(core.Map _json)
      : this(
          filterRef: _json.containsKey('filterRef')
              ? FilterRef.fromJson(
                  _json['filterRef'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profileRef: _json.containsKey('profileRef')
              ? ProfileRef.fromJson(
                  _json['profileRef'] as core.Map<core.String, core.dynamic>)
              : null,
          rank: _json.containsKey('rank') ? _json['rank'] as core.int : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterRef != null) 'filterRef': filterRef!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (profileRef != null) 'profileRef': profileRef!,
        if (rank != null) 'rank': rank!,
        if (selfLink != null) 'selfLink': selfLink!,
      };
}

/// A profile filter link collection lists profile filter links between profiles
/// and filters.
///
/// Each resource in the collection corresponds to a profile filter link.
class ProfileFilterLinks {
  /// A list of profile filter links.
  core.List<ProfileFilterLink>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1,000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this profile filter link collection.
  core.String? nextLink;

  /// Link to previous page for this profile filter link collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  ProfileFilterLinks({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  ProfileFilterLinks.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => ProfileFilterLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// JSON template for a linked view (profile).
class ProfileRef {
  /// Account ID to which this view (profile) belongs.
  core.String? accountId;

  /// Link for this view (profile).
  core.String? href;

  /// View (Profile) ID.
  core.String? id;

  /// Internal ID for the web property to which this view (profile) belongs.
  core.String? internalWebPropertyId;

  /// Analytics view (profile) reference.
  core.String? kind;

  /// Name of this view (profile).
  core.String? name;

  /// Web property ID of the form UA-XXXXX-YY to which this view (profile)
  /// belongs.
  core.String? webPropertyId;

  ProfileRef({
    this.accountId,
    this.href,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.name,
    this.webPropertyId,
  });

  ProfileRef.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (href != null) 'href': href!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// JSON template for an Analytics ProfileSummary.
///
/// ProfileSummary returns basic information (i.e., summary) for a profile.
class ProfileSummary {
  /// View (profile) ID.
  core.String? id;

  /// Resource type for Analytics ProfileSummary.
  core.String? kind;

  /// View (profile) name.
  core.String? name;

  /// Indicates whether this view (profile) is starred or not.
  core.bool? starred;

  /// View (Profile) type.
  ///
  /// Supported types: WEB or APP.
  core.String? type;

  ProfileSummary({
    this.id,
    this.kind,
    this.name,
    this.starred,
    this.type,
  });

  ProfileSummary.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (starred != null) 'starred': starred!,
        if (type != null) 'type': type!,
      };
}

/// A view (profile) collection lists Analytics views (profiles) to which the
/// user has access.
///
/// Each resource in the collection corresponds to a single Analytics view
/// (profile).
class Profiles {
  /// A list of views (profiles).
  core.List<Profile>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this view (profile) collection.
  core.String? nextLink;

  /// Link to previous page for this view (profile) collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Profiles({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Profiles.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Profile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

class RealtimeDataColumnHeaders {
  /// Column Type.
  ///
  /// Either DIMENSION or METRIC.
  core.String? columnType;

  /// Data type.
  ///
  /// Dimension column headers have only STRING as the data type. Metric column
  /// headers have data types for metric values such as INTEGER, DOUBLE,
  /// CURRENCY etc.
  core.String? dataType;

  /// Column name.
  core.String? name;

  RealtimeDataColumnHeaders({
    this.columnType,
    this.dataType,
    this.name,
  });

  RealtimeDataColumnHeaders.fromJson(core.Map _json)
      : this(
          columnType: _json.containsKey('columnType')
              ? _json['columnType'] as core.String
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnType != null) 'columnType': columnType!,
        if (dataType != null) 'dataType': dataType!,
        if (name != null) 'name': name!,
      };
}

/// Information for the view (profile), for which the real time data was
/// requested.
class RealtimeDataProfileInfo {
  /// Account ID to which this view (profile) belongs.
  core.String? accountId;

  /// Internal ID for the web property to which this view (profile) belongs.
  core.String? internalWebPropertyId;

  /// View (Profile) ID.
  core.String? profileId;

  /// View (Profile) name.
  core.String? profileName;

  /// Table ID for view (profile).
  core.String? tableId;

  /// Web Property ID to which this view (profile) belongs.
  core.String? webPropertyId;

  RealtimeDataProfileInfo({
    this.accountId,
    this.internalWebPropertyId,
    this.profileId,
    this.profileName,
    this.tableId,
    this.webPropertyId,
  });

  RealtimeDataProfileInfo.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          profileName: _json.containsKey('profileName')
              ? _json['profileName'] as core.String
              : null,
          tableId: _json.containsKey('tableId')
              ? _json['tableId'] as core.String
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (profileId != null) 'profileId': profileId!,
        if (profileName != null) 'profileName': profileName!,
        if (tableId != null) 'tableId': tableId!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// Real time data request query parameters.
class RealtimeDataQuery {
  /// List of real time dimensions.
  core.String? dimensions;

  /// Comma-separated list of dimension or metric filters.
  core.String? filters;

  /// Unique table ID.
  core.String? ids;

  /// Maximum results per page.
  core.int? maxResults;

  /// List of real time metrics.
  core.List<core.String>? metrics;

  /// List of dimensions or metrics based on which real time data is sorted.
  core.List<core.String>? sort;

  RealtimeDataQuery({
    this.dimensions,
    this.filters,
    this.ids,
    this.maxResults,
    this.metrics,
    this.sort,
  });

  RealtimeDataQuery.fromJson(core.Map _json)
      : this(
          dimensions: _json.containsKey('dimensions')
              ? _json['dimensions'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? _json['filters'] as core.String
              : null,
          ids: _json.containsKey('ids') ? _json['ids'] as core.String : null,
          maxResults: _json.containsKey('max-results')
              ? _json['max-results'] as core.int
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sort: _json.containsKey('sort')
              ? (_json['sort'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimensions != null) 'dimensions': dimensions!,
        if (filters != null) 'filters': filters!,
        if (ids != null) 'ids': ids!,
        if (maxResults != null) 'max-results': maxResults!,
        if (metrics != null) 'metrics': metrics!,
        if (sort != null) 'sort': sort!,
      };
}

/// Real time data for a given view (profile).
class RealtimeData {
  /// Column headers that list dimension names followed by the metric names.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<RealtimeDataColumnHeaders>? columnHeaders;

  /// Unique ID for this data response.
  core.String? id;

  /// Resource type.
  core.String? kind;

  /// Information for the view (profile), for which the real time data was
  /// requested.
  RealtimeDataProfileInfo? profileInfo;

  /// Real time data request query parameters.
  RealtimeDataQuery? query;

  /// Real time data rows, where each row contains a list of dimension values
  /// followed by the metric values.
  ///
  /// The order of dimensions and metrics is same as specified in the request.
  core.List<core.List<core.String>>? rows;

  /// Link to this page.
  core.String? selfLink;

  /// The total number of rows for the query, regardless of the number of rows
  /// in the response.
  core.int? totalResults;

  /// Total values for the requested metrics over all the results, not just the
  /// results returned in this response.
  ///
  /// The order of the metric totals is same as the metric order specified in
  /// the request.
  core.Map<core.String, core.String>? totalsForAllResults;

  RealtimeData({
    this.columnHeaders,
    this.id,
    this.kind,
    this.profileInfo,
    this.query,
    this.rows,
    this.selfLink,
    this.totalResults,
    this.totalsForAllResults,
  });

  RealtimeData.fromJson(core.Map _json)
      : this(
          columnHeaders: _json.containsKey('columnHeaders')
              ? (_json['columnHeaders'] as core.List)
                  .map((value) => RealtimeDataColumnHeaders.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          profileInfo: _json.containsKey('profileInfo')
              ? RealtimeDataProfileInfo.fromJson(
                  _json['profileInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          query: _json.containsKey('query')
              ? RealtimeDataQuery.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => (value as core.List)
                      .map((value) => value as core.String)
                      .toList())
                  .toList()
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          totalsForAllResults: _json.containsKey('totalsForAllResults')
              ? (_json['totalsForAllResults']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnHeaders != null) 'columnHeaders': columnHeaders!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (profileInfo != null) 'profileInfo': profileInfo!,
        if (query != null) 'query': query!,
        if (rows != null) 'rows': rows!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (totalsForAllResults != null)
          'totalsForAllResults': totalsForAllResults!,
      };
}

/// The simple audience definition that will cause a user to be added to an
/// audience.
class RemarketingAudienceAudienceDefinition {
  /// Defines the conditions to include users to the audience.
  IncludeConditions? includeConditions;

  RemarketingAudienceAudienceDefinition({
    this.includeConditions,
  });

  RemarketingAudienceAudienceDefinition.fromJson(core.Map _json)
      : this(
          includeConditions: _json.containsKey('includeConditions')
              ? IncludeConditions.fromJson(_json['includeConditions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeConditions != null) 'includeConditions': includeConditions!,
      };
}

/// Defines the conditions to exclude users from the audience.
class RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions {
  /// Whether to make the exclusion TEMPORARY or PERMANENT.
  core.String? exclusionDuration;

  /// The segment condition that will cause a user to be removed from an
  /// audience.
  core.String? segment;

  RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions({
    this.exclusionDuration,
    this.segment,
  });

  RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions.fromJson(
      core.Map _json)
      : this(
          exclusionDuration: _json.containsKey('exclusionDuration')
              ? _json['exclusionDuration'] as core.String
              : null,
          segment: _json.containsKey('segment')
              ? _json['segment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclusionDuration != null) 'exclusionDuration': exclusionDuration!,
        if (segment != null) 'segment': segment!,
      };
}

/// A state based audience definition that will cause a user to be added or
/// removed from an audience.
class RemarketingAudienceStateBasedAudienceDefinition {
  /// Defines the conditions to exclude users from the audience.
  RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions?
      excludeConditions;

  /// Defines the conditions to include users to the audience.
  IncludeConditions? includeConditions;

  RemarketingAudienceStateBasedAudienceDefinition({
    this.excludeConditions,
    this.includeConditions,
  });

  RemarketingAudienceStateBasedAudienceDefinition.fromJson(core.Map _json)
      : this(
          excludeConditions: _json.containsKey('excludeConditions')
              ? RemarketingAudienceStateBasedAudienceDefinitionExcludeConditions
                  .fromJson(_json['excludeConditions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          includeConditions: _json.containsKey('includeConditions')
              ? IncludeConditions.fromJson(_json['includeConditions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeConditions != null) 'excludeConditions': excludeConditions!,
        if (includeConditions != null) 'includeConditions': includeConditions!,
      };
}

/// JSON template for an Analytics remarketing audience.
class RemarketingAudience {
  /// Account ID to which this remarketing audience belongs.
  core.String? accountId;

  /// The simple audience definition that will cause a user to be added to an
  /// audience.
  RemarketingAudienceAudienceDefinition? audienceDefinition;

  /// The type of audience, either SIMPLE or STATE_BASED.
  core.String? audienceType;

  /// Time this remarketing audience was created.
  core.DateTime? created;

  /// The description of this remarketing audience.
  core.String? description;

  /// Remarketing Audience ID.
  core.String? id;

  /// Internal ID for the web property to which this remarketing audience
  /// belongs.
  core.String? internalWebPropertyId;

  /// Collection type.
  core.String? kind;

  /// The linked ad accounts associated with this remarketing audience.
  ///
  /// A remarketing audience can have only one linkedAdAccount currently.
  core.List<LinkedForeignAccount>? linkedAdAccounts;

  /// The views (profiles) that this remarketing audience is linked to.
  core.List<core.String>? linkedViews;

  /// The name of this remarketing audience.
  core.String? name;

  /// A state based audience definition that will cause a user to be added or
  /// removed from an audience.
  RemarketingAudienceStateBasedAudienceDefinition? stateBasedAudienceDefinition;

  /// Time this remarketing audience was last modified.
  core.DateTime? updated;

  /// Web property ID of the form UA-XXXXX-YY to which this remarketing audience
  /// belongs.
  core.String? webPropertyId;

  RemarketingAudience({
    this.accountId,
    this.audienceDefinition,
    this.audienceType,
    this.created,
    this.description,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.linkedAdAccounts,
    this.linkedViews,
    this.name,
    this.stateBasedAudienceDefinition,
    this.updated,
    this.webPropertyId,
  });

  RemarketingAudience.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          audienceDefinition: _json.containsKey('audienceDefinition')
              ? RemarketingAudienceAudienceDefinition.fromJson(
                  _json['audienceDefinition']
                      as core.Map<core.String, core.dynamic>)
              : null,
          audienceType: _json.containsKey('audienceType')
              ? _json['audienceType'] as core.String
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          linkedAdAccounts: _json.containsKey('linkedAdAccounts')
              ? (_json['linkedAdAccounts'] as core.List)
                  .map((value) => LinkedForeignAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          linkedViews: _json.containsKey('linkedViews')
              ? (_json['linkedViews'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          stateBasedAudienceDefinition:
              _json.containsKey('stateBasedAudienceDefinition')
                  ? RemarketingAudienceStateBasedAudienceDefinition.fromJson(
                      _json['stateBasedAudienceDefinition']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (audienceDefinition != null)
          'audienceDefinition': audienceDefinition!,
        if (audienceType != null) 'audienceType': audienceType!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (linkedAdAccounts != null) 'linkedAdAccounts': linkedAdAccounts!,
        if (linkedViews != null) 'linkedViews': linkedViews!,
        if (name != null) 'name': name!,
        if (stateBasedAudienceDefinition != null)
          'stateBasedAudienceDefinition': stateBasedAudienceDefinition!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// A remarketing audience collection lists Analytics remarketing audiences to
/// which the user has access.
///
/// Each resource in the collection corresponds to a single Analytics
/// remarketing audience.
class RemarketingAudiences {
  /// A list of remarketing audiences.
  core.List<RemarketingAudience>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this remarketing audience collection.
  core.String? nextLink;

  /// Link to previous page for this view (profile) collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  RemarketingAudiences({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  RemarketingAudiences.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => RemarketingAudience.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// JSON template for an Analytics segment.
class Segment {
  /// Time the segment was created.
  core.DateTime? created;

  /// Segment definition.
  core.String? definition;

  /// Segment ID.
  core.String? id;

  /// Resource type for Analytics segment.
  core.String? kind;

  /// Segment name.
  core.String? name;

  /// Segment ID.
  ///
  /// Can be used with the 'segment' parameter in Core Reporting API.
  core.String? segmentId;

  /// Link for this segment.
  core.String? selfLink;

  /// Type for a segment.
  ///
  /// Possible values are "BUILT_IN" or "CUSTOM".
  core.String? type;

  /// Time the segment was last modified.
  core.DateTime? updated;

  Segment({
    this.created,
    this.definition,
    this.id,
    this.kind,
    this.name,
    this.segmentId,
    this.selfLink,
    this.type,
    this.updated,
  });

  Segment.fromJson(core.Map _json)
      : this(
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          definition: _json.containsKey('definition')
              ? _json['definition'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          segmentId: _json.containsKey('segmentId')
              ? _json['segmentId'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (definition != null) 'definition': definition!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (segmentId != null) 'segmentId': segmentId!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (type != null) 'type': type!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
      };
}

/// An segment collection lists Analytics segments that the user has access to.
///
/// Each resource in the collection corresponds to a single Analytics segment.
class Segments {
  /// A list of segments.
  core.List<Segment>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type for segments.
  core.String? kind;

  /// Link to next page for this segment collection.
  core.String? nextLink;

  /// Link to previous page for this segment collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Segments({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Segments.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Segment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Download details for a file stored in Google Cloud Storage.
class UnsampledReportCloudStorageDownloadDetails {
  /// Id of the bucket the file object is stored in.
  core.String? bucketId;

  /// Id of the file object containing the report data.
  core.String? objectId;

  UnsampledReportCloudStorageDownloadDetails({
    this.bucketId,
    this.objectId,
  });

  UnsampledReportCloudStorageDownloadDetails.fromJson(core.Map _json)
      : this(
          bucketId: _json.containsKey('bucketId')
              ? _json['bucketId'] as core.String
              : null,
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketId != null) 'bucketId': bucketId!,
        if (objectId != null) 'objectId': objectId!,
      };
}

/// Download details for a file stored in Google Drive.
class UnsampledReportDriveDownloadDetails {
  /// Id of the document/file containing the report data.
  core.String? documentId;

  UnsampledReportDriveDownloadDetails({
    this.documentId,
  });

  UnsampledReportDriveDownloadDetails.fromJson(core.Map _json)
      : this(
          documentId: _json.containsKey('documentId')
              ? _json['documentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentId != null) 'documentId': documentId!,
      };
}

/// JSON template for Analytics unsampled report resource.
class UnsampledReport {
  /// Account ID to which this unsampled report belongs.
  core.String? accountId;

  /// Download details for a file stored in Google Cloud Storage.
  UnsampledReportCloudStorageDownloadDetails? cloudStorageDownloadDetails;

  /// Time this unsampled report was created.
  core.DateTime? created;

  /// The dimensions for the unsampled report.
  core.String? dimensions;

  /// The type of download you need to use for the report data file.
  ///
  /// Possible values include `GOOGLE_DRIVE` and `GOOGLE_CLOUD_STORAGE`. If the
  /// value is `GOOGLE_DRIVE`, see the `driveDownloadDetails` field. If the
  /// value is `GOOGLE_CLOUD_STORAGE`, see the `cloudStorageDownloadDetails`
  /// field.
  core.String? downloadType;

  /// Download details for a file stored in Google Drive.
  UnsampledReportDriveDownloadDetails? driveDownloadDetails;

  /// The end date for the unsampled report.
  core.String? endDate;

  /// The filters for the unsampled report.
  core.String? filters;

  /// Unsampled report ID.
  core.String? id;

  /// Resource type for an Analytics unsampled report.
  core.String? kind;

  /// The metrics for the unsampled report.
  core.String? metrics;

  /// View (Profile) ID to which this unsampled report belongs.
  core.String? profileId;

  /// The segment for the unsampled report.
  core.String? segment;

  /// Link for this unsampled report.
  core.String? selfLink;

  /// The start date for the unsampled report.
  core.String? startDate;

  /// Status of this unsampled report.
  ///
  /// Possible values are PENDING, COMPLETED, or FAILED.
  core.String? status;

  /// Title of the unsampled report.
  core.String? title;

  /// Time this unsampled report was last modified.
  core.DateTime? updated;

  /// Web property ID to which this unsampled report belongs.
  ///
  /// The web property ID is of the form UA-XXXXX-YY.
  core.String? webPropertyId;

  UnsampledReport({
    this.accountId,
    this.cloudStorageDownloadDetails,
    this.created,
    this.dimensions,
    this.downloadType,
    this.driveDownloadDetails,
    this.endDate,
    this.filters,
    this.id,
    this.kind,
    this.metrics,
    this.profileId,
    this.segment,
    this.selfLink,
    this.startDate,
    this.status,
    this.title,
    this.updated,
    this.webPropertyId,
  });

  UnsampledReport.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          cloudStorageDownloadDetails:
              _json.containsKey('cloudStorageDownloadDetails')
                  ? UnsampledReportCloudStorageDownloadDetails.fromJson(
                      _json['cloudStorageDownloadDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          dimensions: _json.containsKey('dimensions')
              ? _json['dimensions'] as core.String
              : null,
          downloadType: _json.containsKey('downloadType')
              ? _json['downloadType'] as core.String
              : null,
          driveDownloadDetails: _json.containsKey('driveDownloadDetails')
              ? UnsampledReportDriveDownloadDetails.fromJson(
                  _json['driveDownloadDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endDate: _json.containsKey('end-date')
              ? _json['end-date'] as core.String
              : null,
          filters: _json.containsKey('filters')
              ? _json['filters'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metrics: _json.containsKey('metrics')
              ? _json['metrics'] as core.String
              : null,
          profileId: _json.containsKey('profileId')
              ? _json['profileId'] as core.String
              : null,
          segment: _json.containsKey('segment')
              ? _json['segment'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          startDate: _json.containsKey('start-date')
              ? _json['start-date'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (cloudStorageDownloadDetails != null)
          'cloudStorageDownloadDetails': cloudStorageDownloadDetails!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (dimensions != null) 'dimensions': dimensions!,
        if (downloadType != null) 'downloadType': downloadType!,
        if (driveDownloadDetails != null)
          'driveDownloadDetails': driveDownloadDetails!,
        if (endDate != null) 'end-date': endDate!,
        if (filters != null) 'filters': filters!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (metrics != null) 'metrics': metrics!,
        if (profileId != null) 'profileId': profileId!,
        if (segment != null) 'segment': segment!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (startDate != null) 'start-date': startDate!,
        if (status != null) 'status': status!,
        if (title != null) 'title': title!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// An unsampled report collection lists Analytics unsampled reports to which
/// the user has access.
///
/// Each view (profile) can have a set of unsampled reports. Each resource in
/// the unsampled report collection corresponds to a single Analytics unsampled
/// report.
class UnsampledReports {
  /// A list of unsampled reports.
  core.List<UnsampledReport>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this unsampled report collection.
  core.String? nextLink;

  /// Link to previous page for this unsampled report collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// resources in the result.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  UnsampledReports({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  UnsampledReports.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => UnsampledReport.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Metadata returned for an upload operation.
class Upload {
  /// Account Id to which this upload belongs.
  core.String? accountId;

  /// Custom data source Id to which this data import belongs.
  core.String? customDataSourceId;

  /// Data import errors collection.
  core.List<core.String>? errors;

  /// A unique ID for this upload.
  core.String? id;

  /// Resource type for Analytics upload.
  core.String? kind;

  /// Upload status.
  ///
  /// Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED.
  core.String? status;

  /// Time this file is uploaded.
  core.DateTime? uploadTime;

  Upload({
    this.accountId,
    this.customDataSourceId,
    this.errors,
    this.id,
    this.kind,
    this.status,
    this.uploadTime,
  });

  Upload.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          customDataSourceId: _json.containsKey('customDataSourceId')
              ? _json['customDataSourceId'] as core.String
              : null,
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          uploadTime: _json.containsKey('uploadTime')
              ? core.DateTime.parse(_json['uploadTime'] as core.String)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (customDataSourceId != null)
          'customDataSourceId': customDataSourceId!,
        if (errors != null) 'errors': errors!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (status != null) 'status': status!,
        if (uploadTime != null)
          'uploadTime': uploadTime!.toUtc().toIso8601String(),
      };
}

/// Upload collection lists Analytics uploads to which the user has access.
///
/// Each custom data source can have a set of uploads. Each resource in the
/// upload collection corresponds to a single Analytics data upload.
class Uploads {
  /// A list of uploads.
  core.List<Upload>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this upload collection.
  core.String? nextLink;

  /// Link to previous page for this upload collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// resources in the result.
  core.int? totalResults;

  Uploads({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
  });

  Uploads.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Upload.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
      };
}

/// User ID.
class UserDeletionRequestId {
  /// Type of user
  core.String? type;

  /// The User's id
  core.String? userId;

  UserDeletionRequestId({
    this.type,
    this.userId,
  });

  UserDeletionRequestId.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          userId: _json.containsKey('userId')
              ? _json['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (userId != null) 'userId': userId!,
      };
}

/// JSON template for a user deletion request resource.
class UserDeletionRequest {
  /// This marks the point in time for which all user data before should be
  /// deleted
  core.DateTime? deletionRequestTime;

  /// Firebase Project Id
  core.String? firebaseProjectId;

  /// User ID.
  UserDeletionRequestId? id;

  /// Value is "analytics#userDeletionRequest".
  core.String? kind;

  /// Property ID
  core.String? propertyId;

  /// Web property ID of the form UA-XXXXX-YY.
  core.String? webPropertyId;

  UserDeletionRequest({
    this.deletionRequestTime,
    this.firebaseProjectId,
    this.id,
    this.kind,
    this.propertyId,
    this.webPropertyId,
  });

  UserDeletionRequest.fromJson(core.Map _json)
      : this(
          deletionRequestTime: _json.containsKey('deletionRequestTime')
              ? core.DateTime.parse(_json['deletionRequestTime'] as core.String)
              : null,
          firebaseProjectId: _json.containsKey('firebaseProjectId')
              ? _json['firebaseProjectId'] as core.String
              : null,
          id: _json.containsKey('id')
              ? UserDeletionRequestId.fromJson(
                  _json['id'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          propertyId: _json.containsKey('propertyId')
              ? _json['propertyId'] as core.String
              : null,
          webPropertyId: _json.containsKey('webPropertyId')
              ? _json['webPropertyId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletionRequestTime != null)
          'deletionRequestTime': deletionRequestTime!.toUtc().toIso8601String(),
        if (firebaseProjectId != null) 'firebaseProjectId': firebaseProjectId!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (propertyId != null) 'propertyId': propertyId!,
        if (webPropertyId != null) 'webPropertyId': webPropertyId!,
      };
}

/// JSON template for a user reference.
class UserRef {
  /// Email ID of this user.
  core.String? email;

  /// User ID.
  core.String? id;
  core.String? kind;

  UserRef({
    this.email,
    this.id,
    this.kind,
  });

  UserRef.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
      };
}

/// JSON template for a web property reference.
class WebPropertyRef {
  /// Account ID to which this web property belongs.
  core.String? accountId;

  /// Link for this web property.
  core.String? href;

  /// Web property ID of the form UA-XXXXX-YY.
  core.String? id;

  /// Internal ID for this web property.
  core.String? internalWebPropertyId;

  /// Analytics web property reference.
  core.String? kind;

  /// Name of this web property.
  core.String? name;

  WebPropertyRef({
    this.accountId,
    this.href,
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.name,
  });

  WebPropertyRef.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (href != null) 'href': href!,
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// JSON template for an Analytics WebPropertySummary.
///
/// WebPropertySummary returns basic information (i.e., summary) for a web
/// property.
class WebPropertySummary {
  /// Web property ID of the form UA-XXXXX-YY.
  core.String? id;

  /// Internal ID for this web property.
  core.String? internalWebPropertyId;

  /// Resource type for Analytics WebPropertySummary.
  core.String? kind;

  /// Level for this web property.
  ///
  /// Possible values are STANDARD or PREMIUM.
  core.String? level;

  /// Web property name.
  core.String? name;

  /// List of profiles under this web property.
  core.List<ProfileSummary>? profiles;

  /// Indicates whether this web property is starred or not.
  core.bool? starred;

  /// Website url for this web property.
  core.String? websiteUrl;

  WebPropertySummary({
    this.id,
    this.internalWebPropertyId,
    this.kind,
    this.level,
    this.name,
    this.profiles,
    this.starred,
    this.websiteUrl,
  });

  WebPropertySummary.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          level:
              _json.containsKey('level') ? _json['level'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          profiles: _json.containsKey('profiles')
              ? (_json['profiles'] as core.List)
                  .map((value) => ProfileSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          websiteUrl: _json.containsKey('websiteUrl')
              ? _json['websiteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (level != null) 'level': level!,
        if (name != null) 'name': name!,
        if (profiles != null) 'profiles': profiles!,
        if (starred != null) 'starred': starred!,
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
      };
}

/// A web property collection lists Analytics web properties to which the user
/// has access.
///
/// Each resource in the collection corresponds to a single Analytics web
/// property.
class Webproperties {
  /// A list of web properties.
  core.List<Webproperty>? items;

  /// The maximum number of resources the response can contain, regardless of
  /// the actual number of resources returned.
  ///
  /// Its value ranges from 1 to 1000 with a value of 1000 by default, or
  /// otherwise specified by the max-results query parameter.
  core.int? itemsPerPage;

  /// Collection type.
  core.String? kind;

  /// Link to next page for this web property collection.
  core.String? nextLink;

  /// Link to previous page for this web property collection.
  core.String? previousLink;

  /// The starting index of the resources, which is 1 by default or otherwise
  /// specified by the start-index query parameter.
  core.int? startIndex;

  /// The total number of results for the query, regardless of the number of
  /// results in the response.
  core.int? totalResults;

  /// Email ID of the authenticated user
  core.String? username;

  Webproperties({
    this.items,
    this.itemsPerPage,
    this.kind,
    this.nextLink,
    this.previousLink,
    this.startIndex,
    this.totalResults,
    this.username,
  });

  Webproperties.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Webproperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          itemsPerPage: _json.containsKey('itemsPerPage')
              ? _json['itemsPerPage'] as core.int
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextLink: _json.containsKey('nextLink')
              ? _json['nextLink'] as core.String
              : null,
          previousLink: _json.containsKey('previousLink')
              ? _json['previousLink'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          totalResults: _json.containsKey('totalResults')
              ? _json['totalResults'] as core.int
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (itemsPerPage != null) 'itemsPerPage': itemsPerPage!,
        if (kind != null) 'kind': kind!,
        if (nextLink != null) 'nextLink': nextLink!,
        if (previousLink != null) 'previousLink': previousLink!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (totalResults != null) 'totalResults': totalResults!,
        if (username != null) 'username': username!,
      };
}

/// Child link for this web property.
///
/// Points to the list of views (profiles) for this web property.
class WebpropertyChildLink {
  /// Link to the list of views (profiles) for this web property.
  core.String? href;

  /// Type of the parent link.
  ///
  /// Its value is "analytics#profiles".
  core.String? type;

  WebpropertyChildLink({
    this.href,
    this.type,
  });

  WebpropertyChildLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Parent link for this web property.
///
/// Points to the account to which this web property belongs.
class WebpropertyParentLink {
  /// Link to the account for this web property.
  core.String? href;

  /// Type of the parent link.
  ///
  /// Its value is "analytics#account".
  core.String? type;

  WebpropertyParentLink({
    this.href,
    this.type,
  });

  WebpropertyParentLink.fromJson(core.Map _json)
      : this(
          href: _json.containsKey('href') ? _json['href'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (href != null) 'href': href!,
        if (type != null) 'type': type!,
      };
}

/// Permissions the user has for this web property.
class WebpropertyPermissions {
  /// All the permissions that the user has for this web property.
  ///
  /// These include any implied permissions (e.g., EDIT implies VIEW) or
  /// inherited permissions from the parent account.
  core.List<core.String>? effective;

  WebpropertyPermissions({
    this.effective,
  });

  WebpropertyPermissions.fromJson(core.Map _json)
      : this(
          effective: _json.containsKey('effective')
              ? (_json['effective'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (effective != null) 'effective': effective!,
      };
}

/// JSON template for an Analytics web property.
class Webproperty {
  /// Account ID to which this web property belongs.
  core.String? accountId;

  /// Child link for this web property.
  ///
  /// Points to the list of views (profiles) for this web property.
  WebpropertyChildLink? childLink;

  /// Time this web property was created.
  core.DateTime? created;

  /// Set to true to reset the retention period of the user identifier with each
  /// new event from that user (thus setting the expiration date to current time
  /// plus retention period).
  /// Set to false to delete data associated with the user identifier
  /// automatically after the rentention period.
  /// This property cannot be set on insert.
  core.bool? dataRetentionResetOnNewActivity;

  /// The length of time for which user and event data is retained.
  /// This property cannot be set on insert.
  core.String? dataRetentionTtl;

  /// Default view (profile) ID.
  core.String? defaultProfileId;

  /// Web property ID of the form UA-XXXXX-YY.
  core.String? id;

  /// The industry vertical/category selected for this web property.
  core.String? industryVertical;

  /// Internal ID for this web property.
  core.String? internalWebPropertyId;

  /// Resource type for Analytics WebProperty.
  core.String? kind;

  /// Level for this web property.
  ///
  /// Possible values are STANDARD or PREMIUM.
  core.String? level;

  /// Name of this web property.
  core.String? name;

  /// Parent link for this web property.
  ///
  /// Points to the account to which this web property belongs.
  WebpropertyParentLink? parentLink;

  /// Permissions the user has for this web property.
  WebpropertyPermissions? permissions;

  /// View (Profile) count for this web property.
  core.int? profileCount;

  /// Link for this web property.
  core.String? selfLink;

  /// Indicates whether this web property is starred or not.
  core.bool? starred;

  /// Time this web property was last modified.
  core.DateTime? updated;

  /// Website url for this web property.
  core.String? websiteUrl;

  Webproperty({
    this.accountId,
    this.childLink,
    this.created,
    this.dataRetentionResetOnNewActivity,
    this.dataRetentionTtl,
    this.defaultProfileId,
    this.id,
    this.industryVertical,
    this.internalWebPropertyId,
    this.kind,
    this.level,
    this.name,
    this.parentLink,
    this.permissions,
    this.profileCount,
    this.selfLink,
    this.starred,
    this.updated,
    this.websiteUrl,
  });

  Webproperty.fromJson(core.Map _json)
      : this(
          accountId: _json.containsKey('accountId')
              ? _json['accountId'] as core.String
              : null,
          childLink: _json.containsKey('childLink')
              ? WebpropertyChildLink.fromJson(
                  _json['childLink'] as core.Map<core.String, core.dynamic>)
              : null,
          created: _json.containsKey('created')
              ? core.DateTime.parse(_json['created'] as core.String)
              : null,
          dataRetentionResetOnNewActivity:
              _json.containsKey('dataRetentionResetOnNewActivity')
                  ? _json['dataRetentionResetOnNewActivity'] as core.bool
                  : null,
          dataRetentionTtl: _json.containsKey('dataRetentionTtl')
              ? _json['dataRetentionTtl'] as core.String
              : null,
          defaultProfileId: _json.containsKey('defaultProfileId')
              ? _json['defaultProfileId'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          industryVertical: _json.containsKey('industryVertical')
              ? _json['industryVertical'] as core.String
              : null,
          internalWebPropertyId: _json.containsKey('internalWebPropertyId')
              ? _json['internalWebPropertyId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          level:
              _json.containsKey('level') ? _json['level'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parentLink: _json.containsKey('parentLink')
              ? WebpropertyParentLink.fromJson(
                  _json['parentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          permissions: _json.containsKey('permissions')
              ? WebpropertyPermissions.fromJson(
                  _json['permissions'] as core.Map<core.String, core.dynamic>)
              : null,
          profileCount: _json.containsKey('profileCount')
              ? _json['profileCount'] as core.int
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          starred: _json.containsKey('starred')
              ? _json['starred'] as core.bool
              : null,
          updated: _json.containsKey('updated')
              ? core.DateTime.parse(_json['updated'] as core.String)
              : null,
          websiteUrl: _json.containsKey('websiteUrl')
              ? _json['websiteUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (childLink != null) 'childLink': childLink!,
        if (created != null) 'created': created!.toUtc().toIso8601String(),
        if (dataRetentionResetOnNewActivity != null)
          'dataRetentionResetOnNewActivity': dataRetentionResetOnNewActivity!,
        if (dataRetentionTtl != null) 'dataRetentionTtl': dataRetentionTtl!,
        if (defaultProfileId != null) 'defaultProfileId': defaultProfileId!,
        if (id != null) 'id': id!,
        if (industryVertical != null) 'industryVertical': industryVertical!,
        if (internalWebPropertyId != null)
          'internalWebPropertyId': internalWebPropertyId!,
        if (kind != null) 'kind': kind!,
        if (level != null) 'level': level!,
        if (name != null) 'name': name!,
        if (parentLink != null) 'parentLink': parentLink!,
        if (permissions != null) 'permissions': permissions!,
        if (profileCount != null) 'profileCount': profileCount!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (starred != null) 'starred': starred!,
        if (updated != null) 'updated': updated!.toUtc().toIso8601String(),
        if (websiteUrl != null) 'websiteUrl': websiteUrl!,
      };
}
