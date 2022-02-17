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

/// Google Analytics Admin API - v1alpha
///
/// For more information, see
/// <https://developers.google.com/analytics/devguides/config/>
///
/// Create an instance of [GoogleAnalyticsAdminApi] to access these resources:
///
/// - [AccountSummariesResource]
/// - [AccountsResource]
///   - [AccountsUserLinksResource]
/// - [PropertiesResource]
///   - [PropertiesAndroidAppDataStreamsResource]
///   - [PropertiesConversionEventsResource]
///   - [PropertiesCustomDimensionsResource]
///   - [PropertiesCustomMetricsResource]
///   - [PropertiesDataStreamsResource]
///     - [PropertiesDataStreamsMeasurementProtocolSecretsResource]
///   - [PropertiesDisplayVideo360AdvertiserLinkProposalsResource]
///   - [PropertiesDisplayVideo360AdvertiserLinksResource]
///   - [PropertiesFirebaseLinksResource]
///   - [PropertiesGoogleAdsLinksResource]
///   - [PropertiesIosAppDataStreamsResource]
///   - [PropertiesUserLinksResource]
///   - [PropertiesWebDataStreamsResource]
library analyticsadmin.v1alpha;

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

class GoogleAnalyticsAdminApi {
  /// Edit Google Analytics management entities
  static const analyticsEditScope =
      'https://www.googleapis.com/auth/analytics.edit';

  /// Manage Google Analytics Account users by email address
  static const analyticsManageUsersScope =
      'https://www.googleapis.com/auth/analytics.manage.users';

  /// View Google Analytics user permissions
  static const analyticsManageUsersReadonlyScope =
      'https://www.googleapis.com/auth/analytics.manage.users.readonly';

  /// See and download your Google Analytics data
  static const analyticsReadonlyScope =
      'https://www.googleapis.com/auth/analytics.readonly';

  final commons.ApiRequester _requester;

  AccountSummariesResource get accountSummaries =>
      AccountSummariesResource(_requester);
  AccountsResource get accounts => AccountsResource(_requester);
  PropertiesResource get properties => PropertiesResource(_requester);

