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

/// AdSense Platform API - v1alpha
///
/// For more information, see <https://developers.google.com/adsense/platforms/>
///
/// Create an instance of [AdSensePlatformApi] to access these resources:
///
/// - [AccountsResource]
///   - [AccountsPlatformsResource]
///     - [AccountsPlatformsChildAccountsResource]
///       - [AccountsPlatformsChildAccountsSitesResource]
///     - [AccountsPlatformsGroupsResource]
/// - [PlatformsResource]
///   - [PlatformsAccountsResource]
///     - [PlatformsAccountsEventsResource]
///     - [PlatformsAccountsSitesResource]
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

class AdSensePlatformApi {
  /// View and manage your AdSense data
  static const adsenseScope = 'https://www.googleapis.com/auth/adsense';

  /// View your AdSense data
  static const adsenseReadonlyScope =
      'https://www.googleapis.com/auth/adsense.readonly';

  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  PlatformsResource get platforms => PlatformsResource(_requester);

  AdSensePlatformApi(
    http.Client client, {
    core.String rootUrl = 'https://adsenseplatform.googleapis.com/',
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

  AccountsPlatformsResource get platforms =>
      AccountsPlatformsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsPlatformsResource {
  final commons.ApiRequester _requester;

  AccountsPlatformsChildAccountsResource get childAccounts =>
      AccountsPlatformsChildAccountsResource(_requester);
  AccountsPlatformsGroupsResource get groups =>
      AccountsPlatformsGroupsResource(_requester);

  AccountsPlatformsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a platform.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the platform to retrieve. Format:
  /// accounts/{account}/platforms/{platform}
  /// Value must have pattern `^accounts/\[^/\]+/platforms/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Platform].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Platform> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Platform.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists platforms for a specified account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the platforms. Format:
  /// accounts/{account}
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of platforms to include in the
  /// response, used for paging. If unspecified, at most 10000 platforms will be
  /// returned. The maximum value is 10000; values above 10000 will be coerced
  /// to 10000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPlatforms` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListPlatforms` must match
  /// the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlatformsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlatformsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/platforms';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlatformsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsPlatformsChildAccountsResource {
  final commons.ApiRequester _requester;

  AccountsPlatformsChildAccountsSitesResource get sites =>
      AccountsPlatformsChildAccountsSitesResource(_requester);

  AccountsPlatformsChildAccountsResource(commons.ApiRequester client)
    : _requester = client;
}

class AccountsPlatformsChildAccountsSitesResource {
  final commons.ApiRequester _requester;

  AccountsPlatformsChildAccountsSitesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a Platform Child Site for a specified Platform Child Account and
  /// site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the platform child site to retrieve.
  /// Format:
  /// accounts/{account}/platforms/{platform}/childAccounts/{child_account}/sites/{platform_child_site}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/platforms/\[^/\]+/childAccounts/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformChildSite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformChildSite> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlatformChildSite.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Platform Child Sites for a specified Platform Child Account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the child account under the given
  /// platform which owns the platform child sites. Format:
  /// accounts/{account}/platforms/{platform}/childAccounts/{child_account}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/platforms/\[^/\]+/childAccounts/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of children to include in the
  /// response, used for paging. If unspecified, at most 10000 platforms will be
  /// returned. The maximum value is 10000; values above 10000 will be coerced
  /// to 10000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPlatformChildSites` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListPlatformChildSites` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlatformChildSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlatformChildSitesResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlatformChildSitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a Platform Child Site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Format:
  /// accounts/{account}/platforms/{platform}/childAccounts/{child_account}/sites/{platform_child_site}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/platforms/\[^/\]+/childAccounts/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update - currently only
  /// supports updating the `platform_group` field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformChildSite].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformChildSite> patch(
    PlatformChildSite request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return PlatformChildSite.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class AccountsPlatformsGroupsResource {
  final commons.ApiRequester _requester;

  AccountsPlatformsGroupsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a Platform Group for a specified Platform and group.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the platform group to retrieve. Format:
  /// accounts/{account}/platforms/{platform}/groups/{group}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/platforms/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformGroup> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlatformGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Platform Groups for a specified Platform.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the platform to retrieve. Format:
  /// accounts/{account}/platforms/{platform}
  /// Value must have pattern `^accounts/\[^/\]+/platforms/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of groups to include in the
  /// response, used for paging. If unspecified, at most 10000 groups will be
  /// returned. The maximum value is 10000; values above 10000 will be coerced
  /// to 10000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPlatformGroups` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListPlatformGroups`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlatformGroupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlatformGroupsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/groups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlatformGroupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update a Platform Group.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Format:
  /// accounts/{account}/platforms/{platform}/groups/{platform_group}
  /// Value must have pattern
  /// `^accounts/\[^/\]+/platforms/\[^/\]+/groups/\[^/\]+$`.
  ///
  /// [updateMask] - Optional. The list of fields to update - currently only
  /// supports updating the `description` field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlatformGroup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlatformGroup> patch(
    PlatformGroup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return PlatformGroup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PlatformsResource {
  final commons.ApiRequester _requester;

  PlatformsAccountsResource get accounts =>
      PlatformsAccountsResource(_requester);

  PlatformsResource(commons.ApiRequester client) : _requester = client;
}

class PlatformsAccountsResource {
  final commons.ApiRequester _requester;

  PlatformsAccountsEventsResource get events =>
      PlatformsAccountsEventsResource(_requester);
  PlatformsAccountsSitesResource get sites =>
      PlatformsAccountsSitesResource(_requester);

  PlatformsAccountsResource(commons.ApiRequester client) : _requester = client;

  /// Closes a sub-account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Account to close. Format:
  /// platforms/{platform}/accounts/{account_id}
  /// Value must have pattern `^platforms/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloseAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloseAccountResponse> close(
    CloseAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':close';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CloseAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a sub-account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Platform to create an account for. Format:
  /// platforms/{platform}
  /// Value must have pattern `^platforms/\[^/\]+$`.
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
  async.Future<Account> create(
    Account request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about the selected sub-account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Account to get information about. Format:
  /// platforms/{platform}/accounts/{account_id}
  /// Value must have pattern `^platforms/\[^/\]+/accounts/\[^/\]+$`.
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
  async.Future<Account> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Account.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists a partial view of sub-accounts for a specific parent account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Platform who parents the accounts. Format:
  /// platforms/{platform}
  /// Value must have pattern `^platforms/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of accounts to include in the
  /// response, used for paging. If unspecified, at most 10000 accounts will be
  /// returned. The maximum value is 10000; values above 10000 will be coerced
  /// to 10000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListAccounts` call. Provide this to retrieve the subsequent page.
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
  async.Future<ListAccountsResponse> list(
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/accounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAccountsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Looks up information about a sub-account for a specified
  /// creation_request_id.
  ///
  /// If no account exists for the given creation_request_id, returns 404.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Platform who parents the account. Format:
  /// platforms/{platform}
  /// Value must have pattern `^platforms/\[^/\]+$`.
  ///
  /// [creationRequestId] - Optional. The creation_request_id provided when
  /// calling createAccount.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LookupAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LookupAccountResponse> lookup(
    core.String parent, {
    core.String? creationRequestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (creationRequestId != null) 'creationRequestId': [creationRequestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/accounts:lookup';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LookupAccountResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class PlatformsAccountsEventsResource {
  final commons.ApiRequester _requester;

  PlatformsAccountsEventsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates an account event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Account to log events about. Format:
  /// platforms/{platform}/accounts/{account}
  /// Value must have pattern `^platforms/\[^/\]+/accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Event].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Event> create(
    Event request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/events';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Event.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlatformsAccountsSitesResource {
  final commons.ApiRequester _requester;

  PlatformsAccountsSitesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a site for a specified account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Account to create site. Format:
  /// platforms/{platform}/accounts/{account_id}
  /// Value must have pattern `^platforms/\[^/\]+/accounts/\[^/\]+$`.
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
  async.Future<Site> create(
    Site request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a site from a specified account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site to delete. Format:
  /// platforms/{platform}/accounts/{account}/sites/{site}
  /// Value must have pattern
  /// `^platforms/\[^/\]+/accounts/\[^/\]+/sites/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a site from a specified sub-account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site to retrieve. Format:
  /// platforms/{platform}/accounts/{account}/sites/{site}
  /// Value must have pattern
  /// `^platforms/\[^/\]+/accounts/\[^/\]+/sites/\[^/\]+$`.
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
  async.Future<Site> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Site.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists sites for a specific account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account which owns the sites. Format:
  /// platforms/{platform}/accounts/{account}
  /// Value must have pattern `^platforms/\[^/\]+/accounts/\[^/\]+$`.
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

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/sites';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSitesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Requests the review of a site.
  ///
  /// The site should be in REQUIRES_REVIEW or NEEDS_ATTENTION state. Note: Make
  /// sure you place an
  /// [ad tag](https://developers.google.com/adsense/platforms/direct/ad-tags)
  /// on your site before requesting a review.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site to submit for review. Format:
  /// platforms/{platform}/accounts/{account}/sites/{site}
  /// Value must have pattern
  /// `^platforms/\[^/\]+/accounts/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RequestSiteReviewResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RequestSiteReviewResponse> requestReview(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha/' + core.Uri.encodeFull('$name') + ':requestReview';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return RequestSiteReviewResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Representation of an Account.
class Account {
  /// Creation time of the account.
  ///
  /// Output only.
  core.String? createTime;

  /// An opaque token that uniquely identifies the account among all the
  /// platform's accounts.
  ///
  /// This string may contain at most 64 non-whitespace ASCII characters, but
  /// otherwise has no predefined structure. However, it is expected to be a
  /// platform-specific identifier for the user creating the account, so that
  /// only a single account can be created for any given user. This field must
  /// not contain any information that is recognizable as personally
  /// identifiable information. e.g. it should not be an email address or login
  /// name. Once an account has been created, a second attempt to create an
  /// account using the same creation_request_id will result in an
  /// ALREADY_EXISTS error.
  ///
  /// Required.
  core.String? creationRequestId;

  /// Display name of this account.
  core.String? displayName;

  /// Resource name of the account.
  ///
  /// Format: platforms/pub-\[0-9\]+/accounts/pub-\[0-9\]+
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// CLDR region code of the country/region of the address. Set this to country
  /// code of the child account if known, otherwise to your own country code.
  ///
  /// Required.
  core.String? regionCode;

  /// Approval state of the account.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified.
  /// - "UNCHECKED" : Unchecked.
  /// - "APPROVED" : The account is ready to serve ads.
  /// - "DISAPPROVED" : The account has been blocked from serving ads.
  core.String? state;

  /// The IANA TZ timezone code of this account.
  ///
  /// For more information, see
  /// https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. This field
  /// is used for reporting. It is recommended to set it to the same value for
  /// all child accounts.
  ///
  /// Required.
  TimeZone? timeZone;

  Account({
    this.createTime,
    this.creationRequestId,
    this.displayName,
    this.name,
    this.regionCode,
    this.state,
    this.timeZone,
  });

  Account.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        creationRequestId: json_['creationRequestId'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        regionCode: json_['regionCode'] as core.String?,
        state: json_['state'] as core.String?,
        timeZone:
            json_.containsKey('timeZone')
                ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (creationRequestId != null) 'creationRequestId': creationRequestId!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (regionCode != null) 'regionCode': regionCode!,
    if (state != null) 'state': state!,
    if (timeZone != null) 'timeZone': timeZone!,
  };
}

/// Address data.
typedef Address = $Address00;

/// Request definition for the account close rpc.
typedef CloseAccountRequest = $Empty;

/// Response definition for the account close rpc.
typedef CloseAccountResponse = $Empty;

/// A representation of a decimal value, such as 2.5.
///
/// Clients may convert values into language-native decimal formats, such as
/// Java's
/// [BigDecimal](https://docs.oracle.com/en/java/javase/11/docs/api/java.base/java/math/BigDecimal.html)
/// or Python's
/// [decimal.Decimal](https://docs.python.org/3/library/decimal.html).
typedef Decimal = $Decimal;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A platform sub-account event to record spam signals.
class Event {
  /// Information associated with the event.
  ///
  /// Required.
  EventInfo? eventInfo;

  /// Event timestamp.
  ///
  /// Required.
  core.String? eventTime;

  /// Event type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Do not use. You must set an event type
  /// explicitly.
  /// - "LOG_IN_VIA_PLATFORM" : Log in via platform.
  /// - "SIGN_UP_VIA_PLATFORM" : Sign up via platform.
  core.String? eventType;

  Event({this.eventInfo, this.eventTime, this.eventType});

  Event.fromJson(core.Map json_)
    : this(
        eventInfo:
            json_.containsKey('eventInfo')
                ? EventInfo.fromJson(
                  json_['eventInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventTime: json_['eventTime'] as core.String?,
        eventType: json_['eventType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventInfo != null) 'eventInfo': eventInfo!,
    if (eventTime != null) 'eventTime': eventTime!,
    if (eventType != null) 'eventType': eventType!,
  };
}

/// Private information for partner recorded events (PII).
class EventInfo {
  /// The billing address of the publisher associated with this event, if
  /// available.
  Address? billingAddress;

  /// The email address that is associated with the publisher when performing
  /// the event.
  ///
  /// Required.
  core.String? email;

  EventInfo({this.billingAddress, this.email});

  EventInfo.fromJson(core.Map json_)
    : this(
        billingAddress:
            json_.containsKey('billingAddress')
                ? Address.fromJson(
                  json_['billingAddress']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        email: json_['email'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (billingAddress != null) 'billingAddress': billingAddress!,
    if (email != null) 'email': email!,
  };
}

/// Response definition for the list accounts rpc.
class ListAccountsResponse {
  /// The Accounts returned in the list response.
  ///
  /// Represented by a partial view of the Account resource, populating `name`
  /// and `creation_request_id`.
  core.List<Account>? accounts;

  /// Continuation token used to page through accounts.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  ListAccountsResponse({this.accounts, this.nextPageToken});

  ListAccountsResponse.fromJson(core.Map json_)
    : this(
        accounts:
            (json_['accounts'] as core.List?)
                ?.map(
                  (value) => Account.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accounts != null) 'accounts': accounts!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response definition for the list platform child sites rpc.
class ListPlatformChildSitesResponse {
  /// Continuation token used to page through platforms.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The platform child sites returned in this list response.
  core.List<PlatformChildSite>? platformChildSites;

  ListPlatformChildSitesResponse({this.nextPageToken, this.platformChildSites});

  ListPlatformChildSitesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        platformChildSites:
            (json_['platformChildSites'] as core.List?)
                ?.map(
                  (value) => PlatformChildSite.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (platformChildSites != null) 'platformChildSites': platformChildSites!,
  };
}

/// Response definition for the platform groups list rpc.
class ListPlatformGroupsResponse {
  /// Continuation token used to page through platforms.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The platform groups returned in this list response.
  core.List<PlatformGroup>? platformGroups;

  ListPlatformGroupsResponse({this.nextPageToken, this.platformGroups});

  ListPlatformGroupsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        platformGroups:
            (json_['platformGroups'] as core.List?)
                ?.map(
                  (value) => PlatformGroup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (platformGroups != null) 'platformGroups': platformGroups!,
  };
}

/// Response definition for the platform list rpc.
class ListPlatformsResponse {
  /// Continuation token used to page through platforms.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The platforms returned in this list response.
  core.List<Platform>? platforms;

  ListPlatformsResponse({this.nextPageToken, this.platforms});

  ListPlatformsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        platforms:
            (json_['platforms'] as core.List?)
                ?.map(
                  (value) => Platform.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (platforms != null) 'platforms': platforms!,
  };
}

/// Response definition for the site list rpc.
class ListSitesResponse {
  /// Continuation token used to page through sites.
  ///
  /// To retrieve the next page of the results, set the next request's
  /// "page_token" value to this.
  core.String? nextPageToken;

  /// The sites returned in this list response.
  core.List<Site>? sites;

  ListSitesResponse({this.nextPageToken, this.sites});

  ListSitesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sites:
            (json_['sites'] as core.List?)
                ?.map(
                  (value) => Site.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sites != null) 'sites': sites!,
  };
}

/// Response definition for the lookup account rpc.
typedef LookupAccountResponse = $LookupAccountResponse;

/// Representation of a Transparent Platform.
class Platform {
  /// Default platform group for the platform.
  core.String? defaultPlatformGroup;

  /// Description of the platform.
  ///
  /// Output only.
  core.String? description;

  /// Identifier.
  ///
  /// Resource name of a platform. Format:
  /// accounts/{account}/platforms/{platform}
  core.String? name;

  Platform({this.defaultPlatformGroup, this.description, this.name});

  Platform.fromJson(core.Map json_)
    : this(
        defaultPlatformGroup: json_['defaultPlatformGroup'] as core.String?,
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultPlatformGroup != null)
      'defaultPlatformGroup': defaultPlatformGroup!,
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
  };
}

/// Representation of a Transparent Platform Child Site.
class PlatformChildSite {
  /// Domain URL of the Platform Child Site.
  ///
  /// Part of the PlatformChildSite name.
  ///
  /// Output only.
  core.String? domain;

  /// Identifier.
  ///
  /// Format:
  /// accounts/{account}/platforms/{platform}/childAccounts/{child_account}/sites/{platform_child_site}
  core.String? name;

  /// Resource name of the Platform Group of the Platform Child Site.
  core.String? platformGroup;

  PlatformChildSite({this.domain, this.name, this.platformGroup});

  PlatformChildSite.fromJson(core.Map json_)
    : this(
        domain: json_['domain'] as core.String?,
        name: json_['name'] as core.String?,
        platformGroup: json_['platformGroup'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (domain != null) 'domain': domain!,
    if (name != null) 'name': name!,
    if (platformGroup != null) 'platformGroup': platformGroup!,
  };
}

/// Representation of a Transparent Platform Group.
class PlatformGroup {
  /// Description of the PlatformGroup.
  ///
  /// Required.
  core.String? description;

  /// Identifier.
  ///
  /// Format: accounts/{account}/platforms/{platform}/groups/{platform_group}
  core.String? name;

  /// The revenue share of the PlatformGroup, in millipercent (e.g. 15000 =
  /// 15%).
  ///
  /// Output only.
  Decimal? revshareMillipercent;

  PlatformGroup({this.description, this.name, this.revshareMillipercent});

  PlatformGroup.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        name: json_['name'] as core.String?,
        revshareMillipercent:
            json_.containsKey('revshareMillipercent')
                ? Decimal.fromJson(
                  json_['revshareMillipercent']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (name != null) 'name': name!,
    if (revshareMillipercent != null)
      'revshareMillipercent': revshareMillipercent!,
  };
}

/// Response definition for the site request review rpc.
typedef RequestSiteReviewResponse = $Empty;

/// Representation of a Site.
typedef Site = $Site01;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;
