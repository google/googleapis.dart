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

/// AdMob API - v1beta
///
/// The AdMob API allows publishers to programmatically get information about
/// their AdMob account.
///
/// For more information, see <https://developers.google.com/admob/api/>
///
/// Create an instance of [AdMobApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsAdSourcesResource]
///     - [AccountsAdSourcesAdaptersResource]
///   - [AccountsAdUnitMappingsResource]
///   - [AccountsAdUnitsResource]
///     - [AccountsAdUnitsAdUnitMappingsResource]
///   - [AccountsAppsResource]
///   - [AccountsCampaignReportResource]
///   - [AccountsMediationGroupsResource]
///     - [AccountsMediationGroupsMediationAbExperimentsResource]
///   - [AccountsMediationReportResource]
///   - [AccountsNetworkReportResource]
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

/// The AdMob API allows publishers to programmatically get information about
/// their AdMob account.
class AdMobApi {
  /// See your AdMob data
  static const admobReadonlyScope =
      'https://www.googleapis.com/auth/admob.readonly';

  /// See your AdMob data
  static const admobReportScope =
      'https://www.googleapis.com/auth/admob.report';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);

  AdMobApi(
    http.Client client, {
    core.String rootUrl = 'https://admob.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsAdSourcesResource get adSources =>
      AccountsAdSourcesResource(_requester);
  AccountsAdUnitMappingsResource get adUnitMappings =>
      AccountsAdUnitMappingsResource(_requester);
  AccountsAdUnitsResource get adUnits => AccountsAdUnitsResource(_requester);
  AccountsAppsResource get apps => AccountsAppsResource(_requester);
  AccountsCampaignReportResource get campaignReport =>
      AccountsCampaignReportResource(_requester);
  AccountsMediationGroupsResource get mediationGroups =>
      AccountsMediationGroupsResource(_requester);
  AccountsMediationReportResource get mediationReport =>
      AccountsMediationReportResource(_requester);
  AccountsNetworkReportResource get networkReport =>
      AccountsNetworkReportResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about the specified AdMob publisher account.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the publisher account to retrieve. Example:
  /// accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublisherAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublisherAccount> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PublisherAccount.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the AdMob publisher account that was most recently signed in to from
  /// the AdMob UI.
  ///
  /// For more information, see
  /// https://support.google.com/admob/answer/10243672.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of accounts to return.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListPublisherAccountsResponse`; indicates that this is a continuation of
  /// a prior `ListPublisherAccounts` call, and that the system should return
  /// the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPublisherAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPublisherAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPublisherAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAdSourcesResource {
  final commons.ApiRequester _requester;

  AccountsAdSourcesAdaptersResource get adapters =>
      AccountsAdSourcesAdaptersResource(_requester);

  AccountsAdSourcesResource(commons.ApiRequester client) : _requester = client;

  /// List the ad sources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of ad sources.
  /// Format: accounts/{publisher_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad sources to return. If unspecified or
  /// 0, at most 10,000 ad sources will be returned. The maximum value is
  /// 20,000; values above 10,000 will be coerced to 20,000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAdSources` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdSourcesResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAdSourcesAdaptersResource {
  final commons.ApiRequester _requester;

  AccountsAdSourcesAdaptersResource(commons.ApiRequester client)
    : _requester = client;

  /// List the adapters of the ad source.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of adapters.
  /// Format: accounts/{publisher_id}/adSources/{ad_source_id}
  /// Value must have pattern `^accounts/\[^/\]+/adSources/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of adapters to return. If unspecified or
  /// 0, at most 10,000 adapters will be returned. The maximum value is 20,000;
  /// values above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAdapters` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdaptersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdaptersResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adapters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdaptersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAdUnitMappingsResource {
  final commons.ApiRequester _requester;

  AccountsAdUnitMappingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Batch create the ad unit mappings under the specific AdMob account.
  ///
  /// The maximum allowed batch size is 100. This method has limited access. If
  /// you see a 403 permission denied error, please reach out to your account
  /// manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The AdMob account which owns this collection of ad
  /// unit mappings. Format: accounts/{publisher_id} See
  /// https://support.google.com/admob/answer/2784578 for instructions on how to
  /// find your AdMob publisher ID.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateAdUnitMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateAdUnitMappingsResponse> batchCreate(
    BatchCreateAdUnitMappingsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/adUnitMappings:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateAdUnitMappingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAdUnitsResource {
  final commons.ApiRequester _requester;

  AccountsAdUnitsAdUnitMappingsResource get adUnitMappings =>
      AccountsAdUnitsAdUnitMappingsResource(_requester);

  AccountsAdUnitsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an ad unit under the specified AdMob account.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to create the specified
  /// ad unit for. Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adUnits';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnit.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the ad units under the specified AdMob account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to list ad units for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of ad units to return. If unspecified or
  /// 0, at most 10,000 ad units will be returned. The maximum value is 20,000;
  /// values above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - The value returned by the last `ListAdUnitsResponse`;
  /// indicates that this is a continuation of a prior `ListAdUnits` call, and
  /// that the system should return the next page of data.
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adUnits';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdUnitsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAdUnitsAdUnitMappingsResource {
  final commons.ApiRequester _requester;

  AccountsAdUnitsAdUnitMappingsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create an ad unit mapping under the specific AdMob account and ad unit.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns the ad unit mapping. Format:
  /// accounts/{publisher_id}/adUnits/{ad_unit_id}
  /// Value must have pattern `^accounts/\[^/\]+/adUnits/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AdUnitMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AdUnitMapping> create(
    AdUnitMapping request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adUnitMappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AdUnitMapping.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List ad unit mappings under the specified AdMob account and ad unit.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of ad unit
  /// mappings. Format: accounts/{publisher_id}/adUnits/{ad_unit_id}
  /// Value must have pattern `^accounts/\[^/\]+/adUnits/\[^/\]+$`.
  ///
  /// [filter] - The filter string that uses
  /// [EBNF grammar syntax](https://google.aip.dev/assets/misc/ebnf-filtering.txt).
  /// Possible field to filter by is: - "DISPLAY_NAME" Possible filter function
  /// is: - `IN`: Used to filter fields that represent a singleton including
  /// "DISPLAY_NAME". The filter functions can be added together using `AND`.
  /// `OR` functionality is not supported. Example: filter: IN(DISPLAY_NAME,
  /// "Test Ad Unit Mapping 1", "Test Ad Unit Mapping 2")
  ///
  /// [pageSize] - The maximum number of ad unit mappings to return. If
  /// unspecified or 0, at most 10,000 ad unit mappings will be returned. The
  /// maximum value is 20,000; values above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - A page token, received from a previous `ListAdUnitMappings`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAdUnitMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAdUnitMappingsResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/adUnitMappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAdUnitMappingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsAppsResource {
  final commons.ApiRequester _requester;

  AccountsAppsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an app under the specified AdMob account.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account for which the app is
  /// being created. Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [App].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<App> create(
    App request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return App.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the apps under the specified AdMob account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to list apps for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of apps to return. If unspecified or 0, at
  /// most 10,000 apps will be returned. The maximum value is 20,000; values
  /// above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - The value returned by the last `ListAppsResponse`; indicates
  /// that this is a continuation of a prior `ListApps` call, and that the
  /// system should return the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAppsResponse> list(
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

    final url_ = 'v1beta/' + core.Uri.encodeFull('$parent') + '/apps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAppsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsCampaignReportResource {
  final commons.ApiRequester _requester;

  AccountsCampaignReportResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates Campaign Report based on provided specifications.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the account to generate the report for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateCampaignReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateCampaignReportResponse> generate(
    GenerateCampaignReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/campaignReport:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateCampaignReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsMediationGroupsResource {
  final commons.ApiRequester _requester;

  AccountsMediationGroupsMediationAbExperimentsResource
  get mediationAbExperiments =>
      AccountsMediationGroupsMediationAbExperimentsResource(_requester);

  AccountsMediationGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a mediation group under the specific AdMob account.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns the mediation group. Format:
  /// accounts/{publisher_id}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediationGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediationGroup> create(
    MediationGroup request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/mediationGroups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MediationGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List mediation groups under the specified AdMob account.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the account to list mediation groups
  /// for. Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - The filter string that uses
  /// [EBNF grammar syntax](https://google.aip.dev/assets/misc/ebnf-filtering.txt).
  /// Possible fields to filter by are: - "AD_SOURCE_IDS" - "AD_UNIT_IDS" -
  /// "APP_IDS" - "DISPLAY_NAME" - "FORMAT" - "MEDIATION_GROUP_ID" - "PLATFORM"
  /// - "STATE" - "TARGETED_REGION_CODES" Possible filter functions are: - `IN`:
  /// Used to filter fields that represent a singleton including
  /// "MEDIATION_GROUP_ID", "DISPLAY_NAME", "STATE", "PLATFORM", and "FORMAT". -
  /// `CONTAINS_ANY`: Used to filter fields that represent a collection
  /// including "AD_SOURCE_IDS", "AD_UNIT_IDS", "APP_IDS", and
  /// "TARGETED_REGION_CODES". The filter functions can be added together using
  /// `AND`. `OR` functionality is not supported. Example: filter:
  /// IN(DISPLAY_NAME, "Test Group 1", "Test Group 2") AND IN(PLATFORM,
  /// "ANDROID") AND CONTAINS_ANY(AD_SOURCE_IDS, "5450213213286189855")
  ///
  /// [pageSize] - The maximum number of mediation groups to return. If
  /// unspecified or 0, at most 10,000 mediation groups will be returned. The
  /// maximum value is 20,000; values above 20,000 will be coerced to 20,000.
  ///
  /// [pageToken] - The value returned by the last
  /// `ListMediationGroupsResponse`; indicates that this is a continuation of a
  /// prior `ListMediationGroups` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMediationGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMediationGroupsResponse> list(
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
        'v1beta/' + core.Uri.encodeFull('$parent') + '/mediationGroups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMediationGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the specified mediation group under the specified AdMob account.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for this mediation group. Format is:
  /// accounts/{publisher_id}/mediationGroups/{mediation_group_id} Example:
  /// accounts/pub-9876543210987654/mediationGroups/0123456789
  /// Value must have pattern `^accounts/\[^/\]+/mediationGroups/\[^/\]+$`.
  ///
  /// [updateMask] - List of mediation group fields to be updated. Updates to
  /// repeated fields such as items in a list will fully replace the existing
  /// value(s) with the new value(s). Updates to individual values in a map can
  /// be done by indexing by the key. The following field masks are supported
  /// for mediation group updates: -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\]" clang-format off
  /// -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\].ad_unit_mappings\[\"{ad_unit_id}\"\]"
  /// clang-format on -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\].cpm_micros" -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\].cpm_mode" -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\].state" -
  /// "mediation_group_lines\[\"{mediation_group_line_id}\"\].display_name" -
  /// "targeting.ad_unit_ids" To update a mediation group with a new mediation
  /// group line, use a distinct negative number for the
  /// "mediation_group_line_id". For Example: update_mask { paths:
  /// "mediation_group_lines\[\"123456789012345\"\].cpm_micros" }
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediationGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediationGroup> patch(
    MediationGroup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return MediationGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsMediationGroupsMediationAbExperimentsResource {
  final commons.ApiRequester _requester;

  AccountsMediationGroupsMediationAbExperimentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Create an A/B testing experiment for a specified AdMob account and a
  /// mediation group.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns the mediation group. Format:
  /// accounts/{publisher_id}/mediationGroups/{mediation_group_id}
  /// Value must have pattern `^accounts/\[^/\]+/mediationGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediationAbExperiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediationAbExperiment> create(
    MediationAbExperiment request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/mediationAbExperiments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MediationAbExperiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Stop the mediation A/B experiment and choose a variant.
  ///
  /// This method has limited access. If you see a 403 permission denied error,
  /// please reach out to your account manager for access.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the mediation group, the experiment for which to choose a
  /// variant for. Example:
  /// accounts/pub-9876543210987654/mediationGroups/0123456789/
  /// mediationAbExperiments
  /// Value must have pattern
  /// `^accounts/\[^/\]+/mediationGroups/\[^/\]+/mediationAbExperiments$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MediationAbExperiment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MediationAbExperiment> stop(
    StopMediationAbExperimentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MediationAbExperiment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsMediationReportResource {
  final commons.ApiRequester _requester;

  AccountsMediationReportResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an AdMob Mediation report based on the provided report
  /// specification.
  ///
  /// Returns result of a server-side streaming RPC. The result is returned in a
  /// sequence of responses.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the account to generate the report for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateMediationReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateMediationReportResponse> generate(
    GenerateMediationReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/mediationReport:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateMediationReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsNetworkReportResource {
  final commons.ApiRequester _requester;

  AccountsNetworkReportResource(commons.ApiRequester client)
    : _requester = client;

  /// Generates an AdMob Network report based on the provided report
  /// specification.
  ///
  /// Returns result of a server-side streaming RPC. The result is returned in a
  /// sequence of responses.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Resource name of the account to generate the report for.
  /// Example: accounts/pub-9876543210987654
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateNetworkReportResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateNetworkReportResponse> generate(
    GenerateNetworkReportRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/networkReport:generate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateNetworkReportResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Definition of a mediation ad source.
class AdSource {
  /// ID of this ad source.
  core.String? adSourceId;

  /// Resource name of this ad source.
  ///
  /// Format is: accounts/{publisher_id}/adSources/{ad_source_id}
  core.String? name;

  /// Display name of this ad source.
  core.String? title;

  AdSource({this.adSourceId, this.name, this.title});

  AdSource.fromJson(core.Map json_)
    : this(
        adSourceId: json_['adSourceId'] as core.String?,
        name: json_['name'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adSourceId != null) 'adSourceId': adSourceId!,
    if (name != null) 'name': name!,
    if (title != null) 'title': title!,
  };
}

/// Describes an AdMob ad unit.
class AdUnit {
  /// AdFormat of the ad unit.
  ///
  /// Possible values are as follows: "APP_OPEN" - App Open ad format. "BANNER"
  /// - Banner ad format. "BANNER_INTERSTITIAL" - Legacy format that can be used
  /// as either banner or interstitial. This format can no longer be created but
  /// can be targeted by mediation groups. "INTERSTITIAL" - A full screen ad.
  /// Supported ad types are "RICH_MEDIA" and "VIDEO". "NATIVE" - Native ad
  /// format. "REWARDED" - An ad that, once viewed, gets a callback verifying
  /// the view so that a reward can be given to the user. Supported ad types are
  /// "RICH_MEDIA" (interactive) and video where video can not be excluded.
  /// "REWARDED_INTERSTITIAL" - Rewarded Interstitial ad format. Only supports
  /// video ad type. See https://support.google.com/admob/answer/9884467.
  core.String? adFormat;

  /// Ad media type supported by this ad unit.
  ///
  /// Possible values as follows: "RICH_MEDIA" - Text, image, and other
  /// non-video media. "VIDEO" - Video media.
  core.List<core.String>? adTypes;

  /// The externally visible ID of the ad unit which can be used to integrate
  /// with the AdMob SDK.
  ///
  /// This is a read only property. Example:
  /// ca-app-pub-9876543210987654/0123456789
  core.String? adUnitId;

  /// The externally visible ID of the app this ad unit is associated with.
  ///
  /// Example: ca-app-pub-9876543210987654~0123456789
  core.String? appId;

  /// The display name of the ad unit as shown in the AdMob UI, which is
  /// provided by the user.
  ///
  /// The maximum length allowed is 80 characters.
  core.String? displayName;

  /// Resource name for this ad unit.
  ///
  /// Format is accounts/{publisher_id}/adUnits/{ad_unit_id_fragment} Example:
  /// accounts/pub-9876543210987654/adUnits/0123456789
  core.String? name;

  /// Settings for a rewarded ad unit.
  ///
  /// This can be set or unset only when the ad_format is "REWARDED".
  ///
  /// Optional.
  AdUnitRewardSettings? rewardSettings;

  AdUnit({
    this.adFormat,
    this.adTypes,
    this.adUnitId,
    this.appId,
    this.displayName,
    this.name,
    this.rewardSettings,
  });

  AdUnit.fromJson(core.Map json_)
    : this(
        adFormat: json_['adFormat'] as core.String?,
        adTypes:
            (json_['adTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        adUnitId: json_['adUnitId'] as core.String?,
        appId: json_['appId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        rewardSettings:
            json_.containsKey('rewardSettings')
                ? AdUnitRewardSettings.fromJson(
                  json_['rewardSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adFormat != null) 'adFormat': adFormat!,
    if (adTypes != null) 'adTypes': adTypes!,
    if (adUnitId != null) 'adUnitId': adUnitId!,
    if (appId != null) 'appId': appId!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (rewardSettings != null) 'rewardSettings': rewardSettings!,
  };
}

/// Settings to map an AdMob ad unit to a 3rd party ad unit.
class AdUnitMapping {
  /// Settings for the specified ad unit to make an ad request to 3rd party ad
  /// network.
  ///
  /// Key-value pairs with values set by the user for the keys requested by the
  /// ad network. Please see https://support.google.com/admob/answer/3245073 for
  /// details on how to configure the network settings.
  core.Map<core.String, core.String>? adUnitConfigurations;

  /// The ID of mediation ad source adapter used by this ad unit mapping.
  ///
  /// The adapter determines the information needed in the ad_network_settings.
  core.String? adapterId;

  /// The display name of this ad unit mapping instance.
  ///
  /// Optional.
  core.String? displayName;

  /// Resource name of this ad unit mapping.
  ///
  /// Format is:
  /// accounts/{publisher_id}/adUnits/{ad_unit_id_fragment}/adUnitMappings/{ad_unit_mapping_id}
  /// Example:
  /// accounts/pub-1234567890123456/adUnits/0123456789/adUnitMappings/987654321
  core.String? name;

  /// The status of this ad unit mapping.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value.
  /// - "ENABLED" : The ad unit mapping is active and used to serve ads or
  /// collecting stats.
  core.String? state;

  AdUnitMapping({
    this.adUnitConfigurations,
    this.adapterId,
    this.displayName,
    this.name,
    this.state,
  });

  AdUnitMapping.fromJson(core.Map json_)
    : this(
        adUnitConfigurations: (json_['adUnitConfigurations']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        adapterId: json_['adapterId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnitConfigurations != null)
      'adUnitConfigurations': adUnitConfigurations!,
    if (adapterId != null) 'adapterId': adapterId!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// Settings for a rewarded ad unit.
class AdUnitRewardSettings {
  /// Reward amount for this ad unit.
  core.String? unitAmount;

  /// Reward item for this ad unit.
  core.String? unitType;

  AdUnitRewardSettings({this.unitAmount, this.unitType});

  AdUnitRewardSettings.fromJson(core.Map json_)
    : this(
        unitAmount: json_['unitAmount'] as core.String?,
        unitType: json_['unitType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (unitAmount != null) 'unitAmount': unitAmount!,
    if (unitType != null) 'unitType': unitType!,
  };
}

/// Describes adapters supported by each mediation ad source.
///
/// Adapters correspond to a specific SDK implementation of the ad source, and
/// are each associated with a single platform and a list of supported ad unit
/// formats. Adapters may also require setting some configurations to perform ad
/// requests. Configurations can be specified in the AdUnitMapping by setting
/// the \[ad_unit_configurations\](#AdUnitMapping.ad_unit_configurations)
/// key/value pairs. For example, the ad_unit_configurations can be used to pass
/// various IDs to the adapter's third-party SDK.
class Adapter {
  /// Configuration metadata associated with this adapter.
  ///
  /// Output only.
  core.List<AdapterAdapterConfigMetadata>? adapterConfigMetadata;

  /// ID of this adapter.
  ///
  /// It is used to set \[adapter_id\](#AdUnitMapping.adapter_id).
  ///
  /// Output only.
  core.String? adapterId;

  /// Indicates the formats of the ad units supported by this adapter.
  ///
  /// Output only.
  core.List<core.String>? formats;

  /// Resource name of the adapter.
  ///
  /// Format is:
  /// accounts/{publisher_id}/adSources/{ad_source_id}/adapters/{adapter_id}.
  ///
  /// Output only.
  core.String? name;

  /// Mobile application platform supported by this adapter.
  ///
  /// Supported values are: IOS, ANDROID, WINDOWS_PHONE
  ///
  /// Output only.
  core.String? platform;

  /// The display name of this adapter.
  ///
  /// Output only.
  core.String? title;

  Adapter({
    this.adapterConfigMetadata,
    this.adapterId,
    this.formats,
    this.name,
    this.platform,
    this.title,
  });

  Adapter.fromJson(core.Map json_)
    : this(
        adapterConfigMetadata:
            (json_['adapterConfigMetadata'] as core.List?)
                ?.map(
                  (value) => AdapterAdapterConfigMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        adapterId: json_['adapterId'] as core.String?,
        formats:
            (json_['formats'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        platform: json_['platform'] as core.String?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapterConfigMetadata != null)
      'adapterConfigMetadata': adapterConfigMetadata!,
    if (adapterId != null) 'adapterId': adapterId!,
    if (formats != null) 'formats': formats!,
    if (name != null) 'name': name!,
    if (platform != null) 'platform': platform!,
    if (title != null) 'title': title!,
  };
}

/// Configuration metadata associated with this adapter.
///
/// They are used to define the ad_unit_configurations associated with
/// AdUnitMappings for the this adapter.
class AdapterAdapterConfigMetadata {
  /// This is used to fill the key of the
  /// \[ad_unit_configurations\](#AdUnitMapping.ad_unit_configurations).
  core.String? adapterConfigMetadataId;

  /// Name of the adapter configuration metadata.
  core.String? adapterConfigMetadataLabel;

  /// Whether this metadata is required for configuring the AdUnitMappings.
  core.bool? isRequired;

  AdapterAdapterConfigMetadata({
    this.adapterConfigMetadataId,
    this.adapterConfigMetadataLabel,
    this.isRequired,
  });

  AdapterAdapterConfigMetadata.fromJson(core.Map json_)
    : this(
        adapterConfigMetadataId:
            json_['adapterConfigMetadataId'] as core.String?,
        adapterConfigMetadataLabel:
            json_['adapterConfigMetadataLabel'] as core.String?,
        isRequired: json_['isRequired'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapterConfigMetadataId != null)
      'adapterConfigMetadataId': adapterConfigMetadataId!,
    if (adapterConfigMetadataLabel != null)
      'adapterConfigMetadataLabel': adapterConfigMetadataLabel!,
    if (isRequired != null) 'isRequired': isRequired!,
  };
}

/// Describes an AdMob app for a specific platform (For example: Android or
/// iOS).
class App {
  /// The approval state for the app.
  ///
  /// The field is read-only.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "APP_APPROVAL_STATE_UNSPECIFIED" : Default value for an unset field. Do
  /// not use.
  /// - "ACTION_REQUIRED" : The app requires additional user action to be
  /// approved. Please refer to https://support.google.com/admob/answer/10564477
  /// for details and next steps.
  /// - "IN_REVIEW" : The app is pending review.
  /// - "APPROVED" : The app is approved and can serve ads.
  core.String? appApprovalState;

  /// The externally visible ID of the app which can be used to integrate with
  /// the AdMob SDK.
  ///
  /// This is a read only property. Example:
  /// ca-app-pub-9876543210987654~0123456789
  core.String? appId;

  /// The information for an app that is linked to an app store.
  ///
  /// This field is present if and only if the app is linked to an app store.
  ///
  /// Immutable.
  AppLinkedAppInfo? linkedAppInfo;

  /// The information for an app that is not linked to any app store.
  ///
  /// After an app is linked, this information is still retrivable. If no name
  /// is provided for the app upon creation, a placeholder name will be used.
  AppManualAppInfo? manualAppInfo;

  /// Resource name for this app.
  ///
  /// Format is accounts/{publisher_id}/apps/{app_id_fragment} Example:
  /// accounts/pub-9876543210987654/apps/0123456789
  core.String? name;

  /// Describes the platform of the app.
  ///
  /// Limited to "IOS" and "ANDROID".
  core.String? platform;

  App({
    this.appApprovalState,
    this.appId,
    this.linkedAppInfo,
    this.manualAppInfo,
    this.name,
    this.platform,
  });

  App.fromJson(core.Map json_)
    : this(
        appApprovalState: json_['appApprovalState'] as core.String?,
        appId: json_['appId'] as core.String?,
        linkedAppInfo:
            json_.containsKey('linkedAppInfo')
                ? AppLinkedAppInfo.fromJson(
                  json_['linkedAppInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        manualAppInfo:
            json_.containsKey('manualAppInfo')
                ? AppManualAppInfo.fromJson(
                  json_['manualAppInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        platform: json_['platform'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (appApprovalState != null) 'appApprovalState': appApprovalState!,
    if (appId != null) 'appId': appId!,
    if (linkedAppInfo != null) 'linkedAppInfo': linkedAppInfo!,
    if (manualAppInfo != null) 'manualAppInfo': manualAppInfo!,
    if (name != null) 'name': name!,
    if (platform != null) 'platform': platform!,
  };
}

/// Information from the app store if the app is linked to an app store.
class AppLinkedAppInfo {
  /// The app store information for published Android apps.
  ///
  /// This field is only used for apps on the Android platform and will be
  /// ignored if the PLATFORM is set to iOS. The default value is the Google
  /// Play App store. This field can be updated after app is created. If the app
  /// is not published, this field will not be included in the response.
  ///
  /// Optional.
  core.List<core.String>? androidAppStores;

  /// The app store ID of the app; present if and only if the app is linked to
  /// an app store.
  ///
  /// If the app is added to the Google Play store, it will be the application
  /// ID of the app. For example: "com.example.myapp". See
  /// https://developer.android.com/studio/build/application-id. If the app is
  /// added to the Apple App Store, it will be app store ID. For example
  /// "105169111". Note that setting the app store id is considered an
  /// irreversible action. Once an app is linked, it cannot be unlinked.
  core.String? appStoreId;

  /// Display name of the app as it appears in the app store.
  ///
  /// This is an output-only field, and may be empty if the app cannot be found
  /// in the store.
  ///
  /// Output only.
  core.String? displayName;

  AppLinkedAppInfo({this.androidAppStores, this.appStoreId, this.displayName});

  AppLinkedAppInfo.fromJson(core.Map json_)
    : this(
        androidAppStores:
            (json_['androidAppStores'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        appStoreId: json_['appStoreId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (androidAppStores != null) 'androidAppStores': androidAppStores!,
    if (appStoreId != null) 'appStoreId': appStoreId!,
    if (displayName != null) 'displayName': displayName!,
  };
}

/// Information provided for manual apps which are not linked to an application
/// store (Example: Google Play, App Store).
typedef AppManualAppInfo = $AppManualAppInfo;

/// Request to create a batch of ad unit mappings under the specific AdMob
/// account.
class BatchCreateAdUnitMappingsRequest {
  /// The request message specifying the ad unit mappings to create.
  ///
  /// A maximum of 100 ad unit mappings can be created in a batch. If the number
  /// of ad unit mappings in the batch request exceed 100, the entire request
  /// will be rejected and no ad unit mappings will be created.
  ///
  /// Required.
  core.List<CreateAdUnitMappingRequest>? requests;

  BatchCreateAdUnitMappingsRequest({this.requests});

  BatchCreateAdUnitMappingsRequest.fromJson(core.Map json_)
    : this(
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) => CreateAdUnitMappingRequest.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (requests != null) 'requests': requests!,
  };
}

/// Response containing a batch of created ad unit mappings.
class BatchCreateAdUnitMappingsResponse {
  /// The Ad units mappings created under the requested account.
  core.List<AdUnitMapping>? adUnitMappings;

  BatchCreateAdUnitMappingsResponse({this.adUnitMappings});

  BatchCreateAdUnitMappingsResponse.fromJson(core.Map json_)
    : this(
        adUnitMappings:
            (json_['adUnitMappings'] as core.List?)
                ?.map(
                  (value) => AdUnitMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnitMappings != null) 'adUnitMappings': adUnitMappings!,
  };
}

/// The specification for generating a Campaign report.
///
/// For example, the specification to get IMPRESSIONS and CLICKS sliced by
/// CAMPAIGN_ID can look like the following example: { "date_range": {
/// "start_date": {"year": 2021, "month": 12, "day": 1}, "end_date": {"year":
/// 2021, "month": 12, "day": 30} }, "dimensions": \["CAMPAIGN_ID"\], "metrics":
/// \["IMPRESSIONS", "CLICKS"\], }
class CampaignReportSpec {
  /// The date range for which the report is generated.
  ///
  /// The max range is 30 days.
  DateRange? dateRange;

  /// List of dimensions of the report.
  ///
  /// The value combination of these dimensions determines the row of the
  /// report. If no dimensions are specified, the report returns a single row of
  /// requested metrics for the entire account.
  core.List<core.String>? dimensions;

  /// Language used for any localized text, such as certain applicable dimension
  /// values.
  ///
  /// The language tag is defined in the IETF BCP47. Defaults to 'en-US' if
  /// unspecified or invalid.
  core.String? languageCode;

  /// List of metrics of the report.
  ///
  /// A report must specify at least one metric.
  core.List<core.String>? metrics;

  CampaignReportSpec({
    this.dateRange,
    this.dimensions,
    this.languageCode,
    this.metrics,
  });

  CampaignReportSpec.fromJson(core.Map json_)
    : this(
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        languageCode: json_['languageCode'] as core.String?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateRange != null) 'dateRange': dateRange!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (metrics != null) 'metrics': metrics!,
  };
}

/// Request to create an ad unit mapping under the specific AdMob account and ad
/// unit.
class CreateAdUnitMappingRequest {
  /// The ad unit mapping to create.
  ///
  /// Required.
  AdUnitMapping? adUnitMapping;

  /// The parent which owns the ad unit mapping.
  ///
  /// Format: accounts/{publisher_id}/adUnits/{ad_unit_id}
  ///
  /// Required.
  core.String? parent;

  CreateAdUnitMappingRequest({this.adUnitMapping, this.parent});

  CreateAdUnitMappingRequest.fromJson(core.Map json_)
    : this(
        adUnitMapping:
            json_.containsKey('adUnitMapping')
                ? AdUnitMapping.fromJson(
                  json_['adUnitMapping'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parent: json_['parent'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnitMapping != null) 'adUnitMapping': adUnitMapping!,
    if (parent != null) 'parent': parent!,
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

/// Specification of a single date range.
///
/// Both dates are inclusive.
class DateRange {
  /// End date of the date range, inclusive.
  ///
  /// Must be greater than or equal to the start date.
  Date? endDate;

  /// Start date of the date range, inclusive.
  ///
  /// Must be less than or equal to the end date.
  Date? startDate;

  DateRange({this.endDate, this.startDate});

  DateRange.fromJson(core.Map json_)
    : this(
        endDate:
            json_.containsKey('endDate')
                ? Date.fromJson(
                  json_['endDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        startDate:
            json_.containsKey('startDate')
                ? Date.fromJson(
                  json_['startDate'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDate != null) 'endDate': endDate!,
    if (startDate != null) 'startDate': startDate!,
  };
}

/// Request to generate campaign report.
class GenerateCampaignReportRequest {
  /// Campaign report specification.
  CampaignReportSpec? reportSpec;

  GenerateCampaignReportRequest({this.reportSpec});

  GenerateCampaignReportRequest.fromJson(core.Map json_)
    : this(
        reportSpec:
            json_.containsKey('reportSpec')
                ? CampaignReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportSpec != null) 'reportSpec': reportSpec!,
  };
}

/// Campaign Report API response.
class GenerateCampaignReportResponse {
  /// The campaign report data from the specified publisher.
  ///
  /// At most 100000 rows will be returned from the API.
  core.List<ReportRow>? rows;

  GenerateCampaignReportResponse({this.rows});

  GenerateCampaignReportResponse.fromJson(core.Map json_)
    : this(
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => ReportRow.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rows != null) 'rows': rows!,
  };
}

/// Request to generate an AdMob Mediation report.
class GenerateMediationReportRequest {
  /// Network report specification.
  MediationReportSpec? reportSpec;

  GenerateMediationReportRequest({this.reportSpec});

  GenerateMediationReportRequest.fromJson(core.Map json_)
    : this(
        reportSpec:
            json_.containsKey('reportSpec')
                ? MediationReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportSpec != null) 'reportSpec': reportSpec!,
  };
}

/// The streaming response for the AdMob Mediation report where the first
/// response contains the report header, then a stream of row responses, and
/// finally a footer as the last response message.
///
/// For example: \[{ "header": { "date_range": { "start_date": {"year": 2018,
/// "month": 9, "day": 1}, "end_date": {"year": 2018, "month": 9, "day": 1} },
/// "localization_settings": { "currency_code": "USD", "language_code": "en-US"
/// } } }, { "row": { "dimension_values": { "DATE": {"value": "20180918"},
/// "APP": { "value": "ca-app-pub-8123415297019784~1001342552", "display_label":
/// "My app name!" } }, "metric_values": { "ESTIMATED_EARNINGS":
/// {"decimal_value": "1324746"} } } }, { "footer": {"matching_row_count": 1}
/// }\]
class GenerateMediationReportResponse {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateMediationReportResponse({this.footer, this.header, this.row});

  GenerateMediationReportResponse.fromJson(core.Map json_)
    : this(
        footer:
            json_.containsKey('footer')
                ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        header:
            json_.containsKey('header')
                ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        row:
            json_.containsKey('row')
                ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (footer != null) 'footer': footer!,
    if (header != null) 'header': header!,
    if (row != null) 'row': row!,
  };
}

/// Request to generate an AdMob Network report.
class GenerateNetworkReportRequest {
  /// Network report specification.
  NetworkReportSpec? reportSpec;

  GenerateNetworkReportRequest({this.reportSpec});

  GenerateNetworkReportRequest.fromJson(core.Map json_)
    : this(
        reportSpec:
            json_.containsKey('reportSpec')
                ? NetworkReportSpec.fromJson(
                  json_['reportSpec'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reportSpec != null) 'reportSpec': reportSpec!,
  };
}

/// The streaming response for the AdMob Network report where the first response
/// contains the report header, then a stream of row responses, and finally a
/// footer as the last response message.
///
/// For example: \[{ "header": { "dateRange": { "startDate": {"year": 2018,
/// "month": 9, "day": 1}, "endDate": {"year": 2018, "month": 9, "day": 1} },
/// "localizationSettings": { "currencyCode": "USD", "languageCode": "en-US" } }
/// }, { "row": { "dimensionValues": { "DATE": {"value": "20180918"}, "APP": {
/// "value": "ca-app-pub-8123415297019784~1001342552", displayLabel: "My app
/// name!" } }, "metricValues": { "ESTIMATED_EARNINGS": {"microsValue": 6500000}
/// } } }, { "footer": {"matchingRowCount": 1} }\]
class GenerateNetworkReportResponse {
  /// Additional information about the generated report, such as warnings about
  /// the data.
  ReportFooter? footer;

  /// Report generation settings that describes the report contents, such as the
  /// report date range and localization settings.
  ReportHeader? header;

  /// Actual report data.
  ReportRow? row;

  GenerateNetworkReportResponse({this.footer, this.header, this.row});

  GenerateNetworkReportResponse.fromJson(core.Map json_)
    : this(
        footer:
            json_.containsKey('footer')
                ? ReportFooter.fromJson(
                  json_['footer'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        header:
            json_.containsKey('header')
                ? ReportHeader.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        row:
            json_.containsKey('row')
                ? ReportRow.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (footer != null) 'footer': footer!,
    if (header != null) 'header': header!,
    if (row != null) 'row': row!,
  };
}

/// Response for the ListAdSourcesRequest.
class ListAdSourcesResponse {
  /// The ad sources.
  core.List<AdSource>? adSources;

  /// Used to set the `page_token` in the `ListAdSourcesRequest` to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAdSourcesResponse({this.adSources, this.nextPageToken});

  ListAdSourcesResponse.fromJson(core.Map json_)
    : this(
        adSources:
            (json_['adSources'] as core.List?)
                ?.map(
                  (value) => AdSource.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adSources != null) 'adSources': adSources!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the ListAdUnitMappingsRequest.
class ListAdUnitMappingsResponse {
  /// The ad unit mappings from the specified account and ad unit.
  core.List<AdUnitMapping>? adUnitMappings;

  /// Used to set the `page_token` in the `ListAdUnitMappingsRequest` to
  /// retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAdUnitMappingsResponse({this.adUnitMappings, this.nextPageToken});

  ListAdUnitMappingsResponse.fromJson(core.Map json_)
    : this(
        adUnitMappings:
            (json_['adUnitMappings'] as core.List?)
                ?.map(
                  (value) => AdUnitMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnitMappings != null) 'adUnitMappings': adUnitMappings!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the ad units list request.
class ListAdUnitsResponse {
  /// The resulting ad units for the requested account.
  core.List<AdUnit>? adUnits;

  /// If not empty, indicates that there may be more ad units for the request;
  /// this value should be passed in a new `ListAdUnitsRequest`.
  core.String? nextPageToken;

  ListAdUnitsResponse({this.adUnits, this.nextPageToken});

  ListAdUnitsResponse.fromJson(core.Map json_)
    : this(
        adUnits:
            (json_['adUnits'] as core.List?)
                ?.map(
                  (value) => AdUnit.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnits != null) 'adUnits': adUnits!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the ListAdaptersRequest.
class ListAdaptersResponse {
  /// The adapter.
  core.List<Adapter>? adapters;

  /// Used to set the `page_token` in the `ListAdapterRequest` to retrieve the
  /// next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListAdaptersResponse({this.adapters, this.nextPageToken});

  ListAdaptersResponse.fromJson(core.Map json_)
    : this(
        adapters:
            (json_['adapters'] as core.List?)
                ?.map(
                  (value) => Adapter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adapters != null) 'adapters': adapters!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the apps list request.
class ListAppsResponse {
  /// The resulting apps for the requested account.
  core.List<App>? apps;

  /// If not empty, indicates that there may be more apps for the request; this
  /// value should be passed in a new `ListAppsRequest`.
  core.String? nextPageToken;

  ListAppsResponse({this.apps, this.nextPageToken});

  ListAppsResponse.fromJson(core.Map json_)
    : this(
        apps:
            (json_['apps'] as core.List?)
                ?.map(
                  (value) => App.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (apps != null) 'apps': apps!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the mediation groups list request.
class ListMediationGroupsResponse {
  /// The resulting mediation groups for the requested account.
  core.List<MediationGroup>? mediationGroups;

  /// If not empty, indicates that there may be more mediation groups for the
  /// request; this value should be passed in a new
  /// `ListMediationGroupsRequest`.
  core.String? nextPageToken;

  ListMediationGroupsResponse({this.mediationGroups, this.nextPageToken});

  ListMediationGroupsResponse.fromJson(core.Map json_)
    : this(
        mediationGroups:
            (json_['mediationGroups'] as core.List?)
                ?.map(
                  (value) => MediationGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mediationGroups != null) 'mediationGroups': mediationGroups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response for the publisher account list request.
class ListPublisherAccountsResponse {
  /// Publisher that the client credentials can access.
  core.List<PublisherAccount>? account;

  /// If not empty, indicates that there might be more accounts for the request;
  /// you must pass this value in a new `ListPublisherAccountsRequest`.
  core.String? nextPageToken;

  ListPublisherAccountsResponse({this.account, this.nextPageToken});

  ListPublisherAccountsResponse.fromJson(core.Map json_)
    : this(
        account:
            (json_['account'] as core.List?)
                ?.map(
                  (value) => PublisherAccount.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (account != null) 'account': account!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Localization settings for reports, such as currency and language.
///
/// It affects how metrics are calculated.
typedef LocalizationSettings = $LocalizationSettings;

/// The mediation A/B experiment.
class MediationAbExperiment {
  /// The experiment mediation lines for control.
  ///
  /// They are inherited from the parent mediation group. It is an output only
  /// field.
  ///
  /// Output only.
  core.List<MediationAbExperimentExperimentMediationLine>?
  controlMediationLines;

  /// The display name for the mediation A/B experiment.
  core.String? displayName;

  /// The time at which the experiment was ended or target to end (in UTC).
  ///
  /// Output only.
  core.String? endTime;

  /// Unique identifier for the mediation A/B experiment.
  ///
  /// It is an output only property.
  ///
  /// Output only.
  core.String? experimentId;

  /// The mediation group id this experiment belongs to.
  ///
  /// This can be used for filtering the experiments in the list experiments
  /// API.
  ///
  /// Output only.
  core.String? mediationGroupId;

  /// Resource name for this experiment.
  ///
  /// The format is accounts/{publisher_id}/
  /// mediationGroups/{mediation_group_id}/mediationAbExperiment/
  /// {mediation_group_experiment_id}. For example:
  /// accounts/pub-9876543210987654/mediationGroups/0123456789/
  /// mediationAbExperiment/12345
  core.String? name;

  /// The time at which the experiment was started (in UTC).
  ///
  /// Output only.
  core.String? startTime;

  /// The state of the experiment.
  ///
  /// It is an output only field.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXPERIMENT_STATE_UNSPECIFIED" : Default for an unset field. Do not use.
  /// - "EXPIRED" : The experiment has expired.
  /// - "RUNNING" : The experiment is running and thus used in serving.
  /// - "ENDED" : The experiment is ended, but not yet expired. Serving
  /// continues in the original configurations while the experiment is ready to
  /// call an action.
  core.String? state;

  /// The experiment mediation lines created for the treatment.
  ///
  /// They will be used for serving when the experiment status is RUNNING.
  core.List<MediationAbExperimentExperimentMediationLine>?
  treatmentMediationLines;

  /// The percentage of the mediation A/B experiment traffic that will be send
  /// to the treatment (variant B).
  ///
  /// The remainder is sent to the control (variant A). The percentage is
  /// expressed as an integer in the inclusive range of \[1,99\]. See
  /// https://support.google.com/admob/answer/9572326 for details.
  core.String? treatmentTrafficPercentage;

  /// The variant leader for the experiment according to some key metrics.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VARIANT_LEADER_UNSPECIFIED" : Default value of the enum. Do not use.
  /// - "CONTROL" : The control leading the experiment.
  /// - "TREATMENT" : The treatment leading the experiment.
  /// - "INSUFFICIENT_DATA" : Collected data (impressions) are insufficient to
  /// determine a leader.
  /// - "TOO_EARLY_TO_CALL" : Experiment hasn't run long enough to determine a
  /// leader.
  /// - "NO_VARIANT_LEADER" : Neither variant is a decisive winner in the
  /// observed data.
  core.String? variantLeader;

  MediationAbExperiment({
    this.controlMediationLines,
    this.displayName,
    this.endTime,
    this.experimentId,
    this.mediationGroupId,
    this.name,
    this.startTime,
    this.state,
    this.treatmentMediationLines,
    this.treatmentTrafficPercentage,
    this.variantLeader,
  });

  MediationAbExperiment.fromJson(core.Map json_)
    : this(
        controlMediationLines:
            (json_['controlMediationLines'] as core.List?)
                ?.map(
                  (value) =>
                      MediationAbExperimentExperimentMediationLine.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        experimentId: json_['experimentId'] as core.String?,
        mediationGroupId: json_['mediationGroupId'] as core.String?,
        name: json_['name'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        state: json_['state'] as core.String?,
        treatmentMediationLines:
            (json_['treatmentMediationLines'] as core.List?)
                ?.map(
                  (value) =>
                      MediationAbExperimentExperimentMediationLine.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        treatmentTrafficPercentage:
            json_['treatmentTrafficPercentage'] as core.String?,
        variantLeader: json_['variantLeader'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (controlMediationLines != null)
      'controlMediationLines': controlMediationLines!,
    if (displayName != null) 'displayName': displayName!,
    if (endTime != null) 'endTime': endTime!,
    if (experimentId != null) 'experimentId': experimentId!,
    if (mediationGroupId != null) 'mediationGroupId': mediationGroupId!,
    if (name != null) 'name': name!,
    if (startTime != null) 'startTime': startTime!,
    if (state != null) 'state': state!,
    if (treatmentMediationLines != null)
      'treatmentMediationLines': treatmentMediationLines!,
    if (treatmentTrafficPercentage != null)
      'treatmentTrafficPercentage': treatmentTrafficPercentage!,
    if (variantLeader != null) 'variantLeader': variantLeader!,
  };
}

/// The mediation group line for the experiment.
///
/// It will be used for serving during the run of the experiment.
class MediationAbExperimentExperimentMediationLine {
  /// The mediation group line used by the experiment.
  MediationGroupMediationGroupLine? mediationGroupLine;

  MediationAbExperimentExperimentMediationLine({this.mediationGroupLine});

  MediationAbExperimentExperimentMediationLine.fromJson(core.Map json_)
    : this(
        mediationGroupLine:
            json_.containsKey('mediationGroupLine')
                ? MediationGroupMediationGroupLine.fromJson(
                  json_['mediationGroupLine']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mediationGroupLine != null) 'mediationGroupLine': mediationGroupLine!,
  };
}

/// Describes an AdMob Mediation group.
class MediationGroup {
  /// User provided name for the mediation group.
  ///
  /// The maximum length allowed is 120 characters.
  core.String? displayName;

  /// The state of the mediation a/b experiment that belongs to this mediation
  /// group.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXPERIMENT_STATE_UNSPECIFIED" : Default value for an unset field. Do
  /// not use.
  /// - "RUNNING" : The mediation group has an experiment in the RUNNING state.
  /// - "NOT_RUNNING" : There is no experiment in the RUNNING state in the
  /// mediation group.
  core.String? mediationAbExperimentState;

  /// The ID of the mediation group.
  ///
  /// Example: "0123456789". This is a read only property.
  core.String? mediationGroupId;

  /// The mediation lines used for serving for this mediation group.
  ///
  /// Key is the ID of the mediation group line. For creation, use distinct
  /// negative values as placeholder.
  core.Map<core.String, MediationGroupMediationGroupLine>? mediationGroupLines;

  /// Resource name for this mediation group.
  ///
  /// Format is: accounts/{publisher_id}/mediationGroups/{mediation_group_id}
  /// Example: accounts/pub-9876543210987654/mediationGroups/0123456789
  core.String? name;

  /// The status of the mediation group.
  ///
  /// Only enabled mediation groups will be served.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "ENABLED" : The mediation group is active and used to serve ads or to
  /// collect stats.
  /// - "DISABLED" : The mediation group has been disabled and is no longer
  /// serving ads or collecting stats. Disabled mediation groups can be
  /// re-enabled.
  core.String? state;

  /// Set of criteria targeted by this mediation group, such as ad units and geo
  /// locations.
  MediationGroupTargeting? targeting;

  MediationGroup({
    this.displayName,
    this.mediationAbExperimentState,
    this.mediationGroupId,
    this.mediationGroupLines,
    this.name,
    this.state,
    this.targeting,
  });

  MediationGroup.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        mediationAbExperimentState:
            json_['mediationAbExperimentState'] as core.String?,
        mediationGroupId: json_['mediationGroupId'] as core.String?,
        mediationGroupLines: (json_['mediationGroupLines']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                MediationGroupMediationGroupLine.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
        targeting:
            json_.containsKey('targeting')
                ? MediationGroupTargeting.fromJson(
                  json_['targeting'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (mediationAbExperimentState != null)
      'mediationAbExperimentState': mediationAbExperimentState!,
    if (mediationGroupId != null) 'mediationGroupId': mediationGroupId!,
    if (mediationGroupLines != null)
      'mediationGroupLines': mediationGroupLines!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (targeting != null) 'targeting': targeting!,
  };
}

/// Settings for an ad network used by a mediation group.
class MediationGroupMediationGroupLine {
  /// The ID of the ad source this mediation line is associated with.
  core.String? adSourceId;

  /// References of the ad unit mappings for each ad unit associated with this
  /// mediation line.
  ///
  /// Key is the ad unit ID, value is resource name of the ad unit mapping. For
  /// mediation lines where the ad source id is the AdMob Network, ad unit
  /// mappings will be ignored.
  core.Map<core.String, core.String>? adUnitMappings;

  /// The CPM for this allocation line.
  ///
  /// $0.01 is the minimum allowed amount. For LIVE CPM modes, the default
  /// amount is $0.01. This value is ignored if `cpm_mode` is `LIVE`.
  /// **Warning:** "USD" is the only supported currency at the moment. The unit
  /// is in micros.
  core.String? cpmMicros;

  /// Indicates how the CPM for this mediation line is provided.
  ///
  /// Note that `MANUAL` and `LIVE` are the only fully-supported mode at the
  /// moment. Please use the AdMob UI (https://admob.google.com) if you wish to
  /// create or update to other cpm modes.
  /// Possible string values are:
  /// - "CPM_MODE_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "LIVE" : CPM is calculated per ad request based on the ad auction.
  /// - "MANUAL" : CPM is set by the user manually.
  /// - "ANO" : CPM is retrieved from the ad network using the publisher
  /// specified credentials. Output only.
  core.String? cpmMode;

  /// User-provided label for this mediation line.
  ///
  /// The maximum length allowed is 255 characters.
  core.String? displayName;

  /// The Mediation A/B experiment variant to which the mediation group line
  /// belongs to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VARIANT_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "VARIANT_A" : The mediation group line belongs to the variant A.
  /// - "VARIANT_B" : The mediation group line belongs to the variant B.
  /// - "ORIGINAL" : The mediation group line isn't a part of an experiment.
  core.String? experimentVariant;

  /// The 16 digit ID for this mediation line e.g. 0123456789012345.
  ///
  /// When creating a new mediation group line, use a distinct negative integer
  /// as the ID place holder.
  core.String? id;

  /// The status of the mediation group line.
  ///
  /// Only enabled mediation group lines will be served.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "ENABLED" : The mediation group line is active and used to serve ads.
  /// - "DISABLED" : The mediation group line has been disabled and is no longer
  /// served. Disabled mediation group lines can be re-enabled.
  /// - "REMOVED" : The mediation group line will be removed and no longer
  /// served. Removed mediation group lines can not be re-enabled and will no
  /// longer be visible. This is an input only field.
  core.String? state;

  MediationGroupMediationGroupLine({
    this.adSourceId,
    this.adUnitMappings,
    this.cpmMicros,
    this.cpmMode,
    this.displayName,
    this.experimentVariant,
    this.id,
    this.state,
  });

  MediationGroupMediationGroupLine.fromJson(core.Map json_)
    : this(
        adSourceId: json_['adSourceId'] as core.String?,
        adUnitMappings: (json_['adUnitMappings']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        cpmMicros: json_['cpmMicros'] as core.String?,
        cpmMode: json_['cpmMode'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        experimentVariant: json_['experimentVariant'] as core.String?,
        id: json_['id'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adSourceId != null) 'adSourceId': adSourceId!,
    if (adUnitMappings != null) 'adUnitMappings': adUnitMappings!,
    if (cpmMicros != null) 'cpmMicros': cpmMicros!,
    if (cpmMode != null) 'cpmMode': cpmMode!,
    if (displayName != null) 'displayName': displayName!,
    if (experimentVariant != null) 'experimentVariant': experimentVariant!,
    if (id != null) 'id': id!,
    if (state != null) 'state': state!,
  };
}

/// Set of criteria targeted by this mediation group.
///
/// For example, a mediation group can target specific ad unit IDs, platform,
/// format and geo location.
class MediationGroupTargeting {
  /// Ad units targeted by this mediation group.
  ///
  /// Example: "ca-app-pub-1234/8790".
  core.List<core.String>? adUnitIds;

  /// The Unicode country/region code (CLDR) of a location, such as "US".
  ///
  /// Unset if this mediation group does not exclude any region.
  core.List<core.String>? excludedRegionCodes;

  /// Ad format targeted by this mediation group.
  ///
  /// Examples: "banner", "native".
  core.String? format;

  /// The parameter can be used to target ad requests based on the availability
  /// of the IDFA.
  ///
  /// If set to ALL, the mediation group applies to all ad requests (with or
  /// without IDFA). If set to AVAILABLE, the mediation group applies to ad
  /// requests with IDFA. If set to NOT_AVAILABLE, the mediation group applies
  /// to ad requests without IDFA. Doesn't need to be specified for an ANDROID
  /// device.
  /// Possible string values are:
  /// - "IDFA_TARGETING_UNSPECIFIED" : Default value. This value is unused.
  /// - "ALL" : All the devices are targeted, regardless of IDFA availability.
  /// - "AVAILABLE" : Only the devices with IDFA availability are targeted.
  /// - "NOT_AVAILABLE" : Only the devices without IDFA availability are
  /// targeted.
  core.String? idfaTargeting;

  /// Describes the platform of the app.
  ///
  /// Examples: "IOS", "Android".
  core.String? platform;

  /// The Unicode country/region code (CLDR) of a location, such as "US".
  ///
  /// Unset if this mediation group targets all available regions. For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#unicode_region_subtag.
  core.List<core.String>? targetedRegionCodes;

  MediationGroupTargeting({
    this.adUnitIds,
    this.excludedRegionCodes,
    this.format,
    this.idfaTargeting,
    this.platform,
    this.targetedRegionCodes,
  });

  MediationGroupTargeting.fromJson(core.Map json_)
    : this(
        adUnitIds:
            (json_['adUnitIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        excludedRegionCodes:
            (json_['excludedRegionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        format: json_['format'] as core.String?,
        idfaTargeting: json_['idfaTargeting'] as core.String?,
        platform: json_['platform'] as core.String?,
        targetedRegionCodes:
            (json_['targetedRegionCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adUnitIds != null) 'adUnitIds': adUnitIds!,
    if (excludedRegionCodes != null)
      'excludedRegionCodes': excludedRegionCodes!,
    if (format != null) 'format': format!,
    if (idfaTargeting != null) 'idfaTargeting': idfaTargeting!,
    if (platform != null) 'platform': platform!,
    if (targetedRegionCodes != null)
      'targetedRegionCodes': targetedRegionCodes!,
  };
}

/// The specification for generating an AdMob Mediation report.
///
/// For example, the specification to get observed ECPM sliced by ad source and
/// app for the 'US' and 'CN' countries can look like the following example: {
/// "date_range": { "start_date": {"year": 2021, "month": 9, "day": 1},
/// "end_date": {"year": 2021, "month": 9, "day": 30} }, "dimensions":
/// \["AD_SOURCE", "APP", "COUNTRY"\], "metrics": \["OBSERVED_ECPM"\],
/// "dimension_filters": \[ { "dimension": "COUNTRY", "matches_any": {"values":
/// \[{"value": "US", "value": "CN"}\]} } \], "sort_conditions": \[
/// {"dimension":"APP", order: "ASCENDING"} \], "localization_settings": {
/// "currency_code": "USD", "language_code": "en-US" } } For a better
/// understanding, you can treat the preceding specification like the following
/// pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
/// MEDIATION_REPORT WHERE DATE \>= '2021-09-01' AND DATE \<= '2021-09-30' AND
/// COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
class MediationReportSpec {
  /// The date range for which the report is generated.
  DateRange? dateRange;

  /// Describes which report rows to match based on their dimension values.
  core.List<MediationReportSpecDimensionFilter>? dimensionFilters;

  /// List of dimensions of the report.
  ///
  /// The value combination of these dimensions determines the row of the
  /// report. If no dimensions are specified, the report returns a single row of
  /// requested metrics for the entire account.
  core.List<core.String>? dimensions;

  /// Localization settings of the report.
  LocalizationSettings? localizationSettings;

  /// Maximum number of report data rows to return.
  ///
  /// If the value is not set, the API returns as many rows as possible, up to
  /// 100000. Acceptable values are 1-100000, inclusive. Values larger than
  /// 100000 return an error.
  core.int? maxReportRows;

  /// List of metrics of the report.
  ///
  /// A report must specify at least one metric.
  core.List<core.String>? metrics;

  /// Describes the sorting of report rows.
  ///
  /// The order of the condition in the list defines its precedence; the earlier
  /// the condition, the higher its precedence. If no sort conditions are
  /// specified, the row ordering is undefined.
  core.List<MediationReportSpecSortCondition>? sortConditions;

  /// A report time zone.
  ///
  /// Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time
  /// zone is defined, the account default takes effect. Check default value by
  /// the get account action. **Warning:** The "America/Los_Angeles" is the only
  /// supported value at the moment.
  core.String? timeZone;

  MediationReportSpec({
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.localizationSettings,
    this.maxReportRows,
    this.metrics,
    this.sortConditions,
    this.timeZone,
  });

  MediationReportSpec.fromJson(core.Map json_)
    : this(
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensionFilters:
            (json_['dimensionFilters'] as core.List?)
                ?.map(
                  (value) => MediationReportSpecDimensionFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxReportRows: json_['maxReportRows'] as core.int?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sortConditions:
            (json_['sortConditions'] as core.List?)
                ?.map(
                  (value) => MediationReportSpecSortCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateRange != null) 'dateRange': dateRange!,
    if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (localizationSettings != null)
      'localizationSettings': localizationSettings!,
    if (maxReportRows != null) 'maxReportRows': maxReportRows!,
    if (metrics != null) 'metrics': metrics!,
    if (sortConditions != null) 'sortConditions': sortConditions!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// Describes which report rows to match based on their dimension values.
class MediationReportSpecDimensionFilter {
  /// Applies the filter criterion to the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_SOURCE" : The \[unique ID of the ad
  /// source\](/admob/api/v1/ad_sources) (for example, "5450213213286189855" and
  /// "AdMob Network" as label value).
  /// - "AD_SOURCE_INSTANCE" : The unique ID of the ad source instance (for
  /// example, "ca-app-pub-1234:asi:5678" and "AdMob (default)" as label value).
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/8790"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "MEDIATION_GROUP" : The unique ID of the mediation group (for example,
  /// "ca-app-pub-1234:mg:1234" and "AdMob (default)" as label value).
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1".
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0".
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads").
  core.String? dimension;

  /// Matches a row if its value for the specified dimension is in one of the
  /// values specified in this condition.
  StringList? matchesAny;

  MediationReportSpecDimensionFilter({this.dimension, this.matchesAny});

  MediationReportSpecDimensionFilter.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        matchesAny:
            json_.containsKey('matchesAny')
                ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimension != null) 'dimension': dimension!,
    if (matchesAny != null) 'matchesAny': matchesAny!,
  };
}

/// Sorting direction to be applied on a dimension or a metric.
typedef MediationReportSpecSortCondition = $MediationReportSpecSortCondition;

/// The specification for generating an AdMob Network report.
///
/// For example, the specification to get clicks and estimated earnings for only
/// the 'US' and 'CN' countries can look like the following example: {
/// 'date_range': { 'start_date': {'year': 2021, 'month': 9, 'day': 1},
/// 'end_date': {'year': 2021, 'month': 9, 'day': 30} }, 'dimensions': \['DATE',
/// 'APP', 'COUNTRY'\], 'metrics': \['CLICKS', 'ESTIMATED_EARNINGS'\],
/// 'dimension_filters': \[ { 'dimension': 'COUNTRY', 'matches_any': {'values':
/// \[{'value': 'US', 'value': 'CN'}\]} } \], 'sort_conditions': \[
/// {'dimension':'APP', order: 'ASCENDING'}, {'metric':'CLICKS', order:
/// 'DESCENDING'} \], 'localization_settings': { 'currency_code': 'USD',
/// 'language_code': 'en-US' } } For a better understanding, you can treat the
/// preceding specification like the following pseudo SQL: SELECT DATE, APP,
/// COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE \>=
/// '2021-09-01' AND DATE \<= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY
/// DATE, APP, COUNTRY ORDER BY APP ASC, CLICKS DESC;
class NetworkReportSpec {
  /// The date range for which the report is generated.
  DateRange? dateRange;

  /// Describes which report rows to match based on their dimension values.
  core.List<NetworkReportSpecDimensionFilter>? dimensionFilters;

  /// List of dimensions of the report.
  ///
  /// The value combination of these dimensions determines the row of the
  /// report. If no dimensions are specified, the report returns a single row of
  /// requested metrics for the entire account.
  core.List<core.String>? dimensions;

  /// Localization settings of the report.
  LocalizationSettings? localizationSettings;

  /// Maximum number of report data rows to return.
  ///
  /// If the value is not set, the API returns as many rows as possible, up to
  /// 100000. Acceptable values are 1-100000, inclusive. Values larger than
  /// 100000 return an error.
  core.int? maxReportRows;

  /// List of metrics of the report.
  ///
  /// A report must specify at least one metric.
  core.List<core.String>? metrics;

  /// Describes the sorting of report rows.
  ///
  /// The order of the condition in the list defines its precedence; the earlier
  /// the condition, the higher its precedence. If no sort conditions are
  /// specified, the row ordering is undefined.
  core.List<NetworkReportSpecSortCondition>? sortConditions;

  /// A report time zone.
  ///
  /// Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time
  /// zone is defined, the account default takes effect. Check default value by
  /// the get account action. **Warning:** The "America/Los_Angeles" is the only
  /// supported value at the moment.
  core.String? timeZone;

  NetworkReportSpec({
    this.dateRange,
    this.dimensionFilters,
    this.dimensions,
    this.localizationSettings,
    this.maxReportRows,
    this.metrics,
    this.sortConditions,
    this.timeZone,
  });

  NetworkReportSpec.fromJson(core.Map json_)
    : this(
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        dimensionFilters:
            (json_['dimensionFilters'] as core.List?)
                ?.map(
                  (value) => NetworkReportSpecDimensionFilter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        dimensions:
            (json_['dimensions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maxReportRows: json_['maxReportRows'] as core.int?,
        metrics:
            (json_['metrics'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sortConditions:
            (json_['sortConditions'] as core.List?)
                ?.map(
                  (value) => NetworkReportSpecSortCondition.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        timeZone: json_['timeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateRange != null) 'dateRange': dateRange!,
    if (dimensionFilters != null) 'dimensionFilters': dimensionFilters!,
    if (dimensions != null) 'dimensions': dimensions!,
    if (localizationSettings != null)
      'localizationSettings': localizationSettings!,
    if (maxReportRows != null) 'maxReportRows': maxReportRows!,
    if (metrics != null) 'metrics': metrics!,
    if (sortConditions != null) 'sortConditions': sortConditions!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// Describes which report rows to match based on their dimension values.
class NetworkReportSpecDimensionFilter {
  /// Applies the filter criterion to the specified dimension.
  /// Possible string values are:
  /// - "DIMENSION_UNSPECIFIED" : Default value for an unset field. Do not use.
  /// - "DATE" : A date in the YYYYMMDD format (for example, "20210701").
  /// Requests can specify at most one time dimension.
  /// - "MONTH" : A month in the YYYYMM format (for example, "202107"). Requests
  /// can specify at most one time dimension.
  /// - "WEEK" : The date of the first day of a week in the YYYYMMDD format (for
  /// example, "20210701"). Requests can specify at most one time dimension.
  /// - "AD_UNIT" : The unique ID of the ad unit (for example,
  /// "ca-app-pub-1234/1234"). If AD_UNIT dimension is specified, then APP is
  /// included automatically.
  /// - "APP" : The unique ID of the mobile application (for example,
  /// "ca-app-pub-1234~1234").
  /// - "AD_TYPE" : Type of the ad (for example, "text" or "image"), an ad
  /// delivery dimension. **Warning:** The dimension is incompatible with
  /// \[AD_REQUESTS\](#Metric.ENUM_VALUES.AD_REQUESTS),
  /// \[MATCH_RATE\](#Metric.ENUM_VALUES.MATCH_RATE) and
  /// \[IMPRESSION_RPM\](#Metric.ENUM_VALUES.IMPRESSION_RPM) metrics.
  /// - "COUNTRY" : CLDR country code of the place where the ad views/clicks
  /// occur (for example, "US" or "FR"). This is a geography dimension.
  /// - "FORMAT" : Format of the ad unit (for example, "banner", "native"), an
  /// ad delivery dimension.
  /// - "PLATFORM" : Mobile OS platform of the app (for example, "Android" or
  /// "iOS").
  /// - "MOBILE_OS_VERSION" : Mobile operating system version, e.g. "iOS
  /// 13.5.1".
  /// - "GMA_SDK_VERSION" : GMA SDK version, e.g. "iOS 7.62.0".
  /// - "APP_VERSION_NAME" : For Android, the app version name can be found in
  /// versionName in PackageInfo. For iOS, the app version name can be found in
  /// CFBundleShortVersionString.
  /// - "SERVING_RESTRICTION" : Restriction mode for ads serving (e.g.
  /// "Non-personalized ads").
  core.String? dimension;

  /// Matches a row if its value for the specified dimension is in one of the
  /// values specified in this condition.
  StringList? matchesAny;

  NetworkReportSpecDimensionFilter({this.dimension, this.matchesAny});

  NetworkReportSpecDimensionFilter.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.String?,
        matchesAny:
            json_.containsKey('matchesAny')
                ? StringList.fromJson(
                  json_['matchesAny'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimension != null) 'dimension': dimension!,
    if (matchesAny != null) 'matchesAny': matchesAny!,
  };
}

/// Sorting direction to be applied on a dimension or a metric.
typedef NetworkReportSpecSortCondition = $NetworkReportSpecSortCondition;

/// A publisher account contains information relevant to the use of this API,
/// such as the time zone used for the reports.
typedef PublisherAccount = $PublisherAccount;

/// Groups data available after report generation, for example, warnings and row
/// counts.
///
/// Always sent as the last message in the stream response.
class ReportFooter {
  /// Total number of rows that matched the request.
  ///
  /// Warning: This count does NOT always match the number of rows in the
  /// response. Do not make that assumption when processing the response.
  core.String? matchingRowCount;

  /// Warnings associated with generation of the report.
  core.List<ReportWarning>? warnings;

  ReportFooter({this.matchingRowCount, this.warnings});

  ReportFooter.fromJson(core.Map json_)
    : this(
        matchingRowCount: json_['matchingRowCount'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => ReportWarning.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (matchingRowCount != null) 'matchingRowCount': matchingRowCount!,
    if (warnings != null) 'warnings': warnings!,
  };
}

/// Groups data helps to treat the generated report.
///
/// Always sent as a first message in the stream response.
class ReportHeader {
  /// The date range for which the report is generated.
  ///
  /// This is identical to the range specified in the report request.
  DateRange? dateRange;

  /// Localization settings of the report.
  ///
  /// This is identical to the settings in the report request.
  LocalizationSettings? localizationSettings;

  /// The report time zone.
  ///
  /// The value is a time-zone ID as specified by the CLDR project, for example,
  /// "America/Los_Angeles".
  core.String? reportingTimeZone;

  ReportHeader({
    this.dateRange,
    this.localizationSettings,
    this.reportingTimeZone,
  });

  ReportHeader.fromJson(core.Map json_)
    : this(
        dateRange:
            json_.containsKey('dateRange')
                ? DateRange.fromJson(
                  json_['dateRange'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        localizationSettings:
            json_.containsKey('localizationSettings')
                ? LocalizationSettings.fromJson(
                  json_['localizationSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        reportingTimeZone: json_['reportingTimeZone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dateRange != null) 'dateRange': dateRange!,
    if (localizationSettings != null)
      'localizationSettings': localizationSettings!,
    if (reportingTimeZone != null) 'reportingTimeZone': reportingTimeZone!,
  };
}

/// A row of the returning report.
class ReportRow {
  /// Map of dimension values in a row, with keys as enum name of the
  /// dimensions.
  core.Map<core.String, ReportRowDimensionValue>? dimensionValues;

  /// Map of metric values in a row, with keys as enum name of the metrics.
  ///
  /// If a metric being requested has no value returned, the map will not
  /// include it.
  core.Map<core.String, ReportRowMetricValue>? metricValues;

  ReportRow({this.dimensionValues, this.metricValues});

  ReportRow.fromJson(core.Map json_)
    : this(
        dimensionValues: (json_['dimensionValues']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ReportRowDimensionValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        metricValues: (json_['metricValues']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                ReportRowMetricValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dimensionValues != null) 'dimensionValues': dimensionValues!,
    if (metricValues != null) 'metricValues': metricValues!,
  };
}

/// Representation of a dimension value.
typedef ReportRowDimensionValue = $ReportRowDimensionValue;

/// Representation of a metric value.
typedef ReportRowMetricValue = $ReportRowMetricValue;

/// Warnings associated with generation of the report.
typedef ReportWarning = $ReportWarning;

/// Request to end the mediation A/B experiment and choose a winning variant.
class StopMediationAbExperimentRequest {
  /// The choice for the winning variant.
  /// Possible string values are:
  /// - "VARIANT_CHOICE_UNSPECIFIED" : Default value for an unset field. Do not
  /// use.
  /// - "VARIANT_CHOICE_A" : Use the mediation lines from Variant A and complete
  /// the experiment. Variant A contains the original serving lines before the
  /// experiment creation.
  /// - "VARIANT_CHOICE_B" : Use the mediation lines form Variant B and complete
  /// the experiment. Variant B contains the newly added serving lines.
  core.String? variantChoice;

  StopMediationAbExperimentRequest({this.variantChoice});

  StopMediationAbExperimentRequest.fromJson(core.Map json_)
    : this(variantChoice: json_['variantChoice'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (variantChoice != null) 'variantChoice': variantChoice!,
  };
}

/// List of string values.
typedef StringList = $StringList01;