  GoogleAnalyticsAdminApi(http.Client client,
      {core.String rootUrl = 'https://analyticsadmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountSummariesResource {
  final commons.ApiRequester _requester;

  AccountSummariesResource(commons.ApiRequester client) : _requester = client;

  /// Returns summaries of all accounts accessible by the caller.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of AccountSummary resources to return. The
  /// service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 resources will be returned. The maximum
  /// value is 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListAccountSummaries` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListAccountSummaries`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListAccountSummariesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccountSummariesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/accountSummaries';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsUserLinksResource get userLinks =>
      AccountsUserLinksResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;

  /// Marks target Account as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted accounts. However,
  /// they can be restored using the Trash Can UI. If the accounts are not
  /// restored before the expiration time, the account and all child resources
  /// (eg: Properties, GoogleAdsLinks, Streams, UserLinks) will be permanently
  /// purged. https://support.google.com/analytics/answer/6154772 Returns an
  /// error if the target is not found.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Account to soft-delete. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single Account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the account to lookup. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccount> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get data sharing settings on an account.
  ///
  /// Data sharing settings are singletons.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// accounts/{account}/dataSharingSettings Example:
  /// "accounts/1000/dataSharingSettings"
  /// Value must have pattern `^accounts/\[^/\]+/dataSharingSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataSharingSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataSharingSettings>
      getDataSharingSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns all accounts accessible by the caller.
  ///
  /// Note that these accounts might not currently have GA4 properties.
  /// Soft-deleted (ie: "trashed") accounts are excluded by default. Returns an
  /// empty list if no relevant accounts are found.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListAccounts` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListAccounts` must match the call that provided
  /// the page token.
  ///
  /// [showDeleted] - Whether to include soft-deleted (ie: "trashed") Accounts
  /// in the results. Accounts can be inspected to determine whether they are
  /// deleted or not.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAccountsResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this account. Format:
  /// accounts/{account} Example: "accounts/100"
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAccount> patch(
    GoogleAnalyticsAdminV1alphaAccount request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Requests a ticket for creating an account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse>
      provisionAccountTicket(
    GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/accounts:provisionAccountTicket';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Searches through all changes to an account or its children given the
  /// specified set of filters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [account] - Required. The account resource for which to return change
  /// history resources.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse>
      searchChangeHistoryEvents(
    GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest request,
    core.String account, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$account') +
        ':searchChangeHistoryEvents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class AccountsUserLinksResource {
  final commons.ApiRequester _requester;

  AccountsUserLinksResource(commons.ApiRequester client) : _requester = client;

  /// Lists all user links on an account or property, including implicit ones
  /// that come from effective permissions granted by groups or organization
  /// admin roles.
  ///
  /// If a returned user link does not have direct permissions, they cannot be
  /// removed from the account or property directly with the DeleteUserLink
  /// command. They have to be removed from the group/etc that gives them
  /// permissions, which is currently only usable/discoverable in the GA or GMP
  /// UIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAuditUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAuditUserLinksResponse> audit(
    GoogleAnalyticsAdminV1alphaAuditUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:audit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates information about multiple users' links to an account or property.
  ///
  /// This method is transactional. If any UserLink cannot be created, none of
  /// the UserLinks will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. This field is required. The parent field in the
  /// CreateUserLinkRequest messages must either be empty or match this field.
  /// Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse>
      batchCreate(
    GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent of all values for user link names to delete
  /// must match this field. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about multiple users' links to an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent of all provided values for the 'names' field
  /// must match this field. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [names] - Required. The names of the user links to retrieve. A maximum of
  /// 1000 user links can be retrieved in a batch. Format:
  /// accounts/{accountId}/userLinks/{userLinkId}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse> batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent field in the UpdateUserLinkRequest messages
  /// must either be empty or match this field. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse>
      batchUpdate(
    GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a user link on an account or property.
  ///
  /// If the user with the specified email already has permissions on the
  /// account or property, then the user's existing permissions will be unioned
  /// with the permissions specified in the new UserLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [notifyNewUser] - Optional. If set, then email the new user notifying them
  /// that they've been granted permissions to the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> create(
    GoogleAnalyticsAdminV1alphaUserLink request,
    core.String parent, {
    core.bool? notifyNewUser,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (notifyNewUser != null) 'notifyNewUser': ['${notifyNewUser}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user link on an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: accounts/1234/userLinks/5678
  /// Value must have pattern `^accounts/\[^/\]+/userLinks/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a user's link to an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: accounts/1234/userLinks/5678
  /// Value must have pattern `^accounts/\[^/\]+/userLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all user links on an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of user links to return. The service may
  /// return fewer than this value. If unspecified, at most 200 user links will
  /// be returned. The maximum value is 500; values above 500 will be coerced to
  /// 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListUserLinks` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListUserLinks` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListUserLinksResponse> list(
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a user link on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Example format: properties/1234/userLinks/5678
  /// Value must have pattern `^accounts/\[^/\]+/userLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> patch(
    GoogleAnalyticsAdminV1alphaUserLink request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesResource {
  final commons.ApiRequester _requester;

  PropertiesAndroidAppDataStreamsResource get androidAppDataStreams =>
      PropertiesAndroidAppDataStreamsResource(_requester);
  PropertiesConversionEventsResource get conversionEvents =>
      PropertiesConversionEventsResource(_requester);
  PropertiesCustomDimensionsResource get customDimensions =>
      PropertiesCustomDimensionsResource(_requester);
  PropertiesCustomMetricsResource get customMetrics =>
      PropertiesCustomMetricsResource(_requester);
  PropertiesDataStreamsResource get dataStreams =>
      PropertiesDataStreamsResource(_requester);
  PropertiesDisplayVideo360AdvertiserLinkProposalsResource
      get displayVideo360AdvertiserLinkProposals =>
          PropertiesDisplayVideo360AdvertiserLinkProposalsResource(_requester);
  PropertiesDisplayVideo360AdvertiserLinksResource
      get displayVideo360AdvertiserLinks =>
          PropertiesDisplayVideo360AdvertiserLinksResource(_requester);
  PropertiesFirebaseLinksResource get firebaseLinks =>
      PropertiesFirebaseLinksResource(_requester);
  PropertiesGoogleAdsLinksResource get googleAdsLinks =>
      PropertiesGoogleAdsLinksResource(_requester);
  PropertiesIosAppDataStreamsResource get iosAppDataStreams =>
      PropertiesIosAppDataStreamsResource(_requester);
  PropertiesUserLinksResource get userLinks =>
      PropertiesUserLinksResource(_requester);
  PropertiesWebDataStreamsResource get webDataStreams =>
      PropertiesWebDataStreamsResource(_requester);

  PropertiesResource(commons.ApiRequester client) : _requester = client;

  /// Acknowledges the terms of user data collection for the specified property.
  ///
  /// This acknowledgement must be completed (either in the Google Analytics UI
  /// or via this API) before MeasurementProtocolSecret resources may be
  /// created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [property] - Required. The property for which to acknowledge user data
  /// collection.
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse>
      acknowledgeUserDataCollection(
    GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest request,
    core.String property, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$property') +
        ':acknowledgeUserDataCollection';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an "GA4" property with the specified location and attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> create(
    GoogleAnalyticsAdminV1alphaProperty request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/properties';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Marks target Property as soft-deleted (ie: "trashed") and returns it.
  ///
  /// This API does not have a method to restore soft-deleted properties.
  /// However, they can be restored using the Trash Can UI. If the properties
  /// are not restored before the expiration time, the Property and all child
  /// resources (eg: GoogleAdsLinks, Streams, UserLinks) will be permanently
  /// purged. https://support.google.com/analytics/answer/6154772 Returns an
  /// error if the target is not found, or is not an GA4 Property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Property to soft-delete. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single "GA4" Property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the property to lookup. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the singleton data retention settings for this property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the settings to lookup. Format:
  /// properties/{property}/dataRetentionSettings Example:
  /// "properties/1000/dataRetentionSettings"
  /// Value must have pattern `^properties/\[^/\]+/dataRetentionSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRetentionSettings>
      getDataRetentionSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for Google Signals settings for a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the google signals settings to retrieve.
  /// Format: properties/{property}/googleSignalsSettings
  /// Value must have pattern `^properties/\[^/\]+/googleSignalsSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleSignalsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleSignalsSettings>
      getGoogleSignalsSettings(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns child Properties under the specified parent Account.
  ///
  /// Only "GA4" properties will be returned. Properties will be excluded if the
  /// caller does not have access. Soft-deleted (ie: "trashed") properties are
  /// excluded by default. Returns an empty list if no relevant properties are
  /// found.
  ///
  /// Request parameters:
  ///
  /// [filter] - Required. An expression for filtering the results of the
  /// request. Fields eligible for filtering are: `parent:`(The resource name of
  /// the parent account/property) or `ancestor:`(The resource name of the
  /// parent account) or `firebase_project:`(The id or number of the linked
  /// firebase project). Some examples of filters: ``` | Filter | Description |
  /// |-----------------------------|-------------------------------------------|
  /// | parent:accounts/123 | The account with account id: 123. | |
  /// parent:properties/123 | The property with property id: 123. | |
  /// ancestor:accounts/123 | The account with account id: 123. | |
  /// firebase_project:project-id | The firebase project with id: project-id. |
  /// | firebase_project:123 | The firebase project with number: 123. | ```
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListProperties`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListProperties` must match the call that
  /// provided the page token.
  ///
  /// [showDeleted] - Whether to include soft-deleted (ie: "trashed") Properties
  /// in the results. Properties can be inspected to determine whether they are
  /// deleted or not.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListPropertiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListPropertiesResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/properties';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this property. Format:
  /// properties/{property_id} Example: "properties/1000"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaProperty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaProperty> patch(
    GoogleAnalyticsAdminV1alphaProperty request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaProperty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the singleton data retention settings for this property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this DataRetentionSetting
  /// resource. Format: properties/{property}/dataRetentionSettings
  /// Value must have pattern `^properties/\[^/\]+/dataRetentionSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataRetentionSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataRetentionSettings>
      updateDataRetentionSettings(
    GoogleAnalyticsAdminV1alphaDataRetentionSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates Google Signals settings for a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this setting. Format:
  /// properties/{property_id}/googleSignalsSettings Example:
  /// "properties/1000/googleSignalsSettings"
  /// Value must have pattern `^properties/\[^/\]+/googleSignalsSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleSignalsSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleSignalsSettings>
      updateGoogleSignalsSettings(
    GoogleAnalyticsAdminV1alphaGoogleSignalsSettings request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesAndroidAppDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesAndroidAppDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an android app stream on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the android app data stream to delete.
  /// Format: properties/{property_id}/androidAppDataStreams/{stream_id}
  /// Example: "properties/123/androidAppDataStreams/456"
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single AndroidAppDataStream
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the android app data stream to lookup.
  /// Format: properties/{property_id}/androidAppDataStreams/{stream_id}
  /// Example: "properties/123/androidAppDataStreams/456"
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAndroidAppDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAndroidAppDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns child android app streams under the specified parent property.
  ///
  /// Android app streams will be excluded if the caller does not have access.
  /// Returns an empty list if no relevant android app streams are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent property. For example, to
  /// limit results to app streams under the property with Id 123:
  /// "properties/123"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListAndroidAppDataStreams` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse>
      list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/androidAppDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an android app stream on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/androidAppDataStreams/{stream_id} Example:
  /// "properties/1000/androidAppDataStreams/2000"
  /// Value must have pattern
  /// `^properties/\[^/\]+/androidAppDataStreams/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAndroidAppDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAndroidAppDataStream> patch(
    GoogleAnalyticsAdminV1alphaAndroidAppDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesConversionEventsResource {
  final commons.ApiRequester _requester;

  PropertiesConversionEventsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a conversion event with the specified attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property where this
  /// conversion event will be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaConversionEvent> create(
    GoogleAnalyticsAdminV1alphaConversionEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a conversion event in a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversion event to delete.
  /// Format: properties/{property}/conversionEvents/{conversion_event} Example:
  /// "properties/123/conversionEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/conversionEvents/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve a single conversion event.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the conversion event to retrieve.
  /// Format: properties/{property}/conversionEvents/{conversion_event} Example:
  /// "properties/123/conversionEvents/456"
  /// Value must have pattern `^properties/\[^/\]+/conversionEvents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaConversionEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaConversionEvent> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of conversion events in the specified parent property.
  ///
  /// Returns an empty list if no conversion events are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent property. Example:
  /// 'properties/123'
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListConversionEvents` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListConversionEvents`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListConversionEventsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListConversionEventsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/conversionEvents';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesCustomDimensionsResource {
  final commons.ApiRequester _requester;

  PropertiesCustomDimensionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Archives a CustomDimension on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomDimension to archive. Example
  /// format: properties/1234/customDimensions/5678
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> archive(
    GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':archive';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a CustomDimension.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> create(
    GoogleAnalyticsAdminV1alphaCustomDimension request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single CustomDimension.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomDimension to get. Example format:
  /// properties/1234/customDimensions/5678
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CustomDimensions on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListCustomDimensions` call. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters provided to `ListCustomDimensions`
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/customDimensions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a CustomDimension on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this CustomDimension resource.
  /// Format: properties/{property}/customDimensions/{customDimension}
  /// Value must have pattern `^properties/\[^/\]+/customDimensions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomDimension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomDimension> patch(
    GoogleAnalyticsAdminV1alphaCustomDimension request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesCustomMetricsResource {
  final commons.ApiRequester _requester;

  PropertiesCustomMetricsResource(commons.ApiRequester client)
      : _requester = client;

  /// Archives a CustomMetric on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomMetric to archive. Example
  /// format: properties/1234/customMetrics/5678
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> archive(
    GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':archive';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a CustomMetric.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> create(
    GoogleAnalyticsAdminV1alphaCustomMetric request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single CustomMetric.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the CustomMetric to get. Example format:
  /// properties/1234/customMetrics/5678
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists CustomMetrics on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListCustomMetrics`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListCustomMetrics` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListCustomMetricsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListCustomMetricsResponse> list(
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/customMetrics';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a CustomMetric on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name for this CustomMetric resource.
  /// Format: properties/{property}/customMetrics/{customMetric}
  /// Value must have pattern `^properties/\[^/\]+/customMetrics/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaCustomMetric].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaCustomMetric> patch(
    GoogleAnalyticsAdminV1alphaCustomMetric request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsMeasurementProtocolSecretsResource
      get measurementProtocolSecrets =>
          PropertiesDataStreamsMeasurementProtocolSecretsResource(_requester);

  PropertiesDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DataStream.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> create(
    GoogleAnalyticsAdminV1alphaDataStream request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DataStream on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DataStream to delete. Example format:
  /// properties/1234/dataStreams/5678
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single DataStream.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DataStream to get. Example format:
  /// properties/1234/dataStreams/5678
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the Site Tag for the specified web stream.
  ///
  /// Site Tags are immutable singletons.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the site tag to lookup. Note that site tags
  /// are singletons and do not have unique IDs. Format:
  /// properties/{property_id}/dataStreams/{stream_id}/globalSiteTag Example:
  /// "properties/123/dataStreams/456/globalSiteTag"
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/globalSiteTag$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGlobalSiteTag].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGlobalSiteTag> getGlobalSiteTag(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DataStreams on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListDataStreams`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListDataStreams` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListDataStreamsResponse> list(
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/dataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListDataStreamsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a DataStream on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/dataStreams/{stream_id} Example:
  /// "properties/1000/dataStreams/2000"
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDataStream> patch(
    GoogleAnalyticsAdminV1alphaDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDataStreamsMeasurementProtocolSecretsResource {
  final commons.ApiRequester _requester;

  PropertiesDataStreamsMeasurementProtocolSecretsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this secret will be
  /// created. Format: properties/{property}/dataStreams/{dataStream}
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> create(
    GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes target MeasurementProtocolSecret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the MeasurementProtocolSecret to delete.
  /// Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single "GA4" MeasurementProtocolSecret.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the measurement protocol secret to lookup.
  /// Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns child MeasurementProtocolSecrets under the specified parent
  /// Property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the parent stream. Format:
  /// properties/{property}/dataStreams/{dataStream}/measurementProtocolSecrets
  /// Value must have pattern `^properties/\[^/\]+/dataStreams/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 10 resources will be returned. The maximum value is 10. Higher values
  /// will be coerced to the maximum.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListMeasurementProtocolSecrets` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListMeasurementProtocolSecrets` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
      GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse> list(
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

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/measurementProtocolSecrets';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a measurement protocol secret.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this secret. This secret may be a
  /// child of any type of stream. Format:
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  /// Value must have pattern
  /// `^properties/\[^/\]+/dataStreams/\[^/\]+/measurementProtocolSecrets/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated. Omitted fields will not
  /// be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret> patch(
    GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDisplayVideo360AdvertiserLinkProposalsResource {
  final commons.ApiRequester _requester;

  PropertiesDisplayVideo360AdvertiserLinkProposalsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Approves a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// The DisplayVideo360AdvertiserLinkProposal will be deleted and a new
  /// DisplayVideo360AdvertiserLink will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to approve. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse>
      approve(
    GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':approve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Cancels a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// Cancelling can mean either: - Declining a proposal initiated from Display
  /// & Video 360 - Withdrawing a proposal initiated from Google Analytics After
  /// being cancelled, a proposal will eventually be deleted automatically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to cancel. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
      cancel(
    GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a DisplayVideo360AdvertiserLinkProposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
      create(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinkProposals';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DisplayVideo360AdvertiserLinkProposal on a property.
  ///
  /// This can only be used on cancelled proposals.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to delete. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single DisplayVideo360AdvertiserLinkProposal.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLinkProposal
  /// to get. Example format:
  /// properties/1234/displayVideo360AdvertiserLinkProposals/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinkProposals/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>
      get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists DisplayVideo360AdvertiserLinkProposals on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDisplayVideo360AdvertiserLinkProposals` call. Provide this to
  /// retrieve the subsequent page. When paginating, all other parameters
  /// provided to `ListDisplayVideo360AdvertiserLinkProposals` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse>
      list(
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

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinkProposals';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesDisplayVideo360AdvertiserLinksResource {
  final commons.ApiRequester _requester;

  PropertiesDisplayVideo360AdvertiserLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a DisplayVideo360AdvertiserLink.
  ///
  /// This can only be utilized by users who have proper authorization both on
  /// the Google Analytics property and on the Display & Video 360 advertiser.
  /// Users who do not have access to the Display & Video 360 advertiser should
  /// instead seek to create a DisplayVideo360LinkProposal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> create(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DisplayVideo360AdvertiserLink on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLink to
  /// delete. Example format:
  /// properties/1234/displayVideo360AdvertiserLinks/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Look up a single DisplayVideo360AdvertiserLink
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DisplayVideo360AdvertiserLink to get.
  /// Example format: properties/1234/displayVideo360AdvertiserLink/5678
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all DisplayVideo360AdvertiserLinks on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListDisplayVideo360AdvertiserLinks` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListDisplayVideo360AdvertiserLinks` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse>
      list(
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

    final _url = 'v1alpha/' +
        core.Uri.encodeFull('$parent') +
        '/displayVideo360AdvertiserLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a DisplayVideo360AdvertiserLink on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name for this
  /// DisplayVideo360AdvertiserLink resource. Format:
  /// properties/{propertyId}/displayVideo360AdvertiserLinks/{linkId} Note:
  /// linkId is not the Display & Video 360 Advertiser ID
  /// Value must have pattern
  /// `^properties/\[^/\]+/displayVideo360AdvertiserLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Omitted fields
  /// will not be updated. To replace the entire entity, use one path with the
  /// string "*" to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink> patch(
    GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesFirebaseLinksResource {
  final commons.ApiRequester _requester;

  PropertiesFirebaseLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a FirebaseLink.
  ///
  /// Properties can have at most one FirebaseLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaFirebaseLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaFirebaseLink> create(
    GoogleAnalyticsAdminV1alphaFirebaseLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a FirebaseLink on a property
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// properties/{property_id}/firebaseLinks/{firebase_link_id} Example:
  /// properties/1234/firebaseLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/firebaseLinks/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists FirebaseLinks on a property.
  ///
  /// Properties can have at most one FirebaseLink.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: properties/{property_id} Example:
  /// properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, at most 50 resources will be returned. The maximum value is
  /// 200; (higher values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListFirebaseLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListProperties` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse> list(
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/firebaseLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesGoogleAdsLinksResource {
  final commons.ApiRequester _requester;

  PropertiesGoogleAdsLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a GoogleAdsLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleAdsLink> create(
    GoogleAnalyticsAdminV1alphaGoogleAdsLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a GoogleAdsLink on a property
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: properties/1234/googleAdsLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/googleAdsLinks/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists GoogleAdsLinks on a property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: properties/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200 (higher
  /// values will be coerced to the maximum).
  ///
  /// [pageToken] - A page token, received from a previous `ListGoogleAdsLinks`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListGoogleAdsLinks` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/googleAdsLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a GoogleAdsLink on a property
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Format:
  /// properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  /// Value must have pattern `^properties/\[^/\]+/googleAdsLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaGoogleAdsLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaGoogleAdsLink> patch(
    GoogleAnalyticsAdminV1alphaGoogleAdsLink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesIosAppDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesIosAppDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an iOS app stream on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the iOS app data stream to delete. Format:
  /// properties/{property_id}/iosAppDataStreams/{stream_id} Example:
  /// "properties/123/iosAppDataStreams/456"
  /// Value must have pattern `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single IosAppDataStream
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the iOS app data stream to lookup. Format:
  /// properties/{property_id}/iosAppDataStreams/{stream_id} Example:
  /// "properties/123/iosAppDataStreams/456"
  /// Value must have pattern `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaIosAppDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaIosAppDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns child iOS app data streams under the specified parent property.
  ///
  /// iOS app data streams will be excluded if the caller does not have access.
  /// Returns an empty list if no relevant iOS app data streams are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent property. For example, to list
  /// results of app streams under the property with Id 123: "properties/123"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListIosAppDataStreams` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListIosAppDataStreams` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/iosAppDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an iOS app stream on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/iosAppDataStreams/{stream_id} Example:
  /// "properties/1000/iosAppDataStreams/2000"
  /// Value must have pattern `^properties/\[^/\]+/iosAppDataStreams/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaIosAppDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaIosAppDataStream> patch(
    GoogleAnalyticsAdminV1alphaIosAppDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesUserLinksResource {
  final commons.ApiRequester _requester;

  PropertiesUserLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists all user links on an account or property, including implicit ones
  /// that come from effective permissions granted by groups or organization
  /// admin roles.
  ///
  /// If a returned user link does not have direct permissions, they cannot be
  /// removed from the account or property directly with the DeleteUserLink
  /// command. They have to be removed from the group/etc that gives them
  /// permissions, which is currently only usable/discoverable in the GA or GMP
  /// UIs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaAuditUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaAuditUserLinksResponse> audit(
    GoogleAnalyticsAdminV1alphaAuditUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:audit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates information about multiple users' links to an account or property.
  ///
  /// This method is transactional. If any UserLink cannot be created, none of
  /// the UserLinks will be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. This field is required. The parent field in the
  /// CreateUserLinkRequest messages must either be empty or match this field.
  /// Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse>
      batchCreate(
    GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent of all values for user link names to delete
  /// must match this field. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> batchDelete(
    GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about multiple users' links to an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent of all provided values for the 'names' field
  /// must match this field. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [names] - Required. The names of the user links to retrieve. A maximum of
  /// 1000 user links can be retrieved in a batch. Format:
  /// accounts/{accountId}/userLinks/{userLinkId}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse> batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information about multiple users' links to an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The account or property that all user links in the
  /// request are for. The parent field in the UpdateUserLinkRequest messages
  /// must either be empty or match this field. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse>
      batchUpdate(
    GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a user link on an account or property.
  ///
  /// If the user with the specified email already has permissions on the
  /// account or property, then the user's existing permissions will be unioned
  /// with the permissions specified in the new UserLink.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [notifyNewUser] - Optional. If set, then email the new user notifying them
  /// that they've been granted permissions to the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> create(
    GoogleAnalyticsAdminV1alphaUserLink request,
    core.String parent, {
    core.bool? notifyNewUser,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (notifyNewUser != null) 'notifyNewUser': ['${notifyNewUser}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a user link on an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: accounts/1234/userLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/userLinks/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a user's link to an account or property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Example format: accounts/1234/userLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/userLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all user links on an account or property.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Example format: accounts/1234
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of user links to return. The service may
  /// return fewer than this value. If unspecified, at most 200 user links will
  /// be returned. The maximum value is 500; values above 500 will be coerced to
  /// 500.
  ///
  /// [pageToken] - A page token, received from a previous `ListUserLinks` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListUserLinks` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListUserLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListUserLinksResponse> list(
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/userLinks';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a user link on an account or property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Example format: properties/1234/userLinks/5678
  /// Value must have pattern `^properties/\[^/\]+/userLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaUserLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaUserLink> patch(
    GoogleAnalyticsAdminV1alphaUserLink request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaUserLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PropertiesWebDataStreamsResource {
  final commons.ApiRequester _requester;

  PropertiesWebDataStreamsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a web stream with the specified location and attributes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this web data stream will
  /// be created. Format: properties/123
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaWebDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaWebDataStream> create(
    GoogleAnalyticsAdminV1alphaWebDataStream request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/webDataStreams';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a web stream on a property.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the web data stream to delete. Format:
  /// properties/{property_id}/webDataStreams/{stream_id} Example:
  /// "properties/123/webDataStreams/456"
  /// Value must have pattern `^properties/\[^/\]+/webDataStreams/\[^/\]+$`.
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

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lookup for a single WebDataStream
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the web data stream to lookup. Format:
  /// properties/{property_id}/webDataStreams/{stream_id} Example:
  /// "properties/123/webDataStreams/456"
  /// Value must have pattern `^properties/\[^/\]+/webDataStreams/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaWebDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaWebDataStream> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns child web data streams under the specified parent property.
  ///
  /// Web data streams will be excluded if the caller does not have access.
  /// Returns an empty list if no relevant web data streams are found.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent property. For example, to list
  /// results of web streams under the property with Id 123: "properties/123"
  /// Value must have pattern `^properties/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of resources to return. If unspecified, at
  /// most 50 resources will be returned. The maximum value is 200; (higher
  /// values will be coerced to the maximum)
  ///
  /// [pageToken] - A page token, received from a previous `ListWebDataStreams`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListWebDataStreams` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse> list(
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
        'v1alpha/' + core.Uri.encodeFull('$parent') + '/webDataStreams';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a web stream on a property.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of this Data Stream. Format:
  /// properties/{property_id}/webDataStreams/{stream_id} Example:
  /// "properties/1000/webDataStreams/2000"
  /// Value must have pattern `^properties/\[^/\]+/webDataStreams/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to be updated. Field names
  /// must be in snake case (e.g., "field_to_update"). Omitted fields will not
  /// be updated. To replace the entire entity, use one path with the string "*"
  /// to match all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleAnalyticsAdminV1alphaWebDataStream].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleAnalyticsAdminV1alphaWebDataStream> patch(
    GoogleAnalyticsAdminV1alphaWebDataStream request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A resource message representing a Google Analytics account.
class GoogleAnalyticsAdminV1alphaAccount {
  /// Time when this account was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Indicates whether this Account is soft-deleted or not.
  ///
  /// Deleted accounts are excluded from List results unless specifically
  /// requested.
  ///
  /// Output only.
  core.bool? deleted;

  /// Human-readable display name for this account.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this account.
  ///
  /// Format: accounts/{account} Example: "accounts/100"
  ///
  /// Output only.
  core.String? name;

  /// Country of business.
  ///
  /// Must be a Unicode CLDR region code.
  core.String? regionCode;

  /// Time when account payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaAccount({
    this.createTime,
    this.deleted,
    this.displayName,
    this.name,
    this.regionCode,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaAccount.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleted: _json.containsKey('deleted')
              ? _json['deleted'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleted != null) 'deleted': deleted!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A virtual resource representing an overview of an account and all its child
/// GA4 properties.
class GoogleAnalyticsAdminV1alphaAccountSummary {
  /// Resource name of account referred to by this account summary Format:
  /// accounts/{account_id} Example: "accounts/1000"
  core.String? account;

  /// Display name for the account referred to in this account summary.
  core.String? displayName;

  /// Resource name for this account summary.
  ///
  /// Format: accountSummaries/{account_id} Example: "accountSummaries/1000"
  core.String? name;

  /// List of summaries for child accounts of this account.
  core.List<GoogleAnalyticsAdminV1alphaPropertySummary>? propertySummaries;

  GoogleAnalyticsAdminV1alphaAccountSummary({
    this.account,
    this.displayName,
    this.name,
    this.propertySummaries,
  });

  GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? _json['account'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          propertySummaries: _json.containsKey('propertySummaries')
              ? (_json['propertySummaries'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (propertySummaries != null) 'propertySummaries': propertySummaries!,
      };
}

/// Request message for AcknowledgeUserDataCollection RPC.
class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest {
  /// An acknowledgement that the caller of this method understands the terms of
  /// user data collection.
  ///
  /// This field must contain the exact value: "I acknowledge that I have the
  /// necessary privacy disclosures and rights from my end users for the
  /// collection and processing of their data, including the association of such
  /// data with the visitation information Google Analytics collects from my
  /// site and/or app property."
  ///
  /// Required.
  core.String? acknowledgement;

  GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest({
    this.acknowledgement,
  });

  GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest.fromJson(
      core.Map _json)
      : this(
          acknowledgement: _json.containsKey('acknowledgement')
              ? _json['acknowledgement'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acknowledgement != null) 'acknowledgement': acknowledgement!,
      };
}

/// Response message for AcknowledgeUserDataCollection RPC.
typedef GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
    = $Empty;

/// A resource message representing a Google Analytics Android app stream.
class GoogleAnalyticsAdminV1alphaAndroidAppDataStream {
  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 255 UTF-16 code units.
  core.String? displayName;

  /// ID of the corresponding Android app in Firebase, if any.
  ///
  /// This ID can change if the Android app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/androidAppDataStreams/{stream_id}
  /// Example: "properties/1000/androidAppDataStreams/2000"
  ///
  /// Output only.
  core.String? name;

  /// The package name for the app being measured.
  ///
  /// Example: "com.example.myandroidapp"
  ///
  /// Immutable.
  core.String? packageName;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaAndroidAppDataStream({
    this.createTime,
    this.displayName,
    this.firebaseAppId,
    this.name,
    this.packageName,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (name != null) 'name': name!,
        if (packageName != null) 'packageName': packageName!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
typedef GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
    = $Empty;

/// Response message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse {
  /// The DisplayVideo360AdvertiserLink created as a result of approving the
  /// proposal.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink?
      displayVideo360AdvertiserLink;

  GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse({
    this.displayVideo360AdvertiserLink,
  });

  GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse.fromJson(
      core.Map _json)
      : this(
          displayVideo360AdvertiserLink:
              _json.containsKey('displayVideo360AdvertiserLink')
                  ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
                      .fromJson(_json['displayVideo360AdvertiserLink']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayVideo360AdvertiserLink != null)
          'displayVideo360AdvertiserLink': displayVideo360AdvertiserLink!,
      };
}

/// Request message for ArchiveCustomDimension RPC.
typedef GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest = $Empty;

/// Request message for ArchiveCustomMetric RPC.
typedef GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest = $Empty;

/// Read-only resource used to summarize a principal's effective roles.
class GoogleAnalyticsAdminV1alphaAuditUserLink {
  /// Roles directly assigned to this user for this entity.
  ///
  /// Format: predefinedRoles/viewer Excludes roles that are inherited from an
  /// account (if this is for a property), group, or organization admin role.
  core.List<core.String>? directRoles;

  /// Union of all permissions a user has at this account or property (includes
  /// direct permissions, group-inherited permissions, etc.).
  ///
  /// Format: predefinedRoles/viewer
  core.List<core.String>? effectiveRoles;

  /// Email address of the linked user
  core.String? emailAddress;

  /// Example format: properties/1234/userLinks/5678
  core.String? name;

  GoogleAnalyticsAdminV1alphaAuditUserLink({
    this.directRoles,
    this.effectiveRoles,
    this.emailAddress,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(core.Map _json)
      : this(
          directRoles: _json.containsKey('directRoles')
              ? (_json['directRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          effectiveRoles: _json.containsKey('effectiveRoles')
              ? (_json['effectiveRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directRoles != null) 'directRoles': directRoles!,
        if (effectiveRoles != null) 'effectiveRoles': effectiveRoles!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (name != null) 'name': name!,
      };
}

/// Request message for AuditUserLinks RPC.
class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest {
  /// The maximum number of user links to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 1000
  /// user links will be returned. The maximum value is 5000; values above 5000
  /// will be coerced to 5000.
  core.int? pageSize;

  /// A page token, received from a previous `AuditUserLinks` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `AuditUserLinks` must match the call that provided
  /// the page token.
  core.String? pageToken;

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest({
    this.pageSize,
    this.pageToken,
  });

  GoogleAnalyticsAdminV1alphaAuditUserLinksRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// Response message for AuditUserLinks RPC.
class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of AuditUserLinks.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaAuditUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaAuditUserLinksResponse({
    this.nextPageToken,
    this.userLinks,
  });

  GoogleAnalyticsAdminV1alphaAuditUserLinksResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          userLinks: _json.containsKey('userLinks')
              ? (_json['userLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaAuditUserLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userLinks != null) 'userLinks': userLinks!,
      };
}

/// Request message for BatchCreateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest {
  /// If set, then email the new users notifying them that they've been granted
  /// permissions to the resource.
  ///
  /// Regardless of whether this is set or not, notify_new_user field inside
  /// each individual request is ignored.
  ///
  /// Optional.
  core.bool? notifyNewUsers;

  /// The requests specifying the user links to create.
  ///
  /// A maximum of 1000 user links can be created in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest({
    this.notifyNewUsers,
    this.requests,
  });

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest.fromJson(
      core.Map _json)
      : this(
          notifyNewUsers: _json.containsKey('notifyNewUsers')
              ? _json['notifyNewUsers'] as core.bool
              : null,
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifyNewUsers != null) 'notifyNewUsers': notifyNewUsers!,
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for BatchCreateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse {
  /// The user links created.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse({
    this.userLinks,
  });

  GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse.fromJson(
      core.Map _json)
      : this(
          userLinks: _json.containsKey('userLinks')
              ? (_json['userLinks'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null) 'userLinks': userLinks!,
      };
}

/// Request message for BatchDeleteUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest {
  /// The requests specifying the user links to update.
  ///
  /// A maximum of 1000 user links can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest({
    this.requests,
  });

  GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest.fromJson(
      core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for BatchGetUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse {
  /// The requested user links.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse({
    this.userLinks,
  });

  GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse.fromJson(core.Map _json)
      : this(
          userLinks: _json.containsKey('userLinks')
              ? (_json['userLinks'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null) 'userLinks': userLinks!,
      };
}

/// Request message for BatchUpdateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest {
  /// The requests specifying the user links to update.
  ///
  /// A maximum of 1000 user links can be updated in a batch.
  ///
  /// Required.
  core.List<GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>? requests;

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest({
    this.requests,
  });

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest.fromJson(
      core.Map _json)
      : this(
          requests: _json.containsKey('requests')
              ? (_json['requests'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for BatchUpdateUserLinks RPC.
class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse {
  /// The user links updated.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse({
    this.userLinks,
  });

  GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse.fromJson(
      core.Map _json)
      : this(
          userLinks: _json.containsKey('userLinks')
              ? (_json['userLinks'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLinks != null) 'userLinks': userLinks!,
      };
}

/// Request message for CancelDisplayVideo360AdvertiserLinkProposal RPC.
typedef GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
    = $Empty;

/// A description of a change to a single Google Analytics resource.
class GoogleAnalyticsAdminV1alphaChangeHistoryChange {
  /// The type of action that changed this resource.
  /// Possible string values are:
  /// - "ACTION_TYPE_UNSPECIFIED" : Action type unknown or not specified.
  /// - "CREATED" : Resource was created in this change.
  /// - "UPDATED" : Resource was updated in this change.
  /// - "DELETED" : Resource was deleted in this change.
  core.String? action;

  /// Resource name of the resource whose changes are described by this entry.
  core.String? resource;

  /// Resource contents from after the change was made.
  ///
  /// If this resource was deleted in this change, this field will be missing.
  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource?
      resourceAfterChange;

  /// Resource contents from before the change was made.
  ///
  /// If this resource was created in this change, this field will be missing.
  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource?
      resourceBeforeChange;

  GoogleAnalyticsAdminV1alphaChangeHistoryChange({
    this.action,
    this.resource,
    this.resourceAfterChange,
    this.resourceBeforeChange,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          resource: _json.containsKey('resource')
              ? _json['resource'] as core.String
              : null,
          resourceAfterChange: _json.containsKey('resourceAfterChange')
              ? GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
                  .fromJson(_json['resourceAfterChange']
                      as core.Map<core.String, core.dynamic>)
              : null,
          resourceBeforeChange: _json.containsKey('resourceBeforeChange')
              ? GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
                  .fromJson(_json['resourceBeforeChange']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (resource != null) 'resource': resource!,
        if (resourceAfterChange != null)
          'resourceAfterChange': resourceAfterChange!,
        if (resourceBeforeChange != null)
          'resourceBeforeChange': resourceBeforeChange!,
      };
}

/// A snapshot of a resource as before or after the result of a change in change
/// history.
class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource {
  /// A snapshot of an Account resource in change history.
  GoogleAnalyticsAdminV1alphaAccount? account;

  /// A snapshot of a ConversionEvent resource in change history.
  GoogleAnalyticsAdminV1alphaConversionEvent? conversionEvent;

  /// A snapshot of a CustomDimension resource in change history.
  GoogleAnalyticsAdminV1alphaCustomDimension? customDimension;

  /// A snapshot of a CustomMetric resource in change history.
  GoogleAnalyticsAdminV1alphaCustomMetric? customMetric;

  /// A snapshot of a data retention settings resource in change history.
  GoogleAnalyticsAdminV1alphaDataRetentionSettings? dataRetentionSettings;

  /// A snapshot of a DataStream resource in change history.
  GoogleAnalyticsAdminV1alphaDataStream? dataStream;

  /// A snapshot of a DisplayVideo360AdvertiserLink resource in change history.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink?
      displayVideo360AdvertiserLink;

  /// A snapshot of a DisplayVideo360AdvertiserLinkProposal resource in change
  /// history.
  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal?
      displayVideo360AdvertiserLinkProposal;

  /// A snapshot of a FirebaseLink resource in change history.
  GoogleAnalyticsAdminV1alphaFirebaseLink? firebaseLink;

  /// A snapshot of a GoogleAdsLink resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleAdsLink? googleAdsLink;

  /// A snapshot of a GoogleSignalsSettings resource in change history.
  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings? googleSignalsSettings;

  /// A snapshot of a MeasurementProtocolSecret resource in change history.
  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret?
      measurementProtocolSecret;

  /// A snapshot of a Property resource in change history.
  GoogleAnalyticsAdminV1alphaProperty? property;

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource({
    this.account,
    this.conversionEvent,
    this.customDimension,
    this.customMetric,
    this.dataRetentionSettings,
    this.dataStream,
    this.displayVideo360AdvertiserLink,
    this.displayVideo360AdvertiserLinkProposal,
    this.firebaseLink,
    this.googleAdsLink,
    this.googleSignalsSettings,
    this.measurementProtocolSecret,
    this.property,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource.fromJson(
      core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? GoogleAnalyticsAdminV1alphaAccount.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          conversionEvent: _json.containsKey('conversionEvent')
              ? GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
                  _json['conversionEvent']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customDimension: _json.containsKey('customDimension')
              ? GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
                  _json['customDimension']
                      as core.Map<core.String, core.dynamic>)
              : null,
          customMetric: _json.containsKey('customMetric')
              ? GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
                  _json['customMetric'] as core.Map<core.String, core.dynamic>)
              : null,
          dataRetentionSettings: _json.containsKey('dataRetentionSettings')
              ? GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(
                  _json['dataRetentionSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataStream: _json.containsKey('dataStream')
              ? GoogleAnalyticsAdminV1alphaDataStream.fromJson(
                  _json['dataStream'] as core.Map<core.String, core.dynamic>)
              : null,
          displayVideo360AdvertiserLink:
              _json.containsKey('displayVideo360AdvertiserLink')
                  ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
                      .fromJson(_json['displayVideo360AdvertiserLink']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          displayVideo360AdvertiserLinkProposal: _json
                  .containsKey('displayVideo360AdvertiserLinkProposal')
              ? GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
                  .fromJson(_json['displayVideo360AdvertiserLinkProposal']
                      as core.Map<core.String, core.dynamic>)
              : null,
          firebaseLink: _json.containsKey('firebaseLink')
              ? GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
                  _json['firebaseLink'] as core.Map<core.String, core.dynamic>)
              : null,
          googleAdsLink: _json.containsKey('googleAdsLink')
              ? GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
                  _json['googleAdsLink'] as core.Map<core.String, core.dynamic>)
              : null,
          googleSignalsSettings: _json.containsKey('googleSignalsSettings')
              ? GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(
                  _json['googleSignalsSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          measurementProtocolSecret: _json
                  .containsKey('measurementProtocolSecret')
              ? GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(
                  _json['measurementProtocolSecret']
                      as core.Map<core.String, core.dynamic>)
              : null,
          property: _json.containsKey('property')
              ? GoogleAnalyticsAdminV1alphaProperty.fromJson(
                  _json['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (conversionEvent != null) 'conversionEvent': conversionEvent!,
        if (customDimension != null) 'customDimension': customDimension!,
        if (customMetric != null) 'customMetric': customMetric!,
        if (dataRetentionSettings != null)
          'dataRetentionSettings': dataRetentionSettings!,
        if (dataStream != null) 'dataStream': dataStream!,
        if (displayVideo360AdvertiserLink != null)
          'displayVideo360AdvertiserLink': displayVideo360AdvertiserLink!,
        if (displayVideo360AdvertiserLinkProposal != null)
          'displayVideo360AdvertiserLinkProposal':
              displayVideo360AdvertiserLinkProposal!,
        if (firebaseLink != null) 'firebaseLink': firebaseLink!,
        if (googleAdsLink != null) 'googleAdsLink': googleAdsLink!,
        if (googleSignalsSettings != null)
          'googleSignalsSettings': googleSignalsSettings!,
        if (measurementProtocolSecret != null)
          'measurementProtocolSecret': measurementProtocolSecret!,
        if (property != null) 'property': property!,
      };
}

/// A set of changes within a Google Analytics account or its child properties
/// that resulted from the same cause.
///
/// Common causes would be updates made in the Google Analytics UI, changes from
/// customer support, or automatic Google Analytics system changes.
class GoogleAnalyticsAdminV1alphaChangeHistoryEvent {
  /// The type of actor that made this change.
  /// Possible string values are:
  /// - "ACTOR_TYPE_UNSPECIFIED" : Unknown or unspecified actor type.
  /// - "USER" : Changes made by the user specified in actor_email.
  /// - "SYSTEM" : Changes made by the Google Analytics system.
  /// - "SUPPORT" : Changes made by Google Analytics support team staff.
  core.String? actorType;

  /// Time when change was made.
  core.String? changeTime;

  /// A list of changes made in this change history event that fit the filters
  /// specified in SearchChangeHistoryEventsRequest.
  core.List<GoogleAnalyticsAdminV1alphaChangeHistoryChange>? changes;

  /// If true, then the list of changes returned was filtered, and does not
  /// represent all changes that occurred in this event.
  core.bool? changesFiltered;

  /// ID of this change history event.
  ///
  /// This ID is unique across Google Analytics.
  core.String? id;

  /// Email address of the Google account that made the change.
  ///
  /// This will be a valid email address if the actor field is set to USER, and
  /// empty otherwise. Google accounts that have been deleted will cause an
  /// error.
  core.String? userActorEmail;

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent({
    this.actorType,
    this.changeTime,
    this.changes,
    this.changesFiltered,
    this.id,
    this.userActorEmail,
  });

  GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(core.Map _json)
      : this(
          actorType: _json.containsKey('actorType')
              ? _json['actorType'] as core.String
              : null,
          changeTime: _json.containsKey('changeTime')
              ? _json['changeTime'] as core.String
              : null,
          changes: _json.containsKey('changes')
              ? (_json['changes'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaChangeHistoryChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          changesFiltered: _json.containsKey('changesFiltered')
              ? _json['changesFiltered'] as core.bool
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          userActorEmail: _json.containsKey('userActorEmail')
              ? _json['userActorEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actorType != null) 'actorType': actorType!,
        if (changeTime != null) 'changeTime': changeTime!,
        if (changes != null) 'changes': changes!,
        if (changesFiltered != null) 'changesFiltered': changesFiltered!,
        if (id != null) 'id': id!,
        if (userActorEmail != null) 'userActorEmail': userActorEmail!,
      };
}

/// A conversion event in a Google Analytics property.
class GoogleAnalyticsAdminV1alphaConversionEvent {
  /// Time when this conversion event was created in the property.
  ///
  /// Output only.
  core.String? createTime;

  /// If set to true, this conversion event refers to a custom event.
  ///
  /// If set to false, this conversion event refers to a default event in GA.
  /// Default events typically have special meaning in GA. Default events are
  /// usually created for you by the GA system, but in some cases can be created
  /// by property admins. Custom events count towards the maximum number of
  /// custom conversion events that may be created per property.
  ///
  /// Output only.
  core.bool? custom;

  /// If set, this event can currently be deleted via DeleteConversionEvent.
  ///
  /// Output only.
  core.bool? deletable;

  /// The event name for this conversion event.
  ///
  /// Examples: 'click', 'purchase'
  ///
  /// Immutable.
  core.String? eventName;

  /// Resource name of this conversion event.
  ///
  /// Format: properties/{property}/conversionEvents/{conversion_event}
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaConversionEvent({
    this.createTime,
    this.custom,
    this.deletable,
    this.eventName,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          custom:
              _json.containsKey('custom') ? _json['custom'] as core.bool : null,
          deletable: _json.containsKey('deletable')
              ? _json['deletable'] as core.bool
              : null,
          eventName: _json.containsKey('eventName')
              ? _json['eventName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (custom != null) 'custom': custom!,
        if (deletable != null) 'deletable': deletable!,
        if (eventName != null) 'eventName': eventName!,
        if (name != null) 'name': name!,
      };
}

/// Request message for CreateUserLink RPC.
///
/// Users can have multiple email addresses associated with their Google
/// account, and one of these email addresses is the "primary" email address.
/// Any of the email addresses associated with a Google account may be used for
/// a new UserLink, but the returned UserLink will always contain the "primary"
/// email address. As a result, the input and output email address for this
/// request may differ.
class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest {
  /// If set, then email the new user notifying them that they've been granted
  /// permissions to the resource.
  ///
  /// Optional.
  core.bool? notifyNewUser;

  /// Example format: accounts/1234
  ///
  /// Required.
  core.String? parent;

  /// The user link to create.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaUserLink? userLink;

  GoogleAnalyticsAdminV1alphaCreateUserLinkRequest({
    this.notifyNewUser,
    this.parent,
    this.userLink,
  });

  GoogleAnalyticsAdminV1alphaCreateUserLinkRequest.fromJson(core.Map _json)
      : this(
          notifyNewUser: _json.containsKey('notifyNewUser')
              ? _json['notifyNewUser'] as core.bool
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          userLink: _json.containsKey('userLink')
              ? GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  _json['userLink'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (notifyNewUser != null) 'notifyNewUser': notifyNewUser!,
        if (parent != null) 'parent': parent!,
        if (userLink != null) 'userLink': userLink!,
      };
}

/// A definition for a CustomDimension.
class GoogleAnalyticsAdminV1alphaCustomDimension {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// If set to true, sets this dimension as NPA and excludes it from ads
  /// personalization.
  ///
  /// This is currently only supported by user-scoped custom dimensions.
  ///
  /// Optional.
  core.bool? disallowAdsPersonalization;

  /// Display name for this custom dimension as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name for this CustomDimension resource.
  ///
  /// Format: properties/{property}/customDimensions/{customDimension}
  ///
  /// Output only.
  core.String? name;

  /// Tagging parameter name for this custom dimension.
  ///
  /// If this is a user-scoped dimension, then this is the user property name.
  /// If this is an event-scoped dimension, then this is the event parameter
  /// name. May only contain alphanumeric and underscore characters, starting
  /// with a letter. Max length of 24 characters for user-scoped dimensions, 40
  /// characters for event-scoped dimensions.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// The scope of this dimension.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DIMENSION_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Dimension scoped to an event.
  /// - "USER" : Dimension scoped to a user.
  core.String? scope;

  GoogleAnalyticsAdminV1alphaCustomDimension({
    this.description,
    this.disallowAdsPersonalization,
    this.displayName,
    this.name,
    this.parameterName,
    this.scope,
  });

  GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          disallowAdsPersonalization:
              _json.containsKey('disallowAdsPersonalization')
                  ? _json['disallowAdsPersonalization'] as core.bool
                  : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameterName: _json.containsKey('parameterName')
              ? _json['parameterName'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (disallowAdsPersonalization != null)
          'disallowAdsPersonalization': disallowAdsPersonalization!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (scope != null) 'scope': scope!,
      };
}

/// A definition for a custom metric.
class GoogleAnalyticsAdminV1alphaCustomMetric {
  /// Description for this custom dimension.
  ///
  /// Max length of 150 characters.
  ///
  /// Optional.
  core.String? description;

  /// Display name for this custom metric as shown in the Analytics UI.
  ///
  /// Max length of 82 characters, alphanumeric plus space and underscore
  /// starting with a letter. Legacy system-generated display names may contain
  /// square brackets, but updates to this field will never permit square
  /// brackets.
  ///
  /// Required.
  core.String? displayName;

  /// The type for the custom metric's value.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MEASUREMENT_UNIT_UNSPECIFIED" : MeasurementUnit unspecified or missing.
  /// - "STANDARD" : This metric uses default units.
  /// - "CURRENCY" : This metric measures a currency.
  /// - "FEET" : This metric measures feet.
  /// - "METERS" : This metric measures meters.
  /// - "KILOMETERS" : This metric measures kilometers.
  /// - "MILES" : This metric measures miles.
  /// - "MILLISECONDS" : This metric measures milliseconds.
  /// - "SECONDS" : This metric measures seconds.
  /// - "MINUTES" : This metric measures minutes.
  /// - "HOURS" : This metric measures hours.
  core.String? measurementUnit;

  /// Resource name for this CustomMetric resource.
  ///
  /// Format: properties/{property}/customMetrics/{customMetric}
  ///
  /// Output only.
  core.String? name;

  /// Tagging name for this custom metric.
  ///
  /// If this is an event-scoped metric, then this is the event parameter name.
  /// May only contain alphanumeric and underscore charactes, starting with a
  /// letter. Max length of 40 characters for event-scoped metrics.
  ///
  /// Required. Immutable.
  core.String? parameterName;

  /// Types of restricted data that this metric may contain.
  ///
  /// Required for metrics with CURRENCY measurement unit. Must be empty for
  /// metrics with a non-CURRENCY measurement unit.
  ///
  /// Optional.
  core.List<core.String>? restrictedMetricType;

  /// The scope of this custom metric.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "METRIC_SCOPE_UNSPECIFIED" : Scope unknown or not specified.
  /// - "EVENT" : Metric scoped to an event.
  core.String? scope;

  GoogleAnalyticsAdminV1alphaCustomMetric({
    this.description,
    this.displayName,
    this.measurementUnit,
    this.name,
    this.parameterName,
    this.restrictedMetricType,
    this.scope,
  });

  GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          measurementUnit: _json.containsKey('measurementUnit')
              ? _json['measurementUnit'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parameterName: _json.containsKey('parameterName')
              ? _json['parameterName'] as core.String
              : null,
          restrictedMetricType: _json.containsKey('restrictedMetricType')
              ? (_json['restrictedMetricType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (name != null) 'name': name!,
        if (parameterName != null) 'parameterName': parameterName!,
        if (restrictedMetricType != null)
          'restrictedMetricType': restrictedMetricType!,
        if (scope != null) 'scope': scope!,
      };
}

/// Settings values for data retention.
///
/// This is a singleton resource.
class GoogleAnalyticsAdminV1alphaDataRetentionSettings {
  /// The length of time that event-level data is retained.
  /// Possible string values are:
  /// - "RETENTION_DURATION_UNSPECIFIED" : Data retention time duration is not
  /// specified.
  /// - "TWO_MONTHS" : The data retention time duration is 2 months.
  /// - "FOURTEEN_MONTHS" : The data retention time duration is 14 months.
  /// - "TWENTY_SIX_MONTHS" : The data retention time duration is 26 months.
  /// Available to 360 properties only.
  /// - "THIRTY_EIGHT_MONTHS" : The data retention time duration is 38 months.
  /// Available to 360 properties only.
  /// - "FIFTY_MONTHS" : The data retention time duration is 50 months.
  /// Available to 360 properties only.
  core.String? eventDataRetention;

  /// Resource name for this DataRetentionSetting resource.
  ///
  /// Format: properties/{property}/dataRetentionSettings
  ///
  /// Output only.
  core.String? name;

  /// If true, reset the retention period for the user identifier with every
  /// event from that user.
  core.bool? resetUserDataOnNewActivity;

  GoogleAnalyticsAdminV1alphaDataRetentionSettings({
    this.eventDataRetention,
    this.name,
    this.resetUserDataOnNewActivity,
  });

  GoogleAnalyticsAdminV1alphaDataRetentionSettings.fromJson(core.Map _json)
      : this(
          eventDataRetention: _json.containsKey('eventDataRetention')
              ? _json['eventDataRetention'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resetUserDataOnNewActivity:
              _json.containsKey('resetUserDataOnNewActivity')
                  ? _json['resetUserDataOnNewActivity'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventDataRetention != null)
          'eventDataRetention': eventDataRetention!,
        if (name != null) 'name': name!,
        if (resetUserDataOnNewActivity != null)
          'resetUserDataOnNewActivity': resetUserDataOnNewActivity!,
      };
}

/// A resource message representing data sharing settings of a Google Analytics
/// account.
class GoogleAnalyticsAdminV1alphaDataSharingSettings {
  /// Resource name.
  ///
  /// Format: accounts/{account}/dataSharingSettings Example:
  /// "accounts/1000/dataSharingSettings"
  ///
  /// Output only.
  core.String? name;

  /// Allows any of Google sales to access the data in order to suggest
  /// configuration changes to improve results.
  core.bool? sharingWithGoogleAnySalesEnabled;

  /// Allows Google sales teams that are assigned to the customer to access the
  /// data in order to suggest configuration changes to improve results.
  ///
  /// Sales team restrictions still apply when enabled.
  core.bool? sharingWithGoogleAssignedSalesEnabled;

  /// Allows Google to use the data to improve other Google products or
  /// services.
  core.bool? sharingWithGoogleProductsEnabled;

  /// Allows Google support to access the data in order to help troubleshoot
  /// issues.
  core.bool? sharingWithGoogleSupportEnabled;

  /// Allows Google to share the data anonymously in aggregate form with others.
  core.bool? sharingWithOthersEnabled;

  GoogleAnalyticsAdminV1alphaDataSharingSettings({
    this.name,
    this.sharingWithGoogleAnySalesEnabled,
    this.sharingWithGoogleAssignedSalesEnabled,
    this.sharingWithGoogleProductsEnabled,
    this.sharingWithGoogleSupportEnabled,
    this.sharingWithOthersEnabled,
  });

  GoogleAnalyticsAdminV1alphaDataSharingSettings.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sharingWithGoogleAnySalesEnabled:
              _json.containsKey('sharingWithGoogleAnySalesEnabled')
                  ? _json['sharingWithGoogleAnySalesEnabled'] as core.bool
                  : null,
          sharingWithGoogleAssignedSalesEnabled:
              _json.containsKey('sharingWithGoogleAssignedSalesEnabled')
                  ? _json['sharingWithGoogleAssignedSalesEnabled'] as core.bool
                  : null,
          sharingWithGoogleProductsEnabled:
              _json.containsKey('sharingWithGoogleProductsEnabled')
                  ? _json['sharingWithGoogleProductsEnabled'] as core.bool
                  : null,
          sharingWithGoogleSupportEnabled:
              _json.containsKey('sharingWithGoogleSupportEnabled')
                  ? _json['sharingWithGoogleSupportEnabled'] as core.bool
                  : null,
          sharingWithOthersEnabled:
              _json.containsKey('sharingWithOthersEnabled')
                  ? _json['sharingWithOthersEnabled'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sharingWithGoogleAnySalesEnabled != null)
          'sharingWithGoogleAnySalesEnabled': sharingWithGoogleAnySalesEnabled!,
        if (sharingWithGoogleAssignedSalesEnabled != null)
          'sharingWithGoogleAssignedSalesEnabled':
              sharingWithGoogleAssignedSalesEnabled!,
        if (sharingWithGoogleProductsEnabled != null)
          'sharingWithGoogleProductsEnabled': sharingWithGoogleProductsEnabled!,
        if (sharingWithGoogleSupportEnabled != null)
          'sharingWithGoogleSupportEnabled': sharingWithGoogleSupportEnabled!,
        if (sharingWithOthersEnabled != null)
          'sharingWithOthersEnabled': sharingWithOthersEnabled!,
      };
}

/// A resource message representing a data stream.
class GoogleAnalyticsAdminV1alphaDataStream {
  /// Data specific to Android app streams.
  ///
  /// Must be populated if type is ANDROID_APP_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData?
      androidAppStreamData;

  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// Required for web data streams. The max allowed display name length is 255
  /// UTF-16 code units.
  core.String? displayName;

  /// Data specific to iOS app streams.
  ///
  /// Must be populated if type is IOS_APP_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData? iosAppStreamData;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/dataStreams/{stream_id} Example:
  /// "properties/1000/dataStreams/2000"
  ///
  /// Output only.
  core.String? name;

  /// The type of this DataStream resource.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DATA_STREAM_TYPE_UNSPECIFIED" : Type unknown or not specified.
  /// - "WEB_DATA_STREAM" : Web data stream.
  /// - "ANDROID_APP_DATA_STREAM" : Android app data stream.
  /// - "IOS_APP_DATA_STREAM" : iOS app data stream.
  core.String? type;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Data specific to web streams.
  ///
  /// Must be populated if type is WEB_DATA_STREAM.
  GoogleAnalyticsAdminV1alphaDataStreamWebStreamData? webStreamData;

  GoogleAnalyticsAdminV1alphaDataStream({
    this.androidAppStreamData,
    this.createTime,
    this.displayName,
    this.iosAppStreamData,
    this.name,
    this.type,
    this.updateTime,
    this.webStreamData,
  });

  GoogleAnalyticsAdminV1alphaDataStream.fromJson(core.Map _json)
      : this(
          androidAppStreamData: _json.containsKey('androidAppStreamData')
              ? GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData
                  .fromJson(_json['androidAppStreamData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          iosAppStreamData: _json.containsKey('iosAppStreamData')
              ? GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData.fromJson(
                  _json['iosAppStreamData']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          webStreamData: _json.containsKey('webStreamData')
              ? GoogleAnalyticsAdminV1alphaDataStreamWebStreamData.fromJson(
                  _json['webStreamData'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppStreamData != null)
          'androidAppStreamData': androidAppStreamData!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (iosAppStreamData != null) 'iosAppStreamData': iosAppStreamData!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webStreamData != null) 'webStreamData': webStreamData!,
      };
}

/// Data specific to Android app streams.
class GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData {
  /// ID of the corresponding Android app in Firebase, if any.
  ///
  /// This ID can change if the Android app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// The package name for the app being measured.
  ///
  /// Example: "com.example.myandroidapp"
  ///
  /// Immutable.
  core.String? packageName;

  GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData({
    this.firebaseAppId,
    this.packageName,
  });

  GoogleAnalyticsAdminV1alphaDataStreamAndroidAppStreamData.fromJson(
      core.Map _json)
      : this(
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
          packageName: _json.containsKey('packageName')
              ? _json['packageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (packageName != null) 'packageName': packageName!,
      };
}

/// Data specific to iOS app streams.
class GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData {
  /// The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  ///
  /// Required. Immutable.
  core.String? bundleId;

  /// ID of the corresponding iOS app in Firebase, if any.
  ///
  /// This ID can change if the iOS app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData({
    this.bundleId,
    this.firebaseAppId,
  });

  GoogleAnalyticsAdminV1alphaDataStreamIosAppStreamData.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
      };
}

/// Data specific to web streams.
class GoogleAnalyticsAdminV1alphaDataStreamWebStreamData {
  /// Domain name of the web app being measured, or empty.
  ///
  /// Example: "http://www.google.com", "https://www.google.com"
  ///
  /// Immutable.
  core.String? defaultUri;

  /// ID of the corresponding web app in Firebase, if any.
  ///
  /// This ID can change if the web app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Analytics "Measurement ID", without the "G-" prefix.
  ///
  /// Example: "G-1A2BCD345E" would just be "1A2BCD345E"
  ///
  /// Output only.
  core.String? measurementId;

  GoogleAnalyticsAdminV1alphaDataStreamWebStreamData({
    this.defaultUri,
    this.firebaseAppId,
    this.measurementId,
  });

  GoogleAnalyticsAdminV1alphaDataStreamWebStreamData.fromJson(core.Map _json)
      : this(
          defaultUri: _json.containsKey('defaultUri')
              ? _json['defaultUri'] as core.String
              : null,
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
          measurementId: _json.containsKey('measurementId')
              ? _json['measurementId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultUri != null) 'defaultUri': defaultUri!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (measurementId != null) 'measurementId': measurementId!,
      };
}

/// Request message for DeleteUserLink RPC.
class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest {
  /// Example format: accounts/1234/userLinks/5678
  ///
  /// Required.
  core.String? name;

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest({
    this.name,
  });

  GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// A link between a GA4 property and a Display & Video 360 advertiser.
class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink {
  /// Enables personalized advertising features with this integration.
  ///
  /// If this field is not set on create/update, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// The display name of the Display & Video 360 Advertiser.
  ///
  /// Output only.
  core.String? advertiserDisplayName;

  /// The Display & Video 360 Advertiser's advertiser ID.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// Enables the import of campaign data from Display & Video 360 into the GA4
  /// property.
  ///
  /// After link creation, this can only be updated from the Display & Video 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? campaignDataSharingEnabled;

  /// Enables the import of cost data from Display & Video 360 into the GA4
  /// property.
  ///
  /// This can only be enabled if campaign_data_sharing_enabled is enabled.
  /// After link creation, this can only be updated from the Display & Video 360
  /// product. If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? costDataSharingEnabled;

  /// The resource name for this DisplayVideo360AdvertiserLink resource.
  ///
  /// Format: properties/{propertyId}/displayVideo360AdvertiserLinks/{linkId}
  /// Note: linkId is not the Display & Video 360 Advertiser ID
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink({
    this.adsPersonalizationEnabled,
    this.advertiserDisplayName,
    this.advertiserId,
    this.campaignDataSharingEnabled,
    this.costDataSharingEnabled,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink.fromJson(
      core.Map _json)
      : this(
          adsPersonalizationEnabled:
              _json.containsKey('adsPersonalizationEnabled')
                  ? _json['adsPersonalizationEnabled'] as core.bool
                  : null,
          advertiserDisplayName: _json.containsKey('advertiserDisplayName')
              ? _json['advertiserDisplayName'] as core.String
              : null,
          advertiserId: _json.containsKey('advertiserId')
              ? _json['advertiserId'] as core.String
              : null,
          campaignDataSharingEnabled:
              _json.containsKey('campaignDataSharingEnabled')
                  ? _json['campaignDataSharingEnabled'] as core.bool
                  : null,
          costDataSharingEnabled: _json.containsKey('costDataSharingEnabled')
              ? _json['costDataSharingEnabled'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (advertiserDisplayName != null)
          'advertiserDisplayName': advertiserDisplayName!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (campaignDataSharingEnabled != null)
          'campaignDataSharingEnabled': campaignDataSharingEnabled!,
        if (costDataSharingEnabled != null)
          'costDataSharingEnabled': costDataSharingEnabled!,
        if (name != null) 'name': name!,
      };
}

/// A proposal for a link between a GA4 property and a Display & Video 360
/// advertiser.
///
/// A proposal is converted to a DisplayVideo360AdvertiserLink once approved.
/// Google Analytics admins approve inbound proposals while Display & Video 360
/// admins approve outbound proposals.
class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal {
  /// Enables personalized advertising features with this integration.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? adsPersonalizationEnabled;

  /// The display name of the Display & Video Advertiser.
  ///
  /// Only populated for proposals that originated from Display & Video 360.
  ///
  /// Output only.
  core.String? advertiserDisplayName;

  /// The Display & Video 360 Advertiser's advertiser ID.
  ///
  /// Immutable.
  core.String? advertiserId;

  /// Enables the import of campaign data from Display & Video 360.
  ///
  /// If this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? campaignDataSharingEnabled;

  /// Enables the import of cost data from Display & Video 360.
  ///
  /// This can only be enabled if campaign_data_sharing_enabled is enabled. If
  /// this field is not set on create, it will be defaulted to true.
  ///
  /// Immutable.
  core.bool? costDataSharingEnabled;

  /// The status information for this link proposal.
  ///
  /// Output only.
  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails?
      linkProposalStatusDetails;

  /// The resource name for this DisplayVideo360AdvertiserLinkProposal resource.
  ///
  /// Format:
  /// properties/{propertyId}/displayVideo360AdvertiserLinkProposals/{proposalId}
  /// Note: proposalId is not the Display & Video 360 Advertiser ID
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// On a proposal being sent to Display & Video 360, this field must be set to
  /// the email address of an admin on the target advertiser. This is used to
  /// verify that the Google Analytics admin is aware of at least one admin on
  /// the Display & Video 360 Advertiser. This does not restrict approval of the
  /// proposal to a single user. Any admin on the Display & Video 360 Advertiser
  /// may approve the proposal.
  core.String? validationEmail;

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal({
    this.adsPersonalizationEnabled,
    this.advertiserDisplayName,
    this.advertiserId,
    this.campaignDataSharingEnabled,
    this.costDataSharingEnabled,
    this.linkProposalStatusDetails,
    this.name,
    this.validationEmail,
  });

  GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal.fromJson(
      core.Map _json)
      : this(
          adsPersonalizationEnabled:
              _json.containsKey('adsPersonalizationEnabled')
                  ? _json['adsPersonalizationEnabled'] as core.bool
                  : null,
          advertiserDisplayName: _json.containsKey('advertiserDisplayName')
              ? _json['advertiserDisplayName'] as core.String
              : null,
          advertiserId: _json.containsKey('advertiserId')
              ? _json['advertiserId'] as core.String
              : null,
          campaignDataSharingEnabled:
              _json.containsKey('campaignDataSharingEnabled')
                  ? _json['campaignDataSharingEnabled'] as core.bool
                  : null,
          costDataSharingEnabled: _json.containsKey('costDataSharingEnabled')
              ? _json['costDataSharingEnabled'] as core.bool
              : null,
          linkProposalStatusDetails: _json
                  .containsKey('linkProposalStatusDetails')
              ? GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails.fromJson(
                  _json['linkProposalStatusDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          validationEmail: _json.containsKey('validationEmail')
              ? _json['validationEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (advertiserDisplayName != null)
          'advertiserDisplayName': advertiserDisplayName!,
        if (advertiserId != null) 'advertiserId': advertiserId!,
        if (campaignDataSharingEnabled != null)
          'campaignDataSharingEnabled': campaignDataSharingEnabled!,
        if (costDataSharingEnabled != null)
          'costDataSharingEnabled': costDataSharingEnabled!,
        if (linkProposalStatusDetails != null)
          'linkProposalStatusDetails': linkProposalStatusDetails!,
        if (name != null) 'name': name!,
        if (validationEmail != null) 'validationEmail': validationEmail!,
      };
}

/// A link between a GA4 property and a Firebase project.
class GoogleAnalyticsAdminV1alphaFirebaseLink {
  /// Time when this FirebaseLink was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Example format: properties/1234/firebaseLinks/5678
  ///
  /// Output only.
  core.String? name;

  /// Firebase project resource name.
  ///
  /// When creating a FirebaseLink, you may provide this resource name using
  /// either a project number or project ID. Once this resource has been
  /// created, returned FirebaseLinks will always have a project_name that
  /// contains a project number. Format: 'projects/{project number}' Example:
  /// 'projects/1234'
  ///
  /// Immutable.
  core.String? project;

  GoogleAnalyticsAdminV1alphaFirebaseLink({
    this.createTime,
    this.name,
    this.project,
  });

  GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
      };
}

/// Read-only resource with the tag for sending data from a website to a
/// DataStream.
///
/// Only present for web DataStream resources.
class GoogleAnalyticsAdminV1alphaGlobalSiteTag {
  /// Resource name for this GlobalSiteTag resource.
  ///
  /// Format: properties/{property_id}/dataStreams/{stream_id}/globalSiteTag
  /// Example: "properties/123/dataStreams/456/globalSiteTag"
  ///
  /// Output only.
  core.String? name;

  /// JavaScript code snippet to be pasted as the first item into the head tag
  /// of every webpage to measure.
  ///
  /// Immutable.
  core.String? snippet;

  GoogleAnalyticsAdminV1alphaGlobalSiteTag({
    this.name,
    this.snippet,
  });

  GoogleAnalyticsAdminV1alphaGlobalSiteTag.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          snippet: _json.containsKey('snippet')
              ? _json['snippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (snippet != null) 'snippet': snippet!,
      };
}

/// A link between a GA4 property and a Google Ads account.
class GoogleAnalyticsAdminV1alphaGoogleAdsLink {
  /// Enable personalized advertising features with this integration.
  ///
  /// Automatically publish my Google Analytics audience lists and Google
  /// Analytics remarketing events/parameters to the linked Google Ads account.
  /// If this field is not set on create/update, it will be defaulted to true.
  core.bool? adsPersonalizationEnabled;

  /// If true, this link is for a Google Ads manager account.
  ///
  /// Output only.
  core.bool? canManageClients;

  /// Time when this link was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of the user that created the link.
  ///
  /// An empty string will be returned if the email address can't be retrieved.
  ///
  /// Output only.
  core.String? creatorEmailAddress;

  /// Google Ads customer ID.
  ///
  /// Immutable.
  core.String? customerId;

  /// Format: properties/{propertyId}/googleAdsLinks/{googleAdsLinkId} Note:
  /// googleAdsLinkId is not the Google Ads customer ID.
  ///
  /// Output only.
  core.String? name;

  /// Time when this link was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaGoogleAdsLink({
    this.adsPersonalizationEnabled,
    this.canManageClients,
    this.createTime,
    this.creatorEmailAddress,
    this.customerId,
    this.name,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(core.Map _json)
      : this(
          adsPersonalizationEnabled:
              _json.containsKey('adsPersonalizationEnabled')
                  ? _json['adsPersonalizationEnabled'] as core.bool
                  : null,
          canManageClients: _json.containsKey('canManageClients')
              ? _json['canManageClients'] as core.bool
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          creatorEmailAddress: _json.containsKey('creatorEmailAddress')
              ? _json['creatorEmailAddress'] as core.String
              : null,
          customerId: _json.containsKey('customerId')
              ? _json['customerId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adsPersonalizationEnabled != null)
          'adsPersonalizationEnabled': adsPersonalizationEnabled!,
        if (canManageClients != null) 'canManageClients': canManageClients!,
        if (createTime != null) 'createTime': createTime!,
        if (creatorEmailAddress != null)
          'creatorEmailAddress': creatorEmailAddress!,
        if (customerId != null) 'customerId': customerId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Settings values for Google Signals.
///
/// This is a singleton resource.
class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings {
  /// Terms of Service acceptance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOOGLE_SIGNALS_CONSENT_UNSPECIFIED" : Google Signals consent value
  /// defaults to GOOGLE_SIGNALS_CONSENT_UNSPECIFIED. This will be treated as
  /// GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED.
  /// - "GOOGLE_SIGNALS_CONSENT_CONSENTED" : Terms of service have been accepted
  /// - "GOOGLE_SIGNALS_CONSENT_NOT_CONSENTED" : Terms of service have not been
  /// accepted
  core.String? consent;

  /// Resource name of this setting.
  ///
  /// Format: properties/{property_id}/googleSignalsSettings Example:
  /// "properties/1000/googleSignalsSettings"
  ///
  /// Output only.
  core.String? name;

  /// Status of this setting.
  /// Possible string values are:
  /// - "GOOGLE_SIGNALS_STATE_UNSPECIFIED" : Google Signals status defaults to
  /// GOOGLE_SIGNALS_STATE_UNSPECIFIED to represent that the user has not made
  /// an explicit choice.
  /// - "GOOGLE_SIGNALS_ENABLED" : Google Signals is enabled.
  /// - "GOOGLE_SIGNALS_DISABLED" : Google Signals is disabled.
  core.String? state;

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings({
    this.consent,
    this.name,
    this.state,
  });

  GoogleAnalyticsAdminV1alphaGoogleSignalsSettings.fromJson(core.Map _json)
      : this(
          consent: _json.containsKey('consent')
              ? _json['consent'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consent != null) 'consent': consent!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A resource message representing a Google Analytics IOS app stream.
class GoogleAnalyticsAdminV1alphaIosAppDataStream {
  /// The Apple App Store Bundle ID for the app Example: "com.example.myiosapp"
  ///
  /// Required. Immutable.
  core.String? bundleId;

  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 255 UTF-16 code units.
  core.String? displayName;

  /// ID of the corresponding iOS app in Firebase, if any.
  ///
  /// This ID can change if the iOS app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/iosAppDataStreams/{stream_id} Example:
  /// "properties/1000/iosAppDataStreams/2000"
  ///
  /// Output only.
  core.String? name;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaIosAppDataStream({
    this.bundleId,
    this.createTime,
    this.displayName,
    this.firebaseAppId,
    this.name,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Status information for a link proposal.
class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails {
  /// The source of this proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_PROPOSAL_INITIATING_PRODUCT_UNSPECIFIED" : Unspecified product.
  /// - "GOOGLE_ANALYTICS" : This proposal was created by a user from Google
  /// Analytics.
  /// - "LINKED_PRODUCT" : This proposal was created by a user from a linked
  /// product (not Google Analytics).
  core.String? linkProposalInitiatingProduct;

  /// The state of this proposal.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LINK_PROPOSAL_STATE_UNSPECIFIED" : Unspecified state
  /// - "AWAITING_REVIEW_FROM_GOOGLE_ANALYTICS" : This proposal is awaiting
  /// review from a Google Analytics user. This proposal will automatically
  /// expire after some time.
  /// - "AWAITING_REVIEW_FROM_LINKED_PRODUCT" : This proposal is awaiting review
  /// from a user of a linked product. This proposal will automatically expire
  /// after some time.
  /// - "WITHDRAWN" : This proposal has been withdrawn by an admin on the
  /// initiating product. This proposal will be automatically deleted after some
  /// time.
  /// - "DECLINED" : This proposal has been declined by an admin on the
  /// receiving product. This proposal will be automatically deleted after some
  /// time.
  /// - "EXPIRED" : This proposal expired due to lack of response from an admin
  /// on the receiving product. This proposal will be automatically deleted
  /// after some time.
  /// - "OBSOLETE" : This proposal has become obsolete because a link was
  /// directly created to the same external product resource that this proposal
  /// specifies. This proposal will be automatically deleted after some time.
  core.String? linkProposalState;

  /// The email address of the user that proposed this linkage.
  ///
  /// Output only.
  core.String? requestorEmail;

  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails({
    this.linkProposalInitiatingProduct,
    this.linkProposalState,
    this.requestorEmail,
  });

  GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails.fromJson(core.Map _json)
      : this(
          linkProposalInitiatingProduct:
              _json.containsKey('linkProposalInitiatingProduct')
                  ? _json['linkProposalInitiatingProduct'] as core.String
                  : null,
          linkProposalState: _json.containsKey('linkProposalState')
              ? _json['linkProposalState'] as core.String
              : null,
          requestorEmail: _json.containsKey('requestorEmail')
              ? _json['requestorEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkProposalInitiatingProduct != null)
          'linkProposalInitiatingProduct': linkProposalInitiatingProduct!,
        if (linkProposalState != null) 'linkProposalState': linkProposalState!,
        if (requestorEmail != null) 'requestorEmail': requestorEmail!,
      };
}

/// Response message for ListAccountSummaries RPC.
class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse {
  /// Account summaries of all accounts the caller has access to.
  core.List<GoogleAnalyticsAdminV1alphaAccountSummary>? accountSummaries;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse({
    this.accountSummaries,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAccountSummariesResponse.fromJson(
      core.Map _json)
      : this(
          accountSummaries: _json.containsKey('accountSummaries')
              ? (_json['accountSummaries'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaAccountSummary.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountSummaries != null) 'accountSummaries': accountSummaries!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for ListAccounts RPC.
class GoogleAnalyticsAdminV1alphaListAccountsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1alphaAccount>? accounts;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAccountsResponse.fromJson(core.Map _json)
      : this(
          accounts: _json.containsKey('accounts')
              ? (_json['accounts'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaAccount.fromJson(
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

/// Request message for ListAndroidDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse {
  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaAndroidAppDataStream>?
      androidAppDataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse({
    this.androidAppDataStreams,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse.fromJson(
      core.Map _json)
      : this(
          androidAppDataStreams: _json.containsKey('androidAppDataStreams')
              ? (_json['androidAppDataStreams'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaAndroidAppDataStream.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppDataStreams != null)
          'androidAppDataStreams': androidAppDataStreams!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListConversionEvents RPC.
class GoogleAnalyticsAdminV1alphaListConversionEventsResponse {
  /// The requested conversion events
  core.List<GoogleAnalyticsAdminV1alphaConversionEvent>? conversionEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse({
    this.conversionEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListConversionEventsResponse.fromJson(
      core.Map _json)
      : this(
          conversionEvents: _json.containsKey('conversionEvents')
              ? (_json['conversionEvents'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaConversionEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conversionEvents != null) 'conversionEvents': conversionEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListCustomDimensions RPC.
class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse {
  /// List of CustomDimensions.
  core.List<GoogleAnalyticsAdminV1alphaCustomDimension>? customDimensions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse({
    this.customDimensions,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse.fromJson(
      core.Map _json)
      : this(
          customDimensions: _json.containsKey('customDimensions')
              ? (_json['customDimensions'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaCustomDimension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDimensions != null) 'customDimensions': customDimensions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListCustomMetrics RPC.
class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse {
  /// List of CustomMetrics.
  core.List<GoogleAnalyticsAdminV1alphaCustomMetric>? customMetrics;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse({
    this.customMetrics,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListCustomMetricsResponse.fromJson(core.Map _json)
      : this(
          customMetrics: _json.containsKey('customMetrics')
              ? (_json['customMetrics'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaCustomMetric.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetrics != null) 'customMetrics': customMetrics!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListDataStreamsResponse {
  /// List of DataStreams.
  core.List<GoogleAnalyticsAdminV1alphaDataStream>? dataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDataStreamsResponse({
    this.dataStreams,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDataStreamsResponse.fromJson(core.Map _json)
      : this(
          dataStreams: _json.containsKey('dataStreams')
              ? (_json['dataStreams'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaDataStream.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataStreams != null) 'dataStreams': dataStreams!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDisplayVideo360AdvertiserLinkProposals RPC.
class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse {
  /// List of DisplayVideo360AdvertiserLinkProposals.
  core.List<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>?
      displayVideo360AdvertiserLinkProposals;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse({
    this.displayVideo360AdvertiserLinkProposals,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse.fromJson(
      core.Map _json)
      : this(
          displayVideo360AdvertiserLinkProposals: _json
                  .containsKey('displayVideo360AdvertiserLinkProposals')
              ? (_json['displayVideo360AdvertiserLinkProposals'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayVideo360AdvertiserLinkProposals != null)
          'displayVideo360AdvertiserLinkProposals':
              displayVideo360AdvertiserLinkProposals!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListDisplayVideo360AdvertiserLinks RPC.
class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse {
  /// List of DisplayVideo360AdvertiserLinks.
  core.List<GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink>?
      displayVideo360AdvertiserLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse({
    this.displayVideo360AdvertiserLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse.fromJson(
      core.Map _json)
      : this(
          displayVideo360AdvertiserLinks: _json
                  .containsKey('displayVideo360AdvertiserLinks')
              ? (_json['displayVideo360AdvertiserLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayVideo360AdvertiserLinks != null)
          'displayVideo360AdvertiserLinks': displayVideo360AdvertiserLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListFirebaseLinks RPC
class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse {
  /// List of FirebaseLinks.
  ///
  /// This will have at most one value.
  core.List<GoogleAnalyticsAdminV1alphaFirebaseLink>? firebaseLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages. Currently, Google
  /// Analytics supports only one FirebaseLink per property, so this will never
  /// be populated.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse({
    this.firebaseLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse.fromJson(core.Map _json)
      : this(
          firebaseLinks: _json.containsKey('firebaseLinks')
              ? (_json['firebaseLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaFirebaseLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firebaseLinks != null) 'firebaseLinks': firebaseLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListGoogleAdsLinks RPC.
class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse {
  /// List of GoogleAdsLinks.
  core.List<GoogleAnalyticsAdminV1alphaGoogleAdsLink>? googleAdsLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse({
    this.googleAdsLinks,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse.fromJson(core.Map _json)
      : this(
          googleAdsLinks: _json.containsKey('googleAdsLinks')
              ? (_json['googleAdsLinks'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaGoogleAdsLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleAdsLinks != null) 'googleAdsLinks': googleAdsLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for ListIosAppDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse {
  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaIosAppDataStream>? iosAppDataStreams;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse({
    this.iosAppDataStreams,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse.fromJson(
      core.Map _json)
      : this(
          iosAppDataStreams: _json.containsKey('iosAppDataStreams')
              ? (_json['iosAppDataStreams'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaIosAppDataStream.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosAppDataStreams != null) 'iosAppDataStreams': iosAppDataStreams!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListMeasurementProtocolSecret RPC
class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse {
  /// A list of secrets for the parent stream specified in the request.
  core.List<GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>?
      measurementProtocolSecrets;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse({
    this.measurementProtocolSecrets,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse.fromJson(
      core.Map _json)
      : this(
          measurementProtocolSecrets: _json
                  .containsKey('measurementProtocolSecrets')
              ? (_json['measurementProtocolSecrets'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (measurementProtocolSecrets != null)
          'measurementProtocolSecrets': measurementProtocolSecrets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListProperties RPC.
class GoogleAnalyticsAdminV1alphaListPropertiesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaProperty>? properties;

  GoogleAnalyticsAdminV1alphaListPropertiesResponse({
    this.nextPageToken,
    this.properties,
  });

  GoogleAnalyticsAdminV1alphaListPropertiesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (properties != null) 'properties': properties!,
      };
}

/// Response message for ListUserLinks RPC.
class GoogleAnalyticsAdminV1alphaListUserLinksResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of UserLinks.
  ///
  /// These will be ordered stably, but in an arbitrary order.
  core.List<GoogleAnalyticsAdminV1alphaUserLink>? userLinks;

  GoogleAnalyticsAdminV1alphaListUserLinksResponse({
    this.nextPageToken,
    this.userLinks,
  });

  GoogleAnalyticsAdminV1alphaListUserLinksResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          userLinks: _json.containsKey('userLinks')
              ? (_json['userLinks'] as core.List)
                  .map((value) => GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userLinks != null) 'userLinks': userLinks!,
      };
}

/// Request message for ListWebDataStreams RPC.
class GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  core.List<GoogleAnalyticsAdminV1alphaWebDataStream>? webDataStreams;

  GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse({
    this.nextPageToken,
    this.webDataStreams,
  });

  GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          webDataStreams: _json.containsKey('webDataStreams')
              ? (_json['webDataStreams'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (webDataStreams != null) 'webDataStreams': webDataStreams!,
      };
}

/// A secret value used for sending hits to Measurement Protocol.
class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret {
  /// Human-readable display name for this secret.
  ///
  /// Required.
  core.String? displayName;

  /// Resource name of this secret.
  ///
  /// This secret may be a child of any type of stream. Format:
  /// properties/{property}/webDataStreams/{webDataStream}/measurementProtocolSecrets/{measurementProtocolSecret}
  ///
  /// Output only.
  core.String? name;

  /// The measurement protocol secret value.
  ///
  /// Pass this value to the api_secret field of the Measurement Protocol API
  /// when sending hits to this secret's parent property.
  ///
  /// Output only.
  core.String? secretValue;

  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret({
    this.displayName,
    this.name,
    this.secretValue,
  });

  GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          secretValue: _json.containsKey('secretValue')
              ? _json['secretValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (secretValue != null) 'secretValue': secretValue!,
      };
}

/// A resource message representing a Google Analytics GA4 property.
class GoogleAnalyticsAdminV1alphaProperty {
  /// The resource name of the parent account Format: accounts/{account_id}
  /// Example: "accounts/123"
  ///
  /// Immutable.
  core.String? account;

  /// Time when the entity was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// The currency type used in reports involving monetary values.
  ///
  /// Format: https://en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR",
  /// "JPY"
  core.String? currencyCode;

  /// If set, the time at which this property was trashed.
  ///
  /// If not set, then this property is not currently in the trash can.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Human-readable display name for this property.
  ///
  /// The max allowed display name length is 100 UTF-16 code units.
  ///
  /// Required.
  core.String? displayName;

  /// If set, the time at which this trashed property will be permanently
  /// deleted.
  ///
  /// If not set, then this property is not currently in the trash can and is
  /// not slated to be deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
  /// Possible string values are:
  /// - "INDUSTRY_CATEGORY_UNSPECIFIED" : Industry category unspecified
  /// - "AUTOMOTIVE" : Automotive
  /// - "BUSINESS_AND_INDUSTRIAL_MARKETS" : Business and industrial markets
  /// - "FINANCE" : Finance
  /// - "HEALTHCARE" : Healthcare
  /// - "TECHNOLOGY" : Technology
  /// - "TRAVEL" : Travel
  /// - "OTHER" : Other
  /// - "ARTS_AND_ENTERTAINMENT" : Arts and entertainment
  /// - "BEAUTY_AND_FITNESS" : Beauty and fitness
  /// - "BOOKS_AND_LITERATURE" : Books and literature
  /// - "FOOD_AND_DRINK" : Food and drink
  /// - "GAMES" : Games
  /// - "HOBBIES_AND_LEISURE" : Hobbies and leisure
  /// - "HOME_AND_GARDEN" : Home and garden
  /// - "INTERNET_AND_TELECOM" : Internet and telecom
  /// - "LAW_AND_GOVERNMENT" : Law and government
  /// - "NEWS" : News
  /// - "ONLINE_COMMUNITIES" : Online communities
  /// - "PEOPLE_AND_SOCIETY" : People and society
  /// - "PETS_AND_ANIMALS" : Pets and animals
  /// - "REAL_ESTATE" : Real estate
  /// - "REFERENCE" : Reference
  /// - "SCIENCE" : Science
  /// - "SPORTS" : Sports
  /// - "JOBS_AND_EDUCATION" : Jobs and education
  /// - "SHOPPING" : Shopping
  core.String? industryCategory;

  /// Resource name of this property.
  ///
  /// Format: properties/{property_id} Example: "properties/1000"
  ///
  /// Output only.
  core.String? name;

  /// Resource name of this property's logical parent.
  ///
  /// Note: The Property-Moving UI can be used to change the parent. Format:
  /// accounts/{account} Example: "accounts/100"
  ///
  /// Immutable.
  core.String? parent;

  /// The Google Analytics service level that applies to this property.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_UNSPECIFIED" : Service level not specified or invalid.
  /// - "GOOGLE_ANALYTICS_STANDARD" : The standard version of Google Analytics.
  /// - "GOOGLE_ANALYTICS_360" : The paid, premium version of Google Analytics.
  core.String? serviceLevel;

  /// Reporting Time Zone, used as the day boundary for reports, regardless of
  /// where the data originates.
  ///
  /// If the time zone honors DST, Analytics will automatically adjust for the
  /// changes. NOTE: Changing the time zone only affects data going forward, and
  /// is not applied retroactively. Format: https://www.iana.org/time-zones
  /// Example: "America/Los_Angeles"
  ///
  /// Required.
  core.String? timeZone;

  /// Time when entity payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaProperty({
    this.account,
    this.createTime,
    this.currencyCode,
    this.deleteTime,
    this.displayName,
    this.expireTime,
    this.industryCategory,
    this.name,
    this.parent,
    this.serviceLevel,
    this.timeZone,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaProperty.fromJson(core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? _json['account'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          industryCategory: _json.containsKey('industryCategory')
              ? _json['industryCategory'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          serviceLevel: _json.containsKey('serviceLevel')
              ? _json['serviceLevel'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (createTime != null) 'createTime': createTime!,
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (industryCategory != null) 'industryCategory': industryCategory!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (serviceLevel != null) 'serviceLevel': serviceLevel!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A virtual resource representing metadata for a GA4 property.
class GoogleAnalyticsAdminV1alphaPropertySummary {
  /// Display name for the property referred to in this property summary.
  core.String? displayName;

  /// Resource name of property referred to by this property summary Format:
  /// properties/{property_id} Example: "properties/1000"
  core.String? property;

  GoogleAnalyticsAdminV1alphaPropertySummary({
    this.displayName,
    this.property,
  });

  GoogleAnalyticsAdminV1alphaPropertySummary.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          property: _json.containsKey('property')
              ? _json['property'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (property != null) 'property': property!,
      };
}

/// Request message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest {
  /// The account to create.
  GoogleAnalyticsAdminV1alphaAccount? account;

  /// Redirect URI where the user will be sent after accepting Terms of Service.
  ///
  /// Must be configured in Developers Console as a Redirect URI
  core.String? redirectUri;

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest({
    this.account,
    this.redirectUri,
  });

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest.fromJson(
      core.Map _json)
      : this(
          account: _json.containsKey('account')
              ? GoogleAnalyticsAdminV1alphaAccount.fromJson(
                  _json['account'] as core.Map<core.String, core.dynamic>)
              : null,
          redirectUri: _json.containsKey('redirectUri')
              ? _json['redirectUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (account != null) 'account': account!,
        if (redirectUri != null) 'redirectUri': redirectUri!,
      };
}

/// Response message for ProvisionAccountTicket RPC.
class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse {
  /// The param to be passed in the ToS link.
  core.String? accountTicketId;

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse({
    this.accountTicketId,
  });

  GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse.fromJson(
      core.Map _json)
      : this(
          accountTicketId: _json.containsKey('accountTicketId')
              ? _json['accountTicketId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountTicketId != null) 'accountTicketId': accountTicketId!,
      };
}

/// Request message for SearchChangeHistoryEvents RPC.
class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest {
  /// If set, only return changes that match one or more of these types of
  /// actions.
  ///
  /// Optional.
  core.List<core.String>? action;

  /// If set, only return changes if they are made by a user in this list.
  ///
  /// Optional.
  core.List<core.String>? actorEmail;

  /// If set, only return changes made after this time (inclusive).
  ///
  /// Optional.
  core.String? earliestChangeTime;

  /// If set, only return changes made before this time (inclusive).
  ///
  /// Optional.
  core.String? latestChangeTime;

  /// The maximum number of ChangeHistoryEvent items to return.
  ///
  /// The service may return fewer than this value, even if there are additional
  /// pages. If unspecified, at most 50 items will be returned. The maximum
  /// value is 200 (higher values will be coerced to the maximum).
  ///
  /// Optional.
  core.int? pageSize;

  /// A page token, received from a previous `SearchChangeHistoryEvents` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `SearchChangeHistoryEvents` must match the call
  /// that provided the page token.
  ///
  /// Optional.
  core.String? pageToken;

  /// Resource name for a child property.
  ///
  /// If set, only return changes made to this property or its child resources.
  ///
  /// Optional.
  core.String? property;

  /// If set, only return changes if they are for a resource that matches at
  /// least one of these types.
  ///
  /// Optional.
  core.List<core.String>? resourceType;

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest({
    this.action,
    this.actorEmail,
    this.earliestChangeTime,
    this.latestChangeTime,
    this.pageSize,
    this.pageToken,
    this.property,
    this.resourceType,
  });

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest.fromJson(
      core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? (_json['action'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          actorEmail: _json.containsKey('actorEmail')
              ? (_json['actorEmail'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          earliestChangeTime: _json.containsKey('earliestChangeTime')
              ? _json['earliestChangeTime'] as core.String
              : null,
          latestChangeTime: _json.containsKey('latestChangeTime')
              ? _json['latestChangeTime'] as core.String
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          property: _json.containsKey('property')
              ? _json['property'] as core.String
              : null,
          resourceType: _json.containsKey('resourceType')
              ? (_json['resourceType'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (actorEmail != null) 'actorEmail': actorEmail!,
        if (earliestChangeTime != null)
          'earliestChangeTime': earliestChangeTime!,
        if (latestChangeTime != null) 'latestChangeTime': latestChangeTime!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (property != null) 'property': property!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Response message for SearchAccounts RPC.
class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse {
  /// Results that were accessible to the caller.
  core.List<GoogleAnalyticsAdminV1alphaChangeHistoryEvent>? changeHistoryEvents;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse({
    this.changeHistoryEvents,
    this.nextPageToken,
  });

  GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse.fromJson(
      core.Map _json)
      : this(
          changeHistoryEvents: _json.containsKey('changeHistoryEvents')
              ? (_json['changeHistoryEvents'] as core.List)
                  .map((value) =>
                      GoogleAnalyticsAdminV1alphaChangeHistoryEvent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeHistoryEvents != null)
          'changeHistoryEvents': changeHistoryEvents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for UpdateUserLink RPC.
class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest {
  /// The user link to update.
  ///
  /// Required.
  GoogleAnalyticsAdminV1alphaUserLink? userLink;

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest({
    this.userLink,
  });

  GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest.fromJson(core.Map _json)
      : this(
          userLink: _json.containsKey('userLink')
              ? GoogleAnalyticsAdminV1alphaUserLink.fromJson(
                  _json['userLink'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userLink != null) 'userLink': userLink!,
      };
}

/// A resource message representing a user's permissions on an Account or
/// Property resource.
class GoogleAnalyticsAdminV1alphaUserLink {
  /// Roles directly assigned to this user for this account or property.
  ///
  /// Valid values: predefinedRoles/viewer predefinedRoles/analyst
  /// predefinedRoles/editor predefinedRoles/admin predefinedRoles/no-cost-data
  /// predefinedRoles/no-revenue-data Excludes roles that are inherited from a
  /// higher-level entity, group, or organization admin role. A UserLink that is
  /// updated to have an empty list of direct_roles will be deleted.
  core.List<core.String>? directRoles;

  /// Email address of the user to link
  ///
  /// Immutable.
  core.String? emailAddress;

  /// Example format: properties/1234/userLinks/5678
  ///
  /// Output only.
  core.String? name;

  GoogleAnalyticsAdminV1alphaUserLink({
    this.directRoles,
    this.emailAddress,
    this.name,
  });

  GoogleAnalyticsAdminV1alphaUserLink.fromJson(core.Map _json)
      : this(
          directRoles: _json.containsKey('directRoles')
              ? (_json['directRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directRoles != null) 'directRoles': directRoles!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (name != null) 'name': name!,
      };
}

/// A resource message representing a Google Analytics web stream.
class GoogleAnalyticsAdminV1alphaWebDataStream {
  /// Time when this stream was originally created.
  ///
  /// Output only.
  core.String? createTime;

  /// Domain name of the web app being measured, or empty.
  ///
  /// Example: "http://www.google.com", "https://www.google.com"
  ///
  /// Immutable.
  core.String? defaultUri;

  /// Human-readable display name for the Data Stream.
  ///
  /// The max allowed display name length is 255 UTF-16 code units.
  ///
  /// Required.
  core.String? displayName;

  /// ID of the corresponding web app in Firebase, if any.
  ///
  /// This ID can change if the web app is deleted and recreated.
  ///
  /// Output only.
  core.String? firebaseAppId;

  /// Analytics "Measurement ID", without the "G-" prefix.
  ///
  /// Example: "G-1A2BCD345E" would just be "1A2BCD345E"
  ///
  /// Output only.
  core.String? measurementId;

  /// Resource name of this Data Stream.
  ///
  /// Format: properties/{property_id}/webDataStreams/{stream_id} Example:
  /// "properties/1000/webDataStreams/2000"
  ///
  /// Output only.
  core.String? name;

  /// Time when stream payload fields were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleAnalyticsAdminV1alphaWebDataStream({
    this.createTime,
    this.defaultUri,
    this.displayName,
    this.firebaseAppId,
    this.measurementId,
    this.name,
    this.updateTime,
  });

  GoogleAnalyticsAdminV1alphaWebDataStream.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          defaultUri: _json.containsKey('defaultUri')
              ? _json['defaultUri'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          firebaseAppId: _json.containsKey('firebaseAppId')
              ? _json['firebaseAppId'] as core.String
              : null,
          measurementId: _json.containsKey('measurementId')
              ? _json['measurementId'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (defaultUri != null) 'defaultUri': defaultUri!,
        if (displayName != null) 'displayName': displayName!,
        if (firebaseAppId != null) 'firebaseAppId': firebaseAppId!,
        if (measurementId != null) 'measurementId': measurementId!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
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
